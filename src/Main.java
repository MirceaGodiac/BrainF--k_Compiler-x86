import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Stack;

public class Main {
    private static final int TAPE_SIZE = 30000;

    public static void main(String[] args) {
        if (args.length != 2) {
            System.err.println("Usage: java Main <input.bf> <output.asm>");
            return;
        }

        String inputPath = args[0];
        String outputPath = args[1];

        try {
            String sourceCode = Files.readString(Path.of(inputPath));
            String asm = compileBrainfuck(sourceCode);
            writeOutput(asm, outputPath);
            System.out.println("Success! Generated: " + outputPath);
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage() + " is missing or unreadable.");
        }
    }


    private static String compileBrainfuck(String sourceCode) {
        int labelCounter = 0;
        Stack<Integer> loopStack = new Stack<>();
        StringBuilder asm = new StringBuilder();

        appendPrologue(asm);

        for (int i = 0; i < sourceCode.length(); i++) {
            char instruction = sourceCode.charAt(i);

            // Peephole Optimization: Look for [-] or [+]
            if (instruction == '[' && i + 2 < sourceCode.length() &&
                    (sourceCode.charAt(i + 1) == '-' || sourceCode.charAt(i + 1) == '+') &&
                    sourceCode.charAt(i + 2) == ']') {

                asm.append("    mov byte [rbx], 0\n");
                i += 2; // Skip the '-' and ']'
                continue;
            }
            switch (instruction) {
                // Handle non groupable commands first
                case '.' -> emitOutput(asm);
                case ',' -> emitInput(asm);
                case '[' -> labelCounter = emitLoopStart(asm, loopStack, labelCounter);
                case ']' -> emitLoopEnd(asm, loopStack);
            }

            if(instruction == '<' || instruction == '>' || instruction == '+' || instruction == '-') {
                int count = 1;
                while (i + 1 < sourceCode.length() && sourceCode.charAt(i + 1) == instruction) {
                    count++;
                    i++;
                }
                switch (instruction) {
                    case '>' -> emitPointerIncrement(asm, count);
                    case '<' -> emitPointerDecrement(asm, count);
                    case '+' -> emitCellIncrement(asm, count);
                    case '-' -> emitCellDecrement(asm, count);
                }
            }
        }

        validateNoOpenLoops(loopStack);
        appendEpilogue(asm);
        return asm.toString();
    }

    private static void appendPrologue(StringBuilder asm) {
        asm.append("""
                global main
                extern putchar
                extern getchar
                section .bss
                   tape resb %d
                section .text
                main:
                   sub rsp, 40
                   lea rbx, [rel tape]
                """.formatted(TAPE_SIZE));
    }

    private static void appendEpilogue(StringBuilder asm) {
        asm.append("    xor rax, rax\n    add rsp, 40\n    ret\n");
    }

    private static void emitPointerIncrement(StringBuilder asm, int nr_increments) {
        asm.append("add rbx, ").append(nr_increments).append("\n");
    }

    private static void emitPointerDecrement(StringBuilder asm, int nr_decrements) {
        asm.append("sub rbx, ").append(nr_decrements).append("\n");
    }

    private static void emitCellIncrement(StringBuilder asm, int nr_increments) {
        asm.append("add byte [rbx], ").append(nr_increments).append("\n");
    }

    private static void emitCellDecrement(StringBuilder asm, int nr_decrements) {
        asm.append("sub byte [rbx], ").append(nr_decrements).append("\n");
    }

    private static void emitOutput(StringBuilder asm) {
        asm.append("movzx rcx, byte [rbx]\n");
        asm.append("call putchar\n");
    }

    private static void emitInput(StringBuilder asm) {
        asm.append("call getchar\n");
        asm.append("mov byte [rbx], al\n");
    }

    private static int emitLoopStart(StringBuilder asm, Stack<Integer> loopStack, int labelCounter) {
        loopStack.push(labelCounter);

        asm.append("loop_start_").append(labelCounter).append(":\n");
        asm.append("    cmp byte [rbx], 0\n");
        asm.append("    jz loop_end_").append(labelCounter).append("\n");

        return labelCounter + 1;
    }

    private static void emitLoopEnd(StringBuilder asm, Stack<Integer> loopStack) {
        if (loopStack.isEmpty()) {
            throw new RuntimeException("Syntax error: too many ]'s");
        }

        int matchingId = loopStack.pop();
        asm.append("    jmp loop_start_").append(matchingId).append("\n");
        asm.append("loop_end_").append(matchingId).append(":\n");
    }

    private static void validateNoOpenLoops(Stack<Integer> loopStack) {
        if (!loopStack.isEmpty()) {
            throw new RuntimeException("Syntax error: too many ['s");
        }
    }

    private static void writeOutput(String asm, String output_file) {
        try (PrintWriter out = new PrintWriter(output_file)) {
            out.print(asm);
            System.out.println("Compilation finished successfully.");
        } catch (IOException e) {
            System.err.println("File write failed: " + e.getMessage());
        }

    }
}
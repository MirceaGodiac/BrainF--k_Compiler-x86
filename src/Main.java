import java.io.IOException;
import java.io.PrintWriter;
import java.util.Stack;

public class Main {
    private static final int TAPE_SIZE = 30000;
    private static final String OUTPUT_FILE = "out.asm";
    private static final String DEFAULT_CODE = "-,+[-[>>++++[>++++++++<-]<+<-[>+>+>-[>>>]<[[>+<-]>>+>]<<<<<-]]>>>[-]+>--[-[<->+++[-]]]<[++++++++++++<[>-[>+>>]>[+[<+>-]>+>>]<<<<<-]>>[<+>-]>[-[-<<[-]>>]<<[<<->>-]>>]<<[<<+>>-]]<[-]<.[-]<-,+]";

    public static void main(String[] args) {
        System.out.println("Hello. Let the pain begin, bf to asm x86 64-bit");
        String asm = compileBrainfuck();
        writeOutput(asm);
    }

    private static String compileBrainfuck() {
        int labelCounter = 0;
        Stack<Integer> loopStack = new Stack<>();
        StringBuilder asm = new StringBuilder();

        appendPrologue(asm);

        for (int i = 0; i < Main.DEFAULT_CODE.length(); i++) {
            char instruction = Main.DEFAULT_CODE.charAt(i);
            switch (instruction) {
                case '>' -> emitPointerIncrement(asm);
                case '<' -> emitPointerDecrement(asm);
                case '+' -> emitCellIncrement(asm);
                case '-' -> emitCellDecrement(asm);
                case '.' -> emitOutput(asm);
                case ',' -> emitInput(asm);
                case '[' -> labelCounter = emitLoopStart(asm, loopStack, labelCounter);
                case ']' -> emitLoopEnd(asm, loopStack);
                default -> {
                    // Ignore non-Brainfuck characters.
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

    private static void emitPointerIncrement(StringBuilder asm) {
        asm.append("inc rbx\n");
    }

    private static void emitPointerDecrement(StringBuilder asm) {
        asm.append("dec rbx\n");
    }

    private static void emitCellIncrement(StringBuilder asm) {
        asm.append("inc byte [rbx]\n");
    }

    private static void emitCellDecrement(StringBuilder asm) {
        asm.append("dec byte [rbx]\n");
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

    private static void writeOutput(String asm) {
        try (PrintWriter out = new PrintWriter(Main.OUTPUT_FILE)) {
            out.print(asm);
            System.out.println("Compilation finished successfully.");
        } catch (IOException e) {
            System.err.println("File write failed: " + e.getMessage());
        }

    }
}
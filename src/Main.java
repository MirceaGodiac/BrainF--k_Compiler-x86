import java.io.IOException;
import java.io.PrintWriter;
import java.util.Stack;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello. Let the pain begin, bf to asm x86 64-bit");
        // A complex ROT13 Cipher script
        String code = "-,+[-[>>++++[>++++++++<-]<+<-[>+>+>-[>>>]<[[>+<-]>>+>]<<<<<-]]>>>[-]+>--[-[<->+++[-]]]<[++++++++++++<[>-[>+>>]>[+[<+>-]>+>>]<<<<<-]>>[<+>-]>[-[-<<[-]>>]<<[<<->>-]>>]<<[<<+>>-]]<[-]<.[-]<-,+]";

        int labelCounter = 0;
        Stack<Integer> stack = new Stack<>();
        StringBuilder asm = new StringBuilder();

        asm.append("""
                global main
                extern putchar
                extern getchar
                section .bss
                   tape resb 30000
                section .text
                main:
                   sub rsp, 40
                   lea rbx, [rel tape]
                """
        );

        for(int i = 0; i < code.length(); i++) {
            switch (code.charAt(i)) {
                case '>' -> asm.append("inc rbx\n");
                case '<' -> asm.append("dec rbx\n");
                case '+' -> asm.append("inc byte [rbx]\n");
                case '-' -> asm.append("dec byte [rbx]\n");
                case '.' -> {
                    asm.append("movzx rcx, byte [rbx]\n");
                    asm.append("call putchar\n");
                }
                case ',' -> {
                    asm.append("call getchar\n");
                    asm.append("mov byte [rbx], al\n");
                }

                case '[' -> {
                   int currentId = labelCounter++;
                   stack.push(currentId);
                    asm.append("loop_start_").append(currentId).append(":\n");
                    asm.append("    cmp byte [rbx], 0\n");
                    asm.append("    jz loop_end_").append(currentId).append("\n");
                }
                case ']' -> {
                    if(stack.isEmpty()) {
                        throw new RuntimeException("Synthax error: too many ]'s");
                    }
                    int matchingId = stack.pop();
                    asm.append("    jmp loop_start_").append(matchingId).append("\n");
                    asm.append("loop_end_").append(matchingId).append(":\n");
                }

            }

        }

        if (!stack.isEmpty()) throw new RuntimeException("Syntax error: too many ['s");

        asm.append("    xor rax, rax\n    add rsp, 40\n    ret\n");

        // Write to disk ONCE
        try (PrintWriter out = new PrintWriter("out.asm")) {
            out.print(asm);
            System.out.println("Compilation finished successfully.");
        } catch (IOException e) {
            System.err.println("File write failed.");
        }

    }
}
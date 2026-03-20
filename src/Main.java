
import java.io.IOException;

import java.util.Stack;



public class Main {


    public static void main(String[] args) throws IOException {
        System.out.println("Hello. Let the pain begin, bf to asm x86 64-bit");

        FileAppender f = new FileAppender("out.asm");

        // sample brainf**k code
        String code = ",>,[-<+>]<------------------------------------------------.";


        int labelCounter = 0;
        Stack<Integer> stack = new Stack<>();

        f.appendToFile("""
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
                case '>' -> f.appendToFile("inc rbx\n");
                case '<' -> f.appendToFile("dec rbx\n");
                case '+' -> f.appendToFile("inc byte [rbx]\n");
                case '-' -> f.appendToFile("dec byte [rbx]\n");
                case '.' -> {
                    f.appendToFile("movzx rcx, byte [rbx]");
                    f.appendToFile("call putchar");
                }
                case ',' -> {
                    f.appendToFile("call getchar");
                    f.appendToFile("mov byte [rbx], al");
                }

                case '[' -> {
                   int currentId = labelCounter++;
                   stack.push(currentId);

                   f.appendToFile("loop_start_" + currentId + ":");
                   f.appendToFile("    cmp byte [rbx], 0");
                   f.appendToFile("    jz loop_end_" + currentId);
                }
                case ']' -> {
                    if(stack.isEmpty()) {
                        throw new RuntimeException("Synthax error: too many ]'s");
                    }
                    int matchingId = stack.pop();

                    f.appendToFile("    jmp loop_start_" + matchingId);
                    f.appendToFile("loop_end_" + matchingId + ":");
                }

            }

        }

        f.appendToFile("""
                xor rax, rax
                add rsp, 40
                ret
                """
        );

    }
}
import java.util.HashMap;
import java.util.Stack;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello. Let the pain begin");

        // making a sort of virtual machine to run this on
        byte[] memory = new byte[30000];

        // tha pointa
        int pointer = 0;

        // sample brainf**k code
        String code = "++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.";


        HashMap<Integer, Integer> jumpTable = new HashMap<>();
        Stack<Integer> stack = new Stack<>();

        // look over the code before interpreting to make a jumpTable for '[' and ']'
        for(int i = 0; i < code.length(); i++) {
            if(code.charAt(i) == '[') {
                stack.push(i);
            }
            else if(code.charAt(i) == ']') {
                if(stack.isEmpty()) {
                    throw new RuntimeException("Found ] without matching [ at position " + i);
                }
                int startingParanthesis = stack.pop();
                jumpTable.put(startingParanthesis, i);
                jumpTable.put(i, startingParanthesis);
            }
        }
        if(!stack.isEmpty()) {
            throw new RuntimeException("Found [ without matching ] at position " + stack.pop());
        }


        for(int i = 0; i < code.length(); i++) {
            switch (code.charAt(i)) {
                case '>' -> pointer++; // shift right in memory
                case '<' -> pointer--; // shift left in memory
                case '+' -> memory[pointer]++;
                case '-' -> memory[pointer]--;
                case '.' -> System.out.print((char)memory[pointer]);
                case '[' -> {
                   if(memory[pointer] == 0) {
                       i = jumpTable.get(i); // jump to the closing parenthesis
                   }
                }

                case ']' -> {
                    if(memory[pointer] != 0) {
                        i = jumpTable.get(i); // go back to the start of the loop
                    }
                }

            }

        }
    }
}
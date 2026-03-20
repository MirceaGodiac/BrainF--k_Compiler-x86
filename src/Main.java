public class Main {
    public static void main(String[] args) {
        System.out.println("Hello. Let the pain begin");

        // making a sort of virtual machine to run this on
        byte[] memory = new byte[30000];

        // tha pointa
        int pointer = 0;

        // sample brainf**k code
        String code = "++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.";

        for(int i = 0; i < code.length(); i++) {
            switch (code.charAt(i)) {
                case '>' -> pointer++; // shift right in memory
                case '<' -> pointer--; // shift left in memory
                case '+' -> memory[pointer]++;
                case '-' -> memory[pointer]--;
                case '.' -> System.out.print((char)memory[pointer]);
                case '[' -> {
                    // if the current cell is 0, find the closing ] for the [ we found
                    // oh my days my comments sound so much like AI
                    if(memory[pointer] == 0) {
                        // skip the loop and scan forward until we find the matching ']'
                        int loopCounter = 1;
                        while (loopCounter > 0) {
                            i++;
                            if (code.charAt(i) == '[') {
                                loopCounter++;
                            }
                            if (code.charAt(i) == ']') {
                                loopCounter--;
                            }
                        }
                    }
                }

                case ']' -> {
                    // now we reverse whatever [ just did
                    if(memory[pointer] != 0) {
                        int loopCounter = 1;
                        while (loopCounter > 0) {
                            i--;
                            if (code.charAt(i) == ']') {
                                loopCounter++;
                            }
                            if (code.charAt(i) == '[') {
                                loopCounter--;
                            }
                        }
                    }

                }

            }

        }
    }
}
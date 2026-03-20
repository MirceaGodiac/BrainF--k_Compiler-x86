# BrainF--k Compiler (x86_64 Windows)

Yes, that's the language's name. 

An Ahead-of-Time (AOT) compiler that translates Brainfuck source code into **x86_64 Assembly**. 

I optimised it by making it group repetitive commands very often seen in the BrainF--k language to save my cpu of some suffering.

---

## 🛠 Prerequisites

Before you try to run this you will need:

* **JDK 21+**: To compile and run the Java-based compiler.
* **NASM (Netwide Assembler)**: To transform the generated `.asm` into a Windows `.obj`.
* **MinGW-w64 (GCC)**: To link the object file against the Windows C runtime.
    * *Warning: Standard `mingw32` will fail. Ensure `gcc -v` shows `Target: x86_64`.*

---

## 🚀 Getting Started

### 1. Build the Compiler
Navigate to your `src` directory and package the project into a portable JAR:

```bash
javac Main.java
jar cfe bf-compiler.jar Main *.class
```

### 2. The Compilation Pipeline
To turn a `.bf` file into a working Windows executable, follow these four steps of doom:

```bash
# Step A: Generate the Assembly
java -jar bf-compiler.jar script.bf

# Step B: Assemble (Targeting Windows 64-bit)
nasm -f win64 out.asm -o out.obj

# Step C: Link (As a console application)
gcc out.obj -o program.exe -mconsole

# Step D: Run
.\program.exe
```

---

## Hello World Example
Create a file named `hello.bf` and paste the following "clean" code:

```brainfuck
++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.
```

**Pro Tip:** Use the one-liner if you're feeling confident:
```bash
java -jar bf-compiler.jar hello.bf && nasm -f win64 out.asm -o out.obj && gcc out.obj -o hello.exe -mconsole && .\hello.exe
```

---

## 🧠 Optimizations Included
* **Run-Length Encoding (RLE):** Sequences like `+++++` are converted to `add byte [rbx], 5` instead of five separate increment instructions.
* **Pointer Folding:** `>>>>` becomes `add rbx, 4`.
* **Shadow Space Management:** Properly handles the Windows x64 ABI calling convention (32-byte shadow space + 8-byte alignment).

---

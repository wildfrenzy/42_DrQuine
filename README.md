<div align="center">

# DR_QUINE

[About](#about-the-project) •
[Subject requirements](#subject-requirements) •
[Useful links](#useful-links)

</div>

## About The Project
A quine is a computer program that takes no input and produces a copy of its own source code as its only output.

A quine is a fixed point of an execution environment, when that environment is viewed as a function transforming programs into their outputs.
Quines are possible in any Turing-complete programming language, as a direct consequence of Kleene's recursion theorem. 

The name "quine" was coined by Douglas Hofstadter  in honor of philosopher Willard Van Orman Quine (1908–2000), who made an extensive study of indirect self-reference, and in particular for the following paradox-producing expression, known as Quine's paradox:

> "Yields falsehood when preceded by its quotation" yields falsehood when preceded by its quotation.

## Subject requirements

### Colleen
When executed, the program must display on the standard output the source code of the file used to compile the program.
The source code must contain at least:
- A main function.
- Two different comments.
- One of the comments must be present in the main function
- One of the comments must be present outside of your program.
- Another function in addition to the main function (which of course will be
called)

### Grace
When executed, the program writes in a file named Grace_kid.c [.s/.py]
the source code of the file used to compile the program.
The source code must strictly contain:
- No main declared.
- Three defines only.
- One comment. 

The program will run by calling a macro.

### Sully
When executed the program writes in a file named Sully_X.c [.s/.py]. The
X will be an integer given in the source. Once the file is created, the program
compiles this file and then runs the new program.

- Stopping the program depends on the file name : the resulting program will be
executed only if the integer X is greater or equals than 0
- An integer is therefore present in the source of your program and will have to
evolve by decrementing every time you create a source file from the execution of
the program.

## Useful links
1. https://en.wikipedia.org/wiki/Quine_(computing)
2. https://www.nasm.us/xdoc/2.10rc8/html/nasmdoc4.html
3. http://www.madore.org/~david/computers/quine.html#sec_fp
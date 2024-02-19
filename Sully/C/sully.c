//test from github mobile
#include <stdio.h>
#include <stdlib.h>
int i = 5;
/*
//for ref
#define MAIN(x) int main() {puts("#include <stdio.h>\n\n#define MAIN(x) "x"\n#define ADD(s) STRINGIFY(s)\n#define STRINGIFY(s) #s\nMAIN(ADD(MAIN(x)))");}
#define ADD(s) STRINGIFY(s)
#define STRINGIFY(s) #s
MAIN(ADD(MAIN(x)))
*/
int main() {
if (i > 0 && i < 6){
    FILE *fp;
    char filename[10];
    sprintf(filename, "Sully_%d.c", i);
    fp = fopen(filename, "w");
    if(fp == NULL){
        perror("Error opening file");
        return 1;
    }
    //add program code in this fputs
    fputs("#include <stdio.h>\nint i = "--i"\n//code here", fp);
    fclose(fp);
    //there must be a better way to do this ⬇️
    char syscompile[27];
    sprintf(syscompile, "clang Sully_%d.c -o Sully_%d", i, i);
    system(syscompile);
    char syscall[10];
    sprintf(syscall, "./Sully_%d", i);
    system(syscall);
    }
    return 0;
}
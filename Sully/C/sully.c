#include <stdio.h>
#include <stdlib.h>
int i = 5;
char num[11];
char file[18];
char syscompile[50];
char syscall[25];

#define MAIN(x) int main() {if (i > 0){ FILE *fp;sprintf(file,"Sully_%d.c", --i);fp = fopen(file, "w");if(fp == NULL){perror("Error opening file");return 1;}sprintf(num, "%d", i);fprintf(fp, "#include <stdio.h>\n#include <stdlib.h>\nint i = %d;\nchar num[11];\nchar file[18];\nchar syscompile[50];\nchar syscall[25];\n\n#define MAIN(x) %s\n#define ADD(s) STRINGIFY(s)\n#define STRINGIFY(s) #s\nMAIN(ADD(MAIN(x)))\n", i, x);fclose(fp);sprintf(syscompile, "cc -O0 Sully_%d.c -o Sully_%d", i, i);sprintf(syscall, "./Sully_%d", i);system(syscompile);system(syscall);};}
#define ADD(s) STRINGIFY(s)
#define STRINGIFY(s) #s
MAIN(ADD(MAIN(x)))

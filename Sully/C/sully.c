#include <stdio.h>
#include <stdlib.h>
int i = 5;
char *buf;

#define MAIN(x) {if (i >= 0){ FILE *fp;asprintf(&buf,"Sully_%d.c", i);fp = fopen(buf, "w");free(buf);if(fp == ((void *)0)){perror("Error opening file");return 1;}asprintf(&buf, "%d", i);fprintf(fp, "#include <stdio.h>\n#include <stdlib.h>\nint i = %d;\nchar *buf;\n\n#define MAIN(x) %s\n#define ADD(s) STRINGIFY(s)\n#define STRINGIFY(s) #s\n\nint main() {\n#ifdef INSULLY\n	i--;\n#endif\n	MAIN(ADD(MAIN(x)))\n}\n", i, x);fclose(fp);free(buf);asprintf(&buf, "cc -D INSULLY Sully_%d.c -o Sully_%d", i, i);system(buf);free(buf);asprintf(&buf, "./Sully_%d", i);system(buf);free(buf);};}
#define ADD(s) STRINGIFY(s)
#define STRINGIFY(s) #s

int main() {
#ifdef INSULLY
	i--;
#endif
	MAIN(ADD(MAIN(x)))
}

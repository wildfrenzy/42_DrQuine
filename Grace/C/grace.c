#include <stdio.h>
/*
	To be or not to be...
*/
#define MAIN(x) int main() {FILE *fp;fp = fopen("Grace_kid.c", "w");fputs("#include <stdio.h>\n/*\n	To be or not to be...\n*/\n#define MAIN(x) "x"\n#define ADD(s) STRINGIFY(s)\n#define STRINGIFY(s) #s\nMAIN(ADD(MAIN(x)))\n", fp);fclose(fp);}
#define ADD(s) STRINGIFY(s)
#define STRINGIFY(s) #s
MAIN(ADD(MAIN(x)))

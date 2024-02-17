#include <stdio.h>
//one comment
#define MAIN(x) int main() {puts("#include <stdio.h>\n//one comment\n#define MAIN(x) "x"\n#define ADD(s) STRINGIFY(s)\n#define STRINGIFY(s) #s\nMAIN(ADD(MAIN(x)))");}
#define ADD(s) STRINGIFY(s)
#define STRINGIFY(s) #s
MAIN(ADD(MAIN(x)))

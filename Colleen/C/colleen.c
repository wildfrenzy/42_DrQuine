#include <stdio.h>
//outside
void print_code() {char code[] = "#include <stdio.h>%c//outside%cvoid print_code() {char code[] = %c%s%c%c%cprintf(code, 10, 10, 34, code, 34, 59, 10, 10, 10);}%cint main() {//in main%cprint_code();return 0;}";
printf(code, 10, 10, 34, code, 34, 59, 10, 10, 10);}
int main() {//in main
print_code();return 0;}
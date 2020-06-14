#include <stdio.h>

/*
    Commentaire
*/

#define COUCOU "Troisieme define qui sert a rien"
#define STRING "#include <stdio.h>%1$c%1$c/*%1$c    Commentaire%1$c*/%1$c%1$c#define COUCOU %2$cTroisieme define qui sert a rien%2$c%1$c#define STRING %2$c%3$s%2$c%1$c#define FT(x) int main() {FILE *file = fopen(%2$cGrace_kid.c%2$c, %2$cw+%2$c); if (file == 0) {return 1;}; fprintf(file, STRING, 10, 34, STRING); fclose(file); return 0;}%1$c%1$cFT()%1$c"
#define FT(x) int main() {FILE *file = fopen("Grace_kid.c", "w+"); if (file == 0) {return 1;}; fprintf(file, STRING, 10, 34, STRING); fclose(file); return 0;}

FT()

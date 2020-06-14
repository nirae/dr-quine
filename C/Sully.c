#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>

#define STRING "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <sys/wait.h>%1$c%1$c#define STRING %2$c%3$s%2$c%1$c%1$cint nb = %4$d;%1$c%1$cint main() {%1$c    char filename[20];%1$c    char gcc[50];%1$c    char binary[20];%1$c%1$c    if (!nb)%1$c        return 0;%1$c    snprintf(filename, 20, %2$cSully_%%d.c%2$c, nb);%1$c    FILE *file = fopen(filename, %2$cw+%2$c);%1$c    if (!file)%1$c        return 1;%1$c    fprintf(file, STRING, 10, 34, STRING, nb - 1);%1$c    fclose(file);%1$c    snprintf(binary, 20, %2$c./Sully_%%d%2$c, nb);%1$c    snprintf(gcc, 50, %2$cgcc %%s -o %%s%2$c, filename, binary);%1$c    system(gcc);%1$c    system(binary);%1$c    return 0;%1$c}%1$c"

int nb = 5;

int main() {
    char filename[20];
    char gcc[50];
    char binary[20];

    if (!nb)
        return 0;
    snprintf(filename, 20, "Sully_%d.c", nb);
    FILE *file = fopen(filename, "w+");
    if (!file)
        return 1;
    fprintf(file, STRING, 10, 34, STRING, nb - 1);
    fclose(file);
    snprintf(binary, 20, "./Sully_%d", nb);
    snprintf(gcc, 50, "gcc %s -o %s", filename, binary);
    system(gcc);
    system(binary);
    return 0;
}

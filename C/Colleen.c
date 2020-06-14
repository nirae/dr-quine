#include <stdio.h>

/*
    Un commentaire en dehors
*/

void print () {
    char *str = "#include <stdio.h>%1$c%1$c/*%1$c    Un commentaire en dehors%1$c*/%1$c%1$cvoid print () {%1$c    char *str = %3$c%2$s%3$c;%1$c    printf(str, 10, str, 34);%1$c    return;%1$c}%1$c%1$cint main() {%1$c    /*%1$c        Un commentaire dedans%1$c    */%1$c    print();%1$c    return 0;%1$c}%1$c";
    printf(str, 10, str, 34);
    return;
}

int main() {
    /*
        Un commentaire dedans
    */
    print();
    return 0;
}

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int multiplicador = 1;

    while (multiplicador <= 10) {

        printf("8 x %d = ", multiplicador);
        printf("%d \n", multiplicador * 8);

        multiplicador++;
    };

    return 0;
}

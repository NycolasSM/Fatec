#include <stdio.h>
#include <stdlib.h>

int main()
{
    int multiplicador = 1;
    int valor_a_multiplicar = 0;



    while (valor_a_multiplicar < 1 || valor_a_multiplicar > 1) {
        printf("escreva o numero a ser multiplicado ( 1 a 10 ) \n");
        scanf("%d", &valor_a_multiplicar);

        if (valor_a_multiplicar < 1 || valor_a_multiplicar > 1) {
            printf("valor invalido \n");
        }
    }

    while (multiplicador <= 10) {

        printf("%d x %d = ", valor_a_multiplicar, multiplicador);
        printf("%d \n", multiplicador * valor_a_multiplicar);

        multiplicador++;
    };

    return 0;
}

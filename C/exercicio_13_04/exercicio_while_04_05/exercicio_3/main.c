#include <stdio.h>
#include <stdlib.h>

int main()
{
    int contator = 1;
    int valor_atual = 0;
    int total_valores_negativos = 0;



    while (contator < 10) {
        printf("digite um valor \n");
        scanf("%d", &valor_atual);

        if (valor_atual < 0) {
            total_valores_negativos++;
        };

        contator++;
    }

    printf("total de numeros negativos foram: %d ", total_valores_negativos);
}

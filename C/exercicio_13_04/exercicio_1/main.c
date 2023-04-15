#include <stdio.h>
#include <stdlib.h>

int main()
{
    float num_a, num_b, soma, produto;

    printf("escreva o valor a \n")
    scanf("%f", &num_a);
    printf("escreva o valor b \n")
    scanf("%f", &num_b);

    soma = num_a + num_b;
    produto = num_a * num_b;

    printf("a soma dos dois valores %.2f \n", soma );

    printf("o produto dos dois valores %.2f", produto );

    return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{
    setlocale(LC_ALL, "Portuguese");

    float num_a, num_b, resultado;
    int opcao_escolhida;

    printf("Escolha uma das seguintes opcoes \n");
    printf("1 - Media ponderada, com pesos 2 e 3, respectivamente \n");
    printf("2 - Quadrado da soma dos 2 numeros \n");
    printf("3 - Cubo do menor numero\n");
    printf("Escolha uma opcao \n");

    scanf("%d", &opcao_escolhida);


    if (opcao_escolhida == 1) {

    } else if (opcao_escolhida == 2) {

    } else if (opcao_escolhida == 3 ) {

    } else {
       printf("Opção Inválida \n");
    };

    return 0;
}

#include <stdio.h>
#include <stdlib.h>

int main()
{
    float altura_1, altura_2, altura_3;
    float pos_1, pos_2, pos_3;

    printf("Digite a altura da primeira pessoa \n");
    scanf("%f", &altura_1);

    printf("Digite a altura da segunda pessoa \n");
    scanf("%f", &altura_2);

    printf("Digite a altura da terceira pessoa \n");
    scanf("%f", &altura_3);

    if (altura_1 >= altura_2 && altura_1 > altura_3) {
        pos_1 = altura_1;
    } else if (altura_1 > altura_2 && altura_1 < altura_3) {
        pos_2 = altura_1;
    } else if (altura_1 < altura_2 && altura_1 < altura_3) {
        pos_3 = altura_1;
    };

    if (altura_2 > altura_1 && altura_2 > altura_3) {
        pos_1 = altura_2;
    } else if (altura_2 > altura_1 && altura_2 < altura_3) {
        pos_2 = altura_2;
    } else if (altura_2 < altura_1 && altura_2 < altura_3) {
        pos_3 = altura_2;
    };

    if (altura_3 > altura_1 && altura_3 > altura_2) {
        pos_1 = altura_3;
    } else if (altura_3 > altura_1 && altura_3 < altura_2) {
        pos_2 = altura_3;
    } else if
     (altura_3 < altura_1 && altura_3 < altura_2) {
        pos_3 = altura_3;
    };


    printf("Ordenação %.2f %.2f %.2f", pos_1, pos_2, pos_3);
    return 0;
}

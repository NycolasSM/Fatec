#include <stdio.h>
#include <stdlib.h>

// Implemente um programa que converta o valor de uma velocidade m�dia
// em km/h para m/s. Para isso, o usu�rio deve informar
// o valor da velocidade m�dia. Sabe-se que o fator utilizado para essa convers�o � 3,6.


int main()
{

    float vel_media, velocidae_ms;

    printf("Digite a velocidade media em km/h \n");
    scanf("%f", &vel_media);

    velocidae_ms = vel_media / 3.6;

    printf("A velocidade em m/s � %.2f m/s", velocidae_ms);
    return 0;
}

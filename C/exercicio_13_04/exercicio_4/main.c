#include <stdio.h>
#include <stdlib.h>

int main()
{
    float salario_min_atual, salario_mensal;
    int qtde_salarios_min;

    printf("Digite o valor do salario minimo atual \n");
    scanf("%f",&salario_min_atual);

    printf("Digite o valor do salario mensal \n");
    scanf("%f", &salario_mensal);

    if (salario_mensal >= salario_min_atual) {
        qtde_salarios_min++;
        salario_mensal = salario_mensal - salario_min_atual;
        if (salario_mensal >= salario_min_atual) {
        qtde_salarios_min++;
        salario_mensal = salario_mensal - salario_min_atual;
            if (salario_mensal >= salario_min_atual) {
            qtde_salarios_min++;
            salario_mensal = salario_mensal - salario_min_atual;
                if (salario_mensal >= salario_min_atual) {
                qtde_salarios_min++;
                salario_mensal = salario_mensal - salario_min_atual;
                }
            }
        }
    };

    printf("a quantidade de salario minimo é de %d", qtde_salarios_min);

    return 0;
}

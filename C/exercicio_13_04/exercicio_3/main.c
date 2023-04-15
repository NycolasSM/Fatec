#include <stdio.h>
#include <stdlib.h>

int main()
{
    char nome_corretor[10];
    int total_vendidos;
    float salario_base, commisao_fixa, commisao_venda, valor_total_venda;

    printf("Digite o nome do corretor \n");
    scanf("%s", &nome_corretor);

    printf("Total de imóveis vendidos vendidos \n");
    scanf("%d", &total_vendidos);

    printf("Digite o valor total das vendas \n");
    scanf("%f", &valor_total_venda);

    salario_base = 1500;

    commisao_venda = valor_total_venda * 0.05;

    printf("O valor total do corretor %s é R$ %.2f", nome_corretor, (commisao_venda + salario_base));

    return 0;
}

#include <stdio.h>

float adicao(float num1, float num2) {
    return num1 + num2;
}

float subtracao(float num1, float num2) {
    return num1 - num2;
}

float multiplicacao(float num1, float num2) {
    return num1 * num2;
}

float divisao(float num1, float num2) {
    if (num2 == 0) {
        printf("Erro! Divisão por zero.\n");
        return 0;
    }
    return num1 / num2;
}

void lerEntradas(char *operador, float *num1, float *num2) {
    printf("Digite a operação (+, -, *, /): ");
    scanf(" %c", operador);
    printf("Digite o primeiro número: ");
    scanf("%f", num1);
    printf("Digite o segundo número: ");
    scanf("%f", num2);
}

int main() {
    char operador;
    float num1, num2, resultado;

    lerEntradas(&operador, &num1, &num2);

    switch (operador) {
        case '+':
            resultado = adicao(num1, num2);
            break;
        case '-':
            resultado = subtracao(num1, num2);
            break;
        case '*':
            resultado = multiplicacao(num1, num2);
            break;
        case '/':
            resultado = divisao(num1, num2);
            break;
        default:
            printf("Operador inválido.\n");
            return 0;
    }

    printf("Resultado: %.2f\n", resultado);
    return 0;
}

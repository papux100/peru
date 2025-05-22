#include <stdio.h>
#include <setjmp.h>

jmp_buf contexto;

void verificarPositivo(int numero) {
    if (numero < 0) {
        // Simula lanzar una "excepción"
        longjmp(contexto, 1);
    }
    printf("El numero es positivo: %d\n", numero);
}

int main() {
    int estado = setjmp(contexto);

    if (estado == 0) {
        // "try"
        int numero;
        printf("Ingresa un numero: ");
        scanf("%d", &numero);
        verificarPositivo(numero);
    } else {
        // "catch"
        printf("Error: El numero no puede ser negativo.\n");
    }

    printf("Fin del programa.\n");
    return 0;
}

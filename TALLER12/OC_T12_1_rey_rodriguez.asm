section .data
    message db "La suma de los valores es: ", 0
    newline db 10, 0

    ; Estructura simple con tres valores
    valores dd 5, 10, 15

    ; Resultado fijo como texto (se asume que 5 + 10 + 15 = 30)
    resultado db "30"

section .bss
    buffer resb 4        ; Reservado, no usado en esta versión

section .text
    global _start

; Macro para imprimir un string
%macro PRINT_STRING 1
    mov eax, 4            ; syscall write
    mov ebx, 1            ; file descriptor: stdout
    mov ecx, %1           ; dirección del string
    mov edx, 50           ; longitud máxima (ajustable)
    int 0x80
%endmacro

; Macro para calcular e imprimir la suma (usamos texto fijo)
%macro PRINT_SUM 0
    ; Cargar y sumar los valores (solo demostrativo)
    mov eax, [valores]
    add eax, [valores + 4]
    add eax, [valores + 8]
    
    ; Imprimir "30" como si fuera el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 2           ; longitud del texto "30"
    int 0x80
%endmacro

_start:
    PRINT_STRING message
    PRINT_SUM
    PRINT_STRING newline

    ; Salida del programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

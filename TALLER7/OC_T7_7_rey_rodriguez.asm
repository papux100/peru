section .data
    msg_swap db "Los numeros fueron intercambiados", 0  ; Mensaje si hay intercambio

section .bss
    num1 resb 1  ; Primer numero
    num2 resb 1  ; Segundo número

section .text
    global _start

_start:
    ;codigo de input

    mov al, [num1]  ; cargar num1
    cmp al, [num2]  ; comparar con num2
    jle no_swap     ; si num1 <= num2, no intercambiar
    xchg al, [num2] ; intercambiar valores
    mov [num1], al  ; guardar en num1
    ; mostrar msg_swap

no_swap:
    jmp fin  ; ir al final

fin:
    ; Salir

section .data
    msg_contador db "Contador: ", 0

section .text
    global _start

_start:
    mov al, 0

loop_inicio:
    ; Mostrar msg_contador y valor de AL
    add al,1    ;agregamos 1
    cmp al,10   ;comprobamos si es 10
    je fin      ;si es igual termina
    jmp loop_inicio ;volvemos al bucle

fin:
    ; Salir del programa

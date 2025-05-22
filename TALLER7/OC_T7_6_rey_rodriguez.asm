section .data
  
  msg_menor db "El menor es:",0
  msg_mayor db "El mayor es:",0
  
section .bss

  num1 resb 99  ;definimos num1 como 99
  num2 resb 2   ;definimos num2 como 1
  num3 resb 3   ;definimos num3 como 3

section .text

  global _start

_start:
;leemos los numeros
;codificamos input


_start:
    ;comparamos
    mov al, [num1]
    cmp al, [num2] ;primero comparamos num1 con num2
    jg mayor1      ;si num1 es mayor que num2 se va a mayor1
    ;bl almacena el menor
    mov bl, al     ;si num2 fue mayor bl es igual a num1
    jmp continuar   

mayor1:   
    mov bl, [num2] ;bl es igual a num2

continuar:
    cmp bl, [num3];continuamos comparamos el mas bajo con num3
    jg mayor2     ;si bl era mas grande nos vamos a mayor2
    jmp imprimir

mayor2:
    mov bl, [num3]; si bl ahora es num3
    jmp imprimir

        
imprimir:
        ;Mostramos mensajes
        jmp fin
fin:
  ;salimos
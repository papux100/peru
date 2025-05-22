section .data
  
  iguales_msg db "Son iguales",0
  mayor db "num1 es mayor que num2",0
  menor db "num2 es mayor que num1",0
  
section .bss

  num1 resb 1   ;definimos num1 como 2
  num2 resb 2  ;definimos num2 como 1

section .text

  global _start

_start:
;leemos los numeros
;codificamos input

;omparamos
mov al, [num1];movemos num1 a ax
cmp al, [num2];comparamos num1 con num2

je son_iguales    ; num1 y num2 son iguales
jg  num1_es_mayor ; num1 es mayor que num2
jl  num2_es_mayor ; num2 es mayor que num1

son_iguales:
        ;Mostramos iguales_msg
        mov ecx,iguales_msg
        jmp imprimir

num1_es_mayor:
        ;Mostramos mayor
        mov ecx,mayor
        jmp imprimir
        
num2_es_mayor:
        ;Mostramos menor
        mov ecx,menor
        jmp imprimir
        
imprimir:
        ;Mostramos iguales_msg
        jmp fin
fin:
  ;salimos
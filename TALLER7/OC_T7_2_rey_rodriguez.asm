section .data
  
  msg_positivo db "es positivo",0
  msg_negativo db "es negativo",0
  msg_cero db "es 0",0
  
section .bss

  num1 resb 5   ;definimos num1 como 5

section .text

  global _start

_start:
;leemos los numeros
;codificamos input

;omparamos
mov al, [num1]
cmp al, 0

je es_cero     ; num1 es 0
jg es_positivo ; num1 es positivo
jl es_negativo ; num1 es negativo

es_cero:
        ;alamcenamos msg_cero
        mov ecx,msg_cero
        jmp imprimir

es_positivo:
        ;almacenamos msg_positivo
        mov ecx,msg_positivo
        jmp imprimir
        
es_negativo:
        ;almacenamos msg_negativo
        mov ecx,msg_negativo
        jmp imprimir
        
imprimir:
        ;Mostramos mensaje
        jmp fin
fin:
  ;salimos
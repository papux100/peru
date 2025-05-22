section .data
  
  msg_par db "es par",0
  msg_impar db "es impar",0
  
section .bss

  num1 resb 5   ;definimos num1 como 5

section .text

  global _start

_start:
;leemos los numeros
;codificamos input

;omparamos
mov al, [num1]  
test al,al  ;verificamos la paridad

jp es_par     ;verificamos si son pares
jmp es_impar  ;si no salto pues salta a impares

es_par:
        ;Mostramos msg_par
        mov ecx,msg_par
        jmp imprimir

es_impar:
        ;Mostramos msg_impar
        mov ecx,msg_impar
        jmp imprimir

imprimir:
        ;Mostramos el mensaje
        jmp fin
fin:
  ;salimos
section .data
  
  msg_hay db "Hay carry",0
  msg_nohay db "No hay carry",0
  
section .bss

  num1 resb 99   ;definimos num1 como 2
  num2 resb 2  ;definimos num2 como 1

section .text

  global _start

_start:
;leemos los numeros
;codificamos input

;omparamos
mov al, [num1];movemos num1 a ax
adc al, [num2];comparamos num1 con num2

jc hay_carry ; habia carry
jmp no_carry ; no habia carry


hay_carry:
        ;almacenamos mensaje
        mov ecx,msg_hay
        jmp imprimir

no_carry:
        ;almacenamos mensaje
        mov ecx,msg_nohay
        jmp imprimir
        
imprimir:
        ;Mostramos mostramos
        jmp fin
fin:
  ;salimos
section .data
  
  msg_hay db "Hay overflow",0
  msg_nohay db "No hay overflow",0
  
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
add al, [num2];comparamos num1 con num2

jo hay_overflow ; habia overflow
jmp no_overflow ; no habia overflow


hay_overflow:
        ;alamacenamos mensaje
        mov ecx,msg_hay
        jmp imprimir

no_overflow:
        ;alamacenamos mensaje
        mov ecx,msg_nohay
        jmp imprimir
        
imprimir:
        ;Mostramos mensaje
        jmp fin
fin:
  ;salimos
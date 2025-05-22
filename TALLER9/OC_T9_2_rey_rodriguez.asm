section .data
    msg db 'Resultado: ', 0 ; mensaje

section .bss
    buffer resb 4 ; Reservamos 4 bytes para el buffer donde se mostrará el carácter

section .text
    global _start

_start:

    ; Modo inmediato: Imprimir el carácter '@' (ASCII 64)
    mov al, 64          ; cargamos el valor ASCII de '@'
    mov [buffer], al    ; almacenamos el carácter '@' en buffer


    ; Imprimir el mensaje "Resultado: "
    mov eax, 4          ; syscall número 4: sys_write
    mov ebx, 1          ; descriptor de archivo 1: salida estándar (pantalla)
    mov ecx, msg        ; dirección del mensaje a imprimir
    mov edx, 11         ; longitud del mensaje
    int 0x80            ; llamada al sistema para escribir en pantalla

    ; Imprimir el carácter '@' (almacenado en buffer)
    mov eax, 4          ; syscall número 4: sys_write
    mov ebx, 1          ; descriptor de archivo 1: salida estándar
    mov ecx, buffer     ; dirección del buffer
    mov edx, 1          ; número de bytes a escribir (1 carácter)
    int 0x80            ; llamada al sistema

    ; Salir del programa
    mov eax, 1          ; syscall número 1: sys_exit
    xor ebx, ebx        ; código de salida 0
    int 0x80            ; llamada al sistema para terminar el programa

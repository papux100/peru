section .data
    char db 0
    newline db 10

section .text
    global _start

_start:
    ; Sumar dos números distintos
    mov al, 112        ; AL = 224 (antes de la rotación)

    ; Rotar a la derecha (ROR)
    shl al,4 
    inc al
    shl al,1 
    inc al 
    shl al,1
    inc al 
    shl al,1
    inc al 
    shl al,2
    ror al,1
    rol al,1
    inc al
    
    ; Guardar en char
    mov [char], al

    ; Escribir carácter en consola
    mov eax, 4         ; syscall write
    mov ebx, 1         ; stdout
    mov ecx, char
    mov edx, 1         ; 1 byte
    int 0x80

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Salir
    mov eax, 1         ; syscall exit
    xor ebx, ebx       ; código de salida 0
    int 0x80

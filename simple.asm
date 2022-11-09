%include "../include/io.mac"

section .text
    global simple
    extern printf

simple:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     ecx, [ebp + 8]  ; len
    mov     esi, [ebp + 12] ; plain
    mov     edi, [ebp + 16] ; enc_string
    mov     edx, [ebp + 20] ; step

    ;; DO NOT MODIFY
   
    ;; Your code starts here

    xchg edi, edx

    xor eax,eax;
    xor ebx,ebx;
    mov ebx, edi;

do:
    mov edi,ebx;
    mov al, [esi + ecx - 1]
    mov ah, al
    cmp ah, 'Z'
    ja cmp1

continue2:
    mov ah, al
    cmp ah, 'A'
    jb continue
    mov ah, al
    cmp ah, 'z'
    ja continue

incr:
    mov ah, al
    cmp ah, 'z'
    je change_1
    mov ah, al
    cmp ah, 'Z'
    je change_2

continue1:
    cmp edi, 0;
    je continue
    dec edi;
    inc al;
    cmp edi, 0;
    jne incr;
    je continue

continue:
    mov [edx + ecx -1], al
    loop do
    jmp end


    ;daca litera este 'z'
change_1: 
    mov al, 'a'
    dec edi
    jmp continue1


    ;daca litera este 'Z'
change_2:
    mov al, 'A'
    dec edi
    jmp continue1

    ;verific intervalul in care se afla caracterul 
cmp1:
    mov ah, al
    cmp ah, '`'
    ja continue2
    jmp continue

end:
    ;; Your code ends here
    
    ;; DO NOT MODIFY

    popa
    leave
    ret
    
    ;; DO NOT MODIFY

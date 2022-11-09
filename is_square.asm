%include "../include/io.mac"

section .text
    global is_square
    extern printf

is_square:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; dist
    mov eax, [ebp + 12]     ; nr
    mov ecx, [ebp + 16]     ; sq
    ;; DO NOT MODIFY
   
    ;; Your code starts here

main_loop:
    mov edx, ebx ; ebx are nr de verificat;edx contorul
    push eax
    mov edx, -1
mai_mic_mai_cauta:
    inc edx
    mov eax, edx
    mul byte dl
    cmp eax, [ebx]
    je egal_e_pp
    jl mai_mic_mai_cauta
    jg mai_mare_nu_e_pp

egal_e_pp:
    pop eax
    dec eax
    mov dword [ecx], 1
    add ecx, 4
    cmp eax, 0
    je terminat
    add ebx, 4
    jmp main_loop

mai_mare_nu_e_pp:
    pop eax
    dec eax
    mov dword [ecx], 0
    add ecx, 4
    cmp eax, 0
    je terminat
    add ebx, 4
    jmp main_loop
terminat:

    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY
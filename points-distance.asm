%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1
endstruc

section .text
    global points_distance
    extern printf

points_distance:
    ;; DO NOT MODIFY
    
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; points
    mov eax, [ebp + 12]     ; distance
    ;; DO NOT MODIFY
   
    ;; Your code starts here
    mov esi, eax

    xor eax, eax
    xor ecx, ecx
    xor edx, edx

    mov ecx, [ebx+point_size*eax+point.x] ;accesam x din primul struct
    ;PRINTF32 `X din primul punct: %d\n\x0`, ecx
    inc eax
    mov edx, [ebx+point_size*eax+point.x] ;accesam x din al doilea struct
    ;PRINTF32 `X din al doilea punct: %d\n\x0`, edx
    dec eax
    cmp ecx, edx
    je x_egal ;altfel y egal
    jmp y_egal

x_egal:
	; diferenta y
	mov ecx, [ebx+point_size*eax+point.y] ;accesam y din primul struct
	inc eax
    mov edx, [ebx+point_size*eax+point.y] ;accesam y din al doilea struct
    dec eax
    sub ecx, edx  ;cx are acum diferenta
    mov edx, ecx
    neg ecx
    cmovl ecx, edx ;modulul diferentei
    xor eax, eax
    mov eax, ecx
    jmp end

y_egal:
	; diferenta x
	mov ecx, [ebx+point_size*eax+point.x] ;accesam y din primul struct
	inc eax
    mov edx, [ebx+point_size*eax+point.x] ;accesam y din al doilea struct
    dec eax
    sub ecx, edx  ;ecx are acum diferenta
    mov edx, ecx
    neg ecx
    cmovl ecx, edx ;modulul diferentei
    xor eax, eax
    mov eax, ecx
    jmp end

end:
	mov ecx, eax
	mov eax, esi
	cmp cx, 0
	jz test
	jmp ending
test:

	rol ecx, 16
ending:
	mov [eax], ecx
	


    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret

    ;; DO NOT MODIFY
.586

.model flat, c
extern printf : PROC
.data
	format db "X = %d", 13, 10, 0
	K dd 616h
	divA dd 00
	mulD dd 00
.code
calc PROC
	push ebp
	mov ebp, esp

	mov eax, dword ptr [ebp + 8]
	mov dl, 4
	idiv dl
	mov divA, eax

	xor eax, eax
	mov dx, 2
	mov eax, dword ptr [ebp + 16]
	imul dx
	mov mulD, eax

	xor eax, eax
	mov eax, divA
	add eax, dword ptr [ebp + 12]
	add eax, mulD
	add eax, K
	push eax
	push OFFSET format
	call printf

	pop ebp
	pop ebp
	pop ebp

	ret
calc ENDP
END
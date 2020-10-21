.586

.model flat, c

.data
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
	sub eax, mulD
	add eax, K

	pop ebp

	ret
calc ENDP
END
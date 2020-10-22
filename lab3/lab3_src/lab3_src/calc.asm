.386
.model flat, c
.data
	ab dd 0.0
	de dd 0.0
	K dd 1558.0
.code 
calc PROC
	push ebp 
	mov ebp,esp
	fld dword ptr [ebp+8]
	fdiv dword ptr [ebp+12] 
	fstp ab
	fld dword ptr [ebp+20]
	fmul dword ptr [ebp+24]
	fstp de
	fld ab
	fadd dword ptr [ebp+16]
	fsub de
	fadd K
	pop ebp
	ret 
	calc ENDP 
END

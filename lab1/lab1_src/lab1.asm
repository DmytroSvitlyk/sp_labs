.586
.model flat, stdcall
 option casemap: none

include \masm32\include\user32.inc
include \masm32\include\windows.inc 
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc 
include \masm32\include\debug.inc

includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\debug.lib

.data
    A dd 1,2,3,4,5
    N dd 5
    L dd 2
    Res dd 0
.code 
start:
    mov eax, N
    mov ebx, L
    cmp eax, ebx
    jae prep        
    mov L, eax
prep:
    mov ecx, N
    mov eax, N
    sub eax, L
    mov ebx, eax
    xor eax, eax
    mov eax, Res
calc:
    add eax, A[4*ecx-4]
    dec ecx
    cmp ecx, ebx 
    ja calc
    PrintDec eax, "Res "
    invoke ExitProcess, NULL	
end start

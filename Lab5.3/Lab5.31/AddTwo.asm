; AddTwo.asm - adds two 32-bit integers.
; Lab 5, Exercise3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data


.code
main PROC
add al, 20
add ax, 30
mov eax, 1
mov ebx, eax
	invoke ExitProcess,0
main endp
end main
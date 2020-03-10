;Lab7-Exercise 1
;Learn Flags Detail


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
varB BYTE 65h, 31h, 02h, 05h
varW WORD 6543h, 1202h
varD DWORD 12345678h
.code
main PROC
mov ax,	WORD PTR [varB+2]						; a. mov varB+2 using PTR, What is in AX = 0502h
mov bl, BYTE PTR [varW+3]						; b. mov varW+3 using PTR, What is in BL = 12h
mov cx,	WORD PTR [varD+2]						; c. mov varD+2 using PTR, what is in CX = 34h
mov ebx, DWORD PTR [varW+2]						; d. mov varW+2 using PTR, What is in EBX = 56781202h
	invoke ExitProcess,0
main endp
end main
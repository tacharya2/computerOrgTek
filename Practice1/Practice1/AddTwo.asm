; Copying smaller values into larger ones

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
count word 1				; 0000	0000	0000	0001
signedVal SWORD -16			; ??1111	1111	1111	0000?	FF F0?. 
Val1 BYTE 10001111b

.code
main PROC
mov ecx, 0					; 0000	0000	0000	0000
mov cx, count				; xxxx	xxxx	0000	0001. Here, we copied only the cx; 8-bit portion leaving the rest empty

;==============================================================================================================
; Trying same approach with the signed integer
mov ecx, 0					; 0000	0000	0000	0000
mov cx, signedVal			; 0000	0000	1111	0000?	i.e. ECX= 00 00 FF FF FF F0 (+65,520)-which is absurd
;===============================================================================================================
;To correct this'
mov ecx, 0ffffffffh
mov cx, signedVal
;=======================================MOVSX==================================================================
movsx eax, Val1					; FIGURED_OUT that MOVSX is useful only when we are loading the memory of lower BYTE up into higher register


	invoke ExitProcess,0
main endp
end main
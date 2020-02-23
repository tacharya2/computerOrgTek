;Learn exchanging
;================================REMEMBER===============================
;===============XCHG register, register=================================
;===============XCHG register, memory===================================
;===============XCHG memory, register===================================


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 1, 2, 3		; memory ==> 01 00 00 00 02 00 00 00 03 00 00 00 00 @ 0x0040400

.code
main PROC
mov eax, 0h				; eax = 00000000
mov ebx, 0h				; ebx = 00000000
mov eax, array			; eax = 00000001	[array+4] = 02 00 00 00
xchg eax, [array+4]		; eax = 00000002	[array+4] = 01 00 00 00
xchg eax, [array+8]		; eax = 00000003 <-- register	[array+8] = 02 00 00 00 <-- memory
xchg array, eax			; array = 03 00 00 00
;==========================================What's in the array now? look backwards in the above execution =======================
; array 03 00 00 00 02 00 00 00 01 00 00 00
;==========================================What was the intention? 3, 1, 2=======================================================
;==========================================How do you fix it?====================================================================
;===========================================Remove the last line and add the following
;mov eax, array			; eax = 00000001	[array+4] = 02 00 00 00
;xchg eax, [array+4]		; eax = 00000002	[array+4] = 01 00 00 00
;xchg eax, [array+8]		; eax = 00000003 <-- register	[array+8] = 02 00 00 00 <-- memory
;xchg eax, [array+4]		; eax = 00000001	[array+4] = 03 00 00 00 

	invoke ExitProcess,0
main endp
end main
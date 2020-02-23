; mov and xchg: rearrange the values to be 3,1,2, you could
; Lab 6

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myWord WORD 1000h	;WORD Capa:  0000 0000 0000 0000
.code
main proc
inc myWord				; myWord = 00001001h
mov bx, myWord			; bx = 1001
dec bx					; bx = 1000h
;===============================================================================================================================================
;           Interesting: INC and DEC instructions do not affect the CY flag
;===============================================================================================================================================


	
	invoke ExitProcess,0
main endp
end main
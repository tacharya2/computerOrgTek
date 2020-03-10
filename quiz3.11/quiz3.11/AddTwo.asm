; Quiz 3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
oneByte BYTE 78h
oneWord WORD 1234h
oneDWORD DWORD 12345678h

.code
main PROC
mov eax, 0			; this will reserve a 32-bit memory with no value
mov al, oneByte		; al = 78h			?0111	1000? 
					;					|1		|1		|
mov ax, oneWord		; ax = 1234h		?0001	0010	0011	0100?
					;					|1		|1		|1		|1
					;					|	2		|	|	  2		|
mov eax, oneDword	; eax = 12345678h	?0001	0010	0011	0100	0101	0110	0111	1000?
					;					|1		|1		|1		|1		|1		|1		|1		|1
					;					|           4				|				4				|
mov ax, 0



	invoke ExitProcess,0
main endp
end main
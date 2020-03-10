;Lab7-Exercise 1
;Learn Flags Detail


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
arrayD DWORD 1, 2, 3	
.code
main PROC
mov eax, arrayD							; 1, 2, 3
xchg eax, [arrayD+4]					; 2, 1, 3
xchg eax, [arrayD+8]					; 3, 1, 2
mov [arrayD], eax						; 3, 1, 2
	invoke ExitProcess,0
main endp
end main
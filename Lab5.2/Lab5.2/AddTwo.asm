; AddTwo.asm - adds two 32-bit integers.
; Lab 5, Exercise 2
;Creating a list using DUP() operator and using offset to access the its contents for simple arithmatic

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
list WORD 1 DUP(2,4,8,10,12,14)

.code
main PROC
mov ax, 2
add ax, list[2]
add ax, list[4]
add ax, list[6]
add ax, list[8]
add ax, list[10]
mov list[10], ax 

	invoke ExitProcess,0
main endp
end main
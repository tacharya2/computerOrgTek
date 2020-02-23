; mov and xchg: rearrange the values to be 3,1,2, you could
; Lab 6

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
arrayB BYTE 10h, 20h, 30h, 40h, 50h
	
.code
main proc
mov al, arrayB
mov arrayB, al
	invoke ExitProcess,0

main endp
end main
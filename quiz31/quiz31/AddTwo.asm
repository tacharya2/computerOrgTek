; AddTwo.asm - adds two 32-bit integers.
; Quiz 3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
Val1 SBYTE ?

.code
main proc
mov cl, 142d
add cl, 3d
mov Val1, cl

	invoke ExitProcess,0
main endp
end main
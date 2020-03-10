.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
counter DWORD ?
.code
main proc
mov al, 0
mov ecx, 2
L1:
mov counter, ecx
mov ecx, 2
L2:
inc al
LOOP L2
mov ecx, counter
LOOP L1


invoke ExitProcess,0
main endp
end main

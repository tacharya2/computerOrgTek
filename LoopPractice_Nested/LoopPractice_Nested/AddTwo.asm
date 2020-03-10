;Simple loop
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
count WORD ?
.code
main proc
mov ax, 0
mov ecx, 5
L1:
add ax, 2
loop L1

invoke ExitProcess,0
main endp
end main

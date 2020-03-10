.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myBytes BYTE 10h, 20h, 30h, 40h
myWords WORD 8Ah, 3Bh, 72h, 44h, 66h
myDoubles DWORD 1, 2, 3, 4, 5
myPointer DWORD myDoubles
.code
main proc
mov esi, OFFSET myBYtes
mov al, [esi]					; AL = 10h
mov al, [esi+3]					; AL = 40h
mov esi, OFFSET myWords+2
mov ax, [esi]					; AX = 00 3Bh
mov edi, 8
mov edx, [myDoubles + edi]		; EDX = 00 00 00 03
mov edx, myDoubles[edi]			; EDX = 00 00 00 03
mov ebx, myPointer
mov eax, [ebx + 4]				; EAX = 00 00 00 02

invoke ExitProcess,0
main endp
end main

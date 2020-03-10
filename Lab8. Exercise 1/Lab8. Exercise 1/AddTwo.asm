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
mov esi, OFFSET myBytes
mov al, [esi+5]								; a. AL = 00h
mov al, [esi+14]							; b. AL = 01h
;DEfinition: indirect access mode
mov esi, OFFSET myWords+2
mov ax, [esi]								; c. AX = 00 3Bh
mov edi, 8
mov edx, [myDoubles - 8]					; d. EDX = 00 72 00 3Bh
; Definition: Indirect
mov edx, myDoubles[edi]						; e. EDX = 00 00 00 03h
mov ebx, myPointer
mov eax, [ebx+4]							; f. EAX = 00 00 00 02h
; Definition: Direct Access Mode

invoke ExitProcess,0
main endp
end main
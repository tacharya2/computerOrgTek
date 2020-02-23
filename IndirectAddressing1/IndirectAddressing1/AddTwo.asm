; mov and xchg: rearrange the values to be 3,1,2, you could
; Lab 6

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
wordList WORD 1000h, 2000h, 3000h			; very important property discovered

.code
main proc
mov esi, OFFSET wordList
mov ax, [esi] ;<------ this will return the value of the pointer that esi address is pointing to
add esi, 2     ;<---------increment the word by 1
add ax, [esi]  ;<--------add ax with [esi]
add esi, 2		;
add ax, [esi]	;
mov wordList, ax

	invoke ExitProcess,0
main endp
end main
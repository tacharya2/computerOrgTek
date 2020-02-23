; mov and xchg: rearrange the values to be 3,1,2, you could
; Lab 6

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
wordList WORD 5678h, 1234h			; very important property discovered

.code
main proc
mov bl, BYTE PTR wordList
mov eax, DWORD PTR wordList

	invoke ExitProcess,0
main endp
end main
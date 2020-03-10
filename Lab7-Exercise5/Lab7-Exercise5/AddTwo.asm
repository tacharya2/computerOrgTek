;Lab7-Exercise 1
;Learn Flags Detail


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myBytes BYTE 10h, 20h, 30h, 40h
myWords WORD 3 DUP(?), 2000h
myString BYTE "ABCDE"
.code
main PROC
mov eax, TYPE myBytes							; a. 00 00 00 01h
mov eax, LENGTHOF myBytes						; b. 00 00 00 04h
mov eax, SIZEOF myBytes							; c. -----------
mov eax, TYPE myWords							; d. 00 00 00 02h
mov eax, LENGTHOF myWords						; e. 00 00 00 04h
mov eax, SIZEOF myWords							; f. 00 00 00 08h
mov eax, SIZEOF myString						; g. 00 00 00 05h
	invoke ExitProcess,0
main endp
end main
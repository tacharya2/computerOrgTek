; ; Calculating the size of string; a chatacter in ASCII is a BYTE long in storage
; We initialized a 32-bit registers to make sure the program has enough memory to adjust enough size of string.
;Lab6, Exercise 1

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myString BYTE "This is a very long string made by your instructor to test how $ works in this lab hope you will like it"
myString_length = ($-myString)

.code
main proc
	mov eax, 0
	mov al, myString_length		; Noted that the value of AL is is 68h which is 104d that is what word processor's character-count with white spaces
	mov myString_length, al

invoke ExitProcess,0
main endp
end main
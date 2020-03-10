;Lab7-Exercise 1
;Learn Flags Detail


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myBytes BYTE 10h, 20h, 30h, 40h
myWords WORD 8Ah, 3Bh, 72h, 44h, 66h
myDoubles  DWORD 1, 2, 3, 4, 5
myPointer DWORD myDoubles
.code
main PROC
mov esi,OFFSET myBytes
mov ax, [esi]								; a. AX = 2010h
mov esi, myPointer							; b. What is the difference between this memory access mode and direct offset operand
											; Answer: this memory access mode use address of the value instead of the value byself
mov ax, [esi+6]								; c. AX = 0000h				
mov esi, OFFSET myWords
mov eax, [esi+2]							; e. EAX = 003B
mov [esi], ax							    ; uncomment the unstruction. Why this would not work?
											; Answer: This works and the value is 
	invoke ExitProcess,0
main endp
end main
; Loop Instruction
;Problem 2
;Summing the Array(SumArray.asm)
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
intarray DWORD 10000h, 20000h, 30000h, 40000h
.code
main proc
mov edi, OFFSET intarray						; 1. EDI = (Address of inarray); No need to replace with anything
mov ecx, LENGTHOF intarray						; 2. (initilize loop counter)
mov eax, 0										; 3. sum = 0
L1:												; 4. Mark the  beginning of loop
add eax, [edi]									; 5. add an integer
add edi, TYPE intarray							; 6. point to next element
loop L1											; 7. repeat until ecx = 0
;EAX = 00 0A 00 00
invoke ExitProcess,0
main endp
end main

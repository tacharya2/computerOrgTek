; Loop Instruction
;Problem 3. Write and run the program and answer the questions in the box.
;Summing the Array(SumArray.asm)
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
intarray WORD 6000h, 7000h, 8000h, 9000h, 5000h, 4000h
.code
main proc
mov edi, OFFSET intarray+10				; address of the intarray
mov ecx, LENGTHOF intarray				; loop counter
mov ax, 0								; set the accumulator to zero
L1:										; Create a label
add ax, [edi]							; add an integer
sub edi, TYPE intarray					; point to the next integer
loop L1									; loop until ECX = 0
; Is the ZF flag set? : NO
;Why? : There is overflow from AX but the value of AX is never 00 00h 
invoke ExitProcess,0
main endp
end main

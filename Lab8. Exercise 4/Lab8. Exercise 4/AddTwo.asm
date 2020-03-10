; Loop Instruction
;Problem 3. Write and run the program and answer the questions in the box.
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
temp DWORD ?
.code
main proc
mov eax, 0
mov ecx, 10								; Outer Loop Counter
L1: 
	mov eax, 3

	push ecx							; mov temp, ecx. store the value of ecx
	mov ecx, 5							; inner loop counter
L2: 
	add eax, 5
	loop L2								; Repeat inner loop

	pop ecx								; mov ecx, temp
loop L1									; repeat outer loop. restore the value of ecx from the memory. 
invoke ExitProcess,0
main endp
end main
; Third:
;push will get ecx back on track for next iteration and pop will clear ecx
; Replace 'mov temp, ecx' with push ecx and 'mov ecx, temp' with pop ecx
; trace the stack memory
; Anwer: Push is saving the value of ecx in memory doing the same work of 'mov temp, ecx'and pop is restoring back the value of memory that was stored back to ecx
;Doing exact the same work of 'mov, ecx, temp'
; Stack memory: EAX = 1Ch = 28, ECX = 0
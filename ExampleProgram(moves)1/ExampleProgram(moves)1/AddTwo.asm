; mov and xchg: rearrange the values to be 3,1,2, you could
; Lab 6

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val1 WORD 1000h
val2 WORD 2000h
arrayB BYTE 10h, 20h, 30h, 40h, 50h
arrayW WORD 100h, 200h, 300h
arrayD DWORD 10000h, 20000h
	
.code
main proc
;Demonstrating MOVZX instructions==========Important thing to note is that, movzx source must be maller to that of the estination
mov bx, 0A69Bh						;bx = A69Bh
movzx eax, bx						;0000A69Bh
movzx edx, bl						;0000009Bh
movzx cx, bl						;009Bh
;===================================================I mastered this concept=================================
;
;Demonstrating MOVSX instructions=========Important thing is that, movsx source must be smaller to that of it destination
mov bx, 0A69Bh						;bx = A69Bh
movsx eax, bx						;eax = FFFFA69Bh  
movsx edx, bl						;edx = FFFFFF9Bh
mov bl, 7Bh							;bl = 7B
movsx cx, bl						;cx = 007B ; interestingly this time it is positive, but WHY?
									; since immediate is condiser a signed integer, movsx instruction converted it to positive?
;
;memory-to-memory exchange; smart way of exchaninging the values between the memory.
; create 3 repos and logically move and exchange uaing mov, xchg, and mov instructions
mov ax, val1						; AX = 1000h
xchg ax, val2						; AX = 2000h
mov val1, ax						; val1 = 2000h

	
	invoke ExitProcess,0
main endp
end main
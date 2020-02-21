; AddTwo.asm - adds two 32-bit integers.
; Lab 5, Exercise 1
; EAX = Xval + (Yval - Zval): Xval = signed 26d, Yval = 30d, Zval = 40d

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
Xval SDWORD 26d								; 32-bit signed 26d
Yval DWORD 30d								; 32-bit unsigned 30d
Zval DWORD 40d								; 32-bit unsigned 40d
result DWORD ?


.code
main PROC
mov eax, Yval								; move 30 to the register eax(32-bit)
;0X1E

sub eax, Zval								; subtract the contents of register Zval from Yval; 30-40 = -10
; FF FF FF F6  => FF because of signed Zval
; (Yval - Zval )
; 1Eh - 28h ==> F6
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; 1) Subtract 28 from FF
;							FF
;						-	28
;						----------
;							D7
; 2) Add 1
;							D7
;						+	01
;						----------
;							D8
; 3) add the two operants
;							1E
;						+	D8
;						-----------
;							F6 -----> -10d
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
add eax, Xval                               ; 00 00 00 10h (-10d + 26d = 16d)
add eax, 10h                                ; 00 00 00 20h (16d + 16d = 32d) 
mov result, eax

	invoke ExitProcess,0
main endp
end main
;Learn exchanging
;================================REMEMBER===============================
;===============XCHG register, register=================================
;===============XCHG register, memory===================================
;===============XCHG memory, register===================================


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val DWORD 9
val2 DWORD 8

.code
main PROC
;xchg val, val2 --> No memory to memory exchange
xchg eax, val2
xchg val2, eax

	invoke ExitProcess,0
main endp
end main
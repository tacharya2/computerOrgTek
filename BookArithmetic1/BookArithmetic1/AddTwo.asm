; mov and xchg: rearrange the values to be 3,1,2, you could
; Lab 6

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
Rval SDWORD ?
Xval SDWORD 26
Yval SDWORD 30
Zval SDWORD 40
.code
main proc
mov eax, Yval
sub eax, Zval
sub eax, Xval
mov Rval, eax
	
	invoke ExitProcess,0
main endp
end main
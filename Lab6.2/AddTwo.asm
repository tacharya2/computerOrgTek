;summation of the list values.
;Lab6, Exercise 2

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 1, 2, 3

.code
main proc
mov eax, array				; eax = 1
xchg eax, [array+4]			; 1, 1, 3. eax = 2
xchg eax, [array+8]			; 1, 1, 2. eax = 3
xchg eax, [array+4]			; 3, 1, 2. eax = 1
;xchg array, eax				; 3, 1, 2. eax = 1


invoke ExitProcess,0
main endp
end main
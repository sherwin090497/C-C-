.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; Define Your Variables Here
.code

main PROC
	; Write Assembly Code Here

	INVOKE ExitProcess, 0
main ENDP
END main
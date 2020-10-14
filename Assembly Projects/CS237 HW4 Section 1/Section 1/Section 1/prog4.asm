INCLUDE fibonacci.inc

.data

       input BYTE "Enter an integer: ", 0
       output BYTE "The Fibonacci sequence is: ",0
       comma BYTE ", ", 0
       digitOne DWORD ?

.code

main PROC
    call Clrscr

    INVOKE Fibonacci,
        ADDR input,
        ADDR output,
        ADDR comma,
        digitOne

    call Crlf
    exit
main ENDP

END main
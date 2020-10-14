INCLUDE Irvine32.inc

strlen = 20
.data
   arr BYTE strLen DUP(?)

.code
Random PROC USES ecx
    mov ecx, lengthOf arr
    L2:
    mov eax, 26
    call RandomRange
    add eax, 65
    mov [esi], eax 
    inc esi
    mov edx, OFFSET
    call WriteString
    loop L2
    call Crlf
    ret

Random ENDP

main PROC
    call Clrscr
    mov esi, offset arr
    mov ecx, 10
    L1:
    call Random
    Loop L1
    call WaitMsg
    exit

main ENDP

END main
INCLUDE Irvine32.inc

.data

       input BYTE "Enter an integer: ", 0
       output BYTE "The Fibonacci sequence is: ",0
       comma BYTE ", ", 0

.code

main PROC
    call Clrscr
    mov ecx, 0
    mov edx, OFFSET input 
    call WriteString
    call ReadInt
    mov ecx, eax
    mov edx, eax
    push ecx
    push edx

    call Fibonacci
    add esp, 4
    mov eax, 0
    mov ebx, 1
    mov edx, OFFSET output
    call WriteString
    pop edx
    pop ecx
    mov ecx, 0
    mov ecx, edx
    inc ecx
       
    L1:
    jecxz quit
    add ebx, eax
    call WriteDec
    mov edx, OFFSET comma
    call WriteString
    xchg eax, ebx
    loop L1
    call Crlf
    quit:

    exit
main ENDP

Fibonacci PROC

    push ebp
    mov ebp, esp
    add ecx, 1
    sub esp, 4
    mov eax, [ebp + 8]
    cmp eax, 2
    je next
    cmp eax,1
    je next
    dec eax
    push eax
    call Fibonacci
    mov[ebp - 4], eax
    dec dword ptr[esp]
    call Fibonacci
    add esp, 4
    add eax, [ebp - 4]
    jmp Quit
    next:
    mov eax, 1
    
    Quit:
    mov esp, ebp
    pop ebp
    ret

Fibonacci ENDP
END main
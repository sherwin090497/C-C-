INCLUDE fibonacci.inc

.code

Fibonacci PROC

    ptrInput:PTR BYTE,
    ptrOutput:PTR BYTE,
    ptrComma:PTR BYTE,
    multDigitOne:DWORD 

    mov ecx, 0
    mov edx, ptrInput 
    call WriteString
    call ReadInt
    mov multDigitOne, eax
    mov ecx, multDigitOne
    mov edx, eax
    push ecx
    push edx

    call fibMethod
    add esp, 4
    mov eax, 0
    mov ebx, 1
    mov edx, ptrOutput
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
    mov edx, ptrComma
    call WriteString
    xchg eax, ebx
    loop L1
    call Crlf
    quit:

    exit
Fibonacci ENDP

fibMethod PROC

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
    call fibMethod
    mov[ebp - 4], eax
    dec dword ptr[esp]
    call fibMethod
    add esp, 4
    add eax, [ebp - 4]
    jmp Quit

    next:
    mov eax, 1
    
    Quit:
    mov esp, ebp
    pop ebp
    ret

fibMethod ENDP
END main
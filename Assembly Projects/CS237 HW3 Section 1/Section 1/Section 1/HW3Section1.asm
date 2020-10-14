INCLUDE Irvine32.inc

.data

    rangeMIN byte 5,2,4,1,3
    rangeMAX byte 9,5,8,4,6
    
    PIN1 byte 5,4,8,2,6
    PIN2 byte 1,2,7,1,9
    PIN3 byte 3,3,2,7,4
    PIN4 byte 9,5,5,3,3

    PIN_ONE byte "Pin 1: 5-4-8-2-6 ", 0
    PIN_TWO byte "Pin 2: 1-2-7-1-9 ", 0
    PIN_THREE byte "Pin 3: 3-3-2-7-4 ", 0
    PIN_FOUR byte "Pin 4: 9-5-5-3-3 ", 0

    Valid byte "Valid Pin", 0
    Invalid byte "Invalid Pin", 0

.code
main PROC
 
    mov esi, OFFSET rangeMIN
    mov edi, OFFSET rangeMAX

    mov ebx, OFFSET PIN1
    mov edx, OFFSET PIN_ONE
    call WriteString
    call Validate_PIN
    cmp eax, 0
    ja L1
    cmp eax, 0
    jb L1
    mov edx, OFFSET Valid
    call WriteString
    call Crlf
    ja next1
    L1:
        mov edx, OFFSET Invalid
        call WriteString
        call Crlf
    next1:

    mov edx, OFFSET PIN_TWO
    call WriteString
    mov ebx, OFFSET PIN2
    call Validate_PIN
    cmp eax, 0
    ja L2
    cmp eax, 0
    jb L2
    mov edx, OFFSET Valid
    call WriteString
    call Crlf
    ja next2
    L2:
        mov edx, OFFSET Invalid
        call WriteString
        call Crlf
    next2:

    mov edx, OFFSET PIN_THREE
    call WriteString
    mov ebx, OFFSET PIN3
    call Validate_PIN
    cmp eax, 0
    ja L3
    cmp eax, 0
    jb L3
    mov edx, OFFSET Valid
    call WriteString
    call Crlf
    ja next3
    L3:
        mov edx, OFFSET Invalid
        call WriteString
        call Crlf
    next3:

    mov edx, OFFSET PIN_FOUR
    call WriteString
    mov ebx, OFFSET PIN4
    call Validate_PIN
    cmp eax, 0
    ja L4
    cmp eax, 0
    jb L4
    mov edx, OFFSET Valid
    call WriteString
    call Crlf
    ja next4
    L4:
        mov edx, OFFSET Invalid
        call WriteString
        call Crlf
    next4:

main ENDP

    Validate_PIN PROC
        mov ecx, 5
        mov eax, 0 
    L1:
        mov al, [ebx]
        cmp al, [esi]
        jb L3
        cmp al, [edi]
    L2:
        mov eax, 0
    L3:
        ret

Validate_PIN ENDP
END main
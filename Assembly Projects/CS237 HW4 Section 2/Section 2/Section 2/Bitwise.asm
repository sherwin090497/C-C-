INCLUDE Irvine32.inc

.data

    multiplicand BYTE "Enter the multiplicand:  ", 0
    multiplier BYTE "Enter the multiplier: ", 0
    product BYTE "The product is: ", 0
    digitOne DWORD ?
    digitTwo DWORD ?
    
.code
main PROC
    
   mov edx, OFFSET multiplicand
   call WriteString
   call ReadInt
   mov digitOne, eax

   mov edx, OFFSET multiplier
   call WriteString
   call ReadInt
   mov digitTwo, eax
   mov eax, 0

   mov ebx, digitOne
   mov eax, digitTwo
   call BitwiseMultiply

   mov edx, OFFSET product
   call WriteString
   call WriteDec
   call Crlf
   exit

main ENDP

BitwiseMultiply PROC
    mov edx, 0
    mov cl, 0 

   L1:
       shr eax, 1   
       jc L2 
       inc cl       
       jmp L3     

   L2:
       shl ebx, cl 
       add edx, ebx 
       shl ebx, 1
       mov cl, 0 

   L3:
       cmp eax, 0 
       je next
       jmp L1 

   next:
   mov eax, edx
   ret

BitwiseMultiply ENDP
END main
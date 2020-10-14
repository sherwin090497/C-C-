INCLUDE Irvine32.inc
MAX = 200
KEY = 200
.data 
	myMessage BYTE "Enter the plain text: ",0 
	myKey BYTE "Enter the encryption key: ", 0
	myEncrypt BYTE "Cipher text: ",0 
	myDecrypt BYTE "Decrypted: ",0 
	myInputWord BYTE MAX DUP(0) 
	Keyword BYTE 25 DUP (?)
	B_Size DWORD ?
	PassKey DWORD ?

.code 
Main PROC 
	call Input 
	call Translator 
	mov edx, OFFSET myEncrypt 
	call Output 
	call Translator 
	mov edx, OFFSET myDecrypt
	call Output 
	exit
Main ENDP 

Input  PROC 
	pushad  
	mov edx, OFFSET myMessage  
	call WriteString 
	mov ecx, MAX 
	mov edx, OFFSET myInputWord  
	call ReadString    
	mov B_Size, eax  
	call Crlf
	mov edx, OFFSET myKey 
	call WriteString
	mov ecx, MAX 
	mov edx, OFFSET Keyword 
	call ReadString 
	mov PassKey, eax 
	call Crlf
	popad 
	ret 
Input  ENDP 

Translator PROC 
	pushad 
	mov ecx, B_Size 
	mov esi, 0 
	mov edi, 0 

	L1:
	xor myInputWord[esi], al 
	inc esi  
	inc edi 
	cmp edi, 6	
	jne cont	
	mov edi, 0	

	cont:
	loop L1 

	popad
	ret 
Translator ENDP 

Output PROC 
	pushad 
	call WriteString 
	mov edx, OFFSET myInputWord 
	call WriteString 
	call Crlf 
	call Crlf
	popad 
	ret 
Output ENDP

END main
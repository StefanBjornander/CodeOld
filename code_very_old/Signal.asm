	global signal
	global raise

	extern printf
	extern $StackTop


section .text

 signal:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 signal$1:
	; FunctionEnd signal

section .data

string_Raise20default0A#:
	; Initializer String Raise default\n
	db "Raise default", 10, 0

section .data

string_Raise20error0A#:
	; Initializer String Raise error\n
	db "Raise error", 10, 0

section .data

string_Raise20function2C20calling2025i20with2025i0A#:
	; Initializer String Raise function, calling %i with %i\n
	db "Raise function, calling %i with %i", 10, 0

section .text

 raise:
	; Assign func 0
	mov qword [rbp + 28], 0

 raise$1:
	; NotEqual 7 func 0
	cmp qword [rbp + 28], 0
	jne raise$7

 raise$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$3:
	; Parameter 60 pointer "Raise default\n"
	mov qword [rbp + 60], string_Raise20default0A#

 raise$4:
	; Call 36 printf 0
	mov qword [rbp + 36], raise$5
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 raise$5:
	; PostCall 36

 raise$6:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$7:
	; NotEqual 13 func 0
	cmp qword [rbp + 28], 0
	jne raise$13

 raise$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$9:
	; Parameter 60 pointer "Raise error\n"
	mov qword [rbp + 60], string_Raise20error0A#

 raise$10:
	; Call 36 printf 0
	mov qword [rbp + 36], raise$11
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 raise$11:
	; PostCall 36

 raise$12:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$13:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$14:
	; Parameter 60 pointer "Raise function, calling %i with %i\n"
	mov qword [rbp + 60], string_Raise20function2C20calling2025i20with2025i0A#

 raise$15:
	; Parameter 68 pointer func
	mov rax, [rbp + 28]
	mov [rbp + 68], rax

 raise$16:
	; Parameter 76 signedint sig
	mov eax, [rbp + 24]
	mov [rbp + 76], eax

 raise$17:
	; Call 36 printf 12
	mov qword [rbp + 36], raise$18
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 raise$18:
	; PostCall 36

 raise$19:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$20:
	; Parameter 60 signedint sig
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 raise$21:
	; Call 36 func 0
	mov qword [rbp + 36], raise$22
	mov [rbp + 44], rbp
	mov rax, [rbp + 28]
	add rbp, 36
	jmp rax

 raise$22:
	; PostCall 36

 raise$23:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$24:
	; FunctionEnd raise

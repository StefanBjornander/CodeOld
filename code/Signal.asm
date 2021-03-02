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

@2204string_Raise20default0A#:
	; Initializer String Raise default\n
	db "Raise default", 10, 0

section .data

@2208string_Raise20error0A#:
	; Initializer String Raise error\n
	db "Raise error", 10, 0

section .data

@2210string_Raise20function2C20calling2025i20with2025i0A#:
	; Initializer String Raise function, calling %i with %i\n
	db "Raise function, calling %i with %i", 10, 0

section .text

 raise:
	; Assign func integral8$0#
	mov qword [rbp + 28], 0

 raise$1:
	; NotEqual 8 func integral8$0#
	cmp qword [rbp + 28], 0
	jne raise$8

 raise$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$3:
	; Parameter 60 pointer string_Raise20default0A#
	mov qword [rbp + 60], @2204string_Raise20default0A#

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
	; SetReturnValue

 raise$7:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$8:
	; NotEqual 15 func integral8$0#
	cmp qword [rbp + 28], 0
	jne raise$15

 raise$9:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$10:
	; Parameter 60 pointer string_Raise20error0A#
	mov qword [rbp + 60], @2208string_Raise20error0A#

 raise$11:
	; Call 36 printf 0
	mov qword [rbp + 36], raise$12
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 raise$12:
	; PostCall 36

 raise$13:
	; SetReturnValue

 raise$14:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$15:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$16:
	; Parameter 60 pointer string_Raise20function2C20calling2025i20with2025i0A#
	mov qword [rbp + 60], @2210string_Raise20function2C20calling2025i20with2025i0A#

 raise$17:
	; Parameter 68 pointer func
	mov rax, [rbp + 28]
	mov [rbp + 68], rax

 raise$18:
	; Parameter 76 signed int sig
	mov eax, [rbp + 24]
	mov [rbp + 76], eax

 raise$19:
	; Call 36 printf 12
	mov qword [rbp + 36], raise$20
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 raise$20:
	; PostCall 36

 raise$21:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 raise$22:
	; Parameter 60 signed int sig
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 raise$23:
	; Call 36 func 0
	mov qword [rbp + 36], raise$24
	mov [rbp + 44], rbp
	mov rax, [rbp + 28]
	add rbp, 36
	jmp rax

 raise$24:
	; PostCall 36

 raise$25:
	; SetReturnValue

 raise$26:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$27:
	; FunctionEnd raise

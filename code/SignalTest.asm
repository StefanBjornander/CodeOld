	global floating_point_error
	global exit_handle1
	global exit_handle2
	global exit_handle3
	global signal_test

	extern printf
	extern atexit
	extern exit
	extern $StackTop


section .data

@11477string_Floating20point20error3A2025i0A#:
	; Initializer String Floating point error: %i\n
	db "Floating point error: %i", 10, 0

section .text

 floating_point_error:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 floating_point_error$1:
	; Parameter 52 pointer string_Floating20point20error3A2025i0A#
	mov qword [rbp + 52], @11477string_Floating20point20error3A2025i0A#

 floating_point_error$2:
	; Parameter 60 signed int sig
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 floating_point_error$3:
	; Call 28 printf 4
	mov qword [rbp + 28], floating_point_error$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 4
	jmp printf

 floating_point_error$4:
	; PostCall 28

 floating_point_error$5:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floating_point_error$6:
	; FunctionEnd floating_point_error

section .data

@11481string_exit10A#:
	; Initializer String exit1\n
	db "exit1", 10, 0

section .text

 exit_handle1:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle1$1:
	; Parameter 48 pointer string_exit10A#
	mov qword [rbp + 48], @11481string_exit10A#

 exit_handle1$2:
	; Call 24 printf 0
	mov qword [rbp + 24], exit_handle1$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle1$3:
	; PostCall 24

 exit_handle1$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle1$5:
	; FunctionEnd exit_handle1

section .data

@11484string_exit20A#:
	; Initializer String exit2\n
	db "exit2", 10, 0

section .text

 exit_handle2:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle2$1:
	; Parameter 48 pointer string_exit20A#
	mov qword [rbp + 48], @11484string_exit20A#

 exit_handle2$2:
	; Call 24 printf 0
	mov qword [rbp + 24], exit_handle2$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle2$3:
	; PostCall 24

 exit_handle2$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle2$5:
	; FunctionEnd exit_handle2

section .data

@11487string_exit30A#:
	; Initializer String exit3\n
	db "exit3", 10, 0

section .text

 exit_handle3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle3$1:
	; Parameter 48 pointer string_exit30A#
	mov qword [rbp + 48], @11487string_exit30A#

 exit_handle3$2:
	; Call 24 printf 0
	mov qword [rbp + 24], exit_handle3$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle3$3:
	; PostCall 24

 exit_handle3$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle3$5:
	; FunctionEnd exit_handle3

section .data

@11495string_25i0A#:
	; Initializer String %i\n
	db "%i", 10, 0

section .text

 signal_test:
	; Assign a integral4$1#
	mov dword [rbp + 24], 1

 signal_test$1:
	; Assign b integral4$1#
	mov dword [rbp + 28], 1

 signal_test$2:
	; Divide c a b
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 signal_test$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 signal_test$4:
	; Parameter 60 pointer string_25i0A#
	mov qword [rbp + 60], @11495string_25i0A#

 signal_test$5:
	; Parameter 68 signed int c
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 signal_test$6:
	; Call 36 printf 4
	mov qword [rbp + 36], signal_test$7
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 4
	jmp printf

 signal_test$7:
	; PostCall 36

 signal_test$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 signal_test$9:
	; Parameter 60 pointer exit_handle1
	mov qword [rbp + 60], exit_handle1

 signal_test$10:
	; Call 36 atexit 0
	mov qword [rbp + 36], signal_test$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp atexit

 signal_test$11:
	; PostCall 36

 signal_test$12:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 signal_test$13:
	; Parameter 60 pointer exit_handle2
	mov qword [rbp + 60], exit_handle2

 signal_test$14:
	; Call 36 atexit 0
	mov qword [rbp + 36], signal_test$15
	mov [rbp + 44], rbp
	add rbp, 36
	jmp atexit

 signal_test$15:
	; PostCall 36

 signal_test$16:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 signal_test$17:
	; Parameter 60 pointer exit_handle3
	mov qword [rbp + 60], exit_handle3

 signal_test$18:
	; Call 36 atexit 0
	mov qword [rbp + 36], signal_test$19
	mov [rbp + 44], rbp
	add rbp, 36
	jmp atexit

 signal_test$19:
	; PostCall 36

 signal_test$20:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 signal_test$21:
	; Parameter 60 signed int integral4$0#
	mov dword [rbp + 60], 0

 signal_test$22:
	; Call 36 exit 0
	mov qword [rbp + 36], signal_test$23
	mov [rbp + 44], rbp
	add rbp, 36
	jmp exit

 signal_test$23:
	; PostCall 36

 signal_test$24:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 signal_test$25:
	; FunctionEnd signal_test

	global floating_point_error
	global exit_handle1
	global exit_handle2
	global exit_handle3
	global signal_test

	extern printf
	extern atexit
	extern exit
section .text

floating_point_error:	; call header integral zero 0 stack zero 0

floating_point_error$1:	; parameter string_Floating20point20error3A2025i0A#, offset 52
	mov qword [rbp + 52], string_Floating20point20error3A2025i0A#

floating_point_error$2:	; parameter sig, offset 60
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

floating_point_error$3:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 28], floating_point_error$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 4
	jmp printf

floating_point_error$4:	; post call

floating_point_error$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

floating_point_error$6:	; function end floating_point_error

exit_handle1:	; call header integral zero 0 stack zero 0

exit_handle1$1:	; parameter string_exit10A#, offset 48
	mov qword [rbp + 48], string_exit10A#

exit_handle1$2:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], exit_handle1$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

exit_handle1$3:	; post call

exit_handle1$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit_handle1$5:	; function end exit_handle1

exit_handle2:	; call header integral zero 0 stack zero 0

exit_handle2$1:	; parameter string_exit20A#, offset 48
	mov qword [rbp + 48], string_exit20A#

exit_handle2$2:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], exit_handle2$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

exit_handle2$3:	; post call

exit_handle2$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit_handle2$5:	; function end exit_handle2

exit_handle3:	; call header integral zero 0 stack zero 0

exit_handle3$1:	; parameter string_exit30A#, offset 48
	mov qword [rbp + 48], string_exit30A#

exit_handle3$2:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], exit_handle3$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

exit_handle3$3:	; post call

exit_handle3$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit_handle3$5:	; function end exit_handle3

signal_test:	; a = int4$1#
	mov dword [rbp + 24], 1

signal_test$1:	; b = int4$1#
	mov dword [rbp + 28], 1

signal_test$2:	; c = a / b
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

signal_test$3:	; call header integral zero 0 stack zero 0

signal_test$4:	; parameter string_25i0A#, offset 60
	mov qword [rbp + 60], string_25i0A#

signal_test$5:	; parameter c, offset 68
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

signal_test$6:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 36], signal_test$7
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 4
	jmp printf

signal_test$7:	; post call

signal_test$8:	; call header integral zero 0 stack zero 0

signal_test$9:	; parameter exit_handle1, offset 60
	mov qword [rbp + 60], exit_handle1

signal_test$10:	; call function noellipse-noellipse atexit
	mov qword [rbp + 36], signal_test$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp atexit

signal_test$11:	; post call

signal_test$12:	; call header integral zero 0 stack zero 0

signal_test$13:	; parameter exit_handle2, offset 60
	mov qword [rbp + 60], exit_handle2

signal_test$14:	; call function noellipse-noellipse atexit
	mov qword [rbp + 36], signal_test$15
	mov [rbp + 44], rbp
	add rbp, 36
	jmp atexit

signal_test$15:	; post call

signal_test$16:	; call header integral zero 0 stack zero 0

signal_test$17:	; parameter exit_handle3, offset 60
	mov qword [rbp + 60], exit_handle3

signal_test$18:	; call function noellipse-noellipse atexit
	mov qword [rbp + 36], signal_test$19
	mov [rbp + 44], rbp
	add rbp, 36
	jmp atexit

signal_test$19:	; post call

signal_test$20:	; call header integral zero 0 stack zero 0

signal_test$21:	; parameter int4$0#, offset 60
	mov dword [rbp + 60], 0

signal_test$22:	; call function noellipse-noellipse exit
	mov qword [rbp + 36], signal_test$23
	mov [rbp + 44], rbp
	add rbp, 36
	jmp exit

signal_test$23:	; post call

signal_test$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

signal_test$25:	; function end signal_test
section .data

$IntegralStorage#:
	times 8 db 0

string_Floating20point20error3A2025i0A#:
	; initializer String
	db "Floating point error: %i", 10, 0

string_exit10A#:
	; initializer String
	db "exit1", 10, 0

string_exit20A#:
	; initializer String
	db "exit2", 10, 0

string_exit30A#:
	; initializer String
	db "exit3", 10, 0

string_25i0A#:
	; initializer String
	db "%i", 10, 0

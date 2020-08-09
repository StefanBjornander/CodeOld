	global malloc_test2
	global malloc_test3
	global rec
	global malloc_test4
	global malloc_test
	global malloc_test6

	extern malloc
	extern print_heap
	extern realloc
	extern calloc
	extern free
	extern printf
section .text

malloc_test2:	; empty

malloc_test2$1:	; p = int8$0#
	mov qword [rbp + 28], 0

malloc_test2$2:	; r = int8$0#
	mov qword [rbp + 36], 0

malloc_test2$3:	; call header integral zero 0 stack zero 0

malloc_test2$4:	; parameter int4$96#, offset 68
	mov dword [rbp + 68], 96

malloc_test2$5:	; call function noellipse-noellipse malloc
	mov qword [rbp + 44], malloc_test2$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

malloc_test2$6:	; post call

malloc_test2$7:	; £temporary3854 = return_value

malloc_test2$8:	; q = £temporary3854
	mov [rbp + 44], rbx

malloc_test2$9:	; index = int4$0#
	mov dword [rbp + 24], 0

malloc_test2$10:	; if index >= int4$10# goto 21
	cmp dword [rbp + 24], 10
	jge malloc_test2$21

malloc_test2$11:	; call header integral zero 0 stack zero 0

malloc_test2$12:	; parameter int4$96#, offset 76
	mov dword [rbp + 76], 96

malloc_test2$13:	; call function noellipse-noellipse malloc
	mov qword [rbp + 52], malloc_test2$14
	mov [rbp + 60], rbp
	add rbp, 52
	jmp malloc

malloc_test2$14:	; post call

malloc_test2$15:	; £temporary3857 = return_value

malloc_test2$16:	; p = £temporary3857
	mov [rbp + 28], rbx

malloc_test2$17:	; if index != int4$5# goto 19
	cmp dword [rbp + 24], 5
	jne malloc_test2$19

malloc_test2$18:	; r = p
	mov rax, [rbp + 28]
	mov [rbp + 36], rax

malloc_test2$19:	; index = index + int4$1#
	inc dword [rbp + 24]

malloc_test2$20:	; goto 10
	jmp malloc_test2$10

malloc_test2$21:	; call header integral zero 0 stack zero 0

malloc_test2$22:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$23
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$23:	; post call

malloc_test2$24:	; call header integral zero 0 stack zero 0

malloc_test2$25:	; parameter q, offset 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

malloc_test2$26:	; parameter int4$50#, offset 84
	mov dword [rbp + 84], 50

malloc_test2$27:	; call function noellipse-noellipse realloc
	mov qword [rbp + 52], malloc_test2$28
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

malloc_test2$28:	; post call

malloc_test2$29:	; call header integral zero 0 stack zero 0

malloc_test2$30:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$31
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$31:	; post call

malloc_test2$32:	; call header integral zero 0 stack zero 0

malloc_test2$33:	; parameter r, offset 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

malloc_test2$34:	; parameter int4$50#, offset 84
	mov dword [rbp + 84], 50

malloc_test2$35:	; call function noellipse-noellipse realloc
	mov qword [rbp + 52], malloc_test2$36
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

malloc_test2$36:	; post call

malloc_test2$37:	; call header integral zero 0 stack zero 0

malloc_test2$38:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$39
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$39:	; post call

malloc_test2$40:	; call header integral zero 0 stack zero 0

malloc_test2$41:	; parameter p, offset 76
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

malloc_test2$42:	; parameter int4$50#, offset 84
	mov dword [rbp + 84], 50

malloc_test2$43:	; call function noellipse-noellipse realloc
	mov qword [rbp + 52], malloc_test2$44
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

malloc_test2$44:	; post call

malloc_test2$45:	; call header integral zero 0 stack zero 0

malloc_test2$46:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$47
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$47:	; post call

malloc_test2$48:	; call header integral zero 0 stack zero 0

malloc_test2$49:	; parameter q, offset 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

malloc_test2$50:	; parameter int4$200#, offset 84
	mov dword [rbp + 84], 200

malloc_test2$51:	; call function noellipse-noellipse realloc
	mov qword [rbp + 52], malloc_test2$52
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

malloc_test2$52:	; post call

malloc_test2$53:	; call header integral zero 0 stack zero 0

malloc_test2$54:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$55:	; post call

malloc_test2$56:	; call header integral zero 0 stack zero 0

malloc_test2$57:	; parameter r, offset 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

malloc_test2$58:	; parameter int4$200#, offset 84
	mov dword [rbp + 84], 200

malloc_test2$59:	; call function noellipse-noellipse realloc
	mov qword [rbp + 52], malloc_test2$60
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

malloc_test2$60:	; post call

malloc_test2$61:	; call header integral zero 0 stack zero 0

malloc_test2$62:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$63:	; post call

malloc_test2$64:	; call header integral zero 0 stack zero 0

malloc_test2$65:	; parameter p, offset 76
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

malloc_test2$66:	; parameter int4$200#, offset 84
	mov dword [rbp + 84], 200

malloc_test2$67:	; call function noellipse-noellipse realloc
	mov qword [rbp + 52], malloc_test2$68
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

malloc_test2$68:	; post call

malloc_test2$69:	; call header integral zero 0 stack zero 0

malloc_test2$70:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 52], malloc_test2$71
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

malloc_test2$71:	; post call

malloc_test2$72:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc_test2$73:	; function end malloc_test2

malloc_test3:	; call header integral zero 0 stack zero 0

malloc_test3$1:	; parameter int4$96#, offset 48
	mov dword [rbp + 48], 96

malloc_test3$2:	; parameter int4$1#, offset 52
	mov dword [rbp + 52], 1

malloc_test3$3:	; call function noellipse-noellipse calloc
	mov qword [rbp + 24], malloc_test3$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp calloc

malloc_test3$4:	; post call

malloc_test3$5:	; £temporary3872 = return_value

malloc_test3$6:	; a = £temporary3872
	mov [rbp + 24], rbx

malloc_test3$7:	; call header integral zero 0 stack zero 0

malloc_test3$8:	; parameter int4$96#, offset 56
	mov dword [rbp + 56], 96

malloc_test3$9:	; parameter int4$1#, offset 60
	mov dword [rbp + 60], 1

malloc_test3$10:	; call function noellipse-noellipse calloc
	mov qword [rbp + 32], malloc_test3$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp calloc

malloc_test3$11:	; post call

malloc_test3$12:	; £temporary3873 = return_value

malloc_test3$13:	; b = £temporary3873
	mov [rbp + 32], rbx

malloc_test3$14:	; call header integral zero 0 stack zero 0

malloc_test3$15:	; parameter int4$96#, offset 64
	mov dword [rbp + 64], 96

malloc_test3$16:	; parameter int4$1#, offset 68
	mov dword [rbp + 68], 1

malloc_test3$17:	; call function noellipse-noellipse calloc
	mov qword [rbp + 40], malloc_test3$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp calloc

malloc_test3$18:	; post call

malloc_test3$19:	; £temporary3874 = return_value

malloc_test3$20:	; c = £temporary3874
	mov [rbp + 40], rbx

malloc_test3$21:	; call header integral zero 0 stack zero 0

malloc_test3$22:	; parameter int4$96#, offset 72
	mov dword [rbp + 72], 96

malloc_test3$23:	; parameter int4$1#, offset 76
	mov dword [rbp + 76], 1

malloc_test3$24:	; call function noellipse-noellipse calloc
	mov qword [rbp + 48], malloc_test3$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp calloc

malloc_test3$25:	; post call

malloc_test3$26:	; £temporary3875 = return_value

malloc_test3$27:	; d = £temporary3875
	mov [rbp + 48], rbx

malloc_test3$28:	; call header integral zero 0 stack zero 0

malloc_test3$29:	; parameter int4$96#, offset 80
	mov dword [rbp + 80], 96

malloc_test3$30:	; parameter int4$1#, offset 84
	mov dword [rbp + 84], 1

malloc_test3$31:	; call function noellipse-noellipse calloc
	mov qword [rbp + 56], malloc_test3$32
	mov [rbp + 64], rbp
	add rbp, 56
	jmp calloc

malloc_test3$32:	; post call

malloc_test3$33:	; £temporary3876 = return_value

malloc_test3$34:	; e = £temporary3876
	mov [rbp + 56], rbx

malloc_test3$35:	; call header integral zero 0 stack zero 0

malloc_test3$36:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 64], malloc_test3$37
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

malloc_test3$37:	; post call

malloc_test3$38:	; call header integral zero 0 stack zero 0

malloc_test3$39:	; parameter a, offset 88
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

malloc_test3$40:	; call function noellipse-noellipse free
	mov qword [rbp + 64], malloc_test3$41
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

malloc_test3$41:	; post call

malloc_test3$42:	; call header integral zero 0 stack zero 0

malloc_test3$43:	; parameter b, offset 88
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

malloc_test3$44:	; call function noellipse-noellipse free
	mov qword [rbp + 64], malloc_test3$45
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

malloc_test3$45:	; post call

malloc_test3$46:	; call header integral zero 0 stack zero 0

malloc_test3$47:	; parameter c, offset 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

malloc_test3$48:	; call function noellipse-noellipse free
	mov qword [rbp + 64], malloc_test3$49
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

malloc_test3$49:	; post call

malloc_test3$50:	; call header integral zero 0 stack zero 0

malloc_test3$51:	; parameter d, offset 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

malloc_test3$52:	; call function noellipse-noellipse free
	mov qword [rbp + 64], malloc_test3$53
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

malloc_test3$53:	; post call

malloc_test3$54:	; call header integral zero 0 stack zero 0

malloc_test3$55:	; parameter e, offset 88
	mov rax, [rbp + 56]
	mov [rbp + 88], rax

malloc_test3$56:	; call function noellipse-noellipse free
	mov qword [rbp + 64], malloc_test3$57
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

malloc_test3$57:	; post call

malloc_test3$58:	; call header integral zero 0 stack zero 0

malloc_test3$59:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 64], malloc_test3$60
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

malloc_test3$60:	; post call

malloc_test3$61:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc_test3$62:	; function end malloc_test3

rec:	; empty

rec$1:	; £temporary3884 = bp

rec$2:	; £temporary3885 = int_to_int £temporary3884 (Unsigned_Short_Int -> Unsigned_Int)
	and ebp, 65535

rec$3:	; stackTop = £temporary3885
	mov [rbp + 24], ebp

rec$4:	; lowHeapPtr = int8$65534#
	mov qword [rbp + 28], 65534

rec$5:	; call header integral zero 0 stack zero 0

rec$6:	; parameter string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#, offset 60
	mov qword [rbp + 60], string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#

rec$7:	; parameter stackTop, offset 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

rec$8:	; £field3886 -> lowHeapPtr = *lowHeapPtr
	mov rsi, [rbp + 28]

rec$9:	; parameter £field3886 -> lowHeapPtr, offset 72
	mov eax, [rsi]
	mov [rbp + 72], eax

rec$10:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 36], rec$11
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

rec$11:	; post call

rec$12:	; call header integral zero 0 stack zero 0

rec$13:	; call function noellipse-noellipse rec
	mov qword [rbp + 36], rec$14
	mov [rbp + 44], rbp
	add rbp, 36
	jmp rec

rec$14:	; post call

rec$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

rec$16:	; function end rec

malloc_test4:	; call header integral zero 0 stack zero 0

malloc_test4$1:	; call function noellipse-noellipse rec
	mov qword [rbp + 24], malloc_test4$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp rec

malloc_test4$2:	; post call

malloc_test4$3:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc_test4$4:	; function end malloc_test4

malloc_test:	; call header integral zero 0 stack zero 0

malloc_test$1:	; parameter int4$96#, offset 48
	mov dword [rbp + 48], 96

malloc_test$2:	; call function noellipse-noellipse malloc
	mov qword [rbp + 24], malloc_test$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc

malloc_test$3:	; post call

malloc_test$4:	; £temporary3890 = return_value

malloc_test$5:	; b = £temporary3890
	mov [rbp + 24], rbx

malloc_test$6:	; call header integral zero 0 stack zero 0

malloc_test$7:	; parameter int4$96#, offset 56
	mov dword [rbp + 56], 96

malloc_test$8:	; call function noellipse-noellipse malloc
	mov qword [rbp + 32], malloc_test$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

malloc_test$9:	; post call

malloc_test$10:	; £temporary3891 = return_value

malloc_test$11:	; c = £temporary3891
	mov [rbp + 32], rbx

malloc_test$12:	; call header integral zero 0 stack zero 0

malloc_test$13:	; parameter int4$96#, offset 64
	mov dword [rbp + 64], 96

malloc_test$14:	; call function noellipse-noellipse malloc
	mov qword [rbp + 40], malloc_test$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

malloc_test$15:	; post call

malloc_test$16:	; £temporary3892 = return_value

malloc_test$17:	; d = £temporary3892
	mov [rbp + 40], rbx

malloc_test$18:	; call header integral zero 0 stack zero 0

malloc_test$19:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 48], malloc_test$20
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

malloc_test$20:	; post call

malloc_test$21:	; call header integral zero 0 stack zero 0

malloc_test$22:	; parameter c, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

malloc_test$23:	; parameter int4$40#, offset 80
	mov dword [rbp + 80], 40

malloc_test$24:	; call function noellipse-noellipse realloc
	mov qword [rbp + 48], malloc_test$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp realloc

malloc_test$25:	; post call

malloc_test$26:	; call header integral zero 0 stack zero 0

malloc_test$27:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 48], malloc_test$28
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

malloc_test$28:	; post call

malloc_test$29:	; call header integral zero 0 stack zero 0

malloc_test$30:	; parameter int4$40#, offset 72
	mov dword [rbp + 72], 40

malloc_test$31:	; call function noellipse-noellipse malloc
	mov qword [rbp + 48], malloc_test$32
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

malloc_test$32:	; post call

malloc_test$33:	; call header integral zero 0 stack zero 0

malloc_test$34:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 48], malloc_test$35
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

malloc_test$35:	; post call

malloc_test$36:	; call header integral zero 0 stack zero 0

malloc_test$37:	; parameter b, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

malloc_test$38:	; call function noellipse-noellipse free
	mov qword [rbp + 48], malloc_test$39
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

malloc_test$39:	; post call

malloc_test$40:	; call header integral zero 0 stack zero 0

malloc_test$41:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 48], malloc_test$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

malloc_test$42:	; post call

malloc_test$43:	; call header integral zero 0 stack zero 0

malloc_test$44:	; parameter d, offset 72
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

malloc_test$45:	; call function noellipse-noellipse free
	mov qword [rbp + 48], malloc_test$46
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

malloc_test$46:	; post call

malloc_test$47:	; call header integral zero 0 stack zero 0

malloc_test$48:	; call function noellipse-noellipse print_heap
	mov qword [rbp + 48], malloc_test$49
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

malloc_test$49:	; post call

malloc_test$50:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc_test$51:	; function end malloc_test

malloc_test6:	; empty

malloc_test6$1:	; £temporary3902 = bp

malloc_test6$2:	; £temporary3903 = int_to_int £temporary3902 (Unsigned_Short_Int -> Unsigned_Int)
	and ebp, 65535

malloc_test6$3:	; stackTop = £temporary3903
	mov [rbp + 28], ebp

malloc_test6$4:	; lowHeapPtr = int8$65534#
	mov qword [rbp + 32], 65534

malloc_test6$5:	; i = int4$0#
	mov dword [rbp + 24], 0

malloc_test6$6:	; if i >= int4$1000# goto 24
	cmp dword [rbp + 24], 1000
	jge malloc_test6$24

malloc_test6$7:	; call header integral zero 0 stack zero 0

malloc_test6$8:	; parameter int4$96#, offset 64
	mov dword [rbp + 64], 96

malloc_test6$9:	; call function noellipse-noellipse malloc
	mov qword [rbp + 40], malloc_test6$10
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

malloc_test6$10:	; post call

malloc_test6$11:	; £temporary3906 = return_value

malloc_test6$12:	; p = £temporary3906
	mov [rbp + 40], rbx

malloc_test6$13:	; call header integral zero 0 stack zero 0

malloc_test6$14:	; parameter string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#, offset 72
	mov qword [rbp + 72], string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#

malloc_test6$15:	; parameter i, offset 80
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

malloc_test6$16:	; parameter p, offset 84
	mov rax, [rbp + 40]
	mov [rbp + 84], rax

malloc_test6$17:	; parameter stackTop, offset 92
	mov eax, [rbp + 28]
	mov [rbp + 92], eax

malloc_test6$18:	; £field3907 -> lowHeapPtr = *lowHeapPtr
	mov rsi, [rbp + 32]

malloc_test6$19:	; parameter £field3907 -> lowHeapPtr, offset 96
	mov eax, [rsi]
	mov [rbp + 96], eax

malloc_test6$20:	; call function noellipse-ellipse printf, extra 20
	mov qword [rbp + 48], malloc_test6$21
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp printf

malloc_test6$21:	; post call

malloc_test6$22:	; i = i + int4$1#
	inc dword [rbp + 24]

malloc_test6$23:	; goto 6
	jmp malloc_test6$6

malloc_test6$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc_test6$25:	; function end malloc_test6
section .data

$IntegralStorage#:
	times 8 db 0

string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#:
	; initializer String
	db "Stack Top: %u, Low Heap: %u", 10, 0

string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#:
	; initializer String
	db "Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u", 10, 0

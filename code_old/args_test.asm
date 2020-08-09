          pop rax
          mov rcx, rax
          mov edx, ebp

loop:     cmp rcx, 0
          je exit

          pop rbx
          mov [ebp], ebx      ; argv[i}
          add ebp, 4
          dec rcx
          jmp loop

exit:     mov [ebp], 0        ; argv[argc] == NULL
          add ebp, 4

          mov [ebp], eax      ; argc
          mov {ebp + 4], edx  ; argv
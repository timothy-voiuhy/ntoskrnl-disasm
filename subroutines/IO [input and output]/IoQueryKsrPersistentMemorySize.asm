IoQueryKsrPersistentMemorySize proc near
                                        ; DATA XREF: .pdata:000000014011CE80↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, r8
                mov     rbx, rdx
                mov     rsi, rcx
                mov     rax, cr8
                xor     ebp, ebp
                test    al, al
                jz      short loc_14089D5F4
                mov     rax, cr8
                movzx   r8d, al
                lea     edx, [rbp+1]
                xor     r9d, r9d
                mov     [r11-18h], rbp
                mov     ecx, 121h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D5F4:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+25↑j
                test    rbx, rbx
                jz      loc_14089D72E
                mov     rax, [rdx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      short loc_14089D61D
                test    dword ptr [rcx+18Ch], 20000h
                jz      loc_14089D72E

loc_14089D61D:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+5B↑j
                movzx   edx, word ptr [rdx+2]
                mov     rcx, rbx
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                mov     esi, 2
                test    rcx, rcx
                jz      short loc_14089D665
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_14089D665
                mov     edx, esi
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089D665:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+85↑j
                                        ; IoQueryKsrPersistentMemorySize+9B↑j
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14089D715
                mov     edx, 310h
                lea     rdi, [rcx+28h]
                call    sub_1403CC478
                cmp     [rdi], bp
                jz      short loc_14089D6A2
                mov     edx, esi
                mov     rcx, rdi
                call    sub_1403CC478
                movzx   edx, word ptr [rdi]
                mov     rcx, [rdi+8]
                call    sub_1403CC478

loc_14089D6A2:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+DA↑j
                mov     rdx, [rbx+138h]
                mov     rcx, [rdx+28h]
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_14089D6DC
                mov     edx, esi
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rdx, [rbx+138h]

loc_14089D6DC:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+104↑j
                mov     rax, [rdx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_14089D715
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_14089D715
                mov     edx, esi
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089D715:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+C3↑j
                                        ; IoQueryKsrPersistentMemorySize+137↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rbp
                mov     r8, rbx
                mov     rdx, rsi
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D72E:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+47↑j
                                        ; IoQueryKsrPersistentMemorySize+67↑j
                mov     [r8], rbp
                call    ExIsSoftBoot
                test    al, al
                jnz     short loc_14089D741
                mov     eax, 0C00000BBh
                jmp     short loc_14089D763
; ---------------------------------------------------------------------------

loc_14089D741:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+188↑j
                xor     r9d, r9d
                mov     dword ptr [rsp+38h+var_18], ebp
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14089E0D8
                cmp     eax, 0C0000023h
                jnz     short loc_14089D763
                cmp     [rdi], rbp
                cmovnz  eax, ebp

loc_14089D763:                          ; CODE XREF: IoQueryKsrPersistentMemorySize+18F↑j
                                        ; IoQueryKsrPersistentMemorySize+1AB↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoQueryKsrPersistentMemorySize endp

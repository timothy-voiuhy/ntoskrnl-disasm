IoAcquireKsrPersistentMemory proc near  ; DATA XREF: .pdata:000000014011CE68↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     rdi, r9
                mov     rsi, r8
                mov     rbx, rdx
                mov     rbp, rcx
                mov     rax, cr8
                xor     r14d, r14d
                test    al, al
                jz      short loc_14089D38E
                mov     rax, cr8
                movzx   r8d, al
                lea     edx, [r14+1]
                xor     r9d, r9d
                mov     [r11-18h], r14
                mov     ecx, 121h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D38E:                          ; CODE XREF: IoAcquireKsrPersistentMemory+2E↑j
                test    rbx, rbx
                jz      loc_14089D4CC
                mov     rax, [rdx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      short loc_14089D3B7
                test    dword ptr [rcx+18Ch], 20000h
                jz      loc_14089D4CC

loc_14089D3B7:                          ; CODE XREF: IoAcquireKsrPersistentMemory+65↑j
                movzx   edx, word ptr [rdx+2]
                mov     rcx, rbx
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                mov     esi, 2
                test    rcx, rcx
                jz      short loc_14089D400
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], r14w
                jz      short loc_14089D400
                mov     edx, esi
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089D400:                          ; CODE XREF: IoAcquireKsrPersistentMemory+8F↑j
                                        ; IoAcquireKsrPersistentMemory+A6↑j
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14089D4B3
                mov     edx, 310h
                lea     rdi, [rcx+28h]
                call    sub_1403CC478
                cmp     [rdi], r14w
                jz      short loc_14089D43E
                mov     edx, esi
                mov     rcx, rdi
                call    sub_1403CC478
                movzx   edx, word ptr [rdi]
                mov     rcx, [rdi+8]
                call    sub_1403CC478

loc_14089D43E:                          ; CODE XREF: IoAcquireKsrPersistentMemory+E6↑j
                mov     rdx, [rbx+138h]
                mov     rcx, [rdx+28h]
                add     rcx, 38h ; '8'
                cmp     [rcx], r14w
                jz      short loc_14089D479
                mov     edx, esi
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rdx, [rbx+138h]

loc_14089D479:                          ; CODE XREF: IoAcquireKsrPersistentMemory+111↑j
                mov     rax, [rdx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_14089D4B3
                add     rcx, 38h ; '8'
                cmp     [rcx], r14w
                jz      short loc_14089D4B3
                mov     edx, esi
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089D4B3:                          ; CODE XREF: IoAcquireKsrPersistentMemory+CE↑j
                                        ; IoAcquireKsrPersistentMemory+144↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r14
                mov     r8, rbx
                mov     rdx, rsi
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D4CC:                          ; CODE XREF: IoAcquireKsrPersistentMemory+51↑j
                                        ; IoAcquireKsrPersistentMemory+71↑j
                call    ExIsSoftBoot
                test    al, al
                jnz     short loc_14089D4DC
                mov     eax, 0C00000BBh
                jmp     short loc_14089D4F5
; ---------------------------------------------------------------------------

loc_14089D4DC:                          ; CODE XREF: IoAcquireKsrPersistentMemory+193↑j
                mov     r9, rsi
                mov     dword ptr [rsp+38h+var_18], 1
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_14089E0D8

loc_14089D4F5:                          ; CODE XREF: IoAcquireKsrPersistentMemory+19A↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAcquireKsrPersistentMemory endp

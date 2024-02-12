PsResumeProcess proc near               ; CODE XREF: sub_14090DE10+4E↓p
                                        ; DATA XREF: .rdata:00000001400810CC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140826778 SIZE 00000023 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbp, gs:188h
                mov     rsi, rcx
                dec     word ptr [rbp+1E4h]
                lea     r14, [rcx+458h]
                mov     rcx, r14
                call    sub_14024C840
                cmp     al, 1
                jnz     loc_140826778
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1406A2900
                xor     ebx, ebx

loc_1406FA35F:                          ; CODE XREF: PsResumeProcess+73↓j
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1406FA385
                test    dword ptr [rax+74h], 200000h
                jnz     short loc_1406FA378
                mov     rcx, rax
                call    sub_140343A44

loc_1406FA378:                          ; CODE XREF: PsResumeProcess+5E↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406A2900
                jmp     short loc_1406FA35F
; ---------------------------------------------------------------------------

loc_1406FA385:                          ; CODE XREF: PsResumeProcess+55↑j
                mov     rcx, r14
                call    sub_14024C380

loc_1406FA38D:                          ; CODE XREF: PsResumeProcess+12C46D↓j
                mov     rcx, rbp
                call    sub_14021E1F0
                test    dword ptr [rsi+87Ch], 80000h
                jnz     loc_140826782

loc_1406FA3A5:                          ; CODE XREF: PsResumeProcess+12C486↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsResumeProcess endp

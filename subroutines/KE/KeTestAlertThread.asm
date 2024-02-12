KeTestAlertThread proc near             ; CODE XREF: sub_1402AA420+11A↓p
                                        ; sub_1402C8140+626↓p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044C3F8 SIZE 000000FE BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r13
                push    r14
                sub     rsp, 20h
                mov     rdi, gs:188h
                movsx   rbp, cl
                mov     rsi, cr8
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                or      r14, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14044C3F8

loc_1402A9D85:                          ; CODE XREF: KeTestAlertThread+1A26BA↓j
                                        ; KeTestAlertThread+1A26C4↓j ...
                mov     rbx, gs:20h
                and     [rsp+38h+arg_0], 0

loc_1402A9D93:                          ; CODE XREF: KeTestAlertThread+EE↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14044C439

loc_1402A9DA3:                          ; CODE XREF: KeTestAlertThread+1A26FD↓j
                                        ; KeTestAlertThread+1A270C↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      short loc_1402A9E0D
                mov     bl, [rbp+rdi+72h]
                test    bl, bl
                jnz     loc_14044C487
                cmp     bpl, 1
                jnz     short loc_1402A9DCA
                lea     rax, [rdi+0A8h]
                cmp     [rax], rax
                jnz     short loc_1402A9E04

loc_1402A9DCA:                          ; CODE XREF: KeTestAlertThread+7C↑j
                                        ; KeTestAlertThread+CB↓j ...
                mov     rcx, rdi
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14044C491

loc_1402A9DE0:                          ; CODE XREF: KeTestAlertThread+1A2753↓j
                                        ; KeTestAlertThread+1A275F↓j ...
                movzx   ecx, sil
                mov     cr8, rcx
                mov     rbp, [rsp+38h+arg_10]
                mov     al, bl
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     r13
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402A9E04:                          ; CODE XREF: KeTestAlertThread+88↑j
                or      [rdi+0C2h], r13b
                jmp     short loc_1402A9DCA
; ---------------------------------------------------------------------------

loc_1402A9E0D:                          ; CODE XREF: KeTestAlertThread+6A↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14044C460

loc_1402A9E1D:                          ; CODE XREF: KeTestAlertThread+F4↓j
                                        ; KeTestAlertThread+1A2724↓j ...
                lea     rcx, [rsp+38h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jz      loc_1402A9D93
                jmp     short loc_1402A9E1D
KeTestAlertThread endp

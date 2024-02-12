ExInterlockedRemoveHeadList proc near   ; CODE XREF: sub_1402BAD0C+196FC2↓p
                                        ; sub_1405BDAB0+14↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404770BA SIZE 00000026 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rcx
                mov     rdi, rdx
                mov     rcx, rdx
                xor     ebx, ebx
                call    sub_14032F994
                movzx   ebp, al
                mov     rax, [rsi]
                cmp     rax, rsi
                jnz     short loc_14032F96C

loc_14032F92F:                          ; CODE XREF: ExInterlockedRemoveHeadList+85↓j
                lock and qword ptr [rdi], 0
                mov     rcx, gs:20h
                mov     r8, [rcx+84B8h]
                test    r8, r8
                jnz     loc_1404770BA

loc_14032F94D:                          ; CODE XREF: ExInterlockedRemoveHeadList+1477BE↓j
                                        ; ExInterlockedRemoveHeadList+1477CF↓j ...
                test    bpl, bpl
                jz      short loc_14032F953
                sti

loc_14032F953:                          ; CODE XREF: ExInterlockedRemoveHeadList+50↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14032F96C:                          ; CODE XREF: ExInterlockedRemoveHeadList+2D↑j
                mov     rbx, rax
                mov     rax, [rax]
                cmp     [rbx+8], rsi
                jnz     short loc_14032F987
                cmp     [rax+8], rbx
                jnz     short loc_14032F987
                mov     [rsi], rax
                mov     [rax+8], rsi
                jmp     short loc_14032F92F
; ---------------------------------------------------------------------------

loc_14032F987:                          ; CODE XREF: ExInterlockedRemoveHeadList+76↑j
                                        ; ExInterlockedRemoveHeadList+7C↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
ExInterlockedRemoveHeadList endp

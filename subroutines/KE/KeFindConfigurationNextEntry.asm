KeFindConfigurationNextEntry proc near  ; CODE XREF: sub_140A66470+51↑p
                                        ; sub_140A66470+95↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140A89210 SIZE 0000003F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, r9
                mov     r15d, r8d
                mov     r12d, edx
                mov     rdi, rcx
                test    r9, r9
                jnz     loc_140A89210
                xor     ebp, ebp

loc_140A665B4:                          ; CODE XREF: KeFindConfigurationNextEntry+22C93↓j
                test    rcx, rcx
                jz      short loc_140A665DD
                mov     rsi, [rsp+48h+arg_20]

loc_140A665BE:                          ; CODE XREF: KeFindConfigurationNextEntry+5B↓j
                mov     rax, [rsi]
                test    rax, rax
                jz      short loc_140A665E1
                cmp     rdi, rax
                jz      short loc_140A6661F

loc_140A665CB:                          ; CODE XREF: KeFindConfigurationNextEntry+65↓j
                                        ; KeFindConfigurationNextEntry+6B↓j ...
                mov     rbx, [rdi+10h]

loc_140A665CF:                          ; CODE XREF: KeFindConfigurationNextEntry+22CCA↓j
                test    rbx, rbx
                jnz     short loc_140A66625
                mov     rdi, [rdi+8]
                test    rdi, rdi
                jnz     short loc_140A665BE

loc_140A665DD:                          ; CODE XREF: KeFindConfigurationNextEntry+37↑j
                xor     eax, eax
                jmp     short loc_140A665FF
; ---------------------------------------------------------------------------

loc_140A665E1:                          ; CODE XREF: KeFindConfigurationNextEntry+44↑j
                cmp     [rdi+18h], r12d
                jnz     short loc_140A665CB
                cmp     [rdi+1Ch], r15d
                jnz     short loc_140A665CB
                mov     rax, r14
                neg     rax
                sbb     ecx, ecx
                and     ecx, [rdi+28h]
                cmp     ecx, ebp
                jnz     short loc_140A665CB
                mov     rax, rdi

loc_140A665FF:                          ; CODE XREF: KeFindConfigurationNextEntry+5F↑j
                                        ; KeFindConfigurationNextEntry+DB↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140A6661F:                          ; CODE XREF: KeFindConfigurationNextEntry+49↑j
                and     qword ptr [rsi], 0
                jmp     short loc_140A665CB
; ---------------------------------------------------------------------------

loc_140A66625:                          ; CODE XREF: KeFindConfigurationNextEntry+52↑j
                mov     rax, [rsi]
                test    rax, rax
                jnz     loc_140A89218
                cmp     [rbx+18h], r12d
                jnz     loc_140A89221
                cmp     [rbx+1Ch], r15d
                jnz     loc_140A89221
                mov     rax, r14
                neg     rax
                sbb     ecx, ecx
                and     ecx, [rbx+28h]
                cmp     ecx, ebp
                jnz     loc_140A89221
                mov     rax, rbx
                jmp     short loc_140A665FF
KeFindConfigurationNextEntry endp

PsQueryProcessAttributesByToken proc near
                                        ; CODE XREF: sub_1405E8898+39↑p
                                        ; sub_1405E8DA8+2E↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r8
                mov     rsi, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      short loc_1405E8EFB
                lea     rdx, qword_140985918
                call    SeSecurityAttributePresent
                mov     [rsi], al

loc_1405E8EFB:                          ; CODE XREF: PsQueryProcessAttributesByToken+1B↑j
                test    rbx, rbx
                jnz     short loc_1405E8F11

loc_1405E8F00:                          ; CODE XREF: PsQueryProcessAttributesByToken+52↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E8F11:                          ; CODE XREF: PsQueryProcessAttributesByToken+2E↑j
                lea     rdx, qword_140985938
                mov     rcx, rdi
                call    SeSecurityAttributePresent
                mov     [rbx], al
                jmp     short loc_1405E8F00
PsQueryProcessAttributesByToken endp

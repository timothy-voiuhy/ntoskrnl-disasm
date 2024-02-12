KeGetEffectiveIrql proc near            ; CODE XREF: sub_140214FF4+4E↑p
                                        ; sub_140214FF4+16B↑p ...
                sub     rsp, 28h
                call    sub_14024B150
                test    al, al
                jz      short loc_1402BE1E7
                mov     rax, cr8

loc_1402BE1E1:                          ; CODE XREF: KeGetEffectiveIrql+19↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BE1E7:                          ; CODE XREF: KeGetEffectiveIrql+B↑j
                mov     al, 0Fh
                jmp     short loc_1402BE1E1
KeGetEffectiveIrql endp

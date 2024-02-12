MmMapViewInSystemSpace proc near        ; CODE XREF: sub_14038036C+191↑p
                                        ; sub_140751CF4+1C5↓p ...
                mov     r11, rsp
                sub     rsp, 48h
                xor     eax, eax
                mov     r9, r8
                mov     [r11-18h], rax
                mov     r8, rdx
                mov     [r11-20h], rax
                lea     rdx, unk_140C4CBE8
                mov     [r11+20h], rax
                lea     rax, [r11+20h]
                mov     [r11-28h], rax
                call    sub_14065FA54
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMapViewInSystemSpace endp

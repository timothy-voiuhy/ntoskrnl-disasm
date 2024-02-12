CcFastCopyWrite proc near               ; DATA XREF: .pdata:00000001400F0E7C↑o
                mov     r11, rsp
                sub     rsp, 48h
                and     qword ptr [r11-20h], 0
                mov     eax, edx
                lea     rdx, [r11-18h]
                mov     [r11-28h], r9
                mov     r9b, 1
                mov     [r11-18h], rax
                call    CcCopyWriteEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcFastCopyWrite endp

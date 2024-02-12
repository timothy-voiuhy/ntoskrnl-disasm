DbgPrintReturnControlC proc near        ; DATA XREF: .pdata:00000001400F7A7C↑o

var_20          = byte ptr -20h

                mov     r11, rsp
                mov     [r11+8], rcx
                mov     [r11+10h], rdx
                mov     [r11+18h], r8
                mov     [r11+20h], r9
                sub     rsp, 48h
                xor     r8d, r8d
                mov     [rsp+48h+var_20], 0
                lea     rax, [r11+10h]
                mov     r9, rcx
                lea     rcx, qword_140412E80
                mov     [r11-28h], rax
                lea     edx, [r8+65h]
                call    sub_140364C40
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgPrintReturnControlC endp

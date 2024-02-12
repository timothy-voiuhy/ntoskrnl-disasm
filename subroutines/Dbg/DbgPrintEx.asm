DbgPrintEx      proc near               ; CODE XREF: sub_14033CCF4+259↑p
                                        ; sub_14039A1F0+87↓p ...

var_20          = byte ptr -20h

                mov     r11, rsp
                mov     [r11+18h], r8
                mov     [r11+20h], r9
                sub     rsp, 48h
                mov     r9, r8
                mov     [rsp+48h+var_20], 1
                mov     r8d, edx
                lea     rax, [r11+20h]
                mov     edx, ecx
                mov     [r11-28h], rax
                lea     rcx, qword_140412E80
                call    sub_140364C40
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgPrintEx      endp

algn_14037F4F6:                         ; DATA XREF: .pdata:00000001400DB390↑o
                align 20h
; Exported entry 2634. VerSetConditionMask

; =============== S U B R O U T I N E =======================================



DbgPrint        proc near               ; CODE XREF: CcInitializeCacheMapEx+1DCB6A↓p
                                        ; sub_1402F53A8+16EF19↓p ...

var_20          = byte ptr -20h

                mov     r11, rsp
                mov     [r11+8], rcx
                mov     [r11+10h], rdx
                mov     [r11+18h], r8
                mov     [r11+20h], r9
                sub     rsp, 48h
                mov     edx, 65h ; 'e'
                mov     [rsp+48h+var_20], 1
                lea     rax, [r11+10h]
                mov     r9, rcx
                lea     rcx, qword_140412E80
                mov     [r11-28h], rax
                lea     r8d, [rdx-62h]
                call    sub_140364C40
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgPrint        endp

algn_140364C02:                         ; DATA XREF: .pdata:00000001400D9AD0↑o
                align 10h
; Exported entry 3064. vDbgPrintEx

; =============== S U B R O U T I N E =======================================



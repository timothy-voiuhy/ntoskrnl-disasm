KeRemoveQueue   proc near               ; CODE XREF: sub_1403B7520+36↓p
                                        ; sub_1403CE450+33↓p ...

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_18          = qword ptr  20h

                sub     rsp, 38h
                and     [rsp+38h+arg_18], 0
                lea     rax, [rsp+38h+arg_18]
                mov     r9, r8
                mov     [rsp+38h+var_10], 1
                xor     r8d, r8d
                mov     [rsp+38h+var_18], rax
                call    KeRemoveQueueEx
                mov     rax, [rsp+38h+arg_18]
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRemoveQueue   endp

algn_14030AFB2:                         ; DATA XREF: .pdata:00000001400D4310↑o
                align 20h
; Exported entry 1203. KeInsertQueue

; =============== S U B R O U T I N E =======================================



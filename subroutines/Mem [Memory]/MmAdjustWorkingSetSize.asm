MmAdjustWorkingSetSize proc near        ; CODE XREF: sub_140798AB0+135↓p
                                        ; sub_1406841A8+18E276↓p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h

                sub     rsp, 48h
                lea     rax, [rsp+48h+var_18]
                mov     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_20], rax
                and     [rsp+48h+var_28], 0
                call    sub_14035099C
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAdjustWorkingSetSize endp

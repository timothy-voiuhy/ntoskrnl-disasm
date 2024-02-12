KeSetEventBoostPriority proc near       ; CODE XREF: sub_140950AE0+5B↓p
                                        ; DATA XREF: .pdata:00000001400F3894↑o

var_18          = byte ptr -18h
var_10          = dword ptr -10h
arg_8           = byte ptr  10h

                sub     rsp, 38h
                test    rdx, rdx
                lea     rax, [rsp+38h+arg_8]
                cmovnz  rax, rdx
                and     [rsp+38h+var_10], 0
                mov     rdx, rax
                mov     [rsp+38h+var_18], 1
                xor     r9d, r9d
                xor     r8d, r8d
                call    sub_1402F42B8
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSetEventBoostPriority endp

SeComputeAutoInheritByObjectType proc near
                                        ; DATA XREF: .pdata:00000001400D83CC↑o

var_18          = qword ptr -18h
arg_18          = dword ptr  20h

                sub     rsp, 38h
                and     [rsp+38h+arg_18], 0
                lea     r9, [rsp+38h+arg_18]
                and     [rsp+38h+var_18], 0
                call    sub_14021BDB0
                mov     eax, [rsp+38h+arg_18]
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeComputeAutoInheritByObjectType endp

FsRtlRegisterUncProviderEx proc near    ; DATA XREF: .pdata:000000014011C2BC↑o

var_18          = dword ptr -18h
var_14          = dword ptr -14h

                sub     rsp, 38h
                mov     rax, r8
                mov     [rsp+38h+var_14], r9d
                mov     r10, rdx
                mov     [rsp+38h+var_18], 1010008h
                mov     r9, rcx
                lea     r8, [rsp+38h+var_18]
                mov     rdx, rax
                mov     rcx, r10
                call    sub_1407C6428
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlRegisterUncProviderEx endp

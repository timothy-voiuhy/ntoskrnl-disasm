HalRegisterErrataCallbacks proc near    ; CODE XREF: sub_140A473CC+2DA↑p
                                        ; DATA XREF: .pdata:000000014012CF84↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = byte ptr  8

                sub     rsp, 38h
                lea     rax, [rsp+38h+arg_0]
                xor     r8d, r8d
                mov     [rsp+38h+var_10], rax
                lea     r9, off_140005650
                xor     edx, edx
                mov     [rsp+38h+var_18], 6
                xor     ecx, ecx
                call    EmpProviderRegister
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalRegisterErrataCallbacks endp

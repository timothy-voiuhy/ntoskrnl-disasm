EmProviderRegister proc near            ; DATA XREF: .pdata:000000014010CCEC↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                test    rcx, rcx
                jz      short loc_14079CC36
                mov     rax, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], rax
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], eax
                call    EmpProviderRegister

loc_14079CC30:                          ; CODE XREF: EmProviderRegister+2B↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14079CC36:                          ; CODE XREF: EmProviderRegister+7↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14079CC30
EmProviderRegister endp

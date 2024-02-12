IoSetHardErrorOrVerifyDevice proc near  ; DATA XREF: .pdata:00000001400F27A8↑o
                mov     rax, [rcx+98h]
                test    rax, rax
                jz      short locret_1405063E3
                mov     [rax+4C8h], rdx

locret_1405063E3:                       ; CODE XREF: IoSetHardErrorOrVerifyDevice+A↑j
                retn
IoSetHardErrorOrVerifyDevice endp

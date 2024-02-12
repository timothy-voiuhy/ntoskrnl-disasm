PsGetProcessWow64Process proc near      ; DATA XREF: .pdata:00000001400D63E0↑o
                mov     rax, [rcx+580h]
                test    rax, rax
                jnz     short loc_14032DF2E
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032DF2E:                          ; CODE XREF: PsGetProcessWow64Process+A↑j
                mov     rax, [rax]
                retn
PsGetProcessWow64Process endp

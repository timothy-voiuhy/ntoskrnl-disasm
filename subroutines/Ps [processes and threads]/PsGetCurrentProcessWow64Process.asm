PsGetCurrentProcessWow64Process proc near
                                        ; DATA XREF: .pdata:00000001400D6260↑o
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                mov     rax, [rax+580h]
                test    rax, rax
                jnz     short loc_14032CB9E
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032CB9E:                          ; CODE XREF: PsGetCurrentProcessWow64Process+1A↑j
                mov     rax, [rax]
                retn
PsGetCurrentProcessWow64Process endp

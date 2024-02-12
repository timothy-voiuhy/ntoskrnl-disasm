IoGetSiloParameters proc near           ; DATA XREF: .pdata:00000001400D701C↑o
                mov     rdx, [rcx+0D0h]
                xor     eax, eax
                test    rdx, rdx
                jnz     short loc_14033E2C0

locret_14033E2BE:                       ; CODE XREF: IoGetSiloParameters+17↓j
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14033E2C0:                          ; CODE XREF: IoGetSiloParameters+C↑j
                cmp     rdx, cs:off_140C04810
                jz      short locret_14033E2BE
                mov     rax, [rdx+40h]
                retn
IoGetSiloParameters endp

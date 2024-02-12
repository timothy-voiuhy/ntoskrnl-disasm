PsGetSiloIdentifier proc near           ; DATA XREF: .pdata:000000014010F3F8↑o
                xor     eax, eax
                test    rcx, rcx
                jnz     short loc_1407D3AB9
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407D3AB9:                          ; CODE XREF: PsGetSiloIdentifier+5↑j
                mov     eax, [rcx+4D4h]
                retn
PsGetSiloIdentifier endp

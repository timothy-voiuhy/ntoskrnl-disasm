RtlIsNtDdiVersionAvailable proc near    ; DATA XREF: .pdata:00000001400DFBD8↑o
                mov     eax, ecx
                shr     eax, 8
                or      eax, ecx
                test    al, al
                jnz     short loc_1403CC946
                cmp     ecx, 0A000008h
                setbe   al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403CC946:                          ; CODE XREF: RtlIsNtDdiVersionAvailable+9↑j
                xor     al, al
                retn
RtlIsNtDdiVersionAvailable endp

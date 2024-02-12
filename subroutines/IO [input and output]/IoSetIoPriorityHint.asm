IoSetIoPriorityHint proc near           ; DATA XREF: .pdata:00000001400D65E4↑o
                cmp     edx, 5
                jnb     short loc_140330DEF
                mov     eax, [rcx+10h]
                shl     edx, 11h
                and     eax, 0FFF1FFFFh
                add     edx, 20000h
                or      edx, eax
                mov     [rcx+10h], edx
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140330DEF:                          ; CODE XREF: IoSetIoPriorityHint+3↑j
                mov     eax, 0C000000Dh
                retn
IoSetIoPriorityHint endp

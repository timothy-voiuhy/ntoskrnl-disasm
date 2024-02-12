IoGetSymlinkSupportInformation proc near
                                        ; DATA XREF: .pdata:000000014011CB20↑o
                mov     r8d, cs:dword_140CF4348
                cmp     edx, 4
                jnb     short loc_140896533
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140896533:                          ; CODE XREF: IoGetSymlinkSupportInformation+A↑j
                mov     al, r8b
                mov     dl, 1
                and     al, dl
                mov     [rcx], al
                mov     eax, r8d
                shr     eax, 1
                and     al, dl
                mov     [rcx+1], al
                mov     eax, r8d
                shr     eax, 2
                and     al, dl
                shr     r8d, 3
                and     r8b, dl
                mov     [rcx+2], al
                xor     eax, eax
                mov     [rcx+3], r8b
                retn
IoGetSymlinkSupportInformation endp

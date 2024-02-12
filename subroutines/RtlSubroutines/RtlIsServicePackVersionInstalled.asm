RtlIsServicePackVersionInstalled proc near
                                        ; DATA XREF: .pdata:00000001400F7F5C↑o
                mov     eax, ecx
                and     eax, 0FFFF0000h
                cmp     eax, 0A000000h
                jz      short loc_14058D472
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14058D472:                          ; CODE XREF: RtlIsServicePackVersionInstalled+C↑j
                test    ecx, 0FF00h
                setbe   al
                retn
RtlIsServicePackVersionInstalled endp

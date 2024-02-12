IoValidateDeviceIoControlAccess proc near
                                        ; DATA XREF: .pdata:00000001400DB198↑o
                test    dl, 3
                jz      short loc_14037D46D
                mov     r8, [rcx+0B8h]
                mov     al, [r8]
                sub     al, 0Dh
                cmp     al, 1
                ja      short loc_14037D46D
                cmp     byte ptr [rcx+40h], 0
                jz      short loc_14037D462
                movzx   eax, byte ptr [r8+2]
                mov     ecx, eax
                and     eax, 1
                shr     ecx, 1
                and     ecx, 2
                or      ecx, eax
                and     ecx, edx
                cmp     ecx, edx
                jnz     short loc_14037D466

loc_14037D462:                          ; CODE XREF: IoValidateDeviceIoControlAccess+19↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14037D466:                          ; CODE XREF: IoValidateDeviceIoControlAccess+30↑j
                mov     eax, 0C0000022h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037D46D:                          ; CODE XREF: IoValidateDeviceIoControlAccess+3↑j
                                        ; IoValidateDeviceIoControlAccess+13↑j
                mov     eax, 0C000000Dh
                retn
IoValidateDeviceIoControlAccess endp

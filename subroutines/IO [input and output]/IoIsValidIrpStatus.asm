IoIsValidIrpStatus proc near            ; CODE XREF: sub_1409C9530+6↓p
                                        ; DATA XREF: .pdata:0000000140128604↑o
                movzx   r8d, cx
                bt      ecx, 1Dh
                jb      short loc_1409C941E
                mov     edx, ecx
                xor     eax, eax
                and     edx, 0FFF0000h
                cmp     edx, 0ED0000h
                jnb     short locret_1409C9423
                shr     ecx, 1Eh
                test    ecx, ecx
                jz      short loc_1409C942E
                sub     ecx, 1
                jz      short loc_1409C9425
                cmp     ecx, 1
                jnz     short loc_1409C941E
                cmp     edx, 70000h
                jz      short loc_1409C941E
                cmp     r8d, 400h
                jnb     short locret_1409C9423

loc_1409C941E:                          ; CODE XREF: IoIsValidIrpStatus+8↑j
                                        ; IoIsValidIrpStatus+2B↑j ...
                mov     eax, 1

locret_1409C9423:                       ; CODE XREF: IoIsValidIrpStatus+1A↑j
                                        ; IoIsValidIrpStatus+3C↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409C9425:                          ; CODE XREF: IoIsValidIrpStatus+26↑j
                cmp     r8d, 400h
                jmp     short loc_1409C9435
; ---------------------------------------------------------------------------

loc_1409C942E:                          ; CODE XREF: IoIsValidIrpStatus+21↑j
                cmp     r8d, 250h

loc_1409C9435:                          ; CODE XREF: IoIsValidIrpStatus+4C↑j
                setb    al
                retn
IoIsValidIrpStatus endp

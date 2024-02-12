MmIsNonPagedSystemAddressValid proc near
                                        ; CODE XREF: sub_1409C8B1C+4E↓p
                                        ; sub_1409CB690+5F↓p ...
                sub     rsp, 28h
                call    sub_140245330
                cmp     eax, 6
                jz      short loc_140536D77
                cmp     eax, 1
                jz      short loc_140536D77
                mov     al, 1
                jmp     short loc_140536D79
; ---------------------------------------------------------------------------

loc_140536D77:                          ; CODE XREF: MmIsNonPagedSystemAddressValid+C↑j
                                        ; MmIsNonPagedSystemAddressValid+11↑j
                xor     al, al

loc_140536D79:                          ; CODE XREF: MmIsNonPagedSystemAddressValid+15↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmIsNonPagedSystemAddressValid endp

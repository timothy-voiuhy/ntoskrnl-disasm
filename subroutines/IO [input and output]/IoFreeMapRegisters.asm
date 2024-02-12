IoFreeMapRegisters proc near            ; CODE XREF: sub_1403A2C10+48↑p
                                        ; sub_14032CB00+1497DD↓p ...
                sub     rsp, 28h
                mov     r10, rdx
                mov     r9, rcx
                call    sub_140347140
                mov     rdx, r10
                mov     rcx, r9
                sub     eax, 2
                jz      short loc_1403A2CB5
                call    sub_1403A2CC4

loc_1403A2CAF:                          ; CODE XREF: IoFreeMapRegisters+2A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A2CB5:                          ; CODE XREF: IoFreeMapRegisters+18↑j
                call    sub_1404CD1C0
                jmp     short loc_1403A2CAF
IoFreeMapRegisters endp

IoFreeAdapterChannel proc near          ; CODE XREF: sub_1404C60E0+78↓p
                                        ; sub_1404C61A0:loc_1404C61B5↓p ...
                sub     rsp, 28h
                mov     r8, rcx
                call    sub_140347140
                mov     rcx, r8
                sub     eax, 2
                jz      short loc_1404B8F5B
                call    sub_1404C65BC
                jmp     short loc_1404B8F60
; ---------------------------------------------------------------------------

loc_1404B8F5B:                          ; CODE XREF: IoFreeAdapterChannel+12↑j
                call    sub_1404CCFEC

loc_1404B8F60:                          ; CODE XREF: IoFreeAdapterChannel+19↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFreeAdapterChannel endp

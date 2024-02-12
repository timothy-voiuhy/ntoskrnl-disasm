PsDereferenceImpersonationToken proc near
                                        ; DATA XREF: .pdata:0000000140106218↑o
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_1407101EE
                call    PsDereferenceSiloContext

loc_1407101EE:                          ; CODE XREF: PsDereferenceImpersonationToken+7↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsDereferenceImpersonationToken endp

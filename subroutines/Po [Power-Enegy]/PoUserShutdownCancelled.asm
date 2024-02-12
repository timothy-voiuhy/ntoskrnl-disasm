PoUserShutdownCancelled proc near       ; CODE XREF: sub_14067B764+527↑p
                                        ; DATA XREF: .pdata:000000014010B27C↑o
                sub     rsp, 28h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     short loc_140778C05
                mov     edx, 1
                lea     rcx, unk_140C24FC0
                call    sub_1403642E4
                mov     cl, 1
                call    sub_140778C14

loc_140778C05:                          ; CODE XREF: PoUserShutdownCancelled+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoUserShutdownCancelled endp

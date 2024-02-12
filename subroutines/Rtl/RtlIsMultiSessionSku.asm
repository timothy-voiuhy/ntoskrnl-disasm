RtlIsMultiSessionSku proc near          ; CODE XREF: sub_1403A483C:loc_1403A4874↑p
                                        ; sub_1407015D0+3C↑p ...

; FUNCTION CHUNK AT 0000000140827E16 SIZE 00000014 BYTES

                sub     rsp, 28h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_140827E16
                mov     eax, ds:0FFFFF780000002F0h
                shr     eax, 8
                and     al, 1

loc_14070165F:                          ; CODE XREF: RtlIsMultiSessionSku+1267E5↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIsMultiSessionSku endp

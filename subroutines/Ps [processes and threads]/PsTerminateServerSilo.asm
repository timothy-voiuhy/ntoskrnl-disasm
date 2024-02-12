PsTerminateServerSilo proc near         ; CODE XREF: sub_140907B60+DC↓p
                                        ; sub_14090C0E4+8B↓p ...
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14090740A
                call    sub_1402B96B0
                test    al, al
                jz      short loc_14090740A
                xor     r8d, r8d
                call    sub_140715FF8

loc_14090740A:                          ; CODE XREF: PsTerminateServerSilo+7↑j
                                        ; PsTerminateServerSilo+10↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsTerminateServerSilo endp

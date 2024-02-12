IoGetTransactionParameterBlock proc near
                                        ; CODE XREF: sub_1406DF220+234↓p
                                        ; sub_1406DF220+24A↓p ...
                mov     rax, [rcx+0D0h]
                test    rax, rax
                jnz     short loc_1403201E0

loc_1403201DC:                          ; CODE XREF: IoGetTransactionParameterBlock+17↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403201E0:                          ; CODE XREF: IoGetTransactionParameterBlock+A↑j
                cmp     rax, cs:off_140C04810
                jz      short loc_1403201DC
                mov     rax, [rax+8]
                retn
IoGetTransactionParameterBlock endp

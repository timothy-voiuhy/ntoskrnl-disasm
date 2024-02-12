InitializeSListHead proc near           ; CODE XREF: sub_1402B54F0+EA↑p
                                        ; sub_140305B0C+171↓p ...

; FUNCTION CHUNK AT 000000014044FA9A SIZE 0000000B BYTES

                sub     rsp, 28h
                test    cl, 0Fh
                jnz     loc_14044FA9A
                xorps   xmm0, xmm0
                movaps  xmmword ptr [rcx], xmm0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InitializeSListHead endp

IoGetOplockKeyContextEx proc near       ; CODE XREF: sub_14024D9B0+72↑p
                                        ; sub_14024E840+1DB↑p ...
                sub     rsp, 28h
                xor     r8d, r8d
                lea     edx, [r8+6]
                call    sub_14021B460
                test    rax, rax
                jnz     short loc_14034281D

loc_140342815:                          ; CODE XREF: IoGetOplockKeyContextEx+23↓j
                xor     eax, eax

loc_140342817:                          ; CODE XREF: IoGetOplockKeyContextEx+21↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034281D:                          ; CODE XREF: IoGetOplockKeyContextEx+13↑j
                test    byte ptr [rax+2], 3
                jnz     short loc_140342817
                jmp     short loc_140342815
IoGetOplockKeyContextEx endp

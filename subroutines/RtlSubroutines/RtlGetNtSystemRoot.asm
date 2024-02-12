RtlGetNtSystemRoot proc near            ; CODE XREF: sub_1405CE88C+2B↑p
                                        ; sub_14075061C+51↓p ...

; FUNCTION CHUNK AT 000000014082DE40 SIZE 00000015 BYTES

                sub     rsp, 28h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_14082DE40
                mov     rax, 0FFFFF78000000030h

loc_14071BC7B:                          ; CODE XREF: RtlGetNtSystemRoot+1121F0↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetNtSystemRoot endp

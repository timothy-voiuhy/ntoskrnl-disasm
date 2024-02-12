KeReleaseSpinLockFromDpcLevel proc near ; CODE XREF: sub_1402000B0+88↑p
                                        ; sub_1402000B0+98↑p ...

; FUNCTION CHUNK AT 0000000140431734 SIZE 00000034 BYTES

                sub     rsp, 28h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_140431734
                lock and qword ptr [rcx], 0

loc_140243106:                          ; CODE XREF: KeReleaseSpinLockFromDpcLevel+1EE64F↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140431744

loc_14024311F:                          ; CODE XREF: KeReleaseSpinLockFromDpcLevel+1EE658↓j
                                        ; KeReleaseSpinLockFromDpcLevel+1EE667↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseSpinLockFromDpcLevel endp

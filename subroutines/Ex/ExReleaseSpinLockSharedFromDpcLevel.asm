ExReleaseSpinLockSharedFromDpcLevel proc near
                                        ; CODE XREF: sub_140203354:loc_14020339F↑p
                                        ; sub_140219BBC+88↑p ...

; FUNCTION CHUNK AT 000000014043AEE0 SIZE 00000034 BYTES

                sub     rsp, 28h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14043AEE0
                lock and dword ptr [rcx], 0BFFFFFFFh
                lock dec dword ptr [rcx]

loc_140261C8B:                          ; CODE XREF: ExReleaseSpinLockSharedFromDpcLevel+1D927B↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043AEF0

loc_140261CA4:                          ; CODE XREF: ExReleaseSpinLockSharedFromDpcLevel+1D9284↓j
                                        ; ExReleaseSpinLockSharedFromDpcLevel+1D9293↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseSpinLockSharedFromDpcLevel endp

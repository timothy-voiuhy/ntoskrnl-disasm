ExReleaseSpinLockExclusiveFromDpcLevel proc near
                                        ; CODE XREF: sub_1402012D8+84↑p
                                        ; sub_14020260C+82↑p ...

; FUNCTION CHUNK AT 000000014041CA2E SIZE 00000034 BYTES

                sub     rsp, 28h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14041CA2E
                mov     dword ptr [rcx], 0

loc_140233597:                          ; CODE XREF: ExReleaseSpinLockExclusiveFromDpcLevel+1E94B9↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041CA3E

loc_1402335B0:                          ; CODE XREF: ExReleaseSpinLockExclusiveFromDpcLevel+1E94C2↓j
                                        ; ExReleaseSpinLockExclusiveFromDpcLevel+1E94D1↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseSpinLockExclusiveFromDpcLevel endp

PsGetServerSiloServiceSessionId proc near
                                        ; CODE XREF: sub_1405CE39C+30↓p
                                        ; sub_140631260+727↓p ...
                lea     rax, unk_140D24540
                test    rcx, rcx
                jnz     short loc_140310637

loc_14031062C:                          ; CODE XREF: PsGetServerSiloServiceSessionId+1E↓j
                mov     rax, [rax+468h]
                mov     eax, [rax]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310637:                          ; CODE XREF: PsGetServerSiloServiceSessionId+A↑j
                mov     rax, [rcx+4F8h]
                jmp     short loc_14031062C
PsGetServerSiloServiceSessionId endp

InbvCheckDisplayOwnership proc near     ; CODE XREF: sub_1403EFC50+1C↑p
                                        ; sub_1404BE470+1C↑p ...
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FF040
                mov     rax, [rax+40h]
                test    rax, rax
                jz      short loc_1404FF040
                call    sub_1404079D0
                jmp     short loc_1404FF042
; ---------------------------------------------------------------------------

loc_1404FF040:                          ; CODE XREF: InbvCheckDisplayOwnership+E↑j
                                        ; InbvCheckDisplayOwnership+17↑j
                xor     al, al

loc_1404FF042:                          ; CODE XREF: InbvCheckDisplayOwnership+1E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvCheckDisplayOwnership endp

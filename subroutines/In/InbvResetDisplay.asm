InbvResetDisplay proc near              ; DATA XREF: .pdata:00000001400F222C↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FF170
                mov     rax, [rax+18h]
                test    rax, rax
                jz      short loc_1404FF170
                call    sub_1404079D0
                jmp     short loc_1404FF172
; ---------------------------------------------------------------------------

loc_1404FF170:                          ; CODE XREF: InbvResetDisplay+E↑j
                                        ; InbvResetDisplay+17↑j
                xor     al, al

loc_1404FF172:                          ; CODE XREF: InbvResetDisplay+1E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvResetDisplay endp

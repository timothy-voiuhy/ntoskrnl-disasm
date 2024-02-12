InbvSetTextColor proc near              ; CODE XREF: sub_1403B4CD0+F6011↑p
                                        ; DATA XREF: .pdata:00000001400F2244↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FF1D0
                mov     rax, [rax+50h]
                test    rax, rax
                jz      short loc_1404FF1D0
                call    sub_1404079D0
                jmp     short loc_1404FF1D3
; ---------------------------------------------------------------------------

loc_1404FF1D0:                          ; CODE XREF: InbvSetTextColor+E↑j
                                        ; InbvSetTextColor+17↑j
                or      eax, 0FFFFFFFFh

loc_1404FF1D3:                          ; CODE XREF: InbvSetTextColor+1E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvSetTextColor endp

InbvEnableBootDriver proc near          ; DATA XREF: .pdata:00000001400F21F0↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FF06E
                mov     rax, [rax+30h]
                test    rax, rax
                jz      short loc_1404FF06E
                call    sub_1404079D0

loc_1404FF06E:                          ; CODE XREF: InbvEnableBootDriver+E↑j
                                        ; InbvEnableBootDriver+17↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvEnableBootDriver endp

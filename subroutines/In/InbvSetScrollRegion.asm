InbvSetScrollRegion proc near           ; DATA XREF: .pdata:00000001400F2238↑o
                sub     rsp, 38h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FF19E
                mov     rax, [rax+48h]
                test    rax, rax
                jz      short loc_1404FF19E
                call    sub_1404079D0

loc_1404FF19E:                          ; CODE XREF: InbvSetScrollRegion+E↑j
                                        ; InbvSetScrollRegion+17↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvSetScrollRegion endp

InbvNotifyDisplayOwnershipLost proc near
                                        ; DATA XREF: .pdata:00000001400F2214↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FF10D
                mov     rax, [rax]
                test    rax, rax
                jz      short loc_1404FF10D
                call    sub_1404079D0

loc_1404FF10D:                          ; CODE XREF: InbvNotifyDisplayOwnershipLost+E↑j
                                        ; InbvNotifyDisplayOwnershipLost+16↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvNotifyDisplayOwnershipLost endp

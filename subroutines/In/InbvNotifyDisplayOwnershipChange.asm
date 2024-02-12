InbvNotifyDisplayOwnershipChange proc near
                                        ; DATA XREF: .pdata:00000001400DDC4C↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1403A7B44
                mov     rax, [rax+10h]
                test    rax, rax
                jz      short loc_1403A7B44
                call    sub_1404079D0

loc_1403A7B3E:                          ; CODE XREF: InbvNotifyDisplayOwnershipChange+29↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403A7B44:                          ; CODE XREF: InbvNotifyDisplayOwnershipChange+E↑j
                                        ; InbvNotifyDisplayOwnershipChange+17↑j
                mov     eax, 0C0000002h
                jmp     short loc_1403A7B3E
InbvNotifyDisplayOwnershipChange endp

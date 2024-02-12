InbvSetVirtualFrameBuffer proc near     ; DATA XREF: .pdata:00000001400E00C4↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1403CFBE7
                mov     rax, [rax+0B0h]
                test    rax, rax
                jz      short loc_1403CFBE7
                call    sub_1404079D0

loc_1403CFBE1:                          ; CODE XREF: InbvSetVirtualFrameBuffer+2C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CFBE7:                          ; CODE XREF: InbvSetVirtualFrameBuffer+E↑j
                                        ; InbvSetVirtualFrameBuffer+1A↑j
                mov     eax, 0C0000002h
                jmp     short loc_1403CFBE1
InbvSetVirtualFrameBuffer endp

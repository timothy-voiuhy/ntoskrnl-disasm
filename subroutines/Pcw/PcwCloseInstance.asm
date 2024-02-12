PcwCloseInstance proc near              ; DATA XREF: .pdata:0000000140102600↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, cs:qword_140D2D098
                call    sub_140309D44
                test    rax, rax
                jz      short loc_1406AC5D2
                mov     rax, [rax+18h]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rcx, cs:qword_140D2D098
                call    sub_140309D28

loc_1406AC5D2:                          ; CODE XREF: PcwCloseInstance+18↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PcwCloseInstance endp

VfQueryIrpContext proc near             ; DATA XREF: .pdata:00000001400F8F64↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                mov     r9, rcx
                jz      short loc_1405A0C72
                mov     r10d, 2
                mov     ecx, r10d
                call    sub_1409CA544
                test    al, al
                jz      short loc_1405A0C72
                mov     r8d, edx
                mov     rcx, r9
                mov     edx, r10d
                call    sub_1409CA5B4
                jmp     short loc_1405A0C74
; ---------------------------------------------------------------------------

loc_1405A0C72:                          ; CODE XREF: VfQueryIrpContext+E↑j
                                        ; VfQueryIrpContext+20↑j
                xor     eax, eax

loc_1405A0C74:                          ; CODE XREF: VfQueryIrpContext+30↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfQueryIrpContext endp

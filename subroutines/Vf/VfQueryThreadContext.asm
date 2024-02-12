VfQueryThreadContext proc near          ; DATA XREF: .pdata:00000001400F8F70↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                mov     r9, rcx
                jz      short loc_1405A0CB2
                mov     r10d, 3
                mov     ecx, r10d
                call    sub_1409CA544
                test    al, al
                jz      short loc_1405A0CB2
                mov     r8d, edx
                mov     rcx, r9
                mov     edx, r10d
                call    sub_1409CA5B4
                jmp     short loc_1405A0CB4
; ---------------------------------------------------------------------------

loc_1405A0CB2:                          ; CODE XREF: VfQueryThreadContext+E↑j
                                        ; VfQueryThreadContext+20↑j
                xor     eax, eax

loc_1405A0CB4:                          ; CODE XREF: VfQueryThreadContext+30↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfQueryThreadContext endp

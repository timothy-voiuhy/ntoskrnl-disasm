VfQueryDriverContext proc near          ; DATA XREF: .pdata:00000001400F8F58↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                mov     r9, rcx
                jz      short loc_1405A0C32
                mov     r10d, 1
                mov     ecx, r10d
                call    sub_1409CA544
                test    al, al
                jz      short loc_1405A0C32
                mov     r8d, edx
                mov     rcx, r9
                mov     edx, r10d
                call    sub_1409CA5B4
                jmp     short loc_1405A0C34
; ---------------------------------------------------------------------------

loc_1405A0C32:                          ; CODE XREF: VfQueryDriverContext+E↑j
                                        ; VfQueryDriverContext+20↑j
                xor     eax, eax

loc_1405A0C34:                          ; CODE XREF: VfQueryDriverContext+30↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfQueryDriverContext endp

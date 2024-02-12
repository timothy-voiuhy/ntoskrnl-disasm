PsReplaceSiloContext proc near          ; DATA XREF: .pdata:0000000140121434↑o
                push    rbx
                sub     rsp, 20h
                mov     r11, cs:qword_140D24990
                mov     ebx, edx
                mov     r10, rcx
                test    rcx, rcx
                jz      short loc_1409072AE
                mov     r11, [rcx+518h]

loc_1409072AE:                          ; CODE XREF: PsReplaceSiloContext+15↑j
                mov     rcx, r8
                call    sub_1406E0378
                test    al, al
                jz      short loc_1409072CB
                call    sub_1408DEA5C
                cmp     [rax], r10
                jz      short loc_1409072CB
                mov     eax, 0C000000Dh
                jmp     short loc_1409072D5
; ---------------------------------------------------------------------------

loc_1409072CB:                          ; CODE XREF: PsReplaceSiloContext+28↑j
                                        ; PsReplaceSiloContext+32↑j
                mov     edx, ebx
                mov     rcx, r11
                call    sub_1409107B0

loc_1409072D5:                          ; CODE XREF: PsReplaceSiloContext+39↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReplaceSiloContext endp

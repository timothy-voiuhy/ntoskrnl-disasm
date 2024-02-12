PsRemoveSiloContext proc near           ; CODE XREF: sub_1405D17AC+21B↑p
                                        ; sub_14090813C+1A↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_140907272
                mov     rcx, cs:qword_140D24990
                jmp     short loc_140907279
; ---------------------------------------------------------------------------

loc_140907272:                          ; CODE XREF: PsRemoveSiloContext+7↑j
                mov     rcx, [rcx+518h]

loc_140907279:                          ; CODE XREF: PsRemoveSiloContext+10↑j
                mov     r9, r8
                xor     r8d, r8d
                call    sub_1409106CC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsRemoveSiloContext endp

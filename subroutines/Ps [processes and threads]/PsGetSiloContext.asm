PsGetSiloContext proc near              ; DATA XREF: .pdata:00000001400C903C↑o
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14020052F
                mov     rcx, [rcx+518h]

loc_140200520:                          ; CODE XREF: PsGetSiloContext+26↓j
                and     qword ptr [r8], 0
                call    sub_140200540
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14020052F:                          ; CODE XREF: PsGetSiloContext+7↑j
                mov     rcx, cs:qword_140D24990
                jmp     short loc_140200520
PsGetSiloContext endp

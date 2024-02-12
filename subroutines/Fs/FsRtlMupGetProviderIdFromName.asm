FsRtlMupGetProviderIdFromName proc near ; DATA XREF: .pdata:000000014011C298↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140D2D190
                test    rax, rax
                jz      short loc_14088CF9B
                mov     rax, [rax+8]
                call    sub_1404079D0
                jmp     short loc_14088CFA0
; ---------------------------------------------------------------------------

loc_14088CF9B:                          ; CODE XREF: FsRtlMupGetProviderIdFromName+E↑j
                mov     eax, 0C00000BBh

loc_14088CFA0:                          ; CODE XREF: FsRtlMupGetProviderIdFromName+19↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlMupGetProviderIdFromName endp

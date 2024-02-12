FsRtlMupGetProviderInfoFromFileObject proc near
                                        ; DATA XREF: .pdata:000000014011C2A4↑o
                sub     rsp, 38h
                mov     rax, cs:qword_140D2D190
                test    rax, rax
                jz      short loc_14088CFCA
                mov     rax, [rax]
                call    sub_1404079D0
                jmp     short loc_14088CFCF
; ---------------------------------------------------------------------------

loc_14088CFCA:                          ; CODE XREF: FsRtlMupGetProviderInfoFromFileObject+E↑j
                mov     eax, 0C00000BBh

loc_14088CFCF:                          ; CODE XREF: FsRtlMupGetProviderInfoFromFileObject+18↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlMupGetProviderInfoFromFileObject endp

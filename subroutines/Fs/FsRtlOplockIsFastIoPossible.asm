FsRtlOplockIsFastIoPossible proc near   ; DATA XREF: .pdata:0000000140104C88↑o
                mov     rdx, [rcx]
                mov     eax, 1
                test    rdx, rdx
                jnz     short loc_1406F2E3F

locret_1406F2E3D:                       ; CODE XREF: FsRtlOplockIsFastIoPossible+17↓j
                                        ; FsRtlOplockIsFastIoPossible+22↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2E3F:                          ; CODE XREF: FsRtlOplockIsFastIoPossible+B↑j
                mov     ecx, [rdx+90h]
                cmp     ecx, eax
                jz      short locret_1406F2E3D
                and     ecx, 1F00F40h
                cmp     ecx, 40h ; '@'
                jz      short locret_1406F2E3D
                xor     al, al
                retn
FsRtlOplockIsFastIoPossible endp

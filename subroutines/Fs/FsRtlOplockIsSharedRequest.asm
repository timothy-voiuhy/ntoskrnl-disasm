FsRtlOplockIsSharedRequest proc near    ; DATA XREF: .pdata:00000001401054A4↑o
                mov     rax, [rcx+0B8h]
                mov     edx, [rax+18h]
                cmp     edx, 90240h
                jnz     short loc_1406FF332
                mov     rax, [rcx+18h]
                mov     ecx, [rax+4]
                test    cl, 4
                jnz     short loc_1406FF33A

loc_1406FF32E:                          ; CODE XREF: FsRtlOplockIsSharedRequest+28↓j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406FF332:                          ; CODE XREF: FsRtlOplockIsSharedRequest+10↑j
                cmp     edx, 90004h
                jz      short loc_1406FF32E

loc_1406FF33A:                          ; CODE XREF: FsRtlOplockIsSharedRequest+1C↑j
                xor     al, al
                retn
FsRtlOplockIsSharedRequest endp

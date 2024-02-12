RtlIsNonEmptyDirectoryReparsePointAllowed proc near
                                        ; CODE XREF: FsRtlIsNonEmptyDirectoryReparsePointAllowed+4↑p
                                        ; DATA XREF: .pdata:00000001400D8D80↑o
                bt      ecx, 1Ch
                jb      short loc_14035BA82
                cmp     ecx, 80000018h
                jz      short loc_14035BA82
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14035BA82:                          ; CODE XREF: RtlIsNonEmptyDirectoryReparsePointAllowed+4↑j
                                        ; RtlIsNonEmptyDirectoryReparsePointAllowed+C↑j
                mov     al, 1
                retn
RtlIsNonEmptyDirectoryReparsePointAllowed endp

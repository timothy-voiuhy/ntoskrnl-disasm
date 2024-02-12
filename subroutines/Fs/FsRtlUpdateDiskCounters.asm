FsRtlUpdateDiskCounters proc near       ; DATA XREF: .pdata:00000001400D79E8↑o
                mov     rax, gs:20h
                test    rcx, rcx
                jz      short loc_140348E97
                lock xadd [rax+8580h], rcx

loc_140348E97:                          ; CODE XREF: FsRtlUpdateDiskCounters+C↑j
                test    rdx, rdx
                jnz     short loc_140348E9E
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140348E9E:                          ; CODE XREF: FsRtlUpdateDiskCounters+1A↑j
                lock xadd [rax+8588h], rdx
                retn
FsRtlUpdateDiskCounters endp

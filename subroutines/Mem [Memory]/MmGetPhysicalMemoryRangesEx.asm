MmGetPhysicalMemoryRangesEx proc near   ; DATA XREF: .pdata:000000014010F554↑o
                sub     rsp, 28h
                xor     edx, edx
                call    MmGetPhysicalMemoryRangesEx2
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGetPhysicalMemoryRangesEx endp

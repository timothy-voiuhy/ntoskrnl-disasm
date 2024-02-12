MmGetPhysicalMemoryRanges proc near     ; CODE XREF: sub_1403CADF4+20↑p
                                        ; sub_140501C08:loc_140501D59↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     edx, edx
                xor     ecx, ecx
                call    MmGetPhysicalMemoryRangesEx2
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGetPhysicalMemoryRanges endp

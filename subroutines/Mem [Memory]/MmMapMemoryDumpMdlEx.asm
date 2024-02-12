MmMapMemoryDumpMdlEx proc near          ; CODE XREF: sub_140995BB4+9C↓p
                                        ; sub_1409AD5BC+15A↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    r9d, 0FFFFFFFDh
                jnz     short loc_1403833FA
                call    sub_140383864
                xor     eax, eax

loc_1403833F4:                          ; CODE XREF: MmMapMemoryDumpMdlEx+1F↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403833FA:                          ; CODE XREF: MmMapMemoryDumpMdlEx+B↑j
                mov     eax, 0C00000F2h
                jmp     short loc_1403833F4
MmMapMemoryDumpMdlEx endp

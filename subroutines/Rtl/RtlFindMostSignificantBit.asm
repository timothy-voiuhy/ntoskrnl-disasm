RtlFindMostSignificantBit proc near     ; CODE XREF: sub_14065807C+23↓p
                                        ; sub_1408C8534+2D↓p
                                        ; DATA XREF: ...
                bsr     rdx, rcx
                mov     eax, 0FFFFFFFFh
                movzx   ecx, dl
                cmovnz  eax, ecx
                retn
RtlFindMostSignificantBit endp

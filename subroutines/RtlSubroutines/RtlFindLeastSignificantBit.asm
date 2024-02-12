RtlFindLeastSignificantBit proc near    ; CODE XREF: sub_1409A0B14+9↓p
                                        ; DATA XREF: .pdata:00000001400D83FC↑o
                bsf     rdx, rcx
                mov     eax, 0FFFFFFFFh
                movzx   ecx, dl
                cmovnz  eax, ecx
                retn
RtlFindLeastSignificantBit endp

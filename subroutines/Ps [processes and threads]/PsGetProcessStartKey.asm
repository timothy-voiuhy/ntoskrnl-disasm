PsGetProcessStartKey proc near          ; CODE XREF: sub_1405F1014+1C5↓p
                                        ; sub_1405F324C+5D↓p ...
                mov     rax, 0FFFFF780000002C4h
                mov     eax, [rax]
                shl     rax, 30h
                or      rax, [rcx+8F8h]
                retn
PsGetProcessStartKey endp

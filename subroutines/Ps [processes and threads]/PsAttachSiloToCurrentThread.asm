PsAttachSiloToCurrentThread proc near   ; CODE XREF: sub_1405D125C+1D↓p
                                        ; sub_140649AF0+4E8↓p ...
                mov     rdx, gs:188h
                mov     rax, [rdx+608h]
                mov     [rdx+608h], rcx
                retn
PsAttachSiloToCurrentThread endp

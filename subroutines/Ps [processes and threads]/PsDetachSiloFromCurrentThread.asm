PsDetachSiloFromCurrentThread proc near ; CODE XREF: sub_1405D125C+E7↓p
                                        ; sub_140649AF0+532↓p ...
                mov     rax, gs:188h
                mov     [rax+608h], rcx
                retn
PsDetachSiloFromCurrentThread endp

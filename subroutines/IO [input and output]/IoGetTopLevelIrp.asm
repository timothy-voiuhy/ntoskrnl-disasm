IoGetTopLevelIrp proc near              ; CODE XREF: sub_14061BEE0+14D↓p
                                        ; FsRtlCopyRead+29↓p ...
                mov     rax, gs:188h
                mov     rax, [rax+4C0h]
                retn
IoGetTopLevelIrp endp

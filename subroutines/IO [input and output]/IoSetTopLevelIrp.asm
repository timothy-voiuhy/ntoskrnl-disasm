IoSetTopLevelIrp proc near              ; CODE XREF: sub_14061BEE0+15E↓p
                                        ; CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+B6↓p ...
                mov     rax, gs:188h
                mov     [rax+4C0h], rcx
                retn
IoSetTopLevelIrp endp

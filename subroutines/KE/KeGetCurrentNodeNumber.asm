KeGetCurrentNodeNumber proc near        ; CODE XREF: sub_1406573B0+B2↓p
                                        ; sub_140659560+2F3↓p ...
                mov     rax, gs:20h
                mov     rcx, [rax+0C0h]
                movzx   eax, word ptr [rcx+92h]
                retn
KeGetCurrentNodeNumber endp

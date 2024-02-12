SeSetAccessStateGenericMapping proc near
                                        ; CODE XREF: sub_140653C50+2A7↑p
                                        ; DATA XREF: .pdata:00000001400FF828↑o
                mov     rax, [rcx+48h]
                movups  xmm0, xmmword ptr [rdx]
                movdqu  xmmword ptr [rax+8], xmm0
                retn
SeSetAccessStateGenericMapping endp

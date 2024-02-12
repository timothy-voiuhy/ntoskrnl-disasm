FsRtlInitializeExtraCreateParameter proc near
                                        ; DATA XREF: .pdata:0000000140106FF8↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, [rsp+arg_20]
                xor     r10d, r10d
                mov     qword ptr [rcx], 48706345h
                mov     [rcx+10h], r10
                mov     [rcx+8], r10
                movups  xmm0, xmmword ptr [rax]
                mov     rax, [rsp+arg_28]
                mov     [rcx+28h], r8
                movdqu  xmmword ptr [rcx+18h], xmm0
                mov     [rcx+30h], edx
                mov     [rcx+34h], r9d
                mov     [rcx+38h], rax
                mov     [rcx+40h], r10
                retn
FsRtlInitializeExtraCreateParameter endp

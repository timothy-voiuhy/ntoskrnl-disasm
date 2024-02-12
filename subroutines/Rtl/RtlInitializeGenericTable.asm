RtlInitializeGenericTable proc near     ; DATA XREF: .pdata:00000001400D8E88↑o

arg_20          = qword ptr  28h

                lea     rax, [rcx+8]
                mov     [rcx+28h], rdx
                xor     r10d, r10d
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx+18h], rax
                mov     rax, [rsp+arg_20]
                mov     [rcx+40h], rax
                mov     [rcx], r10
                mov     [rcx+20h], r10
                mov     [rcx+30h], r8
                mov     [rcx+38h], r9
                retn
RtlInitializeGenericTable endp

IoCsqInitialize proc near               ; DATA XREF: .pdata:00000001400D8E1C↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, [rsp+arg_20]
                and     qword ptr [rcx+38h], 0
                mov     [rcx+20h], rax
                mov     rax, [rsp+arg_28]
                mov     [rcx+28h], rax
                mov     rax, [rsp+arg_30]
                mov     [rcx+30h], rax
                xor     eax, eax
                mov     [rcx+8], rdx
                mov     [rcx+10h], r8
                mov     [rcx+18h], r9
                mov     dword ptr [rcx], 2
                retn
IoCsqInitialize endp

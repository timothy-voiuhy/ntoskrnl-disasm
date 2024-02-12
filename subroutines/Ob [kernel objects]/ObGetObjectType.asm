ObGetObjectType proc near               ; DATA XREF: .pdata:000000014010608C↑o
                lea     rax, [rcx-30h]
                movzx   ecx, byte ptr [rcx-18h]
                shr     rax, 8
                movzx   eax, al
                xor     rax, rcx
                movzx   ecx, byte ptr cs:dword_140CFC728
                xor     rax, rcx
                lea     rcx, qword_140CFCE60
                mov     rax, [rcx+rax*8]
                retn
ObGetObjectType endp

MmGetVirtualForPhysical proc near       ; DATA XREF: .pdata:00000001400F48F0↑o
                mov     rax, rcx
                shr     rax, 0Ch
                lea     rdx, [rax+rax*2]
                add     rdx, rdx
                mov     rax, 0FFFFFA8000000008h
                mov     rax, [rax+rdx*8]
                shl     rax, 19h
                mov     rdx, 0FFFFF68000000000h
                shl     rdx, 19h
                and     ecx, 0FFFh
                sub     rax, rdx
                sar     rax, 10h
                add     rax, rcx
                retn
MmGetVirtualForPhysical endp

KeSaveStateForHibernate proc near       ; CODE XREF: sub_1403F98E0+E↑p
                                        ; sub_1403F9960+45↑p ...

var_8           = qword ptr -8
arg_0           = byte ptr  8

                sub     rsp, 28h
                mov     [rsp+28h+var_8], rcx
                add     rcx, 0F0h
                call    RtlCaptureContext
                mov     rcx, [rsp+28h+var_8]
                add     rcx, 0F0h
                mov     r8w, 2Bh ; '+'
                mov     [rcx+40h], r8w
                mov     r8w, 53h ; 'S'
                mov     [rcx+3Eh], r8w
                lea     r8, [rcx-0F0h]
                mov     ecx, 0C0000100h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0E0h], rax
                mov     ecx, 0C0000101h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0A8h], rax
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0B0h], rax
                mov     ecx, 0C0000081h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0B8h], rax
                mov     ecx, 0C0000082h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0C0h], rax
                mov     ecx, 0C0000083h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0C8h], rax
                mov     ecx, 0C0000084h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8+0D0h], rax
                mov     rax, [rsp+28h]
                mov     [r8+1E8h], rax
                lea     rax, [rsp+28h+arg_0]
                mov     [r8+188h], rax
                mov     rcx, r8
                call    sub_1403FDA80
                mov     rcx, [rsp+28h+var_8]
                mov     r8, [rcx+10h]
                and     r8, 0FFFFFFFFFFFFFFFCh
                mov     [rcx+10h], r8
                mov     rcx, [rsp+28h+var_8]
                mov     r8, [rcx+18h]
                and     r8, 0FFFFFFFFFF7FFFFFh
                mov     [rcx+18h], r8
                mov     rcx, [rsp+28h+var_8]
                add     rcx, 1F0h
                fxsave  dword ptr [rcx]
                add     rsp, 28h
                retn
KeSaveStateForHibernate endp

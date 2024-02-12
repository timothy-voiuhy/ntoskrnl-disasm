IoCreateStreamFileObject proc near      ; DATA XREF: .pdata:000000014010B4F8↑o

arg_10          = qword ptr  18h

                mov     rax, rsp
                sub     rsp, 48h
                and     qword ptr [rax+18h], 0
                lea     r9, [rax+18h]
                and     qword ptr [rax-28h], 0
                xorps   xmm0, xmm0
                mov     r8, rdx
                mov     rdx, rcx
                movups  xmmword ptr [rax-18h], xmm0
                lea     rcx, [rax-18h]
                mov     dword ptr [rax-18h], 10010h
                call    IoCreateStreamFileObjectEx2
                mov     rax, [rsp+48h+arg_10]
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateStreamFileObject endp

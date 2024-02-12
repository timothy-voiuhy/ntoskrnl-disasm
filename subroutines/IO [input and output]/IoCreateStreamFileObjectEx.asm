IoCreateStreamFileObjectEx proc near    ; DATA XREF: .pdata:000000014010AB38↑o

arg_18          = qword ptr  20h

                mov     rax, rsp
                sub     rsp, 48h
                and     qword ptr [rax+20h], 0
                lea     r9, [rax+20h]
                mov     [rax-28h], r8
                xorps   xmm0, xmm0
                mov     r8, rdx
                mov     rdx, rcx
                movups  xmmword ptr [rax-18h], xmm0
                lea     rcx, [rax-18h]
                mov     dword ptr [rax-18h], 10010h
                call    IoCreateStreamFileObjectEx2
                mov     rax, [rsp+48h+arg_18]
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateStreamFileObjectEx endp

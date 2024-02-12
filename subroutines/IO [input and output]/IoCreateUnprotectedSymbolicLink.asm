IoCreateUnprotectedSymbolicLink proc near
                                        ; DATA XREF: .pdata:000000014011C9A0↑o

arg_0           = qword ptr  8

                mov     rax, rsp
                push    rbx
                sub     rsp, 50h
                and     dword ptr [rax-34h], 0
                lea     r8, [rax-38h]
                and     dword ptr [rax-1Ch], 0
                xorps   xmm0, xmm0
                and     qword ptr [rax+8], 0
                mov     r9, rdx
                and     qword ptr [rax-30h], 0
                mov     edx, 0F0001h
                mov     [rax-28h], rcx
                lea     rcx, [rax+8]
                movdqu  xmmword ptr [rax-18h], xmm0
                mov     dword ptr [rax-38h], 30h ; '0'
                mov     dword ptr [rax-20h], 250h
                call    ZwCreateSymbolicLinkObject
                mov     ebx, eax
                test    eax, eax
                js      short loc_140895299
                mov     rcx, [rsp+58h+arg_0]
                call    ZwClose

loc_140895299:                          ; CODE XREF: IoCreateUnprotectedSymbolicLink+4D↑j
                mov     eax, ebx
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateUnprotectedSymbolicLink endp

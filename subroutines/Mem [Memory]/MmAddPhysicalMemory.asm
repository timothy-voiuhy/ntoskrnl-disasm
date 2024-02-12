MmAddPhysicalMemory proc near           ; CODE XREF: sub_14095EF64+89↓p
                                        ; DATA XREF: .pdata:000000014011E650↑o

arg_0           = qword ptr  8

                sub     rsp, 28h
                mov     rax, [rcx]
                test    eax, 0FFFh
                mov     [rsp+28h+arg_0], rax
                mov     ecx, eax
                setnz   r8b
                test    al, 1
                setnz   al
                and     r8b, al
                jz      short loc_1408C7A28
                and     ecx, 0FFFFFFFEh
                mov     dword ptr [rsp+28h+arg_0], ecx

loc_1408C7A28:                          ; CODE XREF: MmAddPhysicalMemory+1F↑j
                movzx   r9d, r8b
                lea     rcx, unk_140C50C00
                mov     r8, rdx
                shl     r9d, 8
                lea     rdx, [rsp+28h+arg_0]
                call    sub_1408C6B0C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAddPhysicalMemory endp

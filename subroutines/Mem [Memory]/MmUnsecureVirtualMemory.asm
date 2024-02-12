MmUnsecureVirtualMemory proc near       ; CODE XREF: sub_14037128C:loc_1403712DE↑p
                                        ; sub_140661DB0+767↓p ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                lea     rdx, [rsp+28h+arg_0]
                mov     rbx, [rax+0B8h]
                xor     rbx, cs:qword_140C4DCD0
                xor     rbx, rcx
                mov     rcx, rbx
                call    sub_14026A010
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14065AEAC
                mov     rdx, rbx
                mov     rcx, rax
                call    sub_140269F00
                mov     rcx, rdi
                call    sub_140232610

loc_14065AEAC:                          ; CODE XREF: MmUnsecureVirtualMemory+37↑j
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmUnsecureVirtualMemory endp

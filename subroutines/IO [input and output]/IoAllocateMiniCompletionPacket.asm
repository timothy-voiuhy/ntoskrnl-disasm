IoAllocateMiniCompletionPacket proc near
                                        ; CODE XREF: sub_1405F3CF0+519↑p
                                        ; sub_14067E0B0+183↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     cl, 4
                call    sub_14067E78C
                test    rax, rax
                jz      short loc_14067E77A
                mov     [rax+38h], rdi
                mov     [rax+40h], rbx
                mov     byte ptr [rax+48h], 1

loc_14067E77A:                          ; CODE XREF: IoAllocateMiniCompletionPacket+1C↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateMiniCompletionPacket endp

HalHandleMcheck proc near               ; CODE XREF: sub_140512880+4↓p
                                        ; DATA XREF: .pdata:00000001400EE9C8↑o
                push    rbx
                sub     rsp, 20h
                mov     al, cs:byte_140C12065
                test    al, al
                jz      short loc_1404BCCCA
                test    r8, r8
                jz      short loc_1404BCCAC
                xorps   xmm0, xmm0
                movups  xmmword ptr [r8], xmm0

loc_1404BCCAC:                          ; CODE XREF: HalHandleMcheck+13↑j
                mov     rax, gs:18h
                mov     rbx, [rax+0D8h]
                mov     [rbx+20h], r8
                call    sub_1404BA41C
                and     qword ptr [rbx+20h], 0

loc_1404BCCCA:                          ; CODE XREF: HalHandleMcheck+E↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalHandleMcheck endp

ExFlushLookasideListEx proc near        ; CODE XREF: ExDeleteLookasideListEx+2B↑p
                                        ; DATA XREF: .pdata:00000001400D8294↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    ExpInterlockedFlushSList
                mov     rcx, rax
                test    rax, rax
                jz      short loc_140351A51

loc_140351A3A:                          ; CODE XREF: ExFlushLookasideListEx+2F↓j
                mov     rax, [rdi+38h]
                mov     rdx, rdi
                mov     rbx, [rcx]
                call    sub_1404079D0
                mov     rcx, rbx
                test    rbx, rbx
                jnz     short loc_140351A3A

loc_140351A51:                          ; CODE XREF: ExFlushLookasideListEx+18↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExFlushLookasideListEx endp

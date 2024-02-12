KeGetNextClockTickDuration proc near    ; CODE XREF: sub_1404BF730+7B↑p
                                        ; DATA XREF: .pdata:00000001400F3474↑o

arg_0           = byte ptr  8

                push    rbx
                sub     rsp, 20h
                lea     rcx, [rsp+28h+arg_0]
                xor     ebx, ebx
                call    sub_140250BC0
                mov     rcx, cs:qword_140C314A0
                cmp     rcx, rax
                jbe     short loc_140513E64
                mov     rbx, rcx
                sub     rbx, rax

loc_140513E64:                          ; CODE XREF: KeGetNextClockTickDuration+1C↑j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeGetNextClockTickDuration endp

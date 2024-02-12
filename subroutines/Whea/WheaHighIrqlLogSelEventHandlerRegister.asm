WheaHighIrqlLogSelEventHandlerRegister proc near
                                        ; DATA XREF: .pdata:00000001400FA500↑o
                push    rbx
                sub     rsp, 20h
                xor     r9d, r9d
                mov     r11, rdx
                cmp     dword ptr cs:xmmword_140C13DE0, r9d
                mov     rbx, rcx
                jnz     short loc_1405BD630
                lea     r10d, [r9+1]
                mov     cl, r10b
                call    sub_1405BD790
                cmp     dword ptr cs:xmmword_140C13DE0, r9d
                jnz     short loc_1405BD624
                mov     qword ptr cs:xmmword_140C13DE0+8, rbx
                mov     cs:qword_140C13DF0, r11
                mov     dword ptr cs:xmmword_140C13DE0, r10d
                jmp     short loc_1405BD627
; ---------------------------------------------------------------------------

loc_1405BD624:                          ; CODE XREF: WheaHighIrqlLogSelEventHandlerRegister+2B↑j
                mov     r10b, r9b

loc_1405BD627:                          ; CODE XREF: WheaHighIrqlLogSelEventHandlerRegister+42↑j
                xchg    r9d, dword ptr cs:xmmword_140C13DE0+4
                jmp     short loc_1405BD633
; ---------------------------------------------------------------------------

loc_1405BD630:                          ; CODE XREF: WheaHighIrqlLogSelEventHandlerRegister+16↑j
                mov     r10b, r9b

loc_1405BD633:                          ; CODE XREF: WheaHighIrqlLogSelEventHandlerRegister+4E↑j
                mov     al, r10b
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHighIrqlLogSelEventHandlerRegister endp

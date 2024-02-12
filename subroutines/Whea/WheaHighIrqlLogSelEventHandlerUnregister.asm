WheaHighIrqlLogSelEventHandlerUnregister proc near
                                        ; DATA XREF: .pdata:00000001400FA50C↑o
                sub     rsp, 28h
                xor     r9d, r9d
                cmp     dword ptr cs:xmmword_140C13DE0, r9d
                jz      short loc_1405BD683
                mov     cl, 1
                call    sub_1405BD790
                mov     qword ptr cs:xmmword_140C13DE0+8, r9
                mov     cs:qword_140C13DF0, r9
                mov     dword ptr cs:xmmword_140C13DE0, r9d
                xchg    r9d, dword ptr cs:xmmword_140C13DE0+4

loc_1405BD683:                          ; CODE XREF: WheaHighIrqlLogSelEventHandlerUnregister+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaHighIrqlLogSelEventHandlerUnregister endp

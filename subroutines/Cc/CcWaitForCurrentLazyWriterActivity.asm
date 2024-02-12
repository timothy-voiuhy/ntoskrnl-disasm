CcWaitForCurrentLazyWriterActivity proc near
                                        ; CODE XREF: sub_1409B3120+246↓p
                                        ; DATA XREF: .pdata:00000001400DB6F0↑o

arg_0           = dword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                lea     rdx, [rsp+28h+arg_0]
                xor     r8d, r8d
                lea     rcx, sub_140381180
                call    sub_1402FBF50
                mov     eax, [rsp+28h+arg_0]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcWaitForCurrentLazyWriterActivity endp

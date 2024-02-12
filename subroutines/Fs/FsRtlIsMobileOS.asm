FsRtlIsMobileOS proc near               ; CODE XREF: sub_140A3E728+50↓p
                                        ; sub_140A3E728+69↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                lea     rcx, [rsp+28h+arg_0]
                call    cs:TmCurrentTransaction_0
                nop     dword ptr [rax+rax+00h]
                cmp     eax, 0C00000BBh
                setz    al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlIsMobileOS endp

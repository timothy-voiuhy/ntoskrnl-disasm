KdEnableDebugger proc near              ; CODE XREF: sub_140339904+140BB7↑p
                                        ; sub_1407CE500:loc_1408626BF↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ecx, 1
                call    sub_1405120F8
                mov     cl, 1
                movzx   edi, al
                call    sub_140510EDC
                mov     ecx, edi
                mov     ebx, eax
                call    sub_1405120F8
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdEnableDebugger endp

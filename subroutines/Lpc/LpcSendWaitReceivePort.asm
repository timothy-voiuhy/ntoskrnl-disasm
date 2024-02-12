LpcSendWaitReceivePort proc near        ; CODE XREF: sub_1408889F0+7A↓p
                                        ; sub_140893850+232↓p ...

var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     r11, rsp
                push    rbx
                sub     rsp, 50h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, [rsp+58h+arg_28]
                or      edx, 2
                mov     [rsp+58h+var_18], 0
                mov     [r11-20h], rax
                and     qword ptr [r11-28h], 0
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-30h], rax
                mov     [r11-38h], r9
                xor     r9d, r9d
                call    sub_1406169E0
                mov     ebx, eax
                mov     eax, 0C0000037h
                cmp     ebx, 0C0000703h
                cmovz   ebx, eax
                mov     eax, 0C0000253h
                cmp     ebx, 0C0000701h
                cmovz   ebx, eax
                call    KeLeaveCriticalRegion
                mov     eax, ebx
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LpcSendWaitReceivePort endp

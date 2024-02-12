ExSubscribeWnfStateChange proc near     ; CODE XREF: sub_14056EFE4+9E↑p
                                        ; sub_14077F7D0+FB↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                push    rbx
                sub     rsp, 40h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_10], 0
                mov     [rsp+48h+var_18], r8d
                mov     r8, rdx
                mov     [rsp+48h+var_20], rax
                mov     rdx, rcx
                mov     rax, [rsp+48h+arg_20]
                xor     ecx, ecx
                mov     [rsp+48h+var_28], rax
                call    sub_1405EE8F4
                mov     ebx, eax
                call    KeLeaveCriticalRegion
                mov     eax, ebx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSubscribeWnfStateChange endp

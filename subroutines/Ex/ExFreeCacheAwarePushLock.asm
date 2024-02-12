ExFreeCacheAwarePushLock proc near      ; CODE XREF: ExAllocateCacheAwarePushLock+E9939↑p
                                        ; DATA XREF: .pdata:00000001400F9E94↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     rdi, rcx
                test    rax, rax
                jz      short loc_1405B4144
                mov     al, [rax+8]
                mov     rsi, rcx
                neg     al
                sbb     rbx, rbx
                and     rbx, 0FFFFFFFFFFFFFFE1h
                add     rbx, 20h ; ' '

loc_1405B412D:                          ; CODE XREF: ExFreeCacheAwarePushLock+42↓j
                mov     rcx, [rsi]
                test    rcx, rcx
                jz      short loc_1405B413A
                call    sub_14023C050

loc_1405B413A:                          ; CODE XREF: ExFreeCacheAwarePushLock+33↑j
                add     rsi, 8
                sub     rbx, 1
                jnz     short loc_1405B412D

loc_1405B4144:                          ; CODE XREF: ExFreeCacheAwarePushLock+18↑j
                mov     rcx, rdi
                call    sub_14023C050
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExFreeCacheAwarePushLock endp

AlpcInitializeMessageAttribute proc near
                                        ; CODE XREF: sub_140677634+83↓p
                                        ; sub_140888B20+320↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     ebp, ecx
                call    AlpcGetHeaderSize
                mov     eax, eax
                mov     [rbx], rax
                cmp     rax, rdi
                ja      short loc_1402B3B71
                test    rsi, rsi
                jz      short loc_1402B3B59
                and     dword ptr [rsi+4], 0
                mov     [rsi], ebp

loc_1402B3B59:                          ; CODE XREF: AlpcInitializeMessageAttribute+31↑j
                xor     eax, eax

loc_1402B3B5B:                          ; CODE XREF: AlpcInitializeMessageAttribute+56↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B3B71:                          ; CODE XREF: AlpcInitializeMessageAttribute+2C↑j
                mov     eax, 0C0000023h
                jmp     short loc_1402B3B5B
AlpcInitializeMessageAttribute endp

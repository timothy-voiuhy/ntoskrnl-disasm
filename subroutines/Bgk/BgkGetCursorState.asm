BgkGetCursorState proc near             ; DATA XREF: .pdata:000000014012BFB8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r8
                mov     rdi, rdx
                mov     rsi, rcx
                call    sub_1404FFA78
                test    al, al
                jnz     short loc_1409F8488
                mov     eax, 0C0000001h
                jmp     short loc_1409F84AA
; ---------------------------------------------------------------------------

loc_1409F8488:                          ; CODE XREF: BgkGetCursorState+1F↑j
                mov     rax, cs:qword_140C50A00
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rsi
                mov     rax, [rax+30h]
                call    sub_1404079D0
                mov     ebx, eax
                call    sub_1404FFAC4
                mov     eax, ebx

loc_1409F84AA:                          ; CODE XREF: BgkGetCursorState+26↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
BgkGetCursorState endp

ExInterlockedAddUlong proc near         ; DATA XREF: .pdata:00000001400DAEA4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rcx
                mov     rbp, r8
                mov     rcx, r8
                mov     edi, edx
                call    sub_14032F994
                mov     ebx, [rsi]
                mov     rcx, rbp
                lea     edx, [rbx+rdi]
                mov     [rsi], edx
                mov     dl, al
                call    sub_14032F8C4
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInterlockedAddUlong endp

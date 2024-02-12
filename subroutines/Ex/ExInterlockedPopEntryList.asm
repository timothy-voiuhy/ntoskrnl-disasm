ExInterlockedPopEntryList proc near     ; DATA XREF: .pdata:00000001400FA0EC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rsi, rdx
                mov     rcx, rdx
                call    sub_14032F994
                mov     rbx, [rdi]
                test    rbx, rbx
                jz      short loc_1405B718B
                mov     r8, [rbx]
                mov     [rdi], r8

loc_1405B718B:                          ; CODE XREF: ExInterlockedPopEntryList+23↑j
                mov     dl, al
                mov     rcx, rsi
                call    sub_14032F8C4
                mov     rsi, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInterlockedPopEntryList endp

ExInterlockedInsertHeadList proc near   ; CODE XREF: CcCanIWrite+1D7EEC↓p
                                        ; CcDeferWrite+18D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140477084 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rbp, r8
                mov     rcx, r8
                mov     rsi, rdx
                call    sub_14032F994
                mov     rbx, [rdi]
                cmp     [rbx+8], rdi
                jnz     FatalListEntryError_29
                mov     [rsi], rbx
                mov     dl, al
                mov     [rsi+8], rdi
                mov     rcx, rbp
                mov     [rbx+8], rsi
                mov     [rdi], rsi
                call    sub_14032F8C4
                mov     rbp, [rsp+28h+arg_8]
                xor     eax, eax
                mov     rsi, [rsp+28h+arg_10]
                cmp     rbx, rdi
                cmovz   rbx, rax
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInterlockedInsertHeadList endp

ExInterlockedInsertTailList proc near   ; CODE XREF: IoWMIWriteEvent+BE↓p
                                        ; CcCanIWrite:loc_14043D223↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047708C SIZE 00000007 BYTES

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
                mov     rbx, [rdi+8]
                cmp     [rbx], rdi
                jnz     FatalListEntryError_30
                mov     [rsi], rdi
                mov     dl, al
                mov     [rsi+8], rbx
                mov     rcx, rbp
                mov     [rbx], rsi
                mov     [rdi+8], rsi
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
ExInterlockedInsertTailList endp

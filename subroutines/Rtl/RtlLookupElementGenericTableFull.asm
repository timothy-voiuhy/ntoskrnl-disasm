RtlLookupElementGenericTableFull proc near
                                        ; DATA XREF: .pdata:00000001400F7E54↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r9
                mov     rdi, r8
                mov     rsi, rcx
                call    sub_140327ACC
                mov     [rbx], eax
                cmp     eax, 1
                jnz     short loc_14058C058
                mov     rcx, [rdi]
                call    RtlSplay
                mov     [rsi], rax
                mov     rax, [rdi]
                add     rax, 28h ; '('
                jmp     short loc_14058C05A
; ---------------------------------------------------------------------------

loc_14058C058:                          ; CODE XREF: RtlLookupElementGenericTableFull+22↑j
                xor     eax, eax

loc_14058C05A:                          ; CODE XREF: RtlLookupElementGenericTableFull+36↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlLookupElementGenericTableFull endp

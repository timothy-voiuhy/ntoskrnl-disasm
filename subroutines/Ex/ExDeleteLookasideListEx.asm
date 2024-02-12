ExDeleteLookasideListEx proc near       ; DATA XREF: .pdata:00000001400D8288↑o
                push    rbx
                sub     rsp, 20h
                mov     eax, [rcx+24h]
                mov     rbx, rcx
                test    al, 1
                lea     rcx, qword_140C168D8
                lea     rax, qword_140C16900
                mov     rdx, rbx
                cmovnz  rcx, rax
                call    sub_140351A64
                mov     rcx, rbx
                call    ExFlushLookasideListEx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExDeleteLookasideListEx endp

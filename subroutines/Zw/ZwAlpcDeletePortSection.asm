ZwAlpcDeletePortSection proc near       ; DATA XREF: .pdata:00000001400E22E4↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 80h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcDeletePortSection endp

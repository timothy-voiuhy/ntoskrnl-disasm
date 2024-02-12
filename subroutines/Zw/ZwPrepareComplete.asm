ZwPrepareComplete proc near             ; DATA XREF: .pdata:00000001400E2B6C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 136h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwPrepareComplete endp

ZwCreateJobObject proc near             ; DATA XREF: .pdata:00000001400E250C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0AEh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateJobObject endp

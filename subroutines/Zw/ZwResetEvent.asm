ZwResetEvent    proc near               ; CODE XREF: sub_1405DDE84+58↓p
                                        ; sub_140724C50+D2↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 17Ah
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwResetEvent    endp

; ---------------------------------------------------------------------------
algn_1403FCB3F:                         ; DATA XREF: .pdata:00000001400E2E9C↑o
                align 20h
; Exported entry 2889. ZwResetWriteWatch

; =============== S U B R O U T I N E =======================================



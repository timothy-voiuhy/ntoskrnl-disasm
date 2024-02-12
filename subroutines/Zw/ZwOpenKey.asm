ZwOpenKey       proc near               ; CODE XREF: sub_140399850+6D↑p
                                        ; sub_14039A500+5F↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 12h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenKey       endp

; ---------------------------------------------------------------------------
algn_1403F9E3F:                         ; DATA XREF: .pdata:00000001400E1DBC↑o
                align 20h
; Exported entry 2774. ZwEnumerateValueKey

; =============== S U B R O U T I N E =======================================



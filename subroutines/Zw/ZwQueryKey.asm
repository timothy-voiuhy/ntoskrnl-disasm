ZwQueryKey      proc near               ; CODE XREF: sub_14039B5A8+E↑p
                                        ; sub_14050C3EC+46↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 16h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryKey      endp

; ---------------------------------------------------------------------------
algn_1403F9EBF:                         ; DATA XREF: .pdata:00000001400E1DEC↑o
                align 20h
; Exported entry 2872. ZwQueryValueKey

; =============== S U B R O U T I N E =======================================



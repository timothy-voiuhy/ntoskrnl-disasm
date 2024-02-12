ZwOpenKeyEx     proc near               ; CODE XREF: sub_14062CF1C+B5↓p
                                        ; sub_140A75B04+17A78↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 121h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenKeyEx     endp

; ---------------------------------------------------------------------------
algn_1403FC01F:                         ; DATA XREF: .pdata:00000001400E2A70↑o
                align 20h
; Exported entry 2812. ZwOpenKeyTransacted

; =============== S U B R O U T I N E =======================================



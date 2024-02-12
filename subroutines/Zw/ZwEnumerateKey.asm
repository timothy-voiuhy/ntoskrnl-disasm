ZwEnumerateKey  proc near               ; CODE XREF: sub_14039B508+19↑p
                                        ; sub_1403A8450+94↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 32h ; '2'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwEnumerateKey  endp

; ---------------------------------------------------------------------------
algn_1403FA23F:                         ; DATA XREF: .pdata:00000001400E1F3C↑o
                align 20h
; Exported entry 2808. ZwOpenFile

; =============== S U B R O U T I N E =======================================



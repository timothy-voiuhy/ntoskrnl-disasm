ZwStartProfile  proc near               ; DATA XREF: .pdata:00000001400E319C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1BAh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwStartProfile  endp

; ---------------------------------------------------------------------------
algn_1403FD33F:                         ; DATA XREF: .pdata:00000001400E319C↑o
                align 20h
; Exported entry 2931. ZwStopProfile

; =============== S U B R O U T I N E =======================================



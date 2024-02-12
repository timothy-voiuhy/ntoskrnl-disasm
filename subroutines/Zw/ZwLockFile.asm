ZwLockFile      proc near               ; DATA XREF: .pdata:00000001400E2968↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 10Bh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwLockFile      endp

; ---------------------------------------------------------------------------
algn_1403FBD5F:                         ; DATA XREF: .pdata:00000001400E2968↑o
                align 20h
; Exported entry 2794. ZwLockProductActivationKeys

; =============== S U B R O U T I N E =======================================



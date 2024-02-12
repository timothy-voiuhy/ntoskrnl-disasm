ZwUnlockFile    proc near               ; DATA XREF: .pdata:00000001400E3274↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1CCh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnlockFile    endp

; ---------------------------------------------------------------------------
algn_1403FD57F:                         ; DATA XREF: .pdata:00000001400E3274↑o
                align 20h
; Exported entry 2943. ZwUnlockVirtualMemory

; =============== S U B R O U T I N E =======================================



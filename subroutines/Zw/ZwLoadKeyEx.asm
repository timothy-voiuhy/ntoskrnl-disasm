ZwLoadKeyEx     proc near               ; CODE XREF: sub_140724F34+8B↓p
                                        ; DATA XREF: .pdata:00000001400E295C↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 10Ah
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwLoadKeyEx     endp

; ---------------------------------------------------------------------------
algn_1403FBD3F:                         ; DATA XREF: .pdata:00000001400E295C↑o
                align 20h
; Exported entry 2793. ZwLockFile

; =============== S U B R O U T I N E =======================================



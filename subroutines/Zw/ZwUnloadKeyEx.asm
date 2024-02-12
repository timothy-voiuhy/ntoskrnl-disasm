ZwUnloadKeyEx   proc near               ; CODE XREF: sub_140724EE8+33↓p
                                        ; DATA XREF: .pdata:00000001400E3268↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1CBh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnloadKeyEx   endp

; ---------------------------------------------------------------------------
algn_1403FD55F:                         ; DATA XREF: .pdata:00000001400E3268↑o
                align 20h
; Exported entry 2942. ZwUnlockFile

; =============== S U B R O U T I N E =======================================



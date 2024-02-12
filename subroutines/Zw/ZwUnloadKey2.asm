ZwUnloadKey2    proc near               ; CODE XREF: sub_140724EE8:loc_140724F26↓p
                                        ; sub_140778194+C4↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1CAh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnloadKey2    endp

; ---------------------------------------------------------------------------
algn_1403FD53F:                         ; DATA XREF: .pdata:00000001400E325C↑o
                align 20h
; Exported entry 2941. ZwUnloadKeyEx

; =============== S U B R O U T I N E =======================================



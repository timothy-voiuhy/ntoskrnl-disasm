ZwWriteFile     proc near               ; CODE XREF: sub_1405F7BD4+148↓p
                                        ; sub_1406DAF7C+207↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 8
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwWriteFile     endp

; ---------------------------------------------------------------------------
algn_1403F9CFF:                         ; DATA XREF: .pdata:00000001400E1D44↑o
                align 20h
; Exported entry 2882. ZwRemoveIoCompletion

; =============== S U B R O U T I N E =======================================



ZwReadFile      proc near               ; CODE XREF: sub_14035A69C+B2↑p
                                        ; sub_1403C8094+5D↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 6
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwReadFile      endp

; ---------------------------------------------------------------------------
algn_1403F9CBF:                         ; DATA XREF: .pdata:00000001400E1D2C↑o
                align 20h
; Exported entry 2766. ZwDeviceIoControlFile

; =============== S U B R O U T I N E =======================================



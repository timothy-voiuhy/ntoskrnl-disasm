ZwSetEvent      proc near               ; CODE XREF: sub_140724C50+130D05↓p
                                        ; sub_140907D40+186↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0Eh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetEvent      endp

; ---------------------------------------------------------------------------
algn_1403F9DBF:                         ; DATA XREF: .pdata:00000001400E1D8C↑o
                align 20h
; Exported entry 2730. ZwClose

; =============== S U B R O U T I N E =======================================



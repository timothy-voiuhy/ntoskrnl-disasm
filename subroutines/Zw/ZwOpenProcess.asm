ZwOpenProcess   proc near               ; CODE XREF: sub_1405C3FE0+19C↓p
                                        ; sub_1407AD0F0+91↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 26h ; '&'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenProcess   endp

; ---------------------------------------------------------------------------
algn_1403FA0BF:                         ; DATA XREF: .pdata:00000001400E1EAC↑o
                align 20h
; Exported entry 2907. ZwSetInformationFile

; =============== S U B R O U T I N E =======================================



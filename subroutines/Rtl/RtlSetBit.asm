RtlSetBit       proc near               ; DATA XREF: .pdata:00000001400D71B4↑o
                mov     rax, [rcx+8]
                bts     [rax], edx
                retn
RtlSetBit       endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14033FBA9:                         ; DATA XREF: .pdata:00000001400D71B4↑o
                align 10h
; Exported entry 1215. KeIsExecutingDpc

; =============== S U B R O U T I N E =======================================



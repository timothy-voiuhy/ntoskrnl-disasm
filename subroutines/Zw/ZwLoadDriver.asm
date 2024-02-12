ZwLoadDriver    proc near               ; CODE XREF: sub_140526EF0+5D↓p
                                        ; sub_140687200+1314↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 106h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwLoadDriver    endp

; ---------------------------------------------------------------------------
algn_1403FBCBF:                         ; DATA XREF: .pdata:00000001400E292C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FBCC0   proc near               ; DATA XREF: .pdata:00000001400E2938↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 107h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FBCC0   endp

; ---------------------------------------------------------------------------
algn_1403FBCDF:                         ; DATA XREF: .pdata:00000001400E2938↑o
                align 20h
; Exported entry 2791. ZwLoadKey

; =============== S U B R O U T I N E =======================================



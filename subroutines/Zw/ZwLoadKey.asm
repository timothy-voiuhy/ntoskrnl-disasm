ZwLoadKey       proc near               ; CODE XREF: sub_1407847D8+C8DBF↓p
                                        ; DATA XREF: .pdata:00000001400E2944↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 108h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwLoadKey       endp

; ---------------------------------------------------------------------------
algn_1403FBCFF:                         ; DATA XREF: .pdata:00000001400E2944↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FBD00   proc near               ; CODE XREF: sub_1407847D8+163↓p
                                        ; sub_1407847D8+C8DA9↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 109h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FBD00   endp

; ---------------------------------------------------------------------------
algn_1403FBD1F:                         ; DATA XREF: .pdata:00000001400E2950↑o
                align 20h
; Exported entry 2792. ZwLoadKeyEx

; =============== S U B R O U T I N E =======================================



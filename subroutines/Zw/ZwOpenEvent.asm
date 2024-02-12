ZwOpenEvent     proc near               ; CODE XREF: sub_140907D40+C6↓p
                                        ; DATA XREF: .pdata:00000001400E1FE4↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 40h ; '@'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenEvent     endp

; ---------------------------------------------------------------------------
algn_1403FA3FF:                         ; DATA XREF: .pdata:00000001400E1FE4↑o
                align 20h
; Exported entry 2697. ZwAdjustPrivilegesToken

; =============== S U B R O U T I N E =======================================



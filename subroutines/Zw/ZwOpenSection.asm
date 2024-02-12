ZwOpenSection   proc near               ; CODE XREF: sub_14071A690+175↓p
                                        ; sub_140A4991C+69↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 37h ; '7'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenSection   endp

; ---------------------------------------------------------------------------
algn_1403FA2DF:                         ; DATA XREF: .pdata:00000001400E1F78↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA2E0   proc near               ; DATA XREF: .pdata:00000001400E1F84↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 38h ; '8'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA2E0   endp

; ---------------------------------------------------------------------------
algn_1403FA2FF:                         ; DATA XREF: .pdata:00000001400E1F84↑o
                align 20h
; Exported entry 2781. ZwFsControlFile

; =============== S U B R O U T I N E =======================================



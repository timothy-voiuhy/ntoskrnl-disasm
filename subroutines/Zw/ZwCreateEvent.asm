ZwCreateEvent   proc near               ; CODE XREF: sub_1405F8488+5E↓p
                                        ; IoCreateNotificationEvent+56↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 48h ; 'H'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwCreateEvent   endp

; ---------------------------------------------------------------------------
algn_1403FA4FF:                         ; DATA XREF: .pdata:00000001400E2044↑o
                align 20h
; Exported entry 2874. ZwQueryVolumeInformationFile

; =============== S U B R O U T I N E =======================================



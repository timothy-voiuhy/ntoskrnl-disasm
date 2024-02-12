ZwClose         proc near               ; CODE XREF: RtlCheckTokenMembershipEx:loc_1402B4C4E↑p
                                        ; sub_14031186C+1D↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0Fh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwClose         endp

; ---------------------------------------------------------------------------
algn_1403F9DDF:                         ; DATA XREF: .pdata:00000001400E1D98↑o
                align 20h
; Exported entry 2862. ZwQueryObject

; =============== S U B R O U T I N E =======================================



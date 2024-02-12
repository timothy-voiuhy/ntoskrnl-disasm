ZwQueryInstallUILanguage proc near      ; CODE XREF: sub_14078FCD4+29↓p
                                        ; DATA XREF: .pdata:00000001400E2CB0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 151h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryInstallUILanguage endp

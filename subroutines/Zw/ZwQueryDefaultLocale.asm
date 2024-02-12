ZwQueryDefaultLocale proc near          ; CODE XREF: sub_1405F2830+6E↓p
                                        ; DATA XREF: .pdata:00000001400E1DE0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 15h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryDefaultLocale endp

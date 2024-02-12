ZwInitiatePowerAction proc near         ; CODE XREF: PoShutdownBugCheck+D4↓p
                                        ; DATA XREF: .pdata:00000001400E28FC↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 102h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwInitiatePowerAction endp

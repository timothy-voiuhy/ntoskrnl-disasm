ZwDeleteBootEntry proc near             ; CODE XREF: sub_140972F7C+3D↓p
                                        ; DATA XREF: .pdata:00000001400E26B0↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D1h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDeleteBootEntry endp

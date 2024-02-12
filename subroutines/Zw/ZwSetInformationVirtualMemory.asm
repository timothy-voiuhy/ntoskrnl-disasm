ZwSetInformationVirtualMemory proc near ; CODE XREF: sub_1402B0E84+31↑p
                                        ; sub_14067CB08+149↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1A0h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetInformationVirtualMemory endp

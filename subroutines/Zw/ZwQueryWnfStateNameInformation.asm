ZwQueryWnfStateNameInformation proc near
                                        ; CODE XREF: RtlRaiseCustomSystemEventTrigger+FF↓p
                                        ; RtlRaiseCustomSystemEventTrigger+135↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 165h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryWnfStateNameInformation endp

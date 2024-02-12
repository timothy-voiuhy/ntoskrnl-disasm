ZwQuerySystemEnvironmentValueEx proc near
                                        ; CODE XREF: sub_1407AD398+72↓p
                                        ; sub_140972FFC+88↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 161h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQuerySystemEnvironmentValueEx endp

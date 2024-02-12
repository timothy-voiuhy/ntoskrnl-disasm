ZwQueryInformationFile proc near        ; CODE XREF: sub_1403BD814+7C↑p
                                        ; sub_1404EEA08+220↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 11h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryInformationFile endp

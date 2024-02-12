ZwQueryInformationProcess proc near     ; CODE XREF: sub_1405C3FE0+1C4↓p
                                        ; sub_1405C3FE0+21A↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 19h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryInformationProcess endp

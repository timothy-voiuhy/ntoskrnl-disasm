ZwAlpcSetInformation proc near          ; CODE XREF: sub_140A7205C+1FC↓p
                                        ; sub_140A72C90+136↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 8Dh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcSetInformation endp

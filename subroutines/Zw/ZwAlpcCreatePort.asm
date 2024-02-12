ZwAlpcCreatePort proc near              ; CODE XREF: sub_140A7205C+17B↓p
                                        ; sub_140A72C90+B1↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 7Bh ; '{'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwAlpcCreatePort endp

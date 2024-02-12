ZwSetInformationFile proc near          ; CODE XREF: sub_1405F7EE0+466↓p
                                        ; sub_14066C04C:loc_14066C105↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 27h ; '''
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSetInformationFile endp

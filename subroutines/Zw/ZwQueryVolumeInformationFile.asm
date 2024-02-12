ZwQueryVolumeInformationFile proc near  ; CODE XREF: sub_1406DAF7C+A3↓p
                                        ; sub_1406DB5B4+6D↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 49h ; 'I'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryVolumeInformationFile endp

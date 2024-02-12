PsReleaseSiloHardReference proc near    ; CODE XREF: sub_14030D0CC+139↓p
                                        ; sub_14034ACD8+2B↓p ...
                test    rcx, rcx
                jz      short locret_140200914
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_14020091C
                mov     edx, 486C6953h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                add     rsp, 20h
                pop     rbx

locret_140200914:                       ; CODE XREF: PsReleaseSiloHardReference+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReleaseSiloHardReference endp

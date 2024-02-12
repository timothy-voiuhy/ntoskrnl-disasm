ZwQuerySecurityObject proc near         ; CODE XREF: RtlIsUntrustedObject:loc_14041EEF3↓p
                                        ; RtlIsUntrustedObject+21D0F9↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 15Ch
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQuerySecurityObject endp

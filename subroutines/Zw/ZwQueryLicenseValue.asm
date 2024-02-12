ZwQueryLicenseValue proc near           ; CODE XREF: CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+1DA↑p
                                        ; RtlGetProductInfo+B8↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 154h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryLicenseValue endp

PsDereferenceSiloContext proc near      ; CODE XREF: sub_140201F98+81↑p
                                        ; CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+3A6↑p ...
                sub     rsp, 28h        ; ObDereferenceObject
                                        ; ObfDereferenceObject
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsDereferenceSiloContext endp

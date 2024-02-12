IoGetDeviceAttachmentBaseRef proc near  ; CODE XREF: sub_140379D94+39↓p
                                        ; IoWMIDeviceObjectToInstanceName+2C↓p ...
                sub     rsp, 28h
                mov     edx, 746C6644h
                call    sub_140349A1C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetDeviceAttachmentBaseRef endp

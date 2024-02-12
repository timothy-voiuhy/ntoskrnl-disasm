RtlFreeUnicodeString proc near          ; CODE XREF: FsRtlIsNameInExpression+57↑p
                                        ; RtlDeriveCapabilitySidsFromName+EE↑p ...
                push    rbx             ; RtlFreeAnsiString
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jnz     short loc_1405E7C19

loc_1405E7C12:                          ; CODE XREF: RtlFreeUnicodeString+24↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E7C19:                          ; CODE XREF: RtlFreeUnicodeString+10↑j
                call    ExFreePoolWithTag
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx], xmm0
                jmp     short loc_1405E7C12
RtlFreeUnicodeString endp

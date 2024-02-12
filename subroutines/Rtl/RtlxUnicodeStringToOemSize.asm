RtlxUnicodeStringToOemSize proc near    ; CODE XREF: RtlUnicodeStringToOemString+22↑p
                                        ; RtlUpcaseUnicodeStringToOemString+27↑p ...

arg_0           = dword ptr  8

                sub     rsp, 28h        ; RtlUnicodeStringToOemSize
                movzx   r8d, word ptr [rcx]
                mov     rdx, [rcx+8]
                lea     rcx, [rsp+28h+arg_0]
                and     [rsp+28h+arg_0], 0
                call    RtlUnicodeToMultiByteSize
                mov     eax, [rsp+28h+arg_0]
                inc     eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlxUnicodeStringToOemSize endp

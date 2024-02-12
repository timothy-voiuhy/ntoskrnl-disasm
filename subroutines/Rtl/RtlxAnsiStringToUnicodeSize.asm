RtlxAnsiStringToUnicodeSize proc near   ; CODE XREF: sub_1405C6CC8+37↑p
                                        ; RtlAnsiStringToUnicodeString+2A↑p ...

arg_0           = dword ptr  8

                sub     rsp, 28h        ; RtlAnsiStringToUnicodeSize
                movzx   r8d, word ptr [rcx]
                mov     rdx, [rcx+8]
                lea     rcx, [rsp+28h+arg_0]
                and     [rsp+28h+arg_0], 0
                call    RtlMultiByteToUnicodeSize
                mov     eax, [rsp+28h+arg_0]
                add     eax, 2
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlxAnsiStringToUnicodeSize endp

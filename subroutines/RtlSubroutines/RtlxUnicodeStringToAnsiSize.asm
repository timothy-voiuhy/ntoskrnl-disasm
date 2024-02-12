RtlxUnicodeStringToAnsiSize proc near   ; CODE XREF: sub_140371DF4+18↑p
                                        ; ObCreateObjectTypeEx+24E↓p ...

arg_0           = dword ptr  8

                sub     rsp, 28h        ; RtlUnicodeStringToAnsiSize
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
RtlxUnicodeStringToAnsiSize endp

RtlxOemStringToUnicodeSize proc near    ; CODE XREF: FsRtlNotifyFilterReportChange+749↑p
                                        ; FsRtlNotifyFilterReportChange+7BF↑p ...

arg_0           = dword ptr  8

                sub     rsp, 28h        ; RtlOemStringToUnicodeSize
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
RtlxOemStringToUnicodeSize endp

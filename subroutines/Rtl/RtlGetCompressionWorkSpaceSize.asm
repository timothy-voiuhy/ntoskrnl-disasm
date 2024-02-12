RtlGetCompressionWorkSpaceSize proc near
                                        ; CODE XREF: sub_1402EF980+B6↑p
                                        ; sub_140304C18+1BA↓p ...
                sub     rsp, 28h
                movzx   eax, cx
                mov     r9d, 0FFh
                and     ax, r9w
                cmp     ax, 2
                jb      short loc_1402EFB37
                cmp     ax, 4
                ja      short loc_1402EFB30
                movzx   eax, ax
                lea     r10, qword_140006318
                mov     r9d, 0FF00h
                and     cx, r9w
                mov     rax, [r10+rax*8]
                call    sub_1404079D0

loc_1402EFB2A:                          ; CODE XREF: RtlGetCompressionWorkSpaceSize+45↓j
                                        ; RtlGetCompressionWorkSpaceSize+4C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402EFB30:                          ; CODE XREF: RtlGetCompressionWorkSpaceSize+1B↑j
                mov     eax, 0C000025Fh
                jmp     short loc_1402EFB2A
; ---------------------------------------------------------------------------

loc_1402EFB37:                          ; CODE XREF: RtlGetCompressionWorkSpaceSize+15↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1402EFB2A
RtlGetCompressionWorkSpaceSize endp

RtlDescribeChunk proc near              ; DATA XREF: .pdata:0000000140121E00↑o

arg_20          = qword ptr  28h

                push    rbx
                sub     rsp, 30h
                mov     eax, 0FFh
                mov     r10, r9
                and     cx, ax
                mov     r11, r8
                mov     rbx, rdx
                cmp     cx, 2
                jb      short loc_140911E2D
                cmp     cx, 4
                jbe     short loc_140911E0A
                mov     eax, 0C000025Fh
                jmp     short loc_140911E32
; ---------------------------------------------------------------------------

loc_140911E0A:                          ; CODE XREF: RtlDescribeChunk+21↑j
                mov     r9, [rsp+38h+arg_20]
                mov     r8, r10
                movzx   eax, cx
                mov     rdx, r11
                lea     rcx, qword_140986188
                mov     rax, [rcx+rax*8]
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     short loc_140911E32
; ---------------------------------------------------------------------------

loc_140911E2D:                          ; CODE XREF: RtlDescribeChunk+1B↑j
                mov     eax, 0C000000Dh

loc_140911E32:                          ; CODE XREF: RtlDescribeChunk+28↑j
                                        ; RtlDescribeChunk+4B↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlDescribeChunk endp

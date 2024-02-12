RtlDecompressBufferEx proc near         ; CODE XREF: sub_1402EF390+14B↑p
                                        ; sub_1402EF980+104↓p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                push    rbx
                sub     rsp, 40h
                mov     eax, 0FFh
                mov     r10, r9
                and     cx, ax
                mov     r11d, r8d
                mov     rbx, rdx
                cmp     cx, 2
                jb      short loc_1402EF7DE
                cmp     cx, 4
                ja      short loc_1402EF7D7
                mov     r9d, [rsp+48h+arg_20]
                mov     r8, r10
                movzx   eax, cx
                mov     edx, r11d
                lea     rcx, qword_1400062F0
                mov     rax, [rcx+rax*8]
                mov     rcx, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], rcx
                mov     rcx, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], rcx
                mov     rcx, rbx
                and     [rsp+48h+var_28], 0
                call    sub_1404079D0

loc_1402EF7D0:                          ; CODE XREF: RtlDecompressBufferEx+6C↓j
                                        ; RtlDecompressBufferEx+73↓j
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EF7D7:                          ; CODE XREF: RtlDecompressBufferEx+21↑j
                mov     eax, 0C000025Fh
                jmp     short loc_1402EF7D0
; ---------------------------------------------------------------------------

loc_1402EF7DE:                          ; CODE XREF: RtlDecompressBufferEx+1B↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1402EF7D0
RtlDecompressBufferEx endp

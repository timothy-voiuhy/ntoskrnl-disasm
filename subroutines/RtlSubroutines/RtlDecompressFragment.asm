RtlDecompressFragment proc near         ; DATA XREF: .pdata:0000000140121DF4↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                push    rbx
                sub     rsp, 50h
                mov     eax, 0FFh
                mov     r10, r9
                and     cx, ax
                mov     r11d, r8d
                mov     rbx, rdx
                cmp     cx, 2
                jb      short loc_140911DCA
                cmp     cx, 4
                jbe     short loc_140911D7A
                mov     eax, 0C000025Fh
                jmp     short loc_140911DCF
; ---------------------------------------------------------------------------

loc_140911D7A:                          ; CODE XREF: RtlDecompressFragment+21↑j
                mov     r9d, [rsp+58h+arg_20]
                mov     r8, r10
                movzx   eax, cx
                mov     edx, r11d
                lea     rcx, qword_140985D08
                mov     rax, [rcx+rax*8]
                mov     rcx, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], rcx
                mov     rcx, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], rcx
                and     [rsp+58h+var_30], 0
                mov     ecx, [rsp+58h+arg_28]
                mov     [rsp+58h+var_38], ecx
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     short loc_140911DCF
; ---------------------------------------------------------------------------

loc_140911DCA:                          ; CODE XREF: RtlDecompressFragment+1B↑j
                mov     eax, 0C000000Dh

loc_140911DCF:                          ; CODE XREF: RtlDecompressFragment+28↑j
                                        ; RtlDecompressFragment+78↑j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlDecompressFragment endp

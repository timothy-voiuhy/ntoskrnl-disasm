RtlCompressBuffer proc near             ; CODE XREF: sub_1402108D4+8D↑p
                                        ; sub_140210E00+21385D↓p ...

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                sub     rsp, 58h
                movzx   eax, cx
                movzx   r10d, cx
                mov     ecx, 0FFh
                and     ax, cx
                cmp     ax, 2
                jb      short loc_140210B1C
                cmp     ax, 4
                ja      short loc_140210B15
                mov     ecx, 0FF00h
                movzx   eax, ax
                and     r10w, cx
                lea     r11, qword_140006270
                mov     rcx, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], rcx
                mov     rcx, [rsp+58h+arg_30]
                mov     rax, [r11+rax*8]
                mov     [rsp+58h+var_28], rcx
                mov     ecx, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], ecx
                mov     ecx, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], ecx
                movzx   ecx, r10w
                call    sub_1404079D0

loc_140210B0F:                          ; CODE XREF: RtlCompressBuffer+7A↓j
                                        ; RtlCompressBuffer+81↓j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140210B15:                          ; CODE XREF: RtlCompressBuffer+1D↑j
                mov     eax, 0C000025Fh
                jmp     short loc_140210B0F
; ---------------------------------------------------------------------------

loc_140210B1C:                          ; CODE XREF: RtlCompressBuffer+17↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140210B0F
RtlCompressBuffer endp

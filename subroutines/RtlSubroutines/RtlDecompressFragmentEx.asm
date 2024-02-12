RtlDecompressFragmentEx proc near       ; DATA XREF: .pdata:00000001400D9338↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

                push    rbx
                sub     rsp, 50h
                mov     eax, 0FFh
                mov     r10, r9
                and     cx, ax
                mov     r11d, r8d
                mov     rbx, rdx
                cmp     cx, 2
                jb      short loc_140361285
                cmp     cx, 4
                ja      short loc_14036127E
                mov     r9d, [rsp+58h+arg_20]
                mov     r8, r10
                movzx   eax, cx
                mov     edx, r11d
                lea     rcx, qword_140985D08
                mov     rax, [rcx+rax*8]
                mov     rcx, [rsp+58h+arg_40]
                mov     [rsp+58h+var_20], rcx
                mov     rcx, [rsp+58h+arg_38]
                mov     [rsp+58h+var_28], rcx
                mov     ecx, [rsp+58h+arg_30]
                mov     [rsp+58h+var_30], ecx
                mov     ecx, [rsp+58h+arg_28]
                mov     [rsp+58h+var_38], ecx
                mov     rcx, rbx
                call    sub_1404079D0

loc_140361277:                          ; CODE XREF: RtlDecompressFragmentEx+83↓j
                                        ; RtlDecompressFragmentEx+8A↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036127E:                          ; CODE XREF: RtlDecompressFragmentEx+21↑j
                mov     eax, 0C000025Fh
                jmp     short loc_140361277
; ---------------------------------------------------------------------------

loc_140361285:                          ; CODE XREF: RtlDecompressFragmentEx+1B↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140361277
RtlDecompressFragmentEx endp

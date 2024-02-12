RtlDecompressBufferEx2 proc near        ; DATA XREF: .pdata:00000001400D95FC↑o

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                push    rbx
                sub     rsp, 40h
                mov     eax, 0FFh
                mov     r10, r9
                and     cx, ax
                mov     r11d, r8d
                mov     rbx, rdx
                cmp     cx, 2
                jb      short loc_140362DF4
                cmp     cx, 4
                ja      short loc_140362DED
                mov     r9d, [rsp+48h+arg_20]
                mov     r8, r10
                movzx   eax, cx
                mov     edx, r11d
                lea     rcx, qword_1400062F0
                mov     rax, [rcx+rax*8]
                mov     rcx, [rsp+48h+arg_38]
                mov     [rsp+48h+var_18], rcx
                mov     rcx, [rsp+48h+arg_30]
                mov     [rsp+48h+var_20], rcx
                mov     ecx, [rsp+48h+arg_28]
                mov     [rsp+48h+var_28], ecx
                mov     rcx, rbx
                call    sub_1404079D0

loc_140362DE6:                          ; CODE XREF: RtlDecompressBufferEx2+72↓j
                                        ; RtlDecompressBufferEx2+79↓j
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140362DED:                          ; CODE XREF: RtlDecompressBufferEx2+21↑j
                mov     eax, 0C000025Fh
                jmp     short loc_140362DE6
; ---------------------------------------------------------------------------

loc_140362DF4:                          ; CODE XREF: RtlDecompressBufferEx2+1B↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140362DE6
RtlDecompressBufferEx2 endp

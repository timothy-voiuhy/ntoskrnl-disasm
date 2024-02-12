SeSetSecurityDescriptorInfo proc near   ; CODE XREF: ObSetSecurityDescriptorInfo+7A↓p
                                        ; sub_14076986C+AB↓p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                xor     r10d, r10d
                cmp     [r9], r10
                jz      short loc_140624675
                mov     rax, [rsp+48h+arg_28]
                mov     edx, [rdx]
                mov     [rsp+48h+var_10], r10
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], eax
                mov     [rsp+48h+var_28], r10d
                call    sub_140623930

loc_14062466F:                          ; CODE XREF: SeSetSecurityDescriptorInfo+3A↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140624675:                          ; CODE XREF: SeSetSecurityDescriptorInfo+A↑j
                mov     eax, 0C00000D7h
                jmp     short loc_14062466F
SeSetSecurityDescriptorInfo endp

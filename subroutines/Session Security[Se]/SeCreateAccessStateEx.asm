SeCreateAccessStateEx proc near         ; CODE XREF: SeCreateAccessState+33↑p
                                        ; sub_140675164+9D↓p ...

var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 50h
                xorps   xmm0, xmm0
                mov     rdi, r8
                lea     r8, [rax-28h]
                mov     rbx, r9
                movups  xmmword ptr [rax-28h], xmm0
                movups  xmmword ptr [rax-18h], xmm0
                call    SeCaptureSubjectContextEx
                mov     rax, [rsp+58h+arg_28]
                lea     rcx, [rsp+58h+var_28]
                mov     r9d, [rsp+58h+arg_20]
                mov     r8, rbx
                mov     rdx, rdi
                mov     [rsp+58h+var_38], rax
                call    sub_14024C690
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeCreateAccessStateEx endp

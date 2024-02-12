SeSinglePrivilegeCheck proc near        ; CODE XREF: NtSetInformationFile+A50↑p
                                        ; sub_14034F684+31↑p ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rbx, rcx
                lea     rcx, [rax-28h]
                mov     dil, dl
                movups  xmmword ptr [rax-28h], xmm0
                movups  xmmword ptr [rax-18h], xmm0
                call    SeCaptureSubjectContext
                mov     r8b, dil
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rbx
                call    sub_140629158
                lea     rcx, [rsp+48h+var_28]
                mov     bl, al
                call    SeReleaseSubjectContext
                mov     al, bl
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeSinglePrivilegeCheck endp

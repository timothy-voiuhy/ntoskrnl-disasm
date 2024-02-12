SeDeleteObjectAuditAlarmWithTransaction proc near
                                        ; CODE XREF: sub_1405FB990+1FCC73↑p
                                        ; sub_14071EDD0+10F9D9↑p ...

var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 50h
                xorps   xmm0, xmm0
                mov     rbx, rcx
                lea     rcx, [rax-28h]
                mov     rdi, r8
                movups  xmmword ptr [rax-28h], xmm0
                mov     rsi, rdx
                movups  xmmword ptr [rax-18h], xmm0
                call    SeCaptureSubjectContext
                mov     r9, rbx
                mov     [rsp+58h+var_30], 1
                lea     r8, [rsp+58h+var_28]
                mov     [rsp+58h+var_38], rdi
                mov     rdx, rsi
                lea     rcx, qword_1400019C0
                call    sub_1409203F4
                lea     rcx, [rsp+58h+var_28]
                call    SeReleaseSubjectContext
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeDeleteObjectAuditAlarmWithTransaction endp

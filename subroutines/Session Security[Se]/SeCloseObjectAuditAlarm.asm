SeCloseObjectAuditAlarm proc near       ; CODE XREF: sub_140649AF0+35A↑p
                                        ; DATA XREF: .pdata:00000001401229C4↑o

var_38          = byte ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8

                test    r8b, r8b
                jz      short locret_140922A0B
                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 50h
                xorps   xmm0, xmm0
                mov     rdi, rcx
                lea     rcx, [rax-28h]
                mov     rbx, rdx
                movups  xmmword ptr [rax-28h], xmm0
                movups  xmmword ptr [rax-18h], xmm0
                call    SeCaptureSubjectContext
                mov     r9, rdi
                mov     [rsp+58h+var_38], 1
                lea     r8, [rsp+58h+var_28]
                mov     rdx, rbx
                lea     rcx, qword_1400019C0
                call    sub_1409201C8
                lea     rcx, [rsp+58h+var_28]
                call    SeReleaseSubjectContext
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi

locret_140922A0B:                       ; CODE XREF: SeCloseObjectAuditAlarm+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeCloseObjectAuditAlarm endp

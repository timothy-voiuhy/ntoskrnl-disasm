PoFxIssueComponentPerfStateChangeMultiple proc near
                                        ; CODE XREF: PoFxIssueComponentPerfStateChange+19↑p
                                        ; DATA XREF: .pdata:00000001400F6510↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     r11d, edx
                mov     edx, 1
                test    dl, r11b
                jz      short loc_14056929D
                mov     rax, cr8
                cmp     al, 2
                jb      short loc_14056929D
                mov     r9d, edx
                mov     r8d, r8d
                mov     rdx, rcx
                mov     ecx, 614h
                call    sub_1405695EC
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14056929D:                          ; CODE XREF: PoFxIssueComponentPerfStateChangeMultiple+F↑j
                                        ; PoFxIssueComponentPerfStateChangeMultiple+17↑j
                mov     eax, r11d
                mov     r10d, r8d
                and     eax, 3
                cmp     al, 3
                jnz     short loc_1405692BE
                mov     r9, rdx
                mov     r8d, r10d
                mov     rdx, rcx
                mov     ecx, 614h
                call    sub_1405695EC
; ---------------------------------------------------------------------------
                align 2

loc_1405692BE:                          ; CODE XREF: PoFxIssueComponentPerfStateChangeMultiple+38↑j
                cmp     r8d, [rcx+33Ch]
                jb      short loc_1405692DE
                mov     rdx, rcx
                mov     r9d, 2
                mov     ecx, 614h
                mov     r8, r10
                call    sub_1405695EC
; ---------------------------------------------------------------------------
                align 2

loc_1405692DE:                          ; CODE XREF: PoFxIssueComponentPerfStateChangeMultiple+55↑j
                mov     rdx, [rcx+340h]
                mov     r8d, r11d
                mov     rax, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], rax
                mov     rax, [rsp+38h+arg_20]
                mov     rdx, [rdx+r10*8]
                mov     [rsp+38h+var_18], rax
                call    sub_14056B610
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxIssueComponentPerfStateChangeMultiple endp

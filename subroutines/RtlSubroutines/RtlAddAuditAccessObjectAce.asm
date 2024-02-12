RtlAddAuditAccessObjectAce proc near    ; CODE XREF: sub_14078663C+CB4D5↑p
                                        ; DATA XREF: .pdata:0000000140121F38↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = byte ptr  48h

                sub     rsp, 48h
                mov     r11, [rsp+48h+arg_20]
                mov     eax, r8d
                or      eax, 40h
                mov     r10, rcx
                cmp     [rsp+48h+arg_38], 0
                mov     rcx, [rsp+48h+arg_28]
                cmovz   eax, r8d
                mov     r8d, eax
                bts     r8d, 7
                cmp     [rsp+48h+arg_40], 0
                cmovz   r8d, eax
                test    r11, r11
                jnz     short loc_140913D1D
                test    rcx, rcx
                jnz     short loc_140913D1D
                mov     rax, [rsp+48h+arg_30]
                mov     rcx, r10
                mov     byte ptr [rsp+48h+var_20], 2
                mov     [rsp+48h+var_28], rax
                call    sub_140622B20
                jmp     short loc_140913D41
; ---------------------------------------------------------------------------

loc_140913D1D:                          ; CODE XREF: RtlAddAuditAccessObjectAce+3A↑j
                                        ; RtlAddAuditAccessObjectAce+3F↑j
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_10], 7
                mov     [rsp+48h+var_18], rax
                mov     [rsp+48h+var_20], rcx
                mov     rcx, r10
                mov     [rsp+48h+var_28], r11
                call    sub_140914080

loc_140913D41:                          ; CODE XREF: RtlAddAuditAccessObjectAce+5B↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAuditAccessObjectAce endp

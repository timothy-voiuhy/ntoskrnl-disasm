RtlAddAccessDeniedObjectAce proc near   ; CODE XREF: sub_14078663C+CB50F↑p
                                        ; DATA XREF: .pdata:0000000140121F08↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                mov     r11, [rsp+48h+arg_20]
                mov     r10, [rsp+48h+arg_28]
                test    r11, r11
                jnz     short loc_140913A01
                test    r10, r10
                jnz     short loc_140913A01
                mov     rax, [rsp+48h+arg_30]
                mov     byte ptr [rsp+48h+var_20], 1
                mov     [rsp+48h+var_28], rax
                call    sub_140622B20
                jmp     short loc_140913A22
; ---------------------------------------------------------------------------

loc_140913A01:                          ; CODE XREF: RtlAddAccessDeniedObjectAce+11↑j
                                        ; RtlAddAccessDeniedObjectAce+16↑j
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_10], 6
                mov     [rsp+48h+var_18], rax
                mov     [rsp+48h+var_20], r10
                mov     [rsp+48h+var_28], r11
                call    sub_140914080

loc_140913A22:                          ; CODE XREF: RtlAddAccessDeniedObjectAce+2F↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAccessDeniedObjectAce endp

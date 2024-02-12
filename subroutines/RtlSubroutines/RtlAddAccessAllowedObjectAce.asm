RtlAddAccessAllowedObjectAce proc near  ; CODE XREF: sub_14078663C+CB549↑p
                                        ; sub_14078663C+CB5D5↑p
                                        ; DATA XREF: ...

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
                jnz     short loc_1409139A1
                test    r10, r10
                jnz     short loc_1409139A1
                mov     rax, [rsp+48h+arg_30]
                mov     byte ptr [rsp+48h+var_20], r11b
                mov     [rsp+48h+var_28], rax
                call    sub_140622B20
                jmp     short loc_1409139C2
; ---------------------------------------------------------------------------

loc_1409139A1:                          ; CODE XREF: RtlAddAccessAllowedObjectAce+11↑j
                                        ; RtlAddAccessAllowedObjectAce+16↑j
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_10], 5
                mov     [rsp+48h+var_18], rax
                mov     [rsp+48h+var_20], r10
                mov     [rsp+48h+var_28], r11
                call    sub_140914080

loc_1409139C2:                          ; CODE XREF: RtlAddAccessAllowedObjectAce+2F↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAccessAllowedObjectAce endp

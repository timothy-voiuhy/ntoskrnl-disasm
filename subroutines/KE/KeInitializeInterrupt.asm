KeInitializeInterrupt proc near         ; CODE XREF: sub_1403A26D4+7D↑p
                                        ; DATA XREF: .pdata:00000001400DD688↑o

var_68          = dword ptr -68h
var_50          = dword ptr -50h
var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = dword ptr -38h
var_30          = byte ptr -30h
var_28          = dword ptr -28h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = byte ptr  40h
arg_40          = byte ptr  48h
arg_48          = dword ptr  50h
arg_50          = byte ptr  58h
arg_58          = dword ptr  60h

                mov     r11, rsp
                sub     rsp, 88h
                mov     eax, [rsp+88h+arg_58]
                xor     r10d, r10d
                mov     [r11-10h], r10
                mov     [r11-18h], r10b
                mov     [rsp+88h+var_28], eax
                mov     al, [rsp+88h+arg_50]
                mov     [rsp+88h+var_30], al
                mov     eax, [rsp+88h+arg_48]
                mov     [rsp+88h+var_38], eax
                mov     al, [rsp+88h+arg_40]
                mov     [rsp+88h+var_40], al
                mov     al, [rsp+88h+arg_38]
                mov     [rsp+88h+var_48], al
                mov     eax, [rsp+88h+arg_30]
                mov     [rsp+88h+var_50], eax
                mov     rax, [rsp+88h+arg_28]
                mov     [r11-58h], r10
                mov     [r11-60h], rax
                mov     eax, [rsp+88h+arg_20]
                mov     [rsp+88h+var_68], eax
                call    sub_1403776AC
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeInterrupt endp

IoConnectInterrupt proc near            ; DATA XREF: .rdata:00000001400AB214↑o
                                        ; .pdata:000000014010E90C↑o

var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = dword ptr -38h
var_30          = byte ptr -30h
arg_20          = dword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h
arg_38          = dword ptr  40h
arg_40          = byte ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 0000000140860AAC SIZE 00000020 BYTES

                mov     r11, rsp
                sub     rsp, 78h
                mov     rax, cr8
                test    al, al
                jnz     loc_140860AAC
                mov     rax, [rsp+78h+arg_48]
                and     qword ptr [r11-10h], 0
                mov     [r11-18h], rax
                lea     rax, [r11-18h]
                mov     [r11-28h], rax
                mov     al, [rsp+78h+arg_40]
                mov     [rsp+78h+var_30], al
                mov     eax, [rsp+78h+arg_38]
                mov     [rsp+78h+var_38], eax
                mov     al, [rsp+78h+arg_30]
                mov     [rsp+78h+var_40], al
                mov     al, [rsp+78h+arg_28]
                mov     [rsp+78h+var_48], al
                mov     eax, [rsp+78h+arg_20]
                mov     [rsp+78h+var_50], eax
                mov     [r11-58h], r9
                mov     r9, r8
                mov     r8, rdx
                xor     edx, edx
                call    sub_1407CA650
                add     rsp, 78h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoConnectInterrupt endp

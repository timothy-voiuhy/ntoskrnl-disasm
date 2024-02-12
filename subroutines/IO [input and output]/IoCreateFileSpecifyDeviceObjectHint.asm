IoCreateFileSpecifyDeviceObjectHint proc near
                                        ; DATA XREF: .pdata:0000000140106CD4↑o

var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = dword ptr -88h
var_80          = dword ptr -80h
var_78          = dword ptr -78h
var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_50          = dword ptr -50h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h
arg_50          = dword ptr  58h
arg_58          = dword ptr  60h
arg_60          = qword ptr  68h
arg_68          = dword ptr  70h
arg_70          = qword ptr  78h

                mov     r11, rsp
                sub     rsp, 0B8h
                xor     eax, eax
                mov     qword ptr [r11-18h], 1
                mov     [r11-36h], rax
                mov     [r11-2Eh], eax
                mov     [r11-2Ah], ax
                mov     [r11-20h], rax
                mov     eax, 28h ; '('
                mov     [r11-38h], ax
                mov     rax, [rsp+0B8h+arg_70]
                mov     [r11-28h], rax
                lea     rax, [r11-38h]
                mov     [r11-48h], rax
                mov     eax, [rsp+0B8h+arg_68]
                mov     [rsp+0B8h+var_50], eax
                mov     rax, [rsp+0B8h+arg_60]
                mov     [r11-58h], rax
                mov     eax, [rsp+0B8h+arg_58]
                mov     [rsp+0B8h+var_60], eax
                mov     eax, [rsp+0B8h+arg_50]
                mov     [rsp+0B8h+var_68], eax
                mov     rax, [rsp+0B8h+arg_48]
                mov     [r11-70h], rax
                mov     eax, [rsp+0B8h+arg_40]
                mov     [rsp+0B8h+var_78], eax
                mov     eax, [rsp+0B8h+arg_38]
                mov     [rsp+0B8h+var_80], eax
                mov     eax, [rsp+0B8h+arg_30]
                mov     [rsp+0B8h+var_88], eax
                mov     eax, [rsp+0B8h+arg_28]
                mov     [rsp+0B8h+var_90], eax
                mov     rax, [rsp+0B8h+arg_20]
                mov     [rsp+0B8h+var_98], rax
                call    IoCreateFileEx
                add     rsp, 0B8h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateFileSpecifyDeviceObjectHint endp

SeOpenObjectAuditAlarmForNonObObject proc near
                                        ; DATA XREF: .rdata:00000001400AD510↑o
                                        ; .pdata:000000014010EF30↑o

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_48          = byte ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h
arg_48          = byte ptr  50h
arg_50          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140863AEE SIZE 00000205 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0B0h
                mov     sil, [rsp+0E8h+arg_48]
                xor     ebp, ebp
                mov     rdi, [rsp+0E8h+arg_28]
                mov     r13, r9
                mov     rbx, r8
                mov     [rax-48h], bpl
                mov     r15, rcx
                test    sil, sil
                lea     ecx, [rbp+76h]
                mov     r9, rdi
                setz    r8b
                mov     dl, sil
                call    sub_140629580
                mov     r12d, [rsp+0E8h+arg_30]
                mov     [rsp+0E8h+arg_48], al
                test    al, al
                jnz     loc_140863AEE

loc_1407D10AC:                          ; CODE XREF: SeOpenObjectAuditAlarmForNonObObject+92C4D↓j
                mov     rcx, [rsp+0E8h+arg_40]
                test    rcx, rcx
                jnz     loc_140863C92

loc_1407D10BD:                          ; CODE XREF: SeOpenObjectAuditAlarmForNonObObject+92C40↓j
                                        ; SeOpenObjectAuditAlarmForNonObObject+92C55↓j ...
                mov     rbx, [rsp+0E8h+arg_0]
                add     rsp, 0B0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeOpenObjectAuditAlarmForNonObObject endp

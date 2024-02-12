LdrResFindResourceDirectory proc near   ; DATA XREF: .rdata:000000014009E840↑o
                                        ; .pdata:000000014010C11C↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

; FUNCTION CHUNK AT 0000000140853B54 SIZE 00000010 BYTES

                sub     rsp, 58h
                mov     r11, r9
                mov     r10, r8
                mov     r9d, [rsp+58h+arg_30]
                test    r9d, 0C00h
                jnz     short loc_14078CD68
                mov     rax, [rsp+58h+var_18]
                test    rdx, rdx
                cmovnz  rax, rdx
                xor     r8d, r8d
                test    rdx, rdx
                mov     [rsp+58h+var_18], rax
                setnz   r8b
                test    r10, r10
                jnz     loc_140853B54

loc_14078CD2F:                          ; CODE XREF: LdrResFindResourceDirectory+C6E6F↓j
                mov     rax, [rsp+58h+arg_28]
                lea     rdx, [rsp+58h+var_18]
                mov     [rsp+58h+var_20], rax
                or      r9d, 2
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_28], rax
                and     [rsp+58h+var_30], 0
                mov     [rsp+58h+var_38], r11
                call    LdrResSearchResource

loc_14078CD62:                          ; CODE XREF: LdrResFindResourceDirectory+7D↓j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14078CD68:                          ; CODE XREF: LdrResFindResourceDirectory+19↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14078CD62
LdrResFindResourceDirectory endp

KeHwPolicyLocateResource proc near      ; CODE XREF: sub_1409A2500+34↑p
                                        ; sub_1409A2500+63ED↑p ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140A896A8 SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 60h
                mov     rax, rcx
                mov     rbx, r9
                mov     rcx, cs:qword_140C31400
                mov     rdi, r8
                mov     rsi, rdx
                test    rcx, rcx
                jnz     short loc_140A6745E
                cmp     cs:byte_140C31408, cl
                jnz     loc_140A896A8
                mov     rcx, rax
                call    sub_140A674B8
                mov     cs:qword_140C31400, rax
                mov     rcx, rax
                test    rax, rax
                jz      loc_140A896A8

loc_140A6745E:                          ; CODE XREF: KeHwPolicyLocateResource+25↑j
                and     [rsp+68h+var_30], 0
                lea     rdx, [rsp+68h+var_28]
                and     [rsp+68h+var_38], 0
                mov     r9d, 30h ; '0'
                mov     rax, [rsp+68h+arg_20]
                and     [rsp+68h+var_18], 0
                mov     [rsp+68h+var_40], rax
                lea     r8d, [r9-2Dh]
                mov     [rsp+68h+var_28], rsi
                mov     [rsp+68h+var_20], rdi
                mov     [rsp+68h+var_48], rbx
                call    LdrResSearchResource

loc_140A674A0:                          ; CODE XREF: KeHwPolicyLocateResource+222A4↓j
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeHwPolicyLocateResource endp

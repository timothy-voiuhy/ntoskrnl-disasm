IoGetDeviceInterfaces proc near         ; CODE XREF: sub_1408AF3A0+39↓p
                                        ; sub_1408AF458+46↓p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407EBD0A SIZE 00000111 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rdx
                xor     esi, esi
                mov     edx, esi
                test    rbx, rbx
                jnz     short loc_1405DE1E8

loc_1405DE1C0:                          ; CODE XREF: IoGetDeviceInterfaces+70↓j
                mov     [rsp+38h+var_10], rsi
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    sub_1405DE8EC
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1405DE1E8:                          ; CODE XREF: IoGetDeviceInterfaces+1E↑j
                mov     rax, [rbx+138h]
                mov     rdx, [rax+28h]
                test    rdx, rdx
                jz      loc_1407EBD0A
                test    dword ptr [rdx+18Ch], 20000h
                jnz     loc_1407EBD0A
                add     rdx, 28h ; '('
                jmp     short loc_1405DE1C0
IoGetDeviceInterfaces endp

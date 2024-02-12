IoGetDevicePropertyData proc near       ; CODE XREF: sub_14036E0E8+54↑p
                                        ; sub_14036E0E8+DD↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140842A94 SIZE 0000010C BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                xor     esi, esi
                mov     rbx, rcx
                mov     ebp, 2
                test    rcx, rcx
                jz      loc_140842B87
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_140842A94
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_140842A94
                mov     rax, [rsp+48h+arg_38]
                mov     rcx, rbx
                mov     [r11-10h], rax
                mov     rax, [rsp+48h+arg_30]
                mov     [r11-18h], rax
                mov     rax, [rsp+48h+arg_28]
                mov     [r11-20h], rax
                mov     eax, [rsp+48h+arg_20]
                mov     dword ptr [rsp+48h+var_28], eax
                call    sub_140723E38
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetDevicePropertyData endp

IoSetDevicePropertyData proc near       ; CODE XREF: sub_1404BB668+156↑p
                                        ; DATA XREF: .rdata:000000014004442C↑o ...

var_28          = qword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407F0078 SIZE 0000010C BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                xor     esi, esi
                mov     r9d, r8d
                mov     r10, rdx
                mov     rbx, rcx
                mov     ebp, 2
                test    rcx, rcx
                jz      loc_1407F016B
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1407F0078
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1407F0078
                mov     r8, [rsp+48h+arg_30]
                mov     [r11-18h], r8
                mov     rax, r8
                neg     rax
                mov     rax, r8
                mov     r8d, r9d
                sbb     edx, edx
                and     edx, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], edx
                neg     rax
                mov     rdx, r10
                sbb     ecx, ecx
                and     ecx, [rsp+48h+arg_20]
                mov     dword ptr [rsp+48h+var_28], ecx
                mov     rcx, rbx
                call    sub_14073A3A0
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetDevicePropertyData endp

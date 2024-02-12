IoInvalidateDeviceState proc near       ; DATA XREF: .rdata:000000014009E120↑o
                                        ; .pdata:00000001400DD868↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A6732 SIZE 0000010C BYTES

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
                jz      loc_1404A6825
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1404A6732
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1404A6732
                cmp     dword ptr [rcx+12Ch], 308h
                jnz     short loc_1403A51A4
                mov     [r11-18h], rsi
                lea     edx, [rbp+9]
                mov     [r11-20h], rsi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [r11-28h], rsi
                mov     rcx, rbx
                call    sub_14036E8F4

loc_1403A51A4:                          ; CODE XREF: IoInvalidateDeviceState+55↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoInvalidateDeviceState endp

IoWMIHandleToInstanceName proc near     ; DATA XREF: .pdata:000000014010C02C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, rdx
                mov     rdi, r8
                mov     rsi, rcx
                lea     r8, [r11+20h]
                xor     ebp, ebp
                mov     rcx, rax
                xor     edx, edx
                mov     [r11+20h], rbp
                call    sub_14078C194
                mov     ebx, eax
                test    eax, eax
                js      short loc_14078BF1E
                mov     r8, rdi
                mov     rcx, rsi
                mov     rdi, [rsp+28h+arg_18]
                mov     rdx, rdi
                call    IoWMIDeviceObjectToInstanceName
                test    eax, eax
                mov     ebx, eax
                cmovns  ebx, ebp
                test    rdi, rdi
                jz      short loc_14078BF1E
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14078BF1E:                          ; CODE XREF: IoWMIHandleToInstanceName+35↑j
                                        ; IoWMIHandleToInstanceName+54↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWMIHandleToInstanceName endp

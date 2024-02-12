PoCreateThermalRequest proc near        ; DATA XREF: .rdata:000000014009F904↑o
                                        ; .pdata:000000014010CB9C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014085451C SIZE 0000003A BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                sub     rsp, 30h
                and     qword ptr [r11+8], 0
                xor     ebx, ebx
                and     [rcx], rbx
                mov     rax, r9
                mov     rbp, rdx
                mov     rsi, rcx
                test    rdx, rdx
                jz      loc_14085454C
                test    r8, r8
                jz      loc_14085454C
                test    rax, rax
                jz      loc_14085454C
                lea     rcx, [r11+8]
                mov     r9b, 1
                mov     [r11-10h], rcx
                xor     edx, edx
                and     [r11-18h], rbx
                mov     rcx, rax
                call    sub_1403416A4
                mov     edi, eax
                test    eax, eax
                js      loc_140854521
                mov     edi, 240h
                lea     ecx, [rbx+1]
                mov     edx, edi
                mov     r8d, 6C6F4350h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14085451C
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rax, [rsp+38h+arg_0]
                mov     rdx, rbp
                mov     r8d, [rsp+38h+arg_20]
                mov     rcx, rbx
                mov     [rbx+18h], rax
                mov     rax, 0FFFFF78000000008h
                mov     byte ptr [rbx+10h], 64h ; 'd'
                shr     r8d, 1Fh
                xor     r8b, 1
                mov     rax, [rax]
                mov     [rbx+30h], rax
                mov     [rbx+38h], rax
                call    sub_14079A440
                mov     edi, eax
                test    eax, eax
                js      loc_140854521
                mov     [rsi], rbx

loc_14079A41A:                          ; CODE XREF: PoCreateThermalRequest+BA211↓j
                test    edi, edi
                js      loc_140854521

loc_14079A422:                          ; CODE XREF: PoCreateThermalRequest+BA1F3↓j
                                        ; PoCreateThermalRequest+BA207↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoCreateThermalRequest endp

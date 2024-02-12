KeDispatchSecondaryInterrupt proc near  ; CODE XREF: sub_1404D1450+35↑p
                                        ; DATA XREF: .pdata:00000001400F38F4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                lea     rax, [r11-18h]
                mov     [r11-10h], rax
                lea     rax, [r11-18h]
                mov     [r11-18h], rax
                mov     rbx, cr8
                xor     ebp, ebp
                mov     [r11-28h], r8
                lea     rdi, [r11-18h]
                test    bl, bl
                cmovz   rdi, rbp
                shr     edx, 14h
                and     edx, 1
                mov     r9, rdi
                mov     r8d, edx
                mov     edx, ecx
                lea     ecx, [rbp+1]
                call    sub_140521618
                mov     sil, al
                test    bl, bl
                jz      short loc_14051906D
                mov     rcx, rdi
                call    sub_140519538

loc_14051906D:                          ; CODE XREF: KeDispatchSecondaryInterrupt+53↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeDispatchSecondaryInterrupt endp

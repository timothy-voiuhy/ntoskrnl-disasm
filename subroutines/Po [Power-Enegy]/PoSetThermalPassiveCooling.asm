PoSetThermalPassiveCooling proc near    ; DATA XREF: .pdata:000000014011F754↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     sil, dl
                mov     rdi, rcx
                xor     edx, edx
                call    PoGetThermalRequestSupport
                xor     ebx, ebx
                test    al, al
                jnz     short loc_1408E40E3
                mov     ebx, 0C00000BBh
                jmp     short loc_1408E4137
; ---------------------------------------------------------------------------

loc_1408E40E3:                          ; CODE XREF: PoSetThermalPassiveCooling+2A↑j
                cmp     sil, 64h ; 'd'
                jbe     short loc_1408E40F0
                mov     ebx, 0C000000Dh
                jmp     short loc_1408E4137
; ---------------------------------------------------------------------------

loc_1408E40F0:                          ; CODE XREF: PoSetThermalPassiveCooling+37↑j
                mov     r14, [rdi+20h]
                lea     rcx, [r14+20h]
                call    sub_1402B4578
                cmp     [rdi+12h], bl
                jz      short loc_1408E4129
                mov     dl, [rdi+10h]
                cmp     dl, sil
                jz      short loc_1408E412E
                lea     rcx, [rdi+28h]
                call    sub_140777408
                mov     rcx, rdi
                mov     [rdi+10h], sil
                call    sub_1408ED130
                mov     rcx, r14
                call    sub_1403C98B4
                jmp     short loc_1408E412E
; ---------------------------------------------------------------------------

loc_1408E4129:                          ; CODE XREF: PoSetThermalPassiveCooling+50↑j
                mov     ebx, 0C0000189h

loc_1408E412E:                          ; CODE XREF: PoSetThermalPassiveCooling+58↑j
                                        ; PoSetThermalPassiveCooling+77↑j
                lea     rcx, [r14+20h]
                call    sub_140216274

loc_1408E4137:                          ; CODE XREF: PoSetThermalPassiveCooling+31↑j
                                        ; PoSetThermalPassiveCooling+3E↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoSetThermalPassiveCooling endp

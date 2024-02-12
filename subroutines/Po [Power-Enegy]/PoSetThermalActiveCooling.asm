PoSetThermalActiveCooling proc near     ; DATA XREF: .pdata:000000014010E600↑o

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
                mov     edx, 1
                call    PoGetThermalRequestSupport
                xor     ebx, ebx
                test    al, al
                jz      short loc_1407C6C69
                mov     r14, [rdi+20h]
                test    sil, sil
                setnz   bpl
                lea     rcx, [r14+20h]
                call    sub_1402B4578
                cmp     [rdi+12h], bl
                jz      short loc_1407C6C70
                mov     al, [rdi+11h]
                cmp     al, bpl
                jz      short loc_1407C6C42
                test    al, al
                lea     rcx, [rdi+28h]
                setz    dl
                call    sub_14078CCAC
                mov     rcx, rdi
                mov     [rdi+11h], bpl
                call    sub_1407C6CCC
                mov     rcx, r14
                call    sub_1403C98B4

loc_1407C6C42:                          ; CODE XREF: PoSetThermalActiveCooling+4E↑j
                                        ; PoSetThermalActiveCooling+A5↓j
                lea     rcx, [r14+20h]
                call    sub_140216274

loc_1407C6C4B:                          ; CODE XREF: PoSetThermalActiveCooling+9E↓j
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
; ---------------------------------------------------------------------------

loc_1407C6C69:                          ; CODE XREF: PoSetThermalActiveCooling+2D↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_1407C6C4B
; ---------------------------------------------------------------------------

loc_1407C6C70:                          ; CODE XREF: PoSetThermalActiveCooling+46↑j
                mov     ebx, 0C0000189h
                jmp     short loc_1407C6C42
PoSetThermalActiveCooling endp

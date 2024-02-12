PoFxCompleteDevicePowerNotRequired proc near
                                        ; DATA XREF: .rdata:000000014009EB5C↑o
                                        ; .pdata:00000001400DDB8C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A7998 SIZE 000000B1 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rcx
                mov     edi, esi
                lock xadd [rcx+28h], edi
                add     edi, esi
                jz      loc_1404A7998

loc_1403A76FF:                          ; CODE XREF: PoFxCompleteDevicePowerNotRequired+100360↓j
                test    edi, edi
                js      loc_1404A7A35
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxCompleteDevicePowerNotRequired endp

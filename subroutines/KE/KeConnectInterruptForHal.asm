KeConnectInterruptForHal proc near      ; CODE XREF: sub_1403A26D4+85↑p
                                        ; DATA XREF: .rdata:000000014009D828↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404A4AB2 SIZE 000000A4 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r10, rcx
                mov     rbx, cr8
                mov     edi, 0Fh
                mov     cr8, rdi
                mov     eax, cs:dword_140CFC660
                or      r11, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404A4AB2

loc_1403A27BC:                          ; CODE XREF: KeConnectInterruptForHal+102324↓j
                                        ; KeConnectInterruptForHal+10232D↓j ...
                mov     eax, [r10+58h]
                mov     byte ptr [r10+5Fh], 1
                mov     rcx, gs:20h
                mov     [rcx+rax*8+3140h], r10
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A4AF4

loc_1403A27E4:                          ; CODE XREF: KeConnectInterruptForHal+102366↓j
                                        ; KeConnectInterruptForHal+102373↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeConnectInterruptForHal endp

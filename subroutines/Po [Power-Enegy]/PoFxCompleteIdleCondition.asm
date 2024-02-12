PoFxCompleteIdleCondition proc near     ; CODE XREF: sub_1403CF640+F↓p
                                        ; sub_1404D1C50+1F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404873EA SIZE 0000003F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+340h]
                mov     rdi, rcx
                mov     esi, edx
                or      ebx, 0FFFFFFFFh
                mov     r8, [rax+rsi*8]
                lock xadd [r8+88h], ebx
                sub     ebx, 1
                jz      loc_1404873EA

loc_140357AA9:                          ; CODE XREF: PoFxCompleteIdleCondition+12F99D↓j
                test    ebx, ebx
                js      loc_140487412
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxCompleteIdleCondition endp

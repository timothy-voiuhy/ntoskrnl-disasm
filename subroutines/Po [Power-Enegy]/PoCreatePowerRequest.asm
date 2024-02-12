PoCreatePowerRequest proc near          ; DATA XREF: .rdata:0000000140095490↑o
                                        ; .pdata:000000014010AA00↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408490D0 SIZE 0000001C BYTES

                mov     r11, rsp
                mov     [r11+18h], rbx
                push    rsi
                sub     rsp, 30h
                and     qword ptr [r11+10h], 0
                mov     rax, r8
                and     qword ptr [r11+8], 0
                mov     rsi, rcx
                and     qword ptr [rcx], 0
                test    rdx, rdx
                jz      short loc_14077141B
                lea     rcx, [r11+8]
                mov     r8, rdx
                mov     [r11-10h], rcx
                mov     r9b, 1
                and     qword ptr [r11-18h], 0
                mov     rcx, rax
                xor     edx, edx
                call    sub_1403416A4
                mov     ebx, eax
                test    eax, eax
                js      loc_1408490D0
                mov     rdx, [rsp+38h+arg_0]
                lea     rcx, [rsp+38h+arg_8]
                call    sub_140771428
                mov     ebx, eax
                test    eax, eax
                js      loc_1408490D0
                mov     rax, [rsp+38h+arg_8]
                mov     [rsi], rax

loc_14077140D:                          ; CODE XREF: PoCreatePowerRequest+80↓j
                                        ; PoCreatePowerRequest+D7D36↓j ...
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14077141B:                          ; CODE XREF: PoCreatePowerRequest+23↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_14077140D
PoCreatePowerRequest endp

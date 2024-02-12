HalStartNextProcessor proc near         ; CODE XREF: sub_140997588+11B↓p
                                        ; sub_140A4F854+51F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A4156 SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, r8d
                mov     ebx, edx
                mov     rsi, rcx
                call    sub_14037B664
                dec     eax
                cmp     eax, 3
                ja      short loc_1403A14ED
                call    sub_1403A2364
                cmp     ebx, eax
                jnb     short loc_1403A14ED
                mov     r9, rsi
                xor     r8d, r8d
                mov     edx, edi
                mov     ecx, ebx
                call    sub_14099BD84
                cmp     cs:dword_140C49750, 0
                mov     edi, eax
                jnz     loc_1404A4156

loc_1403A14DA:                          ; CODE XREF: HalStartNextProcessor+102CC9↓j
                                        ; HalStartNextProcessor+102CD7↓j
                mov     eax, edi

loc_1403A14DC:                          ; CODE XREF: HalStartNextProcessor+62↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A14ED:                          ; CODE XREF: HalStartNextProcessor+21↑j
                                        ; HalStartNextProcessor+2A↑j
                mov     eax, 2
                jmp     short loc_1403A14DC
HalStartNextProcessor endp

IoWMIRegistrationControl proc near      ; CODE XREF: sub_1405BDAFC+1E↑p
                                        ; sub_1407C61BC+58↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014083D554 SIZE 0000008A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                xor     ebp, ebp
                xor     r14b, r14b
                cmp     cs:qword_140C19E38, rbp
                mov     edi, edx
                mov     rsi, rcx
                jz      loc_14083D554
                mov     eax, edx
                mov     ecx, 10000h
                btr     eax, 1Fh
                test    edx, edx
                cmovns  eax, edx
                sar     edi, 1Fh
                and     edi, 80000000h
                test    ecx, eax
                jnz     short loc_140751262

loc_14075121D:                          ; CODE XREF: IoWMIRegistrationControl+A6↓j
                sub     eax, 1
                jnz     short loc_140751251
                mov     edx, edi
                mov     rcx, rsi
                call    sub_1407512A8
                mov     ebx, eax
                test    r14b, r14b
                jnz     short loc_140751278

loc_140751233:                          ; CODE XREF: IoWMIRegistrationControl+90↓j
                                        ; IoWMIRegistrationControl+B2↓j ...
                mov     eax, ebx

loc_140751235:                          ; CODE XREF: IoWMIRegistrationControl+EC389↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140751251:                          ; CODE XREF: IoWMIRegistrationControl+50↑j
                sub     eax, 1
                jnz     short loc_140751284
                mov     rcx, rsi
                call    sub_140751130

loc_14075125E:                          ; CODE XREF: IoWMIRegistrationControl+CE↓j
                                        ; IoWMIRegistrationControl+EC409↓j
                mov     ebx, eax
                jmp     short loc_140751233
; ---------------------------------------------------------------------------

loc_140751262:                          ; CODE XREF: IoWMIRegistrationControl+4B↑j
                mov     ebp, eax
                mov     r14b, 1
                and     ebp, 0F00000h
                and     eax, 0FF0EFFFFh
                or      edi, ebp
                or      edi, ecx
                jmp     short loc_14075121D
; ---------------------------------------------------------------------------

loc_140751278:                          ; CODE XREF: IoWMIRegistrationControl+61↑j
                mov     edx, ebp
                mov     rcx, rsi
                call    sub_14077F338
                jmp     short loc_140751233
; ---------------------------------------------------------------------------

loc_140751284:                          ; CODE XREF: IoWMIRegistrationControl+84↑j
                sub     eax, 1
                jz      loc_14083D5BC
                sub     eax, 1
                jnz     loc_14083D55E
                mov     rcx, rsi
                call    sub_14074FC5C
                jmp     short loc_14075125E
IoWMIRegistrationControl endp

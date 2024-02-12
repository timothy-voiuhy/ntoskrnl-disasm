PsAssignProcessToJobObject proc near    ; CODE XREF: sub_140682A70+A9↑p
                                        ; sub_140798690+BB683↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140811C56 SIZE 00000013 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 20h
                and     dword ptr [rax+20h], 0
                mov     rdi, r8
                xor     ebx, ebx
                mov     rsi, rdx
                mov     rbp, rcx

loc_140682B93:                          ; CODE XREF: PsAssignProcessToJobObject+18F0E9↓j
                lea     r9, [rsp+28h+arg_18]
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_140682C58
                test    eax, eax
                js      short loc_140682BE0
                mov     r9d, [rsp+28h+arg_18]
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_140683368
                inc     ebx
                cmp     eax, 0C000022Dh
                jz      loc_140811C56

loc_140682BCA:                          ; CODE XREF: PsAssignProcessToJobObject+75↓j
                                        ; PsAssignProcessToJobObject+18F0F4↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140682BE0:                          ; CODE XREF: PsAssignProcessToJobObject+38↑j
                mov     eax, 0C0000022h
                jmp     short loc_140682BCA
PsAssignProcessToJobObject endp

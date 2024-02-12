RtlRunOnceExecuteOnce proc near         ; CODE XREF: sub_1403162CC+25↑p
                                        ; sub_1406797D8+2A↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408220E8 SIZE 00000016 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rdi, r9
                mov     rbp, r8
                mov     r14, rdx
                mov     rsi, rcx
                dec     word ptr [rax+1E4h]
                mov     r8, r9
                xor     edx, edx
                call    RtlRunOnceBeginInitialize
                mov     ebx, eax
                test    eax, eax
                js      loc_1408220E8
                cmp     eax, 103h
                jz      short loc_1406DE85C

loc_1406DE830:                          ; CODE XREF: RtlRunOnceExecuteOnce+AF↓j
                                        ; RtlRunOnceExecuteOnce+CC↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406DE85C:                          ; CODE XREF: RtlRunOnceExecuteOnce+4E↑j
                mov     r8, rdi
                mov     rdx, rbp
                mov     rcx, rsi
                mov     rax, r14
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1406DE896
                test    rdi, rdi
                jz      short loc_1406DE891
                mov     r8, [rdi]

loc_1406DE879:                          ; CODE XREF: RtlRunOnceExecuteOnce+B4↓j
                xor     edx, edx
                mov     rcx, rsi
                call    RtlRunOnceComplete
                mov     ebx, eax
                test    eax, eax
                js      loc_1408220E8
                xor     ebx, ebx
                jmp     short loc_1406DE830
; ---------------------------------------------------------------------------

loc_1406DE891:                          ; CODE XREF: RtlRunOnceExecuteOnce+94↑j
                xor     r8d, r8d
                jmp     short loc_1406DE879
; ---------------------------------------------------------------------------

loc_1406DE896:                          ; CODE XREF: RtlRunOnceExecuteOnce+8F↑j
                xor     r8d, r8d
                mov     rcx, rsi
                mov     ebx, 0C0000001h
                lea     edx, [r8+4]
                call    RtlRunOnceComplete
                test    eax, eax
                jns     short loc_1406DE830
                mov     ebx, eax
                jmp     loc_1408220E8
RtlRunOnceExecuteOnce endp

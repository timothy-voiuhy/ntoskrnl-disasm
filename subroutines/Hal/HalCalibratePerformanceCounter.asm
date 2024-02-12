HalCalibratePerformanceCounter proc near
                                        ; CODE XREF: sub_1404C1830+64↓p
                                        ; sub_140996B90+A1↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049794C SIZE 00000050 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, gs:1A4h
                mov     rsi, rdx
                mov     rbx, cs:qword_140C4BE90
                mov     rdi, rcx
                and     [rsp+38h+arg_0], 0
                mov     r14d, 989680h
                cmp     dword ptr [rbx+0E4h], 5
                jnz     short loc_140383DE1
                mov     r8, [rbx+0C0h]
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1403962D0
                mov     rsi, rax

loc_140383DE1:                          ; CODE XREF: HalCalibratePerformanceCounter+3A↑j
                mov     rax, cs:qword_140C4BE88
                cmp     rbx, rax
                jnz     loc_14049794C

loc_140383DF1:                          ; CODE XREF: HalCalibratePerformanceCounter+113BE0↓j
                test    ebp, ebp
                jz      short loc_140383E19

loc_140383DF5:                          ; CODE XREF: HalCalibratePerformanceCounter+B6↓j
                                        ; HalCalibratePerformanceCounter+C2↓j
                call    sub_140396280
                lock dec dword ptr [rdi]

loc_140383DFD:                          ; CODE XREF: HalCalibratePerformanceCounter+73↓j
                pause
                mov     eax, [rdi]
                test    eax, eax
                jg      short loc_140383DFD
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140383E19:                          ; CODE XREF: HalCalibratePerformanceCounter+63↑j
                xor     edx, edx
                lea     rcx, [rsp+38h+arg_0]
                call    sub_140383E5C
                mov     rdx, rsi
                mov     rcx, rbx
                mov     r14b, al
                call    sub_1403A5C54
                mov     rbp, cs:qword_140C4C000
                test    rbp, rbp
                jnz     loc_140497975

loc_140383E43:                          ; CODE XREF: HalCalibratePerformanceCounter+113C07↓j
                test    r14b, r14b
                jz      short loc_140383DF5
                lea     rcx, [rsp+38h+arg_0]
                call    sub_14034700C
                jmp     short loc_140383DF5
HalCalibratePerformanceCounter endp

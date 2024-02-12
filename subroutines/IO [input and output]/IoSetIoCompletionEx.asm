IoSetIoCompletionEx proc near           ; CODE XREF: sub_1406DFE6C+9D↓p
                                        ; sub_1406DFF40+ED↓p ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001404721F4 SIZE 0000003B BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, [rsp+48h+arg_30]
                xor     r14d, r14d
                mov     esi, r9d
                mov     rbp, r8
                mov     r15, rdx
                mov     rbx, rcx
                test    rdi, rdi
                jz      loc_14032054A
                mov     rax, [rsp+48h+arg_20]
                lea     rsi, [rcx+8]
                mov     [rdi+30h], rax
                mov     [rdi+18h], rdx
                mov     [rdi+20h], r8
                mov     [rdi+28h], r9d
                mov     [r11+38h], r14d
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1403204EE

loc_140320425:                          ; CODE XREF: IoSetIoCompletionEx+140↓j
                                        ; IoSetIoCompletionEx+14A↓j ...
                mov     rbp, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     r13, [rbp+8]
                jnz     loc_1404721FF

loc_140320442:                          ; CODE XREF: IoSetIoCompletionEx+151E67↓j
                mov     rcx, rbx
                call    sub_1402AF4F0
                cmp     [rsi], rsi
                jz      short loc_140320479
                mov     eax, [rbx+28h]
                cmp     eax, [rbx+2Ch]
                jnb     short loc_140320479
                mov     rax, [r13+0E8h]
                cmp     rax, rbx
                jz      loc_14047221C

loc_140320467:                          ; CODE XREF: IoSetIoCompletionEx+151E7A↓j
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_1402AF540
                test    al, al
                jnz     short loc_1403204AE

loc_140320479:                          ; CODE XREF: IoSetIoCompletionEx+9D↑j
                                        ; IoSetIoCompletionEx+A5↑j ...
                mov     edx, [rbx+4]
                lea     eax, [rdx+1]
                mov     [rbx+4], eax
                lea     rax, [rbx+18h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_140320533
                mov     [rdi], rax
                mov     [rdi+8], rcx
                mov     [rcx], rdi
                mov     [rax+8], rdi
                test    edx, edx
                jnz     short loc_1403204AE
                cmp     [rsi], rsi
                jnz     loc_14032053A

loc_1403204AE:                          ; CODE XREF: IoSetIoCompletionEx+C7↑j
                                        ; IoSetIoCompletionEx+F3↑j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15b
                xor     edx, edx
                mov     rcx, rbp
                lea     r8d, [r9+1]
                call    sub_14023E110

loc_1403204CB:                          ; CODE XREF: IoSetIoCompletionEx+1D4↓j
                                        ; IoSetIoCompletionEx+151E4A↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, r14d
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403204EE:                          ; CODE XREF: IoSetIoCompletionEx+6F↑j
                test    al, 1
                jz      loc_140320425
                cmp     r15b, 0Fh
                ja      loc_140320425
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r15b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_140320425
; ---------------------------------------------------------------------------

loc_140320533:                          ; CODE XREF: IoSetIoCompletionEx+DD↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14032053A:                          ; CODE XREF: IoSetIoCompletionEx+F8↑j
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_1402C2EC0
                jmp     loc_1403204AE
; ---------------------------------------------------------------------------

loc_14032054A:                          ; CODE XREF: IoSetIoCompletionEx+37↑j
                movzx   edx, [rsp+48h+arg_28]
                mov     cl, 1
                call    sub_14067E78C
                mov     rdx, rax
                test    rax, rax
                jz      loc_1404721F4
                mov     [rax+18h], r15
                xor     r9d, r9d
                mov     [rax+20h], rbp
                xor     r8d, r8d
                mov     [rax+28h], esi
                mov     rcx, rbx
                mov     rax, [rsp+48h+arg_20]
                mov     [rdx+30h], rax
                call    sub_14025FD00
                jmp     loc_1403204CB
IoSetIoCompletionEx endp

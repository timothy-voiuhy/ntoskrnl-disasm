KeQueryPerformanceCounter proc near     ; CODE XREF: sub_1402146D4+3C↑p
                                        ; sub_1402146D4+10A↑p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041BEB2 SIZE 0000014B BYTES

                mov     [rsp+arg_18], rbx
                push    rsi
                sub     rsp, 20h

loc_140214D0A:                          ; DATA XREF: .rdata:000000014004A7A0↑o
                                        ; .rdata:000000014004A7B4↑o ...
                mov     [rsp+28h+arg_0], rdi
                mov     rsi, rcx
                mov     rdi, cs:qword_140C4BE90
                mov     [rsp+28h+arg_10], r14
                cmp     dword ptr [rdi+0E4h], 5
                jnz     loc_140214DAC
                cmp     cs:qword_140C4BFA0, 0
                mov     [rsp+28h+arg_8], 989680h
                jz      loc_14041BEB2
                test    dword ptr [rdi+0E0h], 10000h
                jnz     loc_14041BFCA
                mov     rcx, [rdi+48h]

loc_140214D56:                          ; CODE XREF: KeQueryPerformanceCounter+2072DC↓j
                mov     rax, [rdi+70h]
                call    sub_1404079D0
                mov     rcx, rax
                mov     r8, 0FFFFF780000003B8h
                mov     rax, cs:qword_140C4BFA0
                mov     rax, [rax+8]
                mov     r8, [r8]
                mul     rcx
                lea     rax, [r8+rdx]

loc_140214D81:                          ; CODE XREF: KeQueryPerformanceCounter+E3↓j
                                        ; KeQueryPerformanceCounter+171↓j ...
                mov     rcx, cs:qword_140C4BE88
                mov     r14, [rsp+28h+arg_10]
                cmp     rdi, rcx
                mov     rdi, [rsp+28h+arg_0]
                jnz     loc_140214E76

loc_140214D9B:                          ; CODE XREF: KeQueryPerformanceCounter+179↓j
                                        ; DATA XREF: .pdata:00000001400CA0BC↑o ...
                test    rsi, rsi
                jnz     short loc_140214DE5

loc_140214DA0:                          ; CODE XREF: KeQueryPerformanceCounter+ED↓j
                                        ; KeQueryPerformanceCounter+1A7↓j
                mov     rbx, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140214DAC:                          ; CODE XREF: KeQueryPerformanceCounter+25↑j
                                        ; DATA XREF: .pdata:00000001400CA0C8↑o ...
                cmp     dword ptr [rdi+0DCh], 40h ; '@'
                mov     rax, [rdi+0C0h]
                mov     [rsp+28h+arg_8], rax
                jnz     short loc_140214DF0
                mov     rcx, rdi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rdi+70h]
                call    sub_1404079D0
                mov     r14, [rdi+0D0h]
                mov     rdx, rax
                lea     rax, [r14+rax]
                jmp     short loc_140214D81
; ---------------------------------------------------------------------------

loc_140214DE5:                          ; CODE XREF: KeQueryPerformanceCounter+9E↑j
                                        ; DATA XREF: .pdata:00000001400CA0D4↑o ...
                mov     rcx, [rsp+28h+arg_8]
                mov     [rsi], rcx
                jmp     short loc_140214DA0
; ---------------------------------------------------------------------------
                align 10h

loc_140214DF0:                          ; CODE XREF: KeQueryPerformanceCounter+BF↑j
                                        ; KeQueryPerformanceCounter+130↓j
                                        ; DATA XREF: ...
                mov     r14, [rdi+0D0h]

loc_140214DF7:                          ; CODE XREF: KeQueryPerformanceCounter+124↓j
                mov     rbx, [rdi+0C8h]
                mov     rcx, rdi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rdi+70h]
                call    sub_1404079D0
                mov     r9, rax
                lock or [rsp+28h+var_28], 0
                mov     rax, [rdi+0C8h]
                cmp     rbx, rax
                jnz     short loc_140214DF7
                mov     rcx, [rdi+0D0h]
                cmp     r14, rcx
                jnz     short loc_140214DF0
                mov     r8d, [rdi+0DCh]
                lea     ecx, [r8-1]
                movzx   edx, cl
                mov     rcx, r9
                xor     rcx, rbx
                bt      rcx, rdx
                jb      short loc_140214EBC
                cmp     r8d, 40h ; '@'
                jz      loc_14041BFF1
                mov     ecx, r8d
                mov     edx, 1
                shl     rdx, cl
                dec     rdx

loc_140214E64:                          ; CODE XREF: KeQueryPerformanceCounter+2072F8↓j
                not     rdx
                and     rdx, rbx
                or      rdx, r9
                lea     rax, [r14+rdx]
                jmp     loc_140214D81
; ---------------------------------------------------------------------------

loc_140214E76:                          ; CODE XREF: KeQueryPerformanceCounter+95↑j
                                        ; DATA XREF: .pdata:00000001400CA0EC↑o ...
                test    rcx, rcx
                jz      loc_140214D9B
                cmp     dword ptr [rcx+0E4h], 5
                mov     rbx, [rcx+0C0h]
                jnz     short loc_140214E94
                mov     ebx, 989680h

loc_140214E94:                          ; CODE XREF: KeQueryPerformanceCounter+18D↑j
                mov     rdx, [rsp+28h+arg_8]
                mov     r8, rbx
                mov     rcx, rax
                call    sub_1403962D0
                test    rsi, rsi
                jz      loc_140214DA0
                mov     [rsi], rbx
                mov     rbx, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140214EBC:                          ; CODE XREF: KeQueryPerformanceCounter+14A↑j
                                        ; DATA XREF: .pdata:00000001400CA0F8↑o ...
                cmp     r8d, 40h ; '@'
                jz      loc_14041BFE1
                mov     ecx, r8d
                mov     r8d, 1
                shl     r8, cl
                lea     r10, [r8-1]

loc_140214ED6:                          ; CODE XREF: KeQueryPerformanceCounter+2072EC↓j
                and     r10, rbx
                mov     rdx, r10
                xor     rdx, rbx
                or      rdx, r9
                cmp     r9, r10
                jnb     short loc_140214EEA
                add     rdx, r8

loc_140214EEA:                          ; CODE XREF: KeQueryPerformanceCounter+1E5↑j
                lock cmpxchg [rdi+0C8h], rdx
                lea     rax, [r14+rdx]
                jmp     loc_140214D81
KeQueryPerformanceCounter endp

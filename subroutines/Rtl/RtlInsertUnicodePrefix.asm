RtlInsertUnicodePrefix proc near        ; DATA XREF: .rdata:000000014007AF10↑o
                                        ; .pdata:00000001401044D8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140823626 SIZE 00000030 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, rcx
                mov     rbx, r8
                mov     rcx, rdx
                mov     r12, rdx
                call    sub_1406E65C8
                lea     r14, [rbx+18h]
                mov     [rbx+2], ax
                and     qword ptr [r14+8], 0
                and     qword ptr [r14+10h], 0
                mov     [rbx+30h], rcx
                mov     [r14], r14
                mov     rsi, [r15+8]
                jmp     short loc_1406E60F4
; ---------------------------------------------------------------------------

loc_1406E60ED:                          ; CODE XREF: RtlInsertUnicodePrefix+58↓j
                mov     r15, rsi
                mov     rsi, [rsi+8]

loc_1406E60F4:                          ; CODE XREF: RtlInsertUnicodePrefix+4B↑j
                cmp     [rsi+2], ax
                jg      short loc_1406E60ED
                jnz     loc_1406E61A2
                mov     rdi, rsi

loc_1406E6103:                          ; CODE XREF: RtlInsertUnicodePrefix+96↓j
                mov     rcx, [rdi+30h]
                xor     r8d, r8d
                mov     rdx, r12
                call    sub_1406E6488
                mov     ecx, 802h
                cmp     eax, 2
                jz      loc_1406E61CE
                cmp     eax, 3
                jz      short loc_1406E6138
                mov     rax, [rdi+28h]
                test    rax, rax
                jz      loc_1406E61B8

loc_1406E6132:                          ; CODE XREF: RtlInsertUnicodePrefix+9F↓j
                lea     rdi, [rax-18h]
                jmp     short loc_1406E6103
; ---------------------------------------------------------------------------

loc_1406E6138:                          ; CODE XREF: RtlInsertUnicodePrefix+83↑j
                mov     rax, [rdi+20h]
                test    rax, rax
                jnz     short loc_1406E6132
                and     [rbx+8], rax
                lea     rax, [rdi+18h]
                mov     [rbx], cx
                mov     [rbx+10h], rbx
                mov     [rax+8], r14

loc_1406E6154:                          ; CODE XREF: RtlInsertUnicodePrefix+12C↓j
                mov     [r14], rax

loc_1406E6157:                          ; CODE XREF: RtlInsertUnicodePrefix+13D5B1↓j
                mov     rbx, [rsi+8]
                and     qword ptr [rsi+8], 0
                mov     [rsi], cx
                lea     rcx, [rdi+18h]
                call    RtlSplay
                sub     rax, 18h
                mov     ecx, 801h
                mov     [rax], cx
                mov     [r15+8], rax
                mov     [rax+8], rbx

loc_1406E6180:                          ; CODE XREF: RtlInsertUnicodePrefix+116↓j
                mov     al, 1

loc_1406E6182:                          ; CODE XREF: RtlInsertUnicodePrefix+14C↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406E61A2:                          ; CODE XREF: RtlInsertUnicodePrefix+5A↑j
                mov     [r15+8], rbx
                mov     ecx, 801h
                mov     [rbx], cx
                mov     [rbx+8], rsi
                mov     [rbx+10h], rbx
                jmp     short loc_1406E6180
; ---------------------------------------------------------------------------

loc_1406E61B8:                          ; CODE XREF: RtlInsertUnicodePrefix+8C↑j
                and     qword ptr [rbx+8], 0
                lea     rax, [rdi+18h]
                mov     [rbx], cx
                mov     [rbx+10h], rbx
                mov     [rax+10h], r14
                jmp     short loc_1406E6154
; ---------------------------------------------------------------------------

loc_1406E61CE:                          ; CODE XREF: RtlInsertUnicodePrefix+7A↑j
                mov     rbp, rdi

loc_1406E61D1:                          ; CODE XREF: RtlInsertUnicodePrefix+13D58D↓j
                mov     rcx, [rbp+30h]
                or      r8d, 0FFFFFFFFh
                mov     rdx, r12
                call    sub_1406E6488
                cmp     eax, 2
                jnz     loc_140823626
                xor     al, al
                jmp     short loc_1406E6182
RtlInsertUnicodePrefix endp

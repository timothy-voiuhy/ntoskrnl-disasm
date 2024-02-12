RtlGetMultiTimePrecise proc near        ; CODE XREF: sub_1405ABA68+43↓p
                                        ; sub_1406DCA60+92↓p ...

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046DA20 SIZE 0000002E BYTES

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], edx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 68h
                xor     ebx, ebx
                mov     esi, edx
                mov     [rsp+0A8h+var_70], rbx
                mov     ebp, ebx
                mov     [rsp+0A8h+var_60], rbx
                mov     r13b, bl
                mov     [rsp+0A8h+var_78], rbx
                mov     [rsp+0A8h+var_80], rbx
                mov     [rsp+0A8h+var_68], rbx
                test    edx, edx
                jz      loc_140311E24
                call    sub_140311E30
                mov     r14d, esi
                mov     r15d, esi
                and     r14d, 4
                mov     r12, rax
                mov     [rsp+0A8h+arg_18], r14d
                and     r15d, 2
                mov     rsi, 0FFFFF78000000340h

loc_140311CD0:                          ; CODE XREF: RtlGetMultiTimePrecise+15BDD1↓j
                mov     rcx, rsi
                call    sub_1402BAB78
                mov     [rsp+0A8h+var_58], rax
                test    r14d, r14d
                jz      short loc_140311D24
                mov     rax, 0FFFFF78000000348h
                mov     rax, [rax]
                mov     [rsp+0A8h+var_70], rax
                mov     rax, 0FFFFF78000000358h
                mov     rax, [rax]
                mov     [rsp+0A8h+var_68], rax
                mov     al, ds:0FFFFF78000000368h
                mov     r13b, al
                mov     rax, 0FFFFF78000000014h
                mov     rax, [rax]
                mov     [rsp+0A8h+var_60], rax

loc_140311D24:                          ; CODE XREF: RtlGetMultiTimePrecise+80↑j
                test    r15d, r15d
                jz      loc_14046DA20
                test    r12, r12
                jz      loc_14046DA20
                mov     rax, 0FFFFF780000003C7h
                mov     rdi, 0FFFFF780000003B8h
                movzx   eax, byte ptr [rax]
                mov     [rsp+0A8h+var_80], rax

loc_140311D52:                          ; CODE XREF: RtlGetMultiTimePrecise+111↓j
                                        ; RtlGetMultiTimePrecise+119↓j
                mov     rbp, [r12+18h]
                xor     ecx, ecx
                mov     r14, [rdi]
                mov     [rsp+0A8h+var_78], r14
                call    KeQueryPerformanceCounter
                mov     rdx, rax
                mov     rax, [r12+18h]
                cmp     rbp, rax
                jnz     short loc_140311D52
                mov     rax, [rdi]
                cmp     r14, rax
                jnz     short loc_140311D52
                mov     r14d, [rsp+0A8h+arg_18]

loc_140311D83:                          ; CODE XREF: RtlGetMultiTimePrecise+15BDCA↓j
                mov     rax, [rsi]
                cmp     rax, [rsp+0A8h+var_58]
                jnz     loc_14046DA2F
                mov     esi, [rsp+0A8h+arg_8]
                mov     edi, ebx
                mov     r14, [rsp+0A8h+arg_10]
                mov     r12, [rsp+0A8h+arg_0]
                test    sil, 1
                jz      short loc_140311DB9
                mov     [r12], rdx
                mov     edi, 1

loc_140311DB9:                          ; CODE XREF: RtlGetMultiTimePrecise+14E↑j
                test    r15d, r15d
                jz      short loc_140311DCE
                cmp     [rsp+0A8h+var_80], rbx
                jnz     short loc_140311DCE
                test    rbp, rbp
                jnz     loc_14046DA36

loc_140311DCE:                          ; CODE XREF: RtlGetMultiTimePrecise+15C↑j
                                        ; RtlGetMultiTimePrecise+163↑j ...
                cmp     [rsp+0A8h+arg_18], ebx
                jz      short loc_140311E0D
                mov     rax, [rsp+0A8h+var_70]
                cmp     rdx, rax
                jbe     short loc_140311DFD
                sub     rdx, rax
                dec     rdx
                test    r13b, r13b
                jz      short loc_140311DF2
                mov     cl, r13b
                shl     rdx, cl

loc_140311DF2:                          ; CODE XREF: RtlGetMultiTimePrecise+18A↑j
                mov     rax, [rsp+0A8h+var_68]
                mul     rdx
                mov     rbx, rdx

loc_140311DFD:                          ; CODE XREF: RtlGetMultiTimePrecise+17F↑j
                mov     rax, [rsp+0A8h+var_60]
                add     rax, rbx
                mov     [r12+10h], rax
                or      edi, 4

loc_140311E0D:                          ; CODE XREF: RtlGetMultiTimePrecise+175↑j
                mov     [r14], edi

loc_140311E10:                          ; CODE XREF: RtlGetMultiTimePrecise+1C7↓j
                xor     eax, eax
                add     rsp, 68h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140311E24:                          ; CODE XREF: RtlGetMultiTimePrecise+42↑j
                mov     [r8], ebx
                jmp     short loc_140311E10
RtlGetMultiTimePrecise endp

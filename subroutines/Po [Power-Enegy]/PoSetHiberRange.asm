PoSetHiberRange proc near               ; CODE XREF: sub_140387C2C+1D↑p
                                        ; sub_140387C5C+9B↑p ...

var_58          = qword ptr -58h
var_48          = dword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 00000001404993CE SIZE 000000C2 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], r8
                mov     [r11+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     eax, cs:dword_140C313E0
                xor     edi, edi
                mov     ebx, edx
                mov     rbp, rcx
                mov     [rsp+78h+var_48], edi
                test    al, 3
                jnz     loc_140387EBB
                mov     esi, 4000h
                mov     r14d, 0FFFFBFFFh
                test    rcx, rcx
                jnz     loc_140387ED4
                mov     rbp, cs:qword_140C23400
                mov     [r11+8], rbp
                test    rbp, rbp
                jz      loc_1404993CE
                mov     eax, [rbp+0B8h]
                cmp     eax, 8
                jnz     loc_1404993E8
                mov     eax, ebx
                mov     ecx, 10000h
                and     eax, r14d
                cmp     eax, ecx
                jnz     loc_140499415
                test    r9, r9
                jz      loc_14049940D

loc_140387DD9:                          ; CODE XREF: PoSetHiberRange+1116BF↓j
                mov     eax, ebx
                and     eax, ecx

loc_140387DDD:                          ; CODE XREF: PoSetHiberRange+18D↓j
                test    r9, r9
                jz      loc_140499431

loc_140387DE6:                          ; CODE XREF: PoSetHiberRange+111730↓j
                test    bl, 4
                jnz     loc_140499485

loc_140387DEF:                          ; CODE XREF: PoSetHiberRange+11173B↓j
                test    esi, ebx
                jnz     loc_140387E9B
                mov     rax, [rsp+78h+arg_10]
                mov     rdi, rax
                shr     rdi, 0Ch
                lea     rsi, [rax+0FFFh]
                add     rsi, r9
                shr     rsi, 0Ch
                jmp     short loc_140387E63
; ---------------------------------------------------------------------------

loc_140387E16:                          ; CODE XREF: PoSetHiberRange+EB↓j
                                        ; PoSetHiberRange+146↓j
                mov     rcx, r14
                shl     rcx, 0Ch
                add     rcx, r13
                call    MmGetPhysicalAddress
                shr     rax, 0Ch
                lea     rcx, [r15+rbp]
                cmp     rcx, rax
                jnz     short loc_140387E3D
                inc     r14
                inc     r15
                cmp     r15, rsi
                jb      short loc_140387E16

loc_140387E3D:                          ; CODE XREF: PoSetHiberRange+E0↑j
                mov     rbp, [rsp+78h+arg_0]

loc_140387E45:                          ; CODE XREF: PoSetHiberRange+13B↓j
                mov     eax, [rsp+78h+arg_20]
                mov     r9, r14
                mov     r8, r12
                mov     dword ptr [rsp+78h+var_58], eax
                mov     edx, ebx
                mov     rcx, rbp
                call    sub_140387EF0
                add     rdi, r14

loc_140387E63:                          ; CODE XREF: PoSetHiberRange+C4↑j
                cmp     rdi, rsi
                jnb     short loc_140387EBB
                mov     r13, rdi
                shl     r13, 0Ch
                mov     rcx, r13
                call    MmGetPhysicalAddress
                mov     r12, rax
                lea     r15, [rdi+1]
                shr     r12, 0Ch
                mov     r14d, 1
                cmp     r15, rsi
                jnb     short loc_140387E45
                mov     rax, r12
                sub     rax, rdi
                mov     rbp, rax
                jmp     loc_140387E16
; ---------------------------------------------------------------------------

loc_140387E9B:                          ; CODE XREF: PoSetHiberRange+A1↑j
                mov     eax, [rsp+78h+arg_20]
                and     ebx, r14d
                mov     r8, [rsp+78h+arg_10]
                mov     edx, ebx
                mov     rcx, rbp
                mov     dword ptr [rsp+78h+var_58], eax
                call    sub_140387EF0

loc_140387EBB:                          ; CODE XREF: PoSetHiberRange+31↑j
                                        ; PoSetHiberRange+116↑j ...
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140387ED4:                          ; CODE XREF: PoSetHiberRange+45↑j
                mov     eax, ebx
                mov     ecx, 10000h
                and     eax, ecx
                jz      loc_140387DDD
                jmp     loc_140499415
PoSetHiberRange endp

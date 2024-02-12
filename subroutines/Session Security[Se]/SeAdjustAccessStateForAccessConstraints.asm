SeAdjustAccessStateForAccessConstraints proc near
                                        ; DATA XREF: .rdata:000000014004FD7C↑o
                                        ; .rdata:000000014004FD90↑o ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h
arg_1C          = byte ptr  24h

; FUNCTION CHUNK AT 00000001408022EE SIZE 0000000C BYTES

                mov     rax, rsp
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                xor     ebx, ebx
                mov     byte ptr [rax+18h], 0
                mov     [rax+20h], rbx
                mov     esi, 0FFFFFFFFh
                mov     eax, [r8+0Ch]
                mov     rdi, r8
                mov     r14, rdx
                mov     ebp, esi
                test    al, 6
                jnz     short loc_1406296B8

loc_1406296AC:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+BC↓j
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406296B8:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+2A↑j
                mov     eax, [rcx+44h]

loc_1406296BB:                          ; DATA XREF: .rdata:000000014004FD7C↑o
                                        ; .rdata:000000014004FD90↑o ...
                mov     [rsp+68h+arg_0], r12
                mov     [rsp+68h+var_38], r15
                cmp     eax, 1
                jnz     loc_14062979B
                mov     ebx, 1120089h
                mov     r15d, 11F0116h

loc_1406296D9:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+12D↓j
                                        ; SeAdjustAccessStateForAccessConstraints+135↓j
                mov     r8, [r8+20h]
                test    r8, r8
                jnz     short loc_1406296E6
                mov     r8, [rdi+30h]

loc_1406296E6:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+60↑j
                lea     rax, [rsp+68h+arg_18]
                mov     r9b, 1
                xor     edx, edx
                mov     [rsp+68h+var_48], rax
                mov     rcx, r14
                call    sub_140249750
                cmp     [rsp+68h+arg_1C], 0
                jnz     loc_1408022EE

loc_14062970E:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+1D8C75↓j
                mov     rcx, r14
                call    sub_14021CA20
                mov     r14, rax
                test    rax, rax
                jnz     short loc_140629741

loc_14062971E:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+FA↓j
                mov     r12, [rsp+68h+arg_0]
                mov     eax, ebp
                and     eax, esi
                not     eax
                and     ebx, eax
                and     r15d, eax
                cmp     ebp, 0FFFFFFFFh
                jnz     short loc_140629782

loc_140629733:                          ; DATA XREF: .pdata:00000001400FE118↑o
                                        ; .pdata:00000001400FE124↑o
                cmp     esi, ebp
                jnz     short loc_140629782

loc_140629737:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+119↓j
                mov     r15, [rsp+68h+var_38]
                jmp     loc_1406296AC
; ---------------------------------------------------------------------------

loc_140629741:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+9C↑j
                                        ; DATA XREF: .pdata:00000001400FE124↑o ...
                mov     [rsp+68h+var_30], r13
                lea     r13, [rax+8]
                test    r13, r13
                jz      short loc_14062977C
                lea     rcx, [rdi+20h]
                call    sub_14021BD38
                lea     r8, [rsp+68h+arg_10]
                mov     rdx, r13
                mov     rcx, rax
                call    sub_140219E70
                cmp     [rsp+68h+arg_10], 0
                jz      short loc_14062977C

loc_140629775:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+100↓j
                mov     r13, [rsp+68h+var_30]
                jmp     short loc_14062971E
; ---------------------------------------------------------------------------

loc_14062977C:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+CD↑j
                                        ; SeAdjustAccessStateForAccessConstraints+F3↑j
                                        ; DATA XREF: ...
                mov     ebp, [r14+4]
                jmp     short loc_140629775
; ---------------------------------------------------------------------------

loc_140629782:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+B1↑j
                                        ; SeAdjustAccessStateForAccessConstraints+B5↑j
                                        ; DATA XREF: ...
                mov     ecx, [rdi+0Ch]
                mov     eax, [rdi+14h]
                test    cl, 2
                jz      short loc_140629791
                not     ebx
                and     eax, ebx

loc_140629791:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+10B↑j
                test    cl, 4
                jnz     short loc_1406297BA

loc_140629796:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+140↓j
                mov     [rdi+14h], eax
                jmp     short loc_140629737
; ---------------------------------------------------------------------------

loc_14062979B:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+48↑j
                                        ; DATA XREF: .pdata:00000001400FE148↑o ...
                cmp     eax, 100h
                jnz     short loc_1406297B2
                mov     ebx, 1020019h
                mov     r15d, 10F0006h
                jmp     loc_1406296D9
; ---------------------------------------------------------------------------

loc_1406297B2:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+120↑j
                mov     r15d, ebx
                jmp     loc_1406296D9
; ---------------------------------------------------------------------------

loc_1406297BA:                          ; CODE XREF: SeAdjustAccessStateForAccessConstraints+114↑j
                                        ; DATA XREF: .pdata:00000001400FE154↑o ...
                not     r15d
                and     eax, r15d
                jmp     short loc_140629796
SeAdjustAccessStateForAccessConstraints endp

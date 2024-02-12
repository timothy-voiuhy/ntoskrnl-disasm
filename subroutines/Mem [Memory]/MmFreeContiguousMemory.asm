MmFreeContiguousMemory proc near        ; CODE XREF: MmFreeContiguousMemorySpecifyCache+4↓p
                                        ; HalFreeCommonBuffer+7↓p ...

var_30          = qword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_8           = dword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140460436 SIZE 0000010B BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 50h
                and     [rbp+arg_8], 0
                xorps   xmm0, xmm0
                and     [rbp+arg_18], 0
                mov     rdi, rcx
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                call    sub_140245330
                cmp     eax, 5
                jz      loc_1402E841C
                test    eax, eax
                jz      loc_140460436
                lea     rdx, [rbp+var_20]
                mov     rcx, rdi
                call    sub_14029B570
                mov     esi, 4

loc_1402E833C:                          ; CODE XREF: MmFreeContiguousMemory+65↓j
                dec     esi
                mov     rcx, qword ptr [rbp+rsi*8+var_20]
                call    sub_1402805F0
                mov     [rbp+arg_10], rax
                mov     rbx, rax
                test    al, al
                js      short loc_1402E8357
                test    esi, esi
                jnz     short loc_1402E833C

loc_1402E8357:                          ; CODE XREF: MmFreeContiguousMemory+61↑j
                mov     esi, 0FFFh
                test    esi, edi
                jnz     loc_14046044F
                xor     r9d, r9d
                lea     r8, [rbp+arg_18]
                mov     eax, 200h
                lea     rdx, [rbp+arg_8]
                test    rbx, rbx
                mov     rcx, rdi
                cmovs   r9d, eax
                call    sub_1402E8EB8
                mov     r9, [rbp+arg_18]
                cmp     r9, 1000h
                jb      loc_140460528
                test    esi, r9d
                jnz     loc_140460528
                cmp     [rbp+arg_8], 546E6F43h
                jnz     loc_140460528
                cmp     cs:dword_140CFC538, 1
                mov     r14, r9
                mov     rsi, r9
                jz      short loc_1402E8428

loc_1402E83B9:                          ; CODE XREF: MmFreeContiguousMemory+13F↓j
                shr     rsi, 0Ch
                cmp     cs:dword_140C1D15C, 0
                jnz     loc_140460468

loc_1402E83CA:                          ; CODE XREF: MmFreeContiguousMemory+178184↓j
                mov     rdx, r14
                mov     rcx, rdi
                call    MmUnmapVideoDisplay
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                test    al, 1
                jnz     loc_140460479

loc_1402E83E3:                          ; CODE XREF: MmFreeContiguousMemory+17819B↓j
                lea     rcx, [rbp+arg_10]
                mov     rdi, rbx
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140460490

loc_1402E83F7:                          ; CODE XREF: MmFreeContiguousMemory+1781AA↓j
                                        ; MmFreeContiguousMemory+1781C7↓j ...
                shr     rbx, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rcx, rbx
                mov     rdx, rsi
                call    sub_1402E8438

loc_1402E8410:                          ; CODE XREF: MmFreeContiguousMemory+136↓j
                add     rsp, 50h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402E841C:                          ; CODE XREF: MmFreeContiguousMemory+2D↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     short loc_1402E8410
; ---------------------------------------------------------------------------

loc_1402E8428:                          ; CODE XREF: MmFreeContiguousMemory+C7↑j
                lea     r14, [r9+1000h]
                jmp     short loc_1402E83B9
MmFreeContiguousMemory endp

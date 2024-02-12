KeAllocateProcessorProfileStructures proc near
                                        ; CODE XREF: sub_1409A13A0+4C↓p
                                        ; sub_1409A13A0+F3↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404AB618 SIZE 00000196 BYTES

                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], ecx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, r8
                mov     eax, ecx
                mov     rdi, cr8
                xor     r10d, r10d
                test    r9b, r9b
                jnz     short loc_1403B649D
                lea     edx, [r10+2]
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                or      r15, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404AB618

loc_1403B6453:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F520A↓j
                                        ; KeAllocateProcessorProfileStructures+F5214↓j ...
                mov     rcx, gs:20h
                mov     rax, [r14]
                mov     [rcx+8498h], rax
                mov     rax, [r14]
                add     rax, 28h ; '('
                mov     [rcx+84A0h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AB65E

loc_1403B6482:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F5250↓j
                                        ; KeAllocateProcessorProfileStructures+F525C↓j ...
                movzx   eax, dil
                mov     cr8, rax
                xor     eax, eax

loc_1403B648C:                          ; CODE XREF: KeAllocateProcessorProfileStructures+1A3↓j
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B649D:                          ; CODE XREF: KeAllocateProcessorProfileStructures+27↑j
                mov     r13, rax
                mov     [r8], r10
                imul    r13, rdx
                lea     rsi, [rax+rax*4]
                mov     [rsp+58h+arg_18], r10b
                shl     rsi, 5
                mov     r12, rax
                add     rsi, r13
                cmp     cs:byte_140E01840, r10b
                jz      short loc_1403B64D1
                add     rsi, 0FFFh
                and     rsi, 0FFFFFFFFFFFFF000h

loc_1403B64D1:                          ; CODE XREF: KeAllocateProcessorProfileStructures+B1↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140761300
                mov     rbx, rax
                or      r15, 0FFFFFFFFFFFFFFFFh
                mov     eax, 2
                test    rbx, rbx
                jz      loc_1404AB6C1
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    memset
                cmp     cs:byte_140E01840, 0
                jz      short loc_1403B651E
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14079FD4C
                test    eax, eax
                jz      loc_1404AB6CC
                mov     [rsp+58h+arg_18], 1

loc_1403B651E:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F4↑j
                lea     r10, [rbx+r13]
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AB6D7

loc_1403B653D:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F52C9↓j
                                        ; KeAllocateProcessorProfileStructures+F52D3↓j ...
                mov     r8, gs:20h
                mov     rcx, r8
                call    sub_1403B65C8
                test    al, al
                jz      short loc_1403B65B8
                mov     rax, [r8+8498h]
                test    rax, rax
                jnz     loc_1404AB718
                cmp     [rsp+58h+arg_0], eax
                jbe     short loc_1403B6584
                mov     rcx, [rsp+58h+arg_8]
                lea     rax, [r10+20h]

loc_1403B6571:                          ; CODE XREF: KeAllocateProcessorProfileStructures+172↓j
                mov     [rax], rbx
                add     rbx, rcx
                lea     rax, [rax+0A0h]
                sub     r12, 1
                jnz     short loc_1403B6571

loc_1403B6584:                          ; CODE XREF: KeAllocateProcessorProfileStructures+156↑j
                xor     ebx, ebx
                mov     [r14], r10
                xor     r14d, r14d

loc_1403B658C:                          ; CODE XREF: KeAllocateProcessorProfileStructures+1AE↓j
                                        ; KeAllocateProcessorProfileStructures+F52C2↓j ...
                mov     eax, 2

loc_1403B6591:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F52B7↓j
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_1404AB726

loc_1403B659F:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F5319↓j
                                        ; KeAllocateProcessorProfileStructures+F5326↓j ...
                movzx   eax, dil
                mov     cr8, rax
                test    rbx, rbx
                jnz     loc_1404AB78B

loc_1403B65B0:                          ; CODE XREF: KeAllocateProcessorProfileStructures+F5399↓j
                mov     eax, r14d
                jmp     loc_1403B648C
; ---------------------------------------------------------------------------

loc_1403B65B8:                          ; CODE XREF: KeAllocateProcessorProfileStructures+140↑j
                mov     r14d, 0C00000BBh
                jmp     short loc_1403B658C
KeAllocateProcessorProfileStructures endp

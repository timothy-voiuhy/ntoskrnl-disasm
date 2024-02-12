MmFlushImageSection proc near           ; CODE XREF: sub_14032B84C+149CF2↓p
                                        ; DATA XREF: .rdata:00000001400826C4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140480EDE SIZE 00000123 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                xor     edi, edi
                mov     r12d, edx
                or      rbp, 0FFFFFFFFFFFFFFFFh
                mov     r15, rcx

loc_14034A7D9:                          ; CODE XREF: MmFlushImageSection+136790↓j
                lea     rcx, dword_140C4C800
                call    ExAcquireSpinLockExclusive
                movzx   ebx, al
                test    r12d, r12d
                jnz     short loc_14034A7F5
                mov     rsi, [r15]
                test    rsi, rsi
                jnz     short loc_14034A842

loc_14034A7F5:                          ; CODE XREF: MmFlushImageSection+3B↑j
                                        ; MmFlushImageSection+C5↓j
                mov     rsi, [r15+10h]
                test    rsi, rsi
                jnz     short loc_14034A87A
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140480FA3

loc_14034A818:                          ; CODE XREF: MmFlushImageSection+1367F5↓j
                                        ; MmFlushImageSection+136801↓j ...
                mov     dil, 1

loc_14034A81B:                          ; CODE XREF: MmFlushImageSection+115↓j
                                        ; MmFlushImageSection+136797↓j ...
                mov     cr8, rbx
                mov     al, dil

loc_14034A822:                          ; CODE XREF: MmFlushImageSection+F4↓j
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

loc_14034A842:                          ; CODE XREF: MmFlushImageSection+43↑j
                lea     r14, [rsi+48h]
                mov     rcx, r14
                call    ExTryAcquireSpinLockExclusiveAtDpcLevel
                test    eax, eax
                jz      loc_140480EDE
                cmp     [rsi+30h], rdi
                jnz     short loc_14034A8A9
                mov     eax, [rsi+38h]
                test    al, 2
                jnz     short loc_14034A8A9
                mov     rax, [rsi+70h]
                cmp     rax, 1
                ja      short loc_14034A8A9
                mov     rcx, r14
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                jmp     loc_14034A7F5
; ---------------------------------------------------------------------------

loc_14034A87A:                          ; CODE XREF: MmFlushImageSection+4C↑j
                lea     rcx, [rsi+48h]
                call    ExTryAcquireSpinLockExclusiveAtDpcLevel
                test    eax, eax
                jz      loc_140480EDE
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                xor     r8d, r8d
                mov     dl, bl
                mov     rcx, rsi
                call    sub_14034A9C4
                jmp     loc_14034A822
; ---------------------------------------------------------------------------

loc_14034A8A9:                          ; CODE XREF: MmFlushImageSection+AA↑j
                                        ; MmFlushImageSection+B1↑j ...
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     rcx, r14
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      loc_14034A81B
                jmp     loc_140480F45
MmFlushImageSection endp

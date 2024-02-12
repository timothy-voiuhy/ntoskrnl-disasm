ObLogSecurityDescriptor proc near       ; CODE XREF: sub_1405ED834+B2↑p
                                        ; sub_14060AC40+2DD↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080030C SIZE 0000000A BYTES

                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 38h
                mov     r12, rcx
                call    RtlLengthSecurityDescriptor
                xor     ecx, ecx
                mov     [rsp+78h+arg_0], eax
                mov     eax, eax
                mov     ebx, ecx
                mov     r10d, eax
                mov     [rsp+78h+arg_18], rax
                and     r10, 0FFFFFFFFFFFFFFF8h
                mov     r9, r12
                add     r10, r12
                cmp     r12, r10
                jnb     short loc_1406252F0
                nop     dword ptr [rax+00000000h]

loc_1406252E0:                          ; CODE XREF: ObLogSecurityDescriptor+5E↓j
                xor     rbx, [r9]
                add     r9, 10h
                rol     rbx, 3
                cmp     r9, r10
                jb      short loc_1406252E0

loc_1406252F0:                          ; CODE XREF: ObLogSecurityDescriptor+47↑j
                mov     rbp, gs:188h
                lea     rax, unk_140D25A00
                movzx   esi, bl
                mov     r15, rcx
                shl     rsi, 4
                add     rsi, rax
                dec     word ptr [rbp+1E4h]

loc_140625314:                          ; CODE XREF: ObLogSecurityDescriptor+105↓j
                xor     edx, edx
                lea     r14, [rsi+8]
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx

loc_140625322:                          ; CODE XREF: ObLogSecurityDescriptor+1A9↓j
                mov     rdi, [r14]
                test    rdi, rdi
                jz      short loc_14062533D

loc_14062532A:                          ; CODE XREF: ObLogSecurityDescriptor+AB↓j
                cmp     [rdi+10h], rbx
                jz      short loc_14062539A
                ja      short loc_14062533D

loc_140625332:                          ; CODE XREF: ObLogSecurityDescriptor+114↓j
                                        ; ObLogSecurityDescriptor+12C↓j
                mov     r14, rdi
                mov     rdi, [rdi]
                test    rdi, rdi
                jnz     short loc_14062532A

loc_14062533D:                          ; CODE XREF: ObLogSecurityDescriptor+98↑j
                                        ; ObLogSecurityDescriptor+A0↑j
                test    r15, r15
                jnz     loc_14062542B
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rsi], rcx
                jnz     loc_14062547B

loc_140625358:                          ; CODE XREF: ObLogSecurityDescriptor+1F3↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     r9d, [rsp+78h+arg_10]
                mov     r8, rbx
                mov     edx, [rsp+78h+arg_0]
                mov     rcx, r12
                call    sub_140625584
                mov     r15, rax
                test    rax, rax
                jz      loc_14080030C
                dec     word ptr [rbp+1E4h]
                jmp     loc_140625314
; ---------------------------------------------------------------------------

loc_14062539A:                          ; CODE XREF: ObLogSecurityDescriptor+9E↑j
                mov     eax, [rsp+78h+arg_0]
                cmp     [rdi+18h], eax
                jnz     short loc_140625332
                mov     r8, [rsp+78h+arg_18]
                lea     rdx, [rdi+20h]
                mov     rcx, r12
                call    memcmp
                test    eax, eax
                jnz     loc_140625332
                mov     ecx, [rsp+78h+arg_10]
                lock xadd [rdi+8], rcx
                test    rcx, rcx
                jle     short loc_140625422

loc_1406253D4:                          ; CODE XREF: ObLogSecurityDescriptor+199↓j
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rsi], rcx
                jnz     loc_14062546E

loc_1406253E6:                          ; CODE XREF: ObLogSecurityDescriptor+1E6↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rcx, [rsp+78h+arg_8]
                lea     rax, [rdi+20h]
                mov     [rcx], rax
                test    r15, r15
                jnz     loc_140625492

loc_14062540E:                          ; CODE XREF: ObLogSecurityDescriptor+1DC↓j
                                        ; ObLogSecurityDescriptor+20F↓j
                xor     eax, eax

loc_140625410:                          ; CODE XREF: ObLogSecurityDescriptor+1DB081↓j
                add     rsp, 38h
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
                align 2

loc_140625422:                          ; CODE XREF: ObLogSecurityDescriptor+142↑j
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------
                jmp     short loc_1406253D4
; ---------------------------------------------------------------------------

loc_14062542B:                          ; CODE XREF: ObLogSecurityDescriptor+B0↑j
                mov     [r15], rdi
                mov     rax, rdi
                lock cmpxchg [r14], r15
                mov     r14, rax
                jnz     loc_140625322
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rsi], rcx
                jnz     short loc_140625488

loc_14062544D:                          ; CODE XREF: ObLogSecurityDescriptor+200↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rcx, [rsp+78h+arg_8]
                lea     rax, [r15+20h]
                mov     [rcx], rax
                jmp     short loc_14062540E
; ---------------------------------------------------------------------------

loc_14062546E:                          ; CODE XREF: ObLogSecurityDescriptor+150↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     loc_1406253E6
; ---------------------------------------------------------------------------

loc_14062547B:                          ; CODE XREF: ObLogSecurityDescriptor+C2↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     loc_140625358
; ---------------------------------------------------------------------------

loc_140625488:                          ; CODE XREF: ObLogSecurityDescriptor+1BB↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     short loc_14062544D
; ---------------------------------------------------------------------------

loc_140625492:                          ; CODE XREF: ObLogSecurityDescriptor+178↑j
                mov     edx, 6353624Fh
                mov     rcx, r15
                call    ExFreePoolWithTag
                jmp     loc_14062540E
ObLogSecurityDescriptor endp

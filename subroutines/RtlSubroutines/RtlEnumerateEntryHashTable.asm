RtlEnumerateEntryHashTable proc near    ; CODE XREF: sub_14020260C+BC↑p
                                        ; RtlWeaklyEnumerateEntryHashTable+4↓p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041F1CC SIZE 00000014 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                mov     ebx, [rdx+20h]
                mov     rsi, rdx
                mov     r11d, [rcx+8]
                mov     rdi, rcx
                mov     r8d, ebx
                cmp     ebx, r11d
                jnb     short loc_140202789
                lea     r10d, [rbx+80h]
                xor     ebp, ebp
                xchg    ax, ax

loc_140202740:                          ; CODE XREF: RtlEnumerateEntryHashTable+77↓j
                cmp     r8d, ebx
                jz      short loc_140202792
                mov     rdx, [rdi+20h]
                cmp     r11d, 80h
                jbe     short loc_14020278D
                bsr     ecx, r10d
                mov     r9d, 1
                shl     r9d, cl
                xor     r9d, r10d
                lea     eax, [rcx-7]
                mov     rdx, [rdx+rax*8]

loc_140202769:                          ; CODE XREF: RtlEnumerateEntryHashTable+80↓j
                mov     eax, r9d
                shl     rax, 4
                add     rax, rdx
                mov     rdx, rax

loc_140202776:                          ; CODE XREF: RtlEnumerateEntryHashTable+89↓j
                mov     rdx, [rdx]
                cmp     rdx, rax
                jnz     short loc_1402027A0

loc_14020277E:                          ; CODE XREF: RtlEnumerateEntryHashTable+21CACB↓j
                inc     r8d
                inc     r10d
                cmp     r8d, r11d
                jb      short loc_140202740

loc_140202789:                          ; CODE XREF: RtlEnumerateEntryHashTable+23↑j
                xor     eax, eax
                jmp     short loc_1402027F8
; ---------------------------------------------------------------------------

loc_14020278D:                          ; CODE XREF: RtlEnumerateEntryHashTable+40↑j
                mov     r9d, r8d
                jmp     short loc_140202769
; ---------------------------------------------------------------------------

loc_140202792:                          ; CODE XREF: RtlEnumerateEntryHashTable+33↑j
                mov     rax, [rsi+18h]
                mov     rdx, rsi
                jmp     short loc_140202776
; ---------------------------------------------------------------------------
                align 20h

loc_1402027A0:                          ; CODE XREF: RtlEnumerateEntryHashTable+6C↑j
                                        ; RtlEnumerateEntryHashTable+21CAC5↓j
                cmp     [rdx+10h], rbp
                jz      loc_14041F1CC
                mov     rcx, [rsi]
                cmp     [rcx+8], rsi
                jnz     short loc_140202814
                mov     r9, [rsi+8]
                cmp     [r9], rsi
                jnz     short loc_140202814
                mov     [r9], rcx
                mov     [rcx+8], r9
                mov     rcx, [rsi+18h]
                cmp     rcx, rax
                jz      short loc_1402027D6
                cmp     [rcx], rcx
                jz      short loc_14020280A

loc_1402027D1:                          ; CODE XREF: RtlEnumerateEntryHashTable+FD↓j
                cmp     [rax], rax
                jz      short loc_14020280F

loc_1402027D6:                          ; CODE XREF: RtlEnumerateEntryHashTable+BA↑j
                                        ; RtlEnumerateEntryHashTable+102↓j
                mov     [rsi+20h], r8d
                mov     [rsi+18h], rax
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     short loc_140202814
                mov     [rsi], rax
                mov     [rsi+8], rdx
                mov     [rax+8], rsi
                mov     rax, rdx
                mov     [rdx], rsi

loc_1402027F8:                          ; CODE XREF: RtlEnumerateEntryHashTable+7B↑j
                mov     rbx, [rsp+8+arg_8]
                mov     rbp, [rsp+8+arg_10]
                mov     rsi, [rsp+8+arg_18]
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14020280A:                          ; CODE XREF: RtlEnumerateEntryHashTable+BF↑j
                dec     dword ptr [rdi+18h]
                jmp     short loc_1402027D1
; ---------------------------------------------------------------------------

loc_14020280F:                          ; CODE XREF: RtlEnumerateEntryHashTable+C4↑j
                inc     dword ptr [rdi+18h]
                jmp     short loc_1402027D6
; ---------------------------------------------------------------------------

loc_140202814:                          ; CODE XREF: RtlEnumerateEntryHashTable+A1↑j
                                        ; RtlEnumerateEntryHashTable+AA↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlEnumerateEntryHashTable endp

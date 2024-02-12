RtlNumberOfSetBitsInRangeEx proc near   ; DATA XREF: .pdata:00000001400F7CBC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                mov     rax, [rcx]
                mov     rbx, r8
                cmp     rdx, rax
                jnb     loc_1405888B4
                sub     rax, rdx
                cmp     rax, rbx
                jb      loc_1405888B4
                xor     r9d, r9d
                test    rbx, rbx
                jz      loc_1405888B4
                mov     r10, [rcx+8]
                lea     rsi, [rdx-1]
                add     rsi, rbx
                mov     r8, rdx
                mov     r11, rsi
                shr     r8, 3
                mov     edi, edx
                shr     r11, 3
                and     edi, 7
                and     esi, 7
                add     r10, r8
                cmp     r8, r11
                jnz     short loc_1405886FE
                movzx   r8d, byte ptr [r10]
                lea     eax, [rsi+1]
                lea     rbx, cs:140000000h
                movzx   edx, byte ptr [rax+rbx+1DAE0h]
                movzx   eax, byte ptr [rdi+rbx+1A870h]
                and     edx, eax
                and     edx, r8d
                not     edx
                movzx   eax, dl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                jmp     loc_1405888B8
; ---------------------------------------------------------------------------

loc_1405886FE:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+67↑j
                or      dl, bl
                test    dl, 3Fh
                jnz     loc_140588789
                test    rbx, rbx
                jz      short loc_140588781
                dec     rbx
                mov     rdi, 3333333333333333h
                shr     rbx, 6
                mov     r14, 5555555555555555h
                inc     rbx
                mov     r15, 0F0F0F0F0F0F0F0Fh
                mov     r12, 101010101010101h

loc_140588740:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+11F↓j
                mov     rcx, [r10]
                lea     r10, [r10+8]
                mov     rax, rcx
                shr     rax, 1
                and     rax, r14
                sub     rcx, rax
                mov     rax, rcx
                and     rcx, rdi
                shr     rax, 2
                and     rax, rdi
                add     rax, rcx
                mov     rcx, rax
                shr     rcx, 4
                add     rcx, rax
                and     rcx, r15
                imul    rcx, r12
                shr     rcx, 38h
                add     r9, rcx
                sub     rbx, 1
                jnz     short loc_140588740

loc_140588781:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+AC↑j
                mov     rax, r9
                jmp     loc_1405888B8
; ---------------------------------------------------------------------------

loc_140588789:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+A3↑j
                lea     rbx, cs:140000000h
                test    edi, edi
                jz      short loc_1405887B6
                movzx   edx, byte ptr [r10]
                inc     r10
                movzx   ecx, byte ptr [rdi+rbx+1A870h]
                and     ecx, edx
                not     ecx
                inc     r8
                movzx   eax, cl
                movzx   r9d, byte ptr [rax+rbx+1A2E0h]

loc_1405887B6:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+132↑j
                mov     rax, r8
                mov     edx, 8
                and     eax, 7
                sub     rdx, rax
                test    rdx, 0FFFFFFFFFFFFFFF7h
                jz      short loc_1405887F2

loc_1405887CD:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+190↓j
                cmp     r8, r11
                jnb     short loc_1405887F2
                movzx   ecx, byte ptr [r10]
                inc     r8
                not     ecx
                inc     r10
                movzx   eax, cl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                add     r9, rax
                sub     rdx, 1
                jnz     short loc_1405887CD

loc_1405887F2:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+16B↑j
                                        ; RtlNumberOfSetBitsInRangeEx+170↑j
                lea     rbp, [r8+8]
                cmp     rbp, r11
                ja      short loc_14058886B
                mov     rdi, 3333333333333333h
                mov     r14, 5555555555555555h
                mov     r15, 0F0F0F0F0F0F0F0Fh
                mov     r12, 101010101010101h

loc_140588823:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+209↓j
                mov     rdx, [r10]
                add     r8, 8
                mov     rax, rdx
                add     r10, 8
                shr     rax, 1
                add     rbp, 8
                and     rax, r14
                sub     rdx, rax
                mov     rcx, rdx
                and     rdx, rdi
                shr     rcx, 2
                and     rcx, rdi
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                and     rax, r15
                imul    rax, r12
                shr     rax, 38h
                add     r9, rax
                cmp     rbp, r11
                jbe     short loc_140588823

loc_14058886B:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+199↑j
                cmp     r8, r11
                jnb     short loc_140588890
                sub     r11, r8

loc_140588873:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+22E↓j
                movzx   ecx, byte ptr [r10]
                inc     r10
                not     ecx
                movzx   eax, cl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                add     r9, rax
                sub     r11, 1
                jnz     short loc_140588873

loc_140588890:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+20E↑j
                movzx   r8d, byte ptr [r10]
                lea     eax, [rsi+1]
                movzx   edx, byte ptr [rax+rbx+1DAE0h]
                and     edx, r8d
                not     edx
                movzx   eax, dl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                add     rax, r9
                jmp     short loc_1405888B8
; ---------------------------------------------------------------------------

loc_1405888B4:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+22↑j
                                        ; RtlNumberOfSetBitsInRangeEx+2E↑j ...
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1405888B8:                          ; CODE XREF: RtlNumberOfSetBitsInRangeEx+99↑j
                                        ; RtlNumberOfSetBitsInRangeEx+124↑j ...
                mov     rbx, [rsp+18h+arg_0]
                mov     rbp, [rsp+18h+arg_8]
                mov     rsi, [rsp+18h+arg_10]
                mov     rdi, [rsp+18h+arg_18]
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNumberOfSetBitsInRangeEx endp

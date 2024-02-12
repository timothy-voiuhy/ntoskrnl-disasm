RtlNumberOfSetBitsEx proc near          ; CODE XREF: sub_140502DE0+513↑p
                                        ; sub_140562740+243↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                mov     rdx, [rcx]
                xor     ebx, ebx
                mov     r11, [rcx+8]
                mov     r10, rdx
                shr     rdx, 3
                and     r10d, 7
                test    r10, r10
                mov     r8d, r11d
                setnz   bl
                xor     esi, esi
                and     r8d, 7
                add     rbx, rdx
                mov     ecx, r8d
                lea     eax, [rsi+8]
                sub     rax, rcx
                cmp     rax, rdx
                ja      short loc_1405882AB
                lea     r9d, [rsi+8]
                sub     r9d, r8d
                sub     edx, r9d
                and     edx, 7
                test    r10, r10
                lea     edi, [rdx+1]
                cmovz   edi, edx
                mov     rdx, rbx
                lea     ecx, [rdi+r9]
                sub     rdx, rcx
                jmp     short loc_1405882B2
; ---------------------------------------------------------------------------

loc_1405882AB:                          ; CODE XREF: RtlNumberOfSetBitsEx+47↑j
                xor     edi, edi
                mov     r9d, ebx
                xor     edx, edx

loc_1405882B2:                          ; CODE XREF: RtlNumberOfSetBitsEx+69↑j
                xor     r8d, r8d
                lea     r14, cs:140000000h
                test    r9d, r9d
                jz      short loc_1405882FD
                lea     rbp, [rbx-1]

loc_1405882C5:                          ; CODE XREF: RtlNumberOfSetBitsEx+BB↓j
                mov     cl, [r11]
                inc     r11
                mov     eax, r8d
                cmp     rax, rbp
                jnz     short loc_1405882E0
                test    r10, r10
                jz      short loc_1405882E0
                and     cl, [r10+r14+1DAE0h]

loc_1405882E0:                          ; CODE XREF: RtlNumberOfSetBitsEx+91↑j
                                        ; RtlNumberOfSetBitsEx+96↑j
                movzx   eax, cl
                inc     r8d
                not     eax
                movzx   ecx, al
                movzx   eax, byte ptr [rcx+r14+1A2E0h]
                add     rsi, rax
                add     r9d, 0FFFFFFFFh
                jnz     short loc_1405882C5

loc_1405882FD:                          ; CODE XREF: RtlNumberOfSetBitsEx+7F↑j
                test    rdx, rdx
                jz      short loc_14058837A
                lea     r9, [rdx-1]
                mov     rbp, 3333333333333333h
                shr     r9, 3
                inc     r9
                lea     r8d, [r8+r9*8]

loc_14058831B:                          ; CODE XREF: RtlNumberOfSetBitsEx+138↓j
                mov     rdx, [r11]
                mov     rcx, 5555555555555555h
                mov     rax, rdx
                add     r11, 8
                shr     rax, 1
                and     rax, rcx
                sub     rdx, rax
                mov     rcx, rdx
                and     rdx, rbp
                shr     rcx, 2
                and     rcx, rbp
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                add     rsi, rax
                sub     r9, 1
                jnz     short loc_14058831B

loc_14058837A:                          ; CODE XREF: RtlNumberOfSetBitsEx+C0↑j
                test    edi, edi
                jz      short loc_1405883B8
                dec     rbx

loc_140588381:                          ; CODE XREF: RtlNumberOfSetBitsEx+176↓j
                mov     cl, [r11]
                inc     r11
                mov     eax, r8d
                cmp     rax, rbx
                jnz     short loc_14058839C
                test    r10, r10
                jz      short loc_14058839C
                and     cl, [r10+r14+1DAE0h]

loc_14058839C:                          ; CODE XREF: RtlNumberOfSetBitsEx+14D↑j
                                        ; RtlNumberOfSetBitsEx+152↑j
                movzx   ecx, cl
                inc     r8d
                not     ecx
                movzx   edx, cl
                movzx   ecx, byte ptr [rdx+r14+1A2E0h]
                add     rsi, rcx
                add     edi, 0FFFFFFFFh
                jnz     short loc_140588381

loc_1405883B8:                          ; CODE XREF: RtlNumberOfSetBitsEx+13C↑j
                mov     rbx, [rsp+8+arg_0]
                mov     rax, rsi
                mov     rsi, [rsp+8+arg_10]
                mov     rbp, [rsp+8+arg_8]
                mov     rdi, [rsp+8+arg_18]
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNumberOfSetBitsEx endp

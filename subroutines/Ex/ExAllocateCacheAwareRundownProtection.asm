ExAllocateCacheAwareRundownProtection proc near
                                        ; CODE XREF: sub_1403CA5F4+1E2↑p
                                        ; sub_14069B840+65↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408169B4 SIZE 0000001B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, edx
                mov     r8d, edx
                mov     edx, 18h
                mov     r14d, ecx
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14069BAEE
                mov     edi, cs:dword_140CFC404
                mov     [rax+14h], edi
                cmp     edi, 1
                jbe     loc_1408169B4
                call    KeGetRecommendedSharedDataAlignment
                mov     esi, eax

loc_14069BA60:                          ; CODE XREF: ExAllocateCacheAwareRundownProtection+17AFA9↓j
                imul    edi, esi
                mov     r8d, ebp
                mov     ecx, r14d
                mov     [rbx+10h], esi
                mov     edx, edi
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_1408169BE
                mov     edx, [rbx+14h]
                cmp     edx, 1
                jbe     loc_14069BB0D
                lea     edi, [rsi-1]
                test    rax, rdi
                jz      short loc_14069BB0D
                xor     edx, edx
                mov     rcx, rax
                call    ExFreePoolWithTag
                mov     edx, [rbx+14h]
                mov     r8d, ebp
                inc     edx
                mov     ecx, r14d
                imul    edx, esi
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_1408169BE
                mov     edx, [rbx+14h]
                lea     rcx, [rdi+rax]
                not     rdi
                and     rcx, rdi

loc_14069BAC3:                          ; CODE XREF: ExAllocateCacheAwareRundownProtection+100↓j
                xor     r8d, r8d
                mov     [rbx+8], rax
                mov     [rbx], rcx
                test    edx, edx
                jz      short loc_14069BAEE

loc_14069BAD1:                          ; CODE XREF: ExAllocateCacheAwareRundownProtection+DC↓j
                xor     edx, edx
                mov     eax, r8d
                div     dword ptr [rbx+14h]
                mov     rax, [rbx]
                inc     r8d
                imul    edx, [rbx+10h]
                and     qword ptr [rdx+rax], 0
                cmp     r8d, [rbx+14h]
                jb      short loc_14069BAD1

loc_14069BAEE:                          ; CODE XREF: ExAllocateCacheAwareRundownProtection+31↑j
                                        ; ExAllocateCacheAwareRundownProtection+BF↑j
                mov     rax, rbx

loc_14069BAF1:                          ; CODE XREF: ExAllocateCacheAwareRundownProtection+17AFBA↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069BB0D:                          ; CODE XREF: ExAllocateCacheAwareRundownProtection+72↑j
                                        ; ExAllocateCacheAwareRundownProtection+7E↑j
                mov     rcx, rax
                jmp     short loc_14069BAC3
ExAllocateCacheAwareRundownProtection endp

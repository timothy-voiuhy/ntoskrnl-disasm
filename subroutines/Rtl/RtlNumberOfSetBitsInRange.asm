RtlNumberOfSetBitsInRange proc near     ; CODE XREF: RtlNumberOfClearBitsInRange+9↑p
                                        ; DATA XREF: .pdata:00000001400F7CB0↑o

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
                mov     eax, r8d
                mov     r8d, [rcx]
                cmp     edx, r8d
                jnb     loc_140588633
                sub     r8d, edx
                cmp     r8d, eax
                jb      loc_140588633
                xor     r10d, r10d
                test    eax, eax
                jz      loc_140588633
                lea     esi, [rdx-1]
                mov     r8d, edx
                add     esi, eax
                shr     r8d, 3
                mov     r11d, esi
                mov     r9d, r8d
                add     r9, [rcx+8]
                mov     edi, edx
                shr     r11d, 3
                and     edi, 7
                and     esi, 7
                cmp     r8d, r11d
                jnz     short loc_14058847B
                movzx   r8d, byte ptr [r9]
                lea     eax, [rsi+1]
                lea     rbx, cs:140000000h
                movzx   edx, byte ptr [rax+rbx+1DAE0h]
                movzx   eax, byte ptr [rdi+rbx+1A870h]
                and     edx, eax
                and     edx, r8d
                not     edx
                movzx   eax, dl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                jmp     loc_140588636
; ---------------------------------------------------------------------------

loc_14058847B:                          ; CODE XREF: RtlNumberOfSetBitsInRange+64↑j
                or      edx, eax
                test    dl, 3Fh
                jnz     short loc_1405884FF
                test    eax, eax
                jz      short loc_1405884F7
                lea     edx, [rax-1]
                mov     rbp, 5555555555555555h
                shr     edx, 6
                mov     rdi, 3333333333333333h
                inc     edx
                mov     r14, 0F0F0F0F0F0F0F0Fh
                mov     r15, 101010101010101h

loc_1405884B6:                          ; CODE XREF: RtlNumberOfSetBitsInRange+115↓j
                mov     rcx, [r9]
                lea     r9, [r9+8]
                mov     rax, rcx
                shr     rax, 1
                and     rax, rbp
                sub     rcx, rax
                mov     rax, rcx
                and     rcx, rdi
                shr     rax, 2
                and     rax, rdi
                add     rax, rcx
                mov     rcx, rax
                shr     rcx, 4
                add     rcx, rax
                and     rcx, r14
                imul    rcx, r15
                shr     rcx, 38h
                add     r10d, ecx
                sub     rdx, 1
                jnz     short loc_1405884B6

loc_1405884F7:                          ; CODE XREF: RtlNumberOfSetBitsInRange+A4↑j
                mov     eax, r10d
                jmp     loc_140588636
; ---------------------------------------------------------------------------

loc_1405884FF:                          ; CODE XREF: RtlNumberOfSetBitsInRange+A0↑j
                lea     rbx, cs:140000000h
                test    edi, edi
                jz      short loc_14058852C
                movzx   edx, byte ptr [r9]
                inc     r9
                movzx   ecx, byte ptr [rdi+rbx+1A870h]
                and     ecx, edx
                not     ecx
                inc     r8d
                movzx   eax, cl
                movzx   r10d, byte ptr [rax+rbx+1A2E0h]

loc_14058852C:                          ; CODE XREF: RtlNumberOfSetBitsInRange+128↑j
                mov     eax, r8d
                mov     edx, 8
                and     eax, 7
                sub     edx, eax
                test    edx, 0FFFFFFF7h
                jz      short loc_140588565

loc_140588541:                          ; CODE XREF: RtlNumberOfSetBitsInRange+183↓j
                cmp     r8d, r11d
                jnb     short loc_140588565
                movzx   ecx, byte ptr [r9]
                inc     r8d
                not     ecx
                inc     r9
                movzx   eax, cl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                add     r10d, eax
                add     edx, 0FFFFFFFFh
                jnz     short loc_140588541

loc_140588565:                          ; CODE XREF: RtlNumberOfSetBitsInRange+15F↑j
                                        ; RtlNumberOfSetBitsInRange+164↑j
                mov     eax, r8d
                add     rax, 8
                mov     r12d, r11d
                cmp     rax, r12
                ja      short loc_1405885E7
                mov     rbp, 5555555555555555h
                mov     rdi, 3333333333333333h
                mov     r14, 0F0F0F0F0F0F0F0Fh
                mov     r15, 101010101010101h

loc_14058859C:                          ; CODE XREF: RtlNumberOfSetBitsInRange+205↓j
                mov     rdx, [r9]
                add     r8d, 8
                mov     rax, rdx
                add     r9, 8
                shr     rax, 1
                and     rax, rbp
                sub     rdx, rax
                mov     rcx, rdx
                and     rdx, rdi
                shr     rcx, 2
                and     rcx, rdi
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                and     rax, r14
                imul    rax, r15
                shr     rax, 38h
                add     r10d, eax
                mov     eax, r8d
                add     rax, 8
                cmp     rax, r12
                jbe     short loc_14058859C

loc_1405885E7:                          ; CODE XREF: RtlNumberOfSetBitsInRange+192↑j
                cmp     r8d, r11d
                jnb     short loc_14058860F
                sub     r11d, r8d
                mov     edx, r11d

loc_1405885F2:                          ; CODE XREF: RtlNumberOfSetBitsInRange+22D↓j
                movzx   ecx, byte ptr [r9]
                inc     r9
                not     ecx
                movzx   eax, cl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                add     r10d, eax
                sub     rdx, 1
                jnz     short loc_1405885F2

loc_14058860F:                          ; CODE XREF: RtlNumberOfSetBitsInRange+20A↑j
                movzx   r8d, byte ptr [r9]
                lea     eax, [rsi+1]
                movzx   edx, byte ptr [rax+rbx+1DAE0h]
                and     edx, r8d
                not     edx
                movzx   eax, dl
                movzx   eax, byte ptr [rax+rbx+1A2E0h]
                add     eax, r10d
                jmp     short loc_140588636
; ---------------------------------------------------------------------------

loc_140588633:                          ; CODE XREF: RtlNumberOfSetBitsInRange+22↑j
                                        ; RtlNumberOfSetBitsInRange+2E↑j ...
                or      eax, 0FFFFFFFFh

loc_140588636:                          ; CODE XREF: RtlNumberOfSetBitsInRange+96↑j
                                        ; RtlNumberOfSetBitsInRange+11A↑j ...
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
RtlNumberOfSetBitsInRange endp

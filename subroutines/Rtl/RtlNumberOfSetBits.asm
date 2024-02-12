RtlNumberOfSetBits proc near            ; CODE XREF: sub_14020CCC4+AE↑p
                                        ; RtlNumberOfClearBits+9↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                mov     edx, [rcx]
                xor     r9d, r9d
                mov     rax, [rcx+8]
                mov     r10d, edx
                shr     r10d, 3
                mov     ebp, edx
                mov     r14d, edx
                and     ebp, 7
                mov     edi, r9d
                mov     r11d, eax
                setnz   dil
                mov     r8d, 8
                and     r11d, 7
                mov     edx, r8d
                mov     ecx, r11d
                add     edi, r10d
                sub     rdx, rcx
                mov     ecx, r14d
                shr     rcx, 3
                cmp     rdx, rcx
                ja      loc_1402B15CB
                sub     r8d, r11d
                mov     r11d, edi
                sub     r10d, r8d
                and     r10d, 7
                test    ebp, ebp
                lea     esi, [r10+1]
                cmovz   esi, r10d
                sub     r11d, esi
                sub     r11d, r8d

loc_1402B14C5:                          ; CODE XREF: RtlNumberOfSetBits+184↓j
                lea     r15, cs:140000000h
                mov     ebx, r9d
                test    r8d, r8d
                jz      short loc_1402B150B
                lea     r10d, [rdi-1]
                nop     dword ptr [rax+rax+00000000h]

loc_1402B14E0:                          ; CODE XREF: RtlNumberOfSetBits+B9↓j
                movzx   edx, byte ptr [rax]
                inc     rax
                cmp     ebx, r10d
                jz      loc_1402B15D9

loc_1402B14EF:                          ; CODE XREF: RtlNumberOfSetBits+18B↓j
                                        ; RtlNumberOfSetBits+19F↓j
                movzx   ecx, dl
                inc     ebx
                not     ecx
                movzx   edx, cl
                movzx   ecx, byte ptr [rdx+r15+1A2E0h]
                add     r9d, ecx
                add     r8d, 0FFFFFFFFh
                jnz     short loc_1402B14E0

loc_1402B150B:                          ; CODE XREF: RtlNumberOfSetBits+82↑j
                test    r11d, r11d
                jz      loc_1402B15B2
                lea     ecx, [r11-1]

loc_1402B1518:                          ; DATA XREF: .rdata:00000001400641F8↑o
                                        ; .rdata:000000014006420C↑o ...
                mov     [rsp+20h+arg_0], r12
                shr     ecx, 3
                mov     r15, 5555555555555555h
                inc     ecx
                mov     [rsp+20h+arg_8], r13
                mov     r10d, ecx
                mov     r11, 3333333333333333h
                mov     r12, 0F0F0F0F0F0F0F0Fh
                mov     r13, 101010101010101h
                lea     ebx, [rbx+rcx*8]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_1402B1560:                          ; CODE XREF: RtlNumberOfSetBits+14F↓j
                mov     r8, [rax]
                add     rax, 8
                mov     rcx, r8
                shr     rcx, 1
                and     rcx, r15
                sub     r8, rcx
                mov     rdx, r8
                and     r8, r11
                shr     rdx, 2
                and     rdx, r11
                add     rdx, r8
                mov     rcx, rdx
                shr     rcx, 4
                add     rcx, rdx
                and     rcx, r12
                imul    rcx, r13
                shr     rcx, 38h
                add     r9d, ecx
                sub     r10, 1
                jnz     short loc_1402B1560
                mov     r13, [rsp+20h+arg_8]
                lea     r15, cs:140000000h
                mov     r12, [rsp+20h+arg_0]

loc_1402B15B2:                          ; CODE XREF: RtlNumberOfSetBits+BE↑j
                                        ; DATA XREF: .pdata:00000001400D059C↑o ...
                test    esi, esi
                jnz     short loc_1402B15F4

loc_1402B15B6:                          ; CODE XREF: RtlNumberOfSetBits+1D7↓j
                mov     rbx, [rsp+20h+arg_10]
                mov     eax, r9d
                mov     rbp, [rsp+20h+arg_18]
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B15CB:                          ; CODE XREF: RtlNumberOfSetBits+52↑j
                mov     r8d, edi
                mov     esi, r9d
                mov     r11d, r9d
                jmp     loc_1402B14C5
; ---------------------------------------------------------------------------

loc_1402B15D9:                          ; CODE XREF: RtlNumberOfSetBits+99↑j
                test    ebp, ebp
                jz      loc_1402B14EF
                mov     rcx, r14
                and     ecx, 7
                and     dl, [rcx+r15+1DAE0h]
                jmp     loc_1402B14EF
; ---------------------------------------------------------------------------

loc_1402B15F4:                          ; CODE XREF: RtlNumberOfSetBits+164↑j
                lea     r8d, [rdi-1]
                nop     dword ptr [rax+rax+00000000h]

loc_1402B1600:                          ; CODE XREF: RtlNumberOfSetBits+1D5↓j
                movzx   edx, byte ptr [rax]
                lea     rax, [rax+1]
                cmp     ebx, r8d
                jz      short loc_1402B1629

loc_1402B160C:                          ; CODE XREF: RtlNumberOfSetBits+1DB↓j
                                        ; RtlNumberOfSetBits+1EB↓j
                movzx   ecx, dl
                inc     ebx
                not     ecx
                movzx   edx, cl
                movzx   ecx, byte ptr [rdx+r15+1A2E0h]
                add     r9d, ecx
                add     esi, 0FFFFFFFFh
                jnz     short loc_1402B1600
                jmp     short loc_1402B15B6
; ---------------------------------------------------------------------------

loc_1402B1629:                          ; CODE XREF: RtlNumberOfSetBits+1BA↑j
                test    ebp, ebp
                jz      short loc_1402B160C
                mov     rcx, r14
                and     ecx, 7
                and     dl, [rcx+r15+1DAE0h]
                jmp     short loc_1402B160C
RtlNumberOfSetBits endp

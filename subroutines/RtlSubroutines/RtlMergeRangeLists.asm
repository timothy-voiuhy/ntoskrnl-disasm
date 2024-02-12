RtlMergeRangeLists proc near            ; DATA XREF: .pdata:0000000140121D70↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15d, r9d
                mov     r14, r8
                mov     rdi, rcx
                call    RtlCopyRangeList
                mov     ebx, eax
                test    eax, eax
                js      loc_1409115C9
                mov     rdx, [r14]
                lea     rbp, [rdx-28h]
                cmp     r14, rdx
                jz      loc_1409115B4
                mov     esi, r15d
                or      esi, 1

loc_140911526:                          ; CODE XREF: RtlMergeRangeLists+CE↓j
                test    byte ptr [rbp+22h], 1
                jz      short loc_14091157A
                mov     rsi, [rbp+10h]
                jmp     short loc_140911565
; ---------------------------------------------------------------------------

loc_140911532:                          ; CODE XREF: RtlMergeRangeLists+90↓j
                mov     rcx, rsi
                call    sub_14075FD00
                test    rax, rax
                jz      loc_1409115C4
                mov     cl, [rsi+21h]
                mov     r8d, r15d
                or      r8d, 1
                mov     rdx, rax
                and     cl, 2
                mov     rcx, rdi
                cmovz   r8d, r15d
                call    sub_140763194
                mov     rsi, [rsi+28h]
                mov     ebx, eax

loc_140911565:                          ; CODE XREF: RtlMergeRangeLists+50↑j
                sub     rsi, 28h ; '('
                lea     rax, [rsi+18h]
                cmp     rbp, rax
                jnz     short loc_140911532
                mov     esi, r15d
                or      esi, 1
                jmp     short loc_1409115A3
; ---------------------------------------------------------------------------

loc_14091157A:                          ; CODE XREF: RtlMergeRangeLists+4A↑j
                mov     rcx, rbp
                call    sub_14075FD00
                test    rax, rax
                jz      short loc_1409115C4
                test    byte ptr [rbp+21h], 2
                mov     r8d, esi
                mov     rdx, rax
                mov     rcx, rdi
                cmovz   r8d, r15d
                call    sub_140763194
                mov     ebx, eax
                test    eax, eax
                js      short loc_1409115C9

loc_1409115A3:                          ; CODE XREF: RtlMergeRangeLists+98↑j
                mov     rax, [rbp+28h]
                lea     rbp, [rax-28h]
                cmp     r14, rax
                jnz     loc_140911526

loc_1409115B4:                          ; CODE XREF: RtlMergeRangeLists+3A↑j
                mov     eax, [r14+14h]
                add     [rdi+14h], eax
                mov     eax, [r14+14h]
                add     [rdi+18h], eax
                jmp     short loc_1409115D1
; ---------------------------------------------------------------------------

loc_1409115C4:                          ; CODE XREF: RtlMergeRangeLists+5D↑j
                                        ; RtlMergeRangeLists+A5↑j
                mov     ebx, 0C000009Ah

loc_1409115C9:                          ; CODE XREF: RtlMergeRangeLists+2A↑j
                                        ; RtlMergeRangeLists+C1↑j
                mov     rcx, rdi
                call    RtlFreeRangeList

loc_1409115D1:                          ; CODE XREF: RtlMergeRangeLists+E2↑j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlMergeRangeLists endp

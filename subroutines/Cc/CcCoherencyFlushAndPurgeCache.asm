CcCoherencyFlushAndPurgeCache proc near ; DATA XREF: .pdata:00000001400D2600↑o

var_28          = byte ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r12b, r12b
                mov     ebp, r8d
                mov     rsi, rcx
                mov     rbx, r9
                mov     ecx, [rsp+48h+arg_20]
                mov     r14, rdx
                mov     eax, ecx
                mov     r15d, ecx
                shr     eax, 1
                and     eax, 1
                mov     edi, eax
                or      edi, 2
                and     r15d, 1
                cmovz   edi, eax
                test    r15d, r15d
                jz      short loc_1402E0068
                test    cl, 4
                jz      short loc_1402E005C

loc_1402E0000:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+B6↓j
                xor     edi, edi

loc_1402E0002:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+CB↓j
                mov     [rsp+48h+var_20], rbx
                xor     r9d, r9d
                mov     r8d, ebp
                mov     [rsp+48h+var_28], r12b
                mov     rdx, r14
                mov     [rbx], edi
                mov     rcx, rsi
                call    sub_140260E80
                mov     ecx, [rbx]
                test    ecx, ecx
                js      short loc_1402E003C
                test    r15d, r15d
                jz      short loc_1402E007D

loc_1402E002A:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+E9↓j
                test    ecx, ecx
                js      short loc_1402E003C
                mov     eax, 115h
                cmp     edi, eax
                jz      short loc_1402E009B
                test    r12b, r12b
                jnz     short loc_1402E009B

loc_1402E003C:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+73↑j
                                        ; CcCoherencyFlushAndPurgeCache+7C↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402E005C:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+4E↑j
                mov     rcx, rsi
                call    sub_14035A984
                test    al, al
                jnz     short loc_1402E0000

loc_1402E0068:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+49↑j
                mov     r8, rbp
                mov     r9d, edi
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1402E00A8
                mov     edi, eax
                jmp     short loc_1402E0002
; ---------------------------------------------------------------------------

loc_1402E007D:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+78↑j
                mov     r9d, 4
                mov     r8d, ebp
                mov     rdx, r14
                mov     rcx, rsi
                call    CcPurgeCacheSection
                mov     ecx, [rbx]
                test    al, al
                setz    r12b
                jmp     short loc_1402E002A
; ---------------------------------------------------------------------------

loc_1402E009B:                          ; CODE XREF: CcCoherencyFlushAndPurgeCache+85↑j
                                        ; CcCoherencyFlushAndPurgeCache+8A↑j
                mov     [rbx], eax
                jmp     short loc_1402E003C
CcCoherencyFlushAndPurgeCache endp

IoRetrievePriorityInfo proc near        ; DATA XREF: .rdata:0000000140069BC0↑o
                                        ; .pdata:00000001400D1EB0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014045A3A8 SIZE 0000009C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                xor     r14d, r14d
                mov     ebp, 2
                mov     [r9+0Ch], ebp
                mov     rsi, r9
                mov     rbx, r8
                test    rcx, rcx
                jz      short loc_1402CFA0E
                test    dword ptr [rcx+10h], 0E0000h
                jnz     loc_1402CFB9B

loc_1402CFA0E:                          ; CODE XREF: IoRetrievePriorityInfo+2F↑j
                test    rdx, rdx
                jz      loc_1402CFAD7
                mov     rax, [rdx+0D0h]
                test    rax, rax
                jnz     loc_1402CFACC
                test    rbx, rbx
                jz      loc_1402CFBA7
                mov     edx, [r8+510h]
                mov     rax, [r8+220h]
                shr     edx, 9
                and     edx, 7
                test    dword ptr [rax+464h], 100000h
                jnz     loc_1402CFBC0

loc_1402CFA54:                          ; CODE XREF: IoRetrievePriorityInfo+1F3↓j
                cmp     edx, ebp
                jb      loc_1402CFAEF

loc_1402CFA5C:                          ; CODE XREF: IoRetrievePriorityInfo+11A↓j
                                        ; IoRetrievePriorityInfo+12B↓j ...
                mov     [rsi+0Ch], edx
                test    rbx, rbx
                jz      loc_1402CFBA7
                cmp     byte ptr [rbx+0C3h], 10h
                jge     short loc_1402CFA7E
                mov     rax, [rbx+68h]
                test    rax, rax
                jnz     loc_1402CFB15

loc_1402CFA7E:                          ; CODE XREF: IoRetrievePriorityInfo+9F↑j
                                        ; IoRetrievePriorityInfo+1BB↓j
                movsx   eax, byte ptr [rbx+233h]

loc_1402CFA85:                          ; CODE XREF: IoRetrievePriorityInfo+1C6↓j
                mov     [rsi+4], eax
                mov     edx, [rbx+510h]
                mov     rax, [rbx+220h]
                shr     edx, 0Ch
                and     edx, 7
                test    dword ptr [rax+464h], 100000h
                jnz     loc_1402CFBB4

loc_1402CFAAB:                          ; CODE XREF: IoRetrievePriorityInfo+1EB↓j
                mov     [rsi+8], edx

loc_1402CFAAE:                          ; CODE XREF: IoRetrievePriorityInfo+1DF↓j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402CFACC:                          ; CODE XREF: IoRetrievePriorityInfo+51↑j
                mov     edx, [rax+50h]
                test    edx, edx
                jnz     loc_14045A3A8

loc_1402CFAD7:                          ; CODE XREF: IoRetrievePriorityInfo+41↑j
                test    rbx, rbx
                jz      loc_1402CFBA7
                mov     rcx, rbx
                call    sub_1402C4F40
                mov     edx, eax
                jmp     loc_1402CFA5C
; ---------------------------------------------------------------------------

loc_1402CFAEF:                          ; CODE XREF: IoRetrievePriorityInfo+86↑j
                mov     rax, gs:188h
                cmp     rbx, rax
                jnz     loc_1402CFA5C
                cmp     [r8+550h], r14d
                jz      loc_1402CFA5C
                mov     edx, ebp
                jmp     loc_1402CFA5C
; ---------------------------------------------------------------------------

loc_1402CFB15:                          ; CODE XREF: IoRetrievePriorityInfo+A8↑j
                mov     rdi, cr8
                mov     cr8, rbp
                mov     eax, cs:dword_140CFC660
                mov     r10, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14045A3AF

loc_1402CFB32:                          ; CODE XREF: IoRetrievePriorityInfo+18A9E1↓j
                                        ; IoRetrievePriorityInfo+18A9EB↓j ...
                mov     rax, gs:20h
                mov     rcx, [rbx+68h]
                test    rcx, rcx
                jz      short loc_1402CFB6D
                mov     eax, [rax+0D8h]
                add     rcx, rax
                test    rcx, rcx
                jz      short loc_1402CFB6D

loc_1402CFB52:                          ; CODE XREF: IoRetrievePriorityInfo+19B↓j
                movzx   r14d, byte ptr [rcx+70h]
                shr     r14d, 3
                and     r14d, 1
                jnz     short loc_1402CFB6D
                mov     rcx, [rcx+198h]
                test    rcx, rcx
                jnz     short loc_1402CFB52

loc_1402CFB6D:                          ; CODE XREF: IoRetrievePriorityInfo+172↑j
                                        ; IoRetrievePriorityInfo+180↑j ...
                cmp     dil, bpl
                jnb     short loc_1402CFB88
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14045A3F0

loc_1402CFB80:                          ; CODE XREF: IoRetrievePriorityInfo+18AA22↓j
                                        ; IoRetrievePriorityInfo+18AA31↓j ...
                movzx   eax, dil
                mov     cr8, rax

loc_1402CFB88:                          ; CODE XREF: IoRetrievePriorityInfo+1A0↑j
                test    r14d, r14d
                jz      loc_1402CFA7E
                mov     eax, 1
                jmp     loc_1402CFA85
; ---------------------------------------------------------------------------

loc_1402CFB9B:                          ; CODE XREF: IoRetrievePriorityInfo+38↑j
                call    IoGetIoPriorityHint
                mov     edx, eax
                jmp     loc_1402CFA5C
; ---------------------------------------------------------------------------

loc_1402CFBA7:                          ; CODE XREF: IoRetrievePriorityInfo+5A↑j
                                        ; IoRetrievePriorityInfo+92↑j ...
                mov     qword ptr [rsi+4], 0FFFFFFFFFFFFFFFFh
                jmp     loc_1402CFAAE
; ---------------------------------------------------------------------------

loc_1402CFBB4:                          ; CODE XREF: IoRetrievePriorityInfo+D5↑j
                cmp     edx, ebp
                cmovb   ebp, edx
                mov     edx, ebp
                jmp     loc_1402CFAAB
; ---------------------------------------------------------------------------

loc_1402CFBC0:                          ; CODE XREF: IoRetrievePriorityInfo+7E↑j
                mov     edx, r14d
                jmp     loc_1402CFA54
IoRetrievePriorityInfo endp

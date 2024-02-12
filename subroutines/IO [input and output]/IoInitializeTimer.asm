IoInitializeTimer proc near             ; DATA XREF: .pdata:000000014010F140↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+28h]
                xor     ebp, ebp
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbx, rcx
                test    rax, rax
                jnz     short loc_1407D27DD
                lea     edx, [rax+30h]
                mov     ecx, 200h
                mov     r8d, 69546F49h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_1407D2814
                mov     [rax+2], rbp
                lea     ecx, [rbp+9]
                mov     [rax+0Ah], rbp
                mov     [rax+12h], ebp
                mov     [rax+16h], bp
                mov     [rax], cx
                mov     [rax+28h], rbx
                mov     [rbx+28h], rax

loc_1407D27DD:                          ; CODE XREF: IoInitializeTimer+26↑j
                lea     rdx, [rax+8]
                mov     [rax+18h], rsi
                lea     r8, qword_140D23140
                mov     [rax+20h], rdi
                lea     rcx, qword_140C45CF0
                call    ExInterlockedInsertTailList
                xor     eax, eax

loc_1407D27FE:                          ; CODE XREF: IoInitializeTimer+99↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407D2814:                          ; CODE XREF: IoInitializeTimer+3E↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1407D27FE
IoInitializeTimer endp

EmpProviderRegister proc near           ; CODE XREF: EmProviderRegister+1B↑p
                                        ; sub_140A40EB8+86D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140854A1C SIZE 0000017D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], r9
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, rdx
                mov     esi, r8d
                mov     r13, rcx
                xor     edx, edx
                lea     rcx, qword_140C47818
                mov     rbp, r9
                xor     r12d, r12d
                xor     ebx, ebx
                xor     edi, edi
                call    ExAcquirePushLockExclusiveEx
                mov     r15d, [rsp+48h+arg_20]
                cmp     [rsp+48h+arg_28], rbx
                jz      loc_140854AC4
                test    esi, esi
                jz      short loc_14079CCDE
                test    r14, r14
                jz      loc_140854AC4

loc_14079CCDE:                          ; CODE XREF: EmpProviderRegister+53↑j
                test    r15d, r15d
                jz      short loc_14079CCEC
                test    rbp, rbp
                jz      loc_140854AC4

loc_14079CCEC:                          ; CODE XREF: EmpProviderRegister+61↑j
                mov     edx, 48h ; 'H'
                mov     r8d, 72704D45h
                lea     ecx, [rdx-47h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140854A1C
                and     [rax+18h], rdi
                and     [rax+20h], edi
                and     [rax+28h], rdi
                and     [rax+30h], edi
                and     [rax+8], rdi
                and     [rax+10h], edi
                add     rax, 38h ; '8'
                mov     [rax+8], rax
                mov     [rax], rax
                test    esi, esi
                jz      loc_14079CDD1
                mov     eax, esi
                mov     r8d, 72704D45h
                shl     eax, 3
                mov     ecx, 1
                mov     edx, eax
                mov     ebp, eax
                call    ExAllocatePoolWithTag
                mov     [rbx+8], rax
                test    rax, rax
                jz      loc_140854A26
                mov     r8d, ebp
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     rax, [r14+8]
                mov     [rbx+10h], esi
                mov     rcx, rsi

loc_14079CD70:                          ; CODE XREF: EmpProviderRegister+101↓j
                cmp     [rax], rdi
                jnz     loc_140854A30

loc_14079CD79:                          ; CODE XREF: EmpProviderRegister+B7DB3↓j
                add     rax, 18h
                sub     rcx, 1
                jnz     short loc_14079CD70
                mov     eax, [rbx+20h]
                test    eax, eax
                jnz     loc_140854A38

loc_14079CD8E:                          ; CODE XREF: EmpProviderRegister+B7DE6↓j
                xor     r10d, r10d

loc_14079CD91:                          ; CODE XREF: EmpProviderRegister+14F↓j
                lea     rbp, [r10+r10*2]
                mov     rcx, [r14+rbp*8]
                test    rcx, rcx
                jz      loc_140854AC4
                call    sub_1403B449C
                mov     rdx, rax
                test    rax, rax
                jz      loc_140854AAD
                mov     rcx, [rbx+8]
                mov     [rcx+r10*8], rax
                mov     rax, [r14+rbp*8+8]
                test    rax, rax
                jnz     loc_140854A6B

loc_14079CDC9:                          ; CODE XREF: EmpProviderRegister+B7E28↓j
                inc     r10d
                cmp     r10d, esi
                jb      short loc_14079CD91

loc_14079CDD1:                          ; CODE XREF: EmpProviderRegister+AD↑j
                test    r15d, r15d
                jz      loc_14079CE7D
                mov     eax, r15d
                mov     r8d, 72704D45h
                shl     eax, 3
                mov     ecx, 1
                mov     edx, eax
                mov     esi, eax
                call    ExAllocatePoolWithTag
                mov     [rbx+28h], rax
                test    rax, rax
                jz      loc_140854A26
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r10, [rsp+48h+arg_18]
                xor     ebp, ebp
                xor     r14d, r14d
                mov     [rbx+30h], r15d
                add     r10, 8

loc_14079CE20:                          ; CODE XREF: EmpProviderRegister+1FB↓j
                mov     rsi, [r10]
                test    rsi, rsi
                jz      loc_140854AC4
                mov     rcx, [r10-8]
                test    rcx, rcx
                jz      loc_140854AC4
                call    sub_1403B4464
                mov     r11, rax
                test    rax, rax
                jz      loc_140854AAD
                mov     rax, [rax+10h]
                test    rax, rax
                jnz     loc_140854AB4

loc_14079CE57:                          ; CODE XREF: EmpProviderRegister+B7E37↓j
                mov     rcx, [rbx+28h]
                inc     ebp
                mov     [r14+rcx], r11
                add     r14, 8
                mov     rax, [r10]
                mov     [r11+10h], rax
                mov     rax, [r10+8]
                add     r10, 18h
                mov     [r11+20h], rax
                cmp     ebp, r15d
                jb      short loc_14079CE20

loc_14079CE7D:                          ; CODE XREF: EmpProviderRegister+154↑j
                xor     ebp, ebp
                cmp     [rbx+10h], edi
                jbe     short loc_14079CEB0

loc_14079CE84:                          ; CODE XREF: EmpProviderRegister+22E↓j
                mov     rax, [rbx+8]
                mov     rdx, [rax+rbp*8]
                lock inc dword ptr [rdx+10h]
                mov     rsi, [rdx+48h]
                jmp     short loc_14079CEA4
; ---------------------------------------------------------------------------

loc_14079CE96:                          ; CODE XREF: EmpProviderRegister+227↓j
                mov     rcx, [rsi-8]
                xor     edx, edx
                call    sub_1403B4148
                mov     rsi, [rsi]

loc_14079CEA4:                          ; CODE XREF: EmpProviderRegister+214↑j
                test    rsi, rsi
                jnz     short loc_14079CE96
                inc     ebp
                cmp     ebp, [rbx+10h]
                jb      short loc_14079CE84

loc_14079CEB0:                          ; CODE XREF: EmpProviderRegister+202↑j
                xor     ebp, ebp
                cmp     [rbx+30h], edi
                jbe     short loc_14079CEE3

loc_14079CEB7:                          ; CODE XREF: EmpProviderRegister+261↓j
                mov     rax, [rbx+28h]
                mov     rdx, [rax+rbp*8]
                lock inc dword ptr [rdx+18h]
                mov     rsi, [rdx+30h]
                jmp     short loc_14079CED7
; ---------------------------------------------------------------------------

loc_14079CEC9:                          ; CODE XREF: EmpProviderRegister+25A↓j
                mov     rcx, [rsi-8]
                xor     edx, edx
                call    sub_1403B4148
                mov     rsi, [rsi]

loc_14079CED7:                          ; CODE XREF: EmpProviderRegister+247↑j
                test    rsi, rsi
                jnz     short loc_14079CEC9
                inc     ebp
                cmp     ebp, [rbx+30h]
                jb      short loc_14079CEB7

loc_14079CEE3:                          ; CODE XREF: EmpProviderRegister+235↑j
                test    r13, r13
                jnz     short loc_14079CF40

loc_14079CEE8:                          ; CODE XREF: EmpProviderRegister+2C8↓j
                mov     rax, [rsp+48h+arg_28]
                mov     [rbx], r13
                mov     [rax], rbx

loc_14079CEF3:                          ; CODE XREF: EmpProviderRegister+B7DA1↓j
                                        ; EmpProviderRegister+B7E4C↓j ...
                or      rdx, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C47818, rdx
                and     dl, 6
                cmp     dl, 2
                jnz     short loc_14079CF14
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock

loc_14079CF14:                          ; CODE XREF: EmpProviderRegister+286↑j
                lea     rcx, qword_140C47818
                call    sub_140243660
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14079CF40:                          ; CODE XREF: EmpProviderRegister+266↑j
                mov     rcx, r13
                call    ObfReferenceObject
                jmp     short loc_14079CEE8
EmpProviderRegister endp

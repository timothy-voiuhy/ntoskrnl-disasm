KeSetSelectedCpuSetsThread proc near    ; CODE XREF: NtSetInformationThread+1C3F7D↓p
                                        ; DATA XREF: .pdata:00000001400F3C48↑o

var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, rcx
                xor     esi, esi
                mov     rcx, r8
                mov     [rax+20h], esi
                mov     rbp, r8
                mov     r12d, edx
                call    sub_140360A38
                test    eax, eax
                js      loc_14051D176
                mov     r10, [rdi+220h]
                lea     rdx, [rsp+58h+arg_18]
                mov     rcx, rdi
                mov     [rsp+58h+var_30], rsi
                call    sub_1402BACD0
                mov     r13, rax
                mov     r14, cr8
                lea     eax, [rsi+2]
                mov     cr8, rax
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jz      short loc_14051CE71
                test    cl, 1
                jz      short loc_14051CE71
                cmp     r14b, 0Fh
                ja      short loc_14051CE71
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r14b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14051CE71:                          ; CODE XREF: KeSetSelectedCpuSetsThread+69↑j
                                        ; KeSetSelectedCpuSetsThread+6E↑j ...
                lea     r15, [r10+40h]
                mov     rcx, r15
                call    ExAcquireSpinLockSharedAtDpcLevel
                mov     rbx, gs:20h
                mov     [rsp+58h+var_38], esi

loc_14051CE8A:                          ; CODE XREF: KeSetSelectedCpuSetsThread+120↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_14051CEAF
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_14051CEAF
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_14051CEAF
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_14051CEAF:                          ; CODE XREF: KeSetSelectedCpuSetsThread+C4↑j
                                        ; KeSetSelectedCpuSetsThread+CA↑j ...
                lock bts qword ptr [rdi+40h], 0
                jnb     short loc_14051CEF2
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_14051CEDD
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_14051CEDD
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_14051CEDD
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_14051CEDD:                          ; CODE XREF: KeSetSelectedCpuSetsThread+F2↑j
                                        ; KeSetSelectedCpuSetsThread+F8↑j ...
                lea     rcx, [rsp+58h+var_38]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_14051CEDD
                jmp     short loc_14051CE8A
; ---------------------------------------------------------------------------

loc_14051CEF2:                          ; CODE XREF: KeSetSelectedCpuSetsThread+E6↑j
                mov     edx, [rsp+58h+arg_18]
                mov     r9d, r12d
                mov     esi, [rdi+24Ch]
                mov     r8, rbp
                mov     rcx, r13
                call    sub_1403C62A4
                lea     rdx, [rsp+58h+var_30]
                mov     rcx, rdi
                call    sub_1403C620C
                mov     ebp, [rdi+24Ch]
                mov     rcx, rdi
                mov     rbx, rax
                call    sub_1403261B0
                test    dword ptr cs:xmmword_140CFC490, 8000000h
                jz      short loc_14051CF47
                mov     edx, 546h
                mov     r9d, ebp
                mov     r8d, esi
                mov     rcx, rdi
                call    sub_1405A7AE4

loc_14051CF47:                          ; CODE XREF: KeSetSelectedCpuSetsThread+162↑j
                mov     rcx, r15
                call    ExReleaseSpinLockSharedFromDpcLevel
                xor     ebp, ebp
                lea     r12d, [rbp+2]
                test    rbx, rbx
                jz      short loc_14051CF71
                mov     eax, gs:1A4h
                mov     ecx, [rbx+24h]
                cmp     eax, ecx
                jz      short loc_14051CF71
                mov     dl, r12b
                call    sub_140308E0C

loc_14051CF71:                          ; CODE XREF: KeSetSelectedCpuSetsThread+188↑j
                                        ; KeSetSelectedCpuSetsThread+197↑j
                mov     rbx, gs:20h
                lea     rdx, [rsp+58h+var_30]
                mov     rcx, rbx
                call    sub_14028DAE0
                cmp     r14b, r12b
                jnb     loc_14051D159
                mov     r13b, 0Dh
                mov     rsi, [rbx+8]
                cmp     [rbx+10h], rbp
                jz      loc_14051D09F
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402423B0
                mov     rdi, gs:20h
                mov     r15d, 1
                mov     [rsp+58h+var_34], ebp

loc_14051CFBE:                          ; CODE XREF: KeSetSelectedCpuSetsThread+254↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      short loc_14051CFE3
                cmp     [rdi+20h], r15b
                ja      short loc_14051CFE3
                mov     eax, [rcx+18h]
                add     eax, r15d
                mov     [rcx+18h], eax
                jnz     short loc_14051CFE3
                mov     rcx, rdi
                call    sub_1403F2EC4

loc_14051CFE3:                          ; CODE XREF: KeSetSelectedCpuSetsThread+1F8↑j
                                        ; KeSetSelectedCpuSetsThread+1FE↑j ...
                lock bts qword ptr [rbx+30h], 0
                jnb     short loc_14051D026
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      short loc_14051D011
                cmp     [rdi+20h], r15b
                ja      short loc_14051D011
                mov     eax, [rcx+18h]
                sub     eax, r15d
                mov     [rcx+18h], eax
                jnz     short loc_14051D011
                mov     rcx, rdi
                call    sub_1403F2EC4

loc_14051D011:                          ; CODE XREF: KeSetSelectedCpuSetsThread+226↑j
                                        ; KeSetSelectedCpuSetsThread+22C↑j ...
                lea     rcx, [rsp+58h+var_34]
                call    sub_1402C8C70
                mov     rax, [rbx+30h]
                test    rax, rax
                jnz     short loc_14051D011
                jmp     short loc_14051CFBE
; ---------------------------------------------------------------------------

loc_14051D026:                          ; CODE XREF: KeSetSelectedCpuSetsThread+21A↑j
                mov     rdi, [rbx+10h]
                mov     [rbx+10h], rbp
                cli
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402CC660
                sti
                mov     [rbx+8], rdi
                mov     al, [rdi+184h]
                cmp     al, r15b
                jnz     short loc_14051D06D
                mov     r8d, [rdi+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     r8d, [rdi+1B4h]
                add     eax, r8d
                mov     [rdi+84h], eax

loc_14051D06D:                          ; CODE XREF: KeSetSelectedCpuSetsThread+27B↑j
                mov     [rdi+184h], r12b
                mov     rdx, rsi
                mov     rcx, rbx
                mov     byte ptr [rsi+283h], 20h ; ' '
                mov     [rsi+186h], r14b
                call    sub_1402CE090
                mov     r8b, r14b
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1404058F0
                test    al, al
                jmp     short loc_14051D0AA
; ---------------------------------------------------------------------------

loc_14051D09F:                          ; CODE XREF: KeSetSelectedCpuSetsThread+1CB↑j
                mov     eax, [rsi+74h]
                mov     r15d, 1
                test    al, 40h

loc_14051D0AA:                          ; CODE XREF: KeSetSelectedCpuSetsThread+2CD↑j
                jz      short loc_14051D0FD
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14051D0E9
                test    r15b, al
                jz      short loc_14051D0E9
                mov     rax, cr8
                sub     al, r12b
                cmp     al, r13b
                ja      short loc_14051D0E9
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                mov     eax, [rdx+14h]
                and     eax, 0FFFF0003h
                mov     [rdx+14h], eax
                jnz     short loc_14051D0E9
                call    sub_1403F2EC4

loc_14051D0E9:                          ; CODE XREF: KeSetSelectedCpuSetsThread+2E4↑j
                                        ; KeSetSelectedCpuSetsThread+2E9↑j ...
                mov     cr8, r15
                and     dword ptr [rsi+74h], 0FFFFFFBFh
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140

loc_14051D0FD:                          ; CODE XREF: KeSetSelectedCpuSetsThread:loc_14051D0AA↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14051D14F
                test    r15b, al
                jz      short loc_14051D14F
                mov     rax, cr8
                sub     al, r12b
                cmp     al, r13b
                ja      short loc_14051D14F
                mov     r9, gs:20h
                or      rax, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r14b
                add     ecx, r15d
                shl     rax, cl
                mov     r8, [r9+84B8h]
                movzx   eax, ax
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14051D14F
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14051D14F:                          ; CODE XREF: KeSetSelectedCpuSetsThread+335↑j
                                        ; KeSetSelectedCpuSetsThread+33A↑j ...
                movzx   eax, r14b
                mov     cr8, rax
                jmp     short loc_14051D174
; ---------------------------------------------------------------------------

loc_14051D159:                          ; CODE XREF: KeSetSelectedCpuSetsThread+1BA↑j
                cmp     [rbx+10h], rbp
                jz      short loc_14051D174
                mov     al, [rbx+312Ah]
                test    al, al
                jnz     short loc_14051D174
                mov     dl, r12b
                mov     rcx, rbx
                call    sub_140308B50

loc_14051D174:                          ; CODE XREF: KeSetSelectedCpuSetsThread+387↑j
                                        ; KeSetSelectedCpuSetsThread+38D↑j ...
                xor     eax, eax

loc_14051D176:                          ; CODE XREF: KeSetSelectedCpuSetsThread+34↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSetSelectedCpuSetsThread endp

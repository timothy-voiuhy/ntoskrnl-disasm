KeAddSystemServiceTable proc near       ; DATA XREF: .rdata:00000001400A769C↑o
                                        ; .pdata:000000014010DB5C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014085B190 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                mov     edx, [rsp+arg_20]
                mov     r10, r9
                mov     ebx, r8d
                mov     r11, rcx
                lea     eax, [rdx-1]
                cmp     eax, 1
                ja      loc_14085B190
                xor     r9d, r9d
                cmp     edx, 2
                jz      loc_1407B7746
                cmp     qword ptr cs:xmmword_140E018E0, r9
                jnz     loc_14085B190
                cmp     qword ptr cs:xmmword_140CFCA60, r9
                jnz     loc_14085B190
                cmp     edx, 1
                jnz     loc_1407B7753
                mov     qword ptr cs:xmmword_140CFCA70+8, r10
                lea     rax, xmmword_140CFCA60
                mov     r10d, cs:dword_140C13D58
                add     r10d, r11d
                mov     qword ptr cs:xmmword_140CFCA60, rcx
                add     r10d, eax
                mov     dword ptr cs:xmmword_140CFCA70, ebx
                test    ebx, ebx
                jz      short loc_1407B7728
                mov     rdi, rcx

loc_1407B7701:                          ; CODE XREF: KeAddSystemServiceTable+A6↓j
                movsxd  rdx, dword ptr [rdi]
                lea     r8d, [r9+1]
                mov     rax, rdx
                lea     rdi, [rdi+4]
                sar     rax, 4
                mov     r9d, r8d
                mov     ecx, [rax+r11]
                add     ecx, edx
                xor     r10d, ecx
                imul    r10d, r8d
                cmp     r8d, ebx
                jb      short loc_1407B7701

loc_1407B7728:                          ; CODE XREF: KeAddSystemServiceTable+7C↑j
                mov     eax, cs:dword_140C13D58
                lea     ecx, [rax+r10*2]
                mov     cs:dword_140C13D58, ecx

loc_1407B7738:                          ; CODE XREF: KeAddSystemServiceTable+F1↓j
                                        ; KeAddSystemServiceTable+152↓j
                mov     al, 1

loc_1407B773A:                          ; CODE XREF: KeAddSystemServiceTable+A3B12↓j
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407B7746:                          ; CODE XREF: KeAddSystemServiceTable+29↑j
                cmp     qword ptr cs:xmmword_140CFCC20, r9
                jnz     loc_14085B190

loc_1407B7753:                          ; CODE XREF: KeAddSystemServiceTable+4C↑j
                lea     rax, xmmword_140CFCC00
                lea     ecx, [rdx-1]
                shl     rcx, 5
                mov     [rcx+rax], r11
                mov     [rcx+rax+10h], ebx
                mov     [rcx+rax+18h], r10
                cmp     edx, 2
                jnz     short loc_1407B7738
                mov     r11, qword ptr cs:xmmword_140CFCC20
                lea     rax, xmmword_140CFCC20
                mov     r10d, cs:dword_140C13D58
                mov     edi, dword ptr cs:xmmword_140CFCC30
                add     r10d, r11d
                add     r10d, eax
                test    edi, edi
                jz      short loc_1407B77C2
                mov     rbx, r11

loc_1407B779B:                          ; CODE XREF: KeAddSystemServiceTable+140↓j
                movsxd  rdx, dword ptr [rbx]
                lea     r8d, [r9+1]
                mov     rax, rdx
                lea     rbx, [rbx+4]
                sar     rax, 4
                mov     r9d, r8d
                mov     ecx, [rax+r11]
                add     ecx, edx
                xor     r10d, ecx
                imul    r10d, r8d
                cmp     r8d, edi
                jb      short loc_1407B779B

loc_1407B77C2:                          ; CODE XREF: KeAddSystemServiceTable+116↑j
                mov     ecx, cs:dword_140C13D58
                lea     edx, [rcx+r10*2]
                mov     cs:dword_140C13D58, edx
                jmp     loc_1407B7738
KeAddSystemServiceTable endp

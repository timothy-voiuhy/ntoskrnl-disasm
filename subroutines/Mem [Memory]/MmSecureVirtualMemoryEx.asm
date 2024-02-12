MmSecureVirtualMemoryEx proc near       ; CODE XREF: sub_14068C748+A44↑p
                                        ; MmSecureVirtualMemory+17↑p ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014082481E SIZE 00000028 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                and     qword ptr [rax-28h], 0
                mov     r15d, r9d
                mov     ebx, r8d
                mov     rbp, rdx
                mov     r14, rcx
                test    r9d, 0FFFFFFF0h
                jnz     loc_1406ED5BD
                lea     rsi, [rcx+rdx]
                cmp     rsi, rcx
                jbe     loc_1406ED5BD
                mov     rax, 7FFFFFFF0000h
                cmp     rsi, rax
                ja      loc_1406ED5BD
                lea     eax, [r8-1]
                cmp     eax, 1
                ja      loc_1406ED5AF

loc_1406ED4C3:                          ; CODE XREF: MmSecureVirtualMemoryEx+152↓j
                                        ; MmSecureVirtualMemoryEx+1373CA↓j
                test    ebx, ebx
                js      loc_1406ED5BD
                and     rcx, 0FFFFFFFFFFFFF000h
                lea     r8, [rsp+58h+arg_18]
                xor     edx, edx
                call    sub_140232930
                mov     rdi, rax
                test    rax, rax
                jz      loc_1406ED5BD
                mov     ecx, [rax+1Ch]
                movzx   edx, byte ptr [rax+21h]
                shl     rdx, 20h
                or      rdx, rcx
                lea     rcx, [rsi-1]
                shr     rcx, 0Ch
                cmp     rcx, rdx
                ja      loc_140824838
                mov     ecx, [rax+30h]
                mov     eax, ecx
                and     eax, 70h
                cmp     al, 30h ; '0'
                jz      loc_140824838
                bt      ecx, 14h
                jnb     short loc_1406ED53A
                mov     eax, ecx
                shr     eax, 12h
                and     eax, 3
                bt      ecx, 16h
                jb      loc_14082482F
                cmp     eax, 2
                jnb     loc_14082482F

loc_1406ED53A:                          ; CODE XREF: MmSecureVirtualMemoryEx+BD↑j
                                        ; MmSecureVirtualMemoryEx+1373D2↓j
                mov     r9d, ebx
                mov     eax, r15d
                bts     r9d, 1Fh
                mov     r8, rbp
                and     al, 2
                mov     rdx, r14
                lea     rax, [rsp+58h+var_28]
                mov     rcx, rdi
                mov     [rsp+58h+var_30], rax
                cmovz   r9d, ebx
                mov     [rsp+58h+var_38], r15d
                call    sub_1406ED5C8
                mov     rcx, rdi
                mov     ebx, eax
                call    sub_140232610
                test    ebx, ebx
                js      short loc_1406ED5BD
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                xor     rcx, cs:qword_140C4DCD0
                mov     rax, [rsp+58h+var_28]
                xor     rax, rcx

loc_1406ED595:                          ; CODE XREF: MmSecureVirtualMemoryEx+15F↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ED5AF:                          ; CODE XREF: MmSecureVirtualMemoryEx+5D↑j
                cmp     ebx, 4
                jz      loc_1406ED4C3
                jmp     loc_14082481E
; ---------------------------------------------------------------------------

loc_1406ED5BD:                          ; CODE XREF: MmSecureVirtualMemoryEx+30↑j
                                        ; MmSecureVirtualMemoryEx+3D↑j ...
                xor     eax, eax
                jmp     short loc_1406ED595
MmSecureVirtualMemoryEx endp

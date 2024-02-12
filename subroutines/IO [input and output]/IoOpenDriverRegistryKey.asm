IoOpenDriverRegistryKey proc near       ; DATA XREF: .pdata:000000014010E360↑o

var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
arg_0           = qword ptr  10h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h

                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_8], edx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 90h
                xor     ebx, ebx
                xorps   xmm0, xmm0
                mov     [rbp+4Fh+arg_0], rbx
                mov     esi, r8d
                mov     [rbp+4Fh+var_80], rbx
                mov     r13, rcx
                mov     [rbp+4Fh+var_70], rbx
                mov     edi, ebx
                mov     [rbp+4Fh+var_78], rbx
                mov     r14d, ebx
                mov     [rbp+4Fh+var_68], rbx
                mov     r12d, ebx
                mov     r15d, ebx
                movups  [rbp+4Fh+var_60], xmm0
                movups  [rbp+4Fh+var_50], xmm0
                movups  [rbp+4Fh+var_40], xmm0
                test    rcx, rcx
                jz      loc_1407C3FBE
                mov     rax, [rcx+30h]
                test    rax, rax
                jz      loc_1407C3FBE
                cmp     [rax+20h], rbx
                jz      loc_1407C3FBE
                lea     rcx, [rax+18h]
                cmp     [rcx], bx
                jz      loc_1407C3FBE
                test    r9d, r9d
                jnz     loc_1407C3FBE
                cmp     [rbp+4Fh+arg_20], rbx
                jz      loc_1407C3FBE
                xor     r9d, r9d
                mov     byte ptr [rsp+0C0h+var_A0], bl
                lea     r8, [rbp+4Fh+var_68]
                mov     edx, 2001Dh
                call    sub_140739E5C
                mov     r15, [rbp+4Fh+var_68]
                mov     ebx, eax
                test    eax, eax
                js      loc_1407C3FD2
                lea     r9, [rbp+4Fh+var_80]
                xor     r8d, r8d
                lea     rdx, aType_1    ; "Type"
                mov     rcx, r15
                call    sub_140739D08
                mov     rdi, [rbp+4Fh+var_80]
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jz      loc_1407C3FBE
                test    eax, eax
                js      loc_1407C3FC3
                cmp     dword ptr [rdi+4], 4
                jnz     loc_1407C3FB7
                cmp     dword ptr [rdi+0Ch], 4
                jnz     loc_1407C3FB7
                mov     eax, [rdi+8]
                mov     ecx, [rax+rdi]
                test    cl, 0Bh
                jz      loc_1407C3FBE
                mov     ecx, [rbp+4Fh+arg_8]
                test    ecx, ecx
                jz      loc_1407C3F35
                cmp     ecx, 1
                jnz     loc_1407C3FBE
                mov     rcx, [r13+30h]
                lea     r8, [rbp+4Fh+var_70]
                add     rcx, 18h
                call    sub_1407C4034
                mov     r13d, 0C0000034h
                mov     ebx, eax
                cmp     eax, r13d
                jnz     short loc_1407C3E82
                mov     r14, r15
                jmp     short loc_1407C3E8E
; ---------------------------------------------------------------------------

loc_1407C3E82:                          ; CODE XREF: IoOpenDriverRegistryKey+13B↑j
                mov     r14, [rbp+4Fh+var_70]
                test    eax, eax
                js      loc_1407C3FC3

loc_1407C3E8E:                          ; CODE XREF: IoOpenDriverRegistryKey+140↑j
                lea     rax, qword_140006150
                mov     dword ptr [rbp+4Fh+var_60], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+4Fh+var_50], rax
                lea     r8, [rbp+4Fh+var_60]
                mov     qword ptr [rbp+4Fh+var_60+8], r14
                mov     edx, esi
                mov     dword ptr [rbp+4Fh+var_50+8], 240h
                lea     rcx, [rbp+4Fh+arg_0]
                movdqu  [rbp+4Fh+var_40], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, r13d
                jnz     short loc_1407C3F2B
                lea     rcx, [rbp+4Fh+var_78]
                call    sub_1408A54A0
                mov     r12, [rbp+4Fh+var_78]
                mov     ebx, eax
                test    eax, eax
                js      loc_1407C3FC3
                and     [rsp+0C0h+var_90], 0
                lea     rax, qword_140006150
                and     [rsp+0C0h+var_98], 0
                lea     r8, [rbp+4Fh+var_60]
                and     [rsp+0C0h+var_A0], 0
                lea     rcx, [rbp+4Fh+arg_0]
                and     qword ptr [rbp+4Fh+var_40+8], 0
                xor     r9d, r9d
                mov     edx, esi
                mov     dword ptr [rbp+4Fh+var_60], 30h ; '0'
                mov     qword ptr [rbp+4Fh+var_60+8], r14
                mov     dword ptr [rbp+4Fh+var_50+8], 240h
                mov     qword ptr [rbp+4Fh+var_50], rax
                mov     qword ptr [rbp+4Fh+var_40], r12
                call    ZwCreateKey
                mov     ebx, eax

loc_1407C3F2B:                          ; CODE XREF: IoOpenDriverRegistryKey+187↑j
                test    eax, eax
                js      loc_1407C3FC3
                jmp     short loc_1407C3F8A
; ---------------------------------------------------------------------------

loc_1407C3F35:                          ; CODE XREF: IoOpenDriverRegistryKey+110↑j
                bt      esi, 19h
                jnb     short loc_1407C3F45
                btr     esi, 19h
                or      esi, 20019h

loc_1407C3F45:                          ; CODE XREF: IoOpenDriverRegistryKey+1F9↑j
                test    esi, 7FFDFFE6h
                jz      short loc_1407C3F54
                mov     ebx, 0C0000022h
                jmp     short loc_1407C3FC3
; ---------------------------------------------------------------------------

loc_1407C3F54:                          ; CODE XREF: IoOpenDriverRegistryKey+20B↑j
                lea     rax, qword_140006140
                mov     dword ptr [rbp+4Fh+var_60], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+4Fh+var_50], rax
                lea     r8, [rbp+4Fh+var_60]
                mov     qword ptr [rbp+4Fh+var_60+8], r15
                mov     edx, esi
                mov     dword ptr [rbp+4Fh+var_50+8], 240h
                lea     rcx, [rbp+4Fh+arg_0]
                movdqu  [rbp+4Fh+var_40], xmm0
                call    ZwOpenKey
                mov     ebx, eax

loc_1407C3F8A:                          ; CODE XREF: IoOpenDriverRegistryKey+1F3↑j
                test    ebx, ebx
                js      short loc_1407C3FC3
                cmp     [rbp+4Fh+arg_8], 1
                mov     rax, [rbp+4Fh+arg_0]
                jnz     short loc_1407C3FA9
                test    rax, rax
                jz      short loc_1407C3FA9
                mov     rcx, rax
                call    sub_14070663C
                mov     rax, [rbp+4Fh+arg_0]

loc_1407C3FA9:                          ; CODE XREF: IoOpenDriverRegistryKey+256↑j
                                        ; IoOpenDriverRegistryKey+25B↑j
                mov     rcx, [rbp+4Fh+arg_20]
                and     [rbp+4Fh+arg_0], 0
                mov     [rcx], rax
                jmp     short loc_1407C3FC3
; ---------------------------------------------------------------------------

loc_1407C3FB7:                          ; CODE XREF: IoOpenDriverRegistryKey+EC↑j
                                        ; IoOpenDriverRegistryKey+F6↑j
                mov     ebx, 0C000014Ch
                jmp     short loc_1407C3FC3
; ---------------------------------------------------------------------------

loc_1407C3FBE:                          ; CODE XREF: IoOpenDriverRegistryKey+59↑j
                                        ; IoOpenDriverRegistryKey+66↑j ...
                mov     ebx, 0C000000Dh

loc_1407C3FC3:                          ; CODE XREF: IoOpenDriverRegistryKey+E2↑j
                                        ; IoOpenDriverRegistryKey+148↑j ...
                test    rdi, rdi
                jz      short loc_1407C3FD2
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1407C3FD2:                          ; CODE XREF: IoOpenDriverRegistryKey+B3↑j
                                        ; IoOpenDriverRegistryKey+286↑j
                mov     rcx, [rbp+4Fh+arg_0]
                test    rcx, rcx
                jz      short loc_1407C3FE0
                call    ZwClose

loc_1407C3FE0:                          ; CODE XREF: IoOpenDriverRegistryKey+299↑j
                test    r14, r14
                jz      short loc_1407C3FF2
                cmp     r14, r15
                jz      short loc_1407C3FF2
                mov     rcx, r14
                call    ZwClose

loc_1407C3FF2:                          ; CODE XREF: IoOpenDriverRegistryKey+2A3↑j
                                        ; IoOpenDriverRegistryKey+2A8↑j
                test    r15, r15
                jz      short loc_1407C3FFF
                mov     rcx, r15
                call    ZwClose

loc_1407C3FFF:                          ; CODE XREF: IoOpenDriverRegistryKey+2B5↑j
                test    r12, r12
                jz      short loc_1407C400E
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_1407C400E:                          ; CODE XREF: IoOpenDriverRegistryKey+2C2↑j
                mov     eax, ebx
                mov     rbx, [rsp+0C0h+arg_10]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoOpenDriverRegistryKey endp

KseRegisterShimEx proc near             ; CODE XREF: KseRegisterShim+7↑p
                                        ; DATA XREF: .rdata:00000001400A8644↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014085CA18 SIZE 00000171 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, r9
                mov     r14d, r8d
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_14085CA18
                mov     eax, cs:dword_140C50464
                mov     r15d, 2
                cmp     eax, r15d
                jnz     loc_14085CA22
                and     qword ptr [r11+8], 0
                lea     rcx, [r11+8]
                call    sub_1407BD2E4
                mov     ebx, eax
                test    eax, eax
                js      loc_1407BD10E
                mov     rcx, [rsp+48h]
                mov     r8, rdi
                mov     rdx, [rsp+48h+arg_0]
                call    sub_1407BD1B4
                test    eax, eax
                jz      loc_14085CA2C
                lea     ecx, [r15+26h]
                call    sub_1403714EC
                mov     rsi, rax
                test    rax, rax
                jz      loc_14085CA9D
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     r13, qword_140C50490
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, [rdi+8]
                lea     rcx, dword_140C50460
                xor     r9d, r9d
                call    sub_1407BD140
                test    eax, eax
                jnz     loc_14085CAA7
                and     [rsi+18h], eax
                lea     rcx, unk_140C50470
                mov     [rsi+10h], rdi
                mov     [rsi+1Ch], r14d
                mov     [rsi+20h], rbp
                mov     rax, cs:qword_140C50478
                cmp     [rax], rcx
                jnz     loc_14085CB4F
                mov     [rsi], rcx
                mov     [rsi+8], rax
                mov     [rax], rsi
                mov     cs:qword_140C50478, rsi
                lock xadd cs:qword_140C50490, rbx
                test    r15b, bl
                jnz     loc_14085CB56

loc_1407BD09E:                          ; CODE XREF: KseRegisterShimEx+9FBC9↓j
                                        ; KseRegisterShimEx+9FBD8↓j
                mov     rcx, r13
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                lea     rax, unk_140C50498
                xor     ebx, ebx
                mov     [rdi+18h], rax
                lea     eax, [rbx+1]
                lock xadd cs:dword_140C2AB20, eax
                inc     eax
                lea     rcx, cs:140000000h
                and     eax, 3Fh
                and     dword ptr (rva qword_140C2AB40+4)[rcx+rax*8], ebx
                mov     dword ptr rva qword_140C2AB40[rcx+rax*8], 20119h
                mov     eax, cs:dword_140CF9EC4
                test    al, 1
                jnz     loc_14085CB6D

loc_1407BD0F8:                          ; CODE XREF: KseRegisterShimEx+9FBF4↓j
                mov     rax, [rdi+8]
                lea     rdx, aKseSucceededSh ; "KSE: Succeeded shim [0x%08X] registrati"...
                mov     ecx, r15d
                mov     r8d, [rax]
                call    sub_140371548

loc_1407BD10E:                          ; CODE XREF: KseRegisterShimEx+50↑j
                                        ; KseRegisterShimEx+9FB08↓j ...
                mov     rcx, [rsp+48h+arg_0]
                test    rcx, rcx
                jz      short loc_1407BD11D
                call    sub_1403714C4

loc_1407BD11D:                          ; CODE XREF: KseRegisterShimEx+186↑j
                mov     eax, ebx

loc_1407BD11F:                          ; CODE XREF: KseRegisterShimEx+9FA8D↓j
                                        ; KseRegisterShimEx+9FA97↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KseRegisterShimEx endp

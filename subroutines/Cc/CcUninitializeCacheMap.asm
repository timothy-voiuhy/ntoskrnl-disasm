CcUninitializeCacheMap proc near        ; CODE XREF: CcPurgeCacheSection+17D5ED↓p
                                        ; DATA XREF: .rdata:000000014006F0C8↑o ...

var_60          = qword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = byte ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140465BB4 SIZE 000003DC BYTES

                mov     [rsp-38h+arg_18], rbx
                mov     [rsp-38h+arg_10], r8
                mov     [rsp-38h+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xorps   xmm0, xmm0
                lea     rdx, qword_140CDB640
                movups  [rbp+var_50], xmm0
                mov     r14, rcx
                mov     qword ptr [rbp+var_50+8], rdx
                xor     ecx, ecx
                xor     r15b, r15b
                xor     r12b, r12b
                mov     qword ptr [rbp+var_50], rcx
                xor     eax, eax
                xorps   xmm1, xmm1
                mov     [rbp+var_40], rax
                mov     r13d, ecx
                mov     [rbp+var_28], rax
                mov     esi, ecx
                mov     [rbp+var_10], rax
                movups  [rbp+var_38], xmm1
                movups  [rbp+var_20], xmm0
                mov     r11, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140465BB4

loc_1402F9BAE:                          ; CODE XREF: CcUninitializeCacheMap+16C086↓j
                                        ; CcUninitializeCacheMap+16C090↓j ...
                lea     rcx, [rbp+var_50]
                mov     byte ptr [rbp+var_40], r11b
                call    sub_14024B3F0
                mov     rbx, [r14+28h]
                mov     rdi, [r14+30h]
                mov     rbx, [rbx+8]
                test    rbx, rbx
                jz      short loc_1402F9C02
                mov     rcx, rbx
                call    sub_140265960
                mov     rsi, rax
                mov     eax, 1
                lock xadd [rsi+3C8h], rax
                inc     rax
                cmp     rax, 1
                jle     loc_140465BFA

loc_1402F9BF2:                          ; CODE XREF: CcUninitializeCacheMap+16C0D1↓j
                lea     rcx, [rsi+80h]
                lea     rdx, [rbp+var_38]
                call    KeAcquireInStackQueuedSpinLock

loc_1402F9C02:                          ; CODE XREF: CcUninitializeCacheMap+9A↑j
                test    rdi, rdi
                jz      loc_1402F9D78
                cmp     [rdi+8], r14
                jnz     loc_140465C43
                test    rsi, rsi
                jz      loc_140465C24
                cmp     [rdi+70h], r13
                jnz     loc_1402F9E9A

loc_1402F9C28:                          ; CODE XREF: CcUninitializeCacheMap+3D4↓j
                dec     dword ptr [rbx+4]
                lea     rax, [rdi+60h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_1402F9F27
                cmp     [rcx], rax
                jnz     loc_1402F9F27
                mov     [rcx], rdx
                lea     rax, [rbx+178h]
                mov     [rdx+8], rcx
                xor     edx, edx
                cmp     rdi, rax
                jnz     short loc_1402F9C63
                mov     [rdi], dx
                mov     edi, edx

loc_1402F9C63:                          ; CODE XREF: CcUninitializeCacheMap+12C↑j
                mov     [r14+30h], rdx

loc_1402F9C67:                          ; CODE XREF: CcUninitializeCacheMap+24A↓j
                test    rbx, rbx
                jz      loc_1402F9D7F
                mov     rax, [rbp+arg_8]
                test    rax, rax
                jnz     loc_1402F9DCE

loc_1402F9C7D:                          ; CODE XREF: CcUninitializeCacheMap+2B4↓j
                                        ; CcUninitializeCacheMap+2BE↓j ...
                cmp     dword ptr [rbx+4], 0
                jnz     loc_1402F9E2E
                lea     rax, [rbx+0E0h]
                cmp     [rax], rax
                jnz     loc_140465E2F
                mov     r11, [rbp+arg_10]
                test    r11, r11
                jnz     loc_140465D0D

loc_1402F9CA4:                          ; CODE XREF: CcUninitializeCacheMap+16C203↓j
                mov     eax, [rbx+98h]
                test    al, 4
                jnz     loc_1402F9DF3
                test    r11, r11
                jnz     loc_1402F9DF3

loc_1402F9CBB:                          ; CODE XREF: CcUninitializeCacheMap+2CF↓j
                                        ; CcUninitializeCacheMap+365↓j
                test    al, 20h
                jnz     short loc_1402F9CC7
                mov     rcx, rbx
                call    sub_1402FA068

loc_1402F9CC7:                          ; CODE XREF: CcUninitializeCacheMap+18D↑j
                                        ; CcUninitializeCacheMap+2C5↓j
                mov     byte ptr [rsi+279h], 1
                cmp     [rsi+3C6h], r15b
                jnz     loc_140465D38
                test    r11, r11
                jnz     loc_140465D49

loc_1402F9CE4:                          ; CODE XREF: CcUninitializeCacheMap+16C221↓j
                xor     dl, dl

loc_1402F9CE6:                          ; CODE XREF: CcUninitializeCacheMap+16C214↓j
                                        ; CcUninitializeCacheMap+16C229↓j
                movzx   r8d, dl
                mov     rcx, rsi
                call    sub_1402F9FDC
                lea     rcx, [rbp+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_28]
                test    eax, eax
                jnz     loc_140465D5E

loc_1402F9D0D:                          ; CODE XREF: CcUninitializeCacheMap+320↓j
                                        ; CcUninitializeCacheMap+16C17F↓j ...
                mov     cr8, rbx
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_40]
                test    eax, eax
                jnz     loc_140465DC7

loc_1402F9D2C:                          ; CODE XREF: CcUninitializeCacheMap+16C299↓j
                                        ; CcUninitializeCacheMap+16C2A5↓j ...
                mov     cr8, rbx

loc_1402F9D30:                          ; CODE XREF: CcUninitializeCacheMap+284↓j
                                        ; CcUninitializeCacheMap+2F9↓j ...
                test    rdi, rdi
                jnz     loc_1402F9E72

loc_1402F9D39:                          ; CODE XREF: CcUninitializeCacheMap+34C↓j
                test    r12b, r12b
                jnz     loc_140465F80

loc_1402F9D42:                          ; CODE XREF: CcUninitializeCacheMap+16C45B↓j
                test    r13, r13
                jnz     loc_1402F9F09

loc_1402F9D4B:                          ; CODE XREF: CcUninitializeCacheMap+3F2↓j
                test    rsi, rsi
                jz      short loc_1402F9D58
                mov     rcx, rsi
                call    sub_1402F9FAC

loc_1402F9D58:                          ; CODE XREF: CcUninitializeCacheMap+21E↑j
                mov     rbx, [rsp+80h+arg_18]
                movzx   eax, r15b
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402F9D78:                          ; CODE XREF: CcUninitializeCacheMap+D5↑j
                xor     edx, edx
                jmp     loc_1402F9C67
; ---------------------------------------------------------------------------

loc_1402F9D7F:                          ; CODE XREF: CcUninitializeCacheMap+13A↑j
                mov     rbx, [rbp+arg_8]
                test    rbx, rbx
                jz      short loc_1402F9D8E
                cmp     qword ptr [rbx], 0
                jz      short loc_1402F9DBF

loc_1402F9D8E:                          ; CODE XREF: CcUninitializeCacheMap+256↑j
                                        ; CcUninitializeCacheMap+297↓j
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_40]
                test    eax, eax
                jnz     loc_140465F04

loc_1402F9DA9:                          ; CODE XREF: CcUninitializeCacheMap+16C3D6↓j
                                        ; CcUninitializeCacheMap+16C3E2↓j ...
                mov     cr8, rbx

loc_1402F9DAD:                          ; CODE XREF: CcUninitializeCacheMap+16C3B1↓j
                mov     r11, [rbp+arg_10]
                test    r11, r11
                jz      loc_1402F9D30
                jmp     loc_140465F6C
; ---------------------------------------------------------------------------

loc_1402F9DBF:                          ; CODE XREF: CcUninitializeCacheMap+25C↑j
                mov     rax, [r14+28h]
                cmp     qword ptr [rax], 0
                jz      short loc_1402F9D8E
                jmp     loc_140465E4D
; ---------------------------------------------------------------------------

loc_1402F9DCE:                          ; CODE XREF: CcUninitializeCacheMap+147↑j
                mov     rcx, [rax]
                test    rcx, rcx
                jz      loc_1402F9E5B

loc_1402F9DDA:                          ; CODE XREF: CcUninitializeCacheMap+330↓j
                lea     rax, [rbx+0E0h]
                cmp     [rax], rax
                jnz     loc_1402F9C7D
                mov     [rbx+8], rcx
                jmp     loc_1402F9C7D
; ---------------------------------------------------------------------------

loc_1402F9DF3:                          ; CODE XREF: CcUninitializeCacheMap+17C↑j
                                        ; CcUninitializeCacheMap+185↑j
                test    al, 20h
                jnz     loc_1402F9CC7
                cmp     dword ptr [rbx+70h], 0
                jnz     loc_1402F9CBB
                bt      eax, 0Ah
                jb      short loc_1402F9E81

loc_1402F9E0B:                          ; CODE XREF: CcUninitializeCacheMap+35F↓j
                mov     [rsp+80h+var_60], rdx
                lea     r8, [rbp+var_38]
                lea     rdx, [rbp+var_50]
                xor     r9d, r9d
                mov     rcx, rbx
                call    sub_1402F705C
                xor     r12b, r12b
                mov     r15b, 1
                jmp     loc_1402F9D30
; ---------------------------------------------------------------------------

loc_1402F9E2E:                          ; CODE XREF: CcUninitializeCacheMap+151↑j
                mov     r11, [rbp+arg_10]
                test    r11, r11
                jnz     loc_140465C62

loc_1402F9E3B:                          ; CODE XREF: CcUninitializeCacheMap+16C14D↓j
                                        ; CcUninitializeCacheMap+16C178↓j
                lea     rcx, [rbp+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_28]
                test    eax, eax
                jz      loc_1402F9D0D
                jmp     loc_140465CAD
; ---------------------------------------------------------------------------

loc_1402F9E5B:                          ; CODE XREF: CcUninitializeCacheMap+2A4↑j
                cmp     qword ptr [rbx+8], 0
                jz      loc_1402F9DDA
                or      dword ptr [rbx+98h], 10h
                jmp     loc_1402F9C7D
; ---------------------------------------------------------------------------

loc_1402F9E72:                          ; CODE XREF: CcUninitializeCacheMap+203↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_1402F9D39
; ---------------------------------------------------------------------------

loc_1402F9E81:                          ; CODE XREF: CcUninitializeCacheMap+2D9↑j
                mov     rcx, 7FFFFFFFFFFFFFFFh
                cmp     [rbx+28h], rcx
                jz      loc_1402F9E0B
                jmp     loc_1402F9CBB
; ---------------------------------------------------------------------------

loc_1402F9E9A:                          ; CODE XREF: CcUninitializeCacheMap+F2↑j
                lea     rdx, [rsi+0C0h]
                xor     eax, eax
                lea     rcx, [rbp+var_20]
                mov     qword ptr [rbp+var_20+8], rdx
                mov     qword ptr [rbp+var_20], rax
                call    sub_14024B3F0
                mov     rax, [rdi+70h]
                test    rax, rax
                jz      short loc_1402F9EFB
                mov     rdx, [rax]
                mov     r13, rax
                inc     cs:dword_140C4C370
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     short loc_1402F9F27
                cmp     [rcx], rax
                jnz     short loc_1402F9F27
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                xor     ecx, ecx
                mov     [rax+8], rcx
                mov     [rax], rcx
                cmp     [rax+10h], r14
                jnz     loc_140465C06
                dec     dword ptr [rbx+4]
                dec     dword ptr [rbx+218h]

loc_1402F9EFB:                          ; CODE XREF: CcUninitializeCacheMap+38B↑j
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     loc_1402F9C28
; ---------------------------------------------------------------------------

loc_1402F9F09:                          ; CODE XREF: CcUninitializeCacheMap+215↑j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     rcx, [r13+18h]
                test    rcx, rcx
                jnz     short loc_1402F9F2E

loc_1402F9F1A:                          ; CODE XREF: CcUninitializeCacheMap+403↓j
                mov     rcx, r13
                call    sub_1402F9F3C
                jmp     loc_1402F9D4B
; ---------------------------------------------------------------------------

loc_1402F9F27:                          ; CODE XREF: CcUninitializeCacheMap+10A↑j
                                        ; CcUninitializeCacheMap+113↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1402F9F2E:                          ; CODE XREF: CcUninitializeCacheMap+3E8↑j
                call    sub_140319B24
                jmp     short loc_1402F9F1A
CcUninitializeCacheMap endp

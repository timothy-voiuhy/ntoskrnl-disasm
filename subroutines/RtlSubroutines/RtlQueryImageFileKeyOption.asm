RtlQueryImageFileKeyOption proc near    ; CODE XREF: sub_140512540+36↑p
                                        ; sub_140581078+A9↑p ...

var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = dword ptr -10h
var_8           = qword ptr -8
arg_8           = qword ptr  48h
arg_20          = dword ptr  60h
arg_28          = qword ptr  68h

; FUNCTION CHUNK AT 000000014082AFA2 SIZE 000000CF BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     rax, [rbp+arg_28]
                mov     r13, rcx
                mov     [rbp+var_28], rax
                lea     rcx, [rbp+var_38]
                xor     eax, eax
                xorps   xmm0, xmm0
                and     [rbp+var_40], eax
                xorps   xmm1, xmm1
                mov     [rbp+var_10], eax
                mov     r14, r9
                mov     r15d, r8d
                movups  [rbp+var_38], xmm0
                movups  [rbp+var_20], xmm1
                call    RtlInitUnicodeStringEx
                test    eax, eax
                js      short loc_14070FA01
                mov     esi, [rbp+arg_20]
                cmp     esi, 8
                jnb     short loc_14070FA26
                lea     rax, [rbp+var_40]
                mov     r8d, 2
                mov     [rsp+70h+var_48], rax
                lea     r9, [rbp+var_20]
                lea     rdx, [rbp+var_38]
                mov     [rsp+70h+var_50], 14h
                mov     rcx, r13
                lea     rdi, [rbp+var_20]
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                jns     loc_14070FA93
                cmp     eax, 80000005h
                jz      loc_14082AFA2

loc_14070FA01:                          ; CODE XREF: RtlQueryImageFileKeyOption+57↑j
                                        ; RtlQueryImageFileKeyOption+12E↓j ...
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+70h+arg_8]
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14070FA26:                          ; CODE XREF: RtlQueryImageFileKeyOption+5F↑j
                lea     ebx, [rsi+0Ch]

loc_14070FA29:                          ; CODE XREF: RtlQueryImageFileKeyOption+11B645↓j
                mov     edx, ebx

loc_14070FA2B:                          ; CODE XREF: RtlQueryImageFileKeyOption+11B659↓j
                mov     r8d, 6B497452h
                mov     ecx, 208h
                call    ExAllocatePoolWithQuotaTag
                mov     r12, rax
                test    rax, rax
                jz      loc_14082B067
                mov     rdi, rax
                lea     rdx, [rbp+var_38]
                lea     rax, [rbp+var_40]
                mov     r9, rdi
                mov     [rsp+70h+var_48], rax
                mov     r8d, 2
                mov     rcx, r13
                mov     [rsp+70h+var_50], ebx
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14070FA96
                cmp     eax, 80000005h
                jz      loc_14082AFAA

loc_14070FA7D:                          ; CODE XREF: RtlQueryImageFileKeyOption+188↓j
                                        ; RtlQueryImageFileKeyOption+19B↓j ...
                test    r12, r12
                jz      short loc_14070FA8C
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_14070FA8C:                          ; CODE XREF: RtlQueryImageFileKeyOption+120↑j
                mov     eax, ebx
                jmp     loc_14070FA01
; ---------------------------------------------------------------------------

loc_14070FA93:                          ; CODE XREF: RtlQueryImageFileKeyOption+90↑j
                xor     r12d, r12d

loc_14070FA96:                          ; CODE XREF: RtlQueryImageFileKeyOption+110↑j
                test    r15d, r15d
                jz      short loc_14070FAFD

loc_14070FA9B:                          ; CODE XREF: RtlQueryImageFileKeyOption+1AA↓j
                mov     ecx, [rdi+4]
                lea     eax, [rcx-3]
                test    eax, 0FFFFFFFBh
                jz      loc_14082B043
                mov     eax, 4
                cmp     ecx, eax
                jnz     short loc_14070FB0C
                cmp     r15d, eax
                jnz     loc_14082B05D
                cmp     esi, eax
                jnz     loc_14070FB52
                cmp     [rdi+8], eax
                jnz     loc_14070FB52
                mov     [rbp+var_40], eax
                test    r14, r14
                jz      loc_14082B053
                mov     eax, [rdi+0Ch]
                mov     [r14], eax

loc_14070FAE1:                          ; CODE XREF: RtlQueryImageFileKeyOption+1DB↓j
                                        ; RtlQueryImageFileKeyOption+11B668↓j ...
                mov     rcx, [rbp+var_28]
                test    rcx, rcx
                jz      short loc_14070FA7D
                mov     edx, 80000000h
                lea     eax, [rbx+rdx]
                test    edx, eax
                jz      short loc_14070FB3D

loc_14070FAF6:                          ; CODE XREF: RtlQueryImageFileKeyOption+1E3↓j
                mov     eax, [rbp+var_40]
                mov     [rcx], eax
                jmp     short loc_14070FA7D
; ---------------------------------------------------------------------------

loc_14070FAFD:                          ; CODE XREF: RtlQueryImageFileKeyOption+139↑j
                mov     eax, [rdi+8]
                cmp     eax, esi
                ja      short loc_14070FB4A
                mov     r15d, [rdi+4]
                mov     esi, eax
                jmp     short loc_14070FA9B
; ---------------------------------------------------------------------------

loc_14070FB0C:                          ; CODE XREF: RtlQueryImageFileKeyOption+153↑j
                cmp     ecx, 0Bh
                jnz     loc_14082AFBE
                cmp     r15d, ecx
                jnz     loc_14082B05D
                cmp     esi, 8
                jnz     short loc_14070FB52
                cmp     [rdi+8], esi
                jnz     short loc_14070FB52
                mov     [rbp+var_40], esi
                test    r14, r14
                jz      loc_14082B053
                mov     rax, [rdi+0Ch]
                mov     [r14], rax
                jmp     short loc_14070FAE1
; ---------------------------------------------------------------------------

loc_14070FB3D:                          ; CODE XREF: RtlQueryImageFileKeyOption+194↑j
                cmp     ebx, 80000005h
                jz      short loc_14070FAF6
                jmp     loc_14070FA7D
; ---------------------------------------------------------------------------

loc_14070FB4A:                          ; CODE XREF: RtlQueryImageFileKeyOption+1A2↑j
                mov     [rbp+var_40], eax
                jmp     loc_14082B053
; ---------------------------------------------------------------------------

loc_14070FB52:                          ; CODE XREF: RtlQueryImageFileKeyOption+160↑j
                                        ; RtlQueryImageFileKeyOption+169↑j ...
                mov     ebx, 0C0000004h
                jmp     loc_14070FA7D
; } // starts at 14070F960
RtlQueryImageFileKeyOption endp

CcScheduleReadAheadEx proc near         ; CODE XREF: CcCopyReadEx+227↑p
                                        ; CcCopyReadEx+2A0↑p ...

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = byte ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404672CC SIZE 000001E3 BYTES

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 88h
                and     [rbp+57h+var_70], 0
                xor     eax, eax
                and     [rbp+57h+var_80], 0
                xor     r14d, r14d
                mov     rdi, [rcx+30h]
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_48], rax
                mov     rbx, r9
                mov     rax, [rcx+28h]
                mov     r12, rdx
                movups  [rbp+57h+var_58], xmm0
                mov     esi, r8d
                mov     r13, rcx
                mov     [rbp+57h+var_68], r14
                mov     r15, [rax+8]
                test    r15, r15
                jz      short loc_1402FC1AF
                mov     rcx, r15
                call    sub_140265960
                mov     r14, rax
                mov     [rbp+57h+var_68], rax

loc_1402FC1AF:                          ; CODE XREF: CcScheduleReadAheadEx+5E↑j
                test    rbx, rbx
                jnz     short loc_1402FC1C1
                mov     rbx, gs:188h
                mov     [rbp+57h+arg_18], rbx

loc_1402FC1C1:                          ; CODE XREF: CcScheduleReadAheadEx+72↑j
                mov     rcx, rbx
                call    sub_1402C4F40
                test    rdi, rdi
                jz      loc_1402FC486
                test    r15, r15
                jz      loc_1402FC486
                mov     ecx, [r15+98h]
                test    cl, 1
                jnz     loc_1402FC486
                bt      ecx, 0Dh
                jb      loc_1402FC486
                test    dword ptr [r13+50h], 100000h
                jnz     loc_1402FC486
                cmp     eax, 2
                jl      loc_1402FC486
                and     qword ptr [rsp+0C0h+var_98], 0
                xor     r9d, r9d
                mov     r8d, 1000000h
                mov     dword ptr [rsp+0C0h+var_A0], 4
                mov     rdx, r13
                mov     rcx, r14
                call    sub_140265630
                test    al, al
                jz      loc_1402FC486
                test    r14, r14
                jz      short loc_1402FC249
                cmp     byte ptr [r14+160h], 0
                jnz     loc_1402FC486

loc_1402FC249:                          ; CODE XREF: CcScheduleReadAheadEx+F9↑j
                mov     eax, [rdi+4]
                mov     rbx, [r12]
                add     rbx, rsi
                mov     [rbp+57h+var_78], rsi
                add     esi, eax
                not     eax
                and     esi, eax
                lea     rax, [rdi+50h]
                mov     rcx, rax
                mov     [rbp+57h+var_7C], esi
                mov     [rbp+57h+var_60], rax
                call    KeAcquireSpinLockRaiseToDpc
                mov     [rbp+57h+arg_0], al
                mov     ecx, 20000h
                mov     eax, [rdi]
                test    ecx, eax
                jz      loc_1402FC49B

loc_1402FC282:                          ; CODE XREF: CcScheduleReadAheadEx+35F↓j
                mov     rdx, r12
                mov     rcx, rdi
                call    sub_1402FC5A8
                xor     r9d, r9d
                mov     r12d, eax
                test    eax, eax
                jz      loc_1402FC444
                test    eax, eax
                jle     loc_1402FC450
                cmp     eax, 2
                jg      loc_1402FC519
                mov     rdx, [rdi+40h]
                lea     ecx, [rsi+rsi]
                add     rcx, [rbp+57h+var_78]
                add     rcx, rbx
                cmp     rcx, rdx
                jl      loc_1402FC450
                mov     rax, rbx
                mov     [rbp+57h+var_78], rdx
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rdi+38h], rax
                cmp     rax, rdx
                jl      short loc_1402FC2EF
                mov     eax, esi
                lea     rcx, [rbx-1]
                add     rcx, rax
                dec     rax
                not     rax
                and     rcx, rax
                mov     [rbp+57h+var_78], rcx

loc_1402FC2EF:                          ; CODE XREF: CcScheduleReadAheadEx+197↑j
                inc     dword ptr [rdi+30h]
                mov     r8d, esi
                mov     ecx, [rdi+30h]
                cmp     r12d, 1
                jnz     loc_1402FC4B4

loc_1402FC302:                          ; CODE XREF: CcScheduleReadAheadEx+37D↓j
                lea     r8d, [rsi+rsi]

loc_1402FC306:                          ; CODE XREF: CcScheduleReadAheadEx+377↓j
                mov     eax, dword ptr [rbp+57h+var_78]
                sub     eax, [rdi+38h]
                add     r8d, eax
                cmp     ecx, 3
                jnb     loc_1402FC4A4

loc_1402FC318:                          ; CODE XREF: CcScheduleReadAheadEx+369↓j
                                        ; CcScheduleReadAheadEx+429↓j ...
                mov     [rdi+34h], r8d
                mov     eax, 10000h
                mov     edx, [rdi]
                test    eax, edx
                jnz     loc_1402FC4C2
                or      edx, eax
                mov     [rdi], edx
                mov     rcx, gs:188h
                call    sub_1402C4F00
                shl     eax, 12h
                lea     rcx, [rdi+50h]
                xor     eax, edx
                and     eax, 1C0000h
                xor     eax, edx
                mov     [rdi], eax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     sil, 0Fh
                test    eax, eax
                jnz     loc_140467309

loc_1402FC369:                          ; CODE XREF: CcScheduleReadAheadEx+16B1CB↓j
                                        ; CcScheduleReadAheadEx+16B1D8↓j ...
                mov     r10b, [rbp+57h+arg_0]

loc_1402FC36D:                          ; CODE XREF: CcScheduleReadAheadEx+16B1E6↓j
                                        ; CcScheduleReadAheadEx+16B1EE↓j ...
                movzx   eax, r10b
                mov     cr8, rax
                lea     rdx, [rbp+57h+var_70]
                mov     rcx, r14
                call    sub_1402F9A50
                test    eax, eax
                js      loc_1404673D3
                test    dword ptr cs:xmmword_140CFC490, 20000h
                mov     r14, [rbp+57h+var_70]
                jnz     loc_1402FC56E

loc_1402FC39D:                          ; CODE XREF: CcScheduleReadAheadEx+455↓j
                test    dword ptr [r15+98h], 10000000h
                jz      short loc_1402FC3BE
                mov     rax, [rbp+57h+arg_18]
                mov     r9d, r12d
                mov     rcx, r13
                mov     [rsp+0C0h+var_A0], rax
                call    sub_140350904

loc_1402FC3BE:                          ; CODE XREF: CcScheduleReadAheadEx+268↑j
                mov     edx, 746C6644h
                mov     rcx, r13
                call    ObfReferenceObjectWithTag
                mov     r12, [rbp+57h+var_68]
                lea     rdx, [rbp+57h+var_58]
                lea     rcx, [r12+80h]
                call    KeAcquireInStackQueuedSpinLock
                inc     dword ptr [r15+4]
                lea     rcx, [rbp+57h+var_58]
                inc     dword ptr [r15+218h]
                bts     dword ptr [r15+98h], 0Eh
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r15d, byte ptr [rbp+57h+var_48]
                test    eax, eax
                jnz     loc_140467372

loc_1402FC410:                          ; CODE XREF: CcScheduleReadAheadEx+16B234↓j
                                        ; CcScheduleReadAheadEx+16B241↓j ...
                mov     cr8, r15
                mov     rcx, [rbp+57h+arg_18]
                lea     rdx, [r14+18h]
                mov     [rdi+70h], r14
                mov     byte ptr [r14+78h], 1
                mov     [r14+10h], r13
                and     qword ptr [rdx], 0
                call    sub_1402FBC28
                lea     rdx, [r12+0F0h]
                mov     rcx, r14
                call    sub_1402F93B0
                jmp     short loc_1402FC486
; ---------------------------------------------------------------------------

loc_1402FC444:                          ; CODE XREF: CcScheduleReadAheadEx+155↑j
                mov     [rdi+30h], r9d
                mov     [rdi+40h], r9
                mov     [rdi+48h], r9

loc_1402FC450:                          ; CODE XREF: CcScheduleReadAheadEx+15D↑j
                                        ; CcScheduleReadAheadEx+17D↑j
                mov     ecx, [rbp+57h+var_80]

loc_1402FC453:                          ; CODE XREF: CcScheduleReadAheadEx+392↓j
                                        ; CcScheduleReadAheadEx+3B1↓j
                mov     rdx, [rbp+57h+arg_8]

loc_1402FC457:                          ; CODE XREF: CcScheduleReadAheadEx+45D↓j
                test    dword ptr cs:xmmword_140CFC490, 20000h
                jnz     loc_1402FC4F6

loc_1402FC467:                          ; CODE XREF: CcScheduleReadAheadEx+3D4↓j
                mov     rcx, [rbp+57h+var_60]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140467446

loc_1402FC47E:                          ; CODE XREF: CcScheduleReadAheadEx+16B308↓j
                                        ; CcScheduleReadAheadEx+16B318↓j ...
                movzx   eax, [rbp+57h+arg_0]
                mov     cr8, rax

loc_1402FC486:                          ; CODE XREF: CcScheduleReadAheadEx+8C↑j
                                        ; CcScheduleReadAheadEx+95↑j ...
                add     rsp, 88h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402FC49B:                          ; CODE XREF: CcScheduleReadAheadEx+13C↑j
                or      eax, ecx
                mov     [rdi], eax
                jmp     loc_1402FC282
; ---------------------------------------------------------------------------

loc_1402FC4A4:                          ; CODE XREF: CcScheduleReadAheadEx+1D2↑j
                mov     eax, [rdi+5Ch]
                test    eax, eax
                jz      loc_1402FC318
                jmp     loc_1404672CC
; ---------------------------------------------------------------------------

loc_1402FC4B4:                          ; CODE XREF: CcScheduleReadAheadEx+1BC↑j
                cmp     ecx, 3
                jb      loc_1402FC306
                jmp     loc_1402FC302
; ---------------------------------------------------------------------------

loc_1402FC4C2:                          ; CODE XREF: CcScheduleReadAheadEx+1E5↑j
                test    dword ptr [r15+98h], 10000000h
                mov     ecx, 1
                jz      loc_1402FC453
                mov     rax, [rbp+57h+arg_18]
                mov     r9d, r12d
                mov     rcx, r13
                mov     [rsp+0C0h+var_A0], rax
                call    sub_140350904
                mov     ecx, 1
                jmp     loc_1402FC453
; ---------------------------------------------------------------------------

loc_1402FC4F6:                          ; CODE XREF: CcScheduleReadAheadEx+321↑j
                mov     r9d, [rbp+57h+arg_10]
                mov     r8, rdx
                mov     [rsp+30h], ecx
                mov     rdx, r13
                mov     byte ptr [rsp+0C0h+var_98], r12b
                xor     ecx, ecx
                mov     dword ptr [rsp+0C0h+var_A0], esi
                call    sub_1403BC1DC
                jmp     loc_1402FC467
; ---------------------------------------------------------------------------

loc_1402FC519:                          ; CODE XREF: CcScheduleReadAheadEx+166↑j
                mov     rdx, [rbp+57h+arg_8]
                cmp     r12d, 3
                jnz     short loc_1402FC59A
                mov     rcx, [rdx]
                add     rcx, rcx
                sub     rcx, [rdi+20h]
                mov     [rbp+57h+var_78], rcx
                shr     rcx, 20h
                test    ecx, ecx
                js      short loc_1402FC59A
                mov     ecx, dword ptr [rbp+57h+var_78]
                mov     r9d, 0FFFFF000h
                mov     edx, [rbp+57h+arg_10]
                mov     eax, ecx
                and     eax, 0FFFh
                and     ecx, r9d
                add     edx, eax
                mov     dword ptr [rbp+57h+var_78], ecx
                mov     rax, [rbp+57h+var_78]
                mov     [rbp+57h+arg_10], edx
                mov     [rdi+38h], rax
                lea     r8d, [rdx+0FFFh]
                and     r8d, r9d
                jmp     loc_1402FC318
; ---------------------------------------------------------------------------

loc_1402FC56E:                          ; CODE XREF: CcScheduleReadAheadEx+257↑j
                mov     eax, [rbp+57h+var_7C]
                mov     rdx, r13
                mov     r9d, [rbp+57h+arg_10]
                mov     rcx, r14
                mov     r8, [rbp+57h+arg_8]
                mov     dword ptr [rsp+30h], 1
                mov     byte ptr [rsp+0C0h+var_98], r12b
                mov     dword ptr [rsp+0C0h+var_A0], eax
                call    sub_1403BC1DC
                jmp     loc_1402FC39D
; ---------------------------------------------------------------------------

loc_1402FC59A:                          ; CODE XREF: CcScheduleReadAheadEx+3E1↑j
                                        ; CcScheduleReadAheadEx+3F7↑j
                mov     ecx, [rbp+57h+var_80]
                jmp     loc_1402FC457
CcScheduleReadAheadEx endp

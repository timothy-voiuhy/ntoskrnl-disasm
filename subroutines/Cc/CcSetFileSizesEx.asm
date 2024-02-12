CcSetFileSizesEx proc near              ; CODE XREF: CcSetFileSizes+4↓p
                                        ; DATA XREF: .rdata:000000014005AD54↑o ...

var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 000000014043A1DA SIZE 00000395 BYTES

                mov     [rsp-38h+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     r14, [rdx]
                xor     eax, eax
                mov     rbx, [rdx+10h]
                xorps   xmm0, xmm0
                mov     [rbp+var_8], rax
                mov     rsi, rcx
                mov     [rbp+var_20], rax
                lea     rcx, qword_140CDB640
                mov     rax, [rdx+8]
                xorps   xmm1, xmm1
                lea     rdx, [rbp+var_18]
                mov     [rbp+arg_8], rax
                movups  [rbp+var_40], xmm0
                mov     [rbp+arg_10], r14
                movups  [rbp+var_18], xmm1
                movups  [rbp+var_30], xmm0
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, [rsi+28h]
                mov     r13b, 1
                mov     rdi, [rax+8]
                test    rdi, rdi
                jz      loc_14026043F
                cmp     qword ptr [rdi+0A8h], 0
                jz      loc_14026043F
                mov     rcx, rdi
                call    sub_140265960
                sub     rax, 0FFFFFFFFFFFFFF80h
                lea     rdx, [rbp+var_30]
                mov     rcx, rax
                mov     [rbp+arg_18], rax
                call    KeAcquireInStackQueuedSpinLock
                or      r15, 0FFFFFFFFFFFFFFFFh
                mov     sil, 0Fh
                cmp     r14, [rdi+20h]
                jg      loc_140260373

loc_140260207:                          ; CODE XREF: CcSetFileSizesEx+2CB↓j
                inc     dword ptr [rdi+4]
                inc     dword ptr [rdi+218h]
                test    r13b, r13b
                jz      loc_140260436
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r14d, byte ptr [rbp+var_20]
                test    eax, eax
                jnz     loc_14043A33D

loc_140260235:                          ; CODE XREF: CcSetFileSizesEx+1DA1DF↓j
                                        ; CcSetFileSizesEx+1DA1EC↓j ...
                mov     cr8, r14
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r14d, byte ptr [rbp+var_8]
                test    eax, eax
                jnz     loc_14043A3A3

loc_140260255:                          ; CODE XREF: CcSetFileSizesEx+1DA245↓j
                                        ; CcSetFileSizesEx+1DA252↓j ...
                mov     cr8, r14
                mov     r14, [rbp+arg_18]
                lea     rdx, [rbp+var_30]
                mov     rcx, r14
                call    KeAcquireInStackQueuedSpinLock

loc_140260269:                          ; CODE XREF: CcSetFileSizesEx+2DA↓j
                mov     rcx, [rdi+28h]
                mov     rax, 7FFFFFFFFFFFFFFFh
                cmp     rcx, rax
                jnz     short loc_1402602C9

loc_14026027C:                          ; CODE XREF: CcSetFileSizesEx+17A↓j
                mov     rax, [rdi+8]
                xor     ebx, ebx
                cmp     [rbp+arg_8], rax
                jl      short loc_1402602DC

loc_140260288:                          ; CODE XREF: CcSetFileSizesEx+184↓j
                                        ; CcSetFileSizesEx+1FB↓j
                mov     rcx, [rbp+arg_8]
                mov     [rdi+8], rcx
                mov     rcx, rdi
                call    sub_14026529C
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+var_20]
                test    eax, eax
                jnz     loc_14043A47D

loc_1402602B3:                          ; CODE XREF: CcSetFileSizesEx+1DA31F↓j
                                        ; CcSetFileSizesEx+1DA32C↓j ...
                mov     cr8, rdi
                mov     eax, ebx

loc_1402602B9:                          ; CODE XREF: CcSetFileSizesEx+329↓j
                                        ; CcSetFileSizesEx+1DA1D8↓j ...
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402602C9:                          ; CODE XREF: CcSetFileSizesEx+11A↑j
                mov     rax, [rbp+arg_8]
                cmp     rax, rcx
                jl      loc_140260360

loc_1402602D6:                          ; CODE XREF: CcSetFileSizesEx+204↓j
                mov     [rdi+30h], rbx
                jmp     short loc_14026027C
; ---------------------------------------------------------------------------

loc_1402602DC:                          ; CODE XREF: CcSetFileSizesEx+126↑j
                mov     eax, [rdi+98h]
                test    al, 4
                jnz     short loc_140260288
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_20]
                test    eax, eax
                jnz     loc_14043A409

loc_140260301:                          ; CODE XREF: CcSetFileSizesEx+1DA2AB↓j
                                        ; CcSetFileSizesEx+1DA2B8↓j ...
                mov     cr8, rbx
                xor     ebx, ebx
                lea     rdx, [rbp+arg_8]
                mov     byte ptr [rsp+70h+var_48], bl
                xor     r9d, r9d
                xor     r8d, r8d
                mov     byte ptr [rsp+70h+var_50], bl
                mov     rcx, rdi
                call    sub_140264FD0
                test    al, al
                jz      short loc_14026034F
                cmp     [rbp+arg_8], rbx
                jnz     short loc_140260341
                cmp     [rdi+0A0h], rbx
                jnz     short loc_140260369

loc_140260334:                          ; CODE XREF: CcSetFileSizesEx+211↓j
                lea     rax, [rdi+10h]
                cmp     [rax], rax
                jnz     loc_14043A46F

loc_140260341:                          ; CODE XREF: CcSetFileSizesEx+1C9↑j
                                        ; CcSetFileSizesEx+1DA318↓j
                lea     rdx, [rbp+arg_8]
                mov     rcx, rdi
                call    sub_1402E4724
                mov     ebx, eax

loc_14026034F:                          ; CODE XREF: CcSetFileSizesEx+1C3↑j
                lea     rdx, [rbp+var_30]
                mov     rcx, r14
                call    KeAcquireInStackQueuedSpinLock
                jmp     loc_140260288
; ---------------------------------------------------------------------------

loc_140260360:                          ; CODE XREF: CcSetFileSizesEx+170↑j
                mov     [rdi+28h], rax
                jmp     loc_1402602D6
; ---------------------------------------------------------------------------

loc_140260369:                          ; CODE XREF: CcSetFileSizesEx+1D2↑j
                mov     rcx, rdi
                call    sub_1402F5BC8
                jmp     short loc_140260334
; ---------------------------------------------------------------------------

loc_140260373:                          ; CODE XREF: CcSetFileSizesEx+A1↑j
                inc     dword ptr [rdi+4]
                lea     rcx, [rbp+var_30]
                inc     dword ptr [rdi+218h]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r14d, byte ptr [rbp+var_20]
                test    eax, eax
                jnz     loc_14043A1DA

loc_140260398:                          ; CODE XREF: CcSetFileSizesEx+1DA07D↓j
                                        ; CcSetFileSizesEx+1DA08A↓j ...
                mov     cr8, r14
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r14d, byte ptr [rbp+var_8]
                test    eax, eax
                jnz     loc_14043A241

loc_1402603B8:                          ; CODE XREF: CcSetFileSizesEx+1DA0E4↓j
                                        ; CcSetFileSizesEx+1DA0F1↓j ...
                mov     cr8, r14
                add     [rbp+arg_10], 0FFFFFh
                lea     rdx, [rbp+arg_10]
                mov     rcx, [rdi+0A8h]
                mov     r8d, 1
                and     dword ptr [rbp+arg_10], 0FFF00000h
                xor     r13b, r13b
                call    sub_1406E91EC
                mov     r14d, eax
                test    eax, eax
                js      loc_14043A2A8
                mov     rdx, [rbp+arg_10]
                mov     rcx, rdi
                call    sub_140328494
                mov     r14d, eax

loc_1402603FE:                          ; CODE XREF: CcSetFileSizesEx+1DA15B↓j
                mov     rcx, [rbp+arg_18]
                lea     rdx, [rbp+var_30]
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rdi
                call    sub_14026529C
                test    r14d, r14d
                js      loc_14043A2C0
                mov     rax, [rbp+arg_0]
                mov     rax, [rax+28h]
                mov     rdi, [rax+8]
                test    rdi, rdi
                jnz     loc_140260207
                jmp     loc_14043A2D2
; ---------------------------------------------------------------------------

loc_140260436:                          ; CODE XREF: CcSetFileSizesEx+B3↑j
                mov     r14, [rbp+arg_18]
                jmp     loc_140260269
; ---------------------------------------------------------------------------

loc_14026043F:                          ; CODE XREF: CcSetFileSizesEx+66↑j
                                        ; CcSetFileSizesEx+74↑j
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_8]
                test    eax, eax
                jnz     loc_14043A4E0

loc_14026045A:                          ; CODE XREF: CcSetFileSizesEx+1DA383↓j
                                        ; CcSetFileSizesEx+1DA3D9↓j
                mov     cr8, rbx
                test    dword ptr [rbp+arg_8], 0FFFh
                jnz     loc_14043A53E

loc_14026046B:                          ; CODE XREF: CcSetFileSizesEx+1DA40A↓j
                mov     rcx, [rsi+28h]
                lea     rdx, [rbp+arg_8]
                xor     r9d, r9d
                xor     r8d, r8d
                call    CcPurgeCacheSection
                neg     al
                sbb     eax, eax
                not     eax
                and     eax, 0C0000435h
                jmp     loc_1402602B9
CcSetFileSizesEx endp

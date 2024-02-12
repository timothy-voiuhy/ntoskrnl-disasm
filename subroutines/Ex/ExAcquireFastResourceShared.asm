ExAcquireFastResourceShared proc near   ; CODE XREF: ExAcquireResourceSharedLite+CF↑p
                                        ; SeSecurityAttributePresent+21AE9F↓p ...

var_60          = qword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 000000014049CBEE SIZE 000001D3 BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xor     eax, eax
                xor     r15d, r15d
                xorps   xmm0, xmm0
                mov     [rbp+var_40], rax
                mov     al, r8b
                mov     r13b, r8b
                neg     al
                mov     rbx, rdx
                lea     r11d, [r15+2]
                mov     rdi, rcx
                sbb     r8b, r8b
                mov     esi, r15d
                add     r8b, r11b
                movups  [rbp+var_38], xmm0
                movups  [rbp+var_28], xmm0
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_50], xmm0
                mov     r10, gs:188h
                test    byte ptr [rcx+1Ah], 1
                mov     [rbp+arg_0], r10
                jz      loc_14049CBEE
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, r8b
                ja      loc_14049CC08
                cmp     cl, r11b
                jnb     loc_14049CC22

loc_14038F31F:                          ; CODE XREF: ExAcquireFastResourceShared+10D99F↓j
                movzx   eax, byte ptr [rdx+0C0h]
                test    r11b, al
                jnz     loc_14049CC4F
                cmp     cl, 1
                jnb     short loc_14038F34A
                test    dword ptr [rdx+74h], 400h
                jnz     short loc_14038F34A
                cmp     [rdx+1E4h], r15d
                jz      loc_14049CC69

loc_14038F34A:                          ; CODE XREF: ExAcquireFastResourceShared+A2↑j
                                        ; ExAcquireFastResourceShared+AB↑j
                mov     r9, [rbx+20h]
                cmp     r9, rdx
                jnz     loc_14049CC83
                mov     r9, [rbx+18h]
                test    r9, r9
                jnz     loc_14049CC9B
                and     byte ptr [rbx+11h], 0FBh
                mov     [rbx+18h], rdi
                mov     r14, cr8
                mov     cr8, r11
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14049CCB1

loc_14038F386:                          ; CODE XREF: ExAcquireFastResourceShared+10DA23↓j
                                        ; ExAcquireFastResourceShared+10DA2D↓j ...
                cmp     [rdi+40h], r15d
                jz      short loc_14038F3A6
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, r10
                call    sub_14038F608
                test    rax, rax
                jnz     loc_14038F5A4

loc_14038F3A6:                          ; CODE XREF: ExAcquireFastResourceShared+FA↑j
                mov     r8d, r15d
                test    r13b, r13b
                mov     rcx, rdi
                setz    r8b
                xor     edx, edx
                call    sub_140244C10
                mov     rsi, rax
                test    rax, rax
                jz      short loc_14038F3FD
                movzx   ecx, byte ptr [rax+18h]
                mov     rdx, rax
                shl     rcx, 4
                sub     rdx, rcx
                mov     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rcx, [rdx+320h]
                imul    rcx
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                add     dl, dl
                or      dl, 1
                mov     [rbx+10h], dl

loc_14038F3FD:                          ; CODE XREF: ExAcquireFastResourceShared+130↑j
                lea     rdx, [rdi+60h]
                mov     qword ptr [rbp+var_50], r15
                lea     rcx, [rbp+var_50]
                mov     qword ptr [rbp+var_50+8], rdx
                call    sub_14024B3F0
                mov     rcx, rdi
                call    sub_14038F5D4
                mov     r15b, al
                test    al, al
                jz      loc_14038F4D4
                lea     rcx, [rdi+30h]
                mov     r8, [rcx+8]
                lea     rdx, [rbx+38h]
                cmp     [r8], rcx
                jnz     loc_14049CD56
                mov     [rdx], rcx
                mov     [rdx+8], r8
                mov     [r8], rdx
                mov     [rcx+8], rdx
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                lea     rax, [rbx+28h]
                mov     byte ptr [rbx+12h], 1
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbp+arg_0]
                add     rax, 628h
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_14049CD56
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rcx+8], rbx
                mov     [rax], rbx

loc_14038F485:                          ; CODE XREF: ExAcquireFastResourceShared+25F↓j
                mov     r11d, 2

loc_14038F48B:                          ; CODE XREF: ExAcquireFastResourceShared+336↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049CCF2

loc_14038F499:                          ; CODE XREF: ExAcquireFastResourceShared+10DA64↓j
                                        ; ExAcquireFastResourceShared+10DA70↓j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_14038F4A1:                          ; CODE XREF: ExAcquireFastResourceShared+30F↓j
                test    rsi, rsi
                jz      short loc_14038F4AF
                test    r15b, r15b
                jz      short loc_14038F4F1
                or      byte ptr [rsi+1Ah], 1

loc_14038F4AF:                          ; CODE XREF: ExAcquireFastResourceShared+214↑j
                                        ; ExAcquireFastResourceShared+26C↓j
                lea     r11, [rsp+80h+var_s0]
                mov     al, r15b
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14038F4D4:                          ; CODE XREF: ExAcquireFastResourceShared+18F↑j
                test    r13b, r13b
                jnz     short loc_14038F4FE
                and     byte ptr [rbx+11h], 0FAh
                lea     rcx, [rbp+var_50]
                and     qword ptr [rbx+18h], 0
                mov     [rbx+10h], r13b
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     short loc_14038F485
; ---------------------------------------------------------------------------

loc_14038F4F1:                          ; CODE XREF: ExAcquireFastResourceShared+219↑j
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14031D1B0
                jmp     short loc_14038F4AF
; ---------------------------------------------------------------------------

loc_14038F4FE:                          ; CODE XREF: ExAcquireFastResourceShared+247↑j
                test    rsi, rsi
                jz      short loc_14038F50B
                mov     rcx, rsi
                call    sub_1402F6340

loc_14038F50B:                          ; CODE XREF: ExAcquireFastResourceShared+271↑j
                lea     rax, [rdi+30h]
                mov     rcx, [rax+8]
                lea     rdx, [rbx+38h]
                cmp     [rcx], rax
                jnz     loc_14049CD56
                mov     [rdx+8], rcx
                lea     r8, [rbp+var_38]
                mov     [rdx], rax
                mov     [rcx], rdx
                mov     rcx, rdi
                mov     [rax+8], rdx
                mov     rdx, [rbp+arg_0]
                call    sub_140361ABC
                lea     rcx, [rbp+var_50]
                mov     byte ptr [rbx+13h], 1
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rcx, [rbp+arg_0]
                mov     r9, rbx
                xor     r8d, r8d
                call    sub_14038F98C
                mov     edx, cs:dword_140CFC660
                test    edx, edx
                jnz     loc_14049CD5D

loc_14038F568:                          ; CODE XREF: ExAcquireFastResourceShared+10DAD0↓j
                                        ; ExAcquireFastResourceShared+10DADC↓j ...
                movzx   eax, r14b
                mov     cr8, rax
                xor     r9d, r9d
                lea     rdx, [rbp+var_38]
                mov     r8d, 10244h
                mov     rcx, rdi
                call    sub_14023C8E0
                mov     byte ptr [rbx+13h], 0
                test    rsi, rsi
                jz      short loc_14038F59C
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140244C10

loc_14038F59C:                          ; CODE XREF: ExAcquireFastResourceShared+2FC↑j
                mov     r15b, 1
                jmp     loc_14038F4A1
; ---------------------------------------------------------------------------

loc_14038F5A4:                          ; CODE XREF: ExAcquireFastResourceShared+110↑j
                mov     rcx, [rax+30h]
                add     rax, 28h ; '('
                cmp     [rcx], rax
                jnz     loc_14049CD56
                mov     [rbx], rax
                mov     r15b, 1
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx
                jmp     loc_14038F48B
ExAcquireFastResourceShared endp

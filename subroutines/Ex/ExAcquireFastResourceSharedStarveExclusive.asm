ExAcquireFastResourceSharedStarveExclusive proc near
                                        ; CODE XREF: sub_1405B4BEC+25↓p
                                        ; DATA XREF: .rdata:0000000140099B28↑o ...

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

; FUNCTION CHUNK AT 000000014049C9EE SIZE 00000200 BYTES

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
                jz      loc_14049C9EE
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, r8b
                ja      loc_14049CA08
                cmp     cl, r11b
                jnb     loc_14049CA22

loc_14038F01F:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+10DA9F↓j
                movzx   eax, byte ptr [rdx+0C0h]
                test    r11b, al
                jnz     loc_14049CA4F
                cmp     cl, 1
                jnb     short loc_14038F04A
                test    dword ptr [rdx+74h], 400h
                jnz     short loc_14038F04A
                cmp     [rdx+1E4h], r15d
                jz      loc_14049CA69

loc_14038F04A:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+A2↑j
                                        ; ExAcquireFastResourceSharedStarveExclusive+AB↑j
                mov     r9, [rbx+20h]
                cmp     r9, rdx
                jnz     loc_14049CA83
                mov     r9, [rbx+18h]
                test    r9, r9
                jnz     loc_14049CA9B
                and     byte ptr [rbx+11h], 0FBh
                mov     [rbx+18h], rdi
                mov     r14, cr8
                mov     cr8, r11
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14049CAB1

loc_14038F086:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+10DB23↓j
                                        ; ExAcquireFastResourceSharedStarveExclusive+10DB2D↓j ...
                cmp     [rdi+40h], r15d
                jz      short loc_14038F108
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, r10
                call    sub_14038F608
                test    rax, rax
                jz      short loc_14038F108
                mov     rcx, [rax+30h]
                add     rax, 28h ; '('
                cmp     [rcx], rax
                jnz     loc_14049CB72
                mov     [rbx], rax
                mov     r15b, 1
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx

loc_14038F0C4:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+234↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049CB0E

loc_14038F0D2:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+10DB80↓j
                                        ; ExAcquireFastResourceSharedStarveExclusive+10DB8C↓j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_14038F0DA:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+2F5↓j
                test    rsi, rsi
                jnz     loc_14038F1C9

loc_14038F0E3:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+246↓j
                                        ; ExAcquireFastResourceSharedStarveExclusive+10DC59↓j
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
                align 8

loc_14038F108:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+FA↑j
                                        ; ExAcquireFastResourceSharedStarveExclusive+110↑j
                mov     r8d, r15d
                test    r13b, r13b
                mov     rcx, rdi
                setz    r8b
                xor     edx, edx
                call    sub_140244C10
                mov     rsi, rax
                test    rax, rax
                jz      short loc_14038F15F
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

loc_14038F15F:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+192↑j
                lea     rdx, [rdi+60h]
                mov     qword ptr [rbp+var_50], r15
                lea     rcx, [rbp+var_50]
                mov     qword ptr [rbp+var_50+8], rdx
                call    sub_14024B3F0
                mov     rcx, rdi
                call    sub_1403554B0
                mov     r15b, al
                test    al, al
                jz      short loc_14038F1DB
                lea     rdx, [rdi+30h]
                mov     r9, [rdx+8]
                lea     r8, [rbx+38h]
                cmp     [r9], rdx
                jnz     loc_14049CB72
                mov     [r8], rdx
                lea     rcx, [rbp+var_50]
                mov     [r8+8], r9
                mov     [r9], r8
                mov     [rdx+8], r8
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rcx, [rbp+arg_0]
                mov     r9, rbx
                xor     r8d, r8d
                call    sub_14038F98C

loc_14038F1BE:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+10DB79↓j
                mov     r11d, 2
                jmp     loc_14038F0C4
; ---------------------------------------------------------------------------

loc_14038F1C9:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+14D↑j
                test    r15b, r15b
                jz      loc_14049CBDD
                or      byte ptr [rsi+1Ah], 1
                jmp     loc_14038F0E3
; ---------------------------------------------------------------------------

loc_14038F1DB:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+1F1↑j
                test    r13b, r13b
                jz      loc_14049CAF2
                test    rsi, rsi
                jz      short loc_14038F1F1
                mov     rcx, rsi
                call    sub_1402F6340

loc_14038F1F1:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+257↑j
                lea     rax, [rdi+30h]
                mov     rcx, [rax+8]
                lea     rdx, [rbx+38h]
                cmp     [rcx], rax
                jnz     loc_14049CB72
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
                jnz     loc_14049CB79

loc_14038F24E:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+10DBEC↓j
                                        ; ExAcquireFastResourceSharedStarveExclusive+10DBF8↓j ...
                movzx   eax, r14b
                mov     cr8, rax
                xor     r9d, r9d
                lea     rdx, [rbp+var_38]
                mov     r8d, 10244h
                mov     rcx, rdi
                call    sub_14023C8E0
                mov     byte ptr [rbx+13h], 0
                test    rsi, rsi
                jz      short loc_14038F282
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140244C10

loc_14038F282:                          ; CODE XREF: ExAcquireFastResourceSharedStarveExclusive+2E2↑j
                mov     r15b, 1
                jmp     loc_14038F0DA
ExAcquireFastResourceSharedStarveExclusive endp

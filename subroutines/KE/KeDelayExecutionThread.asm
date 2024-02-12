KeDelayExecutionThread proc near        ; CODE XREF: sub_140210228+7D↑p
                                        ; sub_1402841E0+DF6↑p ...

var_68          = qword ptr -68h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014045894A SIZE 00000249 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 58h
                mov     rbp, gs:188h
                xor     ebx, ebx
                mov     r14, r8
                movzx   edi, dl
                movzx   esi, cl
                mov     [rsp+88h+var_48], rbx
                mov     [rsp+88h+arg_18], ebx
                cmp     [r8], rbx
                jnz     short loc_1402CC08D
                test    cl, cl
                jz      short loc_1402CC08D
                test    dl, dl
                jnz     short loc_1402CC08D
                test    byte ptr [rbp+0C2h], 2
                jnz     short loc_1402CC08D
                mov     rcx, gs:20h
                cmp     [rcx+7C18h], ebx
                jnz     loc_1402CC159
                mov     rax, [rcx+8448h]
                cmp     [rax+8], ebx
                jnz     loc_1402CC159
                mov     ebx, 40000024h

loc_1402CC07D:                          ; CODE XREF: KeDelayExecutionThread+398↓j
                mov     eax, ebx

loc_1402CC07F:                          ; CODE XREF: KeDelayExecutionThread+144↓j
                                        ; KeDelayExecutionThread+3D4↓j
                add     rsp, 58h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402CC08D:                          ; CODE XREF: KeDelayExecutionThread+30↑j
                                        ; KeDelayExecutionThread+34↑j ...
                lea     rax, [rsp+88h+arg_18]

loc_1402CC095:                          ; DATA XREF: .rdata:00000001400694BC↑o
                                        ; .rdata:00000001400694CC↑o ...
                mov     [rsp+88h+arg_0], r12
                lea     r9, [rsp+88h+var_48]
                mov     [rsp+88h+var_68], rax
                mov     r8b, 1
                mov     [rsp+88h+var_38], r13
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_1402CC4F0
                mov     r12, [rsp+88h+var_48]
                mov     r13d, [rsp+88h+arg_18]
                mov     [rsp+88h+arg_10], al

loc_1402CC0CE:                          ; CODE XREF: KeDelayExecutionThread+451↓j
                movzx   r9d, dil
                mov     r8d, 4
                movzx   edx, sil
                mov     rcx, rbp
                call    sub_1402C4D60
                mov     [rsp+88h+var_50], eax
                test    eax, eax
                jnz     short loc_1402CC147
                mov     r8, r12
                mov     edx, r13d
                mov     rcx, rbp
                call    sub_1402CC5E0
                test    eax, eax
                jnz     loc_1402CC3AD
                mov     qword ptr [rbp+160h], 0FFFFFFFFFFFFFFFFh
                lea     rdx, [rbp+140h]
                mov     byte ptr [rbp+151h], 5
                mov     r9, r12
                mov     r8d, r13d
                mov     byte ptr [rbp+24Bh], 1
                mov     [rsp+88h+var_68], rbx
                call    sub_140240710
                cmp     eax, 100h
                jz      loc_1402CC438
                cmp     eax, 102h
                cmovnz  ebx, eax
                mov     eax, ebx

loc_1402CC147:                          ; CODE XREF: KeDelayExecutionThread+DA↑j
                                        ; KeDelayExecutionThread+474↓j
                mov     r12, [rsp+88h+arg_0]
                mov     r13, [rsp+88h+var_38]
                jmp     loc_1402CC07F
; ---------------------------------------------------------------------------

loc_1402CC159:                          ; CODE XREF: KeDelayExecutionThread+52↑j
                                        ; KeDelayExecutionThread+62↑j
                                        ; DATA XREF: ...
                mov     rdi, gs:188h
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rdx, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14045894A

loc_1402CC181:                          ; CODE XREF: KeDelayExecutionThread+18C93C↓j
                                        ; KeDelayExecutionThread+18C946↓j ...
                mov     rsi, gs:20h
                cmp     [rsi+7C18h], ebx
                jnz     short loc_1402CC1A2
                mov     rax, [rsi+8448h]
                cmp     [rax+8], ebx
                jz      loc_1402CC3F4

loc_1402CC1A2:                          ; CODE XREF: KeDelayExecutionThread+180↑j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402423B0
                mov     rbp, gs:20h
                mov     [rsp+88h+var_58], ebx
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14045898F

loc_1402CC1C9:                          ; CODE XREF: KeDelayExecutionThread+4C1↓j
                                        ; KeDelayExecutionThread+18C983↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_1402CC4A4
                mov     rbp, gs:20h
                mov     [rsp+88h+var_54], ebx
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_1404589F8

loc_1402CC1F3:                          ; CODE XREF: KeDelayExecutionThread+41D↓j
                                        ; KeDelayExecutionThread+18C9EC↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      loc_1402CC3FB
                mov     rbp, [rsi+10h]
                test    rbp, rbp
                jnz     short loc_1402CC21F
                xor     edx, edx
                lea     r8d, [rbp+1]
                mov     rcx, rsi
                call    sub_1402897D0
                mov     rbp, rax
                test    rax, rax
                jz      short loc_1402CC29A

loc_1402CC21F:                          ; CODE XREF: KeDelayExecutionThread+1F7↑j
                cmp     [rsi+20h], bl
                jnz     loc_140458A85
                cli
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402CDFD0
                mov     rdx, rax
                sti

loc_1402CC23B:                          ; CODE XREF: KeDelayExecutionThread+18CA79↓j
                movzx   ecx, byte ptr [rdi+28Bh]
                imul    ecx, cs:dword_140CFB150
                mov     eax, [rdi+78h]
                add     rcx, rdx
                test    al, 20h
                jnz     loc_1402CC3E9

loc_1402CC257:                          ; CODE XREF: KeDelayExecutionThread+3DF↓j
                mov     [rdi+20h], rcx
                mov     dl, 1
                mov     rcx, rdi
                call    sub_1402CDEF0
                xor     r8d, r8d
                movsx   r15d, al
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402CDA30
                test    al, al
                jnz     short loc_1402CC2EE
                mov     rcx, gs:20h
                cmp     r15b, [rdi+0C3h]
                jle     short loc_1402CC2DA
                cmp     [rdi+319h], bl
                ja      loc_140458A8E
                jmp     short loc_1402CC2DA
; ---------------------------------------------------------------------------

loc_1402CC29A:                          ; CODE XREF: KeDelayExecutionThread+20D↑j
                lock and [rsi+30h], rbx
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140458A61

loc_1402CC2B8:                          ; CODE XREF: KeDelayExecutionThread+18CA55↓j
                                        ; KeDelayExecutionThread+18CA64↓j ...
                mov     rcx, rdi
                call    sub_1403261B0
                mov     ebx, 40000024h
                jmp     loc_1402CC38B
; ---------------------------------------------------------------------------

loc_1402CC2CA:                          ; CODE XREF: KeDelayExecutionThread+18CA8F↓j
                lea     rdx, [rcx+8778h]
                test    rdx, rdx
                jnz     loc_1402CC489

loc_1402CC2DA:                          ; CODE XREF: KeDelayExecutionThread+27A↑j
                                        ; KeDelayExecutionThread+288↑j ...
                test    dword ptr [rdi+78h], 400000h
                mov     [rdi+0C3h], r15b
                jnz     loc_140458AA4

loc_1402CC2EE:                          ; CODE XREF: KeDelayExecutionThread+268↑j
                                        ; KeDelayExecutionThread+18CAA7↓j
                mov     rcx, rdi
                call    sub_1403261B0
                mov     [rsi+10h], rbx
                cli
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402CC660
                sti
                test    byte ptr [rbp+2], 4
                jnz     loc_1402CC466

loc_1402CC314:                          ; CODE XREF: KeDelayExecutionThread+46B↓j
                movzx   ecx, byte ptr [rbp+0C3h]

loc_1402CC31B:                          ; CODE XREF: KeDelayExecutionThread+465↓j
                mov     rax, [rsi+38h]
                mov     [rax], cl
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jnz     loc_140458ABC

loc_1402CC331:                          ; CODE XREF: KeDelayExecutionThread+18CAC7↓j
                mov     [rsi+8], rbp
                movzx   eax, byte ptr [rbp+184h]
                cmp     al, 1
                jnz     short loc_1402CC35D
                mov     edx, [rbp+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     edx, [rbp+1B4h]
                add     eax, edx
                mov     [rbp+84h], eax

loc_1402CC35D:                          ; CODE XREF: KeDelayExecutionThread+32E↑j
                mov     byte ptr [rbp+184h], 2
                mov     rdx, rdi
                mov     rcx, rsi
                mov     byte ptr [rdi+283h], 21h ; '!'
                mov     [rdi+186h], r14b
                call    sub_1402CE090
                mov     r8b, 1
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_1404058F0

loc_1402CC38B:                          ; CODE XREF: KeDelayExecutionThread+2B5↑j
                mov     rdx, 0FFFFFFFFFFFFFFFFh

loc_1402CC392:                          ; CODE XREF: KeDelayExecutionThread+3E9↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140458ADC

loc_1402CC3A0:                          ; CODE XREF: KeDelayExecutionThread+18CACE↓j
                                        ; KeDelayExecutionThread+18CADA↓j ...
                movzx   ecx, r14b
                mov     cr8, rcx
                jmp     loc_1402CC07D
; ---------------------------------------------------------------------------

loc_1402CC3AD:                          ; CODE XREF: KeDelayExecutionThread+EC↑j
                                        ; DATA XREF: .pdata:00000001400D1B80↑o ...
                mov     rcx, gs:20h
                mov     rdx, rbp
                movzx   r8d, [rsp+88h+arg_10]
                call    sub_1402D149C
                cmp     [r14], rbx
                jnz     loc_1402CC480
                xor     ecx, ecx
                call    ntoskrnl_6
                mov     r12, [rsp+88h+arg_0]
                mov     r13, [rsp+88h+var_38]
                jmp     loc_1402CC07F
; ---------------------------------------------------------------------------

loc_1402CC3E9:                          ; CODE XREF: KeDelayExecutionThread+241↑j
                                        ; DATA XREF: .pdata:00000001400D1B8C↑o ...
                lock btr dword ptr [rdi+78h], 5
                jmp     loc_1402CC257
; ---------------------------------------------------------------------------

loc_1402CC3F4:                          ; CODE XREF: KeDelayExecutionThread+18C↑j
                mov     ebx, 40000024h
                jmp     short loc_1402CC392
; ---------------------------------------------------------------------------

loc_1402CC3FB:                          ; CODE XREF: KeDelayExecutionThread+1EA↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_140458A1F
                nop     dword ptr [rax+rax+00h]

loc_1402CC410:                          ; CODE XREF: KeDelayExecutionThread+411↓j
                                        ; KeDelayExecutionThread+18CA13↓j ...
                lea     rcx, [rsp+88h+var_54]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_1402CC410
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_1402CC1F3
                jmp     loc_140458A46
; ---------------------------------------------------------------------------

loc_1402CC438:                          ; CODE XREF: KeDelayExecutionThread+127↑j
                                        ; DATA XREF: .pdata:00000001400D1B98↑o ...
                mov     [rsp+88h+arg_10], bl
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140458B3F

loc_1402CC45A:                          ; CODE XREF: KeDelayExecutionThread+18CB31↓j
                                        ; KeDelayExecutionThread+18CB3B↓j ...
                mov     [rbp+186h], r10b
                jmp     loc_1402CC0CE
; ---------------------------------------------------------------------------

loc_1402CC466:                          ; CODE XREF: KeDelayExecutionThread+2FE↑j
                                        ; DATA XREF: .pdata:00000001400D1BA4↑o ...
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1402D0980
                mov     cl, 1
                test    al, al
                jnz     loc_1402CC31B
                jmp     loc_1402CC314
; ---------------------------------------------------------------------------

loc_1402CC480:                          ; CODE XREF: KeDelayExecutionThread+3BA↑j
                                        ; DATA XREF: .pdata:00000001400D1BB0↑o ...
                mov     eax, [rsp+88h+var_50]
                jmp     loc_1402CC147
; ---------------------------------------------------------------------------

loc_1402CC489:                          ; CODE XREF: KeDelayExecutionThread+2C4↑j
                                        ; DATA XREF: .pdata:00000001400D1BBC↑o ...
                mov     rax, [rdx]
                mov     [r8], rax
                mov     [rdx], r8
                lock inc word ptr [rdi+364h]
                call    sub_14032A28C
                jmp     loc_1402CC2DA
; ---------------------------------------------------------------------------

loc_1402CC4A4:                          ; CODE XREF: KeDelayExecutionThread+1C0↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_1404589B6

loc_1402CC4B4:                          ; CODE XREF: KeDelayExecutionThread+4B5↓j
                                        ; KeDelayExecutionThread+18C9AA↓j ...
                lea     rcx, [rsp+88h+var_58]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_1402CC4B4
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_1402CC1C9
                jmp     loc_1404589DD
KeDelayExecutionThread endp

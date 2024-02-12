KeInsertQueueApc proc near              ; CODE XREF: sub_140210850+76↑p
                                        ; sub_14023D030+36E↑p ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046ADD0 SIZE 000000A0 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r12, r8
                mov     r13, rdx
                mov     rsi, rcx
                xor     edx, edx
                mov     rcx, cs:qword_140C19798
                mov     r8d, 3000h
                call    EtwProviderEnabled
                mov     r10b, [rsi+51h]
                mov     r11b, al
                mov     rax, [rsi+38h]
                test    r10b, r10b
                mov     [rsp+98h+var_50], rax
                mov     rax, [rsi+30h]
                setnz   [rsp+98h+arg_0]
                mov     [rsp+98h+var_48], rax
                lea     rax, sub_1408BE2C0
                cmp     [rsi+20h], rax
                jz      loc_14046ADD0

loc_140307FEB:                          ; CODE XREF: KeInsertQueueApc+162E53↓j
                xor     cl, cl

loc_140307FED:                          ; CODE XREF: KeInsertQueueApc+162E5B↓j
                mov     rdi, [rsi+8]
                mov     rdx, gs:188h
                mov     rax, [rdi+220h]
                test    r10b, r10b
                jnz     loc_1403080F1
                cmp     [rdx+0B8h], rax

loc_140308011:                          ; CODE XREF: KeInsertQueueApc+178↓j
                setnz   al
                test    r11b, r11b
                jz      short loc_140308021
                test    al, al
                jnz     loc_1403080FD

loc_140308021:                          ; CODE XREF: KeInsertQueueApc+97↑j
                                        ; KeInsertQueueApc+184↓j
                xor     r15b, r15b

loc_140308024:                          ; CODE XREF: KeInsertQueueApc+19A↓j
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046ADE0

loc_14030803F:                          ; CODE XREF: KeInsertQueueApc+162E62↓j
                                        ; KeInsertQueueApc+162E6C↓j ...
                mov     r14, gs:20h
                mov     rbx, gs:20h
                and     [rsp+98h+var_58], 0

loc_140308056:                          ; CODE XREF: KeInsertQueueApc+20E↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046AE22

loc_140308066:                          ; CODE XREF: KeInsertQueueApc+162EA6↓j
                                        ; KeInsertQueueApc+162EB5↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_14030816B
                test    dword ptr [rdi+74h], 4000h
                jz      loc_140308193
                cmp     byte ptr [rsi+52h], 0
                jnz     loc_140308193
                mov     rcx, rsi
                mov     byte ptr [rsi+52h], 1
                mov     [rsi+40h], r13
                mov     [rsi+48h], r12
                call    sub_140308A40
                mov     r8b, bpl
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1403088BC
                mov     bl, 1

loc_1403080AE:                          ; CODE XREF: KeInsertQueueApc+215↓j
                mov     rcx, rdi
                call    sub_1403261B0
                mov     r9d, [rsp+98h+arg_18]
                xor     edx, edx
                mov     rcx, r14
                mov     byte ptr [rsp+98h+var_78], bpl
                lea     r8d, [rdx+1]
                call    sub_14023E110
                test    r15b, r15b
                jnz     short loc_14030811F

loc_1403080D6:                          ; CODE XREF: KeInsertQueueApc+1E6↓j
                mov     al, bl
                mov     rbx, [rsp+98h+arg_8]
                add     rsp, 60h
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
; ---------------------------------------------------------------------------

loc_1403080F1:                          ; CODE XREF: KeInsertQueueApc+84↑j
                cmp     [rdx+220h], rax
                jmp     loc_140308011
; ---------------------------------------------------------------------------

loc_1403080FD:                          ; CODE XREF: KeInsertQueueApc+9B↑j
                test    r10b, r10b
                jnz     short loc_14030810A
                test    cl, cl
                jz      loc_140308021

loc_14030810A:                          ; CODE XREF: KeInsertQueueApc+180↑j
                mov     edx, 5149654Bh
                mov     rcx, rdi
                mov     r15b, 1
                call    ObfReferenceObjectWithTag
                jmp     loc_140308024
; ---------------------------------------------------------------------------

loc_14030811F:                          ; CODE XREF: KeInsertQueueApc+154↑j
                test    bl, bl
                jz      short loc_140308159
                mov     rcx, gs:188h
                mov     rdx, rdi
                mov     al, [rsp+98h+arg_0]
                mov     r9, [rsp+98h+var_50]
                mov     r8, [rsp+98h+var_48]
                mov     cl, [rcx+232h]
                mov     [rsp+98h+var_68], al
                mov     [rsp+98h+var_70], r12
                mov     [rsp+98h+var_78], r13
                call    sub_1403073CC

loc_140308159:                          ; CODE XREF: KeInsertQueueApc+1A1↑j
                mov     edx, 5149654Bh
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                jmp     loc_1403080D6
; ---------------------------------------------------------------------------

loc_14030816B:                          ; CODE XREF: KeInsertQueueApc+ED↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046AE49

loc_14030817B:                          ; CODE XREF: KeInsertQueueApc+20C↓j
                                        ; KeInsertQueueApc+162ECD↓j ...
                lea     rcx, [rsp+98h+var_58]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_14030817B
                jmp     loc_140308056
; ---------------------------------------------------------------------------

loc_140308193:                          ; CODE XREF: KeInsertQueueApc+FA↑j
                                        ; KeInsertQueueApc+104↑j
                xor     bl, bl
                jmp     loc_1403080AE
KeInsertQueueApc endp

RtlSelfRelativeToAbsoluteSD2 proc near  ; CODE XREF: sub_1407313B8+1028E4↑p
                                        ; sub_1407313B8+102937↑p
                                        ; DATA XREF: ...

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = dword ptr  40h
arg_8           = qword ptr  48h
arg_10          = dword ptr  50h
arg_18          = dword ptr  58h

                mov     [rsp-38h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xor     ebx, ebx
                mov     rsi, rdx
                mov     [rbp+var_28], rbx
                mov     rdi, rcx
                mov     [rbp+var_20], rbx
                mov     [rbp+var_18], rbx
                mov     [rbp+var_10], rbx
                mov     [rbp+arg_18], ebx
                mov     [rbp+var_30], ebx
                mov     [rbp+arg_0], ebx
                mov     [rbp+arg_10], ebx
                test    rcx, rcx
                jnz     short loc_1409137FD
                mov     eax, 0C00000EFh
                jmp     loc_140913941
; ---------------------------------------------------------------------------

loc_1409137FD:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+41↑j
                test    rsi, rsi
                jnz     short loc_14091380C
                mov     eax, 0C00000F0h
                jmp     loc_140913941
; ---------------------------------------------------------------------------

loc_14091380C:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+50↑j
                mov     eax, [rdx]
                mov     [rbp+var_2C], eax
                cmp     eax, 14h
                jnb     short loc_140913820
                mov     eax, 0C000000Dh
                jmp     loc_140913941
; ---------------------------------------------------------------------------

loc_140913820:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+64↑j
                movzx   r14d, word ptr [rcx+2]
                test    r14w, r14w
                js      short loc_140913835
                mov     eax, 0C00000E7h
                jmp     loc_140913941
; ---------------------------------------------------------------------------

loc_140913835:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+79↑j
                lea     rax, [rbp+var_30]
                mov     [rsp+80h+var_40], rax
                lea     r9, [rbp+var_20]
                lea     rax, [rbp+var_10]
                mov     [rsp+80h+var_48], rax
                lea     r8, [rbp+arg_0]
                lea     rax, [rbp+arg_18]
                mov     [rsp+80h+var_50], rax
                lea     rdx, [rbp+var_28]
                lea     rax, [rbp+var_18]
                mov     [rsp+80h+var_58], rax
                lea     rax, [rbp+arg_10]
                mov     [rsp+80h+var_60], rax
                call    sub_140766F94
                mov     rdx, [rbp+var_28]
                mov     r12, [rbp+var_20]
                cmp     rdx, r12
                jbe     short loc_140913888
                mov     eax, [rbp+arg_0]
                add     rax, rdx
                jmp     short loc_14091388E
; ---------------------------------------------------------------------------

loc_140913888:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+CE↑j
                mov     eax, [rbp+arg_10]
                add     rax, r12

loc_14091388E:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+D6↑j
                mov     r15, [rbp+var_18]
                cmp     rax, r15
                ja      short loc_14091389D
                mov     eax, [rbp+arg_18]
                add     rax, r15

loc_14091389D:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+E5↑j
                mov     r13, [rbp+var_10]
                cmp     rax, r13
                ja      short loc_1409138AC
                mov     eax, [rbp+var_30]
                add     rax, r13

loc_1409138AC:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+F4↑j
                mov     ecx, 28h ; '('
                test    rax, rax
                jz      short loc_1409138C3
                mov     ecx, eax
                sub     ecx, edi
                sub     ecx, 0Dh
                and     ecx, 0FFFFFFF8h
                add     ecx, 28h ; '('

loc_1409138C3:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+104↑j
                cmp     ecx, [rbp+var_2C]
                jbe     short loc_1409138D1
                mov     [rsi], ecx
                mov     eax, 0C0000023h
                jmp     short loc_140913941
; ---------------------------------------------------------------------------

loc_1409138D1:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+116↑j
                test    rax, rax
                jz      short loc_1409138F3
                mov     r8d, ecx
                lea     rdx, [rdi+14h]
                sub     r8, 28h ; '('
                lea     rcx, [rdi+28h]
                call    memmove
                mov     rdx, [rbp+var_28]
                movzx   r14d, word ptr [rdi+2]

loc_1409138F3:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+124↑j
                mov     eax, 7FFFh
                and     r14w, ax
                lea     rax, [rdx+14h]
                mov     [rdi+2], r14w
                test    rdx, rdx
                jnz     short loc_14091390D
                mov     rax, rbx

loc_14091390D:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+158↑j
                mov     [rdi+8], rax
                lea     rax, [r12+14h]
                test    r12, r12
                jnz     short loc_14091391E
                mov     rax, rbx

loc_14091391E:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+169↑j
                mov     [rdi+10h], rax
                lea     rax, [r13+14h]
                test    r13, r13
                jnz     short loc_14091392E
                mov     rax, rbx

loc_14091392E:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+179↑j
                mov     [rdi+18h], rax
                test    r15, r15
                jz      short loc_14091393B
                lea     rbx, [r15+14h]

loc_14091393B:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+185↑j
                mov     [rdi+20h], rbx
                xor     eax, eax

loc_140913941:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD2+48↑j
                                        ; RtlSelfRelativeToAbsoluteSD2+57↑j ...
                mov     rbx, [rsp+80h+arg_8]
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
                db 0CCh
RtlSelfRelativeToAbsoluteSD2 endp

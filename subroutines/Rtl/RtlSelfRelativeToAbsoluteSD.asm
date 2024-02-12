RtlSelfRelativeToAbsoluteSD proc near   ; DATA XREF: .rdata:00000001400933A4↑o
                                        ; .pdata:000000014010A2BC↑o

var_60          = qword ptr -60h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = dword ptr  30h
arg_8           = dword ptr  38h
arg_20          = qword ptr  50h
arg_28          = qword ptr  58h
arg_30          = qword ptr  60h
arg_38          = qword ptr  68h
arg_40          = qword ptr  70h
arg_48          = qword ptr  78h
arg_50          = qword ptr  80h

; FUNCTION CHUNK AT 00000001408454A8 SIZE 00000024 BYTES

                mov     r11, rsp
                mov     [r11+18h], rbx
                mov     [r11+20h], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xor     r12d, r12d
                mov     rsi, r9
                mov     rbx, r8
                mov     rdi, rdx
                mov     [rbp+arg_0], r12d
                mov     [rbp+arg_8], r12d
                mov     [rbp+var_30], r12d
                mov     [rbp+var_2C], r12d
                mov     [rbp+var_28], r12
                mov     [rbp+var_20], r12
                mov     [rbp+var_10], r12
                mov     [rbp+var_18], r12
                cmp     [rcx+2], r12w
                jge     loc_1408454A8
                lea     rax, [rbp+arg_8]
                mov     [r11-68h], rax
                lea     r9, [rbp+var_20]
                lea     rax, [rbp+var_18]
                mov     [r11-70h], rax
                lea     r8, [rbp+var_30]
                lea     rax, [rbp+arg_0]
                mov     [r11-78h], rax
                lea     rdx, [rbp+var_28]
                lea     rax, [rbp+var_10]
                mov     [r11-80h], rax
                lea     rax, [rbp+var_2C]
                mov     [rsp+80h+var_60], rax
                call    sub_140766F94
                mov     rax, [rbp+arg_50]
                mov     rdx, [rbp+arg_40]
                mov     r8, [rbp+arg_30]
                mov     r9, [rbp+arg_20]
                mov     r10d, [rbp+arg_0]
                mov     r11d, [rbp+arg_8]
                mov     r14d, [rbp+var_30]
                mov     r15d, [rbp+var_2C]
                test    rdi, rdi
                jz      loc_140766BE2
                cmp     dword ptr [rbx], 28h ; '('
                jb      loc_140766BE2
                cmp     r14d, [rdx]
                ja      loc_140766BE2
                cmp     r10d, [r9]
                ja      loc_140766BE2
                cmp     r11d, [r8]
                ja      loc_140766BE2
                cmp     r15d, [rax]
                ja      loc_140766BE2
                mov     rdx, rcx
                lea     r8d, [r12+14h]
                mov     rcx, rdi
                call    memmove
                mov     rdx, [rbp+var_28]
                mov     eax, 7FFFh
                and     [rdi+2], ax
                mov     [rdi+8], r12
                mov     [rdi+10h], r12
                mov     [rdi+18h], r12
                mov     [rdi+20h], r12
                test    rdx, rdx
                jz      short loc_140766B76
                movzx   r8d, byte ptr [rdx+1]
                mov     rbx, [rbp+arg_38]
                mov     rcx, rbx
                lea     r8, ds:8[r8*4]
                call    memmove
                mov     [rdi+8], rbx

loc_140766B76:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD+117↑j
                mov     rdx, [rbp+var_20]
                test    rdx, rdx
                jz      short loc_140766B9C
                movzx   r8d, byte ptr [rdx+1]
                mov     rbx, [rbp+arg_48]
                mov     rcx, rbx
                lea     r8, ds:8[r8*4]
                call    memmove
                mov     [rdi+10h], rbx

loc_140766B9C:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD+13D↑j
                mov     rdx, [rbp+var_18]
                test    rdx, rdx
                jnz     loc_1408454B2

loc_140766BA9:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD+DEA87↓j
                mov     rdx, [rbp+var_10]
                test    rdx, rdx
                jz      short loc_140766BC3
                movzx   r8d, word ptr [rdx+2]
                mov     rcx, rsi
                call    memmove
                mov     [rdi+20h], rsi

loc_140766BC3:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD+170↑j
                xor     eax, eax

loc_140766BC5:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD+1B9↓j
                                        ; RtlSelfRelativeToAbsoluteSD+DEA6D↓j
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140766BE2:                          ; CODE XREF: RtlSelfRelativeToAbsoluteSD+B4↑j
                                        ; RtlSelfRelativeToAbsoluteSD+BD↑j ...
                mov     dword ptr [rbx], 28h ; '('
                mov     [rax], r15d
                mov     eax, 0C0000023h
                mov     [rdx], r14d
                mov     [r8], r11d
                mov     [r9], r10d
                jmp     short loc_140766BC5
RtlSelfRelativeToAbsoluteSD endp

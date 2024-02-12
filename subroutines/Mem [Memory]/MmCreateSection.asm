MmCreateSection proc near               ; CODE XREF: sub_1406C0234+15A↑p
                                        ; sub_1407C8B4C+201↓p ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 000000014081C95A SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 60h
                mov     edx, [rsp+68h+arg_28]
                xor     r10d, r10d
                mov     eax, edx
                xor     r11d, r11d
                xorps   xmm0, xmm0
                mov     rbx, r9
                mov     rdi, r8
                movups  [rsp+68h+var_18], xmm0
                and     eax, 7Fh
                jnz     loc_14081C95A

loc_1406C06B0:                          ; CODE XREF: MmCreateSection+15C2FC↓j
                mov     rax, [rsp+68h+arg_38]
                mov     r9d, [rsp+68h+arg_20]
                mov     r8, [rbx]
                mov     [rsp+68h+var_20], r10d
                mov     [rsp+68h+var_28], r11
                and     [rsp+68h+var_30], 0
                mov     [rsp+68h+var_38], rax
                mov     rax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_40], rax
                mov     [rsp+68h+var_48], edx
                mov     rdx, rdi
                call    sub_1406C0704
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmCreateSection endp

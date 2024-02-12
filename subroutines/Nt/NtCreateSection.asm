NtCreateSection proc near               ; CODE XREF: sub_1405DC720+1C3↑p
                                        ; sub_1405DCFE8+24B↑p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = xmmword ptr -18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407FE14C SIZE 00000028 BYTES

                push    rbx
                sub     rsp, 60h
                mov     r10d, [rsp+68h+arg_28]
                xor     r11d, r11d
                mov     eax, r10d
                xorps   xmm0, xmm0
                mov     ebx, r11d
                movups  [rsp+68h+var_18], xmm0
                and     eax, 7Fh
                jnz     loc_1407FE14C

loc_14061B9F8:                          ; CODE XREF: NtCreateSection+1E279F↓j
                mov     rax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_20], 1
                mov     [rsp+68h+var_28], r11d
                mov     [rsp+68h+var_30], rbx
                mov     [rsp+68h+var_38], rax
                mov     eax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], r10d
                mov     [rsp+68h+var_48], eax
                call    sub_14061BAA0
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtCreateSection endp

KeFlushIoBuffers proc near              ; CODE XREF: sub_1404B792C+1E↓p
                                        ; sub_1404C47C0+35↓p ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B1F2 SIZE 000000D8 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                mov     eax, cs:dword_140C112A8
                xorps   xmm0, xmm0
                mov     bpl, r8b
                mov     r14b, dl
                mov     rdi, rcx
                movups  [rsp+88h+var_58], xmm0
                movups  [rsp+88h+var_48], xmm0
                test    eax, eax
                jz      loc_14047B1F2

loc_14033B719:                          ; CODE XREF: KeFlushIoBuffers+13FB32↓j
                                        ; KeFlushIoBuffers+13FBD7↓j ...
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033B6D0
KeFlushIoBuffers endp

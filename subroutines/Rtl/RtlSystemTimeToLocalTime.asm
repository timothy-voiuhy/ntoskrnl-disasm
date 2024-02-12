RtlSystemTimeToLocalTime proc near      ; DATA XREF: .pdata:000000014010EAC8↑o

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                xorps   xmm0, xmm0
                xor     r9d, r9d
                mov     rdi, rdx
                mov     rbx, rcx
                lea     rdx, [rsp+68h+var_48]
                movups  [rsp+68h+var_48], xmm0
                lea     r8d, [r9+30h]
                lea     ecx, [r9+3]
                movups  [rsp+68h+var_38], xmm0
                movups  [rsp+68h+var_28], xmm0
                call    ZwQuerySystemInformation
                test    eax, eax
                js      short loc_1407CC477
                mov     rax, [rbx]
                sub     rax, qword ptr [rsp+68h+var_38]
                mov     [rdi], rax
                xor     eax, eax

loc_1407CC477:                          ; CODE XREF: RtlSystemTimeToLocalTime+48↑j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407CC420
RtlSystemTimeToLocalTime endp

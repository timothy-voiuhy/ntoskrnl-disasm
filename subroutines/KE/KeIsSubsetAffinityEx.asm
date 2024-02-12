KeIsSubsetAffinityEx proc near          ; CODE XREF: sub_140254310+965↑p
                                        ; sub_14032FBD0+1476DB↑p ...

var_C8          = byte ptr -0C8h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+0E8h+var_C8]
                mov     r8d, 0A8h
                call    memset
                lea     r8, [rsp+0E8h+var_C8]
                mov     rdx, rbx
                mov     rcx, rdi
                call    KeAndAffinityEx
                lea     rdx, [rsp+0E8h+var_C8]
                mov     rcx, rdi
                call    KeIsEqualAffinityEx
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E8h+arg_0]
                add     rsp, 0E0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405137A0
KeIsSubsetAffinityEx endp

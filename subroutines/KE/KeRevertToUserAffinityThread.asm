KeRevertToUserAffinityThread proc near  ; DATA XREF: .pdata:00000001400F3348↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 48h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                lea     rcx, [rsp+48h+var_28]
                movups  [rsp+48h+var_28], xmm0
                call    KeRevertToUserGroupAffinityThread
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405133A0
KeRevertToUserAffinityThread endp

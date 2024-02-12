VslDeleteSecureSection proc near        ; DATA XREF: .pdata:000000014011C67C↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 40h ; '@'
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140890D20
VslDeleteSecureSection endp

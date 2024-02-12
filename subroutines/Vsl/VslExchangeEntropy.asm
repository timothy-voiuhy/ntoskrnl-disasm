VslExchangeEntropy proc near            ; DATA XREF: .pdata:00000001400DCEF0↑o

var_88          = byte ptr -88h
var_78          = byte ptr -78h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                mov     rdi, rcx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     r8d, 40h ; '@'
                lea     rcx, [rsp+0A8h+var_78]
                mov     rdx, rdi
                call    memmove
                mov     edx, 22h ; '"'
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     ebx, eax
                test    eax, eax
                js      short loc_14039ABA2
                mov     r8d, 40h ; '@'
                lea     rdx, [rsp+0A8h+var_78]
                mov     rcx, rdi
                call    memmove

loc_14039ABA2:                          ; CODE XREF: VslExchangeEntropy+5D↑j
                mov     eax, ebx
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_8]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14039AB30
VslExchangeEntropy endp

VslQuerySecureDevice proc near          ; DATA XREF: .rdata:00000001400AAC8C↑o
                                        ; .pdata:000000014010E714↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = byte ptr -74h
var_73          = byte ptr -73h
var_70          = qword ptr -70h
var_18          = qword ptr -18h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014086017C SIZE 0000001B BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                xorps   xmm0, xmm0
                lea     r9, [rsp+0A8h+var_88]
                movups  xmmword ptr [rdi], xmm0
                mov     edx, 41h ; 'A'
                mov     eax, [rbx+8]
                movsd   xmm0, qword ptr [rbx]
                xor     r8d, r8d
                mov     cl, 2
                movsd   [rsp+0A8h+var_80], xmm0
                mov     [rsp+0A8h+var_78], eax
                call    sub_14034DB1C
                test    eax, eax
                jns     loc_14086017C

loc_1407C7BC8:                          ; CODE XREF: VslQuerySecureDevice+98632↓j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_10]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407C7B60
VslQuerySecureDevice endp

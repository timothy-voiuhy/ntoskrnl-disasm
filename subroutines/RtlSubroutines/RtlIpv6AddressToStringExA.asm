RtlIpv6AddressToStringExA proc near     ; DATA XREF: .pdata:00000001400F7E84↑o

var_98          = byte ptr -98h
var_97          = byte ptr -97h
var_57          = byte ptr -57h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_48], rax
                mov     rdi, [rsp+0B8h+arg_20]
                xor     r12d, r12d
                mov     r14, r9
                movzx   esi, r8w
                mov     r15d, edx
                test    rcx, rcx
                jz      loc_14058C3C5
                test    rdi, rdi
                jz      loc_14058C3C5
                test    r9, r9
                jnz     short loc_14058C326
                cmp     [rdi], r12d
                jnz     loc_14058C3C5

loc_14058C326:                          ; CODE XREF: RtlIpv6AddressToStringExA+4B↑j
                movzx   eax, [rsp+0B8h+var_98]
                lea     rbp, [rsp+0B8h+var_57]
                test    si, si
                mov     edx, 5Bh ; '['
                cmovnz  eax, edx
                lea     rdx, [rsp+0B8h+var_98]
                mov     [rsp+0B8h+var_98], al
                lea     rax, [rsp+0B8h+var_97]
                cmovnz  rdx, rax
                call    RtlIpv6AddressToStringA
                mov     rbx, rax
                test    r15d, r15d
                jz      short loc_14058C378
                mov     rdx, rbp
                lea     r8, aU_6        ; "%%%u"
                sub     rdx, rax
                mov     r9d, r15d
                mov     rcx, rax
                call    sprintf_s
                movsxd  rcx, eax
                add     rbx, rcx

loc_14058C378:                          ; CODE XREF: RtlIpv6AddressToStringExA+88↑j
                test    si, si
                jz      short loc_14058C3A0
                ror     si, 8
                lea     r8, aU_2        ; "]:%u"
                sub     rbp, rbx
                movzx   r9d, si
                mov     rdx, rbp
                mov     rcx, rbx
                call    sprintf_s
                movsxd  rcx, eax
                add     rbx, rcx

loc_14058C3A0:                          ; CODE XREF: RtlIpv6AddressToStringExA+AB↑j
                lea     rax, [rsp+0B8h+var_98]
                sub     ebx, eax
                mov     eax, [rdi]
                inc     ebx
                mov     [rdi], ebx
                cmp     eax, ebx
                jb      short loc_14058C3C5
                mov     r8d, ebx
                lea     rdx, [rsp+0B8h+var_98]
                mov     rcx, r14
                call    memmove
                xor     eax, eax
                jmp     short loc_14058C3CA
; ---------------------------------------------------------------------------

loc_14058C3C5:                          ; CODE XREF: RtlIpv6AddressToStringExA+39↑j
                                        ; RtlIpv6AddressToStringExA+42↑j ...
                mov     eax, 0C000000Dh

loc_14058C3CA:                          ; CODE XREF: RtlIpv6AddressToStringExA+F3↑j
                mov     rcx, [rsp+0B8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14058C2D0
RtlIpv6AddressToStringExA endp

RtlIpv4AddressToStringExW proc near     ; DATA XREF: .rdata:0000000140095868↑o
                                        ; .pdata:00000001400DB654↑o

var_68          = byte ptr -68h
var_3C          = byte ptr -3Ch
var_38          = qword ptr -38h

; FUNCTION CHUNK AT 0000000140497124 SIZE 0000003C BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                xor     r14d, r14d
                mov     rdi, r9
                mov     rbp, r8
                movzx   esi, dx
                test    rcx, rcx
                jz      short loc_140381A92
                test    r9, r9
                jz      short loc_140381A92
                test    r8, r8
                jz      loc_140497124

loc_140381A39:                          ; CODE XREF: RtlIpv4AddressToStringExW+11572D↓j
                lea     rdx, [rsp+88h+var_68]
                call    RtlIpv4AddressToStringW
                mov     rbx, rax
                test    si, si
                jnz     loc_140497132

loc_140381A4F:                          ; CODE XREF: RtlIpv4AddressToStringExW+11575B↓j
                lea     rax, [rsp+88h+var_68]
                sub     rbx, rax
                sar     rbx, 1
                inc     ebx
                cmp     [rdi], ebx
                jb      short loc_140381A90
                mov     r8d, ebx
                lea     rdx, [rsp+88h+var_68]
                add     r8, r8
                mov     rcx, rbp
                call    memmove
                xor     eax, eax
                mov     [rdi], ebx

loc_140381A77:                          ; CODE XREF: RtlIpv4AddressToStringExW+97↓j
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140381A90:                          ; CODE XREF: RtlIpv4AddressToStringExW+5E↑j
                mov     [rdi], ebx

loc_140381A92:                          ; CODE XREF: RtlIpv4AddressToStringExW+29↑j
                                        ; RtlIpv4AddressToStringExW+2E↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_140381A77
; } // starts at 140381A00
RtlIpv4AddressToStringExW endp

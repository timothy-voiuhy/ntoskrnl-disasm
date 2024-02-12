RtlIpv6AddressToStringExW proc near     ; DATA XREF: .rdata:00000001400944D8↑o
                                        ; .pdata:00000001400DB2AC↑o

var_D8          = word ptr -0D8h
var_D6          = byte ptr -0D6h
var_56          = byte ptr -56h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140495A68 SIZE 0000007A BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 0C8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_48], rax
                mov     rsi, [rsp+0F8h+arg_20]
                xor     r15d, r15d
                mov     rbp, r9
                movzx   edi, r8w
                mov     r14d, edx
                test    rcx, rcx
                jz      loc_14037E5F1
                test    rsi, rsi
                jz      loc_14037E5F1
                test    r9, r9
                jz      loc_140495A68

loc_14037E572:                          ; CODE XREF: RtlIpv6AddressToStringExW+117551↓j
                test    di, di
                jnz     loc_140495A76

loc_14037E57B:                          ; CODE XREF: RtlIpv6AddressToStringExW+117560↓j
                lea     rax, [rsp+0F8h+var_D6]
                test    di, di
                lea     rdx, [rsp+0F8h+var_D8]
                cmovnz  rdx, rax
                call    RtlIpv6AddressToStringW
                mov     rbx, rax
                test    r14d, r14d
                jnz     loc_140495A85

loc_14037E59D:                          ; CODE XREF: RtlIpv6AddressToStringExW+11758C↓j
                test    di, di
                jnz     loc_140495AB1

loc_14037E5A6:                          ; CODE XREF: RtlIpv6AddressToStringExW+1175BD↓j
                lea     rax, [rsp+0F8h+var_D8]
                sub     rbx, rax
                mov     eax, [rsi]
                sar     rbx, 1
                inc     ebx
                mov     [rsi], ebx
                cmp     eax, ebx
                jb      short loc_14037E5F1
                mov     r8d, ebx
                lea     rdx, [rsp+0F8h+var_D8]
                add     r8, r8
                mov     rcx, rbp
                call    memmove
                xor     eax, eax

loc_14037E5D0:                          ; CODE XREF: RtlIpv6AddressToStringExW+D6↓j
                mov     rcx, [rsp+0F8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0C8h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037E5F1:                          ; CODE XREF: RtlIpv6AddressToStringExW+3A↑j
                                        ; RtlIpv6AddressToStringExW+43↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_14037E5D0
; } // starts at 14037E520
RtlIpv6AddressToStringExW endp

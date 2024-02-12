RtlIpv4AddressToStringExA proc near     ; DATA XREF: .pdata:00000001400F7E78↑o

var_48          = byte ptr -48h
var_32          = byte ptr -32h
var_30          = qword ptr -30h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_30], rax
                xor     r14d, r14d
                mov     rdi, r9
                mov     rbp, r8
                movzx   esi, dx
                test    rcx, rcx
                jz      short loc_14058C290
                test    r9, r9
                jz      short loc_14058C290
                test    r8, r8
                jnz     short loc_14058C24A
                cmp     [r9], r14d
                jnz     short loc_14058C290

loc_14058C24A:                          ; CODE XREF: RtlIpv4AddressToStringExA+33↑j
                lea     rdx, [rsp+68h+var_48]
                call    RtlIpv4AddressToStringA
                mov     rbx, rax
                test    si, si
                jz      short loc_14058C281
                ror     si, 8
                lea     rdx, [rsp+68h+var_32]
                movzx   r9d, si
                lea     r8, qword_140415860
                sub     rdx, rax
                mov     rcx, rax
                call    sprintf_s
                movsxd  rcx, eax
                add     rbx, rcx

loc_14058C281:                          ; CODE XREF: RtlIpv4AddressToStringExA+4A↑j
                lea     rax, [rsp+68h+var_48]
                sub     ebx, eax
                inc     ebx
                cmp     [rdi], ebx
                jnb     short loc_14058C2AE
                mov     [rdi], ebx

loc_14058C290:                          ; CODE XREF: RtlIpv4AddressToStringExA+29↑j
                                        ; RtlIpv4AddressToStringExA+2E↑j ...
                mov     eax, 0C000000Dh

loc_14058C295:                          ; CODE XREF: RtlIpv4AddressToStringExA+B2↓j
                mov     rcx, [rsp+68h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14058C2AE:                          ; CODE XREF: RtlIpv4AddressToStringExA+7C↑j
                mov     r8d, ebx
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, rbp
                call    memmove
                xor     eax, eax
                mov     [rdi], ebx
                jmp     short loc_14058C295
; } // starts at 14058C210
RtlIpv4AddressToStringExA endp

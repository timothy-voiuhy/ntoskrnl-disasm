RtlUnicodeStringToInt64 proc near       ; CODE XREF: sub_140928AB0+48↓p
                                        ; DATA XREF: .pdata:00000001401220A0↑o

var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = word ptr -0D8h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_48], rax
                xor     r12d, r12d
                mov     r15, r8
                movzx   r8d, word ptr [rcx]
                mov     r14d, edx
                mov     rdx, [rcx+8]
                mov     rbp, rcx
                movzx   ecx, word ptr [rcx+2]
                mov     rsi, r9
                mov     [rsp+118h+var_E0], r12
                mov     rbx, rdx
                lea     rax, [r8+2]
                cmp     rcx, rax
                jb      short loc_1409167BD
                mov     eax, ecx
                shr     rax, 1
                cmp     [rdx+rax*2-2], r12w
                jz      short loc_1409167F1

loc_1409167BD:                          ; CODE XREF: RtlUnicodeStringToInt64+4E↑j
                mov     eax, r8d
                lea     rbx, [rsp+118h+var_D8]
                shr     eax, 1
                mov     ecx, 40h ; '@'
                cmp     eax, ecx
                cmovnb  eax, ecx
                lea     rcx, [rsp+118h+var_D8]
                lea     rdi, [rax+rax]
                mov     r8, rdi
                call    memmove
                cmp     rdi, 82h
                jnb     short loc_140916865
                mov     [rsp+rdi+118h+var_D8], r12w

loc_1409167F1:                          ; CODE XREF: RtlUnicodeStringToInt64+5B↑j
                lea     rax, [rsp+118h+var_E8]
                mov     [rsp+118h+var_E8], r12d
                mov     [rsp+118h+var_F0], rax
                lea     r8, [rsp+118h+var_E0]
                mov     r9d, r14d
                mov     [rsp+118h+var_F8], r12d
                mov     rdx, rbx
                xor     ecx, ecx
                call    sub_1403D430C
                mov     [r15], rax
                test    rsi, rsi
                jz      short loc_140916835
                mov     rax, [rbp+8]
                mov     rcx, [rsp+118h+var_E0]
                sub     rcx, rbx
                sar     rcx, 1
                lea     rcx, [rax+rcx*2]
                mov     [rsi], rcx

loc_140916835:                          ; CODE XREF: RtlUnicodeStringToInt64+BD↑j
                mov     eax, [rsp+118h+var_E8]
                neg     eax
                sbb     eax, eax
                and     eax, 0C0000095h
                mov     rcx, [rsp+118h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E0h
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
; ---------------------------------------------------------------------------

loc_140916865:                          ; CODE XREF: RtlUnicodeStringToInt64+89↑j
                call    sub_1404B63DC
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140916760
RtlUnicodeStringToInt64 endp

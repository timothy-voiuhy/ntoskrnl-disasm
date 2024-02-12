RtlQueryPackageClaims proc near         ; CODE XREF: CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+E7↑p
                                        ; CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+333↑p ...

var_3C0         = qword ptr -3C0h
var_3B8         = qword ptr -3B8h
var_3B0         = qword ptr -3B0h
var_3A0         = qword ptr -3A0h
var_398         = qword ptr -398h
var_390         = qword ptr -390h
var_388         = byte ptr -388h
var_380         = byte ptr -380h
var_378         = qword ptr -378h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 000000014041FF42 SIZE 00000036 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-2A8h]
                sub     rsp, 3A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+2E0h+var_50], rax
                mov     rax, [rbp+2E0h+arg_20]
                mov     r14, r8
                mov     r15, [rbp+2E0h+arg_28]
                mov     r13, rdx
                mov     rdi, [rbp+2E0h+arg_30]
                mov     rsi, rcx
                mov     rbx, [rbp+2E0h+arg_38]
                lea     rcx, [rsp+3E0h+var_380]
                and     [rsp+3E0h+var_398], 0
                xor     edx, edx
                mov     r8d, 330h
                mov     [rsp+3E0h+var_390], rax
                mov     r12, r9
                call    memset
                and     [rsp+3E0h+var_3A0], 0
                lea     r8, [rsp+3E0h+var_380]
                mov     r9, rdi
                mov     [rsp+3E0h+var_3C0], rbx
                mov     rcx, rsi
                call    sub_1402048F8
                mov     ebx, eax
                test    eax, eax
                jns     short loc_140204827

loc_140204803:                          ; CODE XREF: RtlQueryPackageClaims+105↓j
                                        ; RtlQueryPackageClaims+152↓j ...
                mov     rcx, [rbp+2E0h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 3A8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140204827:                          ; CODE XREF: RtlQueryPackageClaims+91↑j
                lea     rsi, aWz        ; "%wZ"
                mov     edi, 800h
                test    r13, r13
                jz      loc_1402048E7
                test    r14, r14
                jz      loc_14041FF42
                mov     rax, [rsp+3E0h+var_378]
                lea     r9, [rsp+3E0h+var_388]
                mov     rdx, [r14]
                lea     r8, [rsp+3E0h+var_3A0]
                mov     rcx, [rax+20h]
                mov     [rsp+3E0h+var_3B0], rcx
                mov     rcx, r13
                mov     [rsp+3E0h+var_3B8], rsi
                mov     dword ptr [rsp+3E0h+var_3C0], edi
                call    sub_140206584
                mov     ebx, eax
                test    eax, eax
                js      short loc_140204803
                mov     rax, [rsp+3E0h+var_3A0]
                sub     rax, r13
                add     rax, 2
                mov     [r14], rax

loc_140204886:                          ; CODE XREF: RtlQueryPackageClaims+17A↓j
                test    r12, r12
                jz      short loc_1402048D7
                mov     rax, [rsp+3E0h+var_378]
                lea     r8, [rsp+3E0h+var_398]
                xor     r9d, r9d
                mov     rcx, [rax+20h]
                add     rcx, 10h
                mov     [rsp+3E0h+var_3B0], rcx
                mov     rcx, r12
                mov     [rsp+3E0h+var_3B8], rsi
                mov     dword ptr [rsp+3E0h+var_3C0], edi
                mov     rdi, [rsp+3E0h+var_390]
                mov     rdx, [rdi]
                call    sub_140206584
                mov     ebx, eax
                test    eax, eax
                js      loc_140204803
                mov     rax, [rsp+3E0h+var_398]
                sub     rax, r12
                add     rax, 2
                mov     [rdi], rax

loc_1402048D7:                          ; CODE XREF: RtlQueryPackageClaims+119↑j
                test    r15, r15
                jnz     loc_14041FF4C

loc_1402048E0:                          ; CODE XREF: RtlQueryPackageClaims+21B7EC↓j
                                        ; RtlQueryPackageClaims+21B803↓j
                mov     eax, ebx
                jmp     loc_140204803
; ---------------------------------------------------------------------------

loc_1402048E7:                          ; CODE XREF: RtlQueryPackageClaims+C6↑j
                test    r14, r14
                jz      short loc_140204886
                jmp     loc_14041FF42
; } // starts at 140204770
RtlQueryPackageClaims endp

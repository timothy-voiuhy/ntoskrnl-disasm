RtlIpv4StringToAddressW proc near       ; CODE XREF: RtlIpv4StringToAddressExW+3C↑p
                                        ; DATA XREF: .rdata:0000000140086648↑o ...

var_30          = byte ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_8           = qword ptr  48h

; FUNCTION CHUNK AT 0000000140487C6A SIZE 000001E3 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     r14, r8
                mov     [rbp+var_28], r9
                xor     r8d, r8d
                mov     [rbp+var_30], dl
                mov     rdi, rcx
                lea     rbx, [rbp+var_20]
                lea     r9d, [r8+2]

loc_140358BED:                          ; CODE XREF: RtlIpv4StringToAddressW+F1↓j
                mov     eax, 80h
                cmp     word ptr [rdi], 30h ; '0'
                lea     r15d, [rax-76h]
                mov     r13b, r8b
                mov     r12d, r8d
                jz      loc_140487C6A

loc_140358C06:                          ; CODE XREF: RtlIpv4StringToAddressW+12F109↓j
                test    dl, dl
                jz      short loc_140358C10
                cmp     r15d, 0Ah
                jnz     short loc_140358C5C

loc_140358C10:                          ; CODE XREF: RtlIpv4StringToAddressW+58↑j
                movzx   esi, word ptr [rdi]
                test    si, si
                jz      short loc_140358C47

loc_140358C18:                          ; CODE XREF: RtlIpv4StringToAddressW+12F194↓j
                cmp     si, ax
                jnb     short loc_140358C3A
                mov     edx, 4
                movzx   ecx, si
                call    sub_1403D45AC
                xor     r8d, r8d
                test    eax, eax
                jnz     loc_140487CBE

loc_140358C35:                          ; CODE XREF: RtlIpv4StringToAddressW+12F117↓j
                mov     eax, 80h

loc_140358C3A:                          ; CODE XREF: RtlIpv4StringToAddressW+6B↑j
                cmp     r15d, 10h
                jz      loc_140487CDB

loc_140358C44:                          ; CODE XREF: RtlIpv4StringToAddressW+12F12E↓j
                                        ; RtlIpv4StringToAddressW+12F143↓j
                mov     dl, [rbp+var_30]

loc_140358C47:                          ; CODE XREF: RtlIpv4StringToAddressW+66↑j
                mov     r9d, 2

loc_140358C4D:                          ; CODE XREF: RtlIpv4StringToAddressW+12F19D↓j
                cmp     word ptr [rdi], 2Eh ; '.'
                jz      short loc_140358C89
                test    r13b, r13b
                jnz     loc_140487D52

loc_140358C5C:                          ; CODE XREF: RtlIpv4StringToAddressW+5E↑j
                                        ; RtlIpv4StringToAddressW+E0↓j ...
                mov     eax, 0C000000Dh
                mov     [r14], rdi

loc_140358C64:                          ; CODE XREF: RtlIpv4StringToAddressW+12F298↓j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140358C89:                          ; CODE XREF: RtlIpv4StringToAddressW+A1↑j
                lea     rax, [rbp+var_14]
                cmp     rbx, rax
                jnb     short loc_140358C5C
                mov     [rbx], r12d
                add     rdi, r9
                add     rbx, 4
                test    r13b, r13b
                jz      short loc_140358C5C
                jmp     loc_140358BED
; } // starts at 140358BB0
RtlIpv4StringToAddressW endp

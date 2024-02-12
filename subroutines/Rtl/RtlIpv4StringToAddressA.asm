RtlIpv4StringToAddressA proc near       ; CODE XREF: RtlIpv4StringToAddressExA+48↓p
                                        ; DATA XREF: .rdata:0000000140099FD8↑o ...

var_30          = byte ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_8           = qword ptr  48h

; FUNCTION CHUNK AT 000000014049DC6C SIZE 000000F7 BYTES

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
                mov     [rbp+var_28], r9
                lea     rbx, [rbp+var_20]
                mov     r14, r8
                mov     [rbp+var_30], dl
                mov     sil, dl
                mov     rdi, rcx

loc_140390F19:                          ; CODE XREF: RtlIpv4StringToAddressA+C9↓j
                xor     r13d, r13d
                xor     r12b, r12b
                cmp     byte ptr [rdi], 30h ; '0'
                lea     r15d, [r13+0Ah]
                jz      loc_14049DC6C

loc_140390F2C:                          ; CODE XREF: RtlIpv4StringToAddressA+10CDAD↓j
                                        ; RtlIpv4StringToAddressA+10CDBD↓j ...
                test    sil, sil
                jz      short loc_140390F37
                cmp     r15d, 0Ah
                jnz     short loc_140390FAF

loc_140390F37:                          ; CODE XREF: RtlIpv4StringToAddressA+4F↑j
                mov     al, [rdi]
                test    al, al
                jz      short loc_140390F8E

loc_140390F3D:                          ; CODE XREF: RtlIpv4StringToAddressA+9C↓j
                movsx   esi, al
                mov     ecx, esi
                call    __isascii
                test    eax, eax
                jz      short loc_140390F80
                mov     ecx, esi
                call    isdigit
                test    eax, eax
                jz      short loc_140390F80
                lea     eax, [rsi-30h]
                cmp     eax, r15d
                jge     short loc_140390F80
                mov     eax, r15d
                lea     ecx, [rsi-30h]
                imul    eax, r13d

loc_140390F68:                          ; CODE XREF: RtlIpv4StringToAddressA+10CE19↓j
                add     ecx, eax
                cmp     ecx, r13d
                jb      short loc_140390FAF
                inc     rdi
                mov     r12b, 1
                mov     r13d, ecx
                mov     al, [rdi]
                test    al, al
                jnz     short loc_140390F3D
                jmp     short loc_140390F8A
; ---------------------------------------------------------------------------

loc_140390F80:                          ; CODE XREF: RtlIpv4StringToAddressA+69↑j
                                        ; RtlIpv4StringToAddressA+74↑j ...
                cmp     r15d, 10h
                jz      loc_14049DCB0

loc_140390F8A:                          ; CODE XREF: RtlIpv4StringToAddressA+9E↑j
                                        ; RtlIpv4StringToAddressA+10CDD9↓j ...
                mov     sil, [rbp+var_30]

loc_140390F8E:                          ; CODE XREF: RtlIpv4StringToAddressA+5B↑j
                cmp     byte ptr [rdi], 2Eh ; '.'
                jnz     short loc_140390FBC
                lea     rax, [rbp+var_14]
                cmp     rbx, rax
                jnb     short loc_140390FAF
                mov     [rbx], r13d
                inc     rdi
                add     rbx, 4
                test    r12b, r12b
                jnz     loc_140390F19

loc_140390FAF:                          ; CODE XREF: RtlIpv4StringToAddressA+55↑j
                                        ; RtlIpv4StringToAddressA+8D↑j ...
                mov     eax, 0C000000Dh
                mov     [r14], rdi
                jmp     loc_14039103C
; ---------------------------------------------------------------------------

loc_140390FBC:                          ; CODE XREF: RtlIpv4StringToAddressA+B1↑j
                test    r12b, r12b
                jz      short loc_140390FAF
                mov     [rbx], r13d
                lea     rax, [rbp+var_20]
                sub     rbx, rax
                add     rbx, 4
                sar     rbx, 2
                test    sil, sil
                jz      short loc_140390FDD
                cmp     ebx, 4
                jnz     short loc_140390FAF

loc_140390FDD:                          ; CODE XREF: RtlIpv4StringToAddressA+F6↑j
                sub     ebx, 1
                jz      short loc_140391061
                sub     ebx, 1
                jz      loc_14049DD39
                sub     ebx, 1
                jz      loc_14049DCFE
                cmp     ebx, 1
                jnz     short loc_140390FAF
                mov     edx, [rbp+var_20]
                mov     eax, 0FFh
                cmp     edx, eax
                ja      short loc_140390FAF
                cmp     [rbp+var_1C], eax
                ja      short loc_140390FAF
                cmp     [rbp+var_18], eax
                ja      short loc_140390FAF
                cmp     [rbp+var_14], eax
                ja      short loc_140390FAF
                movzx   eax, byte ptr [rbp+var_18]
                movzx   ecx, byte ptr [rbp+var_1C]
                shl     edx, 8
                or      ecx, edx
                shl     ecx, 8
                or      ecx, eax
                movzx   eax, byte ptr [rbp+var_14]
                shl     ecx, 8

loc_14039102D:                          ; CODE XREF: RtlIpv4StringToAddressA+10CE54↓j
                                        ; RtlIpv4StringToAddressA+10CE7E↓j
                or      ecx, eax

loc_14039102F:                          ; CODE XREF: RtlIpv4StringToAddressA+184↓j
                mov     rax, [rbp+var_28]
                bswap   ecx
                mov     [r14], rdi
                mov     [rax], ecx
                xor     eax, eax

loc_14039103C:                          ; CODE XREF: RtlIpv4StringToAddressA+D7↑j
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

loc_140391061:                          ; CODE XREF: RtlIpv4StringToAddressA+100↑j
                mov     ecx, [rbp+var_20]
                jmp     short loc_14039102F
; } // starts at 140390EE0
RtlIpv4StringToAddressA endp

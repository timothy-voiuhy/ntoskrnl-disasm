SeConvertSecurityDescriptorToStringSecurityDescriptor proc near
                                        ; CODE XREF: sub_1405C2D54+570↓p
                                        ; sub_1406D45F0+E7↓p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014046D706 SIZE 00000057 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                xor     esi, esi
                mov     rdi, r9
                mov     ebx, esi
                test    rcx, rcx
                jz      loc_14046D706
                test    r8d, r8d
                jz      loc_14046D706

loc_140311188:                          ; CODE XREF: SeConvertSecurityDescriptorToStringSecurityDescriptor+15C5A9↓j
                test    rcx, rcx
                jz      short loc_1403111D5
                test    rdi, rdi
                jz      short loc_1403111D5
                test    r8d, r8d
                jz      short loc_1403111D5
                cmp     edx, 1
                jnz     loc_14046D74B
                mov     rax, [rsp+48h+arg_20]
                mov     r9, rcx
                mov     [rsp+48h+var_18], rax
                mov     [rsp+48h+var_20], rdi
                mov     [rsp+48h+var_28], r8d
                call    sub_1406D479C

loc_1403111BC:                          ; CODE XREF: SeConvertSecurityDescriptorToStringSecurityDescriptor+7A↓j
                test    eax, eax
                jg      loc_14046D750

loc_1403111C4:                          ; CODE XREF: SeConvertSecurityDescriptorToStringSecurityDescriptor+15C5E6↓j
                                        ; SeConvertSecurityDescriptorToStringSecurityDescriptor+15C5F8↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403111D5:                          ; CODE XREF: SeConvertSecurityDescriptorToStringSecurityDescriptor+2B↑j
                                        ; SeConvertSecurityDescriptorToStringSecurityDescriptor+30↑j ...
                mov     eax, 57h ; 'W'
                jmp     short loc_1403111BC
SeConvertSecurityDescriptorToStringSecurityDescriptor endp

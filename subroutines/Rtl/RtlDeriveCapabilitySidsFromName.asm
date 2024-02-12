RtlDeriveCapabilitySidsFromName proc near
                                        ; CODE XREF: sub_1406B2570+E4↓p
                                        ; sub_1406B40B8+EA↓p ...

var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h

; FUNCTION CHUNK AT 000000014046BC7C SIZE 00000028 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_28], rax
                xorps   xmm0, xmm0
                mov     rbx, r8
                mov     rdi, rdx
                movups  [rsp+78h+var_58], xmm0
                test    rcx, rcx
                jz      loc_14046BC9D
                test    rdx, rdx
                jz      loc_14046BC9D
                test    rbx, rbx
                jz      loc_14046BC9D
                movups  xmmword ptr [r8], xmm0
                xor     eax, eax
                movups  xmmword ptr [r8+10h], xmm0
                movups  xmmword ptr [r8+20h], xmm0
                mov     r8b, 1
                xorps   xmm1, xmm1
                movups  xmmword ptr [rdx], xmm1
                movups  xmmword ptr [rdx+10h], xmm1
                mov     [rdx+20h], rax
                mov     [rdx+28h], eax
                mov     rdx, rcx
                lea     rcx, [rsp+78h+var_58]
                call    RtlUpcaseUnicodeString
                test    eax, eax
                js      loc_14030AF5C
                movzx   edx, word ptr [rsp+78h+var_58]
                lea     r8, [rsp+78h+var_48]
                mov     rcx, qword ptr [rsp+78h+var_58+8]
                call    sub_1403EBD98
                mov     r8b, 9
                lea     rdx, qword_14000ACA8
                mov     rcx, rdi
                call    RtlInitializeSid
                movups  xmm0, [rsp+78h+var_48]
                mov     dword ptr [rdi+8], 20h ; ' '
                movups  xmm1, [rsp+78h+var_38]
                movups  xmmword ptr [rdi+0Ch], xmm0
                movups  xmmword ptr [rdi+1Ch], xmm1
                xor     edi, edi

loc_14030AEEA:                          ; CODE XREF: RtlDeriveCapabilitySidsFromName+E7↓j
                lea     rax, qword_140989670
                mov     edx, edi
                shl     rdx, 4
                lea     rcx, [rsp+78h+var_58]
                add     rdx, rax
                lea     esi, [rdi+1]
                xor     r8d, r8d
                call    RtlEqualUnicodeString
                test    al, al
                jnz     loc_14046BC7C
                mov     edi, esi
                cmp     esi, 0Ch
                jb      short loc_14030AEEA

loc_14030AF19:                          ; CODE XREF: RtlDeriveCapabilitySidsFromName+160E68↓j
                lea     rcx, [rsp+78h+var_58]
                call    RtlFreeUnicodeString
                cmp     edi, 0Ch
                jnz     short loc_14030AF5A
                mov     r8b, 0Ah
                lea     rdx, qword_14000AA08
                mov     rcx, rbx
                call    RtlInitializeSid
                movups  xmm0, [rsp+78h+var_48]
                mov     dword ptr [rbx+8], 3
                movups  xmm1, [rsp+78h+var_38]
                mov     dword ptr [rbx+0Ch], 400h
                movups  xmmword ptr [rbx+10h], xmm0
                movups  xmmword ptr [rbx+20h], xmm1

loc_14030AF5A:                          ; CODE XREF: RtlDeriveCapabilitySidsFromName+F6↑j
                xor     eax, eax

loc_14030AF5C:                          ; CODE XREF: RtlDeriveCapabilitySidsFromName+73↑j
                mov     rcx, [rsp+78h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14030AE30
RtlDeriveCapabilitySidsFromName endp

RtlDuplicateUnicodeString proc near     ; CODE XREF: sub_1405E651C+B6↓p
                                        ; sub_140759458+3F8↓p ...

var_38          = word ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E5106 SIZE 00000026 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+10h], rdx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12, r8
                mov     rbx, rdx
                mov     esi, ecx
                xor     r15d, r15d
                movzx   edi, r15w
                mov     r14d, r15d
                mov     [rax-30h], r15

loc_1405E58E2:                          ; DATA XREF: .rdata:0000000140045728↑o
;   __try { // __finally(loc_1407E5106)
                test    ecx, 0FFFFFFFCh
                jnz     loc_1405E59C4
                test    r8, r8
                jz      loc_1405E59C4
                mov     r13d, ecx
                lea     eax, [r15+2]
                and     esi, 1
                and     r13d, eax
                jnz     loc_1405E59BC

loc_1405E590A:                          ; CODE XREF: RtlDuplicateUnicodeString+10E↓j
                xor     ecx, ecx
                call    RtlValidateUnicodeString
                test    eax, eax
                js      loc_1405E59DC
                test    rbx, rbx
                jz      short loc_1405E5921
                movzx   edi, word ptr [rbx]

loc_1405E5921:                          ; CODE XREF: RtlDuplicateUnicodeString+6C↑j
                test    esi, esi
                jz      short loc_1405E5933
                mov     eax, 0FFFEh
                cmp     di, ax
                jz      loc_1405E59CB

loc_1405E5933:                          ; CODE XREF: RtlDuplicateUnicodeString+73↑j
                movzx   r15d, di
                test    esi, esi
                jz      short loc_1405E59AD
                mov     ebx, 2
                add     ebx, r15d

loc_1405E5943:                          ; CODE XREF: RtlDuplicateUnicodeString+100↓j
                mov     [rsp+58h+var_38], bx
                test    r13d, r13d
                jnz     loc_1405E59D2
                xor     r13d, r13d
                test    di, di
                jz      short loc_1405E59B2

loc_1405E5959:                          ; CODE XREF: RtlDuplicateUnicodeString+10A↓j
                                        ; RtlDuplicateUnicodeString+125↓j
                test    bx, bx
                jz      short loc_1405E5998
                movzx   ecx, bx
                call    sub_140704930
                mov     r14, rax
                mov     [rsp+58h+var_30], rax
                test    rax, rax
                jz      short loc_1405E59D7
                test    di, di
                jz      short loc_1405E598C
                mov     r8, r15
                mov     rdx, [rsp+58h+arg_8]
                mov     rdx, [rdx+8]
                mov     rcx, rax
                call    memmove

loc_1405E598C:                          ; CODE XREF: RtlDuplicateUnicodeString+C6↑j
                test    esi, esi
                jz      short loc_1405E5998
                shr     r15, 1
                mov     [r14+r15*2], r13w

loc_1405E5998:                          ; CODE XREF: RtlDuplicateUnicodeString+AC↑j
                                        ; RtlDuplicateUnicodeString+DE↑j
                mov     [r12+2], bx
                mov     [r12], di
                mov     [r12+8], r14
                mov     eax, r13d
                jmp     short loc_1405E59DC
; ---------------------------------------------------------------------------

loc_1405E59AD:                          ; CODE XREF: RtlDuplicateUnicodeString+89↑j
                movzx   ebx, di
                jmp     short loc_1405E5943
; ---------------------------------------------------------------------------

loc_1405E59B2:                          ; CODE XREF: RtlDuplicateUnicodeString+A7↑j
                mov     ebx, r13d
                mov     [rsp+58h+var_38], bx
                jmp     short loc_1405E5959
; ---------------------------------------------------------------------------

loc_1405E59BC:                          ; CODE XREF: RtlDuplicateUnicodeString+54↑j
                test    esi, esi
                jnz     loc_1405E590A

loc_1405E59C4:                          ; CODE XREF: RtlDuplicateUnicodeString+38↑j
                                        ; RtlDuplicateUnicodeString+41↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1405E59DC
; ---------------------------------------------------------------------------

loc_1405E59CB:                          ; CODE XREF: RtlDuplicateUnicodeString+7D↑j
                mov     eax, 0C0000106h
                jmp     short loc_1405E59DC
; ---------------------------------------------------------------------------

loc_1405E59D2:                          ; CODE XREF: RtlDuplicateUnicodeString+9B↑j
                xor     r13d, r13d
                jmp     short loc_1405E5959
; ---------------------------------------------------------------------------

loc_1405E59D7:                          ; CODE XREF: RtlDuplicateUnicodeString+C1↑j
                mov     eax, 0C0000017h
;   } // starts at 1405E58E2

loc_1405E59DC:                          ; CODE XREF: RtlDuplicateUnicodeString+63↑j
                                        ; RtlDuplicateUnicodeString+FB↑j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405E58B0
RtlDuplicateUnicodeString endp

RtlIsNameLegalDOS8Dot3 proc near        ; DATA XREF: .rdata:0000000140080B94↑o
                                        ; .pdata:0000000140105048↑o

var_58          = xmmword ptr -58h
var_48          = byte ptr -48h
var_38          = qword ptr -38h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140826204 SIZE 0000004C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_38], rax
                xor     r14d, r14d
                xorps   xmm0, xmm0
                cmp     word ptr [rcx], 18h
                mov     rdi, r8
                mov     rbx, rdx
                mov     sil, r14b
                mov     bpl, r14b
                movups  [rsp+78h+var_58], xmm0
                jbe     short loc_1406F8CB0

loc_1406F8C8C:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+8C↓j
                                        ; RtlIsNameLegalDOS8Dot3+F3↓j ...
                xor     al, al

loc_1406F8C8E:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+132↓j
                mov     rcx, [rsp+78h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+78h+arg_18]
                add     rsp, 50h
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1406F8CB0:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+3A↑j
                test    rdx, rdx
                jnz     short loc_1406F8CCC
                lea     rax, [rsp+78h+var_48]
                mov     dword ptr [rsp+78h+var_58], 0C0000h
                mov     qword ptr [rsp+78h+var_58+8], rax
                lea     rbx, [rsp+78h+var_58]

loc_1406F8CCC:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+63↑j
                mov     rdx, rcx
                xor     r8d, r8d
                mov     rcx, rbx
                call    RtlUpcaseUnicodeStringToCountedOemString
                test    eax, eax
                js      short loc_1406F8C8C
                movzx   ecx, word ptr [rbx]
                mov     r11d, 1
                cmp     cx, r11w
                jz      loc_1406F8DC5

loc_1406F8CF1:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+17C↓j
                cmp     ecx, 2
                jz      loc_1406F8DD7

loc_1406F8CFA:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+18E↓j
                                        ; RtlIsNameLegalDOS8Dot3+12D5B8↓j
                mov     edx, r14d
                mov     r9d, ecx
                test    ecx, ecx
                jz      short loc_1406F8D7A
                mov     r10, [rbx+8]
                lea     r12, cs:140000000h
                mov     bl, 20h ; ' '

loc_1406F8D11:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+115↓j
                cmp     cs:NlsMbOemCodePageTag, r14b
                mov     eax, edx
                movzx   r8d, byte ptr [rax+r10]
                jnz     loc_14082621F

loc_1406F8D25:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+12D5D8↓j
                cmp     r8b, 80h
                jnb     short loc_1406F8D49
                mov     rax, r8
                mov     ecx, r8d
                shr     rax, 5
                and     ecx, 1Fh
                mov     eax, ds:rva dword_1409853B0[r12+rax*4]
                bt      eax, ecx
                jb      loc_1406F8C8C

loc_1406F8D49:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+D9↑j
                cmp     r8b, bl
                movzx   ebp, bpl
                cmovz   ebp, r11d
                cmp     r8b, 2Eh ; '.'
                jz      short loc_1406F8D91

loc_1406F8D5A:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+173↓j
                cmp     edx, 8
                jnb     short loc_1406F8D87

loc_1406F8D5F:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+13A↓j
                                        ; RtlIsNameLegalDOS8Dot3+12D5FB↓j
                add     edx, r11d
                cmp     edx, r9d
                jb      short loc_1406F8D11
                cmp     r8b, bl
                jz      loc_1406F8C8C
                cmp     r8b, 2Eh ; '.'
                jz      loc_1406F8C8C

loc_1406F8D7A:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+B2↑j
                test    rdi, rdi
                jnz     short loc_1406F8DE9

loc_1406F8D7F:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+19C↓j
                                        ; RtlIsNameLegalDOS8Dot3+12D5C1↓j ...
                mov     al, r11b
                jmp     loc_1406F8C8E
; ---------------------------------------------------------------------------

loc_1406F8D87:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+10D↑j
                test    sil, sil
                jnz     short loc_1406F8D5F
                jmp     loc_1406F8C8C
; ---------------------------------------------------------------------------

loc_1406F8D91:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+108↑j
                test    sil, sil
                jnz     loc_1406F8C8C
                test    edx, edx
                jz      loc_1406F8C8C
                lea     eax, [rdx-1]
                cmp     [rax+r10], bl
                jz      loc_1406F8C8C
                mov     eax, r9d
                sub     eax, edx
                sub     eax, r11d
                cmp     eax, 3
                ja      loc_1406F8C8C
                mov     sil, r11b
                jmp     short loc_1406F8D5A
; ---------------------------------------------------------------------------

loc_1406F8DC5:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+9B↑j
                mov     rax, [rbx+8]
                cmp     byte ptr [rax], 2Eh ; '.'
                jnz     loc_1406F8CF1
                jmp     loc_14082620E
; ---------------------------------------------------------------------------

loc_1406F8DD7:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+A4↑j
                mov     rdx, [rbx+8]
                cmp     byte ptr [rdx], 2Eh ; '.'
                jnz     loc_1406F8CFA
                jmp     loc_140826204
; ---------------------------------------------------------------------------

loc_1406F8DE9:                          ; CODE XREF: RtlIsNameLegalDOS8Dot3+12D↑j
                mov     [rdi], bpl
                jmp     short loc_1406F8D7F
; } // starts at 1406F8C50
RtlIsNameLegalDOS8Dot3 endp

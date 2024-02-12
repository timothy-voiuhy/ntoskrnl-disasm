RtlNormalizeSecurityDescriptor proc near
                                        ; DATA XREF: .pdata:00000001400D44CC↑o

var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     rsi, [rcx]
                xor     eax, eax
                mov     ebx, edx
                mov     r14, r8
                mov     rdx, rsi
                mov     [rsp+88h+var_50], rax
                mov     ecx, ebx
                mov     [rsp+88h+arg_8], al
                mov     edi, eax
                mov     r13b, al
                call    SeValidSecurityDescriptor
                xor     ecx, ecx
                test    al, al
                jz      loc_14030E137
                mov     bpl, [rsp+88h+arg_20]
                test    bpl, bpl
                jnz     short loc_14030DD5D
                test    r14, r14
                jz      short loc_14030DD28
                mov     rdi, [r14]
                test    rdi, rdi
                jnz     short loc_14030DD4F

loc_14030DD28:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+5E↑j
                mov     rdx, rbx
                mov     ecx, 1
                mov     r8d, 64536553h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14030E137
                mov     [rsp+88h+arg_8], 1

loc_14030DD4F:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+66↑j
                movups  xmm0, xmmword ptr [rsi]
                movups  xmmword ptr [rdi], xmm0
                mov     ecx, [rsi+10h]
                mov     [rdi+10h], ecx
                xor     ecx, ecx

loc_14030DD5D:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+59↑j
                mov     ebx, 14h
                lea     r12d, [rbx-13h]
                mov     [rsp+88h+var_54], r12d

loc_14030DD6B:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+375↓j
                cmp     r12d, 1
                jnz     short loc_14030DD77
                mov     r11d, [rsi+0Ch]
                jmp     short loc_14030DD7B
; ---------------------------------------------------------------------------

loc_14030DD77:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+AF↑j
                mov     r11d, [rsi+10h]

loc_14030DD7B:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+B5↑j
                mov     [rsp+88h+var_58], r11d
                test    r11d, r11d
                jz      loc_14030E029
                mov     r8d, r11d
                cmp     r12d, 1
                jnz     short loc_14030DD9D
                mov     r15d, ecx
                cmp     [r8+rsi+4], cx
                jz      short loc_14030DDA0

loc_14030DD9D:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+D0↑j
                mov     r15d, ebx

loc_14030DDA0:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+DB↑j
                cmp     r15d, r11d
                jz      short loc_14030DDC1
                mov     r13b, 1
                test    bpl, bpl
                jnz     loc_14030E11F
                cmp     r12d, 1
                jnz     short loc_14030DDBD
                mov     [rdi+0Ch], r15d
                jmp     short loc_14030DDC1
; ---------------------------------------------------------------------------

loc_14030DDBD:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+F5↑j
                mov     [rdi+10h], r15d

loc_14030DDC1:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+E3↑j
                                        ; RtlNormalizeSecurityDescriptor+FB↑j
                test    r15d, r15d
                jz      loc_14030E029
                test    bpl, bpl
                jnz     short loc_14030DDE3
                mov     rax, [r8+rsi]
                mov     ecx, r15d
                add     rcx, rdi
                mov     [rsp+88h+var_50], rcx
                mov     [rcx], rax
                xor     ecx, ecx

loc_14030DDE3:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+10D↑j
                movzx   edx, word ptr [r8+rsi+4]
                lea     rax, [rsi+8]
                add     rax, r8
                mov     [rsp+88h+var_68], ecx
                add     ebx, 8
                mov     [rsp+88h+var_64], ecx
                mov     r9d, ecx
                mov     r10d, ecx
                mov     r14, rax
                cmp     cx, dx
                jnb     loc_14030DEF9
                jmp     short loc_14030DE11
; ---------------------------------------------------------------------------

loc_14030DE0F:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+22E↓j
                xor     ecx, ecx

loc_14030DE11:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+14D↑j
                cmp     [r14], cl
                jnz     short loc_14030DE94
                test    bpl, bpl
                jz      loc_14030DF36
                mov     r12, rax
                mov     [rsp+88h+var_5C], ecx
                xor     eax, eax
                test    r10d, r10d
                jz      short loc_14030DE94
                movzx   eax, word ptr [r14+2]
                mov     [rsp+88h+var_60], eax

loc_14030DE36:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+1C1↓j
                cmp     [r12+2], ax
                jnz     short loc_14030DE69
                movzx   r8d, ax
                mov     rdx, r12
                movzx   eax, word ptr [r14+2]
                mov     rcx, r14
                mov     [rsp+88h+var_60], eax
                call    RtlCompareMemory
                movzx   ecx, word ptr [rsp+88h+var_60]
                mov     r10d, [rsp+88h+var_64]
                cmp     rax, rcx
                mov     ecx, [rsp+88h+var_5C]
                jz      short loc_14030DE83

loc_14030DE69:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+17C↑j
                movzx   eax, word ptr [r12+2]
                inc     ecx
                add     r12, rax
                mov     [rsp+88h+var_5C], ecx
                cmp     ecx, r10d
                jnb     short loc_14030DE8F
                mov     eax, [rsp+88h+var_60]
                jmp     short loc_14030DE36
; ---------------------------------------------------------------------------

loc_14030DE83:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+1A7↑j
                mov     r13b, 1
                cmp     ecx, r10d
                jb      loc_14030E0D3

loc_14030DE8F:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+1BB↑j
                mov     r9d, [rsp+88h+var_68]

loc_14030DE94:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+154↑j
                                        ; RtlNormalizeSecurityDescriptor+16B↑j ...
                test    bpl, bpl
                jnz     short loc_14030DEB0

loc_14030DE99:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+288↓j
                movzx   r8d, word ptr [r14+2]
                mov     rdx, r14
                mov     ecx, ebx
                add     rcx, rdi
                call    memmove
                mov     r9d, [rsp+88h+var_68]

loc_14030DEB0:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+1D7↑j
                movzx   eax, word ptr [r14+2]
                add     ebx, eax
                inc     r9d
                mov     [rsp+88h+var_68], r9d

loc_14030DEBF:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+2F9↓j
                mov     r11d, [rsp+88h+var_58]
                mov     r10d, [rsp+88h+var_64]
                mov     r8d, r11d
                movzx   eax, ax
                inc     r10d
                add     r14, rax
                mov     [rsp+88h+var_64], r10d
                movzx   eax, word ptr [r11+rsi+4]
                movzx   edx, ax
                cmp     r10d, eax
                lea     rax, [r11+8]
                lea     rax, [rax+rsi]
                jb      loc_14030DE0F
                mov     r12d, [rsp+88h+var_54]

loc_14030DEF9:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+147↑j
                movzx   eax, word ptr [r8+rsi+2]
                lea     r14d, [rbx+3]
                and     r14d, 0FFFFFFFCh
                mov     ecx, r14d
                sub     ecx, r15d
                cmp     ecx, eax
                jz      loc_14030DFBE
                mov     r13b, 1
                test    bpl, bpl
                jnz     loc_14030E11D
                mov     r10, [rsp+88h+var_50]
                mov     [r10+2], cx
                movzx   edx, word ptr [r8+rsi+4]
                jmp     loc_14030DFC3
; ---------------------------------------------------------------------------

loc_14030DF36:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+159↑j
                mov     r12, [rsp+88h+var_50]
                xor     eax, eax
                add     r12, 8
                mov     [rsp+88h+var_60], ecx
                test    r9d, r9d
                jz      loc_14030DE99
                movzx   eax, word ptr [r14+2]
                mov     [rsp+88h+var_5C], eax

loc_14030DF57:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+2E6↓j
                cmp     [r12+2], ax
                jnz     short loc_14030DF8A
                movzx   r8d, ax
                mov     rdx, r12
                movzx   eax, word ptr [r14+2]
                mov     rcx, r14
                mov     [rsp+88h+var_5C], eax
                call    RtlCompareMemory
                movzx   ecx, word ptr [rsp+88h+var_5C]
                mov     r9d, [rsp+88h+var_68]
                cmp     rax, rcx
                mov     ecx, [rsp+88h+var_60]
                jz      short loc_14030DFA8

loc_14030DF8A:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+29D↑j
                movzx   eax, word ptr [r12+2]
                inc     ecx
                add     r12, rax
                mov     [rsp+88h+var_60], ecx
                cmp     ecx, r9d
                jnb     loc_14030DE94
                mov     eax, [rsp+88h+var_5C]
                jmp     short loc_14030DF57
; ---------------------------------------------------------------------------

loc_14030DFA8:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+2C8↑j
                mov     r13b, 1
                cmp     ecx, r9d
                jnb     loc_14030DE94
                movzx   eax, word ptr [r14+2]
                jmp     loc_14030DEBF
; ---------------------------------------------------------------------------

loc_14030DFBE:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+24F↑j
                mov     r10, [rsp+88h+var_50]

loc_14030DFC3:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+271↑j
                movzx   eax, dx
                cmp     r9d, eax
                jz      short loc_14030DFD0
                mov     [r10+4], r9w

loc_14030DFD0:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+309↑j
                cmp     ebx, r14d
                jz      short loc_14030E027
                cmp     r15d, r11d
                jnz     short loc_14030E007
                movzx   eax, word ptr [r8+rsi+2]
                cmp     ecx, eax
                jnz     short loc_14030E007
                mov     edx, r14d
                mov     ecx, ebx
                sub     edx, ebx
                add     rcx, rsi
                call    RtlIsZeroMemory
                xor     ecx, ecx
                test    al, al
                jnz     short loc_14030E009
                mov     r13b, 1
                test    bpl, bpl
                jnz     loc_14030E11F
                jmp     short loc_14030E009
; ---------------------------------------------------------------------------

loc_14030E007:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+318↑j
                                        ; RtlNormalizeSecurityDescriptor+322↑j
                xor     ecx, ecx

loc_14030E009:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+337↑j
                                        ; RtlNormalizeSecurityDescriptor+345↑j
                test    bpl, bpl
                jnz     short loc_14030E022
                mov     r8d, r14d
                mov     ecx, ebx
                sub     r8d, ebx
                add     rcx, rdi
                xor     edx, edx
                call    memset
                xor     ecx, ecx

loc_14030E022:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+34C↑j
                mov     ebx, r14d
                jmp     short loc_14030E029
; ---------------------------------------------------------------------------

loc_14030E027:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+313↑j
                xor     ecx, ecx

loc_14030E029:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+C3↑j
                                        ; RtlNormalizeSecurityDescriptor+104↑j ...
                inc     r12d
                mov     [rsp+88h+var_54], r12d
                cmp     r12d, 2
                jbe     loc_14030DD6B
                mov     eax, [rsi+4]
                cmp     ebx, eax
                jz      short loc_14030E054
                mov     r13b, 1
                test    bpl, bpl
                jnz     loc_14030E11F
                mov     [rdi+4], ebx
                mov     eax, [rsi+4]

loc_14030E054:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+380↑j
                mov     r14d, eax
                add     r14, rsi
                movzx   ecx, byte ptr [r14+1]
                call    RtlLengthRequiredSid
                xor     ecx, ecx
                mov     r15d, eax
                test    bpl, bpl
                jnz     short loc_14030E081
                mov     ecx, [rdi+4]
                mov     r8d, r15d
                add     rcx, rdi
                mov     rdx, r14
                call    memmove
                xor     ecx, ecx

loc_14030E081:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+3AC↑j
                mov     eax, [rsi+8]
                add     ebx, r15d
                test    eax, eax
                jz      short loc_14030E0D5
                cmp     ebx, eax
                jz      short loc_14030E0A1
                mov     r13b, 1
                test    bpl, bpl
                jnz     loc_14030E11F
                mov     [rdi+8], ebx
                mov     eax, [rsi+8]

loc_14030E0A1:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+3CD↑j
                mov     r14d, eax
                add     r14, rsi
                movzx   ecx, byte ptr [r14+1]
                call    RtlLengthRequiredSid
                xor     ecx, ecx
                mov     r15d, eax
                test    bpl, bpl
                jnz     short loc_14030E0CE
                mov     ecx, [rdi+8]
                mov     r8d, r15d
                add     rcx, rdi
                mov     rdx, r14
                call    memmove
                xor     ecx, ecx

loc_14030E0CE:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+3F9↑j
                add     ebx, r15d
                jmp     short loc_14030E0D5
; ---------------------------------------------------------------------------

loc_14030E0D3:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+1C9↑j
                xor     ecx, ecx

loc_14030E0D5:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+3C9↑j
                                        ; RtlNormalizeSecurityDescriptor+411↑j
                test    r13b, r13b
                jz      short loc_14030E11F
                test    bpl, bpl
                jnz     short loc_14030E11F
                mov     rax, [rsp+88h+arg_10]
                test    rax, rax
                jz      short loc_14030E0F7
                cmp     [rsp+88h+arg_8], cl
                jz      short loc_14030E10C
                jmp     short loc_14030E109
; ---------------------------------------------------------------------------

loc_14030E0F7:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+42A↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     rax, [rsp+88h+arg_0]

loc_14030E109:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+435↑j
                mov     [rax], rdi

loc_14030E10C:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+433↑j
                mov     rax, [rsp+88h+arg_18]
                test    rax, rax
                jz      short loc_14030E132
                mov     [rax], ebx
                jmp     short loc_14030E132
; ---------------------------------------------------------------------------

loc_14030E11D:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+25B↑j
                xor     ecx, ecx

loc_14030E11F:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+EB↑j
                                        ; RtlNormalizeSecurityDescriptor+33F↑j ...
                cmp     [rsp+88h+arg_8], cl
                jz      short loc_14030E132
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14030E132:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+457↑j
                                        ; RtlNormalizeSecurityDescriptor+45B↑j ...
                mov     al, r13b
                jmp     short loc_14030E139
; ---------------------------------------------------------------------------

loc_14030E137:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+48↑j
                                        ; RtlNormalizeSecurityDescriptor+81↑j
                xor     al, al

loc_14030E139:                          ; CODE XREF: RtlNormalizeSecurityDescriptor+475↑j
                add     rsp, 48h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNormalizeSecurityDescriptor endp

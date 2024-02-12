LdrEnumResources proc near              ; DATA XREF: .pdata:0000000140121E24↑o

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = byte ptr  20h
arg_20          = qword ptr  28h

                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                xor     r13d, r13d
                mov     r12, r9
                mov     esi, r8d
                mov     r15, rdx
                mov     edi, r13d
                mov     [rsp+98h+var_60], r13d
                cmp     [rsp+98h+arg_20], r13
                jnz     short loc_140911F54
                mov     [rsp+98h+var_5C], r13d
                jmp     short loc_140911F5B
; ---------------------------------------------------------------------------

loc_140911F54:                          ; CODE XREF: LdrEnumResources+3B↑j
                mov     eax, [r9]
                mov     [rsp+98h+var_5C], eax

loc_140911F5B:                          ; CODE XREF: LdrEnumResources+42↑j
                mov     [r9], r13d
                mov     r8d, 2
                lea     r9, [rsp+98h+arg_18]
                mov     dl, 1
                call    RtlImageDirectoryEntryToData
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140911F85
                mov     eax, 0C0000089h
                jmp     loc_1409121B9
; ---------------------------------------------------------------------------

loc_140911F85:                          ; CODE XREF: LdrEnumResources+69↑j
                movzx   ecx, word ptr [rax+0Eh]
                lea     r14, [rax+10h]
                movzx   eax, word ptr [rax+0Ch]
                mov     ebp, r13d
                add     ecx, eax
                mov     [rsp+98h+var_50], r13d
                mov     [rsp+98h+var_64], ecx
                mov     [rsp+98h+var_54], r13d
                jz      loc_1409121B3

loc_140911FAA:                          ; CODE XREF: LdrEnumResources+295↓j
                test    esi, esi
                jz      short loc_140911FDF
                mov     r8, [r15]
                lea     rax, [rsp+98h+arg_18]
                mov     [rsp+98h+var_70], rax
                mov     r9, rbx
                mov     [rsp+98h+var_78], r14
                mov     [rsp+98h+arg_18], r13b
                call    sub_1403F7D28
                mov     ecx, [rsp+98h+var_64]
                test    eax, eax
                jnz     loc_140912195

loc_140911FDF:                          ; CODE XREF: LdrEnumResources+9C↑j
                mov     eax, [r14+4]
                test    eax, eax
                jns     loc_1409121CB
                mov     edi, [r14]
                test    edi, edi
                jns     short loc_140911FFB
                btr     edi, 1Fh
                add     rdi, rbx
                jmp     short loc_140911FFF
; ---------------------------------------------------------------------------

loc_140911FFB:                          ; CODE XREF: LdrEnumResources+E0↑j
                movzx   edi, word ptr [r14]

loc_140911FFF:                          ; CODE XREF: LdrEnumResources+E9↑j
                btr     eax, 1Fh
                mov     [rsp+98h+var_58], r13d
                lea     rbp, [rbx+10h]
                add     rbp, rax
                movzx   edx, word ptr [rax+rbx+0Eh]
                movzx   eax, word ptr [rax+rbx+0Ch]
                add     edx, eax
                mov     [rsp+98h+var_68], edx
                jz      loc_140912195

loc_140912025:                          ; CODE XREF: LdrEnumResources+27B↓j
                cmp     esi, 1
                jbe     short loc_14091205C
                mov     r8, [r15+8]
                lea     rax, [rsp+98h+arg_18]
                mov     [rsp+98h+var_70], rax
                mov     r9, rbx
                mov     [rsp+98h+var_78], rbp
                mov     [rsp+98h+arg_18], r13b
                call    sub_1403F7D28
                mov     edx, [rsp+98h+var_68]
                test    eax, eax
                jnz     loc_14091217B

loc_14091205C:                          ; CODE XREF: LdrEnumResources+118↑j
                mov     eax, [rbp+4]
                test    eax, eax
                jns     loc_1409121CB
                mov     esi, [rbp+0]
                test    esi, esi
                jns     short loc_140912077
                btr     esi, 1Fh
                add     rsi, rbx
                jmp     short loc_14091207B
; ---------------------------------------------------------------------------

loc_140912077:                          ; CODE XREF: LdrEnumResources+15C↑j
                movzx   esi, word ptr [rbp+0]

loc_14091207B:                          ; CODE XREF: LdrEnumResources+165↑j
                btr     eax, 1Fh
                lea     r15, [rbx+10h]
                add     r15, rax
                movzx   ecx, word ptr [rax+rbx+0Eh]
                movzx   eax, word ptr [rax+rbx+0Ch]
                add     ecx, eax
                mov     [rsp+98h+var_4C], ecx
                jz      loc_140912169

loc_14091209C:                          ; CODE XREF: LdrEnumResources+24F↓j
                cmp     [rsp+98h+arg_10], 2
                jbe     short loc_1409120D8
                mov     rax, [rsp+98h+arg_8]
                mov     r9, rbx
                mov     [rsp+98h+arg_18], 0
                mov     r8, [rax+10h]
                lea     rax, [rsp+98h+arg_18]
                mov     [rsp+98h+var_70], rax
                mov     [rsp+98h+var_78], r15
                call    sub_1403F7D28
                test    eax, eax
                jnz     short loc_140912153

loc_1409120D8:                          ; CODE XREF: LdrEnumResources+194↑j
                mov     eax, [r15+4]
                test    eax, eax
                js      loc_1409121CB
                mov     ecx, [r15]
                test    ecx, ecx
                jns     short loc_1409120F4
                btr     ecx, 1Fh
                add     rcx, rbx
                jmp     short loc_1409120F8
; ---------------------------------------------------------------------------

loc_1409120F4:                          ; CODE XREF: LdrEnumResources+1D9↑j
                movzx   ecx, word ptr [r15]

loc_1409120F8:                          ; CODE XREF: LdrEnumResources+1E2↑j
                mov     r9d, [rsp+98h+var_60]
                mov     r8, rax
                lea     rdx, [r9+r9*4]
                inc     r9d
                mov     [rsp+98h+var_60], r9d
                cmp     r9d, [rsp+98h+var_5C]
                ja      short loc_14091214B
                mov     r9, [rsp+98h+arg_20]
                mov     [r9+rdx*8], rdi
                mov     [r9+rdx*8+8], rsi
                mov     [r9+rdx*8+10h], rcx
                mov     eax, [rax+rbx]
                add     rax, [rsp+98h+arg_0]
                mov     [r9+rdx*8+18h], rax
                mov     eax, [r8+rbx+4]
                and     dword ptr [r9+rdx*8+24h], 0
                mov     [r9+rdx*8+20h], eax
                jmp     short loc_140912153
; ---------------------------------------------------------------------------

loc_14091214B:                          ; CODE XREF: LdrEnumResources+201↑j
                mov     [rsp+98h+var_50], 0C0000004h

loc_140912153:                          ; CODE XREF: LdrEnumResources+1C6↑j
                                        ; LdrEnumResources+239↑j
                inc     r13d
                add     r15, 8
                cmp     r13d, [rsp+98h+var_4C]
                jb      loc_14091209C
                mov     edx, [rsp+98h+var_68]

loc_140912169:                          ; CODE XREF: LdrEnumResources+186↑j
                mov     r15, [rsp+98h+arg_8]
                xor     r13d, r13d
                mov     esi, [rsp+98h+arg_10]

loc_14091217B:                          ; CODE XREF: LdrEnumResources+146↑j
                mov     eax, [rsp+98h+var_58]
                add     rbp, 8
                inc     eax
                mov     [rsp+98h+var_58], eax
                cmp     eax, edx
                jb      loc_140912025
                mov     ecx, [rsp+98h+var_64]

loc_140912195:                          ; CODE XREF: LdrEnumResources+C9↑j
                                        ; LdrEnumResources+10F↑j
                mov     eax, [rsp+98h+var_54]
                add     r14, 8
                inc     eax
                mov     [rsp+98h+var_54], eax
                cmp     eax, ecx
                jb      loc_140911FAA
                mov     edi, [rsp+98h+var_60]
                mov     ebp, [rsp+98h+var_50]

loc_1409121B3:                          ; CODE XREF: LdrEnumResources+94↑j
                mov     [r12], edi
                mov     eax, ebp

loc_1409121B9:                          ; CODE XREF: LdrEnumResources+70↑j
                                        ; LdrEnumResources+2C0↓j
                add     rsp, 58h
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
; ---------------------------------------------------------------------------

loc_1409121CB:                          ; CODE XREF: LdrEnumResources+D5↑j
                                        ; LdrEnumResources+151↑j ...
                mov     eax, 0C000007Bh
                jmp     short loc_1409121B9
LdrEnumResources endp

RtlDecompressChunks proc near           ; DATA XREF: .pdata:0000000140121DE8↑o

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+18h], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                and     dword ptr [rax+8], 0
                mov     rbp, rcx
                mov     rax, [rsp+78h+arg_30]
                mov     esi, r9d
                mov     r12d, edx
                mov     r15, r8
                mov     edx, 1
                mov     cl, [rax+3]
                movzx   ebx, word ptr [rax+6]
                shl     edx, cl
                lea     rcx, [r12+rbp]
                mov     [rsp+78h+arg_8], ebx
                mov     [rsp+78h+var_48], edx
                mov     [rsp+78h+var_40], rcx
                cmp     rcx, rbp
                jb      loc_140911D2B
                lea     r14, [rax+8]

loc_140911B4D:                          ; CODE XREF: RtlDecompressChunks+22B↓j
                cmp     r12d, edx
                mov     edi, r12d
                cmovnb  edi, edx
                test    ebx, ebx
                jz      loc_140911CC6
                mov     eax, [r14]
                test    eax, eax
                jz      loc_140911CC6
                cmp     eax, edx
                jnz     short loc_140911BE2
                cmp     edi, esi
                jb      short loc_140911BCF
                mov     r13d, [rsp+78h+arg_28]
                test    r13d, r13d
                jnz     short loc_140911B86
                cmp     edi, esi
                ja      loc_140911D24

loc_140911B86:                          ; CODE XREF: RtlDecompressChunks+8C↑j
                mov     r8d, esi
                mov     rdx, r15
                mov     rcx, rbp
                mov     ebx, esi
                call    memmove
                mov     rdx, [rsp+78h+arg_20]
                lea     rcx, [rbx+rbp]
                mov     r8d, edi
                sub     r8d, esi
                call    memmove
                mov     r15, [rsp+78h+arg_20]
                add     esi, r13d
                sub     r15, rbx
                mov     ebx, [rsp+78h+arg_8]
                and     [rsp+78h+arg_28], 0
                jmp     loc_140911CE9
; ---------------------------------------------------------------------------

loc_140911BCF:                          ; CODE XREF: RtlDecompressChunks+7F↑j
                mov     r8d, edi
                mov     rdx, r15
                mov     rcx, rbp
                call    memmove
                jmp     loc_140911CE9
; ---------------------------------------------------------------------------

loc_140911BE2:                          ; CODE XREF: RtlDecompressChunks+7B↑j
                cmp     eax, esi
                jbe     short loc_140911C55
                cmp     [rsp+78h+arg_28], 0
                jz      loc_140911D24
                mov     eax, edx
                mov     ebx, r12d
                sub     rbx, rax
                mov     r13d, esi
                add     rbx, rbp
                lea     rax, [rbx+r13]
                cmp     rax, rbx
                jb      loc_140911D2B
                cmp     rbx, rbp
                jb      loc_140911D24
                cmp     rax, rcx
                ja      loc_140911D24
                mov     r8d, r13d
                mov     rdx, r15
                mov     rcx, rbx
                call    memmove
                mov     r8d, [r14]
                lea     rcx, [rbx+r13]
                mov     rdx, [rsp+78h+arg_20]
                sub     r8d, esi
                call    memmove
                mov     eax, [r14]
                mov     r15, rbx
                mov     ebx, [rsp+78h+arg_8]
                jmp     short loc_140911C58
; ---------------------------------------------------------------------------

loc_140911C55:                          ; CODE XREF: RtlDecompressChunks+F4↑j
                mov     r13d, esi

loc_140911C58:                          ; CODE XREF: RtlDecompressChunks+163↑j
                lea     rcx, [rsp+78h+arg_0]
                mov     r9, r15
                mov     [rsp+78h+var_50], rcx
                mov     r8d, edi
                mov     [rsp+78h+var_58], eax
                mov     rdx, rbp
                mov     rax, [rsp+78h+arg_30]
                movzx   ecx, word ptr [rax]
                call    RtlDecompressBuffer
                test    eax, eax
                js      loc_140911D30
                mov     ecx, [rsp+78h+arg_0]
                cmp     edi, ecx
                jbe     short loc_140911CA5
                mov     r8d, edi
                xor     edx, edx
                sub     r8d, ecx
                add     rcx, rbp
                call    memset

loc_140911CA5:                          ; CODE XREF: RtlDecompressChunks+1A3↑j
                cmp     [r14], esi
                jb      short loc_140911CE9
                mov     r15, [rsp+78h+arg_20]
                add     esi, [rsp+78h+arg_28]
                sub     r15, r13
                and     [rsp+78h+arg_28], 0
                jmp     short loc_140911CE9
; ---------------------------------------------------------------------------

loc_140911CC6:                          ; CODE XREF: RtlDecompressChunks+68↑j
                                        ; RtlDecompressChunks+73↑j
                lea     rax, [rdi+rbp]
                mov     r8d, edi
                cmp     rax, rcx
                ja      short loc_140911D24
                xor     edx, edx
                mov     rcx, rbp
                call    memset
                test    ebx, ebx
                jnz     short loc_140911CE9
                mov     ebx, 1
                sub     r14, 4

loc_140911CE9:                          ; CODE XREF: RtlDecompressChunks+DA↑j
                                        ; RtlDecompressChunks+ED↑j ...
                mov     rcx, [rsp+78h+var_40]
                mov     eax, edi
                add     rbp, rax
                cmp     rbp, rcx
                ja      short loc_140911D24
                cmp     edi, r12d
                ja      short loc_140911D24
                mov     eax, [r14]
                dec     ebx
                add     r15, rax
                mov     [rsp+78h+arg_8], ebx
                sub     esi, eax
                add     r14, 4
                sub     r12d, edi
                jz      short loc_140911D20
                mov     edx, [rsp+78h+var_48]
                jmp     loc_140911B4D
; ---------------------------------------------------------------------------

loc_140911D20:                          ; CODE XREF: RtlDecompressChunks+225↑j
                xor     eax, eax
                jmp     short loc_140911D30
; ---------------------------------------------------------------------------

loc_140911D24:                          ; CODE XREF: RtlDecompressChunks+90↑j
                                        ; RtlDecompressChunks+FE↑j ...
                mov     eax, 0C0000242h
                jmp     short loc_140911D30
; ---------------------------------------------------------------------------

loc_140911D2B:                          ; CODE XREF: RtlDecompressChunks+53↑j
                                        ; RtlDecompressChunks+119↑j
                mov     eax, 0C000000Dh

loc_140911D30:                          ; CODE XREF: RtlDecompressChunks+194↑j
                                        ; RtlDecompressChunks+232↑j ...
                mov     rbx, [rsp+78h+arg_10]
                add     rsp, 40h
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
RtlDecompressChunks endp

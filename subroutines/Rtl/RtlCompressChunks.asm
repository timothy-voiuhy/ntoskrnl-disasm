RtlCompressChunks proc near             ; DATA XREF: .pdata:0000000140121DDC↑o

var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r12, [rsp+78h+arg_20]
                xor     ebx, ebx
                mov     ebp, edx
                mov     [rax+10h], ebx
                mov     rdx, rcx
                mov     eax, ebp
                shr     eax, 4
                mov     r14d, ebp
                mov     cl, [r12+3]
                lea     esi, [rbx+1]
                shl     esi, cl
                lea     r13, [r12+8]
                sub     r14d, eax
                mov     [r12+6], bx
                mov     r15, r8
                mov     [rsp+78h+arg_20], r13

loc_1409119D7:                          ; CODE XREF: RtlCompressChunks+130↓j
                mov     rax, [rsp+78h+arg_30]
                cmp     ebp, esi
                movzx   ecx, word ptr [r12]
                mov     edi, ebp
                mov     [rsp+78h+var_40], rax
                cmovnb  edi, esi
                lea     rax, [rsp+78h+arg_8]
                mov     r9, r15
                mov     [rsp+78h+var_48], rax
                mov     r8d, edi
                mov     [rsp+78h+var_50], esi
                mov     [rsp+78h+var_58], r14d
                call    RtlCompressBuffer
                cmp     eax, 117h
                jnz     short loc_140911A23
                mov     ecx, ebx
                mov     [rsp+78h+arg_8], ebx
                jmp     short loc_140911A72
; ---------------------------------------------------------------------------

loc_140911A23:                          ; CODE XREF: RtlCompressChunks+96↑j
                test    eax, eax
                jns     short loc_140911A6B
                cmp     r14d, esi
                jb      loc_140911AB8
                mov     rdx, [rsp+78h+arg_0]
                mov     rcx, r15
                mov     r8d, edi
                call    memmove
                cmp     esi, edi
                jbe     short loc_140911A58
                mov     r8d, esi
                lea     rcx, [r15+rdi]
                sub     r8d, edi
                xor     edx, edx
                call    memset

loc_140911A58:                          ; CODE XREF: RtlCompressChunks+C5↑j
                mov     r13, [rsp+78h+arg_20]
                mov     ecx, esi
                mov     [rsp+78h+arg_8], ecx
                jmp     short loc_140911A72
; ---------------------------------------------------------------------------

loc_140911A6B:                          ; CODE XREF: RtlCompressChunks+A5↑j
                mov     ecx, [rsp+78h+arg_8]

loc_140911A72:                          ; CODE XREF: RtlCompressChunks+A1↑j
                                        ; RtlCompressChunks+E9↑j
                mov     rdx, [rsp+78h+arg_0]
                mov     eax, 1
                mov     [r13+0], ecx
                add     r13, 4
                add     [r12+6], ax
                mov     eax, edi
                add     rdx, rax
                mov     [rsp+78h+arg_20], r13
                mov     [rsp+78h+arg_0], rdx
                cmp     edi, ebp
                ja      short loc_140911AC1
                mov     eax, ecx
                sub     r14d, ecx
                add     r15, rax
                sub     ebp, edi
                jnz     loc_1409119D7
                jmp     short loc_140911ABD
; ---------------------------------------------------------------------------

loc_140911AB8:                          ; CODE XREF: RtlCompressChunks+AA↑j
                mov     ebx, 0C0000023h

loc_140911ABD:                          ; CODE XREF: RtlCompressChunks+136↑j
                mov     eax, ebx
                jmp     short loc_140911AC6
; ---------------------------------------------------------------------------

loc_140911AC1:                          ; CODE XREF: RtlCompressChunks+124↑j
                mov     eax, 0C0000242h

loc_140911AC6:                          ; CODE XREF: RtlCompressChunks+13F↑j
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
RtlCompressChunks endp

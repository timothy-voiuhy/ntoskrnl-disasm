IoPropagateIrpExtensionEx proc near     ; CODE XREF: IoPropagateIrpExtension+A↑p
                                        ; DATA XREF: .rdata:0000000140060FCC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044A442 SIZE 000000BA BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, [rcx+0C8h]
                mov     edi, r9d
                mov     r14, r8
                mov     rbp, rdx
                mov     rbx, rcx
                test    rsi, rsi
                jz      loc_1402A29F4
                cmp     byte ptr [rcx+47h], 0
                jl      loc_1402A2A2F
                test    dil, 2
                jz      short loc_1402A2934
                cmp     byte ptr [rcx+47h], 0
                jl      short loc_1402A2934
                test    byte ptr [rsi+2], 1
                jnz     loc_1402A2A64

loc_1402A2934:                          ; CODE XREF: IoPropagateIrpExtensionEx+42↑j
                                        ; IoPropagateIrpExtensionEx+48↑j ...
                test    dil, 1
                jz      short loc_1402A295C
                mov     rax, [rbx+0C8h]
                cmp     byte ptr [rbx+47h], 0
                jl      loc_14044A442
                test    rax, rax
                jz      short loc_1402A295C
                movzx   eax, byte ptr [rax+2]
                test    al, 4
                jnz     loc_14044A442

loc_1402A295C:                          ; CODE XREF: IoPropagateIrpExtensionEx+58↑j
                                        ; IoPropagateIrpExtensionEx+6E↑j ...
                test    dil, 4
                jz      short loc_1402A2980
                mov     rax, [rbx+0C8h]
                cmp     byte ptr [rbx+47h], 0
                jl      short loc_1402A2980
                test    rax, rax
                jz      short loc_1402A2980
                movzx   eax, byte ptr [rax+2]
                test    al, 20h
                jnz     loc_14044A45A

loc_1402A2980:                          ; CODE XREF: IoPropagateIrpExtensionEx+80↑j
                                        ; IoPropagateIrpExtensionEx+8D↑j ...
                mov     r15d, 1
                test    dil, 8
                jz      short loc_1402A29AA
                mov     rax, [rbx+0C8h]
                cmp     byte ptr [rbx+47h], 0
                jl      short loc_1402A29AA
                test    rax, rax
                jz      short loc_1402A29AA
                movzx   eax, byte ptr [rax+2]
                test    al, 40h
                jnz     loc_1402A2A47

loc_1402A29AA:                          ; CODE XREF: IoPropagateIrpExtensionEx+AA↑j
                                        ; IoPropagateIrpExtensionEx+B7↑j ...
                test    dil, 10h
                jz      short loc_1402A29CE
                mov     rax, [rbx+0C8h]
                cmp     byte ptr [rbx+47h], 0
                jl      short loc_1402A29CE
                test    rax, rax
                jz      short loc_1402A29CE
                movzx   eax, byte ptr [rax+2]
                test    al, al
                js      loc_14044A4A2

loc_1402A29CE:                          ; CODE XREF: IoPropagateIrpExtensionEx+CE↑j
                                        ; IoPropagateIrpExtensionEx+DB↑j ...
                test    dil, 20h
                jz      short loc_1402A29F4
                mov     rax, [rbx+0C8h]
                cmp     byte ptr [rbx+47h], 0
                jl      short loc_1402A29F4
                test    rax, rax
                jz      short loc_1402A29F4
                movzx   eax, word ptr [rax+2]
                mov     ecx, 100h
                test    cx, ax
                jnz     short loc_1402A2A10

loc_1402A29F4:                          ; CODE XREF: IoPropagateIrpExtensionEx+2E↑j
                                        ; IoPropagateIrpExtensionEx+F2↑j ...
                xor     eax, eax

loc_1402A29F6:                          ; CODE XREF: IoPropagateIrpExtensionEx+1A5↓j
                                        ; IoPropagateIrpExtensionEx+1A7C17↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402A2A10:                          ; CODE XREF: IoPropagateIrpExtensionEx+112↑j
                mov     edx, 8
                mov     rcx, rbp
                call    sub_1402A2A90
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1402A2A80
                mov     rax, [rsi+38h]
                mov     [rcx+38h], rax
                jmp     short loc_1402A29F4
; ---------------------------------------------------------------------------

loc_1402A2A2F:                          ; CODE XREF: IoPropagateIrpExtensionEx+38↑j
                test    dil, 1
                jz      short loc_1402A29F4
                mov     edx, 2
                mov     rcx, rbp
                call    sub_1402A2A90
                mov     [rax+4], esi
                jmp     short loc_1402A29F4
; ---------------------------------------------------------------------------

loc_1402A2A47:                          ; CODE XREF: IoPropagateIrpExtensionEx+C4↑j
                mov     r8, gs:188h
                mov     r9d, r15d
                mov     rdx, [rsi+10h]
                mov     rcx, rbp
                call    sub_1402A4B88
                jmp     loc_1402A29AA
; ---------------------------------------------------------------------------

loc_1402A2A64:                          ; CODE XREF: IoPropagateIrpExtensionEx+4E↑j
                xor     edx, edx
                mov     rcx, rbp
                call    sub_1402A2A90
                test    rax, rax
                jz      short loc_1402A2A80
                movups  xmm0, xmmword ptr [rsi+18h]
                movups  xmmword ptr [rax+18h], xmm0
                jmp     loc_1402A2934
; ---------------------------------------------------------------------------

loc_1402A2A80:                          ; CODE XREF: IoPropagateIrpExtensionEx+143↑j
                                        ; IoPropagateIrpExtensionEx+191↑j ...
                mov     eax, 0C000009Ah
                jmp     loc_1402A29F6
IoPropagateIrpExtensionEx endp

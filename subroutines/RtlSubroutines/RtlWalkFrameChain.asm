RtlWalkFrameChain proc near             ; CODE XREF: RtlCaptureStackBackTrace+3D↑p
                                        ; sub_14030D258+15FA3B↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044CE26 SIZE 00000008 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     edi, r8d
                mov     esi, edx
                mov     r14, rcx
                test    r8d, 0FFFF00FCh
                jnz     loc_1402ABCD2
                mov     ebx, r8d
                and     edi, 3
                shr     ebx, 8
                cmp     ebx, 0FEh
                ja      loc_1402ABCD2
                cmp     edx, 0FFFFFFFFh
                jz      loc_1402ABCD2
                xor     r15d, r15d
                mov     ebp, 1
                test    dil, 2
                jnz     loc_14044CE26

loc_1402ABBED:                          ; CODE XREF: RtlWalkFrameChain+1A1299↓j
                add     ebx, ebp
                add     esi, ebp
                call    sub_14024B150
                test    al, al
                jz      loc_1402ABCCC
                mov     rax, cr8
                cmp     al, 2
                jnb     loc_1402ABCCC
                mov     rdx, gs:188h
                mov     eax, [rdx+514h]
                test    al, 2
                jnz     loc_1402ABCCC
                lea     rax, sub_1403B56D0
                cmp     [rdx+4D0h], rax
                jz      loc_1402ABCCC
                cmp     cs:qword_140CFC4A8, r15
                jz      loc_1402ABCCC
                mov     rax, [rdx+0B8h]
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rax+rcx*8]
                mov     rax, [rcx+1AC0h]
                test    rax, rax
                jz      short loc_1402ABCCC
                cmp     rdx, [rax+58h]
                jz      short loc_1402ABCCC

loc_1402ABC6D:                          ; CODE XREF: RtlWalkFrameChain+140↓j
                lea     rdx, [rsp+48h+var_28]
                mov     [rsp+48h+var_28], r15
                lea     rcx, [rsp+48h+arg_18]
                mov     [rsp+48h+arg_18], r15
                call    sub_14024AED0
                test    al, al
                jz      short loc_1402ABCD2
                call    sub_1403FDE10
                sub     rax, [rsp+48h+arg_18]
                cmp     rax, 0E30h
                jb      short loc_1402ABCD2
                mov     r9d, ebx
                mov     r8d, edi
                mov     edx, esi
                mov     rcx, r14
                call    sub_1402ABCE0
                test    eax, eax
                jz      short loc_1402ABCB2
                sub     eax, ebp

loc_1402ABCB2:                          ; CODE XREF: RtlWalkFrameChain+11E↑j
                                        ; RtlWalkFrameChain+144↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402ABCCC:                          ; CODE XREF: RtlWalkFrameChain+68↑j
                                        ; RtlWalkFrameChain+74↑j ...
                test    dil, 1
                jz      short loc_1402ABC6D

loc_1402ABCD2:                          ; CODE XREF: RtlWalkFrameChain+27↑j
                                        ; RtlWalkFrameChain+3C↑j ...
                xor     eax, eax
                jmp     short loc_1402ABCB2
RtlWalkFrameChain endp

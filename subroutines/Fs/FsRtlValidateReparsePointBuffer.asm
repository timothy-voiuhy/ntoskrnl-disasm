FsRtlValidateReparsePointBuffer proc near
                                        ; CODE XREF: sub_140894674+130↓p
                                        ; DATA XREF: .rdata:0000000140081490↑o ...

arg_0           = word ptr  20h
arg_8           = qword ptr  28h
arg_10          = word ptr  30h

; FUNCTION CHUNK AT 000000014047EB88 SIZE 0000007A BYTES

                mov     [rsp-18h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 20h
                lea     eax, [rcx-8]
                mov     r9, rdx
                cmp     eax, 3FF8h
                ja      loc_14034553B
                mov     edx, [rdx]
                test    edx, 0FFF0000h
                jnz     loc_14047EBF8
                cmp     edx, 2
                jbe     loc_14047EBF8
                mov     r8d, 30000000h
                mov     eax, edx
                and     eax, r8d
                cmp     eax, r8d
                jz      loc_14047EBF8
                cmp     edx, 0A0000019h
                jz      loc_14047EBF8
                movzx   r10d, word ptr [r9+4]
                lea     edi, [r10+8]
                lea     eax, [r10+18h]
                cmp     edi, ecx
                jnz     loc_14047EB88

loc_14034549C:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+139760↓j
                xor     esi, esi
                cmp     edi, ecx
                jnz     short loc_1403454AA
                test    edx, edx
                jns     loc_14034553B

loc_1403454AA:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+70↑j
                mov     r11d, 0A0000003h
                mov     r8d, 0A000000Ch
                cmp     eax, ecx
                jz      loc_14047EB95

loc_1403454BE:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+1397C3↓j
                cmp     edx, r11d
                jz      short loc_1403454D8
                cmp     edx, r8d
                jz      short loc_140345542

loc_1403454C8:                          ; CODE XREF: FsRtlValidateReparsePointBuffer:loc_140345539↓j
                xor     eax, eax

loc_1403454CA:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+C7↓j
                                        ; FsRtlValidateReparsePointBuffer+F2↓j ...
                mov     rbx, [rsp+20h+arg_8]
                add     rsp, 20h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403454D8:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+91↑j
                mov     [rbp+arg_0], si
                cmp     r10d, 8
                jb      short loc_14034553B
                movzx   ecx, word ptr [r9+0Ah]
                lea     r8, [rbp+arg_0]
                movzx   edx, word ptr [r9+0Eh]
                call    sub_140345604
                test    eax, eax
                jnz     short loc_1403454CA
                movzx   r11d, [rbp+arg_0]
                mov     eax, 0Ch
                add     r11d, 0Ch
                cmp     r11d, eax
                jb      loc_1403455F2
                lea     edx, [rax-0Ah]
                mov     [rbp+arg_0], si
                lea     r8, [rbp+arg_0]
                call    sub_140345604
                test    eax, eax
                jnz     short loc_1403454CA
                cmp     [r9+8], si
                jnz     short loc_14034553B
                movzx   eax, [rbp+arg_0]
                cmp     [r9+0Ch], ax
                jnz     short loc_14034553B
                cmp     r10d, r11d

loc_140345539:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+1BD↓j
                jz      short loc_1403454C8

loc_14034553B:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+1A↑j
                                        ; FsRtlValidateReparsePointBuffer+74↑j ...
                mov     eax, 0C0000278h
                jmp     short loc_1403454CA
; ---------------------------------------------------------------------------

loc_140345542:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+96↑j
                mov     eax, 0Ch
                mov     [rbp+arg_10], si
                mov     [rbp+arg_0], si
                cmp     r10w, ax
                jb      short loc_14034553B
                movzx   r10d, word ptr [r9+0Ah]
                lea     r8, [rbp+arg_10]
                movzx   ebx, word ptr [r9+8]
                movzx   edx, r10w
                movzx   ecx, bx
                call    sub_140345604
                test    eax, eax
                jnz     loc_1403454CA
                movzx   r11d, word ptr [r9+0Eh]
                lea     r8, [rbp+arg_0]
                movzx   r9d, word ptr [r9+0Ch]
                movzx   edx, r11w
                movzx   ecx, r9w
                call    sub_140345604
                test    eax, eax
                jnz     loc_1403454CA
                movzx   ecx, [rbp+arg_0]
                add     ecx, 14h
                cmp     ecx, 14h
                jb      short loc_1403455F2
                movzx   eax, [rbp+arg_10]
                add     eax, 14h
                cmp     eax, 14h
                jb      short loc_1403455F2
                cmp     edi, eax
                jb      short loc_14034553B
                cmp     edi, ecx
                jb      short loc_14034553B
                test    r10w, r10w
                jz      loc_14034553B
                test    r11w, r11w
                jz      loc_14034553B
                mov     al, 1
                test    al, r10b
                jnz     loc_14034553B
                test    al, r11b
                jnz     loc_14034553B
                test    al, bl
                jnz     loc_14034553B
                test    al, r9b
                jmp     loc_140345539
; ---------------------------------------------------------------------------

loc_1403455F2:                          ; CODE XREF: FsRtlValidateReparsePointBuffer+DA↑j
                                        ; FsRtlValidateReparsePointBuffer+174↑j ...
                mov     eax, 0C0000095h
                jmp     loc_1403454CA
FsRtlValidateReparsePointBuffer endp

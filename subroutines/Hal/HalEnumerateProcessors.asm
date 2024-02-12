HalEnumerateProcessors proc near        ; CODE XREF: sub_1404F3604+100↓p
                                        ; sub_140A4F854+F0↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AAED2 SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdx, gs:20h
                mov     edi, 1
                mov     rax, gs:20h
                mov     r11d, ecx
                mov     rcx, cs:qword_140C4BD28
                mov     ebx, edi
                mov     r10d, cs:dword_140C50780
                mov     r8d, [rax+98h]
                imul    r8d, [rdx+9Ch]
                mov     edx, edi
                mov     r9d, [rcx+8]
                sub     r8d, edi
                not     r8d
                and     r9d, r8d
                cmp     r10d, edi
                jbe     short loc_1403B4E74
                add     rcx, 48h ; 'H'

loc_1403B4E5B:                          ; CODE XREF: HalEnumerateProcessors+72↓j
                mov     eax, [rcx]
                and     eax, r8d
                cmp     r9d, eax
                jnz     loc_1404AAED2

loc_1403B4E69:                          ; CODE XREF: HalEnumerateProcessors+F60E0↓j
                add     ebx, edi
                add     rcx, 40h ; '@'
                cmp     ebx, r10d
                jb      short loc_1403B4E5B

loc_1403B4E74:                          ; CODE XREF: HalEnumerateProcessors+55↑j
                                        ; HalEnumerateProcessors+F60DA↓j
                mov     eax, cs:dword_140CF4D7C
                test    eax, eax
                jnz     short loc_1403B4EA3

loc_1403B4E7E:                          ; CODE XREF: HalEnumerateProcessors+A8↓j
                call    sub_14037B664
                sub     eax, edi
                cmp     eax, 3
                cmova   ebx, edi
                call    sub_1403A2364
                cmp     ebx, eax
                cmovnb  ebx, eax
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4EA3:                          ; CODE XREF: HalEnumerateProcessors+7C↑j
                cmp     eax, ebx
                cmovb   ebx, eax
                jmp     short loc_1403B4E7E
HalEnumerateProcessors endp

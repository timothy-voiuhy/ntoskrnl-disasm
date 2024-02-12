KeEnterKernelDebugger proc near         ; DATA XREF: .pdata:00000001400F37B0↑o
                sub     rsp, 28h
                mov     r10d, 1
                mov     eax, r10d
                xchg    eax, cs:dword_140C313E4
                cli
                mov     rcx, cr8
                lea     edx, [r10+0Eh]
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140517BE5
                test    r10b, al
                jz      short loc_140517BE5
                cmp     cl, dl
                ja      short loc_140517BE5
                mov     rax, gs:20h
                mov     edx, r10d
                movzx   ecx, cl
                add     ecx, r10d
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                sub     edx, r10d
                not     edx
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      edx, r8d
                mov     [r9+14h], edx

loc_140517BE5:                          ; CODE XREF: KeEnterKernelDebugger+28↑j
                                        ; KeEnterKernelDebugger+2D↑j ...
                cmp     cs:KdDebuggerEnabled, 0
                jnz     short loc_140517C0C
                cmp     cs:byte_140C0F430, 0
                jnz     short loc_140517C0C
                xchg    r10d, cs:dword_140CF9EA8
                test    r10d, r10d
                jnz     short loc_140517C0C
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1409B7160

loc_140517C0C:                          ; CODE XREF: KeEnterKernelDebugger+6C↑j
                                        ; KeEnterKernelDebugger+75↑j ...
                mov     ecx, 5
                call    sub_140517F80
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeEnterKernelDebugger endp

PsSetJobProperty proc near              ; DATA XREF: .pdata:00000001400F7758↑o
                sub     rsp, 28h
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_1405817B4
                lea     rax, [rcx-30h]
                shr     rax, 8
                lea     r9, qword_140CFCE60
                movzx   r10d, al
                movzx   eax, byte ptr [rcx-18h]
                xor     r10, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     r10, rax
                mov     rax, cs:PsJobType
                cmp     [r9+r10*8], rax
                jz      short loc_1405817B4
                mov     eax, 0C000000Dh
                jmp     short loc_1405817CC
; ---------------------------------------------------------------------------

loc_1405817B4:                          ; CODE XREF: PsSetJobProperty+A↑j
                                        ; PsSetJobProperty+3B↑j
                add     rcx, 500h
                test    r8, r8
                jz      short loc_1405817C7
                call    sub_140325AB0
                jmp     short loc_1405817CC
; ---------------------------------------------------------------------------

loc_1405817C7:                          ; CODE XREF: PsSetJobProperty+4E↑j
                call    sub_140325918

loc_1405817CC:                          ; CODE XREF: PsSetJobProperty+42↑j
                                        ; PsSetJobProperty+55↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetJobProperty endp

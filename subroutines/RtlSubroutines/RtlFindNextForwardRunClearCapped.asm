RtlFindNextForwardRunClearCapped proc near
                                        ; DATA XREF: .pdata:00000001400F7C20↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                push    r15
                mov     esi, [rcx]
                mov     r14, r9
                mov     r10d, edx
                mov     r11d, r8d
                mov     rbx, rcx
                cmp     esi, edx
                ja      short loc_140587770
                mov     [r9], r10d
                xor     r9d, r9d
                jmp     loc_140587856
; ---------------------------------------------------------------------------

loc_140587770:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+23↑j
                mov     rdx, [rcx+8]
                lea     r15, qword_140011060
                lea     ecx, [rsi-1]
                mov     rax, r10
                shr     rcx, 5
                shr     rax, 5
                lea     rdi, [rdx+rcx*4]
                lea     r8, [rdx+rax*4]
                cmp     r8, rdi
                jz      short loc_1405877CB
                mov     eax, r10d
                or      ecx, 0FFFFFFFFh
                and     eax, 1Fh
                mov     edx, eax
                mov     eax, [r15+rax*4]
                or      eax, [r8]
                cmp     eax, ecx
                jnz     short loc_1405877CB
                sub     r10d, edx
                add     r10d, 20h ; ' '
                add     r8, 4
                jmp     short loc_1405877C6
; ---------------------------------------------------------------------------

loc_1405877B9:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+89↓j
                cmp     [r8], ecx
                jnz     short loc_1405877CB
                add     r8, 4
                add     r10d, 20h ; ' '

loc_1405877C6:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+77↑j
                cmp     r8, rdi
                jb      short loc_1405877B9

loc_1405877CB:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+54↑j
                                        ; RtlFindNextForwardRunClearCapped+6A↑j ...
                cmp     r10d, esi
                jnb     short loc_1405877E2
                mov     rax, [rbx+8]

loc_1405877D4:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+A0↓j
                bt      [rax], r10d
                jnb     short loc_1405877E2
                inc     r10d
                cmp     r10d, esi
                jb      short loc_1405877D4

loc_1405877E2:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+8E↑j
                                        ; RtlFindNextForwardRunClearCapped+98↑j
                xor     r9d, r9d
                mov     edx, r9d
                cmp     r8, rdi
                jz      short loc_140587828
                mov     ecx, [r8]
                mov     eax, r10d
                and     eax, 1Fh
                mov     esi, eax
                mov     eax, [r15+rax*4]
                not     eax
                and     eax, ecx
                jnz     short loc_140587828
                lea     edx, [rax+20h]
                sub     edx, esi
                cmp     edx, r11d
                jnb     short loc_140587849
                add     r8, 4
                jmp     short loc_140587823
; ---------------------------------------------------------------------------

loc_140587812:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+E6↓j
                cmp     [r8], r9d
                jnz     short loc_140587828
                add     r8, 4
                add     edx, 20h ; ' '
                cmp     edx, r11d
                jnb     short loc_140587849

loc_140587823:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+D0↑j
                cmp     r8, rdi
                jb      short loc_140587812

loc_140587828:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+AB↑j
                                        ; RtlFindNextForwardRunClearCapped+C0↑j ...
                mov     ecx, [rbx]
                lea     eax, [rdx+r10]
                cmp     eax, ecx
                jnb     short loc_140587849
                mov     r8, [rbx+8]

loc_140587836:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+107↓j
                bt      [r8], eax
                jb      short loc_140587849
                cmp     edx, r11d
                jnb     short loc_140587849
                inc     eax
                inc     edx
                cmp     eax, ecx
                jb      short loc_140587836

loc_140587849:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+CA↑j
                                        ; RtlFindNextForwardRunClearCapped+E1↑j ...
                cmp     edx, r11d
                mov     [r14], r10d
                mov     r9d, edx
                cmova   r9d, r11d

loc_140587856:                          ; CODE XREF: RtlFindNextForwardRunClearCapped+2B↑j
                mov     rbx, [rsp+10h+arg_0]
                mov     eax, r9d
                mov     rsi, [rsp+10h+arg_10]
                mov     rdi, [rsp+10h+arg_18]
                pop     r15
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFindNextForwardRunClearCapped endp

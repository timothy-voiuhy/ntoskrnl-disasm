RtlFindNextForwardRunClearEx proc near  ; CODE XREF: sub_1403F4750+8A↑p
                                        ; sub_1408D756C+B6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r15
                mov     r10, [rcx]
                mov     rsi, r8
                mov     r9, rdx
                mov     r11, rcx
                cmp     r10, rdx
                ja      short loc_1405878B1
                mov     [r8], rdx
                xor     r10d, r10d
                jmp     loc_1405879A0
; ---------------------------------------------------------------------------

loc_1405878B1:                          ; CODE XREF: RtlFindNextForwardRunClearEx+24↑j
                mov     rcx, [rcx+8]
                lea     rax, [r10-1]
                shr     rax, 5
                lea     r15, qword_140011060
                lea     rbx, [rcx+rax*4]
                mov     rax, r9
                shr     rax, 5
                lea     r8, [rcx+rax*4]
                cmp     r8, rbx
                jz      short loc_14058790C
                mov     rax, r9
                and     eax, 1Fh
                mov     ecx, [r15+rax*4]
                or      eax, 0FFFFFFFFh
                or      ecx, [r8]
                cmp     ecx, eax
                jnz     short loc_14058790C
                and     r9, 0FFFFFFFFFFFFFFE0h
                add     r9, 20h ; ' '
                add     r8, 4
                jmp     short loc_140587907
; ---------------------------------------------------------------------------

loc_1405878FA:                          ; CODE XREF: RtlFindNextForwardRunClearEx+8A↓j
                cmp     [r8], eax
                jnz     short loc_14058790C
                add     r8, 4
                add     r9, 20h ; ' '

loc_140587907:                          ; CODE XREF: RtlFindNextForwardRunClearEx+78↑j
                cmp     r8, rbx
                jb      short loc_1405878FA

loc_14058790C:                          ; CODE XREF: RtlFindNextForwardRunClearEx+56↑j
                                        ; RtlFindNextForwardRunClearEx+6A↑j ...
                cmp     r9, r10
                jnb     short loc_140587923
                mov     rax, [r11+8]

loc_140587915:                          ; CODE XREF: RtlFindNextForwardRunClearEx+A1↓j
                bt      [rax], r9
                jnb     short loc_140587923
                inc     r9
                cmp     r9, r10
                jb      short loc_140587915

loc_140587923:                          ; CODE XREF: RtlFindNextForwardRunClearEx+8F↑j
                                        ; RtlFindNextForwardRunClearEx+99↑j
                xor     r10d, r10d
                or      rbp, 0FFFFFFFFFFFFFFFFh
                mov     edx, r10d
                cmp     r8, rbx
                jz      short loc_14058796D
                mov     ecx, [r8]
                mov     rdi, r9
                and     edi, 1Fh
                mov     eax, [r15+rdi*4]
                not     eax
                and     ecx, eax
                jnz     short loc_14058796D
                lea     edx, [rbp+21h]
                sub     rdx, rdi
                cmp     rdx, rbp
                jnb     short loc_140587993
                add     r8, 4
                jmp     short loc_140587968
; ---------------------------------------------------------------------------

loc_140587956:                          ; CODE XREF: RtlFindNextForwardRunClearEx+EB↓j
                cmp     [r8], r10d
                jnz     short loc_14058796D
                add     r8, 4
                add     rdx, 20h ; ' '
                cmp     rdx, rbp
                jnb     short loc_140587993

loc_140587968:                          ; CODE XREF: RtlFindNextForwardRunClearEx+D4↑j
                cmp     r8, rbx
                jb      short loc_140587956

loc_14058796D:                          ; CODE XREF: RtlFindNextForwardRunClearEx+B0↑j
                                        ; RtlFindNextForwardRunClearEx+C3↑j ...
                mov     rcx, [r11]
                lea     rax, [rdx+r9]
                cmp     rax, rcx
                jnb     short loc_140587993
                mov     r8, [r11+8]

loc_14058797D:                          ; CODE XREF: RtlFindNextForwardRunClearEx+111↓j
                bt      [r8], rax
                jb      short loc_140587993
                cmp     rdx, rbp
                jnb     short loc_140587993
                inc     rax
                inc     rdx
                cmp     rax, rcx
                jb      short loc_14058797D

loc_140587993:                          ; CODE XREF: RtlFindNextForwardRunClearEx+CE↑j
                                        ; RtlFindNextForwardRunClearEx+E6↑j ...
                cmp     rdx, rbp
                mov     [rsi], r9
                mov     r10, rdx
                cmova   r10, rbp

loc_1405879A0:                          ; CODE XREF: RtlFindNextForwardRunClearEx+2C↑j
                mov     rbx, [rsp+8+arg_0]
                mov     rax, r10
                mov     rbp, [rsp+8+arg_8]
                mov     rsi, [rsp+8+arg_10]
                mov     rdi, [rsp+8+arg_18]
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFindNextForwardRunClearEx endp

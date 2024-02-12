RtlFindNextForwardRunClear proc near    ; CODE XREF: sub_1405FFB2C+29↓p
                                        ; sub_140673048+49↓p ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r15
                mov     r10d, [rcx]
                mov     rsi, r8
                mov     r9d, edx
                mov     r11, rcx
                cmp     r10d, edx
                jbe     loc_14020B2A4
                mov     rdx, [rcx+8]
                lea     r15, qword_140011060
                lea     ecx, [r10-1]
                mov     eax, r9d
                shr     rcx, 5
                or      ebp, 0FFFFFFFFh
                shr     rax, 5
                lea     rbx, [rdx+rcx*4]
                lea     r8, [rdx+rax*4]
                cmp     r8, rbx
                jz      short loc_14020B203
                mov     eax, r9d
                and     eax, 1Fh
                mov     edx, eax
                mov     eax, [r15+rax*4]
                or      eax, [r8]
                cmp     eax, ebp
                jnz     short loc_14020B203
                sub     r9d, edx
                add     r9d, 20h ; ' '
                add     r8, 4

loc_14020B1EF:                          ; CODE XREF: RtlFindNextForwardRunClear+81↓j
                cmp     r8, rbx
                jnb     short loc_14020B203
                cmp     [r8], ebp
                jnz     short loc_14020B203
                add     r8, 4
                add     r9d, 20h ; ' '
                jmp     short loc_14020B1EF
; ---------------------------------------------------------------------------

loc_14020B203:                          ; CODE XREF: RtlFindNextForwardRunClear+4F↑j
                                        ; RtlFindNextForwardRunClear+62↑j ...
                cmp     r9d, r10d
                jnb     short loc_14020B21A
                mov     rax, [r11+8]

loc_14020B20C:                          ; CODE XREF: RtlFindNextForwardRunClear+98↓j
                bt      [rax], r9d
                jnb     short loc_14020B21A
                inc     r9d
                cmp     r9d, r10d
                jb      short loc_14020B20C

loc_14020B21A:                          ; CODE XREF: RtlFindNextForwardRunClear+86↑j
                                        ; RtlFindNextForwardRunClear+90↑j
                xor     r10d, r10d
                mov     edx, r10d
                cmp     r8, rbx
                jz      short loc_14020B23A
                mov     ecx, [r8]
                mov     eax, r9d
                and     eax, 1Fh
                mov     edi, eax
                mov     eax, [r15+rax*4]
                not     eax
                and     eax, ecx
                jz      short loc_14020B27E

loc_14020B23A:                          ; CODE XREF: RtlFindNextForwardRunClear+A3↑j
                                        ; RtlFindNextForwardRunClear+110↓j ...
                mov     ecx, [r11]
                lea     eax, [rdx+r9]
                cmp     eax, ecx
                jnb     short loc_14020B25B
                mov     r8, [r11+8]

loc_14020B249:                          ; CODE XREF: RtlFindNextForwardRunClear+D9↓j
                bt      [r8], eax
                jb      short loc_14020B25B
                cmp     edx, ebp
                jnb     short loc_14020B25B
                inc     eax
                inc     edx
                cmp     eax, ecx
                jb      short loc_14020B249

loc_14020B25B:                          ; CODE XREF: RtlFindNextForwardRunClear+C3↑j
                                        ; RtlFindNextForwardRunClear+CD↑j ...
                cmp     edx, ebp
                mov     [rsi], r9d
                mov     r10d, edx
                cmova   r10d, ebp

loc_14020B267:                          ; CODE XREF: RtlFindNextForwardRunClear+12A↓j
                mov     rbx, [rsp+10h+arg_0]
                mov     eax, r10d
                mov     rbp, [rsp+10h+arg_10]
                mov     rsi, [rsp+10h+arg_18]
                pop     r15
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14020B27E:                          ; CODE XREF: RtlFindNextForwardRunClear+B8↑j
                mov     edx, 20h ; ' '
                sub     edx, edi
                cmp     edx, ebp
                jnb     short loc_14020B25B
                add     r8, 4

loc_14020B28D:                          ; CODE XREF: RtlFindNextForwardRunClear+120↓j
                cmp     r8, rbx
                jnb     short loc_14020B23A
                cmp     [r8], r10d
                jnz     short loc_14020B23A
                add     r8, 4
                add     edx, 20h ; ' '
                cmp     edx, ebp
                jb      short loc_14020B28D
                jmp     short loc_14020B25B
; ---------------------------------------------------------------------------

loc_14020B2A4:                          ; CODE XREF: RtlFindNextForwardRunClear+21↑j
                mov     [r8], r9d
                xor     r10d, r10d
                jmp     short loc_14020B267
RtlFindNextForwardRunClear endp

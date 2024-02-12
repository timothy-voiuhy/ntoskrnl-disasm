RtlFindLastBackwardRunClear proc near   ; CODE XREF: sub_14034E9F0+3C↑p
                                        ; sub_140542CA0+1C9↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140482FF4 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     r10, r8
                cmp     [rcx], edx
                jbe     loc_140482FF4
                mov     r9, [rcx+8]
                lea     rsi, qword_140011060
                mov     eax, edx
                or      ebx, 0FFFFFFFFh
                shr     rax, 5
                lea     r8, [r9+rax*4]
                cmp     r8, r9
                jz      short loc_14034EAC9
                mov     r11d, edx
                and     r11d, 1Fh
                lea     eax, [r11+1]
                mov     eax, [rsi+rax*4]
                not     eax
                or      eax, [r8]
                cmp     eax, ebx
                jz      short loc_14034EB30

loc_14034EAC9:                          ; CODE XREF: RtlFindLastBackwardRunClear+30↑j
                                        ; RtlFindLastBackwardRunClear+5C↓j ...
                cmp     edx, ebx
                jz      short loc_14034EADE
                mov     eax, edx
                bt      [r9], rax
                setb    al
                cmp     al, 1
                jnz     short loc_14034EADE
                add     edx, ebx
                jmp     short loc_14034EAC9
; ---------------------------------------------------------------------------

loc_14034EADE:                          ; CODE XREF: RtlFindLastBackwardRunClear+4B↑j
                                        ; RtlFindLastBackwardRunClear+58↑j
                mov     eax, edx
                mov     ecx, edx
                and     eax, 1Fh
                mov     eax, [rsi+rax*4]
                test    [r8], eax
                jz      short loc_14034EB13

loc_14034EAED:                          ; CODE XREF: RtlFindLastBackwardRunClear+7B↓j
                                        ; RtlFindLastBackwardRunClear+9F↓j ...
                cmp     ecx, ebx
                jz      short loc_14034EAFD
                mov     eax, ecx
                bt      [r9], rax
                jb      short loc_14034EAFD
                add     ecx, ebx
                jmp     short loc_14034EAED
; ---------------------------------------------------------------------------

loc_14034EAFD:                          ; CODE XREF: RtlFindLastBackwardRunClear+6F↑j
                                        ; RtlFindLastBackwardRunClear+77↑j
                lea     eax, [rcx+1]
                sub     edx, ecx
                mov     [r10], eax
                mov     eax, edx

loc_14034EB07:                          ; CODE XREF: RtlFindLastBackwardRunClear+134579↓j
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034EB13:                          ; CODE XREF: RtlFindLastBackwardRunClear+6B↑j
                and     ecx, 0FFFFFFE0h
                dec     ecx
                sub     r8, 4

loc_14034EB1C:                          ; CODE XREF: RtlFindLastBackwardRunClear+AE↓j
                cmp     r8, r9
                jbe     short loc_14034EAED
                cmp     dword ptr [r8], 0
                jnz     short loc_14034EAED
                sub     r8, 4
                add     ecx, 0FFFFFFE0h
                jmp     short loc_14034EB1C
; ---------------------------------------------------------------------------

loc_14034EB30:                          ; CODE XREF: RtlFindLastBackwardRunClear+47↑j
                sub     edx, r11d
                dec     edx
                sub     r8, 4

loc_14034EB39:                          ; CODE XREF: RtlFindLastBackwardRunClear+CA↓j
                cmp     r8, r9
                jbe     short loc_14034EAC9
                cmp     [r8], ebx
                jnz     short loc_14034EAC9
                sub     r8, 4
                add     edx, 0FFFFFFE0h
                jmp     short loc_14034EB39
RtlFindLastBackwardRunClear endp

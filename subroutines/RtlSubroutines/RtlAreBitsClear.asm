RtlAreBitsClear proc near               ; CODE XREF: sub_14066EE08+47↓p
                                        ; sub_14079E9F0+4CA↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     eax, [rcx]
                mov     r9d, edx
                cmp     edx, eax
                jnb     loc_1402B0753
                cmp     r8d, 1
                ja      short loc_1402B06D0
                jnz     loc_1402B0753
                mov     rax, [rcx+8]
                bt      [rax], r9d
                setnb   al

loc_1402B06C9:                          ; CODE XREF: RtlAreBitsClear+7D↓j
                                        ; RtlAreBitsClear+97↓j ...
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402B06D0:                          ; CODE XREF: RtlAreBitsClear+16↑j
                sub     eax, r9d
                cmp     eax, r8d
                jb      short loc_1402B0753
                mov     rcx, [rcx+8]
                lea     r11d, [r8-1]
                add     r11d, r9d
                mov     rax, r9
                shr     rax, 5
                lea     rdx, [rcx+rax*4]
                mov     eax, r11d
                mov     ebx, [rdx]
                shr     rax, 5
                lea     r10, [rcx+rax*4]
                cmp     rdx, r10
                jz      short loc_1402B0739
                or      r8d, 0FFFFFFFFh
                mov     ecx, r9d
                mov     eax, r8d
                shl     eax, cl
                test    eax, ebx
                jnz     short loc_1402B0753
                add     rdx, 4
                cmp     rdx, r10
                jz      short loc_1402B0728
                xor     eax, eax

loc_1402B071B:                          ; CODE XREF: RtlAreBitsClear+86↓j
                cmp     [rdx], eax
                jnz     short loc_1402B06C9
                add     rdx, 4
                cmp     rdx, r10
                jnz     short loc_1402B071B

loc_1402B0728:                          ; CODE XREF: RtlAreBitsClear+77↑j
                not     r11d
                mov     cl, r11b
                shr     r8d, cl
                test    [rdx], r8d

loc_1402B0734:                          ; CODE XREF: RtlAreBitsClear+B1↓j
                setz    al
                jmp     short loc_1402B06C9
; ---------------------------------------------------------------------------

loc_1402B0739:                          ; CODE XREF: RtlAreBitsClear+5E↑j
                mov     ecx, 20h ; ' '
                sub     ecx, r8d
                or      r8d, 0FFFFFFFFh
                shr     r8d, cl
                mov     ecx, r9d
                shl     r8d, cl
                test    r8d, ebx
                jmp     short loc_1402B0734
; ---------------------------------------------------------------------------

loc_1402B0753:                          ; CODE XREF: RtlAreBitsClear+C↑j
                                        ; RtlAreBitsClear+18↑j ...
                xor     eax, eax
                jmp     loc_1402B06C9
RtlAreBitsClear endp

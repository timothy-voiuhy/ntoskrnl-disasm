RtlComputeCrc32 proc near               ; CODE XREF: sub_140210E00+213986↓p
                                        ; sub_1402EF980+1733DD↓p ...
                mov     r9, rdx
                not     ecx
                test    r8d, r8d
                jz      short loc_1403386F2
                mov     r10d, r8d
                lea     r11, qword_140011940
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_1403386D0:                          ; CODE XREF: RtlComputeCrc32+40↓j
                movzx   eax, byte ptr [r9]
                lea     r9, [r9+1]
                mov     edx, ecx
                xor     rdx, rax
                mov     eax, ecx
                shr     eax, 8
                movzx   r8d, dl
                mov     ecx, [r11+r8*4]
                xor     ecx, eax
                sub     r10, 1
                jnz     short loc_1403386D0

loc_1403386F2:                          ; CODE XREF: RtlComputeCrc32+8↑j
                not     ecx
                mov     eax, ecx
                retn
RtlComputeCrc32 endp

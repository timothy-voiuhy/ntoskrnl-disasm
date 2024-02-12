KeAddProcessorAffinityEx proc near      ; CODE XREF: sub_140215D38+111↑p
                                        ; sub_140253E20+44A↑p ...
                mov     eax, edx
                mov     r9, rcx
                lea     rcx, dword_140D010D0
                mov     r8d, [rcx+rax*4]
                mov     eax, r8d
                movzx   edx, word ptr [r9]
                and     r8d, 3Fh
                shr     eax, 6
                cmp     edx, eax
                jbe     short loc_14025A458

loc_14025A442:                          ; CODE XREF: KeAddProcessorAffinityEx+3F↓j
                mov     rcx, [r9+rax*8+8]
                lea     rdx, [r9+rax*8]
                mov     eax, r8d
                bts     rcx, rax
                mov     [rdx+8], rcx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14025A458:                          ; CODE XREF: KeAddProcessorAffinityEx+20↑j
                lea     ecx, [rax+1]
                mov     [r9], cx
                jmp     short loc_14025A442
KeAddProcessorAffinityEx endp

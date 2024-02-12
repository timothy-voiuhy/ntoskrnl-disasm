KeRemoveProcessorAffinityEx proc near   ; CODE XREF: sub_14024EFB0+402↑p
                                        ; sub_140254310+1A12↑p ...
                mov     eax, edx
                mov     r8, rcx
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rax*4]
                mov     eax, ecx
                movzx   edx, word ptr [r8]
                shr     eax, 6
                cmp     edx, eax
                jbe     short locret_14028EC7F
                mov     edx, eax
                and     ecx, 3Fh
                mov     rax, [r8+rax*8+8]
                btr     rax, rcx
                mov     [r8+rdx*8+8], rax

locret_14028EC7F:                       ; CODE XREF: KeRemoveProcessorAffinityEx+1A↑j
                retn
KeRemoveProcessorAffinityEx endp

KeProcessorGroupAffinity proc near      ; DATA XREF: .pdata:00000001400D90E0↑o
                                        ; sub_140A1EEE4+2D79↓o ...
                mov     r8, rcx
                mov     eax, edx
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rax*4]
                xor     eax, eax
                mov     [r8+0Ah], eax
                mov     [r8+0Eh], ax
                mov     eax, ecx
                shr     eax, 6
                and     ecx, 3Fh
                mov     [r8+8], ax
                mov     eax, 1
                shl     rax, cl
                mov     [r8], rax
                retn
KeProcessorGroupAffinity endp

KeCheckProcessorGroupAffinity proc near ; CODE XREF: sub_1403DDA90+BAB↓p
                                        ; DATA XREF: .pdata:00000001400DCDA0↑o
                mov     eax, edx
                mov     r9, rcx
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rax*4]
                mov     edx, ecx
                movzx   r8d, word ptr [r9+8]
                xor     eax, eax
                shr     edx, 6
                cmp     edx, r8d
                mov     rdx, [r9]
                setz    al
                and     ecx, 3Fh
                shr     rdx, cl
                and     eax, edx
                retn
KeCheckProcessorGroupAffinity endp

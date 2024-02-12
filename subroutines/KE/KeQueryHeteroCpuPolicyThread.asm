KeQueryHeteroCpuPolicyThread proc near  ; CODE XREF: sub_14051349C+19↓p
                                        ; NtQueryInformationThread+1E3340↓p
                                        ; DATA XREF: ...
                test    edx, edx
                jz      short loc_140513388
                movzx   eax, byte ptr [rcx+7Eh]
                and     eax, 7Fh
                cmp     eax, 8
                jnz     short locret_14051338C
                mov     eax, cs:dword_140CFB084
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140513388:                          ; CODE XREF: KeQueryHeteroCpuPolicyThread+2↑j
                movzx   eax, byte ptr [rcx+7Dh]

locret_14051338C:                       ; CODE XREF: KeQueryHeteroCpuPolicyThread+E↑j
                retn
KeQueryHeteroCpuPolicyThread endp

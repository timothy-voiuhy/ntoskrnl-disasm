FsRtlAllocateResource proc near         ; DATA XREF: .pdata:000000014011C1C0↑o
                mov     ecx, cs:dword_140D2D2F8
                mov     eax, ecx
                and     eax, 0Fh
                inc     ecx
                imul    rax, 68h ; 'h'
                mov     cs:dword_140D2D2F8, ecx
                add     rax, cs:qword_140C47758
                retn
FsRtlAllocateResource endp

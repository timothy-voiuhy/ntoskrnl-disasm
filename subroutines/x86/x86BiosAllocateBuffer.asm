x86BiosAllocateBuffer proc near         ; DATA XREF: .pdata:00000001400DFA58↑o
                cmp     cs:byte_140C4C331, 1
                jnz     short loc_1403CB53A
                xor     r10d, r10d
                cmp     cs:byte_140C5085C, r10b
                jnz     short loc_1403CB53A
                mov     eax, cs:dword_140C50858
                cmp     [rcx], eax
                ja      short loc_1403CB53A
                mov     r9d, 2000h
                mov     cs:byte_140C5085C, 1
                mov     [rdx], r9w
                mov     [r8], r10w
                mov     [rcx], eax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403CB53A:                          ; CODE XREF: x86BiosAllocateBuffer+7↑j
                                        ; x86BiosAllocateBuffer+13↑j ...
                mov     eax, 0C000009Ah
                retn
x86BiosAllocateBuffer endp

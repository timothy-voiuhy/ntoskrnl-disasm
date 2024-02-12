KeGetClockTimerResolution proc near     ; DATA XREF: .pdata:00000001400F3468↑o
                mov     eax, cs:dword_140CFC468
                mov     [rdx], eax
                mov     eax, cs:dword_140C314C8
                mov     [rcx], eax
                retn
KeGetClockTimerResolution endp

ExQueryTimerResolution proc near        ; DATA XREF: .pdata:00000001400E00B8↑o
                mov     eax, cs:dword_140CFC418
                mov     [rcx], eax
                mov     eax, cs:dword_140CFC4C0
                mov     [rdx], eax
                mov     eax, cs:dword_140CFC468
                mov     [r8], eax
                retn
ExQueryTimerResolution endp

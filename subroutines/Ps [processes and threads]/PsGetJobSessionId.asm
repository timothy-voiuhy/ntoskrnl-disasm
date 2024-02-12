PsGetJobSessionId proc near             ; DATA XREF: .pdata:00000001400C9144↑o
                mov     eax, [rcx+1E0h]
                or      ecx, 0FFFFFFFFh
                cmp     eax, 0FFFFFFFDh
                cmova   eax, ecx
                retn
PsGetJobSessionId endp

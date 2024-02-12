RtlGetDefaultCodePage proc near         ; DATA XREF: .pdata:000000014010A910↑o
                movzx   eax, cs:NlsAnsiCodePage
                mov     [rcx], ax
                movzx   eax, cs:NlsOemCodePage
                mov     [rdx], ax
                retn
RtlGetDefaultCodePage endp

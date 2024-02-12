RtlSubAuthoritySid proc near            ; CODE XREF: NtSetInformationToken+58F↓p
                                        ; NtSetInformationToken+608↓p ...
                mov     eax, edx
                add     rax, 2
                lea     rax, [rcx+rax*4]
                retn
RtlSubAuthoritySid endp

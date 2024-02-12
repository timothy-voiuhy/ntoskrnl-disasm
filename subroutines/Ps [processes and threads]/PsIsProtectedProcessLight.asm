PsIsProtectedProcessLight proc near     ; CODE XREF: sub_14067EC44+1F09↓p
                                        ; DATA XREF: .pdata:00000001400D7F28↑o
                mov     dl, [rcx+87Ah]
                xor     eax, eax
                and     dl, 7
                cmp     dl, 1
                setz    al
                retn
PsIsProtectedProcessLight endp

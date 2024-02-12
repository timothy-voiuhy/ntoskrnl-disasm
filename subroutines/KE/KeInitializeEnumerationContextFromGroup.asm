KeInitializeEnumerationContextFromGroup proc near
                                        ; DATA XREF: .pdata:00000001400F38C4↑o
                mov     r8, [rdx]
                movzx   eax, word ptr [rdx+8]
                and     qword ptr [rcx], 0
                mov     [rcx+10h], ax
                mov     [rcx+8], r8
                retn
KeInitializeEnumerationContextFromGroup endp

KeInitializeEnumerationContext proc near
                                        ; DATA XREF: .pdata:00000001400D0F38↑o
                                        ; sub_140A1EEE4+2D87↓o
                xor     eax, eax
                mov     [rcx+10h], ax
                mov     rax, [rdx+8]
                mov     [rcx+8], rax
                mov     [rcx], rdx
                retn
KeInitializeEnumerationContext endp

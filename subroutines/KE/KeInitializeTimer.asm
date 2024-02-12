KeInitializeTimer proc near             ; CODE XREF: sub_140A1D354+46A↓p
                                        ; sub_140A1EEE4+182BC↓p
                                        ; DATA XREF: ...
                xor     edx, edx
                lea     rax, [rcx+8]
                mov     [rcx], rdx
                mov     byte ptr [rcx], 8
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx+18h], rdx
                mov     [rcx+3Ch], edx
                mov     [rcx+38h], dx
                retn
KeInitializeTimer endp

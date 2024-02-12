PsGetSiloContainerId proc near          ; DATA XREF: .pdata:0000000140121410↑o
                lea     rdx, [rcx+4D8h]
                neg     rcx
                sbb     rax, rax
                and     rax, rdx
                retn
PsGetSiloContainerId endp

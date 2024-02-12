KeAddGroupAffinityEx proc near          ; CODE XREF: sub_1405F3CF0+202DD7↓p
                                        ; DATA XREF: .pdata:00000001400F33A8↑o
                cmp     [rcx], dx
                ja      short loc_14051366B
                lea     eax, [rdx+1]
                mov     [rcx], ax

loc_14051366B:                          ; CODE XREF: KeAddGroupAffinityEx+3↑j
                movzx   eax, dx
                or      [rcx+rax*8+8], r8
                retn
KeAddGroupAffinityEx endp

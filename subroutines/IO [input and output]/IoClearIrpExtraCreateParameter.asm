IoClearIrpExtraCreateParameter proc near
                                        ; CODE XREF: sub_140702C60+1253F3↓p
                                        ; DATA XREF: .pdata:00000001400F2718↑o
                mov     eax, [rcx+10h]
                test    al, al
                jns     short locret_140505AAC
                and     qword ptr [rcx+70h], 0

locret_140505AAC:                       ; CODE XREF: IoClearIrpExtraCreateParameter+5↑j
                retn
IoClearIrpExtraCreateParameter endp

RtlFreeNonVolatileToken proc near       ; DATA XREF: .pdata:00000001400F7F14↑o
                and     cl, 1
                neg     cl
                sbb     eax, eax
                not     eax
                and     eax, 0C000000Dh
                retn
RtlFreeNonVolatileToken endp

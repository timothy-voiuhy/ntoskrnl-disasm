RtlAreAnyAccessesGranted proc near      ; DATA XREF: .pdata:0000000140107544↑o
                test    edx, ecx
                setnz   al
                retn
RtlAreAnyAccessesGranted endp

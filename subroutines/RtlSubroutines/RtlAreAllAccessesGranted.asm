RtlAreAllAccessesGranted proc near      ; DATA XREF: .pdata:0000000140104EB0↑o
                not     ecx
                test    edx, ecx
                setz    al
                retn
RtlAreAllAccessesGranted endp

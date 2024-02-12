PsIsProcessBeingDebugged proc near      ; DATA XREF: .pdata:000000014012159C↑o
                cmp     qword ptr [rcx+578h], 0
                setnz   al
                retn
PsIsProcessBeingDebugged endp

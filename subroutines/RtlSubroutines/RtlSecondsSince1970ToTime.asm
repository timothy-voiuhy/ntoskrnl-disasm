RtlSecondsSince1970ToTime proc near     ; DATA XREF: .pdata:00000001400DFC5C↑o

arg_8           = qword ptr  10h

                and     dword ptr [rsp+arg_8+4], 0
                mov     dword ptr [rsp+arg_8], ecx
                mov     rcx, [rsp+arg_8]
                add     rcx, cs:qword_140021670
                imul    rax, rcx, 989680h
                mov     [rdx], rax
                retn
RtlSecondsSince1970ToTime endp

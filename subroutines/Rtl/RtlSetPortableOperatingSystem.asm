RtlSetPortableOperatingSystem proc near ; DATA XREF: .pdata:00000001400F7D04↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_0           = dword ptr  8

                sub     rsp, 38h
                xor     eax, eax
                lea     r8, aPortableoperat ; "PortableOperatingSystem"
                test    cl, cl
                mov     r9d, 4
                mov     [rsp+38h+var_10], r9d
                setnz   al
                xor     edx, edx
                mov     [rsp+38h+arg_0], eax
                lea     rax, [rsp+38h+arg_0]
                mov     [rsp+38h+var_18], rax
                lea     ecx, [rdx+2]
                call    RtlWriteRegistryValue
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSetPortableOperatingSystem endp

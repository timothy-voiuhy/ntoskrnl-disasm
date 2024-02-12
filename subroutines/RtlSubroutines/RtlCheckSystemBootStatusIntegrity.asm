RtlCheckSystemBootStatusIntegrity proc near
                                        ; DATA XREF: .pdata:00000001401220F4↑o

var_48          = dword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch

                sub     rsp, 68h
                xor     edx, edx
                mov     [rsp+68h+var_20], rdx
                mov     [rsp+68h+var_C], edx
                test    rcx, rcx
                jnz     short loc_140916D3B
                mov     eax, 0C000000Dh
                jmp     short loc_140916D7A
; ---------------------------------------------------------------------------

loc_140916D3B:                          ; CODE XREF: RtlCheckSystemBootStatusIntegrity+12↑j
                xor     r9d, r9d
                mov     [rsp+68h+var_18], rcx
                mov     eax, 1
                mov     [rsp+68h+var_48], edx
                mov     [rsp+68h+var_10], eax
                lea     rdx, [rsp+68h+var_38]
                mov     [rsp+68h+var_30], rax
                lea     rax, [rsp+68h+var_20]
                lea     r8d, [r9+18h]
                mov     [rsp+68h+var_38], 22h ; '"'
                lea     ecx, [r9+57h]
                mov     [rsp+68h+var_28], rax
                call    ZwPowerInformation

loc_140916D7A:                          ; CODE XREF: RtlCheckSystemBootStatusIntegrity+19↑j
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCheckSystemBootStatusIntegrity endp

RtlIpv4AddressToStringA proc near       ; CODE XREF: RtlIpv4AddressToStringExA+3F↓p
                                        ; DATA XREF: .pdata:00000001400DC554↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h

                push    rbx
                sub     rsp, 40h
                movzx   r8d, byte ptr [rcx+3]
                mov     rbx, rdx
                movzx   r10d, byte ptr [rcx+2]
                mov     edx, 10h
                movzx   r11d, byte ptr [rcx+1]
                mov     eax, [rcx]
                mov     rcx, rbx
                mov     [rsp+48h+var_18], r8d
                lea     r8, aUUUU       ; "%u.%u.%u.%u"
                mov     [rsp+48h+var_20], r10d
                movzx   r9d, al
                mov     [rsp+48h+var_28], r11d
                call    sprintf_s
                cdqe
                add     rax, rbx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIpv4AddressToStringA endp

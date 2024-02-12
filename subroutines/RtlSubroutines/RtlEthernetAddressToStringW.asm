RtlEthernetAddressToStringW proc near   ; CODE XREF: sub_14096EA94+79↓p
                                        ; DATA XREF: .pdata:00000001400F7E90↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                movzx   r8d, byte ptr [rcx+4]
                mov     rdi, rdx
                movzx   eax, byte ptr [rcx+5]
                mov     edx, 12h
                movzx   r10d, byte ptr [rcx+3]
                movzx   r11d, byte ptr [rcx+2]
                movzx   ebx, byte ptr [rcx+1]
                movzx   r9d, byte ptr [rcx]
                mov     rcx, rdi
                mov     [rsp+58h+var_18], eax
                mov     [rsp+58h+var_20], r8d
                lea     r8, a02x02x02x02x02_0 ; "%02X-%02X-%02X-%02X-%02X-%02X"
                mov     [rsp+58h+var_28], r10d
                mov     [rsp+58h+var_30], r11d
                mov     [rsp+58h+var_38], ebx
                call    swprintf_s
                mov     rbx, [rsp+58h+arg_0]
                movsxd  rcx, eax
                lea     rax, [rdi+rcx*2]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlEthernetAddressToStringW endp

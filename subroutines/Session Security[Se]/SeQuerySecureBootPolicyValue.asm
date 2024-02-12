SeQuerySecureBootPolicyValue proc near  ; DATA XREF: .rdata:00000001400AE1C0↑o
                                        ; .pdata:000000014010F464↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140864DE6 SIZE 00000079 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+var_10], 0
                mov     rdi, r9
                and     [rsp+38h+var_18], 0
                mov     ebx, r8d
                cmp     cs:qword_140CF4CF0, 0
                jnz     loc_140864DE6
                mov     ebx, 80430006h

loc_1407D3CCE:                          ; CODE XREF: SeQuerySecureBootPolicyValue+9115B↓j
                                        ; SeQuerySecureBootPolicyValue+9117F↓j ...
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeQuerySecureBootPolicyValue endp

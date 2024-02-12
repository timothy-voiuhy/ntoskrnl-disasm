IoWMISetNotificationCallback proc near  ; DATA XREF: .pdata:000000014010F104↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+var_18], 0
                mov     rsi, r8
                mov     rbx, rdx
                mov     rdi, rcx
                xor     r8d, r8d
                lea     rcx, unk_140C19E00
                xor     edx, edx
                xor     r9d, r9d
                call    KeWaitForSingleObject
                xor     edx, edx
                mov     [rdi+48h], rbx
                lea     rcx, unk_140C19E00
                mov     [rdi+50h], rsi
                call    KeReleaseMutex
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWMISetNotificationCallback endp

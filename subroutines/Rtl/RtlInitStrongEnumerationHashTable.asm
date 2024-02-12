RtlInitStrongEnumerationHashTable proc near
                                        ; DATA XREF: .pdata:00000001400DC7E8↑o

var_28          = xmmword ptr -28h

                push    rbx
                sub     rsp, 40h
                mov     rbx, rdx
                xorps   xmm0, xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     r8d, r8d
                movups  [rsp+48h+var_28], xmm0
                call    sub_140203470
                xor     eax, eax
                mov     [rbx+8], rax
                mov     [rbx+10h], rax
                mov     [rbx+20h], rax
                mov     rax, qword ptr [rsp+48h+var_28]
                mov     [rbx+18h], rax
                mov     [rbx], rax
                mov     al, 1
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitStrongEnumerationHashTable endp

HalRequestDeferredRecoveryServiceInterrupt proc near
                                        ; CODE XREF: WheaRequestDeferredRecovery+59↓p
                                        ; DATA XREF: .pdata:00000001400EEB00↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                sub     rsp, 48h
                xorps   xmm0, xmm0
                lea     rcx, [rsp+48h+var_28]
                xor     eax, eax
                mov     edx, 0E3h
                movups  [rsp+48h+var_28], xmm0
                mov     dword ptr [rsp+48h+var_28], 5
                mov     [rsp+48h+var_18], rax
                call    sub_140252160
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalRequestDeferredRecoveryServiceInterrupt endp

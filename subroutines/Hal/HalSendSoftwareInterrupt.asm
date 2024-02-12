HalSendSoftwareInterrupt proc near      ; CODE XREF: sub_140308E0C+13↑p
                                        ; DATA XREF: .pdata:00000001400D41E4↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                sub     rsp, 48h
                mov     al, dl
                xorps   xmm0, xmm0
                xor     edx, edx
                mov     [rsp+48h+var_18], rdx
                cmp     al, 1
                mov     edx, 1Fh
                movups  [rsp+48h+var_28], xmm0
                mov     dword ptr [rsp+48h+var_28+8], ecx
                mov     dword ptr [rsp+48h+var_28], 6
                lea     ecx, [rdx+10h]
                cmovnz  edx, ecx
                lea     rcx, [rsp+48h+var_28]
                call    sub_140252160
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalSendSoftwareInterrupt endp

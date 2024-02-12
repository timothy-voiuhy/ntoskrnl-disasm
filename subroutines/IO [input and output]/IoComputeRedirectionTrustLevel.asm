IoComputeRedirectionTrustLevel proc near
                                        ; DATA XREF: .pdata:00000001400E1510↑o

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rdi, r9
                mov     rbx, r8
                movups  [rsp+48h+var_28], xmm0
                movups  [rsp+48h+var_18], xmm0
                test    dl, dl
                jnz     short loc_1403F17BA
                mov     dword ptr [r9], 2
                jmp     short loc_1403F17FF
; ---------------------------------------------------------------------------

loc_1403F17BA:                          ; CODE XREF: IoComputeRedirectionTrustLevel+1F↑j
                test    rbx, rbx
                jnz     short loc_1403F17C9
                lea     rcx, [rsp+48h+var_28]
                call    SeCaptureSubjectContext

loc_1403F17C9:                          ; CODE XREF: IoComputeRedirectionTrustLevel+2D↑j
                test    rbx, rbx
                lea     rax, [rsp+48h+var_28]
                cmovnz  rax, rbx
                mov     rcx, [rax]
                test    rcx, rcx
                jnz     short loc_1403F17E1
                mov     rcx, [rax+10h]

loc_1403F17E1:                          ; CODE XREF: IoComputeRedirectionTrustLevel+4B↑j
                call    SeTokenIsAdmin
                neg     al
                sbb     ecx, ecx
                neg     ecx
                inc     ecx
                mov     [rdi], ecx
                test    rbx, rbx
                jnz     short loc_1403F17FF
                lea     rcx, [rsp+48h+var_28]
                call    SeReleaseSubjectContext

loc_1403F17FF:                          ; CODE XREF: IoComputeRedirectionTrustLevel+28↑j
                                        ; IoComputeRedirectionTrustLevel+63↑j
                mov     rbx, [rsp+48h+arg_0]
                xor     eax, eax
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoComputeRedirectionTrustLevel endp

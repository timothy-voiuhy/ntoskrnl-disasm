HviIsHypervisorMicrosoftCompatible proc near
                                        ; CODE XREF: sub_1403A91F4+240↑p
                                        ; HviGetEnlightenmentInformation+D↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 48h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                lea     rcx, [rsp+48h+var_28]
                movups  [rsp+48h+var_28], xmm0
                call    HviGetHypervisorInterface
                cmp     dword ptr [rsp+48h+var_28], 31237648h
                setz    al
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403A9640
HviIsHypervisorMicrosoftCompatible endp

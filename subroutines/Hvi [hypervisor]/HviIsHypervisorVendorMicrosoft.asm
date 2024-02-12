HviIsHypervisorVendorMicrosoft proc near
                                        ; CODE XREF: sub_1403F2FA0+24↓p
                                        ; sub_140594A0C+83↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404902F6 SIZE 00000034 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                call    HviIsAnyHypervisorPresent
                test    al, al
                jnz     loc_1404902F6

loc_1403AABF2:                          ; CODE XREF: HviIsHypervisorVendorMicrosoft+E5735↓j
                                        ; HviIsHypervisorVendorMicrosoft+E5741↓j ...
                xor     al, al

loc_1403AABF4:                          ; CODE XREF: HviIsHypervisorVendorMicrosoft+E5755↓j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403AABD0
HviIsHypervisorVendorMicrosoft endp

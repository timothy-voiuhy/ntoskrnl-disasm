HviGetHardwareFeatures proc near        ; CODE XREF: sub_1404F7150+F9↑p
                                        ; sub_1404FA4B4+7F↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                mov     rdi, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rsp+48h+var_28]
                movups  [rsp+48h+var_28], xmm0
                call    HviGetHypervisorVendorAndMaxFunction
                mov     eax, 40000006h
                cmp     dword ptr [rsp+48h+var_28], eax
                jb      short loc_1405BF23A
                xor     ecx, ecx
                cpuid
                mov     [rdi], eax
                mov     [rdi+4], ebx
                mov     [rdi+8], ecx
                mov     [rdi+0Ch], edx
                jmp     short loc_1405BF243
; ---------------------------------------------------------------------------

loc_1405BF23A:                          ; CODE XREF: HviGetHardwareFeatures+37↑j
                xor     eax, eax
                mov     [rdi], rax
                mov     [rdi+8], rax

loc_1405BF243:                          ; CODE XREF: HviGetHardwareFeatures+48↑j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405BF1F0
HviGetHardwareFeatures endp

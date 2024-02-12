HviIsAnyHypervisorPresent proc near     ; CODE XREF: sub_140383B90+E5↑p
                                        ; sub_1403A91F4:loc_1403A946F↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404A6C6A SIZE 0000001B BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+28h+var_18], rax
                xor     ecx, ecx
                mov     r9d, 1
                mov     eax, r9d
                xor     r8b, r8b
                cpuid
                test    ecx, ecx
                js      loc_1404A6C6A

loc_1403A5A2D:                          ; CODE XREF: HviIsAnyHypervisorPresent+101280↓j
                mov     al, r8b
                mov     rcx, [rsp+28h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403A5A00
HviIsAnyHypervisorPresent endp

KeAndGroupAffinityEx proc near          ; CODE XREF: sub_140252160+410↑p
                                        ; KeQueryLogicalProcessorRelationship+55D↑p ...

var_28          = byte ptr -28h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 28h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+28h+var_18], rax
                xor     r9d, r9d
                test    r8, r8
                jz      short loc_140374A00
                xor     eax, eax
                mov     [r8+0Ah], eax
                mov     [r8+0Eh], ax
                movzx   eax, word ptr [rdx+8]
                mov     [r8+8], ax

loc_1403749CF:                          ; CODE XREF: KeAndGroupAffinityEx+64↓j
                movzx   eax, word ptr [rdx+8]
                cmp     [rcx], ax
                jbe     short loc_140374A06
                mov     rcx, [rcx+rax*8+8]
                and     rcx, [rdx]

loc_1403749E0:                          ; CODE XREF: KeAndGroupAffinityEx+69↓j
                test    rcx, rcx
                mov     [r8], rcx
                setnz   r9b
                mov     eax, r9d
                mov     rcx, [rsp+28h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140374A00:                          ; CODE XREF: KeAndGroupAffinityEx+19↑j
                lea     r8, [rsp+28h+var_28]
                jmp     short loc_1403749CF
; ---------------------------------------------------------------------------

loc_140374A06:                          ; CODE XREF: KeAndGroupAffinityEx+36↑j
                mov     rcx, r9
                jmp     short loc_1403749E0
; } // starts at 1403749A0
KeAndGroupAffinityEx endp

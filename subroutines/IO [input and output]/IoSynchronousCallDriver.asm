IoSynchronousCallDriver proc near       ; CODE XREF: sub_1404EF0F0+D0↓p
                                        ; IoForwardIrpSynchronously+3C↓p ...

var_38          = qword ptr -38h
var_28          = dword ptr -28h
var_24          = dword ptr -24h

                mov     r11, rsp
                push    rbx
                sub     rsp, 50h
                and     [rsp+58h+var_24], 0
                lea     rax, [r11-20h]
                mov     [rsp+58h+var_28], 60000h
                mov     rbx, rdx
                mov     [r11-18h], rax
                lea     rax, [r11-20h]
                mov     [r11-20h], rax
                mov     rax, [rdx+0B8h]
                lea     rdx, sub_14034FD50
                mov     [rax-10h], rdx
                lea     rdx, [r11-28h]
                mov     [rax-8], rdx
                mov     rdx, rbx
                mov     byte ptr [rax-45h], 0E0h
                call    IofCallDriver
                cmp     eax, 103h
                jz      short loc_140351D5C

loc_140351D55:                          ; CODE XREF: IoSynchronousCallDriver+79↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140351D5C:                          ; CODE XREF: IoSynchronousCallDriver+53↑j
                and     [rsp+58h+var_38], 0
                lea     rcx, [rsp+58h+var_28]
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+5]
                call    KeWaitForSingleObject
                mov     eax, [rbx+30h]
                jmp     short loc_140351D55
IoSynchronousCallDriver endp

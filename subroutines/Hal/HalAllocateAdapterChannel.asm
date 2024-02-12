HalAllocateAdapterChannel proc near     ; CODE XREF: sub_14031D640+153D18↑p
                                        ; sub_1404CCB80+23↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h

                push    rbx
                sub     rsp, 30h
                mov     rbx, r9
                mov     r10, rdx
                mov     r11, rcx
                call    sub_140347140
                mov     rdx, r10
                mov     rcx, r11
                sub     eax, 2
                jz      short loc_1404B8D10
                and     dword ptr [r10+14h], 0FFFFFFFDh
                mov     r9d, [r11+0F4h]
                mov     [rsp+38h+var_10], rbx
                and     [rsp+38h+var_18], 0
                shr     r9d, 0Ch
                call    sub_1404CA5F0
                jmp     short loc_1404B8D15
; ---------------------------------------------------------------------------

loc_1404B8D10:                          ; CODE XREF: HalAllocateAdapterChannel+1D↑j
                call    sub_1404CC904

loc_1404B8D15:                          ; CODE XREF: HalAllocateAdapterChannel+3E↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalAllocateAdapterChannel endp

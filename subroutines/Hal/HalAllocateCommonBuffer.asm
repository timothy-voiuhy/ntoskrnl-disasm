HalAllocateCommonBuffer proc near       ; DATA XREF: .rdata:0000000140005CF0↑o
                                        ; .rdata:0000000140005F70↑o ...

var_18          = byte ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                mov     r11d, edx
                mov     r10, rcx
                call    sub_140347140
                mov     [rsp+38h+var_10], 80000000h
                mov     rcx, r10
                sub     eax, 2
                jz      short loc_1403814C7
                mov     r9, r8
                mov     [rsp+38h+var_18], 1
                mov     r8d, r11d
                xor     edx, edx
                call    sub_1403A1160

loc_1403814C1:                          ; CODE XREF: HalAllocateCommonBuffer+49↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403814C7:                          ; CODE XREF: HalAllocateCommonBuffer+1D↑j
                mov     [rsp+38h+var_18], r9b
                xor     edx, edx
                mov     r9, r8
                mov     r8d, r11d
                call    sub_1403812D0
                jmp     short loc_1403814C1
HalAllocateCommonBuffer endp

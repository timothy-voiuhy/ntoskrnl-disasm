HalAssignSlotResources proc near        ; DATA XREF: .pdata:000000014011A9FC↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

                sub     rsp, 58h
                cmp     [rsp+58h+arg_20], 5
                mov     r11, r9
                jnz     short loc_140865AB1
                mov     r10, [rsp+58h+arg_38]
                mov     r9d, [rsp+58h+arg_28]
                mov     rax, cs:off_140C005D0
                mov     [rsp+58h+var_20], r10
                mov     r10d, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], r10d
                mov     [rsp+58h+var_30], r9d
                mov     r9, r11
                mov     [rsp+58h+var_38], 5
                call    sub_1404079D0
                jmp     short loc_140865AB6
; ---------------------------------------------------------------------------

loc_140865AB1:                          ; CODE XREF: HalAssignSlotResources+F↑j
                mov     eax, 0C0000002h

loc_140865AB6:                          ; CODE XREF: HalAssignSlotResources+4F↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalAssignSlotResources endp

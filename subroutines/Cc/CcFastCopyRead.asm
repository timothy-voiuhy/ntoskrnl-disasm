CcFastCopyRead  proc near               ; DATA XREF: .pdata:000000014011ACF0↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     r11, rsp
                sub     rsp, 58h
                and     qword ptr [r11-28h], 0
                mov     r9b, 1
                mov     eax, edx
                lea     rdx, [r11-18h]
                mov     [r11-18h], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [r11-30h], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-38h], rax
                call    CcCopyReadEx
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcFastCopyRead  endp

byte_14086903C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014011ACF0↑o

; =============== S U B R O U T I N E =======================================


sub_140869044   proc near               ; CODE XREF: sub_1404EB470+5B↑p
                                        ; DATA XREF: .pdata:000000014011ACFC↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                cmp     dword ptr [rcx+4], 0
                jnz     short loc_14086905E
                mov     edx, 61566356h
                call    ExFreePoolWithTag
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14086905E:                          ; CODE XREF: sub_140869044+8↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     edx, 25Eh
                mov     r8, 0FFFFFFFFC0000420h
                lea     ecx, [r9+34h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_140869044   endp

byte_14086907D  db 13h dup(0CCh)        ; DATA XREF: .pdata:000000014011ACFC↑o
; Exported entry  80. CcSetBcbOwnerPointer

; =============== S U B R O U T I N E =======================================



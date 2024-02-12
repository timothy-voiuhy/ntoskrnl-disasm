DbgLoadImageSymbols proc near           ; CODE XREF: sub_140371D44+2E↑p
                                        ; sub_1409B7160+ACE↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h

; FUNCTION CHUNK AT 00000001404909D0 SIZE 0000000F BYTES

                push    rbx
                sub     rsp, 40h
                mov     rbx, rcx
                mov     [rsp+48h+var_28], rdx
                mov     rcx, rdx
                mov     [rsp+48h+var_20], r8
                call    RtlImageNtHeader
                test    rax, rax
                jz      loc_1404909D0
                mov     edx, [rax+58h]
                mov     [rsp+48h+var_18], edx
                mov     eax, [rax+50h]
                mov     [rsp+48h+var_14], eax

loc_140371DD2:                          ; CODE XREF: DbgLoadImageSymbols+11EC3A↓j
                mov     r8d, 3
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rbx
                call    sub_140406D20
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgLoadImageSymbols endp

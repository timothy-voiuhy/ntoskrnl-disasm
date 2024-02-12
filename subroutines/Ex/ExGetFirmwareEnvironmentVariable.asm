ExGetFirmwareEnvironmentVariable proc near
                                        ; CODE XREF: sub_14071F5C0+6C↑p
                                        ; sub_14094BCB0+72↓p ...

var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014082EBF2 SIZE 0000004A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140C19590, 2
                mov     rbx, r9
                mov     rsi, r8
                mov     rbp, rdx
                jz      loc_14082EBF2
                mov     eax, 0C0000002h

loc_14071F6BF:                          ; CODE XREF: ExGetFirmwareEnvironmentVariable+10F574↓j
                                        ; ExGetFirmwareEnvironmentVariable+10F5A7↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExGetFirmwareEnvironmentVariable endp

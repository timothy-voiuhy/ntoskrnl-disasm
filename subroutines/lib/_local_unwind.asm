_local_unwind   proc near               ; CODE XREF: sub_1402010F0+216F23↓p
                                        ; sub_140306830+1130AE↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+28h+arg_8]
                mov     rcx, [rsp+28h+arg_0]
                call    RtlUnwind
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_local_unwind   endp

byte_1403D17F9  db 17h dup(0CCh)        ; DATA XREF: .pdata:00000001400E06A0↑o
; Exported entry 2967. _snprintf

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame


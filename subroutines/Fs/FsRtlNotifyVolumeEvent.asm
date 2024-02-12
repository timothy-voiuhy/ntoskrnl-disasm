FsRtlNotifyVolumeEvent proc near        ; CODE XREF: sub_14076CA98+10E↑p
                                        ; sub_14076CA98+11D↑p ...

var_38          = dword ptr -38h
var_34          = xmmword ptr -34h
var_18          = dword ptr -18h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                sub     rsp, 58h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_10], rax
                xor     r8d, r8d
                xorps   xmm0, xmm0
                movdqu  [rsp+58h+var_34], xmm0
                mov     [r11-24h], r8d
                mov     [r11-14h], r8d
                mov     [rsp+58h+var_38], 240001h
                mov     [r11-20h], r8
                lea     r8, [r11-38h]
                or      [rsp+58h+var_18], 0FFFFFFFFh
                call    FsRtlNotifyVolumeEventEx
                mov     rcx, [rsp+58h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14076CC90
FsRtlNotifyVolumeEvent endp

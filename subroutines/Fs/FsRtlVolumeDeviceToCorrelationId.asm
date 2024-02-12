FsRtlVolumeDeviceToCorrelationId proc near
                                        ; DATA XREF: .rdata:00000001400863CC↑o
                                        ; .pdata:00000001401063BC↑o

var_48          = dword ptr -48h
var_38          = dword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014082BC34 SIZE 00000011 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+18h], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                and     qword ptr [r11-30h], 0
                lea     rax, [r11-28h]
                mov     [rsp+68h+var_38], 10h
                mov     rbx, rdx
                xorps   xmm0, xmm0
                mov     [r11-40h], rax
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 4D0018h
                mov     rdi, rcx
                movups  [rsp+68h+var_28], xmm0
                call    FsRtlIssueDeviceIoControl
                test    eax, eax
                js      loc_14082BC34
                movups  xmm0, [rsp+68h+var_28]
                movdqu  xmmword ptr [rbx], xmm0

loc_1407126A4:                          ; CODE XREF: FsRtlVolumeDeviceToCorrelationId+119600↓j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140712640
FsRtlVolumeDeviceToCorrelationId endp

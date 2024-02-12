IoCreateNotificationEvent proc near     ; CODE XREF: sub_140897A18+1B5↓p
                                        ; sub_140897A18+1D8↓p ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_18], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_2C], 0
                lea     r8, [rbp+var_30]
                and     [rbp+var_14], 0
                mov     rdi, rdx
                and     [rbp+arg_0], 0
                xorps   xmm0, xmm0
                and     [rbp+var_28], 0
                mov     edx, 1F0003h
                mov     [rbp+var_20], rcx
                xor     r9d, r9d
                lea     rcx, [rbp+arg_0]
                mov     [rbp+var_30], 30h ; '0'
                movdqu  [rbp+var_10], xmm0
                mov     [rbp+var_18], 280h
                mov     byte ptr [rsp+60h+var_40], 1
                call    ZwCreateEvent
                test    eax, eax
                js      short loc_14078C435
                mov     r8, cs:ExEventObjectType
                lea     rax, [rbp+arg_10]
                and     [rsp+60h+var_38], 0
                xor     r9d, r9d
                mov     rcx, [rbp+arg_0]
                xor     edx, edx
                and     [rbp+arg_10], 0
                mov     [rsp+60h+var_40], rax
                call    ObReferenceObjectByHandle
                mov     rbx, [rbp+arg_10]
                test    eax, eax
                js      short loc_14078C439
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_14078C418:                          ; CODE XREF: IoCreateNotificationEvent+BB↓j
                mov     rcx, [rbp+arg_0]
                mov     rax, rbx
                mov     [rdi], rcx

loc_14078C422:                          ; CODE XREF: IoCreateNotificationEvent+B7↓j
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+18h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14078C435:                          ; CODE XREF: IoCreateNotificationEvent+5D↑j
                xor     eax, eax
                jmp     short loc_14078C422
; ---------------------------------------------------------------------------

loc_14078C439:                          ; CODE XREF: IoCreateNotificationEvent+8E↑j
                xor     ebx, ebx
                jmp     short loc_14078C418
IoCreateNotificationEvent endp

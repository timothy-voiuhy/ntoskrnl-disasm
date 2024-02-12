WheaAttemptPhysicalPageOffline proc near
                                        ; CODE XREF: sub_1404D00CC+25↑p
                                        ; sub_1404D026C+7B↑p ...

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  10h

                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+arg_0], 0
                mov     r10b, dl
                and     [rbp+var_48], 0
                mov     rdx, rcx
                mov     rax, gs:188h
                mov     dword ptr [rbp+arg_0], edx
                mov     rcx, [rbp+arg_0]
                shl     rcx, 0Ch
                cmp     byte ptr [rax+232h], 1
                jnz     short loc_14095EA0C
                xorps   xmm0, xmm0
                movups  [rbp+var_20], xmm0
                mov     byte ptr [rbp+var_20+1], r8b
                xor     r8d, r8d
                movups  [rbp+var_30], xmm0
                mov     qword ptr [rbp+var_30], rcx
                lea     rcx, [rbp+var_20+8]
                mov     qword ptr [rbp+var_30+8], rdx
                xor     edx, edx
                movups  [rbp+var_10], xmm0
                mov     byte ptr [rbp+var_20], r10b
                mov     byte ptr [rbp+var_20+2], 0
                call    KeInitializeEvent
                and     [rbp+var_50], 0
                lea     rax, sub_14095EE40
                mov     [rbp+var_40], rax
                lea     rcx, [rbp+var_50]
                lea     rax, [rbp+var_30]
                mov     edx, 1
                mov     [rbp+var_38], rax
                call    ExQueueWorkItem
                and     [rsp+80h+var_60], 0
                lea     rcx, [rbp+var_20+8]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, dword ptr [rbp+var_20+4]
                jmp     short loc_14095EA1C
; ---------------------------------------------------------------------------

loc_14095EA0C:                          ; CODE XREF: WheaAttemptPhysicalPageOffline+37↑j
                mov     r9b, r8b
                mov     byte ptr [rsp+80h+var_60], 0
                mov     r8b, r10b
                call    sub_14095ECAC

loc_14095EA1C:                          ; CODE XREF: WheaAttemptPhysicalPageOffline+AA↑j
                add     rsp, 80h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaAttemptPhysicalPageOffline endp

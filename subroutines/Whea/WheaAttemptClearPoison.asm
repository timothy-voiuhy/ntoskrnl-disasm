WheaAttemptClearPoison proc near        ; CODE XREF: sub_1404D00CC+17↑p
                                        ; DATA XREF: .pdata:0000000140124D4C↑o

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
var_1F          = word ptr -1Fh
var_1C          = dword ptr -1Ch
var_18          = byte ptr -18h
var_10          = xmmword ptr -10h

                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+var_48], 0
                mov     r8b, dl
                mov     rax, gs:188h
                mov     rdx, rcx
                sar     rdx, 0Ch
                cmp     byte ptr [rax+232h], 1
                jnz     short loc_14095E93E
                xorps   xmm0, xmm0
                movups  [rbp+var_30], xmm0
                mov     qword ptr [rbp+var_30], rcx
                lea     rcx, [rbp+var_18]
                movups  xmmword ptr [rbp-20h], xmm0
                mov     qword ptr [rbp+var_30+8], rdx
                xor     edx, edx
                mov     [rbp+var_20], r8b
                xor     r8d, r8d
                movups  [rbp+var_10], xmm0
                mov     [rbp+var_1F], 101h
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
                lea     rcx, [rbp+var_18]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, [rbp+var_1C]
                jmp     short loc_14095E94B
; ---------------------------------------------------------------------------

loc_14095E93E:                          ; CODE XREF: WheaAttemptClearPoison+2B↑j
                mov     r9b, 1
                mov     byte ptr [rsp+80h+var_60], 1
                call    sub_14095ECAC

loc_14095E94B:                          ; CODE XREF: WheaAttemptClearPoison+9C↑j
                add     rsp, 80h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaAttemptClearPoison endp

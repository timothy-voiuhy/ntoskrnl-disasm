ExDisableResourceBoostLite proc near    ; CODE XREF: sub_14026F7FC+114↑p
                                        ; DATA XREF: .rdata:00000001400863A4↑o ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140487752 SIZE 00000081 BYTES

                push    rbx
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                test    byte ptr [rcx+1Ah], 1
                mov     rbx, rcx
                movups  [rsp+58h+var_28], xmm0
                mov     [rsp+58h+var_18], rax
                jnz     loc_140487752
                add     rcx, 60h ; '`'
                lea     rdx, [rsp+58h+var_28]
                call    KeAcquireInStackQueuedSpinLock
                or      word ptr [rbx+1Ah], 8
                lea     rcx, [rsp+58h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+58h+var_18]
                test    eax, eax
                jnz     loc_14048776C

loc_1403582E2:                          ; CODE XREF: ExDisableResourceBoostLite+12F4DE↓j
                                        ; ExDisableResourceBoostLite+12F4EA↓j ...
                mov     cr8, rbx
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExDisableResourceBoostLite endp

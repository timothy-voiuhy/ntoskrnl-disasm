MmReturnChargesToLockPagedPool proc near
                                        ; CODE XREF: sub_1403F5F50+1B9↑p
                                        ; sub_1406A13BC+7D3↑p ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

                push    rbx
                sub     rsp, 60h
                mov     rax, rcx
                lea     rbx, [rdx+0FFFh]
                xorps   xmm0, xmm0
                and     eax, 0FFFh
                add     rbx, rax
                shr     rbx, 0Ch
                movups  [rsp+68h+var_38], xmm0
                movups  [rsp+68h+var_28], xmm0
                movups  [rsp+68h+var_18], xmm0
                call    sub_14026B560
                mov     ecx, 2
                mov     r8, rax
                call    sub_1402A46FC
                mov     rcx, rax
                mov     r9, rbx
                lea     rax, [rsp+68h+var_38]
                xor     edx, edx
                mov     [rsp+68h+var_40], rax
                mov     [rsp+68h+var_48], 8
                call    sub_1402DBE20
                mov     rdx, rbx
                lea     rcx, unk_140C50C00
                call    sub_140207B8C
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmReturnChargesToLockPagedPool endp

SeAuditingWithTokenForSubcategory proc near
                                        ; CODE XREF: sub_14068627C+7D↑p
                                        ; sub_140686348+4C↑p ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140812E52 SIZE 00000054 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 50h
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     dl, 1
                mov     edi, ecx
                movups  [rsp+58h+var_28], xmm0
                movups  [rsp+58h+var_18], xmm0
                call    sub_1402BA24C
                add     edi, 0FFFFFF9Ch
                mov     [rsp+58h+arg_0], al
                lea     rcx, unk_140C1D440
                cmp     dword ptr [rcx+rdi*4], 0
                jnz     loc_140812E52

loc_14068679B:                          ; CODE XREF: SeAuditingWithTokenForSubcategory+18C730↓j
                                        ; SeAuditingWithTokenForSubcategory+18C741↓j
                mov     al, [rsp+58h+arg_0]
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAuditingWithTokenForSubcategory endp

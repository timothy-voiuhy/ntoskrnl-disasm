ObSetSecurityObjectByPointer proc near  ; CODE XREF: sub_1403F81A0+27C↑p
                                        ; sub_140624820+227↑p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_8           = dword ptr  10h

                mov     [rsp+arg_8], edx
                push    rbx
                sub     rsp, 50h
                mov     r11, r8
                lea     r9, qword_140CFCE60
                lea     r8, [rcx-30h]
                mov     rbx, rcx
                mov     rax, r8
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [r8+18h]
                add     r8, 28h ; '('
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     rax, gs:188h
                mov     r9, [r9+rdx*8]
                mov     cl, [rax+232h]
                mov     [rsp+58h+var_18], cl
                mov     ecx, [r9+64h]
                lea     rdx, [r9+4Ch]
                mov     r10, [r9+98h]
                mov     r9, r11
                mov     [rsp+58h+var_20], rdx
                mov     rax, r10
                mov     [rsp+58h+var_28], ecx
                xor     edx, edx
                mov     [rsp+58h+var_30], r8
                mov     rcx, rbx
                and     [rsp+58h+var_38], 0
                lea     r8, [rsp+58h+arg_8]
                call    sub_1404079D0
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObSetSecurityObjectByPointer endp

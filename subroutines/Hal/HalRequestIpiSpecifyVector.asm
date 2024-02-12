HalRequestIpiSpecifyVector proc near    ; CODE XREF: sub_14024EFB0+386↑p
                                        ; sub_140300A38+65↓p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404361CA SIZE 00000028 BYTES

                sub     rsp, 48h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+48h+var_18], rax
                mov     r9d, r8d
                movups  [rsp+48h+var_28], xmm0
                test    ecx, ecx
                jnz     short loc_140251BD8
                test    rdx, rdx
                jz      short loc_140251C04
                movzx   r8d, word ptr [rdx]
                cmp     cx, r8w
                jnb     short loc_140251C04

loc_140251BA9:                          ; CODE XREF: HalRequestIpiSpecifyVector+1E4667↓j
                movzx   eax, cx
                cmp     qword ptr [rdx+rax*8+8], 0
                jz      loc_1404361E0
                mov     dword ptr [rsp+48h+var_28], 2
                mov     qword ptr [rsp+48h+var_28+8], rdx

loc_140251BC5:                          ; CODE XREF: HalRequestIpiSpecifyVector+1E464D↓j
                                        ; HalRequestIpiSpecifyVector+1E465B↓j
                mov     edx, r9d
                lea     rcx, [rsp+48h+var_28]
                call    sub_140252160

loc_140251BD2:                          ; CODE XREF: HalRequestIpiSpecifyVector+89↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140251BD8:                          ; CODE XREF: HalRequestIpiSpecifyVector+18↑j
                lea     eax, [rcx-1]
                cmp     eax, 1
                ja      short loc_140251C04
                sub     ecx, 1
                jnz     loc_1404361CA
                mov     edx, r9d
                mov     dword ptr [rsp+48h+var_28], 4
                lea     rcx, [rsp+48h+var_28]
                call    sub_140252160
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140251C04:                          ; CODE XREF: HalRequestIpiSpecifyVector+1D↑j
                                        ; HalRequestIpiSpecifyVector+27↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_140251BD2
HalRequestIpiSpecifyVector endp

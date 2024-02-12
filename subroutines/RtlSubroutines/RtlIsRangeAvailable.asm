RtlIsRangeAvailable proc near           ; DATA XREF: .pdata:0000000140109D4C↑o

var_68          = byte ptr -68h
var_60          = byte ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_30          = byte ptr -30h
var_8           = byte ptr -8
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 80h
                xorps   xmm0, xmm0
                mov     rdi, r8
                mov     rsi, rdx
                lea     r8, [rax-38h]
                lea     rdx, [rax-30h]
                mov     ebx, r9d
                movups  xmmword ptr [rax-30h], xmm0
                movups  xmmword ptr [rax-20h], xmm0
                call    RtlGetFirstRange
                cmp     eax, 8000001Ah
                jz      short loc_14075EFD8
                test    eax, eax
                js      short loc_14075EFC2
                mov     rax, [rsp+88h+arg_30]
                mov     cl, bl
                mov     r9b, [rsp+88h+arg_20]
                and     cl, 2
                mov     [rsp+88h+var_48], rax
                and     bl, 1
                mov     rax, [rsp+88h+arg_28]
                mov     r8, rdi
                mov     [rsp+88h+var_50], rax
                mov     rdx, rsi
                mov     [rsp+88h+var_58], 1
                mov     [rsp+88h+var_60], cl
                lea     rcx, [rsp+88h+var_30]
                mov     [rsp+88h+var_68], bl
                call    sub_14075EFEC
                mov     rcx, [rsp+88h+arg_38]
                mov     [rcx], al

loc_14075EFC0:                          ; CODE XREF: RtlIsRangeAvailable+B3↓j
                xor     eax, eax

loc_14075EFC2:                          ; CODE XREF: RtlIsRangeAvailable+3D↑j
                lea     r11, [rsp+88h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14075EFD8:                          ; CODE XREF: RtlIsRangeAvailable+39↑j
                mov     rax, [rsp+88h+arg_38]
                mov     byte ptr [rax], 1
                jmp     short loc_14075EFC0
RtlIsRangeAvailable endp

IoCopyDeviceObjectHint proc near        ; DATA XREF: .pdata:000000014011C97C↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_10          = qword ptr  18h

                push    rbx
                sub     rsp, 30h
                mov     r10, rdx
                mov     r11, rcx
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rcx, r10
                lea     edx, [r9+1]
                call    sub_14021B460
                mov     [rsp+38h+arg_10], rax
                test    rax, rax
                jz      short loc_14089501F
                mov     eax, 0C0000001h
                jmp     short loc_140895064
; ---------------------------------------------------------------------------

loc_14089501F:                          ; CODE XREF: IoCopyDeviceObjectHint+26↑j
                mov     rcx, r11
                call    sub_14021B460
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140895061
                and     [rsp+38h+var_10], r8
                lea     rax, [rsp+38h+arg_10]
                mov     r8d, 20h ; ' '
                mov     [rsp+38h+var_18], rax
                mov     r9b, dl
                mov     rcx, r10
                call    sub_14021B078
                mov     r9d, eax
                test    eax, eax
                jnz     short loc_140895061
                mov     rcx, [rsp+38h+arg_10]
                mov     rdx, [rbx]
                mov     [rcx], rdx

loc_140895061:                          ; CODE XREF: IoCopyDeviceObjectHint+3D↑j
                                        ; IoCopyDeviceObjectHint+64↑j
                mov     eax, r9d

loc_140895064:                          ; CODE XREF: IoCopyDeviceObjectHint+2D↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCopyDeviceObjectHint endp

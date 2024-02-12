IoGetDeviceObjectPointer proc near      ; CODE XREF: IoVolumeDeviceNameToGuidPath+F1↑p
                                        ; sub_1406C3030+16D↑p ...

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+var_34], 0
                mov     rsi, r8
                and     [rbp+var_1C], 0
                xorps   xmm0, xmm0
                and     [rbp+arg_0], 0
                mov     rdi, r9
                and     [rbp+var_30], 0
                mov     eax, cs:dword_140C11FF4
                neg     eax
                mov     [rbp+var_38], 30h ; '0'
                movups  [rbp+var_48], xmm0
                sbb     r8d, r8d
                mov     [rbp+var_28], rcx
                and     r8d, 40h
                add     r8d, 200h
                mov     [rbp+var_20], r8d
                movdqu  [rbp+var_18], xmm0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dword ptr [rsp+80h+var_58], 40h ; '@'
                lea     r9, [rbp+var_48]
                lea     r8, [rbp+var_38]
                mov     dword ptr [rsp+80h+var_60], 3
                lea     rcx, [rbp+arg_0]
                call    ZwOpenFile
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406C3581
                mov     r8, cs:IoFileObjectType
                lea     rax, [rbp+var_50]
                and     [rsp+80h+var_58], 0
                xor     r9d, r9d
                mov     rcx, [rbp+arg_0]
                xor     edx, edx
                and     [rbp+var_50], 0
                mov     [rsp+80h+var_60], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406C3578
                mov     rcx, [rbp+var_50]
                mov     [rsi], rcx
                call    IoGetRelatedDeviceObject
                mov     [rdi], rax

loc_1406C3578:                          ; CODE XREF: IoGetDeviceObjectPointer+C7↑j
                mov     rcx, [rbp+arg_0]
                call    ZwClose

loc_1406C3581:                          ; CODE XREF: IoGetDeviceObjectPointer+98↑j
                call    KeLeaveCriticalRegion
                lea     r11, [rsp+80h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetDeviceObjectPointer endp

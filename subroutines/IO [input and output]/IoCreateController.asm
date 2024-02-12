IoCreateController proc near            ; DATA XREF: .pdata:000000014011C988↑o

var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

                mov     [rsp-18h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 80h
                mov     eax, cs:dword_140C11FF4
                lea     r8, [rbp+var_30]
                xor     ebx, ebx
                mov     edi, ecx
                mov     [rsp+80h+var_38], rbx
                lea     rcx, [rbp+arg_8]
                mov     [rsp+80h+var_40], rcx
                neg     eax
                xorps   xmm0, xmm0
                mov     [rsp+80h+var_48], ebx
                sbb     edx, edx
                mov     dword ptr [rsp+80h+var_50], ebx
                and     edx, 40h
                mov     [rbp+var_30], 30h ; '0'
                add     edx, 200h
                mov     [rbp+var_14], ebx
                mov     [rbp+var_18], edx
                lea     eax, [rdi+48h]
                mov     rdx, cs:qword_140CFCB08
                xor     r9d, r9d
                xor     ecx, ecx
                mov     [rbp+arg_8], rbx
                mov     [rbp+arg_10], rbx
                mov     [rbp+var_28], rbx
                mov     [rbp+var_20], rbx
                movdqu  [rbp+var_10], xmm0
                mov     dword ptr [rsp+80h+var_58], eax
                call    sub_14061EDD0
                test    eax, eax
                js      short loc_140895170
                mov     rcx, [rbp+arg_8]
                lea     rax, [rbp+arg_10]
                mov     [rsp+80h+var_50], rax
                lea     r9d, [rbx+1]
                lea     rax, [rbp+arg_8]
                xor     edx, edx
                mov     [rsp+80h+var_58], rax
                lea     r8d, [rbx+3]
                mov     [rsp+80h+var_60], ebx
                call    sub_14061EFE0
                test    eax, eax
                js      short loc_140895170
                mov     rcx, [rbp+arg_10]
                xor     edx, edx
                call    ObCloseHandle
                lea     esi, [rbx+48h]
                xor     edx, edx
                mov     rbx, [rbp+arg_8]
                lea     r8, [rsi+rdi]
                mov     rcx, rbx
                call    memset
                lea     eax, [rsi-46h]
                add     di, si
                mov     [rbx], ax
                lea     rcx, [rbx+10h]
                lea     rax, [rbx+48h]
                mov     [rbx+2], di
                mov     [rbx+8], rax
                call    KeInitializeDeviceQueue

loc_140895170:                          ; CODE XREF: IoCreateController+83↑j
                                        ; IoCreateController+B0↑j
                mov     rax, rbx
                mov     rbx, [rsp+80h+arg_0]
                add     rsp, 80h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateController endp

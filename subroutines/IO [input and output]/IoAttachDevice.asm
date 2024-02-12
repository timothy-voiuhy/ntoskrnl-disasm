IoAttachDevice  proc near               ; DATA XREF: .pdata:000000014011C94C↑o

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_18          = qword ptr  38h

                mov     [rsp-18h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 70h
                and     [rbp+var_2C], 0
                lea     r9, [rbp+var_40]
                and     [rbp+var_14], 0
                mov     rdi, r8
                and     [rbp+arg_8], 0
                xorps   xmm0, xmm0
                and     [rbp+var_28], 0
                mov     rsi, rcx
                mov     eax, cs:dword_140C11FF4
                lea     rcx, [rbp+arg_8]
                neg     eax
                mov     [rbp+var_20], rdx
                mov     dword ptr [rsp+70h+var_48], 80000040h
                mov     edx, 80h
                sbb     r8d, r8d
                mov     [rbp+var_30], 30h ; '0'
                and     dword ptr [rsp+70h+var_50], 0
                and     r8d, 40h
                add     r8d, 200h
                mov     [rbp+var_18], r8d
                lea     r8, [rbp+var_30]
                movups  [rbp+var_40], xmm0
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenFile
                test    eax, eax
                js      short loc_140894D89
                mov     r8, cs:IoFileObjectType
                lea     rax, [rbp+arg_18]
                and     [rsp+70h+var_48], 0
                xor     r9d, r9d
                mov     rcx, [rbp+arg_8]
                xor     edx, edx
                and     [rbp+arg_18], 0
                mov     [rsp+70h+var_50], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_140894D7E
                mov     rcx, [rbp+arg_18]
                call    IoGetRelatedDeviceObject
                mov     rcx, [rbp+arg_8]
                mov     rbx, rax
                call    ZwClose
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rsi
                call    IoAttachDeviceToDeviceStackSafe
                mov     rcx, [rbp+arg_18]
                mov     ebx, eax
                call    PsDereferenceSiloContext
                jmp     short loc_140894D87
; ---------------------------------------------------------------------------

loc_140894D7E:                          ; CODE XREF: IoAttachDevice+AC↑j
                mov     rcx, [rbp+arg_8]
                call    ZwClose

loc_140894D87:                          ; CODE XREF: IoAttachDevice+DC↑j
                mov     eax, ebx

loc_140894D89:                          ; CODE XREF: IoAttachDevice+7D↑j
                mov     rbx, [rsp+70h+arg_0]
                add     rsp, 70h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAttachDevice  endp

algn_140894D9A:                         ; DATA XREF: .pdata:000000014011C94C↑o
                align 20h
; Exported entry 750. IoCancelFileOpen

; =============== S U B R O U T I N E =======================================



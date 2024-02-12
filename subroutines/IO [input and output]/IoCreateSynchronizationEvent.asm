IoCreateSynchronizationEvent proc near  ; DATA XREF: .pdata:000000014011C994↑o

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

                mov     [rsp-8+arg_8], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_2C], 0
                lea     r8, [rbp+var_30]
                and     [rbp+var_14], 0
                mov     rbx, rdx
                and     [rbp+arg_0], 0
                xorps   xmm0, xmm0
                and     [rbp+var_28], 0
                mov     edx, 1F0003h
                mov     [rbp+var_20], rcx
                mov     r9d, 1
                lea     rcx, [rbp+arg_0]
                mov     [rbp+var_30], 30h ; '0'
                movdqu  [rbp+var_10], xmm0
                mov     [rbp+var_18], 280h
                mov     byte ptr [rsp+60h+var_40], 1
                call    ZwCreateEvent
                test    eax, eax
                jns     short loc_1408951F1
                xor     eax, eax
                jmp     short loc_14089522E
; ---------------------------------------------------------------------------

loc_1408951F1:                          ; CODE XREF: IoCreateSynchronizationEvent+5B↑j
                and     [rsp+60h+var_38], 0
                lea     rax, [rbp+arg_10]
                mov     r8, cs:ExEventObjectType
                xor     r9d, r9d
                mov     rcx, [rbp+arg_0]
                xor     edx, edx
                and     [rbp+arg_10], 0
                mov     [rsp+60h+var_40], rax
                call    ObReferenceObjectByHandle
                mov     rcx, [rbp+arg_10]
                call    PsDereferenceSiloContext
                mov     rcx, [rbp+arg_0]
                mov     rax, [rbp+arg_10]
                mov     [rbx], rcx

loc_14089522E:                          ; CODE XREF: IoCreateSynchronizationEvent+5F↑j
                mov     rbx, [rsp+60h+arg_8]
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateSynchronizationEvent endp

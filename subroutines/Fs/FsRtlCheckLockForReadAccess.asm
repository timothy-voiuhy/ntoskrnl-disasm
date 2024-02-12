FsRtlCheckLockForReadAccess proc near   ; DATA XREF: .pdata:00000001400D5EAC↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                mov     r9, [rcx+18h]
                mov     rsi, rcx
                test    r9, r9
                jz      short loc_140329272
                cmp     qword ptr [r9+28h], 0
                jz      short loc_140329272
                mov     rbx, [rdx+0B8h]
                mov     r8, [rbx+18h]
                mov     eax, [rbx+8]
                mov     [rsp+38h+arg_10], r8
                mov     [rsp+38h+arg_0], rax
                lea     rcx, [r8+rax]
                cmp     rcx, [r9]
                jbe     short loc_140329272
                mov     edi, [rbx+10h]
                mov     rcx, rdx
                mov     rbx, [rbx+30h]
                call    IoGetRequestorProcess
                mov     [rsp+38h+var_10], rax
                lea     r8, [rsp+38h+arg_0]
                mov     r9d, edi
                mov     [rsp+38h+var_18], rbx
                lea     rdx, [rsp+38h+arg_10]
                mov     rcx, rsi
                call    FsRtlFastCheckLockForRead

loc_140329261:                          ; CODE XREF: FsRtlCheckLockForReadAccess+84↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140329272:                          ; CODE XREF: FsRtlCheckLockForReadAccess+19↑j
                                        ; FsRtlCheckLockForReadAccess+20↑j ...
                mov     al, 1
                jmp     short loc_140329261
FsRtlCheckLockForReadAccess endp

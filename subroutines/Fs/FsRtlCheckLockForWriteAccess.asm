FsRtlCheckLockForWriteAccess proc near  ; DATA XREF: .pdata:00000001400D5E94↑o

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
                mov     r8, [rcx+18h]
                mov     r9, rdx
                mov     rsi, rcx
                test    r8, r8
                jz      short loc_14032901C
                cmp     qword ptr [r8+28h], 0
                jnz     short loc_14032902F
                cmp     qword ptr [r8+20h], 0
                jnz     short loc_14032902F

loc_14032901C:                          ; CODE XREF: FsRtlCheckLockForWriteAccess+1C↑j
                                        ; FsRtlCheckLockForWriteAccess+5E↓j
                mov     al, 1

loc_14032901E:                          ; CODE XREF: FsRtlCheckLockForWriteAccess+8E↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032902F:                          ; CODE XREF: FsRtlCheckLockForWriteAccess+23↑j
                                        ; FsRtlCheckLockForWriteAccess+2A↑j
                mov     rbx, [rdx+0B8h]
                mov     rdx, [rbx+18h]
                mov     eax, [rbx+8]
                mov     [rsp+38h+arg_10], rdx
                mov     [rsp+38h+arg_0], rax
                lea     rcx, [rdx+rax]
                cmp     rcx, [r8]
                jbe     short loc_14032901C
                mov     edi, [rbx+10h]
                mov     rcx, r9
                mov     rbx, [rbx+30h]
                call    IoGetRequestorProcess
                mov     [rsp+38h+var_10], rax
                lea     r8, [rsp+38h+arg_0]
                mov     r9d, edi
                mov     [rsp+38h+var_18], rbx
                lea     rdx, [rsp+38h+arg_10]
                mov     rcx, rsi
                call    FsRtlFastCheckLockForWrite
                jmp     short loc_14032901E
FsRtlCheckLockForWriteAccess endp

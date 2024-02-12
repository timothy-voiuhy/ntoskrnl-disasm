KeSynchronizeExecution proc near        ; DATA XREF: .pdata:00000001400E3430↑o

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                push    rsi
                sub     rsp, 30h
                mov     rsi, [rcx+48h]
                mov     [rsp+38h+arg_0], rcx
                movzx   ecx, byte ptr [rcx+5Dh]
                cmp     cl, 0
                jz      short loc_1403FED74
                mov     rax, cr8
                mov     cr8, rcx
                mov     [rsp+38h+arg_8], rdx
                mov     rcx, rsi
                mov     [rsp+38h+arg_10], r8
                mov     [rsp+38h+var_18], eax
                call    KeAcquireSpinLockAtDpcLevel
                mov     rdx, [rsp+38h+arg_8]
                mov     rcx, [rsp+38h+arg_10]
                mov     rax, rdx
                call    sub_1404079D0
                mov     rcx, rsi
                mov     sil, al
                call    KeReleaseSpinLockFromDpcLevel
                mov     ecx, [rsp+38h+var_18]
                mov     cr8, rcx
                mov     al, sil

loc_1403FED6E:                          ; CODE XREF: KeSynchronizeExecution+6E↓j
                add     rsp, 30h
                pop     rsi
                retn
; ---------------------------------------------------------------------------

loc_1403FED74:                          ; CODE XREF: KeSynchronizeExecution+16↑j
                mov     rcx, [rsp+38h+arg_0]
                call    sub_140521FF0
                jmp     short loc_1403FED6E
KeSynchronizeExecution endp

IoDeleteSymbolicLink proc near          ; DATA XREF: .pdata:000000014010A988↑o

var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

                mov     [rsp-8+arg_8], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                and     [rbp+var_2C], 0
                lea     r8, [rbp+var_30]
                and     [rbp+var_14], 0
                xorps   xmm0, xmm0
                and     [rbp+arg_0], 0
                mov     edx, 10000h
                and     [rbp+var_28], 0
                mov     [rbp+var_20], rcx
                lea     rcx, [rbp+arg_0]
                movdqu  [rbp+var_10], xmm0
                mov     [rbp+var_30], 30h ; '0'
                mov     [rbp+var_18], 240h
                call    ZwOpenSymbolicLinkObject
                mov     ebx, eax
                test    eax, eax
                js      short loc_140770F89
                mov     rcx, [rbp+arg_0]
                call    ZwMakeTemporaryObject
                mov     ebx, eax
                test    eax, eax
                js      short loc_140770F89
                mov     rcx, [rbp+arg_0]
                call    ZwClose

loc_140770F89:                          ; CODE XREF: IoDeleteSymbolicLink+4F↑j
                                        ; IoDeleteSymbolicLink+5E↑j
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoDeleteSymbolicLink endp

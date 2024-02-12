ExSetTimer      proc near               ; CODE XREF: sub_14029DB04+85↑p
                                        ; sub_1402B5208+17↑p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044F8D4 SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 40h
                mov     rbp, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     rbx, r9
                mov     rsi, rcx
                lea     r8d, [rdx+4]
                test    rbp, rbp
                jg      loc_14044F8D4

loc_1402B525F:                          ; CODE XREF: ExSetTimer+19A6AB↓j
                test    rdi, rdi
                js      loc_14044F904
                test    rbx, rbx
                jz      short loc_1402B527D
                mov     rcx, rbx
                call    sub_1402AFFD8
                test    al, al
                jz      loc_14044F923

loc_1402B527D:                          ; CODE XREF: ExSetTimer+3B↑j
                mov     rcx, rsi
                call    sub_1402B52B4
                mov     r9, rbx
                mov     r8, rdi
                mov     rdx, rbp
                mov     rcx, rsi
                call    KeSetTimer2
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSetTimer      endp

byte_1402B52AC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400656D8↑o
                                        ; .pdata:00000001400D09E0↑o

; =============== S U B R O U T I N E =======================================


sub_1402B52B4   proc near               ; CODE XREF: ExCancelTimer+10↑p
                                        ; ExSetTimer+50↑p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014044F93C SIZE 0000002B BYTES

                sub     rsp, 38h
                mov     al, cs:byte_140CFC4C6
                cmp     [rcx+98h], al
                jnz     loc_14044F93C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B52B4   endp

algn_1402B52D0:                         ; DATA XREF: .rdata:00000001400656F4↑o
                                        ; .pdata:00000001400D09EC↑o
                align 20h
; Exported entry 206. ExDeleteTimer

; =============== S U B R O U T I N E =======================================



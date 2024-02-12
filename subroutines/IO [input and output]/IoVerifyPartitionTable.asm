IoVerifyPartitionTable proc near        ; DATA XREF: .pdata:000000014011C52C↑o

var_188         = qword ptr -188h
var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 1A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1A8h+var_18], rax
                mov     r8, rcx
                mov     dil, dl
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_1405C6E34
                and     [rsp+1A8h+var_28], 0
                lea     rsi, off_140006098
                mov     rdx, r8
                mov     [rsp+1A8h+var_188], rsi
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_14088F0B8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14088F87B
                mov     dl, dil
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_1405C76A8
                mov     ebx, eax

loc_14088F87B:                          ; CODE XREF: IoVerifyPartitionTable+5A↑j
                lea     rcx, [rsp+1A8h+var_188]
                mov     [rsp+1A8h+var_188], rsi
                call    sub_1405C6F44
                mov     eax, ebx
                mov     rcx, [rsp+1A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088F810
IoVerifyPartitionTable endp

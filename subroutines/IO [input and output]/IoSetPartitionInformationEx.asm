IoSetPartitionInformationEx proc near   ; DATA XREF: .pdata:000000014011C520↑o

var_188         = qword ptr -188h
var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 1A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1A8h+var_18], rax
                mov     r9, rcx
                mov     rdi, r8
                lea     rcx, [rsp+1A8h+var_188]
                mov     esi, edx
                call    sub_1405C6E34
                and     [rsp+1A8h+var_28], 0
                lea     rbp, off_140006098
                mov     rdx, r9
                mov     [rsp+1A8h+var_188], rbp
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_14088F0B8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14088F7C4
                mov     r8, rdi
                lea     rcx, [rsp+1A8h+var_188]
                mov     edx, esi
                call    sub_1405C763C
                mov     ebx, eax

loc_14088F7C4:                          ; CODE XREF: IoSetPartitionInformationEx+61↑j
                lea     rcx, [rsp+1A8h+var_188]
                mov     [rsp+1A8h+var_188], rbp
                call    sub_1405C6F44
                mov     eax, ebx
                mov     rcx, [rsp+1A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088F750
IoSetPartitionInformationEx endp

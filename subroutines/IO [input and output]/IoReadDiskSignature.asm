IoReadDiskSignature proc near           ; DATA XREF: .pdata:000000014011C4F0↑o

var_198         = qword ptr -198h
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
                sub     rsp, 1B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1B8h+var_18], rax
                mov     r9, rcx
                mov     rdi, r8
                lea     rcx, [rsp+1B8h+var_188]
                call    sub_1405C6E34
                and     [rsp+1B8h+var_28], 0
                lea     rsi, off_140006098
                and     [rsp+1B8h+var_198], 0
                lea     rcx, [rsp+1B8h+var_188]
                mov     rdx, r9
                mov     [rsp+1B8h+var_188], rsi
                call    sub_14088F0B8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14088F3A5
                lea     rdx, [rsp+1B8h+var_198]
                lea     rcx, [rsp+1B8h+var_188]
                call    sub_1405C7408
                mov     rcx, [rsp+1B8h+var_198]
                mov     ebx, eax
                test    eax, eax
                js      short loc_14088F399
                mov     eax, [rcx]
                mov     [rdi], eax
                mov     edx, [rcx]
                test    edx, edx
                jz      short loc_14088F38D
                cmp     edx, 1
                jz      short loc_14088F382
                mov     ebx, 0C00000BBh
                jmp     short loc_14088F399
; ---------------------------------------------------------------------------

loc_14088F382:                          ; CODE XREF: IoReadDiskSignature+89↑j
                movups  xmm0, xmmword ptr [rcx+8]
                movdqu  xmmword ptr [rdi+4], xmm0
                jmp     short loc_14088F399
; ---------------------------------------------------------------------------

loc_14088F38D:                          ; CODE XREF: IoReadDiskSignature+84↑j
                mov     eax, [rcx+8]
                mov     [rdi+4], eax
                mov     eax, [rcx+0Ch]
                mov     [rdi+8], eax

loc_14088F399:                          ; CODE XREF: IoReadDiskSignature+7A↑j
                                        ; IoReadDiskSignature+90↑j ...
                test    rcx, rcx
                jz      short loc_14088F3A5
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14088F3A5:                          ; CODE XREF: IoReadDiskSignature+60↑j
                                        ; IoReadDiskSignature+AC↑j
                lea     rcx, [rsp+1B8h+var_188]
                mov     [rsp+1B8h+var_188], rsi
                call    sub_1405C6F44
                mov     eax, ebx
                mov     rcx, [rsp+1B8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1B8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088F2F0
IoReadDiskSignature endp

SeAccessCheckFromState proc near        ; CODE XREF: sub_140629D8C+68↓p
                                        ; sub_1406EE088+88↓p
                                        ; DATA XREF: ...

var_9B8         = dword ptr -9B8h
var_9B0         = qword ptr -9B0h
var_9A8         = qword ptr -9A8h
var_9A0         = byte ptr -9A0h
var_998         = qword ptr -998h
var_990         = qword ptr -990h
var_988         = byte ptr -988h
var_4E8         = byte ptr -4E8h
var_48          = qword ptr -48h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 0000000140428296 SIZE 00000017 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 9A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+9D8h+var_48], rax
                mov     r14, [rsp+9D8h+arg_28]
                mov     rdi, r8
                mov     r15, [rsp+9D8h+arg_30]
                mov     rbx, rdx
                mov     r12, [rsp+9D8h+arg_40]
                mov     rbp, rcx
                mov     r13, [rsp+9D8h+arg_48]
                lea     rcx, [rsp+9D8h+var_4E8]
                xor     edx, edx
                mov     r8d, 498h
                mov     esi, r9d
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+9D8h+var_988]
                mov     r8d, 498h
                call    memset
                lea     rdx, [rsp+9D8h+var_4E8]
                mov     rcx, rbx
                call    sub_14021CE64
                xor     r8d, r8d
                test    rdi, rdi
                jnz     loc_140428296

loc_14021CD58:                          ; CODE XREF: SeAccessCheckFromState+20B5E8↓j
                mov     al, [rsp+9D8h+arg_38]
                lea     rdx, [rsp+9D8h+var_4E8]
                mov     [rsp+9D8h+var_990], r13
                mov     r9d, esi
                mov     [rsp+9D8h+var_998], r12
                mov     rcx, rbp
                mov     [rsp+9D8h+var_9A0], al
                mov     eax, [rsp+9D8h+arg_20]
                mov     [rsp+9D8h+var_9A8], r15
                mov     [rsp+9D8h+var_9B0], r14
                mov     [rsp+9D8h+var_9B8], eax
                call    SeAccessCheckFromStateEx
                mov     rcx, [rsp+9D8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+9D8h+arg_18]
                add     rsp, 9A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14021CCC0
SeAccessCheckFromState endp

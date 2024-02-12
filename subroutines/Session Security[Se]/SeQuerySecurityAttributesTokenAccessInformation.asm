SeQuerySecurityAttributesTokenAccessInformation proc near
                                        ; DATA XREF: .rdata:0000000140045A78↑o
                                        ; .pdata:00000001400C93D8↑o

var_508         = byte ptr -508h
var_500         = qword ptr -500h
var_4F8         = dword ptr -4F8h
var_4F0         = qword ptr -4F0h
var_4E8         = byte ptr -4E8h
var_48          = qword ptr -48h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014041FABC SIZE 0000000E BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 4F8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+528h+var_48], rax
                mov     r15, [rsp+528h+arg_28]
                mov     r14d, r8d
                mov     rbp, rdx
                mov     rsi, rcx
                xor     edx, edx
                lea     rcx, [rsp+528h+var_4E8]
                mov     r8d, 498h
                mov     rbx, r9
                call    memset
                mov     edi, [rsp+528h+arg_20]
                test    edi, edi
                jz      loc_14041FABC
                test    rbx, rbx
                jz      short loc_14020412D

loc_1402040DC:                          ; CODE XREF: SeQuerySecurityAttributesTokenAccessInformation+21BA45↓j
                lea     rdx, [rsp+528h+var_4E8]
                mov     rcx, rsi
                call    sub_14021CE64
                mov     [rsp+528h+var_4F0], r15
                lea     rcx, [rsp+528h+var_4E8]
                mov     [rsp+528h+var_4F8], edi
                mov     r9d, r14d
                mov     [rsp+528h+var_500], rbx
                mov     r8, rbp
                mov     [rsp+528h+var_508], 0
                call    sub_140205A00

loc_14020410C:                          ; CODE XREF: SeQuerySecurityAttributesTokenAccessInformation+B2↓j
                mov     rcx, [rsp+528h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 4F8h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14020412D:                          ; CODE XREF: SeQuerySecurityAttributesTokenAccessInformation+5A↑j
                                        ; SeQuerySecurityAttributesTokenAccessInformation+21BA3F↓j
                mov     eax, 0C000000Dh
                jmp     short loc_14020410C
; } // starts at 140204080
SeQuerySecurityAttributesTokenAccessInformation endp

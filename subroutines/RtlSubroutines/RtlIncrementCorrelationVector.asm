RtlIncrementCorrelationVector proc near ; DATA XREF: .pdata:0000000140122190↑o

var_38          = dword ptr -38h
var_28          = dword ptr -28h
var_20          = byte ptr -20h
var_10          = qword ptr -10h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_10], rax
                and     [rsp+58h+var_28], 0
                mov     rdi, rcx
                call    sub_140917C14
                mov     rcx, rdi
                mov     ebp, eax
                call    RtlValidateCorrelationVector
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091799A
                mov     rcx, rdi
                call    sub_14058CFEC
                mov     esi, eax
                test    eax, eax
                js      short loc_140917995
                inc     eax
                lea     r8, [rsp+58h+var_28]
                movsxd  rcx, eax
                lea     rdx, qword_1407DDFD0
                add     rdi, rcx
                lea     rcx, [rdi+1]
                call    sscanf_s
                cmp     eax, 1
                jnz     short loc_140917995
                mov     eax, [rsp+58h+var_28]
                lea     r9, qword_1407DDFD0
                inc     eax
                lea     rcx, [rsp+58h+var_20]
                mov     edx, 0Ch
                mov     [rsp+58h+var_28], eax
                mov     r8d, edx
                mov     [rsp+58h+var_38], eax
                call    _snprintf_s
                sub     ebp, esi
                sub     ebp, 2
                cmp     eax, ebp
                jge     short loc_140917995
                inc     eax
                lea     r8, [rsp+58h+var_20]
                movsxd  rdx, eax
                lea     rcx, [rdi+1]
                call    strcpy_s
                jmp     short loc_14091799A
; ---------------------------------------------------------------------------

loc_140917995:                          ; CODE XREF: RtlIncrementCorrelationVector+4C↑j
                                        ; RtlIncrementCorrelationVector+6E↑j ...
                mov     ebx, 80000005h

loc_14091799A:                          ; CODE XREF: RtlIncrementCorrelationVector+3E↑j
                                        ; RtlIncrementCorrelationVector+B3↑j
                mov     eax, ebx
                mov     rcx, [rsp+58h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409178E0
RtlIncrementCorrelationVector endp

RtlGetSetBootStatusData proc near       ; CODE XREF: sub_14077D848+1B0↑p
                                        ; sub_1407C0A10+20D↓p
                                        ; DATA XREF: ...

var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = byte ptr -0F0h
var_EC          = dword ptr -0ECh
var_E0          = byte ptr -0E0h
var_30          = qword ptr -30h
arg_8           = qword ptr  18h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140852614 SIZE 0000000A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+47h+var_30], rax
                mov     r14, [rbp+47h+arg_28]
                mov     esi, r8d
                and     [rsp+120h+var_EC], 0
                mov     bl, dl
                mov     r15, rcx
                mov     [rsp+120h+var_F0], 0
                xor     edx, edx
                lea     rcx, [rsp+120h+var_E0]
                mov     r8d, 0B0h
                mov     rdi, r9
                call    memset
                test    bl, bl
                jnz     loc_1407890B4
                mov     ebx, 0Fh
                cmp     esi, ebx
                jz      loc_140852614
                and     [rsp+120h+var_F8], 0
                lea     r9, [rsp+120h+var_F0]
                mov     r8d, ebx
                mov     [rsp+120h+var_100], 1
                mov     dl, 1
                mov     rcx, r15
                call    sub_1407890D0
                test    eax, eax
                js      loc_140789090
                and     [rsp+120h+var_F8], 0
                lea     r9, [rsp+120h+var_E0]
                mov     r8d, esi
                mov     [rsp+120h+var_100], 0B0h
                mov     dl, 1
                mov     rcx, r15
                call    sub_1407890D0
                test    eax, eax
                js      short loc_140789090
                lea     rax, [rsp+120h+var_EC]
                mov     r9, rdi
                mov     [rsp+120h+var_F8], rax
                mov     r8d, esi
                mov     eax, [rbp+47h+arg_20]
                xor     edx, edx
                mov     rcx, r15
                mov     [rsp+120h+var_100], eax
                call    sub_1407890D0
                test    eax, eax
                js      short loc_140789090
                mov     eax, [rsp+120h+var_EC]
                test    r14, r14
                jz      short loc_140789043
                mov     [r14], eax

loc_140789043:                          ; CODE XREF: RtlGetSetBootStatusData+DE↑j
                test    eax, eax
                jz      short loc_140789070
                mov     rdx, rax
                lea     rcx, [rsp+120h+var_E0]
                mov     r8, rax
                mov     al, [rsp+120h+var_F0]

loc_140789056:                          ; CODE XREF: RtlGetSetBootStatusData+FF↓j
                add     al, [rcx]
                inc     rcx
                sub     r8, 1
                jnz     short loc_140789056

loc_140789061:                          ; CODE XREF: RtlGetSetBootStatusData+10A↓j
                sub     al, [rdi]
                inc     rdi
                sub     rdx, 1
                jnz     short loc_140789061
                mov     [rsp+120h+var_F0], al

loc_140789070:                          ; CODE XREF: RtlGetSetBootStatusData+E5↑j
                and     [rsp+120h+var_F8], 0
                lea     r9, [rsp+120h+var_F0]
                xor     edx, edx
                mov     [rsp+120h+var_100], 1
                mov     r8d, ebx

loc_140789088:                          ; CODE XREF: RtlGetSetBootStatusData+168↓j
                mov     rcx, r15
                call    sub_1407890D0

loc_140789090:                          ; CODE XREF: RtlGetSetBootStatusData+88↑j
                                        ; RtlGetSetBootStatusData+B0↑j ...
                mov     rcx, [rbp+47h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+120h+arg_8]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407890B4:                          ; CODE XREF: RtlGetSetBootStatusData+53↑j
                mov     eax, [rbp+47h+arg_20]
                mov     r9, rdi
                mov     [rsp+120h+var_F8], r14
                mov     r8d, esi
                mov     [rsp+120h+var_100], eax
                mov     dl, 1
                jmp     short loc_140789088
; } // starts at 140788F60
RtlGetSetBootStatusData endp

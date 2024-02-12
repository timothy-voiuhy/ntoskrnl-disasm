VslCreateSecureSection proc near        ; DATA XREF: .pdata:000000014011C64C↑o

var_100         = dword ptr -100h
var_F0          = qword ptr -0F0h
var_B8          = qword ptr -0B8h
var_A0          = byte ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_30          = qword ptr -30h
arg_20          = dword ptr  30h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-2Fh]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_30], rax
                mov     rsi, rdx
                mov     rbx, r8
                xor     edx, edx
                mov     rdi, rcx
                lea     rcx, [rbp+4Fh+var_A0]
                mov     r14d, r9d
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+120h+var_F0]
                lea     r8d, [rdx+48h]
                call    memset
                and     qword ptr [rdi], 0
                test    [rbp+4Fh+arg_20], 0FFFFFFFEh
                jz      short loc_140890963
                mov     eax, 0C00000F4h
                jmp     loc_1408909FC
; ---------------------------------------------------------------------------

loc_140890963:                          ; CODE XREF: VslCreateSecureSection+57↑j
                test    byte ptr [rbp+4Fh+arg_20], 1
                jnz     short loc_140890978
                test    dword ptr [rbx+28h], 0FFFh
                jnz     short loc_14089098D
                cmp     dword ptr [rbx+2Ch], 0
                jnz     short loc_14089098D

loc_140890978:                          ; CODE XREF: VslCreateSecureSection+67↑j
                mov     edx, [rbx+28h]
                mov     ecx, [rbx+2Ch]
                call    MmSizeOfMdl
                mov     ecx, 0FFFFFFFFh
                cmp     rax, rcx
                jbe     short loc_140890994

loc_14089098D:                          ; CODE XREF: VslCreateSecureSection+70↑j
                                        ; VslCreateSecureSection+76↑j
                mov     eax, 0C00000F1h
                jmp     short loc_1408909FC
; ---------------------------------------------------------------------------

loc_140890994:                          ; CODE XREF: VslCreateSecureSection+8B↑j
                and     [rsp+120h+var_100], 0
                lea     rcx, [rsp+120h+var_F0]
                xor     r9d, r9d
                mov     r8d, eax
                mov     rdx, rbx
                call    sub_1403940A8
                test    eax, eax
                js      short loc_1408909FC
                mov     rax, [rsp+120h+var_F0]
                lea     r9, [rbp+4Fh+var_A0]
                mov     [rbp+4Fh+var_88], rax
                mov     edx, 3Fh ; '?'
                mov     rax, [rbp+4Fh+var_B8]
                xor     r8d, r8d
                mov     [rbp+4Fh+var_78], rax
                mov     cl, 2
                mov     rax, [rsi+3E0h]
                mov     [rbp+4Fh+var_98], rax
                mov     [rbp+4Fh+var_90], r14d
                call    sub_14034DB1C
                lea     rcx, [rsp+120h+var_F0]
                mov     ebx, eax
                call    sub_140394054
                test    ebx, ebx
                js      short loc_1408909FA
                mov     rcx, [rbp+4Fh+var_80]
                mov     [rdi], rcx

loc_1408909FA:                          ; CODE XREF: VslCreateSecureSection+F1↑j
                mov     eax, ebx

loc_1408909FC:                          ; CODE XREF: VslCreateSecureSection+5E↑j
                                        ; VslCreateSecureSection+92↑j ...
                mov     rcx, [rbp+4Fh+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140890900
VslCreateSecureSection endp

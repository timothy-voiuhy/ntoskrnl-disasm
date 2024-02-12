PoSetUserPresent proc near              ; CODE XREF: sub_1409930F4+117C↓p
                                        ; DATA XREF: .rdata:000000014009E4B4↑o ...

var_38          = dword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A6E44 SIZE 00000033 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_18], rax
                mov     edi, ecx
                mov     rbx, cr8
                cmp     bl, 2
                jnb     short loc_1403A5E69
                call    sub_140991320

loc_1403A5E69:                          ; CODE XREF: PoSetUserPresent+22↑j
                test    dword ptr cs:xmmword_140CFC490, 8000h
                jnz     loc_1404A6E44

loc_1403A5E79:                          ; CODE XREF: PoSetUserPresent+101032↓j
                mov     edx, edi
                mov     ecx, 4
                call    sub_1403A5EB0
                cmp     bl, 2
                jnb     short loc_1403A5E8F
                call    sub_1409912E0

loc_1403A5E8F:                          ; CODE XREF: PoSetUserPresent+48↑j
                mov     rcx, [rsp+58h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403A5E40
PoSetUserPresent endp

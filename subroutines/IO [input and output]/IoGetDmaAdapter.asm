IoGetDmaAdapter proc near               ; CODE XREF: sub_1409CDE70+173↓p
                                        ; DATA XREF: .rdata:0000000140092D50↑o ...

var_98          = qword ptr -98h
var_88          = dword ptr -88h
var_78          = byte ptr -78h
var_64          = dword ptr -64h
var_38          = qword ptr -38h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140843CB8 SIZE 0000016A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_38], rax
                mov     rbp, r8
                mov     rsi, rdx
                mov     rdi, rcx
                mov     r14d, 40h ; '@'
                mov     r8d, r14d
                lea     rcx, [rsp+0B8h+var_78]
                xor     edx, edx
                call    memset
                xor     ebx, ebx
                mov     [rsp+0B8h+var_88], ebx
                test    rdi, rdi
                jz      short loc_140763B47
                mov     rax, [rdi+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_140843D11
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_140843D11
                mov     rcx, gs:188h
                mov     rdx, rdi
                mov     rax, cs:off_140C00908
                call    sub_1404079D0
                mov     eax, [rsi+14h]
                lea     r15d, [r14-3Fh]
                add     eax, r15d
                test    eax, 0FFFFFFEFh
                jz      loc_140843CB8

loc_140763B1F:                          ; CODE XREF: IoGetDmaAdapter+E028C↓j
                mov     r8, rbp
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140763B78
                mov     rcx, gs:188h
                mov     rbx, rax
                mov     rax, cs:off_140C00908
                xor     edx, edx
                call    sub_1404079D0

loc_140763B47:                          ; CODE XREF: IoGetDmaAdapter+4C↑j
                mov     rax, rbx
                mov     rcx, [rsp+0B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_18]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140763A80
IoGetDmaAdapter endp

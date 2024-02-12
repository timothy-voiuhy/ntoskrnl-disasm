PsSetLoadImageNotifyRoutineEx proc near ; CODE XREF: PsSetLoadImageNotifyRoutine+6↑p
                                        ; DATA XREF: .rdata:000000014009F440↑o ...

var_58          = qword ptr -58h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140853E3A SIZE 0000001E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_18], rax
                mov     rsi, rcx
                test    rdx, 0FFFFFFFFFFFFFFFEh
                jnz     loc_140853E3A
                call    sub_140799480
                mov     rdi, rax
                test    rax, rax
                jz      loc_140853E4E
                xor     ebx, ebx

loc_1407990E1:                          ; CODE XREF: PsSetLoadImageNotifyRoutineEx+104↓j
                lea     rcx, unk_140CEC320
                xor     r8d, r8d
                lea     rcx, [rcx+rbx*8]
                mov     rdx, rdi
                call    sub_1403AF5DC
                test    al, al
                jz      loc_14079919F
                lock inc cs:dword_140D2E9D4
                mov     eax, cs:dword_140D2E6A0
                test    al, 1
                jnz     short loc_140799119
                lock bts cs:dword_140D2E6A0, 0

loc_140799119:                          ; CODE XREF: PsSetLoadImageNotifyRoutineEx+6E↑j
                xor     ebx, ebx

loc_14079911B:                          ; CODE XREF: PsSetLoadImageNotifyRoutineEx+BADB3↓j
                mov     rcx, cs:qword_140C19DD0
                mov     [rsp+78h+var_48], ebx
                mov     [rsp+78h+var_40], rsi
                test    rcx, rcx
                jz      short loc_14079917D
                and     [rsp+78h+var_2C], 0
                lea     rax, [rsp+78h+var_40]
                and     [rsp+78h+var_1C], 0
                lea     rdx, qword_14000D058
                mov     [rsp+78h+var_38], rax
                mov     r9d, 2
                lea     rax, [rsp+78h+var_48]
                mov     [rsp+78h+var_30], 8
                mov     [rsp+78h+var_28], rax
                xor     r8d, r8d
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_20], 4
                mov     [rsp+78h+var_58], rax
                call    EtwWrite

loc_14079917D:                          ; CODE XREF: PsSetLoadImageNotifyRoutineEx+8E↑j
                mov     eax, ebx

loc_14079917F:                          ; CODE XREF: PsSetLoadImageNotifyRoutineEx+BAD9F↓j
                mov     rcx, [rsp+78h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14079919F:                          ; CODE XREF: PsSetLoadImageNotifyRoutineEx+59↑j
                inc     ebx
                cmp     ebx, 40h ; '@'
                jb      loc_1407990E1
                jmp     loc_140853E44
; } // starts at 1407990A0
PsSetLoadImageNotifyRoutineEx endp

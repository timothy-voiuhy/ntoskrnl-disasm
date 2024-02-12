SeCheckForCriticalAceRemoval proc near  ; CODE XREF: sub_1405FAB94+137↓p
                                        ; DATA XREF: .rdata:00000001400481AC↑o ...

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_6F          = byte ptr -6Fh
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h

; FUNCTION CHUNK AT 00000001407F809E SIZE 0000005B BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                lea     rbp, [rsp-4Fh]
                sub     rsp, 98h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                and     [rbp+57h+var_68], 0
                lea     rax, [rbp+57h+var_6F]
                mov     rbx, r9
                mov     [rsp+0A0h+var_80], rax
                lea     r9, [rbp+57h+var_70]
                mov     [rbp+57h+var_70], 0
                mov     [rbp+57h+var_6F], 0
                call    sub_14020A3DC
                cmp     [rbp+57h+var_70], 0
                jnz     short loc_1405FA52F

loc_1405FA515:                          ; CODE XREF: SeCheckForCriticalAceRemoval+63↓j
                                        ; SeCheckForCriticalAceRemoval+78↓j ...
                mov     byte ptr [rbx], 0
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 98h
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405FA52F:                          ; CODE XREF: SeCheckForCriticalAceRemoval+43↑j
                cmp     [rbp+57h+var_6F], 0
                jnz     short loc_1405FA515
                call    PsGetCurrentThreadProcess
                lea     rdx, [rbp+57h+var_68]
                mov     rcx, rax
                call    sub_140696F78
                test    eax, eax
                js      short loc_1405FA515
                cmp     cs:dword_140C02B70, 5
                jbe     short loc_1405FA515
                mov     rdx, 200000000000h
                lea     rcx, dword_140C02B70
                call    sub_140209F38
                test    al, al
                jz      short loc_1405FA515
                jmp     loc_1407F809E
; } // starts at 1405FA4D0
SeCheckForCriticalAceRemoval endp

IoRegisterFsRegistrationChangeMountAware proc near
                                        ; CODE XREF: IoRegisterFsRegistrationChange+7↓p
                                        ; DATA XREF: .rdata:00000001400AAE6C↑o ...

var_58          = qword ptr -58h
var_48          = word ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408603D0 SIZE 00000128 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_20], rax
                cmp     cs:dword_140CF4A64, 0
                mov     bpl, r8b
                mov     rdi, rdx
                mov     rbx, rcx
                jnz     loc_1408603D0

loc_1407C8787:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+97C8B↓j
                mov     edx, 1
                mov     rcx, rbx
                call    FsRtlSetDriverBacking
                test    eax, eax
                js      short loc_1407C880A
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rsi, unk_140C459A0
                test    bpl, bpl
                jz      loc_140860475
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquireResourceExclusiveLite
                test    al, al
                jz      loc_140860462

loc_1407C87CA:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+97D30↓j
                lea     r12, qword_140C45AF0
                cmp     cs:qword_140C45AF0, r12
                jz      short loc_1407C882D
                mov     rax, cs:qword_140C45AF8
                cmp     [rax+10h], rbx
                jnz     short loc_1407C882D
                cmp     [rax+18h], rdi
                jnz     short loc_1407C882D
                mov     rcx, rsi
                call    ExReleaseResourceLite
                mov     ebx, 0C0000038h

loc_1407C87FA:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+97D20↓j
                                        ; IoRegisterFsRegistrationChangeMountAware+97D42↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx

loc_1407C880A:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+46↑j
                                        ; IoRegisterFsRegistrationChangeMountAware+19D↓j ...
                mov     rcx, [rsp+78h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407C882D:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+88↑j
                                        ; IoRegisterFsRegistrationChangeMountAware+95↑j ...
                mov     edx, 20h ; ' '
                mov     r8d, 73466F49h
                lea     ecx, [rdx-1Fh]
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_140860485
                mov     [rax+10h], rbx
                mov     [rax+18h], rdi
                mov     rcx, cs:qword_140C45AF8
                cmp     [rcx], r12
                jnz     loc_140860497
                mov     [rax], r12
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     cs:qword_140C45AF8, rax
                cmp     bpl, 1
                jnz     short loc_1407C8885

loc_1407C8878:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+97DA3↓j
                cmp     cs:dword_140CDB3C8, 0
                jnz     loc_14086049E

loc_1407C8885:                          ; CODE XREF: IoRegisterFsRegistrationChangeMountAware+126↑j
                                        ; IoRegisterFsRegistrationChangeMountAware+97D90↓j
                xor     r8d, r8d
                lea     rcx, qword_140C45AC0
                mov     rdx, rdi
                call    sub_1407C88F8
                mov     r8b, 1
                lea     rcx, qword_140C45AE0
                mov     rdx, rdi
                call    sub_1407C88F8
                mov     r8b, 1
                lea     rcx, qword_140C45A90
                mov     rdx, rdi
                call    sub_1407C88F8
                mov     r8b, 1
                lea     rcx, qword_140C45AD0
                mov     rdx, rdi
                call    sub_1407C88F8
                mov     rcx, rsi
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, rbx
                call    ObfReferenceObject
                xor     eax, eax
                jmp     loc_1407C880A
; } // starts at 1407C8750
IoRegisterFsRegistrationChangeMountAware endp

PoRegisterPowerSettingCallback proc near
                                        ; CODE XREF: sub_1404F8774+36↑p
                                        ; sub_1404F8774+73↑p ...

var_280         = qword ptr -280h
var_278         = xmmword ptr -278h
var_268         = qword ptr -268h
var_260         = xmmword ptr -260h
var_250         = dword ptr -250h
var_240         = byte ptr -240h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014080EC9A SIZE 00000022 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-1A8h]
                sub     rsp, 280h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1A0h+var_30], rax
                mov     eax, cs:dword_140C23D6C
                xorps   xmm0, xmm0
                mov     r12, [rbp+1A0h+arg_20]
                xorps   xmm1, xmm1
                and     dword ptr [rsp+2A0h+var_280], 0
                mov     r13, r9
                and     qword ptr [rsp+2A0h+var_278], 0
                mov     r15, r8
                mov     qword ptr [rsp+2A0h+var_260], rcx
                mov     rdi, rdx
                mov     rcx, rdx
                mov     dword ptr [rsp+2A0h+var_280+4], eax
                movups  [rsp+2A0h+var_260+8], xmm0
                xor     r14b, r14b
                movups  [rsp+2A0h+var_278+8], xmm1
                call    sub_1406780C4
                test    al, al
                jnz     loc_140676724
                xor     esi, esi
                test    r15, r15
                jz      short loc_14067659B
                mov     rcx, cs:qword_14000A8D8
                sub     rcx, [rdi]
                jnz     short loc_140676592
                mov     rcx, cs:qword_14000A8E0
                sub     rcx, [rdi+8]

loc_140676592:                          ; CODE XREF: PoRegisterPowerSettingCallback+95↑j
                test    rcx, rcx
                jz      loc_14067672E

loc_14067659B:                          ; CODE XREF: PoRegisterPowerSettingCallback+89↑j
                                        ; PoRegisterPowerSettingCallback+270↓j ...
                lea     rcx, dword_140C24280
                call    ExAcquireFastMutex
                mov     edx, 70h ; 'p'
                mov     r8d, 74655350h
                lea     ecx, [rdx-6Fh]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14080EC9A
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+70h]
                call    memset
                mov     rax, qword ptr [rsp+2A0h+var_260]
                mov     dword ptr [rbx+10h], 74655350h
                movups  xmm0, xmmword ptr [rdi]
                mov     [rbx+50h], r15
                mov     [rbx+58h], r13
                mov     [rbx+60h], rax
                movdqu  xmmword ptr [rbx+34h], xmm0
                test    rsi, rsi
                jnz     loc_14080ECA4

loc_1406765FD:                          ; CODE XREF: PoRegisterPowerSettingCallback+1987C0↓j
                movups  xmm0, xmmword ptr [rdi]
                or      edx, 0FFFFFFFFh
                mov     rcx, rdi
                movdqu  xmmword ptr [rbx+24h], xmm0
                call    sub_140677FC8
                mov     rdx, rax
                test    rax, rax
                jz      loc_1406766DB
                mov     rcx, [rdi]
                sub     rcx, cs:qword_14000A8E8
                jnz     short loc_140676633
                mov     rcx, [rdi+8]
                sub     rcx, cs:qword_14000A8F0

loc_140676633:                          ; CODE XREF: PoRegisterPowerSettingCallback+136↑j
                test    rcx, rcx
                jz      loc_140676711
                mov     rax, [rdi]
                sub     rax, cs:qword_14000A8F8
                jnz     short loc_140676653
                mov     rax, [rdi+8]
                sub     rax, cs:qword_14000A900

loc_140676653:                          ; CODE XREF: PoRegisterPowerSettingCallback+156↑j
                test    rax, rax
                jz      loc_140676711

loc_14067665C:                          ; CODE XREF: PoRegisterPowerSettingCallback+22F↓j
                lea     rax, [rdx+10h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_14080ECB5
                mov     [rbx], rax
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx

loc_14067667B:                          ; CODE XREF: PoRegisterPowerSettingCallback+213↓j
                xor     edi, edi
                cmp     cs:dword_140C23A50, 3
                setnb   r14b
                test    r12, r12
                jnz     short loc_140676708

loc_14067668D:                          ; CODE XREF: PoRegisterPowerSettingCallback+21C↓j
                                        ; PoRegisterPowerSettingCallback+1987AF↓j
                lea     rcx, dword_140C24280
                call    KeReleaseGuardedMutex
                test    r14b, r14b
                jz      short loc_1406766A8
                mov     ecx, 20h ; ' '
                call    sub_1402B2EE4

loc_1406766A8:                          ; CODE XREF: PoRegisterPowerSettingCallback+1AC↑j
                                        ; PoRegisterPowerSettingCallback+239↓j
                mov     eax, edi
                mov     rcx, [rbp+1A0h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2A0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406766DB:                          ; CODE XREF: PoRegisterPowerSettingCallback+126↑j
                mov     rax, cs:qword_140C22F18
                lea     rcx, qword_140C22F10
                cmp     [rax], rcx
                jnz     loc_14080ECB5
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C22F18, rbx
                jmp     loc_14067667B
; ---------------------------------------------------------------------------

loc_140676708:                          ; CODE XREF: PoRegisterPowerSettingCallback+19B↑j
                mov     [r12], rbx
                jmp     loc_14067668D
; ---------------------------------------------------------------------------

loc_140676711:                          ; CODE XREF: PoRegisterPowerSettingCallback+146↑j
                                        ; PoRegisterPowerSettingCallback+166↑j
                movsxd  rax, dword ptr [rsp+2A0h+var_280+4]
                mov     rcx, [rdx+rax*8+40h]
                mov     [rbx+48h], rcx
                jmp     loc_14067665C
; ---------------------------------------------------------------------------

loc_140676724:                          ; CODE XREF: PoRegisterPowerSettingCallback+7E↑j
                mov     edi, 0C000000Dh
                jmp     loc_1406766A8
; ---------------------------------------------------------------------------

loc_14067672E:                          ; CODE XREF: PoRegisterPowerSettingCallback+A5↑j
                mov     ebx, 208h
                lea     rcx, [rsp+2A0h+var_240]
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                lea     rax, [rsp+2A0h+var_240]
                mov     word ptr [rsp+2A0h+var_278+0Ah], bx
                lea     rdx, [rsp+2A0h+var_278+8]
                mov     [rsp+2A0h+var_268], rax
                mov     rcx, r15
                call    RtlPcToFileName
                test    eax, eax
                js      loc_14067659B
                lea     rax, [rsp+2A0h+var_278+8]
                mov     [rsp+2A0h+var_250], 10h
                mov     qword ptr [rsp+2A0h+var_260+8], rax
                lea     r9, [rsp+2A0h+var_280]
                lea     rax, [rsp+2A0h+var_260+8]
                mov     r8d, 1
                lea     rdx, [rsp+2A0h+var_278]
                mov     qword ptr [rsp+2A0h+var_278], rax
                lea     rcx, qword_14000A0C0
                call    EmClientRuleEvaluate
                test    eax, eax
                js      loc_14067659B
                cmp     dword ptr [rsp+2A0h+var_280], 2
                lea     rax, qword_140C24260
                cmovnz  rax, rsi
                mov     rsi, rax
                jmp     loc_14067659B
; } // starts at 1406764F0
PoRegisterPowerSettingCallback endp

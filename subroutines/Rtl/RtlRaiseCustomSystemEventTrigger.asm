RtlRaiseCustomSystemEventTrigger proc near
                                        ; DATA XREF: .pdata:00000001400F80F4↑o

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                and     [rbp+57h+var_5C], 0
                xorps   xmm0, xmm0
                and     [rbp+57h+var_58], 0
                xorps   xmm1, xmm1
                and     [rbp+57h+var_50], 0
                mov     rax, cs:qword_14000F4F0
                mov     [rbp+57h+var_28], rax
                movups  [rbp+57h+var_38], xmm0
                movups  [rbp+57h+var_48], xmm0
                movups  [rbp+57h+var_20], xmm1
                test    rcx, rcx
                jnz     short loc_14058E8FE
                mov     ebx, 0C000000Dh
                jmp     loc_14058EABD
; ---------------------------------------------------------------------------

loc_14058E8FE:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+52↑j
                mov     rdx, [rcx+8]
                lea     rcx, [rbp+57h+var_48]
                call    RtlInitUnicodeString
                lea     rdx, [rbp+57h+var_20]
                lea     rcx, [rbp+57h+var_48]
                call    RtlGUIDFromString
                mov     ebx, eax
                test    eax, eax
                js      loc_14058EABD
                mov     eax, 1
                xchg    eax, cs:dword_140C1DC58
                test    eax, eax
                jz      short loc_14058E93B
                mov     ebx, 0C0000001h
                jmp     loc_14058EABD
; ---------------------------------------------------------------------------

loc_14058E93B:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+8F↑j
                mov     ecx, 1000h
                mov     [rbp+57h+var_60], 1000h
                call    sub_14091AB48
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14058E95E
                mov     ebx, 0C000009Ah
                jmp     loc_14058EAA8
; ---------------------------------------------------------------------------

loc_14058E95E:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+B2↑j
                lea     rax, [rbp+57h+var_60]
                xor     r8d, r8d
                mov     [rsp+0A0h+var_78], rax
                lea     r9, [rbp+57h+var_58]
                xor     edx, edx
                mov     [rsp+0A0h+var_80], rdi
                lea     rcx, [rbp+57h+var_28]
                call    ZwQueryWnfStateData
                mov     ebx, eax
                test    eax, eax
                js      loc_14058EAA8
                xor     r8d, r8d
                mov     dword ptr [rsp+0A0h+var_80], 4
                lea     r9, [rbp+57h+var_5C]
                lea     rcx, [rbp+57h+var_28]
                lea     edx, [r8+2]
                call    ZwQueryWnfStateNameInformation
                mov     ebx, eax
                test    eax, eax
                js      loc_14058EAA8
                cmp     [rbp+57h+var_5C], 0
                jnz     short loc_14058E9BE
                mov     ebx, 0C0000001h
                jmp     loc_14058EAA8
; ---------------------------------------------------------------------------

loc_14058E9BE:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+112↑j
                xor     r8d, r8d
                mov     dword ptr [rsp+0A0h+var_80], 4
                lea     r9, [rbp+57h+var_5C]
                lea     rcx, [rbp+57h+var_28]
                lea     edx, [r8+1]
                call    ZwQueryWnfStateNameInformation
                mov     ebx, eax
                test    eax, eax
                js      loc_14058EAA8
                cmp     [rbp+57h+var_5C], 0
                jnz     short loc_14058E9F4
                mov     ebx, 0C00000ABh
                jmp     loc_14058EAA8
; ---------------------------------------------------------------------------

loc_14058E9F4:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+148↑j
                lea     rax, [rdi+8]
                mov     [rbp+57h+var_60], 1000h
                test    rax, rax
                jz      short loc_14058EA27
                movups  xmm0, [rbp+57h+var_38]
                xor     ebx, ebx
                movdqu  xmmword ptr [rax], xmm0
                movups  xmm1, [rbp+57h+var_20]
                movdqu  xmmword ptr [rax+10h], xmm1
                mov     dword ptr [rax+20h], 10h
                mov     [rbp+57h+var_60], 24h ; '$'
                jmp     short loc_14058EA2C
; ---------------------------------------------------------------------------

loc_14058EA27:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+162↑j
                mov     ebx, 0C000000Dh

loc_14058EA2C:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+185↑j
                test    ebx, ebx
                js      short loc_14058EAA8
                and     dword ptr [rdi], 0
                lea     rcx, [rbp+57h+var_50]
                or      dword ptr [rdi+4], 0FFFFFFFFh
                mov     eax, [rbp+57h+var_60]
                and     eax, 0FFFh
                bts     eax, 14h
                shl     eax, 2
                mov     [rdi], eax
                mov     edx, [rbp+57h+var_58]
                call    sub_14091ABC8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14058EA9A
                mov     r8d, [rbp+57h+var_60]
                lea     rcx, [rbp+57h+var_28]
                mov     eax, [rbp+57h+var_58]
                add     r8d, 8
                mov     [rsp+0A0h+var_70], 1
                xor     r9d, r9d
                mov     dword ptr [rsp+0A0h+var_78], eax
                mov     rdx, rdi
                and     [rsp+0A0h+var_80], 0
                call    ZwUpdateWnfStateData
                mov     ebx, eax
                test    eax, eax
                js      short loc_14058EA9A
                mov     rcx, [rbp+57h+var_50]
                mov     rcx, [rcx]
                call    sub_14091AD54
                jmp     short loc_14058EAB0
; ---------------------------------------------------------------------------

loc_14058EA9A:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+1B8↑j
                                        ; RtlRaiseCustomSystemEventTrigger+1EA↑j
                mov     rcx, [rbp+57h+var_50]
                test    rcx, rcx
                jz      short loc_14058EAA8
                call    sub_14091AB6C

loc_14058EAA8:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+B9↑j
                                        ; RtlRaiseCustomSystemEventTrigger+E2↑j ...
                xor     eax, eax
                xchg    eax, cs:dword_140C1DC58

loc_14058EAB0:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+1F8↑j
                test    rdi, rdi
                jz      short loc_14058EABD
                mov     rcx, rdi
                call    sub_14091AC90

loc_14058EABD:                          ; CODE XREF: RtlRaiseCustomSystemEventTrigger+59↑j
                                        ; RtlRaiseCustomSystemEventTrigger+7C↑j ...
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14058E8A0
RtlRaiseCustomSystemEventTrigger endp

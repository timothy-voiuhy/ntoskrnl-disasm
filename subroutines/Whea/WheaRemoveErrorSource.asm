WheaRemoveErrorSource proc near         ; CODE XREF: WheaRemoveErrorSourceDeviceDriver+E6↓p
                                        ; DATA XREF: .pdata:0000000140124D28↑o

var_420         = qword ptr -420h
var_410         = dword ptr -410h
var_40C         = dword ptr -40Ch
var_408         = dword ptr -408h
var_404         = dword ptr -404h
var_400         = dword ptr -400h
var_3FC         = dword ptr -3FCh
var_3F8         = dword ptr -3F8h
var_3F4         = dword ptr -3F4h
var_3F0         = byte ptr -3F0h
var_24          = dword ptr -24h
var_20          = byte ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                lea     rbp, [rsp-340h]
                sub     rsp, 440h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+340h+var_10], rax
                mov     edx, ecx
                lea     rcx, unk_140CDAF98
                call    sub_1405BBD54
                mov     rbx, rax
                test    rax, rax
                jz      loc_14095E6E7
                mov     ecx, [rax+68h]
                call    sub_1403BB024
                test    al, al
                jz      loc_14095E6E7
                mov     ecx, [rbx+6Ch]
                sub     ecx, 3
                cmp     ecx, 1
                jbe     loc_14095E6E7
                mov     eax, 7
                mov     [rsp+440h+var_420], 0FFFFFFFFFFFFFC18h
                lea     rcx, [rbx+60h]
                lea     rdx, [rsp+440h+var_3F0]
                lea     r8d, [rax+79h]

loc_14095E5CF:                          ; CODE XREF: WheaRemoveErrorSource+C7↓j
                movups  xmm0, xmmword ptr [rcx]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rdx+10h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rdx+20h], xmm0
                movups  xmm1, xmmword ptr [rcx+30h]
                movups  xmmword ptr [rdx+30h], xmm1
                movups  xmm0, xmmword ptr [rcx+40h]
                movups  xmmword ptr [rdx+40h], xmm0
                movups  xmm1, xmmword ptr [rcx+50h]
                movups  xmmword ptr [rdx+50h], xmm1
                movups  xmm0, xmmword ptr [rcx+60h]
                movups  xmmword ptr [rdx+60h], xmm0
                add     rdx, r8
                movups  xmm1, xmmword ptr [rcx+70h]
                add     rcx, r8
                movups  xmmword ptr [rdx-10h], xmm1
                sub     rax, 1
                jnz     short loc_14095E5CF
                movups  xmm0, xmmword ptr [rcx]
                or      edi, 0FFFFFFFFh
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rdx+10h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rdx+20h], xmm0
                movups  xmm1, xmmword ptr [rcx+30h]
                movups  xmmword ptr [rdx+30h], xmm1
                mov     rax, [rcx+40h]
                mov     [rdx+40h], rax
                mov     eax, [rcx+48h]
                mov     [rdx+48h], eax
                mov     dword ptr [rbx+6Ch], 4
                jmp     short loc_14095E65F
; ---------------------------------------------------------------------------

loc_14095E651:                          ; CODE XREF: WheaRemoveErrorSource+118↓j
                lea     r8, [rsp+440h+var_420]
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread

loc_14095E65F:                          ; CODE XREF: WheaRemoveErrorSource+FF↑j
                xor     eax, eax
                lock cmpxchg [rbx+5Ch], edi
                test    eax, eax
                jg      short loc_14095E651
                mov     rcx, rbx
                call    sub_1405BCF20
                mov     rcx, [rbx+30h]
                mov     edi, eax
                mov     dword ptr [rbx+6Ch], 3
                test    rcx, rcx
                jz      short loc_14095E693
                mov     edx, 61656857h
                call    ExFreePoolWithTag
                and     qword ptr [rbx+30h], 0

loc_14095E693:                          ; CODE XREF: WheaRemoveErrorSource+132↑j
                and     [rsp+440h+var_404], 0
                lea     rcx, [rsp+440h+var_410]
                mov     [rsp+440h+var_410], 674C6857h
                mov     [rsp+440h+var_40C], 1
                mov     [rsp+440h+var_408], 3F1h
                mov     [rsp+440h+var_3FC], 8000000Ch
                mov     [rsp+440h+var_400], 4C4E524Bh
                mov     [rsp+440h+var_3F8], 2
                mov     [rsp+440h+var_3F4], 3D1h
                mov     [rbp+340h+var_24], edi
                mov     [rbp+340h+var_20], 1
                call    WheaLogInternalEvent

loc_14095E6E7:                          ; CODE XREF: WheaRemoveErrorSource+3F↑j
                                        ; WheaRemoveErrorSource+4F↑j ...
                mov     rcx, [rbp+340h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+440h+var_s0]
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095E550
WheaRemoveErrorSource endp

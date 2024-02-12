WheaAddErrorSource proc near            ; CODE XREF: WheaAddErrorSourceDeviceDriver+18B↑p
                                        ; DATA XREF: .rdata:00000001400A506C↑o ...

var_420         = dword ptr -420h
var_41C         = dword ptr -41Ch
var_418         = dword ptr -418h
var_414         = dword ptr -414h
var_410         = dword ptr -410h
var_40C         = dword ptr -40Ch
var_408         = byte ptr -408h
var_404         = dword ptr -404h
var_400         = byte ptr -400h
var_34          = dword ptr -34h
var_30          = byte ptr -30h
var_20          = qword ptr -20h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 000000014085928A SIZE 00000051 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-348h]
                sub     rsp, 430h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+340h+var_20], rax
                mov     rbx, rcx
                mov     r15, rdx
                mov     ecx, [rcx+8]
                call    sub_1403BB024
                mov     r14d, 7
                test    al, al
                jz      loc_14085928A
                mov     esi, 430h
                mov     r8d, 61656857h
                mov     edx, esi
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_140859294
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     rcx, [rdi+60h]
                mov     r8, rbx
                mov     eax, r14d
                lea     edx, [r14+79h]

loc_1407AF08D:                          ; CODE XREF: WheaAddErrorSource+DD↓j
                movups  xmm0, xmmword ptr [r8]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm1, xmmword ptr [r8+10h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm0, xmmword ptr [r8+20h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm1, xmmword ptr [r8+30h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm0, xmmword ptr [r8+40h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm1, xmmword ptr [r8+50h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm0, xmmword ptr [r8+60h]
                movups  xmmword ptr [rcx+60h], xmm0
                add     rcx, rdx
                movups  xmm1, xmmword ptr [r8+70h]
                add     r8, rdx
                movups  xmmword ptr [rcx-10h], xmm1
                sub     rax, 1
                jnz     short loc_1407AF08D
                movups  xmm0, xmmword ptr [r8]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm1, xmmword ptr [r8+10h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm0, xmmword ptr [r8+20h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm1, xmmword ptr [r8+30h]
                movups  xmmword ptr [rcx+30h], xmm1
                mov     rax, [r8+40h]
                mov     [rcx+40h], rax
                mov     eax, [r8+48h]
                mov     [rcx+48h], eax
                mov     rcx, rdi
                call    sub_1407AF484
                mov     esi, eax
                test    eax, eax
                jnz     loc_14085929E
                mov     rdx, rdi
                mov     [rdi+38h], r15
                call    sub_1403BAFA4
                mov     al, cs:byte_140CDAF8D
                test    al, al
                jnz     loc_1408592B1

loc_1407AF13C:                          ; CODE XREF: WheaAddErrorSource+AA28F↓j
                                        ; WheaAddErrorSource+AA299↓j ...
                and     [rsp+440h+var_414], 0
                lea     rcx, [rsp+440h+var_400]
                mov     [rsp+440h+var_420], 674C6857h
                mov     [rsp+440h+var_41C], 1
                mov     [rsp+440h+var_418], 3F1h
                mov     [rsp+440h+var_40C], 8000000Ch
                mov     [rsp+440h+var_410], 4C4E524Bh
                mov     dword ptr [rsp+440h+var_408], 2
                mov     [rsp+440h+var_404], 3D1h

loc_1407AF17E:                          ; CODE XREF: WheaAddErrorSource+1CE↓j
                movups  xmm0, xmmword ptr [rbx]
                movups  xmm1, xmmword ptr [rbx+10h]
                lea     rbx, [rbx+80h]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm0, xmmword ptr [rbx-60h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm1, xmmword ptr [rbx-50h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm0, xmmword ptr [rbx-40h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm1, xmmword ptr [rbx-30h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm0, xmmword ptr [rbx-20h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm1, xmmword ptr [rbx-10h]
                movups  xmmword ptr [rcx+60h], xmm0
                lea     rcx, [rcx+80h]
                movups  xmmword ptr [rcx-10h], xmm1
                sub     r14, 1
                jnz     short loc_1407AF17E
                movups  xmm0, xmmword ptr [rbx]
                mov     rax, [rbx+40h]
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm0, xmmword ptr [rbx+20h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm1, xmmword ptr [rbx+30h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmmword ptr [rcx+30h], xmm1
                mov     [rcx+40h], rax
                mov     eax, [rbx+48h]
                mov     [rcx+48h], eax
                lea     rcx, [rsp+440h+var_420]
                mov     [rbp+340h+var_34], esi
                mov     [rbp+340h+var_30], r14b
                call    WheaLogInternalEvent
                mov     eax, esi
                mov     rcx, [rbp+340h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+440h+var_10]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407AF000
WheaAddErrorSource endp

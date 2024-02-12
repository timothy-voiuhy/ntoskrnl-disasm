WheaRemoveErrorSourceDeviceDriver proc near
                                        ; DATA XREF: .pdata:0000000140124D34↑o

var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movdqa  [rbp+var_30], xmm0
                mov     esi, ecx
                movdqa  [rbp+var_20], xmm1
                xor     ebx, ebx
                call    WheaGetErrorSource
                mov     rdi, rax
                test    rax, rax
                jz      loc_14095E821
                or      ecx, 0FFFFFFFFh
                xor     eax, eax
                lock cmpxchg [rdi+98h], ecx
                cmp     eax, ecx
                jz      loc_14095E821
                test    eax, eax
                jz      short loc_14095E7D5
                lea     eax, [rbx+1]
                mov     [rbp+var_50], 674C6857h
                lea     edx, [rbx+20h]
                mov     [rbp+var_4C], eax
                lea     r8, aRemoveerrorsou ; "RemoveErrorSourceDeviceDriver"
                mov     [rbp+var_44], eax
                lea     rcx, [rbp+var_30]
                mov     [rbp+var_34], edx
                mov     [rbp+var_48], 40h ; '@'
                mov     [rbp+var_3C], 8000002Ch
                mov     [rbp+var_40], 4C4E524Bh
                mov     [rbp+var_38], 2
                call    sub_14035B224
                lea     rcx, [rbp+var_50]
                call    WheaLogInternalEvent
                mov     ebx, 0C0000708h
                jmp     short loc_14095E821
; ---------------------------------------------------------------------------

loc_14095E7D5:                          ; CODE XREF: WheaRemoveErrorSourceDeviceDriver+61↑j
                mov     rcx, [rdi+48h]
                test    rcx, rcx
                jz      short loc_14095E804
                mov     edx, 41454857h
                call    ExFreePoolWithTag
                mov     rcx, [rdi+90h]
                mov     edx, 41454857h
                call    ExFreePoolWithTag
                mov     [rdi+48h], rbx
                mov     [rdi+90h], rbx

loc_14095E804:                          ; CODE XREF: WheaRemoveErrorSourceDeviceDriver+BC↑j
                mov     ecx, esi
                call    WheaRemoveErrorSource
                lea     rax, PsGetHostSilo
                mov     [rdi+50h], rax
                lea     rax, __misaligned_access
                mov     [rdi+58h], rax

loc_14095E821:                          ; CODE XREF: WheaRemoveErrorSourceDeviceDriver+44↑j
                                        ; WheaRemoveErrorSourceDeviceDriver+59↑j ...
                mov     eax, ebx
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095E720
WheaRemoveErrorSourceDeviceDriver endp

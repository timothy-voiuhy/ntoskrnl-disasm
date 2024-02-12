SeAuditFipsCryptoSelftests proc near    ; DATA XREF: .pdata:0000000140122820↑o

var_460         = qword ptr -460h
var_458         = dword ptr -458h
var_450         = xmmword ptr -450h
var_430         = dword ptr -430h
var_42C         = dword ptr -42Ch
var_428         = word ptr -428h
var_420         = dword ptr -420h
var_418         = dword ptr -418h
var_414         = dword ptr -414h
var_400         = qword ptr -400h
var_3F8         = dword ptr -3F8h
var_3F4         = dword ptr -3F4h
var_3E0         = qword ptr -3E0h
var_3D8         = dword ptr -3D8h
var_3D4         = dword ptr -3D4h
var_3D0         = qword ptr -3D0h
var_3B8         = dword ptr -3B8h
var_3B4         = dword ptr -3B4h
var_3A0         = qword ptr -3A0h
var_398         = dword ptr -398h
var_394         = dword ptr -394h
var_390         = qword ptr -390h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                lea     rbp, [rax-388h]
                sub     rsp, 480h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+380h+var_10], rax
                and     qword ptr [rsp+480h+var_458], 0
                mov     sil, cl
                mov     edi, edx
                lea     rcx, [rsp+480h+var_430]
                xor     eax, eax
                mov     dword ptr [rsp+480h+var_450], 80000000h
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+480h+var_450+4], eax
                xor     edx, edx
                mov     r8d, 418h
                movdqu  [rsp+480h+var_450+8], xmm0
                call    memset
                and     [rsp+480h+var_460], 0
                lea     rcx, [rsp+480h+var_458]
                mov     ebx, 1
                mov     [rsp+480h+var_430], ebx
                lea     eax, [rbx+65h]
                mov     word ptr [rsp+480h+var_420], ax
                call    SeCaptureSubjectContext
                mov     rax, qword ptr [rsp+480h+var_458]
                mov     rcx, qword ptr [rsp+480h+var_450+8]
                test    rax, rax
                mov     [rsp+480h+var_418], 4
                cmovnz  rcx, rax
                mov     [rbp+380h+var_3F8], ebx
                mov     [rbp+380h+var_3F4], 20h ; ' '
                mov     rax, [rcx+98h]
                mov     rcx, [rax]
                mov     [rbp+380h+var_400], rcx
                movzx   eax, byte ptr [rcx+1]
                lea     eax, ds:8[rax*4]
                mov     [rsp+480h+var_414], eax
                lea     rax, qword_1400019C0
                mov     [rbp+380h+var_3E0], rax
                call    PsGetCurrentThreadProcess
                lea     rdx, [rsp+480h+var_460]
                mov     rcx, rax
                mov     r14, [rax+440h]
                call    sub_140696F78
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091F140
                mov     rdx, [rsp+480h+var_460]
                mov     eax, 8
                mov     [rbp+380h+var_3D8], 0Bh
                mov     [rbp+380h+var_3D4], eax
                mov     [rbp+380h+var_3D0], r14
                movzx   ecx, word ptr [rdx]
                lea     r8d, [rax+8]
                add     ecx, r8d
                mov     [rbp+380h+var_3B8], 2
                mov     [rbp+380h+var_3B4], ecx
                mov     [rbp+380h+var_3A0], rdx
                mov     dword ptr [rsp+480h+var_428], 4
                test    sil, sil
                jz      short loc_14091F10E
                mov     [rsp+480h+var_42C], 1911h
                mov     word ptr [rsp+480h+var_420+2], ax
                jmp     short loc_14091F136
; ---------------------------------------------------------------------------

loc_14091F10E:                          ; CODE XREF: SeAuditFipsCryptoSelftests+12D↑j
                mov     [rsp+480h+var_42C], 1912h
                mov     word ptr [rsp+480h+var_420+2], r8w
                mov     [rbp+380h+var_398], 0Ah
                mov     [rbp+380h+var_394], 4
                mov     [rbp+380h+var_390], rdi
                mov     dword ptr [rsp+480h+var_428], 5

loc_14091F136:                          ; CODE XREF: SeAuditFipsCryptoSelftests+13C↑j
                lea     rcx, [rsp+480h+var_430]
                call    sub_1403C2664

loc_14091F140:                          ; CODE XREF: SeAuditFipsCryptoSelftests+F0↑j
                lea     rcx, [rsp+480h+var_458]
                call    SeReleaseSubjectContext
                mov     rcx, [rsp+480h+var_460]
                test    rcx, rcx
                jz      short loc_14091F15B
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14091F15B:                          ; CODE XREF: SeAuditFipsCryptoSelftests+182↑j
                test    ebx, ebx
                jns     short loc_14091F166
                mov     ecx, ebx
                call    sub_140926FC0

loc_14091F166:                          ; CODE XREF: SeAuditFipsCryptoSelftests+18D↑j
                mov     rcx, [rbp+380h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+480h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14091EFD0
SeAuditFipsCryptoSelftests endp

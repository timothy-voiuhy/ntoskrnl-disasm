SeAuditHardLinkCreationWithTransaction proc near
                                        ; CODE XREF: SeAuditHardLinkCreation+7↑p
                                        ; DATA XREF: .pdata:0000000140122844↑o

var_470         = dword ptr -470h
var_468         = xmmword ptr -468h
var_450         = dword ptr -450h
var_44C         = dword ptr -44Ch
var_448         = word ptr -448h
var_440         = dword ptr -440h
var_438         = dword ptr -438h
var_434         = dword ptr -434h
var_420         = dword ptr -420h
var_418         = dword ptr -418h
var_414         = dword ptr -414h
var_400         = qword ptr -400h
var_3F8         = dword ptr -3F8h
var_3F4         = dword ptr -3F4h
var_3F0         = qword ptr -3F0h
var_3D8         = dword ptr -3D8h
var_3D4         = dword ptr -3D4h
var_3C0         = qword ptr -3C0h
var_3B8         = dword ptr -3B8h
var_3B4         = dword ptr -3B4h
var_3A0         = qword ptr -3A0h
var_398         = dword ptr -398h
var_394         = dword ptr -394h
var_380         = qword ptr -380h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_10          = byte ptr -10h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-398h]
                sub     rsp, 480h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+390h+var_20], rax
                and     qword ptr [rsp+490h+var_470], 0
                mov     dil, r8b
                mov     r14, rdx
                mov     dword ptr [rsp+490h+var_468], 80000000h
                mov     r15, rcx
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+490h+var_468+4], eax
                xor     edx, edx
                lea     rcx, [rsp+490h+var_450]
                mov     r8d, 418h
                mov     rbx, r9
                movdqu  [rsp+490h+var_468+8], xmm0
                call    memset
                mov     eax, 74h ; 't'
                mov     [rsp+490h+var_450], 3
                test    rbx, rbx
                mov     word ptr [rsp+490h+var_440], ax
                lea     rsi, [rbp+390h+var_30]
                mov     [rsp+490h+var_44C], 1238h
                cmovnz  rsi, rbx
                xorps   xmm0, xmm0
                lea     r12d, [rax-6Ch]
                mov     word ptr [rsp+490h+var_440+2], r12w
                lea     ebx, [rax-64h]
                movups  [rbp+390h+var_30], xmm0
                test    dil, dil
                jnz     short loc_14091F44B
                mov     word ptr [rsp+490h+var_440+2], bx

loc_14091F44B:                          ; CODE XREF: SeAuditHardLinkCreationWithTransaction+B4↑j
                lea     rcx, [rsp+490h+var_470]
                call    SeCaptureSubjectContext
                mov     rcx, qword ptr [rsp+490h+var_470]
                mov     r8, qword ptr [rsp+490h+var_468+8]
                test    rcx, rcx
                mov     rax, r8
                mov     [rsp+490h+var_438], 4
                cmovnz  rax, rcx
                mov     [rsp+490h+var_418], 1
                cmovnz  r8, rcx
                mov     [rsp+490h+var_414], 20h ; ' '
                mov     ecx, 2
                mov     [rbp+390h+var_3F8], 5
                mov     [rbp+390h+var_3D8], ecx
                mov     rax, [rax+98h]
                mov     [rbp+390h+var_3B8], ecx
                lea     rcx, [rsp+490h+var_450]
                mov     [rbp+390h+var_3F4], r12d
                mov     [rbp+390h+var_3C0], r15
                mov     rdx, [rax]
                mov     qword ptr [rsp+490h+var_420], rdx
                mov     [rbp+390h+var_3A0], r14
                mov     [rbp+390h+var_398], 0Dh
                movzx   eax, byte ptr [rdx+1]
                mov     [rbp+390h+var_394], ebx
                mov     [rbp+390h+var_380], rsi
                mov     dword ptr [rsp+490h+var_448], 6
                lea     eax, ds:8[rax*4]
                mov     [rsp+490h+var_434], eax
                lea     rax, qword_1400019C0
                mov     [rbp+390h+var_400], rax
                mov     rax, [r8+18h]
                mov     [rbp+390h+var_3F0], rax
                movzx   eax, word ptr [r15]
                add     eax, ebx
                mov     [rbp+390h+var_3D4], eax
                movzx   eax, word ptr [r14]
                add     eax, ebx
                mov     [rbp+390h+var_3B4], eax
                call    sub_1403C2664
                lea     rcx, [rsp+490h+var_470]
                call    SeReleaseSubjectContext
                mov     rcx, [rbp+390h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+490h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14091F390
SeAuditHardLinkCreationWithTransaction endp

SeAuditTransactionStateChange proc near ; DATA XREF: .pdata:0000000140122874↑o

var_4A0         = xmmword ptr -4A0h
var_488         = dword ptr -488h
var_480         = xmmword ptr -480h
var_460         = dword ptr -460h
var_45C         = dword ptr -45Ch
var_458         = word ptr -458h
var_450         = dword ptr -450h
var_448         = dword ptr -448h
var_444         = dword ptr -444h
var_430         = qword ptr -430h
var_428         = dword ptr -428h
var_424         = dword ptr -424h
var_410         = qword ptr -410h
var_408         = dword ptr -408h
var_404         = dword ptr -404h
var_400         = qword ptr -400h
var_3E8         = dword ptr -3E8h
var_3E4         = dword ptr -3E4h
var_3D0         = qword ptr -3D0h
var_3C8         = dword ptr -3C8h
var_3C4         = dword ptr -3C4h
var_3C0         = qword ptr -3C0h
var_3A8         = dword ptr -3A8h
var_3A4         = dword ptr -3A4h
var_390         = qword ptr -390h
var_388         = dword ptr -388h
var_384         = dword ptr -384h
var_380         = qword ptr -380h
var_368         = dword ptr -368h
var_364         = dword ptr -364h
var_350         = qword ptr -350h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-3C8h]
                sub     rsp, 4A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3C0h+var_30], rax
                and     qword ptr [rsp+4C0h+var_488], 0
                mov     rbx, rdx
                mov     r15d, r8d
                mov     r12, rcx
                xor     eax, eax
                mov     dword ptr [rsp+4C0h+var_480], 80000000h
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+4C0h+var_480+4], eax
                xor     edx, edx
                lea     rcx, [rsp+4C0h+var_460]
                mov     r8d, 418h
                movdqu  [rsp+4C0h+var_480+8], xmm0
                call    memset
                and     qword ptr [rsp+4C0h+var_4A0], 0
                lea     rsi, [rbp+3C0h+var_40]
                mov     eax, 74h ; 't'
                mov     [rsp+4C0h+var_460], 3
                test    rbx, rbx
                mov     word ptr [rsp+4C0h+var_450], ax
                mov     eax, 10h
                mov     [rsp+4C0h+var_45C], 1379h
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                cmovnz  rsi, rbx
                movups  [rbp+3C0h+var_40], xmm0
                lea     r13d, [rax-8]
                mov     word ptr [rsp+4C0h+var_450+2], r13w
                movups  [rsp+4C0h+var_4A0+8], xmm1
                cmp     r15d, 6
                jnz     short loc_14091FD19
                mov     word ptr [rsp+4C0h+var_450+2], ax

loc_14091FD19:                          ; CODE XREF: SeAuditTransactionStateChange+C2↑j
                lea     rcx, [rsp+4C0h+var_488]
                call    SeCaptureSubjectContext
                mov     rcx, qword ptr [rsp+4C0h+var_488]
                mov     rbx, qword ptr [rsp+4C0h+var_480+8]
                test    rcx, rcx
                mov     rax, rbx
                cmovnz  rax, rcx
                cmovnz  rbx, rcx
                mov     rax, [rax+98h]
                mov     rbx, [rbx+18h]
                mov     r14, [rax]
                call    PsGetCurrentThreadProcess
                lea     rdx, [rsp+4C0h+var_4A0]
                mov     rcx, rax
                call    sub_140696F78
                test    eax, eax
                js      short loc_14091FD69
                mov     rdi, qword ptr [rsp+4C0h+var_4A0]
                test    rdi, rdi
                jnz     short loc_14091FD84

loc_14091FD69:                          ; CODE XREF: SeAuditTransactionStateChange+10D↑j
                lea     rdx, qword_1407D93A0
                lea     rcx, [rsp+4C0h+var_4A0+8]
                call    RtlInitUnicodeString
                lea     rdi, [rsp+4C0h+var_4A0+8]
                mov     qword ptr [rsp+4C0h+var_4A0], rdi

loc_14091FD84:                          ; CODE XREF: SeAuditTransactionStateChange+117↑j
                movzx   eax, byte ptr [r14+1]
                mov     edx, 4
                mov     [rbp+3C0h+var_400], rbx
                mov     [rsp+4C0h+var_448], edx
                mov     [rbp+3C0h+var_430], r14
                lea     eax, ds:8[rax*4]
                mov     [rbp+3C0h+var_428], 1
                lea     ecx, [rdx+9]
                mov     [rsp+4C0h+var_444], eax
                lea     ebx, [rdx+0Ch]
                mov     [rbp+3C0h+var_424], 20h ; ' '
                lea     rax, qword_1400019C0
                mov     [rbp+3C0h+var_408], 5
                mov     [rbp+3C0h+var_410], rax
                mov     [rbp+3C0h+var_404], r13d
                mov     [rbp+3C0h+var_3E8], ecx
                mov     [rbp+3C0h+var_3E4], ebx
                mov     [rbp+3C0h+var_3D0], r12
                mov     [rbp+3C0h+var_3C8], 3
                mov     [rbp+3C0h+var_3C4], edx
                mov     [rbp+3C0h+var_3C0], r15
                mov     [rbp+3C0h+var_3A8], ecx
                mov     [rbp+3C0h+var_3A4], ebx
                mov     [rbp+3C0h+var_390], rsi
                mov     [rbp+3C0h+var_388], 0Bh
                mov     [rbp+3C0h+var_384], r13d
                call    PsGetCurrentThreadProcess
                mov     [rbp+3C0h+var_368], 2
                mov     [rbp+3C0h+var_350], rdi
                mov     dword ptr [rsp+4C0h+var_458], r13d
                mov     rcx, [rax+440h]
                movzx   eax, word ptr [rdi]
                add     eax, ebx
                mov     [rbp+3C0h+var_380], rcx
                lea     rcx, [rsp+4C0h+var_460]
                mov     [rbp+3C0h+var_364], eax
                call    sub_1403C2664
                lea     rcx, [rsp+4C0h+var_488]
                call    SeReleaseSubjectContext
                mov     rcx, qword ptr [rsp+4C0h+var_4A0]
                test    rcx, rcx
                jz      short loc_14091FE53
                lea     rax, [rsp+4C0h+var_4A0+8]
                cmp     rcx, rax
                jz      short loc_14091FE53
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14091FE53:                          ; CODE XREF: SeAuditTransactionStateChange+1F0↑j
                                        ; SeAuditTransactionStateChange+1FA↑j
                mov     rcx, [rbp+3C0h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+4C0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14091FC50
SeAuditTransactionStateChange endp

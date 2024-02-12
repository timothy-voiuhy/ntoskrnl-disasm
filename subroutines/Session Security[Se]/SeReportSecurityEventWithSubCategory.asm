SeReportSecurityEventWithSubCategory proc near
                                        ; CODE XREF: SeReportSecurityEvent+18↓p
                                        ; sub_1408735F8+236↓p
                                        ; DATA XREF: ...

var_480         = xmmword ptr -480h
var_470         = xmmword ptr -470h
var_450         = dword ptr -450h
var_44C         = dword ptr -44Ch
var_448         = word ptr -448h
var_440         = dword ptr -440h
var_43C         = dword ptr -43Ch
var_438         = dword ptr -438h
var_434         = dword ptr -434h
var_420         = qword ptr -420h
var_418         = dword ptr -418h
var_414         = dword ptr -414h
var_400         = qword ptr -400h
var_3F8         = dword ptr -3F8h
var_3F4         = dword ptr -3F4h
var_3E0         = qword ptr -3E0h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_20          = dword ptr  30h

; FUNCTION CHUNK AT 00000001404518C2 SIZE 0000004E BYTES

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
                lea     rbp, [rax-3A8h]
                sub     rsp, 480h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3A0h+var_30], rax
                xorps   xmm0, xmm0
                mov     r15, r8
                xor     r8d, r8d
                mov     rsi, r9
                mov     r14, rdx
                mov     edi, r8d
                movups  [rsp+4A0h+var_480+8], xmm0
                movups  [rsp+4A0h+var_470+8], xmm0
                test    ecx, ecx
                jnz     loc_140451906
                test    rdx, rdx
                jz      loc_140451906
                cmp     [rdx+8], r8
                jz      loc_140451906
                cmp     [rdx], r8w
                jz      loc_140451906
                test    r9, r9
                jz      loc_140451906
                mov     r13d, [rbp+3A0h+arg_20]
                lea     eax, [r13-64h]
                cmp     eax, 3Ah ; ':'
                ja      loc_140451906
                cmp     dword ptr [r9+8], 1Ch
                ja      loc_140451906
                movzx   ebx, word ptr [r9+12h]
                test    bl, 18h
                jz      loc_140451906
                mov     rax, cr8
                mov     qword ptr [rsp+4A0h+var_480], rax
                lea     r12d, [r8+10h]
                cmp     al, 2
                jb      short loc_1402BA0F8
                lea     r12d, [r8+8]
                mov     ecx, r13d
                cmp     bx, r12w
                setz    dl
                call    sub_1402BA24C
                test    al, al
                jnz     loc_1404518CA

loc_1402BA0BA:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+178↓j
                                        ; SeReportSecurityEventWithSubCategory+237↓j
                cmp     byte ptr [rsp+4A0h+var_480], 2
                jb      loc_1402BA21C

loc_1402BA0C5:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+23F↓j
                                        ; SeReportSecurityEventWithSubCategory+248↓j ...
                xor     eax, eax

loc_1402BA0C7:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+19792B↓j
                mov     rcx, [rbp+3A0h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+4A0h+var_20]
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
                align 8

loc_1402BA0F8:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+BD↑j
                test    r15, r15
                jnz     loc_1404518C2
                lea     rcx, [rsp+4A0h+var_480+8]
                call    SeCaptureSubjectContext
                mov     rax, qword ptr [rsp+4A0h+var_480+8]
                xor     r8d, r8d
                mov     rcx, qword ptr [rsp+4A0h+var_470+8]
                test    rax, rax
                movzx   ebx, word ptr [rsi+12h]
                cmovnz  rcx, rax
                mov     rax, [rcx+98h]
                mov     rdi, [rax]

loc_1402BA12D:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+1978E5↓j
                cmp     rdi, r15
                lea     r9, [rsp+4A0h+var_480+8]
                mov     ecx, r13d
                cmovz   r9, r8
                cmp     bx, r12w
                mov     r12d, 8
                setz    r8b
                cmp     bx, r12w
                setz    dl
                call    sub_140629580
                test    al, al
                jz      loc_1402BA0BA
                movzx   ebx, word ptr [rsi+12h]

loc_1402BA162:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+1978F0↓j
                                        ; SeReportSecurityEventWithSubCategory+1978FD↓j
                xor     edx, edx
                lea     rcx, [rsp+4A0h+var_450]
                mov     r8d, 418h
                call    memset
                mov     eax, [rsi]
                mov     ecx, 1
                mov     edx, [rsi+4]
                mov     [rsp+4A0h+var_450], eax
                movzx   eax, byte ptr [rdi+1]
                mov     [rsp+4A0h+var_44C], edx
                lea     r8d, [rcx+1]
                mov     word ptr [rsp+4A0h+var_440], r13w
                mov     word ptr [rsp+4A0h+var_440+2], bx
                mov     [rsp+4A0h+var_438], 4
                lea     eax, ds:8[rax*4]
                mov     [rsp+4A0h+var_434], eax
                lea     rax, qword_1400019C0
                mov     [rbp+3A0h+var_400], rax
                mov     [rbp+3A0h+var_420], rdi
                mov     [rbp+3A0h+var_418], ecx
                mov     [rbp+3A0h+var_414], 20h ; ' '
                mov     dword ptr [rsp+4A0h+var_448], r8d
                cmp     r13d, 7Ah ; 'z'
                jz      loc_1404518E2
                mov     eax, [rsp+4A0h+var_43C]
                mov     ecx, r8d
                or      eax, r12d
                mov     [rsp+4A0h+var_43C], eax
                cmp     edx, 5FFh
                jb      short loc_1402BA23D

loc_1402BA1EA:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+264↓j
                                        ; SeReportSecurityEventWithSubCategory+197921↓j
                mov     ebx, [rsi+8]
                lea     rax, [rsp+4A0h+var_438]
                shl     rcx, 5
                lea     rdx, [rsi+18h]
                mov     r8d, ebx
                add     rcx, rax
                shl     r8, 5
                call    memmove
                add     dword ptr [rsp+4A0h+var_448], ebx
                lea     rcx, [rsp+4A0h+var_450]
                call    sub_1403C2664
                jmp     loc_1402BA0BA
; ---------------------------------------------------------------------------

loc_1402BA21C:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+DF↑j
                test    rdi, rdi
                jz      loc_1402BA0C5
                cmp     rdi, r15
                jz      loc_1402BA0C5
                lea     rcx, [rsp+4A0h+var_480+8]
                call    SeReleaseSubjectContext
                jmp     loc_1402BA0C5
; ---------------------------------------------------------------------------

loc_1402BA23D:                          ; CODE XREF: SeReportSecurityEventWithSubCategory+208↑j
                or      eax, r8d
                mov     [rsp+4A0h+var_43C], eax
                jmp     short loc_1402BA1EA
; } // starts at 1402B9FE0
SeReportSecurityEventWithSubCategory endp

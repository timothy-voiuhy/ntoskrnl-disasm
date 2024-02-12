MmProbeAndLockSelectedPages proc near   ; CODE XREF: NtReadFileScatter+66B↓p
                                        ; NtWriteFileGather+6F1↓p
                                        ; DATA XREF: ...

var_1130        = byte ptr -1130h
var_1128        = dword ptr -1128h
var_1120        = dword ptr -1120h
var_1110        = byte ptr -1110h
var_1108        = qword ptr -1108h
var_1100        = qword ptr -1100h
var_10F8        = qword ptr -10F8h
var_10F0        = qword ptr -10F0h
var_10D0        = qword ptr -10D0h
var_10C0        = byte ptr -10C0h
var_1080        = qword ptr -1080h
var_1070        = qword ptr -1070h
var_1068        = qword ptr -1068h
var_1060        = qword ptr -1060h
var_1050        = byte ptr -1050h
var_50          = qword ptr -50h

; FUNCTION CHUNK AT 000000014047FC24 SIZE 000000F7 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1018h]
                sub     rsp, 1118h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1050h+var_50], rax
                mov     [rsp+1150h+var_1110], r8b
                mov     r15, rdx
                mov     r14, rcx
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+1150h+var_1100]
                mov     ebx, r9d
                call    memset
                mov     ecx, [r14+28h]
                lea     rdi, [rbp+1050h+var_1050]
                test    ebx, ebx
                mov     eax, 0
                mov     esi, 1
                cmovz   esi, ebx
                test    ecx, 0FFFh
                setnz   al
                shr     ecx, 0Ch
                add     eax, ecx
                mov     ebx, eax
                shl     rbx, 3
                cmp     rax, 200h
                ja      loc_14047FC24

loc_1403483F4:                          ; CODE XREF: MmProbeAndLockSelectedPages+1378CD↓j
                mov     r8, rbx
                lea     r12, [rbx+rdi]
                mov     rdx, r15
                mov     rcx, rdi
                xor     r13d, r13d
                call    memmove
                mov     al, [rsp+1150h+var_1110]
                lea     ecx, [r13+1]
                mov     r8, [rdi]
                mov     r9d, ecx
                mov     [rsp+1150h+var_1120], ecx
                mov     rdx, r14
                mov     [rsp+1150h+var_1128], esi
                lea     rcx, [rsp+1150h+var_1100]
                mov     [rsp+1150h+var_1130], al
                call    sub_1402214C0
                mov     ebx, eax
                test    eax, eax
                js      loc_14034850F
                mov     r15, rdi
                cmp     rdi, r12
                jnb     loc_1403484FB
                mov     rsi, [rbp+1050h+var_10D0]

loc_14034844A:                          ; CODE XREF: MmProbeAndLockSelectedPages+185↓j
                mov     rcx, [r15]
                mov     rdx, 7FFFFFFFF8h
                mov     [rsp+1150h+var_1100], rcx
                lea     rax, [rcx+1]
                mov     [rsp+1150h+var_10F8], rax
                mov     rax, rcx
                shr     rax, 9
                and     rax, rdx
                mov     rdx, 0FFFFF68000000000h
                or      qword ptr [rsi], 0FFFFFFFFFFFFFFFFh
                add     rax, rdx
                mov     rdx, 7FFFFFFF0000h
                mov     [rsp+1150h+var_10F0], rax
                cmp     rcx, rdx
                jnb     loc_14047FC4E

loc_140348498:                          ; CODE XREF: MmProbeAndLockSelectedPages+1378E3↓j
                test    [rbp+1050h+var_10C0], 20h
                jnz     loc_140348548

loc_1403484A2:                          ; CODE XREF: MmProbeAndLockSelectedPages+1DC↓j
                                        ; MmProbeAndLockSelectedPages+1E6↓j
                lea     rcx, [rsp+1150h+var_1100]
                call    sub_140348750
                mov     ebx, eax
                test    eax, eax
                js      short loc_1403484FB
                mov     r14d, 10h

loc_1403484B8:                          ; CODE XREF: MmProbeAndLockSelectedPages+234↓j
                lea     rcx, [rsp+1150h+var_1100]
                call    sub_140221EA0
                mov     ebx, eax
                test    eax, eax
                js      short loc_1403484FB
                mov     rsi, [rbp+1050h+var_10D0]
                inc     r13d
                mov     rax, [rbp+1050h+var_1080]
                xor     edx, edx
                mov     [rsi], rax
                mov     eax, r13d
                div     r14d
                add     rsi, 8
                mov     [rbp+1050h+var_10D0], rsi
                test    edx, edx
                jz      loc_1403485A9

loc_1403484EE:                          ; CODE XREF: MmProbeAndLockSelectedPages+245↓j
                                        ; MmProbeAndLockSelectedPages+263↓j
                add     r15, 8
                cmp     r15, r12
                jb      loc_14034844A

loc_1403484FB:                          ; CODE XREF: MmProbeAndLockSelectedPages+D0↑j
                                        ; MmProbeAndLockSelectedPages+140↑j ...
                mov     r8d, 7
                lea     rcx, [rsp+1150h+var_1100]
                mov     edx, ebx
                call    sub_14034831C
                mov     ebx, eax

loc_14034850F:                          ; CODE XREF: MmProbeAndLockSelectedPages+C4↑j
                lea     rax, [rbp+1050h+var_1050]
                cmp     rdi, rax
                jnz     loc_14047FD03

loc_14034851C:                          ; CODE XREF: MmProbeAndLockSelectedPages+13799E↓j
                test    ebx, ebx
                js      loc_14047FD13
                mov     rcx, [rbp+1050h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1118h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140348548:                          ; CODE XREF: MmProbeAndLockSelectedPages+12C↑j
                cmp     rcx, [rbp+1050h+var_1068]
                ja      loc_1403484A2
                cmp     rcx, [rbp+1050h+var_1070]
                jb      loc_1403484A2
                cmp     [rbp+1050h+var_1060], 0FFFFFFFFFFFFFFFFh
                jnz     loc_14047FC69
                mov     rcx, rax
                call    sub_1402805F0
                lea     rcx, [rsp+1150h+var_1108]
                mov     [rsp+1150h+var_1108], rax
                mov     rbx, rax
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047FC7E

loc_140348589:                          ; CODE XREF: MmProbeAndLockSelectedPages+137918↓j
                                        ; MmProbeAndLockSelectedPages+137935↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                mov     [rbp+1050h+var_1080], rbx

loc_14034859E:                          ; CODE XREF: MmProbeAndLockSelectedPages+137909↓j
                mov     r14d, 40h ; '@'
                jmp     loc_1403484B8
; ---------------------------------------------------------------------------

loc_1403485A9:                          ; CODE XREF: MmProbeAndLockSelectedPages+178↑j
                lea     rcx, [rsp+1150h+var_1100]
                call    sub_14029F354
                test    eax, eax
                jz      loc_1403484EE
                lea     rcx, [rsp+1150h+var_1100]
                call    sub_140348A5C
                lea     rcx, [rsp+1150h+var_1100]
                call    sub_140348A14
                mov     rsi, [rbp+1050h+var_10D0]
                jmp     loc_1403484EE
; } // starts at 140348370
MmProbeAndLockSelectedPages endp

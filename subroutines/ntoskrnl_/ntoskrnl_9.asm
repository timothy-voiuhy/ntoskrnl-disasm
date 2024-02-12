ntoskrnl_9      proc near               ; DATA XREF: .pdata:000000014011C628↑o

var_F8          = dword ptr -0F8h
var_E8          = qword ptr -0E8h
var_B0          = qword ptr -0B0h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_28], rax
                mov     rsi, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+118h+var_98]
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+118h+var_E8]
                lea     r8d, [rdx+48h]
                call    memset
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rsi
                xor     ebp, ebp
                xor     ebx, ebx
                call    memset
                test    rdi, rdi
                jz      loc_1408906CD

loc_14089062A:                          ; CODE XREF: ntoskrnl_9+103↓j
                mov     ecx, esi
                mov     eax, 1FA000h
                and     ecx, 0FFFh
                mov     r14d, edi
                sub     eax, ecx
                mov     r9d, 1
                mov     ecx, eax
                mov     rdx, rsi
                cmp     rcx, rdi
                lea     rcx, [rsp+118h+var_E8]
                cmovb   r14d, eax
                and     [rsp+118h+var_F8], 0
                mov     r8d, r14d
                call    sub_1403940A8
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408906CD
                mov     rax, [rsp+118h+var_E8]
                lea     r9, [rsp+118h+var_98]
                mov     [rsp+118h+var_88], rax
                mov     edx, 4Ah ; 'J'
                mov     rax, [rsp+118h+var_B0]
                xor     r8d, r8d
                mov     cl, 2
                mov     [rsp+118h+var_80], rax
                mov     [rsp+118h+var_90], rbp
                call    sub_14034DB1C
                lea     rcx, [rsp+118h+var_E8]
                mov     ebx, eax
                call    sub_140394054
                cmp     ebx, 8000001Ah
                jz      short loc_1408906CB
                test    ebx, ebx
                js      short loc_1408906CD
                mov     eax, r14d
                add     rsi, rax
                add     rbp, rax
                sub     rdi, rax
                jnz     loc_14089062A
                jmp     short loc_1408906CD
; ---------------------------------------------------------------------------

loc_1408906CB:                          ; CODE XREF: ntoskrnl_9+F1↑j
                xor     ebx, ebx

loc_1408906CD:                          ; CODE XREF: ntoskrnl_9+64↑j
                                        ; ntoskrnl_9+A4↑j ...
                mov     eax, ebx
                mov     rcx, [rsp+118h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+118h+var_18]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408905C0
ntoskrnl_9      endp

algn_1408906F8:                         ; DATA XREF: .pdata:000000014011C628↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=30h

sub_140890700   proc near               ; CODE XREF: sub_14090EFD8+184↓p
                                        ; DATA XREF: .pdata:000000014011C634↑o

var_110         = dword ptr -110h
var_100         = qword ptr -100h
var_F0          = qword ptr -0F0h
var_B8          = qword ptr -0B8h
var_A0          = byte ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_0           = qword ptr  10h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = dword ptr  40h
arg_38          = byte ptr  48h
arg_40          = qword ptr  50h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-10h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+30h+var_30], rax
                mov     r14, [rbp+30h+arg_28]
                mov     rbx, rdx
                mov     rdi, [rbp+30h+arg_40]
                xor     edx, edx
                and     [rsp+130h+var_100], 0
                mov     rsi, r8
                mov     r12, rcx
                mov     r15, r9
                lea     rcx, [rbp+30h+var_A0]
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+130h+var_F0]
                lea     r8d, [rdx+48h]
                call    memset
                cmp     qword ptr [rbx+3E0h], 0
                jnz     short loc_1408907A6
                lea     r8, [rsp+130h+var_100]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140890860
                test    eax, eax
                js      loc_140890831
                mov     rcx, [rsp+130h+var_100]
                xor     eax, eax
                lock cmpxchg [rbx+3E0h], rcx
                jz      short loc_1408907A6
                mov     rcx, [rsp+130h+var_100]
                call    sub_1404FE3B0

loc_1408907A6:                          ; CODE XREF: sub_140890700+70↑j
                                        ; sub_140890700+9A↑j
                mov     r8d, [rbp+30h+arg_30]
                test    r8d, r8d
                jz      short loc_1408907C8
                and     [rsp+130h+var_110], 0
                lea     rcx, [rsp+130h+var_F0]
                xor     r9d, r9d
                mov     rdx, r14
                call    sub_1403940A8
                test    eax, eax
                js      short loc_140890831

loc_1408907C8:                          ; CODE XREF: sub_140890700+AD↑j
                mov     rax, [rbx+3E0h]
                lea     r9, [rbp+30h+var_A0]
                mov     [rbp+30h+var_98], rax
                mov     edx, 2Dh ; '-'
                mov     rax, [rbp+30h+arg_20]
                xor     r8d, r8d
                mov     [rbp+30h+var_88], rax
                mov     cl, 2
                mov     rax, [rsp+130h+var_F0]
                mov     [rbp+30h+var_78], rax
                mov     rax, [rsp+130h+var_B8]
                mov     [rbp+30h+var_70], rax
                movzx   eax, [rbp+30h+arg_38]
                mov     [rbp+30h+var_68], rax
                mov     [rbp+30h+var_90], r15
                mov     [rbp+30h+var_80], r12
                call    sub_14034DB1C
                cmp     [rsp+130h+var_F0], 0
                mov     ebx, eax
                jz      short loc_140890824
                lea     rcx, [rsp+130h+var_F0]
                call    sub_140394054

loc_140890824:                          ; CODE XREF: sub_140890700+118↑j
                test    ebx, ebx
                js      short loc_14089082F
                mov     rcx, [rbp+30h+var_90]
                mov     [rdi], rcx

loc_14089082F:                          ; CODE XREF: sub_140890700+126↑j
                mov     eax, ebx

loc_140890831:                          ; CODE XREF: sub_140890700+84↑j
                                        ; sub_140890700+C6↑j
                mov     rcx, [rbp+30h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+130h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140890700
sub_140890700   endp

algn_14089085A:                         ; DATA XREF: .pdata:000000014011C634↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140890860   proc near               ; CODE XREF: sub_14067E8C8+193152↑p
                                        ; sub_140890700+7D↑p
                                        ; DATA XREF: ...

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     rdi, rdx
                mov     rsi, r8
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 6
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                mov     [rsp+0A8h+var_78], rdi
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                test    eax, eax
                js      short loc_1408908C7
                mov     rcx, [rsp+0A8h+var_78]
                mov     [rsi], rcx

loc_1408908C7:                          ; CODE XREF: sub_140890860+5D↑j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140890860
sub_140890860   endp

algn_1408908ED:                         ; DATA XREF: .pdata:000000014011C640↑o
                align 20h
; Exported entry 2650. VslCreateSecureSection

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=4Fh


LsaLogonUser    proc near               ; DATA XREF: .pdata:000000014012273C↑o

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_8           = byte ptr -8
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h
arg_58          = qword ptr  60h
arg_60          = qword ptr  68h
arg_68          = qword ptr  70h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 80h
                mov     r14, rcx
                mov     edi, r9d
                mov     rcx, cs:qword_140C1D8C8
                mov     esi, r8d
                mov     rbp, rdx
                mov     ebx, 0C0000002h
                call    sub_140309D44
                test    rax, rax
                jz      loc_14091DCE8
                mov     r10, [rax+18h]
                mov     r9d, edi
                mov     rax, [rsp+88h+arg_68]
                mov     r8d, esi
                mov     [rsp+88h+var_20], rax
                mov     rdx, rbp
                mov     rax, [rsp+88h+arg_60]
                mov     rcx, r14
                mov     [rsp+88h+var_28], rax
                mov     rax, [rsp+88h+arg_58]
                mov     [rsp+88h+var_30], rax
                mov     rax, [rsp+88h+arg_50]
                mov     [rsp+88h+var_38], rax
                mov     rax, [rsp+88h+arg_48]
                mov     [rsp+88h+var_40], rax
                mov     rax, [rsp+88h+arg_40]
                mov     [rsp+88h+var_48], rax
                mov     rax, [rsp+88h+arg_38]
                mov     [rsp+88h+var_50], rax
                mov     rax, [rsp+88h+arg_30]
                mov     [rsp+88h+var_58], rax
                mov     eax, [rsp+88h+arg_28]
                mov     [rsp+88h+var_60], eax
                mov     rax, [rsp+88h+arg_20]
                mov     [rsp+88h+var_68], rax
                mov     rax, r10
                call    sub_1404079D0
                mov     rcx, cs:qword_140C1D8C8
                mov     ebx, eax
                call    sub_140309D28

loc_14091DCE8:                          ; CODE XREF: LsaLogonUser+3C↑j
                lea     r11, [rsp+88h+var_8]
                mov     eax, ebx
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LsaLogonUser    endp

algn_14091DD09:                         ; DATA XREF: .pdata:000000014012273C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14091DD10   proc near               ; CODE XREF: sub_1406D86A0+11F↑p
                                        ; DATA XREF: .pdata:0000000140122748↑o

var_1D8         = dword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1B8         = qword ptr -1B8h
var_1A8         = byte ptr -1A8h
var_178         = qword ptr -178h
var_108         = byte ptr -108h
var_28          = qword ptr -28h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 1E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1F8h+var_28], rax
                and     [rsp+1F8h+var_1B8], 0
                mov     rdi, rdx
                mov     rbp, rcx
                lea     rdx, [rsp+1F8h+var_1B8]
                xor     ecx, ecx
                call    sub_140311538
                mov     ebx, eax
                test    eax, eax
                js      loc_14091DE69
                xor     edx, edx
                lea     rcx, [rsp+1F8h+var_1A8]
                mov     r8d, 0A0h
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+1F8h+var_108]
                mov     r8d, 0E0h
                call    memset
                mov     rsi, [rsp+1F8h+var_1B8]
                lea     rdx, [rsp+1F8h+var_108]
                xor     r8d, r8d
                lea     rcx, [rsp+1F8h+var_1A8]
                lea     rax, [rsi-30h]
                shr     rax, 8
                movzx   r9d, al
                movzx   eax, byte ptr [rsi-18h]
                xor     r9, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     r9, rax
                lea     rax, qword_140CFCE60
                mov     r9, [rax+r9*8]
                add     r9, 4Ch ; 'L'
                call    SeCreateAccessState
                call    PsGetCurrentProcess
                mov     rdx, [rsp+1F8h+var_178]
                lea     rcx, [rax+4B8h]
                call    sub_14024C4A0
                mov     rcx, cs:qword_140D2E938
                call    ObfReferenceObject
                mov     rax, cs:qword_140D2E938
                lea     rdx, [rsp+1F8h+var_1A8]
                and     [rsp+1F8h+var_1C8], 0
                xor     r9d, r9d
                and     [rsp+1F8h+var_1D0], 0
                xor     r8d, r8d
                and     [rsp+1F8h+var_1D8], 0
                mov     rcx, rsi
                mov     [rsp+1F8h+var_178], rax
                call    sub_14061EFE0
                lea     rcx, [rsp+1F8h+var_1A8]
                mov     ebx, eax
                call    SeDeleteAccessState
                test    ebx, ebx
                js      short loc_14091DE69
                mov     rcx, rsi
                call    sub_1405CF780
                mov     rcx, rbp
                mov     [rdi], rsi
                call    PsGetServerSiloServiceSessionId
                cmp     eax, 0FFFFFFFFh
                jz      short loc_14091DE4C
                mov     edx, eax
                mov     rcx, rsi
                call    sub_1405E283C
                mov     ebx, eax

loc_14091DE4C:                          ; CODE XREF: sub_14091DD10+12E↑j
                test    ebx, ebx
                js      short loc_14091DE61
                mov     rcx, [rdi]
                mov     rdx, rbp
                call    sub_14091E334
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14091DE6D

loc_14091DE61:                          ; CODE XREF: sub_14091DD10+13E↑j
                mov     rcx, [rdi]
                call    PsDereferenceSiloContext

loc_14091DE69:                          ; CODE XREF: sub_14091DD10+3D↑j
                                        ; sub_14091DD10+116↑j
                and     qword ptr [rdi], 0

loc_14091DE6D:                          ; CODE XREF: sub_14091DD10+14F↑j
                mov     eax, ebx
                mov     rcx, [rsp+1F8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+1F8h+arg_10]
                add     rsp, 1E0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14091DD10
sub_14091DD10   endp

byte_14091DE93  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140122748↑o

; =============== S U B R O U T I N E =======================================


sub_14091DE9C   proc near               ; CODE XREF: sub_140619C30+1E3382↑p
                                        ; sub_140923D28+66↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 30h
                mov     [rax-10h], r9
                mov     rdi, r9
                and     qword ptr [rax-18h], 0
                xor     r9d, r9d
                mov     rsi, r8
                call    sub_1406F706C
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091DF05
                mov     rcx, rsi
                call    PsGetServerSiloServiceSessionId
                cmp     eax, 0FFFFFFFFh
                jz      short loc_14091DEE2
                mov     rcx, [rdi]
                mov     edx, eax
                call    sub_1405E283C
                mov     ebx, eax

loc_14091DEE2:                          ; CODE XREF: sub_14091DE9C+38↑j
                test    ebx, ebx
                js      short loc_14091DEF7
                mov     rcx, [rdi]
                mov     rdx, rsi
                call    sub_14091E334
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14091DF03

loc_14091DEF7:                          ; CODE XREF: sub_14091DE9C+48↑j
                mov     rcx, [rdi]
                call    PsDereferenceSiloContext
                and     qword ptr [rdi], 0

loc_14091DF03:                          ; CODE XREF: sub_14091DE9C+59↑j
                mov     eax, ebx

loc_14091DF05:                          ; CODE XREF: sub_14091DE9C+2B↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14091DE9C   endp

algn_14091DF16:                         ; DATA XREF: .pdata:0000000140122754↑o
                align 20h
; Exported entry 2530. SeIsParentOfChildAppContainer

; =============== S U B R O U T I N E =======================================



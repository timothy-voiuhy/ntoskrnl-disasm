WheaReportHwError proc near             ; CODE XREF: sub_1404BACC0+AC↑p
                                        ; HalHandleNMI+13D↑p ...

var_B0          = dword ptr -0B0h
var_A8          = dword ptr -0A8h
var_90          = byte ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                xor     ebx, ebx
                xor     eax, eax
                mov     [rbp+57h+var_60], rax
                mov     edx, 0C0000000h
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_8C], ebx
                mov     rdi, rcx
                mov     [rbp+57h+var_90], bl
                mov     ecx, [rcx+14h]
                mov     r12b, bl
                mov     eax, ecx
                mov     [rbp+57h+var_88], rbx
                and     eax, edx
                movups  [rbp+57h+var_80], xmm0
                movups  [rbp+57h+var_70], xmm0
                cmp     eax, edx
                jnz     short loc_1405BB40E
                mov     eax, 0C000000Dh
                jmp     loc_1405BB589
; ---------------------------------------------------------------------------

loc_1405BB40E:                          ; CODE XREF: WheaReportHwError+62↑j
                mov     esi, 1
                bt      ecx, 1Eh
                jnb     short loc_1405BB435
                mov     eax, [rdi+8]
                lea     rdx, [rdi+7]
                add     rdx, rax
                mov     [rbp+57h+var_90], sil
                btr     ecx, 1Eh
                and     rdx, 0FFFFFFFFFFFFFFF8h
                mov     [rbp+57h+var_88], rdx
                jmp     short loc_1405BB440
; ---------------------------------------------------------------------------

loc_1405BB435:                          ; CODE XREF: WheaReportHwError+77↑j
                test    ecx, ecx
                jns     short loc_1405BB443
                btr     ecx, 1Fh
                mov     r12b, sil

loc_1405BB440:                          ; CODE XREF: WheaReportHwError+93↑j
                mov     [rdi+14h], ecx

loc_1405BB443:                          ; CODE XREF: WheaReportHwError+97↑j
                cmp     ecx, 3
                jnz     short loc_1405BB451
                test    r12b, r12b
                jz      loc_1405BB587

loc_1405BB451:                          ; CODE XREF: WheaReportHwError+A6↑j
                lea     rax, dword_14003A86C
                mov     [rsp+0D0h+var_A8], esi
                xor     r9d, r9d
                mov     qword ptr [rsp+0D0h+var_B0], rax
                xor     r8d, r8d
                lea     rcx, unk_140CF4A48
                mov     edx, 11B4117h
                call    sub_140206E14
                mov     r14d, 8
                test    r12b, r12b
                jnz     short loc_1405BB4C4
                cmp     dword ptr [rdi+14h], 2
                jz      short loc_1405BB4C4
                test    [rdi+0Ch], sil
                jnz     short loc_1405BB4C4
                lea     rcx, [rbp+57h+var_80]
                mov     dword ptr [rbp+57h+var_80], 674C6857h
                mov     dword ptr [rbp+57h+var_80+4], esi
                mov     qword ptr [rbp+57h+var_80+8], 28h ; '('
                mov     dword ptr [rbp+57h+var_70+4], 80000005h
                mov     dword ptr [rbp+57h+var_70], 4C4E524Bh
                mov     dword ptr [rbp+57h+var_70+8], r14d
                mov     dword ptr [rbp+57h+var_70+0Ch], r14d
                mov     [rbp+57h+var_60], rdi
                call    WheaLogInternalEvent

loc_1405BB4C4:                          ; CODE XREF: WheaReportHwError+E1↑j
                                        ; WheaReportHwError+E7↑j ...
                mov     rax, gs:18h
                mov     r13, [rax+84A0h]
                test    r13, r13
                jz      loc_1405BB85B
                mov     rcx, [r13+8]
                test    rcx, rcx
                jz      loc_1405BB85B
                cmp     [rcx+4], ebx
                jz      loc_1405BB85B
                mov     edx, [rdi+18h]
                call    sub_1405BBD54
                mov     r15, rax
                test    rax, rax
                jnz     short loc_1405BB52F
                cmp     [rdi+14h], esi
                ja      short loc_1405BB528
                test    [rdi+0Ch], sil
                jnz     short loc_1405BB528
                movsxd  r8, dword ptr [rdi+1Ch]
                mov     r9d, edx
                lea     edx, [rax+9]
                mov     qword ptr [rsp+0D0h+var_B0], rbx
                mov     ecx, 122h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BB528:                          ; CODE XREF: WheaReportHwError+166↑j
                                        ; WheaReportHwError+16C↑j
                mov     eax, 0C00000C0h
                jmp     short loc_1405BB589
; ---------------------------------------------------------------------------

loc_1405BB52F:                          ; CODE XREF: WheaReportHwError+161↑j
                lock add [rax+18h], esi
                cmp     dword ptr [rdi+14h], 2
                jnz     short loc_1405BB5B7
                mov     rcx, r15
                call    sub_1405BB968
                test    al, al
                jz      short loc_1405BB5B7
                mov     eax, [rdi+1Ch]
                lea     rcx, [rbp+57h+var_58]
                mov     [rbp+57h+var_38], eax
                mov     eax, [rdi+18h]
                mov     [rbp+57h+var_34], eax
                mov     [rbp+57h+var_58], 674C6857h
                mov     [rbp+57h+var_54], esi
                mov     [rbp+57h+var_50], 28h ; '('
                mov     [rbp+57h+var_4C], esi
                mov     [rbp+57h+var_44], 80000004h
                mov     [rbp+57h+var_48], 4C4E524Bh
                mov     [rbp+57h+var_40], 2
                mov     [rbp+57h+var_3C], r14d
                call    WheaLogInternalEvent

loc_1405BB587:                          ; CODE XREF: WheaReportHwError+AB↑j
                                        ; WheaReportHwError+4BE↓j ...
                xor     eax, eax

loc_1405BB589:                          ; CODE XREF: WheaReportHwError+69↑j
                                        ; WheaReportHwError+18D↑j ...
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405BB5B7:                          ; CODE XREF: WheaReportHwError+197↑j
                                        ; WheaReportHwError+1A3↑j
                lea     rdx, [rbp+57h+var_8C]
                mov     rcx, r15
                call    sub_1405BB8D4
                mov     r14, rax
                test    rax, rax
                jnz     short loc_1405BB601
                add     [r15+10h], esi
                cmp     [rdi+14h], esi
                ja      short loc_1405BB5FA
                test    [rdi+0Ch], sil
                jnz     short loc_1405BB5FA
                test    r12b, r12b
                jnz     short loc_1405BB5FA
                mov     r9d, [rdi+18h]
                lea     edx, [rax+0Ah]
                movsxd  r8, dword ptr [rdi+1Ch]
                mov     ecx, 122h
                mov     qword ptr [rsp+0D0h+var_B0], rbx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BB5FA:                          ; CODE XREF: WheaReportHwError+232↑j
                                        ; WheaReportHwError+238↑j ...
                mov     eax, 0C000009Ah
                jmp     short loc_1405BB589
; ---------------------------------------------------------------------------

loc_1405BB601:                          ; CODE XREF: WheaReportHwError+229↑j
                mov     eax, [rdi+0Ch]
                lea     rsi, [r14+28h]
                shr     eax, 2
                mov     r9, rsi
                xor     eax, [r14+18h]
                mov     r8, r15
                and     eax, 4
                mov     rdx, rdi
                xor     [r14+18h], eax
                mov     eax, [r14+18h]
                mov     ecx, [rdi+0Ch]
                shr     ecx, 2
                xor     ecx, eax
                and     ecx, 8
                xor     ecx, eax
                mov     [r14+18h], ecx
                mov     ecx, [rbp+57h+var_8C]
                add     ecx, 0FFFFFFD8h
                call    sub_1405BBCB4
                mov     [rbp+57h+var_8C], eax
                test    eax, eax
                jns     short loc_1405BB684
                cmp     dword ptr [rdi+14h], 1
                ja      short loc_1405BB674
                test    byte ptr [rdi+0Ch], 1
                jnz     short loc_1405BB674
                test    r12b, r12b
                jnz     short loc_1405BB674
                mov     r9d, [rdi+18h]
                mov     edx, 0Bh
                movsxd  r8, dword ptr [rdi+1Ch]
                mov     ecx, 122h
                mov     qword ptr [rsp+0D0h+var_B0], rbx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BB674:                          ; CODE XREF: WheaReportHwError+2AA↑j
                                        ; WheaReportHwError+2B0↑j ...
                mov     rcx, r14
                call    sub_1405BBD30
                mov     eax, [rbp+57h+var_8C]
                jmp     loc_1405BB589
; ---------------------------------------------------------------------------

loc_1405BB684:                          ; CODE XREF: WheaReportHwError+2A4↑j
                test    r12b, r12b
                jnz     short loc_1405BB68E
                cmp     [rbp+57h+var_90], bl
                jz      short loc_1405BB692

loc_1405BB68E:                          ; CODE XREF: WheaReportHwError+2E7↑j
                or      dword ptr [rsi+68h], 8

loc_1405BB692:                          ; CODE XREF: WheaReportHwError+2EC↑j
                mov     eax, [rsi+68h]
                test    al, 2
                jz      short loc_1405BB6D0
                mov     rdx, rsi
                mov     ecx, 3
                call    sub_1405BBB78

loc_1405BB6A6:                          ; CODE XREF: WheaReportHwError+42E↓j
                                        ; WheaReportHwError+474↓j
                mov     eax, [r14+18h]
                test    al, 1
                jz      loc_1405BB848
                cmp     cs:dword_140C15E30, 1
                jnz     short loc_1405BB6C3
                mov     rcx, rsi
                call    sub_1405BD690

loc_1405BB6C3:                          ; CODE XREF: WheaReportHwError+319↑j
                mov     rcx, r14
                call    sub_1405BBD30
                jmp     loc_1405BB854
; ---------------------------------------------------------------------------

loc_1405BB6D0:                          ; CODE XREF: WheaReportHwError+2F7↑j
                cmp     cs:byte_140C12E45, bl
                jnz     short loc_1405BB709
                test    r12b, r12b
                jnz     short loc_1405BB709
                mov     rdx, rsi
                xor     ecx, ecx
                call    sub_1405BBB78
                mov     edx, [rsi+14h]
                mov     r8, rsi
                mov     ecx, 1
                call    cs:PshedWriteErrorRecord
                nop     dword ptr [rax+rax+00h]
                test    eax, eax
                jns     short loc_1405BB709
                mov     cs:byte_140C12E45, 1

loc_1405BB709:                          ; CODE XREF: WheaReportHwError+336↑j
                                        ; WheaReportHwError+33B↑j ...
                mov     ecx, [rdi+14h]
                cmp     ecx, 1
                jnz     short loc_1405BB78D
                test    r12b, r12b
                jnz     loc_1405BB828
                lea     rdx, [r15+60h]
                mov     rcx, rsi
                call    cs:PshedFinalizeErrorRecord
                nop     dword ptr [rax+rax+00h]
                mov     rcx, rsi
                call    sub_1405BBDE0
                mov     rdx, rsi
                mov     ecx, 3
                call    sub_1405BBB78
                mov     edx, [rsi+14h]
                mov     r8, rsi
                xor     ecx, ecx
                call    cs:PshedWriteErrorRecord
                nop     dword ptr [rax+rax+00h]
                mov     edx, [rsi+14h]
                mov     rcx, rsi
                call    sub_1405BB890
                cmp     [rbp+57h+var_90], bl
                jz      loc_1405BB7FB
                mov     r9, [rbp+57h+var_88]
                mov     r8, rsi
                movsxd  rdx, dword ptr [r15+68h]
                mov     ecx, 124h
                mov     rax, [r9+50h]
                mov     r9, [r9+48h]
                mov     qword ptr [rsp+0D0h+var_B0], rax
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BB78D:                          ; CODE XREF: WheaReportHwError+36F↑j
                lea     eax, [rcx-2]
                cmp     eax, 1
                jbe     loc_1405BB828
                test    ecx, ecx
                jnz     short loc_1405BB819
                lea     rdx, [r15+60h]
                mov     rcx, rsi
                call    cs:PshedFinalizeErrorRecord
                nop     dword ptr [rax+rax+00h]
                mov     rcx, rsi
                call    sub_1405BBB00
                mov     rdx, rsi
                mov     ecx, 3
                call    sub_1405BBB78
                cmp     dword ptr [rsi+0Ch], 2
                jz      short loc_1405BB810
                test    r12b, r12b
                jnz     loc_1405BB6A6
                mov     rcx, rsi
                call    sub_1405BBDE0
                mov     edx, [rsi+14h]
                mov     r8, rsi
                xor     ecx, ecx
                call    cs:PshedWriteErrorRecord
                nop     dword ptr [rax+rax+00h]
                mov     edx, [rsi+14h]
                mov     rcx, rsi
                call    sub_1405BB890

loc_1405BB7FB:                          ; CODE XREF: WheaReportHwError+3C4↑j
                mov     rdx, rsi
                lea     rcx, [r15+60h]
                call    cs:PshedBugCheckSystem
                nop     dword ptr [rax+rax+00h]
                jmp     short loc_1405BB854
; ---------------------------------------------------------------------------

loc_1405BB810:                          ; CODE XREF: WheaReportHwError+429↑j
                or      dword ptr [rsi+68h], 1
                jmp     loc_1405BB6A6
; ---------------------------------------------------------------------------

loc_1405BB819:                          ; CODE XREF: WheaReportHwError+3FB↑j
                mov     rcx, r14
                call    sub_1405BBD30
                mov     ebx, 0C000000Dh
                jmp     short loc_1405BB854
; ---------------------------------------------------------------------------

loc_1405BB828:                          ; CODE XREF: WheaReportHwError+374↑j
                                        ; WheaReportHwError+3F3↑j
                lea     rdx, [r15+60h]
                mov     rcx, rsi
                call    cs:PshedFinalizeErrorRecord
                nop     dword ptr [rax+rax+00h]
                mov     rdx, rsi
                mov     ecx, 3
                call    sub_1405BBB78

loc_1405BB848:                          ; CODE XREF: WheaReportHwError+30C↑j
                mov     rcx, [r13+10h]
                mov     rdx, r14
                call    sub_1405BDA28

loc_1405BB854:                          ; CODE XREF: WheaReportHwError+32B↑j
                                        ; WheaReportHwError+46E↑j ...
                mov     eax, ebx
                jmp     loc_1405BB589
; ---------------------------------------------------------------------------

loc_1405BB85B:                          ; CODE XREF: WheaReportHwError+137↑j
                                        ; WheaReportHwError+144↑j ...
                cmp     [rdi+14h], esi
                ja      loc_1405BB587
                test    [rdi+0Ch], sil
                jnz     loc_1405BB587
                movsxd  rdx, dword ptr [rdi+1Ch]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     qword ptr [rsp+0D0h+var_B0], rbx
                mov     ecx, 124h
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405BB3A0
WheaReportHwError endp

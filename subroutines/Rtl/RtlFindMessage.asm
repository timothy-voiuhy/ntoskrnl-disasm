RtlFindMessage  proc near               ; CODE XREF: sub_140769624+96↓p
                                        ; sub_140892EA0+9E↓p ...

var_50          = qword ptr -50h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_8           = qword ptr  28h
arg_20          = qword ptr  40h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     rsi, [rbp+arg_20]
                mov     rdi, rcx
                and     [rbp+var_38], 0
                and     [rbp+var_30], 0
                and     [rbp+var_40], 0
                mov     eax, edx
                lea     rdx, [rbp+var_28]
                mov     ebx, r9d
                mov     r9d, 40h ; '@'
                mov     [rbp+var_28], rax
                mov     eax, r8d
                mov     [rbp+var_18], rax
                lea     rax, [rbp+var_38]
                lea     r8d, [r9-3Ch]
                mov     [rsp+70h+var_50], rax
                mov     [rbp+var_20], 1
                mov     [rbp+var_10], rbx
                call    sub_1406F1074
                test    eax, eax
                js      short loc_1406F0D28
                mov     rdx, [rbp+var_38]
                lea     r9, [rbp+var_40]
                lea     r8, [rbp+var_30]
                mov     rcx, rdi
                call    sub_1406F0D4C
                test    eax, eax
                js      short loc_1406F0D28
                mov     edx, [rbp+var_40]
                mov     r9, rsi
                mov     rcx, [rbp+var_30]
                mov     r8d, ebx
                call    sub_14033C5E4

loc_1406F0D28:                          ; CODE XREF: RtlFindMessage+6C↑j
                                        ; RtlFindMessage+84↑j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+70h+arg_8]
                add     rsp, 70h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F0C90
RtlFindMessage  endp

byte_1406F0D45  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104BEC↑o

; =============== S U B R O U T I N E =======================================


sub_1406F0D4C   proc near               ; CODE XREF: RtlFindMessage+7D↑p
                                        ; LdrAccessResource+4↓p ...

var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140825136 SIZE 00000014 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                and     qword ptr [rax-20h], 0
                mov     rbp, r9
                and     qword ptr [rax-28h], 0
                mov     r14, r8
                mov     rbx, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_140825140
                test    rdx, rdx
                jz      loc_140825140
                mov     dl, 1
                cmp     cs:byte_140C44D3A, dl
                jnz     short loc_1406F0DFC
                mov     rsi, rcx
                lea     r9, [rax+8]
                mov     r8d, 2
                and     rsi, 0FFFFFFFFFFFFFFFCh
                call    RtlImageDirectoryEntryToData
                test    rax, rax
                jz      loc_140825136
                cmp     rbx, rax
                jb      short loc_1406F0DE0
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rdi
                call    sub_14033C650
                cmp     eax, 0C000007Bh
                jz      short loc_1406F0E0D
                mov     rax, [rsp+48h+var_28]
                test    rax, rax
                jz      short loc_1406F0DFC
                cmp     rbx, rsi
                jb      short loc_1406F0DE0
                add     rax, rsi
                cmp     rbx, rax
                jb      short loc_1406F0DFC

loc_1406F0DE0:                          ; CODE XREF: sub_1406F0D4C+67↑j
                                        ; sub_1406F0D4C+8A↑j
                lea     r9, [rsp+48h+var_20]
                mov     r8, rbx
                mov     rcx, rdi
                call    sub_14033C3B4
                lea     rdx, [rax-1]
                cmp     rdx, 0FFFFFFFFFFFFFFFDh
                cmovbe  rdi, rax

loc_1406F0DFC:                          ; CODE XREF: sub_1406F0D4C+43↑j
                                        ; sub_1406F0D4C+85↑j ...
                mov     r9, rbp
                mov     r8, r14
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406F0E28

loc_1406F0E0D:                          ; CODE XREF: sub_1406F0D4C+7B↑j
                                        ; sub_1406F0D4C+1343EF↓j ...
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F0D4C   endp

algn_1406F0E21:                         ; DATA XREF: .rdata:000000014007F0EC↑o
                                        ; .pdata:0000000140104BF8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406F0E28   proc near               ; CODE XREF: sub_14033C328+32↑p
                                        ; sub_14033CAD4+E1↑p ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rsi, r9
                mov     r12, rdx
                mov     rbx, rcx

loc_1406F0E51:                          ; DATA XREF: .rdata:000000014007F11C↑o
;   __try { // __except at loc_1406F1046
                mov     r8d, 2
                lea     r9, [rax-50h]
                lea     r15d, [r8-1]
                mov     dl, r15b
                call    RtlImageDirectoryEntryToData
                mov     [rsp+78h+var_40], rax
                test    rax, rax
                jz      loc_1406F0FE9
                and     [rsp+78h+var_50], 0
                lea     rdx, [rsp+78h+var_50]
                mov     rcx, rbx
                call    sub_14033C650
                mov     r14d, eax
                mov     [rsp+78h+var_48], eax
                cmp     eax, 0C000007Bh
                jz      loc_1406F0FF0
                mov     rdi, rbx
                and     rdi, 0FFFFFFFFFFFFFFFCh
                cmp     r12, rdi
                jbe     loc_1406F103F
                mov     r13, [rsp+78h+var_50]
                test    r13, r13
                jnz     loc_1406F0F7A

loc_1406F0EB8:                          ; CODE XREF: sub_1406F0E28+159↓j
                xor     eax, eax
                mov     [rsp+78h+var_58], eax
                test    bl, 3
                jz      short loc_1406F0ED1
                test    r15b, bl
                cmovnz  eax, r15d
                mov     [rsp+78h+var_58], eax
                mov     rbx, rdi

loc_1406F0ED1:                          ; CODE XREF: sub_1406F0E28+99↑j
                cmp     eax, r15d
                jnz     loc_1406F0F8C
                mov     rcx, rbx
                call    RtlImageNtHeader
                mov     rsi, rax
                test    rax, rax
                jz      loc_1406F0FF7
                movzx   eax, word ptr [rax+18h]
                mov     ecx, 10Bh
                cmp     ax, cx
                jnz     loc_1406F0FFE
                mov     r8d, [rsi+88h]

loc_1406F0F07:                          ; CODE XREF: sub_1406F0E28+1E7↓j
                                        ; sub_1406F0E28+1EF↓j
                test    r8d, r8d
                jz      loc_1406F101C
                mov     r15d, r8d
                sub     r15, [rsp+78h+var_40]
                add     r15, rbx
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14033C730
                test    rax, rax
                jz      loc_1406F1023
                mov     r8d, [r12]
                cmp     r8d, [rax+8]
                ja      short loc_1406F0F9F

loc_1406F0F39:                          ; CODE XREF: sub_1406F0E28+1BC↓j
                mov     rsi, [rsp+78h+arg_18]

loc_1406F0F41:                          ; CODE XREF: sub_1406F0E28+167↓j
                mov     rdx, [rsp+78h+arg_10]
                test    rdx, rdx
                jz      short loc_1406F0F69
                mov     ecx, [r12]
                sub     rcx, r15
                add     rcx, rbx
                mov     [rdx], rcx
                cmp     rcx, rdi
                jbe     loc_1406F1031
                test    r13, r13
                jnz     short loc_1406F0F91

loc_1406F0F69:                          ; CODE XREF: sub_1406F0E28+124↑j
                                        ; sub_1406F0E28+170↓j
                test    rsi, rsi
                jz      short loc_1406F0F75
                mov     eax, [r12+4]
                mov     [rsi], eax

loc_1406F0F75:                          ; CODE XREF: sub_1406F0E28+144↑j
                jmp     loc_1406F104D
; ---------------------------------------------------------------------------

loc_1406F0F7A:                          ; CODE XREF: sub_1406F0E28+8A↑j
                lea     rax, [rdi+r13]
                cmp     r12, rax
                jb      loc_1406F0EB8
                jmp     loc_1406F103F
; ---------------------------------------------------------------------------

loc_1406F0F8C:                          ; CODE XREF: sub_1406F0E28+AC↑j
                xor     r15d, r15d
                jmp     short loc_1406F0F41
; ---------------------------------------------------------------------------

loc_1406F0F91:                          ; CODE XREF: sub_1406F0E28+13F↑j
                lea     rax, [rdi+r13]
                cmp     rcx, rax
                jb      short loc_1406F0F69
                jmp     loc_1406F1031
; ---------------------------------------------------------------------------

loc_1406F0F9F:                          ; CODE XREF: sub_1406F0E28+10F↑j
                mov     eax, [rax+0Ch]
                mov     dword ptr [rsp+78h+var_50], eax
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14033C730
                mov     [rsp+78h+var_38], rax
                test    rax, rax
                jz      short loc_1406F102A
                mov     r8d, [rax+0Ch]
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14033C6DC
                mov     rcx, [rsp+78h+var_38]
                mov     edx, [rcx+0Ch]
                mov     ecx, dword ptr [rsp+78h+var_50]
                sub     rdx, rcx
                add     rdx, [rsp+78h+var_40]
                sub     rdx, rax
                add     r15, rdx
                jmp     loc_1406F0F39
; ---------------------------------------------------------------------------

loc_1406F0FE9:                          ; CODE XREF: sub_1406F0E28+47↑j
                mov     eax, 0C0000089h
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F0FF0:                          ; CODE XREF: sub_1406F0E28+6C↑j
                mov     eax, 0C000007Bh
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F0FF7:                          ; CODE XREF: sub_1406F0E28+C0↑j
                mov     eax, 0C0000089h
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F0FFE:                          ; CODE XREF: sub_1406F0E28+D2↑j
                mov     ecx, 20Bh
                cmp     ax, cx
                jnz     short loc_1406F1014
                mov     r8d, [rsi+98h]
                jmp     loc_1406F0F07
; ---------------------------------------------------------------------------

loc_1406F1014:                          ; CODE XREF: sub_1406F0E28+1DE↑j
                xor     r8d, r8d
                jmp     loc_1406F0F07
; ---------------------------------------------------------------------------

loc_1406F101C:                          ; CODE XREF: sub_1406F0E28+E2↑j
                mov     eax, 0C0000089h
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F1023:                          ; CODE XREF: sub_1406F0E28+101↑j
                mov     eax, 0C0000089h
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F102A:                          ; CODE XREF: sub_1406F0E28+191↑j
                mov     eax, 0C0000089h
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F1031:                          ; CODE XREF: sub_1406F0E28+136↑j
                                        ; sub_1406F0E28+172↑j
                mov     qword ptr [rdx], 0
                mov     eax, 0C000007Bh
                jmp     short loc_1406F1050
; ---------------------------------------------------------------------------

loc_1406F103F:                          ; CODE XREF: sub_1406F0E28+7C↑j
                                        ; sub_1406F0E28+15F↑j
                mov     eax, 0C000007Bh
                jmp     short loc_1406F1050
;   } // starts at 1406F0E51
; ---------------------------------------------------------------------------

loc_1406F1046:                          ; DATA XREF: .rdata:000000014007F11C↑o
;   __except(1) // owned by 1406F0E51
                mov     r14d, eax
                mov     [rsp+78h+var_48], eax

loc_1406F104D:                          ; CODE XREF: sub_1406F0E28:loc_1406F0F75↑j
                mov     eax, r14d

loc_1406F1050:                          ; CODE XREF: sub_1406F0E28+1C6↑j
                                        ; sub_1406F0E28+1CD↑j ...
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F0E28
sub_1406F0E28   endp

byte_1406F106B  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140104C04↑o

; =============== S U B R O U T I N E =======================================


sub_1406F1074   proc near               ; CODE XREF: sub_14033CAD4+C9↑p
                                        ; sub_14033CC18+9E↑p ...

var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = word ptr -118h
var_114         = byte ptr -114h
var_113         = byte ptr -113h
var_112         = byte ptr -112h
var_110         = dword ptr -110h
var_10C         = byte ptr -10Ch
var_108         = dword ptr -108h
var_104         = byte ptr -104h
var_103         = byte ptr -103h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = word ptr -0F8h
var_F4          = dword ptr -0F4h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = byte ptr -0CCh
var_CB          = byte ptr -0CBh
var_C8          = word ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+148h+var_48], rax
                mov     r15d, r9d
                mov     [rsp+148h+var_F4], r9d
                mov     esi, r8d
                mov     [rsp+148h+var_D0], r8d
                mov     r13, rdx
                mov     [rsp+148h+var_D8], rcx
                mov     rdx, [rsp+148h+arg_20]
                mov     [rsp+148h+var_F0], rdx
                xor     edi, edi
                mov     [rsp+148h+var_E8], rdi
                mov     [rsp+148h+var_78], r13
                mov     [rsp+148h+var_113], dil
                lea     r10d, [rdi+1]
                mov     [rsp+148h+var_10C], r10b
                mov     [rsp+148h+var_112], r10b
                lea     r8d, [rdi+3]
                cmp     esi, r8d
                jnb     short loc_1406F10F3
                test    r15b, 2
                jz      loc_1406F1A98

loc_1406F10F3:                          ; CODE XREF: sub_1406F1074+73↑j
                cmp     esi, 4
                ja      loc_1406F1A98
                mov     eax, r15d
                and     eax, 41h
                jz      short loc_1406F110D
                cmp     esi, 4
                jnz     loc_1406F1A98

loc_1406F110D:                          ; CODE XREF: sub_1406F1074+8E↑j
                cmp     esi, 4
                jnz     short loc_1406F111A
                test    eax, eax
                jz      loc_1406F1A98

loc_1406F111A:                          ; CODE XREF: sub_1406F1074+9C↑j
                mov     eax, esi
                cmp     esi, 4
                cmovz   eax, r8d
                mov     [rsp+148h+var_100], eax
                mov     [rsp+148h+var_FC], eax
                mov     word ptr [rsp+148h+var_108], di
                movzx   r14d, di
                mov     [rsp+148h+var_118], di

loc_1406F1139:                          ; DATA XREF: .rdata:000000014007F1F0↑o
;   __try { // __except at loc_1406F1A92
                lea     rax, [r13-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      loc_1406F1A8B
                lea     rax, [rcx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      loc_1406F1A8B
                lea     rax, [rdx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      loc_1406F1A8B
                mov     r8d, 2
                lea     r9, [rsp+148h+var_F8]
                mov     dl, r10b
                call    RtlImageDirectoryEntryToData
                mov     [rsp+148h+var_B0], rax
                test    rax, rax
                jnz     short loc_1406F118D
                mov     eax, 0C0000089h
                jmp     loc_1406F1A9D
; ---------------------------------------------------------------------------

loc_1406F118D:                          ; CODE XREF: sub_1406F1074+10D↑j
                mov     rbx, rax
                mov     [rsp+148h+var_C0], rax
                mov     [rsp+148h+var_E8], 0EEEEh
                mov     [rsp+148h+var_C4], edi
                mov     r12, rdi
                mov     [rsp+148h+var_E0], rdi
                mov     [rsp+148h+var_A8], rdi
                mov     rax, rdi
                mov     [rsp+148h+var_B8], rax
                mov     [rsp+148h+var_80], rax
                mov     edi, r15d
                not     edi
                test    dil, 10h
                jz      loc_1406F1288
                mov     ecx, [rsp+148h+var_100]
                lea     eax, [rcx-1]
                cmp     eax, 2
                ja      loc_1406F1288
                cmp     cs:byte_140C44D3A, 1
                jnz     loc_1406F1288
                cmp     ecx, 3
                jnz     short loc_1406F1203
                movzx   edx, word ptr [r13+10h]
                jmp     short loc_1406F1205
; ---------------------------------------------------------------------------

loc_1406F1203:                          ; CODE XREF: sub_1406F1074+186↑j
                xor     edx, edx

loc_1406F1205:                          ; CODE XREF: sub_1406F1074+18D↑j
                mov     [rsp+148h+var_108], edx
                mov     [rsp+148h+var_C8], dx
                mov     rcx, [r13+0]
                lea     rax, [rcx-10h]
                test    rax, 0FFFFFFFFFFFFFFF7h
                jz      short loc_1406F123E
                test    rcx, 0FFFFFFFFFFFF0000h
                jz      short loc_1406F126B
                lea     rdx, aMui_0     ; "MUI"
                call    _wcsicmp
                test    eax, eax
                jnz     short loc_1406F126B
                mov     edx, [rsp+148h+var_108]

loc_1406F123E:                          ; CODE XREF: sub_1406F1074+1AB↑j
                test    dil, 8
                jz      short loc_1406F126B
                mov     eax, 0F3FFh
                test    ax, dx
                jnz     short loc_1406F126B
                mov     eax, 0C00h
                cmp     dx, ax
                jz      short loc_1406F126B
                or      r15d, 10h
                mov     [rsp+148h+var_F4], r15d
                mov     [rsp+148h+arg_18], r15d
                jmp     short loc_1406F128C
; ---------------------------------------------------------------------------

loc_1406F126B:                          ; CODE XREF: sub_1406F1074+1B4↑j
                                        ; sub_1406F1074+1C4↑j ...
                mov     rdx, r13
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033C840
                or      r15d, eax
                mov     [rsp+148h+var_F4], r15d
                mov     [rsp+148h+arg_18], r15d

loc_1406F1288:                          ; CODE XREF: sub_1406F1074+160↑j
                                        ; sub_1406F1074+170↑j ...
                mov     edx, [rsp+148h+var_108]

loc_1406F128C:                          ; CODE XREF: sub_1406F1074+1F5↑j
                mov     cl, cs:byte_140C44D3A
                mov     r8d, 1
                cmp     cl, r8b
                jnz     short loc_1406F12BF
                mov     eax, r15d
                not     eax
                bt      eax, 13h
                jnb     short loc_1406F12BF
                bt      eax, 11h
                jnb     short loc_1406F12BF
                test    al, 10h
                jz      short loc_1406F12BF
                mov     dil, r8b
                mov     [rsp+148h+var_114], r8b
                xor     r10d, r10d
                jmp     short loc_1406F12CA
; ---------------------------------------------------------------------------

loc_1406F12BF:                          ; CODE XREF: sub_1406F1074+227↑j
                                        ; sub_1406F1074+232↑j ...
                xor     r10d, r10d
                mov     dil, r10b
                mov     [rsp+148h+var_114], r10b

loc_1406F12CA:                          ; CODE XREF: sub_1406F1074+249↑j
                test    cl, cl
                jz      short loc_1406F12D7
                test    r15d, 2040000h
                jz      short loc_1406F12E1

loc_1406F12D7:                          ; CODE XREF: sub_1406F1074+258↑j
                mov     r8b, r10b
                mov     [rsp+148h+var_112], r10b
                jmp     short loc_1406F12E6
; ---------------------------------------------------------------------------

loc_1406F12E1:                          ; CODE XREF: sub_1406F1074+261↑j
                mov     r8b, [rsp+148h+var_112]

loc_1406F12E6:                          ; CODE XREF: sub_1406F1074+26B↑j
                test    dil, dil
                jnz     short loc_1406F12F0
                test    r8b, r8b
                jz      short loc_1406F1329

loc_1406F12F0:                          ; CODE XREF: sub_1406F1074+275↑j
                mov     rax, [r13+0]
                mov     [rsp+148h+var_68], rax
                mov     ecx, [rsp+148h+var_100]
                cmp     ecx, 2
                jb      short loc_1406F130B
                mov     rax, [r13+8]
                jmp     short loc_1406F130E
; ---------------------------------------------------------------------------

loc_1406F130B:                          ; CODE XREF: sub_1406F1074+28F↑j
                mov     rax, r10

loc_1406F130E:                          ; CODE XREF: sub_1406F1074+295↑j
                mov     [rsp+148h+var_60], rax
                cmp     esi, 4
                jnz     short loc_1406F132D
                mov     rax, [r13+18h]
                mov     [rsp+148h+var_50], rax
                jmp     short loc_1406F132D
; ---------------------------------------------------------------------------

loc_1406F1329:                          ; CODE XREF: sub_1406F1074+27A↑j
                                        ; sub_1406F1074+93C↓j
                mov     ecx, [rsp+148h+var_100]

loc_1406F132D:                          ; CODE XREF: sub_1406F1074+2A5↑j
                                        ; sub_1406F1074+2B3↑j
                mov     r11d, 409h
                mov     r9d, [rsp+148h+var_FC]
                test    rbx, rbx
                jz      loc_1406F1410
                mov     eax, r9d
                dec     r9d
                mov     [rsp+148h+var_FC], r9d
                mov     [rsp+148h+var_88], r9d
                test    eax, eax
                jz      loc_1406F1410
                test    r9d, r9d
                jnz     short loc_1406F13CF
                test    r8b, r8b
                jz      short loc_1406F13A7
                mov     r9d, r15d
                bts     r9d, 18h
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                jns     loc_1406F1A9D
                mov     r9d, [rsp+148h+var_FC]
                mov     r11d, 409h

loc_1406F13A7:                          ; CODE XREF: sub_1406F1074+2F0↑j
                test    r9d, r9d
                jnz     short loc_1406F13CF
                mov     r8, [rsp+148h+var_B8]
                cmp     [rsp+148h+var_100], 3
                cmovz   r8, rbx
                mov     [rsp+148h+var_B8], r8
                mov     [rsp+148h+var_80], r8
                jmp     short loc_1406F13D7
; ---------------------------------------------------------------------------

loc_1406F13CF:                          ; CODE XREF: sub_1406F1074+2EB↑j
                                        ; sub_1406F1074+336↑j
                mov     r8, [rsp+148h+var_B8]

loc_1406F13D7:                          ; CODE XREF: sub_1406F1074+359↑j
                test    r8, r8
                jz      loc_1406F1820
                mov     rax, [rsp+148h+var_78]
                movzx   edx, word ptr [rax+10h]
                mov     [rsp+148h+var_108], edx
                mov     [rsp+148h+var_C8], dx
                mov     eax, 3FFh
                test    ax, dx
                setz    cl
                mov     [rsp+148h+var_113], cl
                mov     [rsp+148h+var_CC], cl
                jmp     loc_1406F14B3
; ---------------------------------------------------------------------------

loc_1406F1410:                          ; CODE XREF: sub_1406F1074+2C7↑j
                                        ; sub_1406F1074+2E2↑j
                mov     r8, [rsp+148h+var_B8]

loc_1406F1418:                          ; CODE XREF: sub_1406F1074+862↓j
                mov     eax, r15d
                and     eax, 2
                test    r12, r12
                jz      short loc_1406F1434
                test    eax, eax
                jnz     short loc_1406F1434
                mov     rax, [rsp+148h+var_F0]
                mov     [rax], r12

loc_1406F142F:                          ; CODE XREF: sub_1406F1074+3D1↓j
                mov     eax, r10d
                jmp     short loc_1406F147C
; ---------------------------------------------------------------------------

loc_1406F1434:                          ; CODE XREF: sub_1406F1074+3AD↑j
                                        ; sub_1406F1074+3B1↑j
                test    rbx, rbx
                jz      short loc_1406F1447
                test    eax, eax
                jz      short loc_1406F1447
                mov     rax, [rsp+148h+var_F0]
                mov     [rax], rbx
                jmp     short loc_1406F142F
; ---------------------------------------------------------------------------

loc_1406F1447:                          ; CODE XREF: sub_1406F1074+3C3↑j
                                        ; sub_1406F1074+3C7↑j ...
                mov     eax, ecx
                sub     eax, r9d
                sub     eax, 1
                jz      short loc_1406F1477
                sub     eax, 1
                jz      short loc_1406F146D
                cmp     eax, 1
                jz      short loc_1406F1462
                mov     eax, 0C000000Dh
                jmp     short loc_1406F147C
; ---------------------------------------------------------------------------

loc_1406F1462:                          ; CODE XREF: sub_1406F1074+3E5↑j
                mov     eax, 0C0000204h
                mov     [rsp+148h+var_110], eax
                jmp     short loc_1406F148B
; ---------------------------------------------------------------------------

loc_1406F146D:                          ; CODE XREF: sub_1406F1074+3E0↑j
                mov     eax, 0C000008Bh
                jmp     loc_1406F1A85
; ---------------------------------------------------------------------------

loc_1406F1477:                          ; CODE XREF: sub_1406F1074+3DB↑j
                mov     eax, 0C000008Ah

loc_1406F147C:                          ; CODE XREF: sub_1406F1074+3BE↑j
                                        ; sub_1406F1074+3EC↑j
                mov     [rsp+148h+var_110], eax
                cmp     eax, 0C0000204h
                jnz     loc_1406F1A89

loc_1406F148B:                          ; CODE XREF: sub_1406F1074+3F7↑j
                test    r8, r8
                jz      loc_1406F1A89
                mov     rax, r10
                mov     [rsp+148h+var_E0], rax
                mov     [rsp+148h+var_A8], rax
                cmp     [rsp+148h+var_10C], r10b
                jz      loc_1406F1A80
                mov     cl, [rsp+148h+var_113]

loc_1406F14B3:                          ; CODE XREF: sub_1406F1074+397↑j
                mov     ebx, [rsp+148h+var_C4]

loc_1406F14BA:                          ; CODE XREF: sub_1406F1074+774↓j
                mov     eax, ebx
                inc     ebx
                mov     [rsp+148h+var_C4], ebx
                test    eax, eax
                jz      loc_1406F1773
                sub     eax, 1
                jz      loc_1406F16E9
                sub     eax, 1
                jz      loc_1406F166D
                sub     eax, 1
                jz      loc_1406F15F9
                sub     eax, 1
                jz      loc_1406F158E
                sub     eax, 1
                jz      short loc_1406F1515
                cmp     eax, 1
                jnz     loc_1406F1A80
                or      r15d, 20h
                mov     [rsp+148h+var_F4], r15d
                mov     [rsp+148h+arg_18], r15d
                jmp     loc_1406F17C6
; ---------------------------------------------------------------------------

loc_1406F1515:                          ; CODE XREF: sub_1406F1074+480↑j
                mov     r14d, r11d
                mov     [rsp+148h+var_118], r11w
                cmp     cs:dword_140D2E6B0, r11d
                jz      loc_1406F1609
                cmp     r11w, cs:word_140D2E680
                jz      loc_1406F1609
                cmp     r11w, cs:word_140D2E684
                jz      loc_1406F1609
                test    dil, dil
                jz      loc_1406F17C6
                mov     [rsp+148h+var_58], r11
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r9d, r15d
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                js      loc_1406F17C6
                jmp     loc_1406F1A9D
; ---------------------------------------------------------------------------

loc_1406F158E:                          ; CODE XREF: sub_1406F1074+477↑j
                mov     ecx, cs:dword_140D2E6B0
                movzx   r14d, cx
                mov     [rsp+148h+var_118], cx
                cmp     cx, cs:word_140D2E680
                jz      short loc_1406F1609
                cmp     cx, cs:word_140D2E684
                jz      short loc_1406F1609
                test    dil, dil
                jz      loc_1406F17C6
                movzx   eax, cx
                mov     [rsp+148h+var_58], rax
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r9d, r15d
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                js      loc_1406F17C6
                jmp     loc_1406F1A9D
; ---------------------------------------------------------------------------

loc_1406F15F9:                          ; CODE XREF: sub_1406F1074+46E↑j
                movzx   ecx, cs:word_140D2E680
                cmp     cx, cs:word_140D2E684
                jnz     short loc_1406F161A

loc_1406F1609:                          ; CODE XREF: sub_1406F1074+4B1↑j
                                        ; sub_1406F1074+4BF↑j ...
                movzx   r14d, word ptr [rsp+148h+var_E8]
                mov     [rsp+148h+var_118], r14w
                jmp     loc_1406F17C6
; ---------------------------------------------------------------------------

loc_1406F161A:                          ; CODE XREF: sub_1406F1074+593↑j
                test    dil, dil
                jz      short loc_1406F1658
                mov     [rsp+148h+var_58], rcx
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r9d, r15d
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                jns     loc_1406F1A9D

loc_1406F1658:                          ; CODE XREF: sub_1406F1074+5A9↑j
                movzx   eax, cs:word_140D2E680

loc_1406F165F:                          ; CODE XREF: sub_1406F1074+652↓j
                movzx   r14d, ax
                mov     [rsp+148h+var_118], ax
                jmp     loc_1406F17C6
; ---------------------------------------------------------------------------

loc_1406F166D:                          ; CODE XREF: sub_1406F1074+465↑j
                test    cl, cl
                jz      loc_1406F1A80
                test    dil, dil
                jz      short loc_1406F16C8
                movzx   eax, cs:word_140D2E684
                test    ax, ax
                jz      short loc_1406F16C8
                mov     [rsp+148h+var_58], rax
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r9d, r15d
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                jns     loc_1406F1A9D
                movzx   eax, cs:word_140D2E684
                jmp     short loc_1406F165F
; ---------------------------------------------------------------------------

loc_1406F16C8:                          ; CODE XREF: sub_1406F1074+604↑j
                                        ; sub_1406F1074+610↑j
                movzx   ecx, word ptr [rsp+148h+var_E8]
                movzx   eax, cs:word_140D2E684
                test    ax, ax
                cmovnz  cx, ax
                movzx   r14d, cx
                mov     [rsp+148h+var_118], cx
                jmp     loc_1406F17C6
; ---------------------------------------------------------------------------

loc_1406F16E9:                          ; CODE XREF: sub_1406F1074+45C↑j
                test    r14w, r14w
                jz      short loc_1406F1716
                lea     rdx, [rsp+148h+var_118]
                movzx   ecx, r14w
                call    sub_14033D16C
                xor     r10d, r10d
                test    eax, eax
                jns     short loc_1406F1710
                movzx   r14d, r10w
                mov     [rsp+148h+var_118], r10w
                jmp     short loc_1406F1716
; ---------------------------------------------------------------------------

loc_1406F1710:                          ; CODE XREF: sub_1406F1074+68E↑j
                movzx   r14d, [rsp+148h+var_118]

loc_1406F1716:                          ; CODE XREF: sub_1406F1074+679↑j
                                        ; sub_1406F1074+69A↑j
                test    dil, dil
                jz      short loc_1406F1762
                test    r14w, r14w
                jz      loc_1406F17C6
                movzx   eax, r14w
                mov     [rsp+148h+var_58], rax
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r9d, r15d
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                jns     loc_1406F1A9D

loc_1406F1762:                          ; CODE XREF: sub_1406F1074+6A5↑j
                test    r14w, r14w
                jz      short loc_1406F17C6
                dec     ebx
                mov     [rsp+148h+var_C4], ebx
                jmp     short loc_1406F17C6
; ---------------------------------------------------------------------------

loc_1406F1773:                          ; CODE XREF: sub_1406F1074+453↑j
                test    dil, dil
                jz      short loc_1406F17BD
                test    dx, dx
                jz      short loc_1406F17BD
                movzx   eax, dx
                mov     [rsp+148h+var_58], rax
                mov     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_128], rax
                mov     r9d, r15d
                mov     r8d, esi
                lea     rdx, [rsp+148h+var_68]
                mov     rcx, [rsp+148h+var_D8]
                call    sub_14033CC18
                mov     [rsp+148h+var_110], eax
                xor     r10d, r10d
                test    eax, eax
                jns     loc_1406F1A9D
                mov     edx, [rsp+148h+var_108]

loc_1406F17BD:                          ; CODE XREF: sub_1406F1074+702↑j
                                        ; sub_1406F1074+707↑j
                movzx   r14d, dx
                mov     [rsp+148h+var_118], dx

loc_1406F17C6:                          ; CODE XREF: sub_1406F1074+49C↑j
                                        ; sub_1406F1074+4D6↑j ...
                mov     eax, r15d
                not     eax
                test    al, 20h
                jz      short loc_1406F17ED
                movzx   eax, r14w
                cmp     rax, [rsp+148h+var_E8]
                jnz     short loc_1406F17ED
                mov     edx, [rsp+148h+var_108]
                mov     cl, [rsp+148h+var_113]
                mov     r11d, 409h
                jmp     loc_1406F14BA
; ---------------------------------------------------------------------------

loc_1406F17ED:                          ; CODE XREF: sub_1406F1074+759↑j
                                        ; sub_1406F1074+764↑j
                movzx   eax, r14w
                mov     [rsp+148h+var_E8], rax
                lea     r13, [rsp+148h+var_E8]
                mov     [rsp+148h+var_70], r13
                mov     r8, [rsp+148h+var_B8]
                mov     rbx, r8
                mov     [rsp+148h+var_C0], rbx
                mov     r12, [rsp+148h+var_E0]
                mov     r9d, [rsp+148h+var_FC]

loc_1406F1820:                          ; CODE XREF: sub_1406F1074+366↑j
                movzx   edi, word ptr [rbx+0Ch]
                mov     [rsp+148h+var_F8], di
                lea     rsi, [rbx+10h]
                mov     [rsp+148h+var_98], rsi
                movzx   ecx, di
                test    qword ptr [r13+0], 0FFFFFFFFFFFF0000h
                jnz     short loc_1406F185A
                lea     rsi, [rsi+rdi*8]
                mov     [rsp+148h+var_98], rsi
                movzx   edi, word ptr [rbx+0Eh]
                mov     [rsp+148h+var_F8], di
                movzx   ecx, di

loc_1406F185A:                          ; CODE XREF: sub_1406F1074+7CC↑j
                test    cx, cx
                jnz     short loc_1406F188E
                mov     [rsp+148h+var_C0], r10
                mov     al, r10b
                mov     [rsp+148h+var_10C], al
                mov     [rsp+148h+var_CB], al
                mov     esi, [rsp+148h+var_D0]
                mov     dil, [rsp+148h+var_114]
                mov     edx, [rsp+148h+var_108]
                mov     ecx, [rsp+148h+var_100]
                mov     r11d, 409h
                jmp     loc_1406F1447
; ---------------------------------------------------------------------------

loc_1406F188E:                          ; CODE XREF: sub_1406F1074+7E9↑j
                test    r8, r8
                jz      short loc_1406F18DB
                test    r15b, 20h
                jz      short loc_1406F18DB
                mov     rbx, r10
                mov     [rsp+148h+var_C0], rbx
                mov     eax, [rsi]
                mov     [rsp+148h+var_E8], rax
                mov     r12d, [rsi+4]
                add     r12, [rsp+148h+var_B0]
                mov     [rsp+148h+var_A8], r12
                mov     esi, [rsp+148h+var_D0]
                mov     dil, [rsp+148h+var_114]
                mov     edx, [rsp+148h+var_108]
                mov     ecx, [rsp+148h+var_100]
                mov     r11d, 409h
                jmp     loc_1406F1418
; ---------------------------------------------------------------------------

loc_1406F18DB:                          ; CODE XREF: sub_1406F1074+81D↑j
                                        ; sub_1406F1074+823↑j
                mov     rbx, r10
                mov     [rsp+148h+var_C0], rbx
                movzx   eax, cx
                dec     rax
                lea     rax, [rsi+rax*8]
                mov     [rsp+148h+var_90], rax

loc_1406F18F8:                          ; CODE XREF: sub_1406F1074+9B7↓j
                cmp     rsi, rax
                ja      loc_1406F198D
                movzx   r12d, cx
                shr     r12w, 1
                jz      loc_1406F1A30
                mov     [rsp+148h+var_A0], rsi
                movzx   eax, r12w
                shl     rax, 3
                and     dil, 1
                jz      short loc_1406F192B
                lea     r15, [rax+rsi]
                jmp     short loc_1406F1932
; ---------------------------------------------------------------------------

loc_1406F192B:                          ; CODE XREF: sub_1406F1074+8AF↑j
                lea     r15, [rsi-8]
                add     r15, rax

loc_1406F1932:                          ; CODE XREF: sub_1406F1074+8B5↑j
                mov     [rsp+148h+var_A0], r15
                mov     r8, [r13+0]
                mov     [rsp+148h+var_104], r10b
                lea     rax, [rsp+148h+var_104]
                mov     [rsp+148h+var_120], rax
                mov     [rsp+148h+var_128], r15
                mov     r9, [rsp+148h+var_B0]
                call    sub_1403F7D28
                xor     r10d, r10d
                test    eax, eax
                jnz     short loc_1406F19DA
                mov     eax, [r15+4]
                test    eax, eax
                jns     short loc_1406F19B5
                mov     rdi, [rsp+148h+var_B0]

loc_1406F1976:                          ; CODE XREF: sub_1406F1074+9FD↓j
                mov     rbx, rax
                btr     ebx, 1Fh
                add     rbx, rdi
                mov     [rsp+148h+var_C0], rbx

loc_1406F1988:                          ; CODE XREF: sub_1406F1074+9BF↓j
                                        ; sub_1406F1074+9F2↓j
                mov     r12, [rsp+148h+var_E0]

loc_1406F198D:                          ; CODE XREF: sub_1406F1074+887↑j
                                        ; sub_1406F1074+964↓j
                add     r13, 8
                mov     [rsp+148h+var_70], r13
                mov     r15d, [rsp+148h+var_F4]
                mov     esi, [rsp+148h+var_D0]
                mov     dil, [rsp+148h+var_114]
                mov     edx, [rsp+148h+var_108]
                mov     r8b, [rsp+148h+var_112]
                jmp     loc_1406F1329
; ---------------------------------------------------------------------------

loc_1406F19B5:                          ; CODE XREF: sub_1406F1074+8F8↑j
                mov     rbx, r10
                mov     [rsp+148h+var_C0], rbx
                mov     r12, [rsp+148h+var_B0]
                add     r12, rax

loc_1406F19CB:                          ; CODE XREF: sub_1406F1074+A07↓j
                mov     [rsp+148h+var_E0], r12
                mov     [rsp+148h+var_A8], r12
                jmp     short loc_1406F198D
; ---------------------------------------------------------------------------

loc_1406F19DA:                          ; CODE XREF: sub_1406F1074+8F0↑j
                jns     short loc_1406F1A04
                lea     rax, [r15-8]
                mov     [rsp+148h+var_90], rax
                test    dil, dil
                jz      short loc_1406F19F5
                mov     [rsp+148h+var_F8], r12w
                jmp     short loc_1406F1A1E
; ---------------------------------------------------------------------------

loc_1406F19F5:                          ; CODE XREF: sub_1406F1074+977↑j
                lea     edi, [r12-1]
                mov     [rsp+148h+var_F8], di
                movzx   ecx, di
                jmp     short loc_1406F1A26
; ---------------------------------------------------------------------------

loc_1406F1A04:                          ; CODE XREF: sub_1406F1074:loc_1406F19DA↑j
                lea     rsi, [r15+8]
                mov     [rsp+148h+var_98], rsi
                mov     [rsp+148h+var_F8], r12w
                mov     rax, [rsp+148h+var_90]

loc_1406F1A1E:                          ; CODE XREF: sub_1406F1074+97F↑j
                movzx   ecx, r12w
                movzx   edi, r12w

loc_1406F1A26:                          ; CODE XREF: sub_1406F1074+98E↑j
                mov     r12, [rsp+148h+var_E0]
                jmp     loc_1406F18F8
; ---------------------------------------------------------------------------

loc_1406F1A30:                          ; CODE XREF: sub_1406F1074+895↑j
                test    cx, cx
                jz      loc_1406F1988
                mov     r8, [r13+0]
                mov     [rsp+148h+var_103], r10b
                lea     rax, [rsp+148h+var_103]
                mov     [rsp+148h+var_120], rax
                mov     [rsp+148h+var_128], rsi
                mov     rdi, [rsp+148h+var_B0]
                mov     r9, rdi
                call    sub_1403F7D28
                xor     r10d, r10d
                test    eax, eax
                jnz     loc_1406F1988
                mov     eax, [rsi+4]
                test    eax, eax
                js      loc_1406F1976
                lea     r12, [rax+rdi]
                jmp     loc_1406F19CB
; ---------------------------------------------------------------------------

loc_1406F1A80:                          ; CODE XREF: sub_1406F1074+435↑j
                                        ; sub_1406F1074+485↑j ...
                mov     eax, 0C0000204h

loc_1406F1A85:                          ; CODE XREF: sub_1406F1074+3FE↑j
                mov     [rsp+148h+var_110], eax

loc_1406F1A89:                          ; CODE XREF: sub_1406F1074+411↑j
                                        ; sub_1406F1074+41A↑j
                jmp     short loc_1406F1A96
; ---------------------------------------------------------------------------

loc_1406F1A8B:                          ; CODE XREF: sub_1406F1074+CD↑j
                                        ; sub_1406F1074+DB↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_1406F1A9D
;   } // starts at 1406F1139
; ---------------------------------------------------------------------------

loc_1406F1A92:                          ; DATA XREF: .rdata:000000014007F1F0↑o
;   __except(1) // owned by 1406F1139
                mov     [rsp+148h+var_110], eax

loc_1406F1A96:                          ; CODE XREF: sub_1406F1074:loc_1406F1A89↑j
                jmp     short loc_1406F1A9D
; ---------------------------------------------------------------------------

loc_1406F1A98:                          ; CODE XREF: sub_1406F1074+79↑j
                                        ; sub_1406F1074+82↑j ...
                mov     eax, 0C00000F1h

loc_1406F1A9D:                          ; CODE XREF: sub_1406F1074+114↑j
                                        ; sub_1406F1074+322↑j ...
                mov     rcx, [rsp+148h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 110h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F1074
sub_1406F1074   endp

algn_1406F1AC1:                         ; DATA XREF: .pdata:0000000140104C10↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406F1AC8   proc near               ; CODE XREF: sub_14067A140+776↑p
                                        ; DATA XREF: .rdata:000000014007F820↑o ...

var_168         = dword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_124         = dword ptr -124h
var_120         = xmmword ptr -120h
var_110         = xmmword ptr -110h
var_100         = xmmword ptr -100h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = qword ptr -4Ch
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140825A44 SIZE 00000029 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 160h
                mov     r12d, r8d
                mov     r14, rdx
                xor     edi, edi
                mov     ebx, edi
                mov     [rsp+188h+var_138], rbx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-88h], xmm0
                movups  xmmword ptr [rax-78h], xmm0
                xorps   xmm1, xmm1
                movups  xmmword ptr [rax-0F0h], xmm1
                movups  xmmword ptr [rax-0E0h], xmm1
                mov     r13b, dil
                movups  xmmword ptr [rax-0B8h], xmm0
                movups  xmmword ptr [rax-0A8h], xmm0
                movups  xmmword ptr [rax-50h], xmm1
                movups  xmmword ptr [rax-40h], xmm1
                movups  [rsp+188h+var_110], xmm0
                movups  xmmword ptr [rax-100h], xmm0
                cmp     cs:qword_140C542F8, rdi
                jz      loc_140825A44
                mov     rax, gs:188h
                mov     r9b, [rax+232h]
                mov     [rsp+188h+var_158], rdi
                lea     rax, [rsp+188h+var_138]
                mov     [rsp+188h+var_160], rax
                mov     [rsp+188h+var_168], 74456F50h
                mov     r8, cs:qword_140C542F8
                mov     r8, [r8+20h]
                lea     edx, [rdi+1]
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                mov     rbx, [rsp+188h+var_138]
                test    eax, eax
                js      loc_1406F26A2
                mov     [rsp+188h+var_4C], rdi
                mov     [rsp+188h+var_44], edi
                mov     [rsp+188h+var_38], rdi
                mov     [rsp+188h+var_50], 2
                mov     [rsp+188h+var_40], rbx
                lea     rcx, [rsp+188h+var_50]
                call    sub_1408F4258
                mov     esi, eax
                test    eax, eax
                js      loc_1406F26A2
                lea     rcx, [rbx+10h]
                call    sub_1402B4578
                mov     r13b, 1
                mov     byte ptr [rsp+188h+arg_18], r13b
                lea     r11, [rbx+30h]
                mov     r9d, [r11]
                mov     dword ptr [rsp+188h+var_148], r9d
                mov     esi, edi
                lea     r15d, [rdi+2Ch]
                mov     r10d, edi
                mov     rcx, 8000000000000002h

loc_1406F1C00:                          ; CODE XREF: sub_1406F1AC8+261↓j
                                        ; sub_1406F1AC8+278↓j
                test    r10, r10
                jz      loc_1406F264E
                mov     r9d, [r11+4]
                mov     ecx, r9d
                and     ecx, 1Fh
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                and     rdx, [r10+8]
                mov     [rsp+188h+var_140], rdx
                shr     r9d, 5
                movzx   eax, dl
                add     rax, 0B15DCBh
                imul    rcx, rax, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+1]
                add     rcx, rax
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+2]
                add     rdx, rax
                imul    rcx, rdx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+3]
                add     rcx, rax
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+4]
                add     rdx, rax
                imul    rcx, rdx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+5]
                add     rcx, rax
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+6]
                add     rdx, rax
                imul    r8, rdx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+var_140+7]
                add     rax, r8
                lea     ecx, [r9-1]
                mov     eax, eax
                and     rcx, rax
                mov     rax, [r11+8]
                lea     rdx, [rax+rcx*8]
                mov     r9d, dword ptr [rsp+188h+var_148]
                mov     rcx, 8000000000000002h

loc_1406F1CA4:                          ; CODE XREF: sub_1406F1AC8+B8D↓j
                test    r10, r10
                jz      short loc_1406F1CC5
                mov     rax, [r10]
                and     rax, rcx
                cmp     rax, rcx
                jz      loc_140825A4E

loc_1406F1CB8:                          ; CODE XREF: sub_1406F1AC8+133F8E↓j
                test    r10, r10
                jz      short loc_1406F1CC5
                mov     r10, [r10]
                test    r13b, r10b
                jz      short loc_1406F1CEA

loc_1406F1CC5:                          ; CODE XREF: sub_1406F1AC8+1DF↑j
                                        ; sub_1406F1AC8+1F3↑j
                add     rdx, 8
                mov     ecx, [r11+4]
                shr     rcx, 5
                mov     rax, [r11+8]
                lea     r8, [rax+rcx*8]

loc_1406F1CD9:                          ; CODE XREF: sub_1406F1AC8+281↓j
                cmp     rdx, r8
                jnb     loc_1406F265A
                mov     r10, [rdx]
                test    r13b, r10b
                jnz     short loc_1406F1D45

loc_1406F1CEA:                          ; CODE XREF: sub_1406F1AC8+1FB↑j
                                        ; sub_1406F1AC8+B95↓j
                test    r10, r10
                jz      short loc_1406F1D4B
                mov     rdx, [r10+10h]
                cmp     esi, 10000000h
                jnb     loc_140825A63
                movzx   eax, word ptr [rdx+4Eh]
                add     r15d, eax
                movzx   ecx, word ptr [rdx+4Ch]
                movzx   eax, word ptr [rdx+4Ah]
                add     ecx, eax
                movzx   eax, word ptr [rdx+48h]
                add     esi, eax
                add     esi, ecx
                mov     rax, [r10+18h]
                test    rax, rax
                mov     rcx, 8000000000000002h
                jz      loc_1406F1C00
                mov     rax, [rax+18h]
                shr     rax, 10h
                shr     eax, 1
                and     eax, 1FFFFFFFh
                add     esi, eax
                jmp     loc_1406F1C00
; ---------------------------------------------------------------------------

loc_1406F1D45:                          ; CODE XREF: sub_1406F1AC8+220↑j
                add     rdx, 8
                jmp     short loc_1406F1CD9
; ---------------------------------------------------------------------------

loc_1406F1D4B:                          ; CODE XREF: sub_1406F1AC8+225↑j
                mov     dword ptr [rsp+188h+var_140], 48h ; 'H'
                xorps   xmm0, xmm0
                movups  [rsp+188h+var_F0], xmm0
                movups  [rsp+188h+var_E0], xmm0
                mov     eax, 60h ; '`'
                mov     dword ptr [rsp+188h+var_F0+0Ch], eax
                mov     dword ptr [rsp+188h+var_E0], 8
                lea     r8, [rsp+188h+var_140]
                mov     edx, r9d
                lea     rcx, [rsp+188h+var_F0]
                call    sub_1406F277C
                xorps   xmm0, xmm0
                movups  [rsp+188h+var_88], xmm0
                movups  [rsp+188h+var_78], xmm0
                mov     dword ptr [rsp+188h+var_88+0Ch], 1B0h
                mov     dword ptr [rsp+188h+var_78], 8
                lea     r8, [rsp+188h+var_140]
                mov     edx, dword ptr [rsp+188h+var_148]
                lea     rcx, [rsp+188h+var_88]
                call    sub_1406F277C
                xorps   xmm0, xmm0
                movups  [rsp+188h+var_B8], xmm0
                movups  [rsp+188h+var_A8], xmm0
                mov     dword ptr [rsp+188h+var_B8+0Ch], 1
                mov     dword ptr [rsp+188h+var_A8], 4
                lea     r8, [rsp+188h+var_140]
                mov     edx, r15d
                lea     rcx, [rsp+188h+var_B8]
                call    sub_1406F277C
                xorps   xmm0, xmm0
                movups  [rsp+188h+var_110], xmm0
                movups  [rsp+188h+var_100], xmm0
                mov     eax, 2
                mov     dword ptr [rsp+188h+var_110+0Ch], eax
                mov     dword ptr [rsp+188h+var_100], eax
                lea     r8, [rsp+188h+var_140]
                mov     edx, esi
                lea     rcx, [rsp+188h+var_110]
                call    sub_1406F277C
                mov     esi, dword ptr [rsp+188h+var_140]
                cmp     esi, r12d
                ja      loc_1406F2670
                cmp     esi, 7FFFFFFFh
                jnb     loc_1406F2670

loc_1406F1E5C:                          ; DATA XREF: .rdata:000000014007F7FC↑o
;   __try { // __except at loc_1406F252A
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, r14
                call    memset
                mov     rdx, r14
                lea     rcx, [rsp+188h+var_F0]
                call    sub_1406F27CC
                lea     rcx, [rsp+188h+var_88]
                call    sub_1406F27CC
                lea     rcx, [rsp+188h+var_B8]
                call    sub_1406F27CC
                lea     rcx, [rsp+188h+var_110]
                call    sub_1406F27CC
                mov     [rsp+188h+var_60], r14
                mov     dword ptr [r14], 200012h
                mov     r15d, 20h ; ' '
                mov     dword ptr [r14+4], 48h ; 'H'
                mov     [r14+8], esi
                mov     eax, [rbx+258h]
                mov     [r14+0Ch], eax
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     rcx, 0FFFFF78000000004h
                mov     ecx, [rcx]
                imul    rcx, rax
                shr     rcx, 18h
                mov     [r14+18h], ecx
                mov     eax, dword ptr [rsp+188h+var_F0]
                mov     [r14+24h], eax
                mov     eax, dword ptr [rsp+188h+var_148]
                mov     [r14+28h], eax
                mov     dword ptr [r14+38h], 100060h
                lea     r12d, [r15-10h]
                mov     eax, dword ptr [rsp+188h+var_A8+4]
                mov     [r14+34h], eax
                lea     eax, [r15-14h]
                mov     [r14+3Ch], ax
                mov     rsi, [rsp+188h+var_138]
                lea     rdx, [rsi+20h]
                mov     r8d, eax
                lea     rcx, [rsp+188h+var_B8]
                call    sub_1406F2730
                mov     eax, dword ptr [rsp+188h+var_A8+4]
                mov     [r14+2Ch], eax
                lea     rbx, [rsi+25Ch]
                mov     r8d, r12d
                mov     rdx, rbx
                lea     rcx, [rsp+188h+var_B8]
                call    sub_1406F2730
                movups  xmm0, xmmword ptr [rsi+26Ch]
                movups  [rsp+188h+var_120], xmm0
                movd    eax, xmm0
                add     eax, [rbx]
                mov     dword ptr [rsp+188h+var_120], eax
                mov     eax, dword ptr [rsp+188h+var_120+4]
                add     eax, [rsi+260h]
                mov     dword ptr [rsp+188h+var_120+4], eax
                mov     eax, dword ptr [rsp+188h+var_120+8]
                add     eax, [rsi+264h]
                mov     dword ptr [rsp+188h+var_120+8], eax
                mov     eax, dword ptr [rsp+188h+var_120+0Ch]
                add     eax, [rsi+268h]
                mov     dword ptr [rsp+188h+var_120+0Ch], eax
                mov     eax, dword ptr [rsp+188h+var_A8+4]
                mov     [r14+30h], eax
                mov     r8d, r12d
                lea     rdx, [rsp+188h+var_120]
                lea     rcx, [rsp+188h+var_B8]
                call    sub_1406F2730
                mov     rsi, rdi
                mov     r14, qword ptr [rsp+188h+var_E0+8]
                mov     r12d, dword ptr [rsp+188h+var_F0+0Ch]

loc_1406F1FD1:                          ; CODE XREF: sub_1406F1AC8:loc_1406F232F↓j
                mov     r11, [rsp+188h+var_138]
                add     r11, 30h ; '0'
                mov     r10, r11
                mov     [rsp+188h+var_D0], r11
                test    rsi, rsi
                jz      loc_1406F23F3
                mov     [rsp+188h+var_C8], rsi
                mov     ebx, [r11+4]
                mov     ecx, ebx
                and     ecx, 1Fh
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                and     rdx, [rsi+8]
                shr     ebx, 5
                mov     [rsp+188h+var_68], rdx
                mov     [rsp+188h+var_130], rdi
                mov     [rsp+188h+var_98], rdi
                mov     [rsp+188h+var_148], rdi
                lea     r8, [rsp+188h+var_68]
                mov     [rsp+188h+var_130], r8
                mov     r9d, 8
                mov     [rsp+188h+var_98], r9
                mov     eax, 4CB2Fh
                mov     edx, eax
                mov     [rsp+188h+var_148], rax
                mov     ecx, eax

loc_1406F2050:                          ; CODE XREF: sub_1406F1AC8+631↓j
                cmp     r9, 8
                jl      loc_1406F20FE
                imul    rdx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rdx, rax
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+1]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+2]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+3]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+4]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+5]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+6]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     [rsp+188h+var_148], rdx
                movzx   ecx, byte ptr [r8+7]
                imul    rdx, 25h ; '%'
                add     rdx, rcx
                mov     rcx, rdx
                mov     [rsp+188h+var_148], rdx
                add     r8, 8
                mov     [rsp+188h+var_130], r8
                sub     r9, 8
                mov     [rsp+188h+var_98], r9
                jmp     loc_1406F2050
; ---------------------------------------------------------------------------

loc_1406F20FE:                          ; CODE XREF: sub_1406F1AC8+58C↑j
                cmp     r9, 1
                jge     loc_1406F2417

loc_1406F2108:                          ; CODE XREF: sub_1406F1AC8+97F↓j
                                        ; sub_1406F1AC8+A2D↓j
                lea     ecx, [rbx-1]
                mov     eax, edx
                and     rcx, rax
                mov     rax, [r11+8]
                lea     rdx, [rax+rcx*8]
                mov     [rsp+188h+var_C0], rdx

loc_1406F2120:                          ; CODE XREF: sub_1406F1AC8+942↓j
                mov     [rsp+188h+var_90], rdi
                mov     r11, 8000000000000002h
                test    rsi, rsi
                jz      short loc_1406F2154
                mov     rax, [rsi]
                and     rax, r11
                cmp     rax, r11
                jz      loc_1406F24FA

loc_1406F2146:                          ; CODE XREF: sub_1406F1AC8+A5D↓j
                test    rsi, rsi
                jz      short loc_1406F2154
                mov     rsi, [rsi]
                test    sil, 1
                jz      short loc_1406F218E

loc_1406F2154:                          ; CODE XREF: sub_1406F1AC8+66D↑j
                                        ; sub_1406F1AC8+681↑j
                add     rdx, 8
                mov     ecx, [r10+4]
                shr     rcx, 5
                mov     rax, [r10+8]
                lea     r8, [rax+rcx*8]

loc_1406F2168:                          ; CODE XREF: sub_1406F1AC8+870↓j
                mov     [rsp+188h+var_90], rdx
                cmp     rdx, r8
                jnb     loc_1406F240F
                mov     rsi, [rdx]
                test    sil, 1
                jnz     loc_1406F2334
                mov     [rsp+188h+var_C0], rdx

loc_1406F218E:                          ; CODE XREF: sub_1406F1AC8+68A↑j
                mov     [rsp+188h+var_C8], rsi

loc_1406F2196:                          ; CODE XREF: sub_1406F1AC8+94A↓j
                test    rsi, rsi
                jz      loc_1406F234F
                mov     rbx, [rsi+10h]
                mov     rax, [rsi+20h]
                mov     [r14], rax
                mov     eax, [rsi+28h]
                mov     [r14+8], eax
                mov     eax, [rsi+2Ch]
                movzx   ecx, ax
                mov     [r14+0Ch], ecx
                mov     eax, [rsi+1F8h]
                mov     [r14+40h], eax
                mov     eax, [rsi+1FCh]
                mov     [r14+44h], eax
                movups  xmm0, xmmword ptr [rsi+1E0h]
                movups  xmmword ptr [r14+48h], xmm0
                movsd   xmm1, qword ptr [rsi+1F0h]
                movsd   qword ptr [r14+58h], xmm1
                mov     rax, [rbx+20h]
                mov     ecx, [rax]
                mov     [r14+14h], ecx
                mov     rax, [rbx+20h]
                mov     ecx, [rax+4]
                mov     [r14+18h], ecx
                mov     eax, dword ptr [rsp+188h+var_A8+4]
                mov     [r14+28h], eax
                movzx   eax, word ptr [rbx+4Eh]
                mov     [r14+34h], ax
                movzx   r8d, word ptr [rbx+4Eh]
                mov     rdx, [rbx+40h]
                lea     rcx, [rsp+188h+var_B8]
                call    sub_1406F2730
                movzx   eax, word ptr [rbx+48h]
                mov     [r14+2Ch], ax
                mov     eax, dword ptr [rsp+188h+var_100+4]
                mov     [r14+10h], eax
                movzx   r8d, word ptr [rbx+48h]
                mov     rdx, [rbx+28h]
                lea     rcx, [rsp+188h+var_110]
                call    sub_1408F405C
                movzx   eax, word ptr [rbx+4Ah]
                mov     [r14+2Eh], ax
                mov     eax, dword ptr [rsp+188h+var_100+4]
                mov     [r14+1Ch], eax
                movzx   r8d, word ptr [rbx+4Ah]
                mov     rdx, [rbx+30h]
                lea     rcx, [rsp+188h+var_110]
                call    sub_1408F405C
                movzx   eax, word ptr [rbx+4Ch]
                mov     [r14+30h], ax
                mov     eax, dword ptr [rsp+188h+var_100+4]
                mov     [r14+20h], eax
                movzx   r8d, word ptr [rbx+4Ch]
                mov     rdx, [rbx+38h]
                lea     rcx, [rsp+188h+var_110]
                call    sub_1408F405C
                mov     rax, [rsi+18h]
                test    rax, rax
                jz      loc_1406F233D
                mov     rax, [rax+18h]
                shr     rax, 10h
                shr     ax, 1
                mov     [r14+32h], ax
                mov     eax, dword ptr [rsp+188h+var_100+4]
                mov     [r14+24h], eax
                movzx   r8d, word ptr [r14+32h]
                mov     rdx, [rsi+18h]
                add     rdx, r15
                lea     rcx, [rsp+188h+var_110]
                call    sub_1408F405C

loc_1406F22DB:                          ; CODE XREF: sub_1406F1AC8+885↓j
                mov     eax, dword ptr [rsp+188h+var_78+4]
                mov     [r14+38h], eax
                mov     dword ptr [r14+3Ch], 1B0h
                lea     rdx, [rsi+30h]
                mov     r8d, dword ptr [rsp+188h+var_88+0Ch]
                lea     rcx, [rsp+188h+var_88]
                call    sub_1406F2730
                mov     ecx, dword ptr [rsp+188h+var_E0+4]
                add     ecx, r12d
                cmp     ecx, dword ptr [rsp+188h+var_F0+8]
                ja      short loc_1406F232F
                mov     dword ptr [rsp+188h+var_E0+4], ecx
                mov     eax, r12d
                add     r14, rax
                mov     qword ptr [rsp+188h+var_E0+8], r14

loc_1406F232F:                          ; CODE XREF: sub_1406F1AC8+850↑j
                jmp     loc_1406F1FD1
; ---------------------------------------------------------------------------

loc_1406F2334:                          ; CODE XREF: sub_1406F1AC8+6B8↑j
                add     rdx, 8
                jmp     loc_1406F2168
; ---------------------------------------------------------------------------

loc_1406F233D:                          ; CODE XREF: sub_1406F1AC8+7DC↑j
                mov     [r14+32h], di
                mov     eax, dword ptr [rsp+188h+var_100+4]
                mov     [r14+24h], eax
                jmp     short loc_1406F22DB
; ---------------------------------------------------------------------------

loc_1406F234F:                          ; CODE XREF: sub_1406F1AC8+6D1↑j
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     rcx, 0FFFFF78000000004h
                mov     ecx, [rcx]
                imul    rcx, rax
                shr     rcx, 18h
                mov     [rsp+188h+var_128], ecx
                mov     cl, 1
                call    sub_140212F34
                mov     rcx, rax
                mov     rax, 346DC5D63886594Bh
                mul     rcx
                shr     rdx, 0Bh
                mov     [rsp+188h+var_124], edx
                mov     rax, 0FFFFF78000000014h
                mov     rax, [rax]
                mov     [rsp+188h+var_58], rax
                mov     rsi, [rsp+188h+var_138]
                mov     ecx, [rsp+188h+var_128]
                mov     eax, ecx
                sub     eax, [rsi+250h]
                mov     rdx, [rsp+188h+var_60]
                mov     [rdx+10h], eax
                mov     eax, [rsp+188h+var_124]
                sub     eax, [rsi+254h]
                mov     [rdx+14h], eax
                mov     [rdx+1Ch], ecx
                call    sub_140219D10
                mov     [rdx+20h], eax
                mov     rax, [rsp+188h+var_58]
                mov     [rdx+40h], eax
                shr     rax, 20h
                mov     [rdx+44h], eax
                jmp     loc_1406F253E
; ---------------------------------------------------------------------------

loc_1406F23F3:                          ; CODE XREF: sub_1406F1AC8+520↑j
                mov     rdx, [r11+8]
                mov     [rsp+188h+var_C0], rdx
                mov     rsi, rdx
                mov     [rsp+188h+var_C8], rdx
                jmp     loc_1406F2120
; ---------------------------------------------------------------------------

loc_1406F240F:                          ; CODE XREF: sub_1406F1AC8+6AB↑j
                mov     rsi, rdi
                jmp     loc_1406F2196
; ---------------------------------------------------------------------------

loc_1406F2417:                          ; CODE XREF: sub_1406F1AC8+63A↑j
                sub     r9d, 1
                jz      loc_1406F24DD
                sub     r9d, 1
                jz      loc_1406F24C5
                sub     r9d, 1
                jz      short loc_1406F24AD
                sub     r9d, 1
                jz      short loc_1406F2495
                sub     r9d, 1
                jz      short loc_1406F247D
                sub     r9d, 1
                jz      short loc_1406F2465
                cmp     r9d, 1
                jnz     loc_1406F2108
                imul    rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rcx, rax
                mov     [rsp+188h+var_148], rcx
                inc     r8
                mov     [rsp+188h+var_130], r8

loc_1406F2465:                          ; CODE XREF: sub_1406F1AC8+979↑j
                imul    rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rcx, rax
                mov     [rsp+188h+var_148], rcx
                inc     r8
                mov     [rsp+188h+var_130], r8

loc_1406F247D:                          ; CODE XREF: sub_1406F1AC8+973↑j
                imul    rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rcx, rax
                mov     [rsp+188h+var_148], rcx
                inc     r8
                mov     [rsp+188h+var_130], r8

loc_1406F2495:                          ; CODE XREF: sub_1406F1AC8+96D↑j
                imul    rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rcx, rax
                mov     [rsp+188h+var_148], rcx
                inc     r8
                mov     [rsp+188h+var_130], r8

loc_1406F24AD:                          ; CODE XREF: sub_1406F1AC8+967↑j
                imul    rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rcx, rax
                mov     [rsp+188h+var_148], rcx
                inc     r8
                mov     [rsp+188h+var_130], r8

loc_1406F24C5:                          ; CODE XREF: sub_1406F1AC8+95D↑j
                imul    rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rcx, rax
                mov     [rsp+188h+var_148], rcx
                inc     r8
                mov     [rsp+188h+var_130], r8

loc_1406F24DD:                          ; CODE XREF: sub_1406F1AC8+953↑j
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [r8]
                add     rdx, rax
                mov     [rsp+188h+var_148], rdx
                inc     r8
                mov     [rsp+188h+var_130], r8
                jmp     loc_1406F2108
; ---------------------------------------------------------------------------

loc_1406F24FA:                          ; CODE XREF: sub_1406F1AC8+678↑j
                mov     rax, [rdi]
                mov     r14, qword ptr [rsp+188h+var_E0+8]
                mov     r12d, dword ptr [rsp+188h+var_F0+0Ch]
                mov     rdx, [rsp+188h+var_C0]
                mov     rsi, [rsp+188h+var_C8]
                mov     r10, [rsp+188h+var_D0]
                jmp     loc_1406F2146
;   } // starts at 1406F1E5C
; ---------------------------------------------------------------------------

loc_1406F252A:                          ; DATA XREF: .rdata:000000014007F7FC↑o
;   __except(1) // owned by 1406F1E5C
                mov     esi, eax
                mov     rbx, [rsp+188h+var_138]
                mov     r13b, byte ptr [rsp+188h+arg_18]
                jmp     loc_1406F26A2
; ---------------------------------------------------------------------------

loc_1406F253E:                          ; CODE XREF: sub_1406F1AC8+926↑j
                mov     r10, rdi

loc_1406F2541:                          ; CODE XREF: sub_1406F1AC8+B7B↓j
                test    r10, r10
                jz      loc_1406F2662
                mov     r9d, [rsi+44h]
                mov     ecx, r9d
                and     ecx, 1Fh
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                and     rdx, [r10+8]
                mov     [rsp+188h+arg_18], rdx
                shr     r9d, 5
                movzx   eax, dl
                add     rax, 0B15DCBh
                imul    rcx, rax, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+1]
                add     rcx, rax
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+2]
                add     rdx, rax
                imul    rcx, rdx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+3]
                add     rcx, rax
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+4]
                add     rdx, rax
                imul    rcx, rdx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+5]
                add     rcx, rax
                imul    rdx, rcx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+6]
                add     rdx, rax
                imul    r8, rdx, 25h ; '%'
                movzx   eax, byte ptr [rsp+188h+arg_18+7]
                add     rax, r8
                lea     ecx, [r9-1]
                mov     eax, eax
                and     rcx, rax
                mov     rax, [rsi+48h]
                lea     rdx, [rax+rcx*8]

loc_1406F25EE:                          ; CODE XREF: sub_1406F1AC8+BA1↓j
                test    r10, r10
                jz      short loc_1406F2610
                mov     rax, [r10]
                and     rax, r11
                cmp     rax, r11
                jz      loc_140825A5B

loc_1406F2602:                          ; CODE XREF: sub_1406F1AC8+133F96↓j
                test    r10, r10
                jz      short loc_1406F2610
                mov     r10, [r10]
                test    r10b, 1
                jz      short loc_1406F2631

loc_1406F2610:                          ; CODE XREF: sub_1406F1AC8+B29↑j
                                        ; sub_1406F1AC8+B3D↑j
                add     rdx, 8
                mov     ecx, [rsi+44h]
                shr     rcx, 5
                mov     rax, [rsi+48h]
                lea     r8, [rax+rcx*8]

loc_1406F2623:                          ; CODE XREF: sub_1406F1AC8+B84↓j
                cmp     rdx, r8
                jnb     short loc_1406F266B
                mov     r10, [rdx]
                test    r10b, 1
                jnz     short loc_1406F2648

loc_1406F2631:                          ; CODE XREF: sub_1406F1AC8+B46↑j
                                        ; sub_1406F1AC8+BA6↓j
                test    r10, r10
                jz      loc_1406F26E2
                btr     dword ptr [r10+1E4h], 1Fh
                jmp     loc_1406F2541
; ---------------------------------------------------------------------------

loc_1406F2648:                          ; CODE XREF: sub_1406F1AC8+B67↑j
                add     rdx, 8
                jmp     short loc_1406F2623
; ---------------------------------------------------------------------------

loc_1406F264E:                          ; CODE XREF: sub_1406F1AC8+13B↑j
                mov     r10, [r11+8]
                mov     rdx, r10
                jmp     loc_1406F1CA4
; ---------------------------------------------------------------------------

loc_1406F265A:                          ; CODE XREF: sub_1406F1AC8+214↑j
                mov     r10, rdi
                jmp     loc_1406F1CEA
; ---------------------------------------------------------------------------

loc_1406F2662:                          ; CODE XREF: sub_1406F1AC8+A7C↑j
                mov     r10, [rsi+48h]
                mov     rdx, r10
                jmp     short loc_1406F25EE
; ---------------------------------------------------------------------------

loc_1406F266B:                          ; CODE XREF: sub_1406F1AC8+B5E↑j
                mov     r10, rdi
                jmp     short loc_1406F2631
; ---------------------------------------------------------------------------

loc_1406F2670:                          ; CODE XREF: sub_1406F1AC8+382↑j
                                        ; sub_1406F1AC8+38E↑j
                mov     eax, 0Ch
                cmp     r12d, eax
                jb      short loc_1406F269D

loc_1406F267A:                          ; DATA XREF: .rdata:000000014007F80C↑o
;   __try { // __except at loc_1406F268C
                xor     eax, eax
                mov     [r14], rax
                mov     dword ptr [r14], 200012h
                mov     [r14+8], esi
                jmp     short loc_1406F269D
;   } // starts at 1406F267A
; ---------------------------------------------------------------------------

loc_1406F268C:                          ; DATA XREF: .rdata:000000014007F80C↑o
;   __except(1) // owned by 1406F267A
                mov     esi, eax
                mov     rbx, [rsp+188h+var_138]
                mov     r13b, byte ptr [rsp+188h+arg_18]
                jmp     short loc_1406F26A2
; ---------------------------------------------------------------------------

loc_1406F269D:                          ; CODE XREF: sub_1406F1AC8+BB0↑j
                                        ; sub_1406F1AC8+BC2↑j
                mov     esi, 0C0000023h

loc_1406F26A2:                          ; CODE XREF: sub_1406F1AC8+BE↑j
                                        ; sub_1406F1AC8+FF↑j ...
                test    r13b, r13b
                jz      short loc_1406F26B0
                lea     rcx, [rbx+10h]
                call    sub_140216274

loc_1406F26B0:                          ; CODE XREF: sub_1406F1AC8+BDD↑j
                test    rbx, rbx
                jz      short loc_1406F26C2
                mov     edx, 74456F50h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag

loc_1406F26C2:                          ; CODE XREF: sub_1406F1AC8+BEB↑j
                mov     eax, esi
                lea     r11, [rsp+188h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F26E2:                          ; CODE XREF: sub_1406F1AC8+B6C↑j
                mov     rbx, [rsp+188h+var_138]
                mov     rcx, rbx
                call    sub_1406F27EC
                inc     dword ptr [rbx+258h]
                mov     eax, [rsp+188h+var_128]
                mov     [rsi+250h], eax
                mov     eax, [rsp+188h+var_124]
                mov     [rsi+254h], eax
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx+25Ch], xmm0
                movups  xmm1, [rsp+188h+var_120]
                movdqu  xmmword ptr [rbx+26Ch], xmm1
                mov     esi, edi
                jmp     loc_1406F26A2
; } // starts at 1406F1AC8
sub_1406F1AC8   endp

; ---------------------------------------------------------------------------
algn_1406F2727:                         ; DATA XREF: .rdata:000000014007F820↑o
                                        ; .pdata:0000000140104C1C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406F2730   proc near               ; CODE XREF: sub_1406F1AC8+46C↑p
                                        ; sub_1406F1AC8+491↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r9d, [rcx+14h]
                mov     rdi, rcx
                add     r9d, r8d
                mov     esi, r8d
                cmp     r9d, [rcx+8]
                ja      short loc_1406F2765
                mov     rcx, [rcx+18h]
                mov     r8d, esi
                call    memmove
                add     [rdi+18h], rsi
                add     [rdi+14h], esi

loc_1406F2765:                          ; CODE XREF: sub_1406F2730+20↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F2730   endp

byte_1406F2776  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140104C28↑o

; =============== S U B R O U T I N E =======================================


sub_1406F277C   proc near               ; CODE XREF: sub_1406F1AC8+2C5↑p
                                        ; sub_1406F1AC8+304↑p ...
                mov     r10d, [r8]
                mov     r11d, 7FFFFFFFh
                cmp     r10d, r11d
                jnb     short loc_1406F27BE
                mov     r9d, [rcx+0Ch]
                mov     eax, edx
                imul    r9, rax
                cmp     r9, r11
                jnb     short loc_1406F27BE
                mov     eax, [rcx+10h]
                lea     edx, [r10-1]
                add     edx, eax
                neg     eax
                and     edx, eax
                mov     eax, edx
                add     rax, r9
                cmp     rax, r11
                jnb     short loc_1406F27BE
                mov     [rcx], edx
                mov     [rcx+4], r9d
                mov     [rcx+8], eax

loc_1406F27B9:                          ; CODE XREF: sub_1406F277C+45↓j
                mov     [r8], eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F27BE:                          ; CODE XREF: sub_1406F277C+C↑j
                                        ; sub_1406F277C+1B↑j ...
                mov     eax, r11d
                jmp     short loc_1406F27B9
sub_1406F277C   endp

; ---------------------------------------------------------------------------
byte_1406F27C3  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140104C34↑o

; =============== S U B R O U T I N E =======================================


sub_1406F27CC   proc near               ; CODE XREF: sub_1406F1AC8+3AC↑p
                                        ; sub_1406F1AC8+3B9↑p ...
                mov     eax, [rcx+0Ch]
                cmp     [rcx+4], eax
                jb      short locret_1406F27E3
                mov     r8d, [rcx]
                mov     [rcx+14h], r8d
                lea     rax, [rdx+r8]
                mov     [rcx+18h], rax

locret_1406F27E3:                       ; CODE XREF: sub_1406F27CC+6↑j
                retn
sub_1406F27CC   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1406F27E5  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104C40↑o

; =============== S U B R O U T I N E =======================================


sub_1406F27EC   proc near               ; CODE XREF: sub_1406F1AC8+C22↑p
                                        ; sub_1408F4074+5F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140825A6E SIZE 00000034 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, [rcx+38h]
                mov     rdi, rcx
                mov     rbx, rbp
                xor     r14d, r14d
                mov     r15, 8000000000000002h

loc_1406F281B:                          ; CODE XREF: sub_1406F27EC+CF↓j
                                        ; sub_1406F27EC+1332B1↓j
                test    rbx, rbx
                jz      short loc_1406F283B
                mov     rcx, [rbx]
                mov     rax, rcx
                and     rax, r15
                cmp     rax, r15
                jz      loc_140825A6E

loc_1406F2832:                          ; CODE XREF: sub_1406F27EC+133288↓j
                test    cl, 1
                jz      loc_1406F28C0

loc_1406F283B:                          ; CODE XREF: sub_1406F27EC+32↑j
                mov     ecx, [rdi+34h]
                lea     rdx, [rbp+8]
                mov     rax, [rdi+38h]
                shr     rcx, 5
                lea     r8, [rax+rcx*8]

loc_1406F284E:                          ; CODE XREF: sub_1406F27EC+DD↓j
                cmp     rdx, r8
                jnb     short loc_1406F28CB
                mov     rax, [rdx]
                test    al, 1
                jnz     short loc_1406F28C5
                mov     rbx, rax
                mov     rbp, rdx
                mov     rcx, rax

loc_1406F2863:                          ; CODE XREF: sub_1406F27EC+D7↓j
                                        ; sub_1406F27EC+E2↓j
                test    rcx, rcx
                jz      short loc_1406F28D0
                mov     rax, [rbx]
                mov     rsi, rbx
                and     rax, r15
                cmp     rax, r15
                jz      loc_140825A79

loc_1406F287A:                          ; CODE XREF: sub_1406F27EC+133290↓j
                mov     rcx, rbp

loc_1406F287D:                          ; CODE XREF: sub_1406F27EC+101↓j
                mov     rax, [rcx]
                test    al, 1
                jnz     short loc_1406F28EF
                cmp     rax, rbx
                jnz     short loc_1406F28EA
                mov     rax, [rbx]
                mov     [rcx], rax
                dec     dword ptr [rdi+30h]
                or      [rbx], r15
                mov     rbx, rcx

loc_1406F2898:                          ; CODE XREF: sub_1406F27EC+109↓j
                lea     rax, [rdi+50h]
                cmp     rsi, rax
                jz      loc_140825A81
                lea     rcx, [rsi+10h]
                call    sub_1406070E8
                mov     edx, 54456F50h
                mov     rcx, rsi
                call    ExFreePoolWithTag
                jmp     loc_1406F281B
; ---------------------------------------------------------------------------

loc_1406F28C0:                          ; CODE XREF: sub_1406F27EC+49↑j
                mov     rbx, rcx
                jmp     short loc_1406F2863
; ---------------------------------------------------------------------------

loc_1406F28C5:                          ; CODE XREF: sub_1406F27EC+6C↑j
                add     rdx, 8
                jmp     short loc_1406F284E
; ---------------------------------------------------------------------------

loc_1406F28CB:                          ; CODE XREF: sub_1406F27EC+65↑j
                mov     rcx, r14
                jmp     short loc_1406F2863
; ---------------------------------------------------------------------------

loc_1406F28D0:                          ; CODE XREF: sub_1406F27EC+7A↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F28EA:                          ; CODE XREF: sub_1406F27EC+9B↑j
                mov     rcx, rax
                jmp     short loc_1406F287D
; ---------------------------------------------------------------------------

loc_1406F28EF:                          ; CODE XREF: sub_1406F27EC+96↑j
                mov     rax, [r14]
                mov     rsi, r14
                jmp     short loc_1406F2898
sub_1406F27EC   endp

; ---------------------------------------------------------------------------
algn_1406F28F7:                         ; DATA XREF: .rdata:000000014007F84C↑o
                                        ; .pdata:0000000140104C4C↑o
                align 20h
; Exported entry 1633. NtUnlockFile

; =============== S U B R O U T I N E =======================================



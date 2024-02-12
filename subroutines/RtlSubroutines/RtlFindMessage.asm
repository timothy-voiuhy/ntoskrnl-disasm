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


                public NtUnlockFile
NtUnlockFile    proc near               ; DATA XREF: .pdata:0000000140104C58↑o
                                        ; PAGE:000000014098A4C8↓o

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_78          = byte ptr -78h
var_77          = byte ptr -77h
var_70          = qword ptr -70h
var_64          = byte ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = byte ptr -30h
var_18          = byte ptr -18h
arg_20          = dword ptr  28h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                mov     [r11+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     rdi, r9
                mov     rsi, r8
                mov     r13, rdx
                xor     r15d, r15d
                mov     [r11-58h], r15
                mov     [r11-60h], r15
                mov     [r11-68h], r15
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-30h], xmm0
                mov     rax, gs:188h
                mov     [rsp+0B8h+var_48], rax
                mov     r14b, [rax+232h]
                mov     [rsp+0B8h+var_78], r14b
                mov     r8, cs:IoFileObjectType
                mov     [r11-70h], r15
                lea     rax, [r11-68h]
                mov     [rsp+0B8h+var_90], rax
                lea     rax, [r11-70h]
                mov     [rsp+0B8h+var_98], rax
                mov     r9b, r14b
                xor     edx, edx
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+0B8h+var_70]
                mov     r12, rbx
                mov     [rsp+0B8h+var_50], rbx
                test    eax, eax
                js      loc_1406F2D50
                test    r14b, r14b
                jz      loc_1406F2A29
                mov     r14b, 3
                test    [rsp+0B8h+var_64], r14b
                jnz     short loc_1406F29BB
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C0000022h
                jmp     loc_1406F2D50
; ---------------------------------------------------------------------------

loc_1406F29BB:                          ; CODE XREF: NtUnlockFile+A7↑j
                                        ; DATA XREF: .rdata:000000014007F884↑o
;   __try { // __except at loc_1406F2A16
                mov     rbx, 7FFFFFFF0000h
                mov     rcx, rbx
                cmp     r13, rbx
                cmovb   rcx, r13
                mov     eax, [rcx]
                mov     [rcx], eax
                test    r14b, sil
                jnz     loc_1406F2D73
                mov     rax, rbx
                cmp     rsi, rbx
                cmovb   rax, rsi
                mov     al, [rax]
                mov     rax, [rsi]
                mov     [rsp+0B8h+var_58], rax
                test    r14b, dil
                jnz     loc_1406F2D79
                cmp     rdi, rbx
                cmovb   rbx, rdi
                mov     al, [rbx]
                mov     rax, [rdi]
                mov     [rsp+0B8h+var_60], rax
                mov     r12, [rsp+0B8h+var_50]
                mov     rbx, [rsp+0B8h+var_70]
                jmp     short loc_1406F2A39
;   } // starts at 1406F29BB
; ---------------------------------------------------------------------------

loc_1406F2A16:                          ; DATA XREF: .rdata:000000014007F884↑o
                                        ; .rdata:000000014007F8B4↑o
;   __except(1) // owned by 1406F29BB
;   __except(1) // owned by 1406F2D73
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_70]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1406F2D50
; ---------------------------------------------------------------------------

loc_1406F2A29:                          ; CODE XREF: NtUnlockFile+99↑j
                mov     rax, [rsi]
                mov     [rsp+0B8h+var_58], rax
                mov     rax, [rdi]
                mov     [rsp+0B8h+var_60], rax

loc_1406F2A39:                          ; CODE XREF: NtUnlockFile+114↑j
                test    dword ptr [rbx+50h], 800h
                jnz     short loc_1406F2A4C
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                jmp     short loc_1406F2A55
; ---------------------------------------------------------------------------

loc_1406F2A4C:                          ; CODE XREF: NtUnlockFile+140↑j
                mov     rcx, [rbx+8]
                call    IoGetAttachedDevice

loc_1406F2A55:                          ; CODE XREF: NtUnlockFile+14A↑j
                mov     r15, rax
                mov     rax, [rax+8]
                mov     rcx, [rax+50h]
                test    rcx, rcx
                jz      loc_1406F2B17
                mov     rsi, [rcx+38h]
                test    rsi, rsi
                jz      loc_1406F2B17
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_40], xmm0
                mov     eax, cs:dword_140C2A6E0
                test    al, 10h
                jz      short loc_1406F2A92
                call    sub_1409CBA9C
                mov     rdi, rax
                jmp     short loc_1406F2A94
; ---------------------------------------------------------------------------

loc_1406F2A92:                          ; CODE XREF: NtUnlockFile+186↑j
                xor     edi, edi

loc_1406F2A94:                          ; CODE XREF: NtUnlockFile+190↑j
                mov     r9, [rsp+0B8h+var_48]
                mov     r9, [r9+0B8h]
                mov     [rsp+0B8h+var_88], r15
                lea     rax, [rsp+0B8h+var_40]
                mov     [rsp+0B8h+var_90], rax
                mov     eax, [rsp+0B8h+arg_20]
                mov     dword ptr [rsp+0B8h+var_98], eax
                lea     r8, [rsp+0B8h+var_60]
                lea     rdx, [rsp+0B8h+var_58]
                mov     rcx, rbx
                mov     rax, rsi
                call    sub_1404079D0
                mov     r14b, al
                test    rdi, rdi
                jz      short loc_1406F2AE2
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1409CB9C4

loc_1406F2AE2:                          ; CODE XREF: NtUnlockFile+1D5↑j
                test    r14b, r14b
                jz      short loc_1406F2B17

loc_1406F2AE7:                          ; DATA XREF: .rdata:000000014007F894↑o
;   __try { // __except at loc_1406F2AF4
                movups  xmm0, [rsp+0B8h+var_40]
                movdqu  xmmword ptr [r13+0], xmm0
                jmp     short loc_1406F2B06
;   } // starts at 1406F2AE7
; ---------------------------------------------------------------------------

loc_1406F2AF4:                          ; DATA XREF: .rdata:000000014007F894↑o
;   __except(1) // owned by 1406F2AE7
                mov     dword ptr [rsp+0B8h+var_40], eax
                and     qword ptr [rsp+0B8h+var_40+8], 0
                mov     rbx, [rsp+0B8h+var_70]

loc_1406F2B06:                          ; CODE XREF: NtUnlockFile+1F2↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, dword ptr [rsp+0B8h+var_40]
                jmp     loc_1406F2D50
; ---------------------------------------------------------------------------

loc_1406F2B17:                          ; CODE XREF: NtUnlockFile+163↑j
                                        ; NtUnlockFile+170↑j ...
                mov     edi, [rbx+50h]
                test    dil, 2
                jz      loc_1406F2BB7
                shr     edi, 2
                mov     r14d, 1
                and     dil, r14b
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+0B8h+var_70]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+0B8h+var_77], 0
                mov     ecx, r14d
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_1406F2B7F
                test    rax, rax
                jz      short loc_1406F2B6E
                or      [rax+1Ah], r14b

loc_1406F2B6E:                          ; CODE XREF: NtUnlockFile+268↑j
                mov     rbx, [rsp+0B8h+var_70]
                mov     rcx, rbx
                call    ObfReferenceObject
                xor     edi, edi
                jmp     short loc_1406F2BA2
; ---------------------------------------------------------------------------

loc_1406F2B7F:                          ; CODE XREF: NtUnlockFile+263↑j
                lea     rcx, [rsp+0B8h+var_77]
                mov     [rsp+0B8h+var_98], rcx
                mov     r9, rax
                mov     r8b, dil
                mov     dl, [rsp+0B8h+var_78]
                mov     rbx, [rsp+0B8h+var_70]
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     edi, eax

loc_1406F2BA2:                          ; CODE XREF: NtUnlockFile+27D↑j
                cmp     [rsp+0B8h+var_77], 0
                jnz     short loc_1406F2BD3
                xor     esi, esi
                mov     [rsp+50h], rsi
                mov     r12, [rsp+0B8h+var_50]
                jmp     short loc_1406F2BF4
; ---------------------------------------------------------------------------

loc_1406F2BB7:                          ; CODE XREF: NtUnlockFile+21E↑j
                mov     edx, 18h
                call    sub_14021B048
                mov     rsi, rax
                mov     [rsp+50h], rax
                test    rax, rax
                jnz     short loc_1406F2BE2
                mov     edi, 0C000009Ah

loc_1406F2BD3:                          ; CODE XREF: NtUnlockFile+2A7↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_1406F2D50
; ---------------------------------------------------------------------------

loc_1406F2BE2:                          ; CODE XREF: NtUnlockFile+2CC↑j
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rax
                call    KeInitializeEvent
                xor     r14b, r14b

loc_1406F2BF4:                          ; CODE XREF: NtUnlockFile+2B5↑j
                mov     rcx, rbx
                call    sub_1402360C0
                mov     r9, [rsp+0B8h]
                xor     r8d, r8d
                mov     dl, [r15+4Ch]
                mov     rcx, r15
                call    sub_140235D20
                mov     rdi, rax
                mov     [rsp+0B8h+var_70], rax
                test    rax, rax
                jnz     short loc_1406F2C43
                test    rsi, rsi
                jz      short loc_1406F2C2F
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1406F2C2F:                          ; CODE XREF: NtUnlockFile+323↑j
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_1406F2D50
; ---------------------------------------------------------------------------

loc_1406F2C43:                          ; CODE XREF: NtUnlockFile+31E↑j
                mov     [rax+0C0h], rbx
                mov     rax, [rsp+0B8h+var_48]
                mov     [rdi+98h], rax
                mov     al, [rsp+0B8h+var_78]
                mov     [rdi+40h], al
                test    r14b, r14b
                jz      short loc_1406F2C69
                mov     rax, r13
                xor     ecx, ecx
                jmp     short loc_1406F2C7B
; ---------------------------------------------------------------------------

loc_1406F2C69:                          ; CODE XREF: NtUnlockFile+360↑j
                mov     dword ptr [rdi+10h], 4
                lea     rax, [rsp+0B8h+var_30]
                mov     rcx, rsi

loc_1406F2C7B:                          ; CODE XREF: NtUnlockFile+367↑j
                mov     [rdi+50h], rcx
                mov     [rdi+48h], rax
                and     qword ptr [rdi+58h], 0
                mov     rbx, [rdi+0B8h]
                mov     word ptr [rbx-48h], 211h
                mov     [rbx-18h], r12

loc_1406F2C99:                          ; DATA XREF: .rdata:000000014007F8A4↑o
;   __try { // __except at loc_1406F2D13
                call    sub_140508900
                mov     rcx, [rsp+0B8h+var_60]
                mov     [rax], rcx
                mov     [rdi+0A0h], rax
                mov     [rbx-40h], rax
;   } // starts at 1406F2C99

loc_1406F2CB1:                          ; DATA XREF: .rdata:000000014007F8A4↑o
                mov     eax, [rsp+0B8h+arg_20]
                mov     [rbx-38h], eax
                mov     rax, [rsp+0B8h+var_58]
                mov     [rbx-30h], rax
                mov     dword ptr [rsp+0B8h+var_88], 2
                mov     byte ptr [rsp+0B8h+var_90], r14b
                mov     bl, [rsp+0B8h+var_78]
                mov     byte ptr [rsp+0B8h+var_98], bl
                xor     r9d, r9d
                mov     r8, r12
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_140643F60
                test    r14b, r14b
                jnz     short loc_1406F2D50
                mov     [rsp+0B8h+var_90], r13
                lea     rcx, [rsp+0B8h+var_30]
                mov     [rsp+0B8h+var_98], rcx
                mov     r9b, bl
                mov     r8, rdi
                mov     rdx, rsi
                mov     ecx, eax
                call    sub_1406FC85C
                jmp     short loc_1406F2D50
; ---------------------------------------------------------------------------

loc_1406F2D13:                          ; DATA XREF: .rdata:000000014007F8A4↑o
;   __except(1) // owned by 1406F2C99
                mov     edi, eax
                mov     rbx, [rsp+0B8h+var_50]
                mov     ecx, [rbx+50h]
                test    cl, 2
                jnz     short loc_1406F2D2E
                xor     edx, edx
                mov     rcx, [rsp+50h]
                call    ExFreePoolWithTag

loc_1406F2D2E:                          ; CODE XREF: NtUnlockFile+420↑j
                movzx   edx, byte ptr [rbx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0B8h+var_98], dl
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+var_70]
                mov     rcx, rbx
                call    sub_1405CD328
                mov     eax, edi

loc_1406F2D50:                          ; CODE XREF: NtUnlockFile+90↑j
                                        ; NtUnlockFile+B6↑j ...
                lea     r11, [rsp+0B8h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2D73:                          ; CODE XREF: NtUnlockFile+D6↑j
                                        ; DATA XREF: .rdata:000000014007F8B4↑o
;   __try { // __except at loc_1406F2A16
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2D79:                          ; CODE XREF: NtUnlockFile+F3↑j
                call    ExRaiseDatatypeMisalignment
NtUnlockFile    endp

; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1406F2D73
byte_1406F2D7F  db 0CCh                 ; DATA XREF: .rdata:000000014007F8B4↑o
; } // starts at 1406F2900
byte_1406F2D80  db 10h dup(0CCh)        ; DATA XREF: .pdata:0000000140104C58↑o

; =============== S U B R O U T I N E =======================================


sub_1406F2D90   proc near               ; DATA XREF: .pdata:0000000140104C64↑o
                                        ; sub_140A3EC48+1B9↓o
                sub     rsp, 28h
                xor     edx, edx
                call    sub_14033D2E8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F2D90   endp

algn_1406F2DA1:                         ; DATA XREF: .pdata:0000000140104C64↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406F2DB0   proc near               ; DATA XREF: .pdata:0000000140104C70↑o
                                        ; sub_140A3EC48+1A0↓o
                sub     rsp, 28h
                mov     rax, rdx
                cmp     r9, 1
                jnz     short loc_1406F2DC8
                mov     dl, r9b
                mov     rcx, rax
                call    sub_14033D2E8

loc_1406F2DC8:                          ; CODE XREF: sub_1406F2DB0+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F2DB0   endp

byte_1406F2DCE  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140104C70↑o

; =============== S U B R O U T I N E =======================================


sub_1406F2DD4   proc near               ; CODE XREF: sub_14033D2E8+150↑p
                                        ; DATA XREF: .pdata:0000000140104C7C↑o
                test    rcx, rcx
                jz      short locret_1406F2E13
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx

loc_1406F2DE1:                          ; CODE XREF: sub_1406F2DD4+38↓j
                mov     rcx, rbx
                mov     rbx, [rbx]
                cmp     byte ptr [rcx+10h], 0
                jnz     short loc_1406F2E15
                add     rcx, 0FFFFFFFFFFFFFF58h
                test    dword ptr [rcx+10h], 2000h
                jz      short loc_1406F2E1C
                mov     rdx, [rcx+0C0h]
                call    sub_14038DB70

loc_1406F2E09:                          ; CODE XREF: sub_1406F2DD4+46↓j
                                        ; sub_1406F2DD4+4D↓j
                test    rbx, rbx
                jnz     short loc_1406F2DE1
                add     rsp, 20h
                pop     rbx

locret_1406F2E13:                       ; CODE XREF: sub_1406F2DD4+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2E15:                          ; CODE XREF: sub_1406F2DD4+17↑j
                call    sub_140613E40
                jmp     short loc_1406F2E09
; ---------------------------------------------------------------------------

loc_1406F2E1C:                          ; CODE XREF: sub_1406F2DD4+27↑j
                call    IoFreeIrp
                jmp     short loc_1406F2E09
sub_1406F2DD4   endp

; ---------------------------------------------------------------------------
algn_1406F2E23:                         ; DATA XREF: .pdata:0000000140104C7C↑o
                align 10h
; Exported entry 536. FsRtlOplockIsFastIoPossible

; =============== S U B R O U T I N E =======================================


                public FsRtlOplockIsFastIoPossible
FsRtlOplockIsFastIoPossible proc near   ; DATA XREF: .pdata:0000000140104C88↑o
                mov     rdx, [rcx]
                mov     eax, 1
                test    rdx, rdx
                jnz     short loc_1406F2E3F

locret_1406F2E3D:                       ; CODE XREF: FsRtlOplockIsFastIoPossible+17↓j
                                        ; FsRtlOplockIsFastIoPossible+22↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2E3F:                          ; CODE XREF: FsRtlOplockIsFastIoPossible+B↑j
                mov     ecx, [rdx+90h]
                cmp     ecx, eax
                jz      short locret_1406F2E3D
                and     ecx, 1F00F40h
                cmp     ecx, 40h ; '@'
                jz      short locret_1406F2E3D
                xor     al, al
                retn
FsRtlOplockIsFastIoPossible endp

; ---------------------------------------------------------------------------
                align 8
algn_1406F2E58:                         ; DATA XREF: .pdata:0000000140104C88↑o
                align 20h
; Exported entry  12.

; =============== S U B R O U T I N E =======================================


                public ntoskrnl_12
ntoskrnl_12     proc near               ; CODE XREF: sub_14033DD74+123↑p
                                        ; sub_14033DF10+F7↑p ...
                mov     rax, cs:qword_140C4E4C8
                movzx   edx, cx
                mov     rax, [rax+rdx*8]
                mov     rax, [rax+1B10h]
                retn
ntoskrnl_12     endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1406F2E77:                         ; DATA XREF: .pdata:0000000140104C94↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F2E80   proc near               ; DATA XREF: .pdata:0000000140104CA0↑o
                                        ; sub_140790488+2C↓o
                sub     rsp, 28h
                mov     rcx, [rdx]
                mov     r10, [r8]
                cmp     rcx, r10
                jz      short loc_1406F2ED0
                mov     eax, [rcx+18h]
                cmp     eax, [r10+18h]
                jb      short loc_1406F2EA1
                jbe     short loc_1406F2EA9

loc_1406F2E9A:                          ; CODE XREF: sub_1406F2E80+4E↓j
                mov     eax, 1
                jmp     short loc_1406F2EA3
; ---------------------------------------------------------------------------

loc_1406F2EA1:                          ; CODE XREF: sub_1406F2E80+16↑j
                                        ; sub_1406F2E80+4C↓j
                xor     eax, eax

loc_1406F2EA3:                          ; CODE XREF: sub_1406F2E80+1F↑j
                                        ; sub_1406F2E80+55↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2EA9:                          ; CODE XREF: sub_1406F2E80+18↑j
                cmp     dword ptr [rcx+1Ch], 3
                mov     rax, [r10+10h]
                mov     r8, [rcx+10h]
                lea     rdx, [rax+8]
                lea     rcx, [r8+8]
                cmovnz  rdx, rax
                cmovnz  rcx, r8
                call    _wcsicmp
                test    eax, eax
                js      short loc_1406F2EA1
                jg      short loc_1406F2E9A

loc_1406F2ED0:                          ; CODE XREF: sub_1406F2E80+D↑j
                mov     eax, 2
                jmp     short loc_1406F2EA3
sub_1406F2E80   endp

; ---------------------------------------------------------------------------
algn_1406F2ED7:                         ; DATA XREF: .pdata:0000000140104CA0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F2EE0   proc near               ; DATA XREF: .pdata:0000000140104CAC↑o
                                        ; PAGEDATA:0000000140D2D528↓o

arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

                mov     r9d, [rsp+arg_30]
                mov     r10, rdx
                mov     r11, rcx
                mov     rax, 8888888888888889h
                mul     r8
                and     r11d, 3
                shr     rdx, 3
                imul    eax, edx, 0Fh
                sub     r8d, eax
                mov     rax, 0AAAAAAAAAAAAAAABh
                mul     r10
                lea     ecx, [r8+1]
                ror     r9d, cl
                lea     rcx, [r10+1]
                shr     rdx, 1
                add     rdx, r11
                add     rcx, rdx
                mov     rdx, [rsp+arg_28]
                and     ecx, 3
                movzx   eax, word ptr [rdx+rcx*2]
                xor     eax, [rsp+arg_30]
                movzx   ecx, word ptr [rdx+r11*2]
                imul    eax, ecx
                add     eax, r9d
                retn
sub_1406F2EE0   endp

; ---------------------------------------------------------------------------
                align 4
algn_1406F2F44:                         ; DATA XREF: .pdata:0000000140104CAC↑o
                align 10h
; Exported entry 517. FsRtlNotifyFilterReportChange

; =============== S U B R O U T I N E =======================================


                public FsRtlNotifyFilterReportChange
FsRtlNotifyFilterReportChange proc near ; CODE XREF: FsRtlNotifyFullReportChange+46↓p
                                        ; FsRtlNotifyReportChange+35↓p
                                        ; DATA XREF: ...

var_118         = qword ptr -118h
var_110         = dword ptr -110h
var_108         = dword ptr -108h
var_F8          = byte ptr -0F8h
var_F6          = word ptr -0F6h
var_F4          = byte ptr -0F4h
var_F3          = byte ptr -0F3h
var_F2          = byte ptr -0F2h
var_F0          = dword ptr -0F0h
var_EC          = word ptr -0ECh
var_EA          = word ptr -0EAh
var_E8          = dword ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = word ptr -0B8h
var_B6          = word ptr -0B6h
var_B0          = qword ptr -0B0h
var_A0          = word ptr -0A0h
var_9E          = word ptr -9Eh
var_98          = qword ptr -98h
var_90          = word ptr -90h
var_8E          = word ptr -8Eh
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = word ptr -60h
var_5E          = word ptr -5Eh
var_58          = qword ptr -58h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = word ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 00000001407E7FAC SIZE 00000064 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9w
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                movzx   r14d, r9w
                mov     r12, r8
                mov     rdi, rcx
                movzx   r8d, r9w
                mov     [rsp+138h+var_EA], r9w
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-60h], xmm0
                xor     esi, esi
                mov     [rax-0A0h], rsi
                mov     [rax-90h], rsi
                movups  xmmword ptr [rax-0B8h], xmm0
                mov     [rsp+138h+var_F8], sil
                mov     [rsp+138h+var_E4], esi
                mov     [rax-0A8h], esi
                test    r9w, r9w
                jnz     short loc_1406F2FC6
                test    r12, r12
                jnz     loc_1406F388F

loc_1406F2FC6:                          ; CODE XREF: FsRtlNotifyFilterReportChange+6B↑j
                mov     [rsp+138h+var_98], rsi
                mov     [rsp+138h+var_88], rsi
                mov     rbx, gs:188h
                cmp     rbx, [rcx+38h]
                jz      short loc_1406F2FFA
                call    ExAcquireFastMutexUnsafe
                mov     [rdi+38h], rbx
                movzx   r8d, r14w
                mov     rdx, [rsp+138h+arg_8]

loc_1406F2FFA:                          ; CODE XREF: FsRtlNotifyFilterReportChange+93↑j
                inc     dword ptr [rdi+40h]

loc_1406F2FFD:                          ; DATA XREF: .rdata:000000014007FB08↑o
;   __try { // __finally(loc_1407E7FE8)
                mov     r13, [rdx]
                mov     ebx, 2
                movzx   eax, [rsp+138h+var_A0]
                mov     [rsp+138h+var_F6], ax
                movzx   ecx, [rsp+138h+var_90]
                mov     [rsp+138h+var_EC], cx
                movzx   eax, [rsp+138h+var_B8]
                mov     [rsp+138h+var_E8], eax

loc_1406F302B:                          ; CODE XREF: FsRtlNotifyFilterReportChange+3E8↓j
                mov     [rsp+138h+var_68], r13
                mov     [rsp+138h+var_C0], r13
                cmp     r13, rdx
                jz      loc_1406F3875
                lea     rdi, [r13-20h]
                mov     [rsp+138h+var_70], rdi
                mov     r11, rdi
                mov     [rsp+138h+var_C8], rdi
                test    r12, r12
                jnz     loc_1406F333F
                mov     rax, [rsp+138h+arg_40]
                cmp     rax, [rdi+18h]
                jnz     loc_1406F333D
                mov     [rsp+138h+var_B0], rsi
                mov     eax, esi
                mov     [rsp+138h+var_E8], eax
                mov     [rsp+138h+var_B8], ax
                mov     dl, 1
                mov     [rsp+138h+var_F8], dl
                mov     r15b, sil
                mov     [rsp+138h+var_F4], sil

loc_1406F3094:                          ; CODE XREF: FsRtlNotifyFilterReportChange+529↓j
                movzx   r8d, word ptr [rdi+48h]
                test    bl, r8b
                jnz     loc_1406F3860
                mov     r13d, [rdi+60h]
                test    r13d, r13d
                jz      loc_1406F3858
                mov     [rsp+138h+var_E0], esi
                mov     [rsp+138h+var_E0], esi
                mov     [rsp+138h+var_78], rsi
                mov     eax, [rdi+64h]
                test    eax, eax
                jnz     loc_1406F347E
                lea     rax, [rdi+30h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_1406F30F0
                add     rcx, 0FFFFFFFFFFFFFF58h
                mov     [rsp+138h+var_78], rcx
                mov     rax, [rcx+0B8h]
                mov     r13d, [rax+8]

loc_1406F30F0:                          ; CODE XREF: FsRtlNotifyFilterReportChange+184↑j
                                        ; FsRtlNotifyFilterReportChange+531↓j
                mov     [rsp+138h+var_E0], r13d
                test    r15b, r15b
                jnz     loc_1406F366F
                test    dl, dl
                jz      loc_1406F3486
                mov     eax, [rsp+138h+var_E8]

loc_1406F310A:                          ; CODE XREF: FsRtlNotifyFilterReportChange+71A↓j
                                        ; FsRtlNotifyFilterReportChange+72E↓j
                mov     r14d, 0Ch
                mov     [rsp+138h+var_F0], r14d
                cmp     [rsp+138h+var_F8], sil
                jz      loc_1406F3683
                mov     rax, [rsp+138h+arg_20]
                movzx   r14d, word ptr [rax]
                add     r14d, 0Ch

loc_1406F3130:                          ; CODE XREF: FsRtlNotifyFilterReportChange+7FC↓j
                                        ; FsRtlNotifyFilterReportChange+80C↓j
                mov     [rsp+138h+var_F0], r14d

loc_1406F3135:                          ; CODE XREF: FsRtlNotifyFilterReportChange+7DF↓j
                mov     r15d, [rdi+68h]
                add     r15d, 3
                and     r15d, 0FFFFFFFCh
                mov     [rsp+138h+var_80], r15d
                cmp     r14d, r13d
                ja      loc_1406F3805
                lea     r12d, [r15+r14]
                mov     [rsp+138h+var_7C], r12d
                cmp     r12d, r13d
                ja      loc_1406F3805
                mov     rbx, rsi
                mov     [rsp+138h+var_D0], rbx
                mov     rax, [rdi+58h]
                test    rax, rax
                jnz     loc_1406F3761
                mov     rcx, [rsp+138h+var_78]
                test    rcx, rcx
                jz      short loc_1406F31A3
                mov     rax, [rcx+18h]
                test    rax, rax
                jnz     loc_1406F3789
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jnz     loc_1406F3797

loc_1406F31A3:                          ; CODE XREF: FsRtlNotifyFilterReportChange+237↑j
                                        ; FsRtlNotifyFilterReportChange+834↓j ...
                cmp     [rdi+58h], rsi
                jnz     loc_1406F37D7
                mov     [rsp+138h+var_F2], sil

loc_1406F31B2:                          ; DATA XREF: .rdata:000000014007FAF8↑o
;     __try { // __except at loc_1406F31F8
                mov     r8d, r13d
                mov     edx, 1
                mov     rcx, [rdi+78h]
                call    PsChargePoolQuota
                mov     [rsp+138h+var_F2], 1
                mov     r8d, 4E725346h
                mov     edx, r13d
                mov     ecx, 11h
                call    ExAllocatePoolWithTag
                mov     [rdi+58h], rax
                mov     [rdi+50h], rax
                mov     [rdi+64h], r13d
                mov     rbx, [rdi+58h]
                mov     [rsp+138h+var_D0], rbx
                mov     r13d, 2
                jmp     short loc_1406F326C
;     } // starts at 1406F31B2
; ---------------------------------------------------------------------------

loc_1406F31F8:                          ; DATA XREF: .rdata:000000014007FAF8↑o
;   __except(loc_1407E7FAC) // owned by 1406F31B2
                mov     rdi, [rsp+138h+var_70]
                cmp     [rsp+138h+var_F2], 0
                jz      short loc_1406F3214
                mov     edx, [rsp+138h+var_E0]
                mov     rcx, [rdi+78h]
                call    PsReturnProcessPagedPoolQuota

loc_1406F3214:                          ; CODE XREF: FsRtlNotifyFilterReportChange+2B5↑j
                or      word ptr [rdi+48h], 2
                xor     esi, esi
                lea     r13d, [rsi+2]
                mov     rax, [rsp+138h+var_68]
                mov     [rsp+138h+var_C0], rax
                movzx   eax, [rsp+138h+var_A0]
                mov     [rsp+138h+var_F6], ax
                movzx   ecx, [rsp+138h+var_90]
                mov     [rsp+138h+var_EC], cx
                movzx   eax, [rsp+138h+var_B8]
                mov     [rsp+138h+var_E8], eax
                mov     r14d, [rsp+138h+var_F0]
                mov     r15d, [rsp+138h+var_80]
                mov     rbx, [rsp+138h+var_D0]
                mov     r12d, [rsp+138h+var_7C]

loc_1406F326C:                          ; CODE XREF: FsRtlNotifyFilterReportChange+2A6↑j
                                        ; FsRtlNotifyFilterReportChange+88D↓j
                test    rbx, rbx
                jz      short loc_1406F32C8
                mov     eax, [rdi+68h]
                cmp     r15d, eax
                ja      loc_1406F37E2

loc_1406F327D:                          ; CODE XREF: FsRtlNotifyFilterReportChange+8A6↓j
                cmp     [rdi+90h], r13b
                setz    al
                mov     [rsp+138h+var_108], r14d
                mov     byte ptr [rsp+138h+var_110], al
                mov     rax, [rsp+138h+arg_20]
                mov     [rsp+138h+var_118], rax
                lea     r9, [rsp+138h+var_90]
                lea     r8, [rsp+138h+var_B8]
                mov     edx, [rsp+138h+arg_38]
                mov     rcx, rbx
                call    sub_1406F48A4
                test    al, al
                jz      loc_1406F37FB
                mov     [rdi+68h], r12d

loc_1406F32C8:                          ; CODE XREF: FsRtlNotifyFilterReportChange+31F↑j
                                        ; FsRtlNotifyFilterReportChange+8B0↓j
                mov     rbx, [rsp+138h+var_C8]
                movzx   eax, word ptr [rbx+48h]

loc_1406F32D1:                          ; CODE XREF: FsRtlNotifyFilterReportChange+8C7↓j
                test    r13b, al
                jnz     loc_1406F381C

loc_1406F32DA:                          ; CODE XREF: FsRtlNotifyFilterReportChange+8D0↓j
                                        ; FsRtlNotifyFilterReportChange+903↓j
                mov     r12, [rsp+138h+arg_10]
                movzx   r14d, [rsp+138h+arg_18]

loc_1406F32EB:                          ; CODE XREF: FsRtlNotifyFilterReportChange+90B↓j
                mov     r13, [rsp+138h+var_C0]

loc_1406F32F0:                          ; CODE XREF: FsRtlNotifyFilterReportChange+913↓j
                movzx   eax, word ptr [rbx+48h]
                cmp     [rsp+138h+arg_38], 4
                jz      loc_1406F3868
                mov     ecx, 0FFF7h
                and     ax, cx
                mov     [rbx+48h], ax
                lea     rax, [rdi+30h]
                cmp     [rax], rax
                jz      short loc_1406F3321
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406F4194

loc_1406F3321:                          ; CODE XREF: FsRtlNotifyFilterReportChange+3C5↑j
                                        ; FsRtlNotifyFilterReportChange+920↓j
                mov     ebx, 2

loc_1406F3326:                          ; CODE XREF: FsRtlNotifyFilterReportChange:loc_1406F33D8↓j
                mov     rdx, [rsp+138h+arg_8]

loc_1406F332E:                          ; CODE XREF: FsRtlNotifyFilterReportChange:loc_1406F333D↓j
                mov     r13, [r13+0]
                movzx   r8d, [rsp+138h+var_EA]
                jmp     loc_1406F302B
; ---------------------------------------------------------------------------

loc_1406F333D:                          ; CODE XREF: FsRtlNotifyFilterReportChange+11A↑j
                                        ; FsRtlNotifyFilterReportChange+3FD↓j ...
                jmp     short loc_1406F332E
; ---------------------------------------------------------------------------

loc_1406F333F:                          ; CODE XREF: FsRtlNotifyFilterReportChange+108↑j
                mov     r9, [rdi+88h]
                movzx   ecx, word ptr [r9]
                test    cx, cx
                jz      short loc_1406F333D
                mov     eax, [rdi+4Ch]
                test    [rsp+138h+arg_30], eax
                jz      short loc_1406F333D
                mov     rdx, r9
                mov     r10, [rsp+138h+arg_28]
                test    r10, r10
                jnz     short loc_1406F33C6
                mov     rax, [r12+8]
                mov     [rsp+138h+var_58], rax
                movzx   ecx, r14w
                mov     [rsp+138h+var_60], cx
                movzx   eax, byte ptr [rdi+90h]
                cmp     r8w, ax
                jz      short loc_1406F33A0
                movzx   ecx, r8w
                sub     cx, ax
                mov     [rsp+138h+var_60], cx

loc_1406F33A0:                          ; CODE XREF: FsRtlNotifyFilterReportChange+43F↑j
                mov     [rsp+138h+var_5E], cx
                lea     r10, [rsp+138h+var_60]
                mov     [rsp+138h+arg_28], r10
                mov     r9, [rdi+88h]
                mov     rdx, r9
                movzx   ecx, word ptr [r9]

loc_1406F33C6:                          ; CODE XREF: FsRtlNotifyFilterReportChange+419↑j
                cmp     cx, [r10]
                ja      short loc_1406F33D8
                jnz     short loc_1406F33DD
                mov     r15b, 1
                mov     [rsp+138h+var_F4], r15b
                jmp     short loc_1406F340C
; ---------------------------------------------------------------------------

loc_1406F33D8:                          ; CODE XREF: FsRtlNotifyFilterReportChange+47A↑j
                                        ; FsRtlNotifyFilterReportChange+493↓j ...
                jmp     loc_1406F3326
; ---------------------------------------------------------------------------

loc_1406F33DD:                          ; CODE XREF: FsRtlNotifyFilterReportChange+47C↑j
                movzx   eax, word ptr [rdi+48h]
                test    al, 1
                jz      short loc_1406F33D8
                test    al, 10h
                jnz     short loc_1406F3404
                movzx   eax, word ptr [rdx]
                add     rax, [r10+8]
                cmp     byte ptr [rdi+90h], 1
                jnz     short loc_1406F33FE
                cmp     byte ptr [rax], 5Ch ; '\'
                jmp     short loc_1406F3402
; ---------------------------------------------------------------------------

loc_1406F33FE:                          ; CODE XREF: FsRtlNotifyFilterReportChange+4A7↑j
                cmp     word ptr [rax], 5Ch ; '\'

loc_1406F3402:                          ; CODE XREF: FsRtlNotifyFilterReportChange+4AC↑j
                jnz     short loc_1406F33D8

loc_1406F3404:                          ; CODE XREF: FsRtlNotifyFilterReportChange+497↑j
                mov     r15b, sil
                mov     [rsp+138h+var_F4], sil

loc_1406F340C:                          ; CODE XREF: FsRtlNotifyFilterReportChange+486↑j
                movzx   r8d, cx
                mov     rdx, [r10+8]
                mov     rcx, [r9+8]
                call    memcmp
                test    eax, eax
                jnz     short loc_1406F33D8
                test    r15b, r15b
                jnz     short loc_1406F3448
                mov     rax, [rdi+10h]
                test    rax, rax
                jz      short loc_1406F3448
                mov     r8, [rdi+18h]
                mov     rdx, [rsp+138h+arg_40]
                mov     rcx, [rdi+8]
                call    sub_1404079D0
                test    al, al
                jz      short loc_1406F33D8

loc_1406F3448:                          ; CODE XREF: FsRtlNotifyFilterReportChange+4D4↑j
                                        ; FsRtlNotifyFilterReportChange+4DD↑j
                mov     rax, [rdi+40h]
                test    rax, rax
                jz      short loc_1406F3472
                mov     rcx, [rsp+138h+arg_48]
                test    rcx, rcx
                jz      short loc_1406F3472
                mov     rdx, rcx
                mov     rcx, [rdi+8]
                call    sub_1404079D0
                test    al, al
                jz      loc_1406F33D8

loc_1406F3472:                          ; CODE XREF: FsRtlNotifyFilterReportChange+4FF↑j
                                        ; FsRtlNotifyFilterReportChange+50C↑j
                mov     r11, rdi
                mov     dl, [rsp+138h+var_F8]
                jmp     loc_1406F3094
; ---------------------------------------------------------------------------

loc_1406F347E:                          ; CODE XREF: FsRtlNotifyFilterReportChange+174↑j
                mov     r13d, eax
                jmp     loc_1406F30F0
; ---------------------------------------------------------------------------

loc_1406F3486:                          ; CODE XREF: FsRtlNotifyFilterReportChange+1B0↑j
                and     r8w, 10h
                jnz     short loc_1406F34D3
                mov     r10, [rsp+138h+arg_28]
                mov     r9, [r10+8]
                cmp     r9, [r12+8]
                jnz     short loc_1406F34D3
                mov     rax, [rdi+88h]
                movzx   r8d, word ptr [rax]
                movzx   edx, byte ptr [rdi+90h]
                lea     eax, [rdx+r8]
                mov     ecx, eax
                add     rcx, r9
                mov     [rsp+138h+var_B0], rcx
                movzx   eax, word ptr [r10]
                sub     ax, dx
                sub     ax, r8w
                jmp     loc_1406F3656
; ---------------------------------------------------------------------------

loc_1406F34D3:                          ; CODE XREF: FsRtlNotifyFilterReportChange+53B↑j
                                        ; FsRtlNotifyFilterReportChange+54E↑j
                cmp     [rsp+138h+var_98], rsi
                jnz     short loc_1406F3529
                mov     rax, [r12+8]
                mov     [rsp+138h+var_98], rax
                movzx   ecx, r14w
                mov     [rsp+138h+var_F6], cx
                mov     [rsp+138h+var_A0], cx
                movzx   eax, byte ptr [rdi+90h]
                movzx   edx, [rsp+138h+var_EA]
                cmp     dx, ax
                jz      short loc_1406F351F
                movzx   ecx, dx
                sub     cx, ax
                mov     [rsp+138h+var_F6], cx
                mov     [rsp+138h+var_A0], cx

loc_1406F351F:                          ; CODE XREF: FsRtlNotifyFilterReportChange+5BA↑j
                mov     [rsp+138h+var_9E], cx
                jmp     short loc_1406F352E
; ---------------------------------------------------------------------------

loc_1406F3529:                          ; CODE XREF: FsRtlNotifyFilterReportChange+58B↑j
                movzx   ecx, [rsp+138h+var_F6]

loc_1406F352E:                          ; CODE XREF: FsRtlNotifyFilterReportChange+5D7↑j
                mov     r9b, sil
                mov     [rsp+138h+var_F3], sil
                mov     edx, esi
                mov     [rsp+138h+var_E4], edx
                test    r8w, r8w
                jnz     loc_1406F362E
                mov     [rsp+138h+var_DC], esi
                mov     [rsp+138h+var_D8], esi
                mov     r10d, 1
                mov     [rsp+138h+var_DC], r10d
                mov     r8d, esi
                mov     [rsp+138h+var_D8], esi
                movzx   ebx, byte ptr [rdi+90h]
                mov     r11, [r11+88h]
                cmp     bl, r10b
                jnz     short loc_1406F35C5

loc_1406F3573:                          ; CODE XREF: FsRtlNotifyFilterReportChange+649↓j
                movzx   eax, word ptr [r11]
                cmp     r8d, eax
                jnb     short loc_1406F359B
                mov     ecx, r8d
                mov     rax, [r11+8]
                cmp     byte ptr [rcx+rax], 5Ch ; '\'
                jnz     short loc_1406F3591
                inc     r10d
                mov     [rsp+138h+var_DC], r10d

loc_1406F3591:                          ; CODE XREF: FsRtlNotifyFilterReportChange+637↑j
                inc     r8d
                mov     [rsp+138h+var_D8], r8d
                jmp     short loc_1406F3573
; ---------------------------------------------------------------------------

loc_1406F359B:                          ; CODE XREF: FsRtlNotifyFilterReportChange+62A↑j
                mov     r8, [rsp+138h+var_98]

loc_1406F35A3:                          ; CODE XREF: FsRtlNotifyFilterReportChange+673↓j
                mov     eax, edx
                cmp     byte ptr [rax+r8], 5Ch ; '\'
                jnz     short loc_1406F35BD
                inc     r9b
                mov     [rsp+138h+var_F3], r9b
                movzx   eax, r9b
                cmp     eax, r10d
                jz      short loc_1406F361A

loc_1406F35BD:                          ; CODE XREF: FsRtlNotifyFilterReportChange+65A↑j
                inc     edx
                mov     [rsp+138h+var_E4], edx
                jmp     short loc_1406F35A3
; ---------------------------------------------------------------------------

loc_1406F35C5:                          ; CODE XREF: FsRtlNotifyFilterReportChange+621↑j
                                        ; FsRtlNotifyFilterReportChange+69E↓j
                movzx   eax, word ptr [r11]
                shr     eax, 1
                cmp     r8d, eax
                jnb     short loc_1406F35F0
                mov     ecx, r8d
                mov     rax, [r11+8]
                cmp     word ptr [rax+rcx*2], 5Ch ; '\'
                jnz     short loc_1406F35E6
                inc     r10d
                mov     [rsp+138h+var_DC], r10d

loc_1406F35E6:                          ; CODE XREF: FsRtlNotifyFilterReportChange+68C↑j
                inc     r8d
                mov     [rsp+138h+var_D8], r8d
                jmp     short loc_1406F35C5
; ---------------------------------------------------------------------------

loc_1406F35F0:                          ; CODE XREF: FsRtlNotifyFilterReportChange+67E↑j
                mov     r8, [rsp+138h+var_98]

loc_1406F35F8:                          ; CODE XREF: FsRtlNotifyFilterReportChange+6DC↓j
                mov     eax, edx
                cmp     word ptr [r8+rax*2], 5Ch ; '\'
                jnz     short loc_1406F3626
                inc     r9b
                mov     [rsp+138h+var_F3], r9b
                movzx   eax, r9b
                cmp     eax, r10d
                jnz     short loc_1406F3626
                imul    edx, ebx
                mov     [rsp+138h+var_E4], edx

loc_1406F361A:                          ; CODE XREF: FsRtlNotifyFilterReportChange+66B↑j
                mov     ebx, 2
                movzx   ecx, [rsp+138h+var_F6]
                jmp     short loc_1406F3636
; ---------------------------------------------------------------------------

loc_1406F3626:                          ; CODE XREF: FsRtlNotifyFilterReportChange+6B0↑j
                                        ; FsRtlNotifyFilterReportChange+6C1↑j
                inc     edx
                mov     [rsp+138h+var_E4], edx
                jmp     short loc_1406F35F8
; ---------------------------------------------------------------------------

loc_1406F362E:                          ; CODE XREF: FsRtlNotifyFilterReportChange+5F0↑j
                mov     r8, [rsp+138h+var_98]

loc_1406F3636:                          ; CODE XREF: FsRtlNotifyFilterReportChange+6D4↑j
                movzx   eax, byte ptr [rdi+90h]
                add     edx, eax
                mov     [rsp+138h+var_E4], edx
                mov     eax, edx
                add     rax, r8
                mov     [rsp+138h+var_B0], rax
                movzx   eax, cx
                sub     ax, dx

loc_1406F3656:                          ; CODE XREF: FsRtlNotifyFilterReportChange+57E↑j
                mov     [rsp+138h+var_E8], eax
                mov     [rsp+138h+var_B8], ax
                mov     [rsp+138h+var_B6], ax
                jmp     loc_1406F310A
; ---------------------------------------------------------------------------

loc_1406F366F:                          ; CODE XREF: FsRtlNotifyFilterReportChange+1A8↑j
                movzx   eax, si
                mov     [rsp+138h+var_E8], eax
                mov     [rsp+138h+var_B8], ax
                jmp     loc_1406F310A
; ---------------------------------------------------------------------------

loc_1406F3683:                          ; CODE XREF: FsRtlNotifyFilterReportChange+1CA↑j
                test    r15b, r15b
                jnz     short loc_1406F36B9
                cmp     byte ptr [rdi+90h], 1
                jnz     short loc_1406F36A4
                lea     rcx, [rsp+138h+var_B8]
                call    RtlxOemStringToUnicodeSize
                lea     r14d, [rax+0Ah]
                jmp     short loc_1406F36AC
; ---------------------------------------------------------------------------

loc_1406F36A4:                          ; CODE XREF: FsRtlNotifyFilterReportChange+73F↑j
                movzx   r14d, ax
                add     r14d, 0Ch

loc_1406F36AC:                          ; CODE XREF: FsRtlNotifyFilterReportChange+752↑j
                mov     [rsp+138h+var_F0], r14d
                add     r14d, ebx
                mov     [rsp+138h+var_F0], r14d

loc_1406F36B9:                          ; CODE XREF: FsRtlNotifyFilterReportChange+736↑j
                cmp     [rsp+138h+var_88], rsi
                jnz     short loc_1406F36F9
                movzx   ecx, [rsp+138h+arg_18]
                mov     eax, ecx
                add     rax, [r12+8]
                mov     [rsp+138h+var_88], rax
                movzx   eax, word ptr [r12]
                sub     ax, cx
                mov     [rsp+138h+var_EC], ax
                mov     [rsp+138h+var_90], ax
                mov     [rsp+138h+var_8E], ax
                jmp     short loc_1406F36FE
; ---------------------------------------------------------------------------

loc_1406F36F9:                          ; CODE XREF: FsRtlNotifyFilterReportChange+771↑j
                movzx   eax, [rsp+138h+var_EC]

loc_1406F36FE:                          ; CODE XREF: FsRtlNotifyFilterReportChange+7A7↑j
                cmp     byte ptr [rdi+90h], 1
                jnz     short loc_1406F3719
                lea     rcx, [rsp+138h+var_90]
                call    RtlxOemStringToUnicodeSize
                add     eax, 0FFFFFFFEh
                jmp     short loc_1406F371C
; ---------------------------------------------------------------------------

loc_1406F3719:                          ; CODE XREF: FsRtlNotifyFilterReportChange+7B5↑j
                movzx   eax, ax

loc_1406F371C:                          ; CODE XREF: FsRtlNotifyFilterReportChange+7C7↑j
                add     r14d, eax
                mov     [rsp+138h+var_F0], r14d
                mov     rax, [rsp+138h+arg_20]
                test    rax, rax
                jz      loc_1406F3135
                mov     ebx, r14d
                cmp     byte ptr [rdi+90h], 2
                jnz     short loc_1406F3751
                movzx   r14d, word ptr [rax]
                add     r14d, 2
                add     r14d, ebx
                jmp     loc_1406F3130
; ---------------------------------------------------------------------------

loc_1406F3751:                          ; CODE XREF: FsRtlNotifyFilterReportChange+7EF↑j
                mov     rcx, rax
                call    RtlxOemStringToUnicodeSize
                add     r14d, eax
                jmp     loc_1406F3130
; ---------------------------------------------------------------------------

loc_1406F3761:                          ; CODE XREF: FsRtlNotifyFilterReportChange+226↑j
                mov     ecx, [rdi+6Ch]
                lea     rdx, [rax+rcx]
                mov     [rsp+138h+var_D0], rdx
                mov     eax, r15d
                sub     eax, ecx
                mov     [rdx], eax
                mov     [rdi+6Ch], r15d
                mov     ebx, r15d
                add     rbx, [rdi+58h]
                mov     [rsp+138h+var_D0], rbx
                jmp     loc_1406F31A3
; ---------------------------------------------------------------------------

loc_1406F3789:                          ; CODE XREF: FsRtlNotifyFilterReportChange+240↑j
                mov     rbx, rax
                mov     [rsp+138h+var_D0], rax
                mov     [rdi+58h], rax
                jmp     short loc_1406F37CE
; ---------------------------------------------------------------------------

loc_1406F3797:                          ; CODE XREF: FsRtlNotifyFilterReportChange+24D↑j
                test    byte ptr [rcx+0Ah], 5
                jz      short loc_1406F37A8
                mov     rbx, [rcx+18h]
                mov     [rsp+138h+var_D0], rbx
                jmp     short loc_1406F37CA
; ---------------------------------------------------------------------------

loc_1406F37A8:                          ; CODE XREF: FsRtlNotifyFilterReportChange+84B↑j
                mov     [rsp+138h+var_110], 40000010h
                mov     dword ptr [rsp+138h+var_118], esi
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                mov     rbx, rax
                mov     [rsp+138h+var_D0], rax

loc_1406F37CA:                          ; CODE XREF: FsRtlNotifyFilterReportChange+856↑j
                mov     [rdi+58h], rbx

loc_1406F37CE:                          ; CODE XREF: FsRtlNotifyFilterReportChange+845↑j
                mov     [rdi+64h], r13d
                jmp     loc_1406F31A3
; ---------------------------------------------------------------------------

loc_1406F37D7:                          ; CODE XREF: FsRtlNotifyFilterReportChange+257↑j
                mov     r13d, 2
                jmp     loc_1406F326C
; ---------------------------------------------------------------------------

loc_1406F37E2:                          ; CODE XREF: FsRtlNotifyFilterReportChange+327↑j
                sub     r15d, eax
                mov     r8d, r15d
                mov     rcx, rax
                add     rcx, [rdi+58h]
                xor     edx, edx
                call    memset
                jmp     loc_1406F327D
; ---------------------------------------------------------------------------

loc_1406F37FB:                          ; CODE XREF: FsRtlNotifyFilterReportChange+36E↑j
                or      [rdi+48h], r13w
                jmp     loc_1406F32C8
; ---------------------------------------------------------------------------

loc_1406F3805:                          ; CODE XREF: FsRtlNotifyFilterReportChange+1FC↑j
                                        ; FsRtlNotifyFilterReportChange+211↑j
                mov     r13d, 2
                or      [rdi+48h], r13w
                movzx   eax, word ptr [rdi+48h]
                mov     rbx, rdi
                jmp     loc_1406F32D1
; ---------------------------------------------------------------------------

loc_1406F381C:                          ; CODE XREF: FsRtlNotifyFilterReportChange+384↑j
                cmp     [rdi+58h], rsi
                jz      loc_1406F32DA
                cmp     [rdi+50h], rsi
                jz      short loc_1406F3843
                mov     edx, [rdi+64h]
                mov     rcx, [rdi+78h]
                call    PsReturnProcessPagedPoolQuota
                xor     edx, edx
                mov     rcx, [rdi+50h]
                call    ExFreePoolWithTag

loc_1406F3843:                          ; CODE XREF: FsRtlNotifyFilterReportChange+8DA↑j
                mov     [rdi+58h], rsi
                mov     [rdi+50h], rsi
                and     qword ptr [rdi+68h], 0
                mov     [rdi+64h], esi
                jmp     loc_1406F32DA
; ---------------------------------------------------------------------------

loc_1406F3858:                          ; CODE XREF: FsRtlNotifyFilterReportChange+159↑j
                mov     rbx, rdi
                jmp     loc_1406F32EB
; ---------------------------------------------------------------------------

loc_1406F3860:                          ; CODE XREF: FsRtlNotifyFilterReportChange+14C↑j
                mov     rbx, rdi
                jmp     loc_1406F32F0
; ---------------------------------------------------------------------------

loc_1406F3868:                          ; CODE XREF: FsRtlNotifyFilterReportChange+3AC↑j
                or      ax, 8
                mov     [rbx+48h], ax
                jmp     loc_1406F3321
;   } // starts at 1406F2FFD
; ---------------------------------------------------------------------------

loc_1406F3875:                          ; CODE XREF: FsRtlNotifyFilterReportChange+EB↑j
                                        ; DATA XREF: .rdata:000000014007FB08↑o
                mov     rdi, [rsp+138h+arg_0]
                add     dword ptr [rdi+40h], 0FFFFFFFFh
                jnz     short loc_1406F388F
                mov     [rdi+38h], rsi
                mov     rcx, rdi
                call    ExReleaseFastMutexUnsafe

loc_1406F388F:                          ; CODE XREF: FsRtlNotifyFilterReportChange+70↑j
                                        ; FsRtlNotifyFilterReportChange+931↑j
                add     rsp, 100h
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
; } // starts at 1406F2F50
FsRtlNotifyFilterReportChange endp

algn_1406F38A3:                         ; DATA XREF: .pdata:0000000140104CB8↑o
                align 10h
; Exported entry 515. FsRtlNotifyFilterChangeDirectory

; =============== S U B R O U T I N E =======================================


                public FsRtlNotifyFilterChangeDirectory
FsRtlNotifyFilterChangeDirectory proc near
                                        ; CODE XREF: FsRtlNotifyChangeDirectory+48↓p
                                        ; FsRtlNotifyFullChangeDirectory+51↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

; FUNCTION CHUNK AT 00000001407E8016 SIZE 00000053 BYTES
; FUNCTION CHUNK AT 0000000140825AA2 SIZE 00000018 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r12, r9
                mov     r9, r8
                mov     r13, rdx
                mov     r15, rcx
                mov     rdi, [rsp+78h+arg_38]
                xor     esi, esi
                cmp     [rdx], rdx
                jz      loc_1406F3BF5

loc_1406F38ED:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+348↓j
                mov     rbx, gs:188h
                cmp     rbx, [rcx+38h]
                jz      short loc_1406F390D
                call    ExAcquireFastMutexUnsafe
                mov     [r15+38h], rbx
                mov     r9, [rsp+78h+arg_10]

loc_1406F390D:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+4A↑j
                mov     r10d, 1
                add     [r15+40h], r10d

loc_1406F3917:                          ; DATA XREF: .rdata:000000014007FB50↑o
;   __try { // __finally(loc_1407E8016)
                test    rdi, rdi
                jz      loc_1406F3AE3
                mov     r14, [rdi+0B8h]
                mov     [rsp+78h+arg_8], r14
                mov     [rdi+30h], esi
                mov     [rdi+38h], rsi
                mov     rax, [r14+30h]
                test    dword ptr [rax+50h], 4000h
                jnz     loc_1406F3AF3
                mov     rdx, r9
                mov     rcx, r13
                call    sub_1406F4754
                mov     rbx, rax
                mov     [rsp+78h+var_48], rax
                test    rax, rax
                jz      short loc_1406F39D5
                movzx   eax, word ptr [rax+48h]
                test    al, 4
                jnz     loc_1406F3AF3
                test    al, 20h
                jnz     loc_1406F3B77
                movzx   edx, ax
                and     dx, 8
                lea     ecx, [r10+1]
                test    cl, al
                jnz     loc_1406F3B84

loc_1406F3986:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2D7↓j
                mov     r8d, [rbx+68h]
                test    r8d, r8d
                jnz     loc_1406F3B92

loc_1406F3993:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+22E↓j
                                        ; FsRtlNotifyFilterChangeDirectory+2E5↓j
                mov     [rdi+38h], rbx
                or      [r14+3], r10b
                lea     rax, [rdi+0A8h]
                lea     rcx, [rbx+30h]
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_1406F3BB4
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                lock add [rbx+70h], r10d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033E2D8
                jmp     loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F39D5:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+AD↑j
                mov     edx, 98h
                mov     ecx, 11h
                mov     r8d, 4E725346h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+78h+var_48], rax
                xor     edx, edx
                mov     r8d, 98h
                mov     rcx, rax
                call    memset
                mov     [rbx], r15
                mov     rax, [rsp+78h+arg_10]
                mov     [rbx+8], rax
                mov     rax, [r14+30h]
                mov     rcx, [rax+18h]
                mov     [rbx+80h], rcx
                mov     rax, [rsp+78h+arg_40]
                mov     [rbx+10h], rax
                mov     rax, [rsp+78h+arg_48]
                mov     [rbx+18h], rax
                mov     [rsp+78h+arg_48], rsi
                mov     rax, [rsp+78h+arg_50]
                mov     [rbx+40h], rax
                mov     [rbx+88h], r12
                lea     rax, [rbx+30h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     r10d, 1
                cmp     [rsp+78h+arg_20], sil
                jnz     loc_1406F3B2E

loc_1406F3A72:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+283↓j
                test    r12, r12
                jnz     loc_1406F3B38
                mov     [rbx+90h], r10b

loc_1406F3A82:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2B7↓j
                                        ; FsRtlNotifyFilterChangeDirectory+2C2↓j
                mov     eax, [rsp+78h+arg_30]
                mov     [rbx+4Ch], eax
                cmp     [rsp+78h+arg_28], sil
                jnz     short loc_1406F3A9D
                mov     eax, [r14+8]
                mov     [rbx+60h], eax

loc_1406F3A9D:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+1E4↑j
                mov     rax, [rdi+98h]
                mov     [rsp+78h+var_40], rax
                mov     rax, [rax+220h]
                mov     [rbx+78h], rax
                lea     rax, [rbx+20h]
                mov     rcx, [r13+8]
                cmp     [rcx], r13
                jnz     loc_1406F3BB4
                mov     [rax], r13
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [r13+8], rax
                mov     [rbx+70h], r10d
                mov     r14, [rdi+0B8h]
                jmp     loc_1406F3993
; ---------------------------------------------------------------------------

loc_1406F3AE3:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+6A↑j
                mov     rdx, r9
                mov     rcx, r13
                call    sub_14088EBE0
                jmp     loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F3AF3:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+91↑j
                                        ; FsRtlNotifyFilterChangeDirectory+B5↑j
                or      [r14+3], r10b
                mov     dword ptr [rdi+30h], 10Bh
                jmp     short loc_1406F3B1E
; ---------------------------------------------------------------------------

loc_1406F3B00:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2DD↓j
                mov     ecx, 0FFFDh
                and     ax, cx
                mov     [rbx+48h], ax
                mov     rax, [rdi+0B8h]
                or      [rax+3], r10b
                mov     dword ptr [rdi+30h], 10Ch

loc_1406F3B1E:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+24E↑j
                                        ; FsRtlNotifyFilterChangeDirectory+2D2↓j
                mov     dl, r10b
                mov     rcx, rdi
                call    IofCompleteRequest
                jmp     loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F3B2E:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+1BC↑j
                or      [rbx+48h], r10w
                jmp     loc_1406F3A72
; ---------------------------------------------------------------------------

loc_1406F3B38:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+1C5↑j
                mov     ecx, 2
                cmp     [r12], cx
                jb      short loc_1406F3B57
                mov     rax, [r12+8]
                cmp     [rax+1], sil
                jnz     short loc_1406F3B57
                mov     [rbx+90h], cl
                jmp     short loc_1406F3B62
; ---------------------------------------------------------------------------

loc_1406F3B57:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+292↑j
                                        ; FsRtlNotifyFilterChangeDirectory+29D↑j
                mov     [rbx+90h], r10b
                movzx   ecx, r10w

loc_1406F3B62:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2A5↑j
                cmp     [r12], cx
                jnz     loc_1406F3A82
                or      word ptr [rbx+48h], 10h
                jmp     loc_1406F3A82
; ---------------------------------------------------------------------------

loc_1406F3B77:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+BD↑j
                or      [r14+3], r10b
                mov     dword ptr [rdi+30h], 0C0000056h
                jmp     short loc_1406F3B1E
; ---------------------------------------------------------------------------

loc_1406F3B84:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+D0↑j
                test    dx, dx
                jnz     loc_1406F3986
                jmp     loc_1406F3B00
; ---------------------------------------------------------------------------

loc_1406F3B92:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+DD↑j
                test    dx, dx
                jnz     loc_1406F3993
                and     qword ptr [rbx+68h], 0
                mov     [rsp+78h+var_58], esi
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406F4230
                jmp     short loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F3BB4:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+FD↑j
                                        ; FsRtlNotifyFilterChangeDirectory+20F↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
;   } // starts at 1406F3917
; ---------------------------------------------------------------------------

loc_1406F3BBB:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+120↑j
                                        ; FsRtlNotifyFilterChangeDirectory+23E↑j ...
                add     dword ptr [r15+40h], 0FFFFFFFFh
                jnz     short loc_1406F3BCE
                mov     [r15+38h], rsi
                mov     rcx, r15
                call    ExReleaseFastMutexUnsafe

loc_1406F3BCE:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+310↑j
                mov     rbx, [rsp+78h+arg_48]
                test    rbx, rbx
                jz      short loc_1406F3BE4
                test    r12, r12
                jnz     loc_140825AA2

loc_1406F3BE4:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+329↑j
                                        ; FsRtlNotifyFilterChangeDirectory+34E↓j ...
                add     rsp, 40h
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
; ---------------------------------------------------------------------------

loc_1406F3BF5:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+37↑j
                test    rdi, rdi
                jnz     loc_1406F38ED
                jmp     short loc_1406F3BE4
; } // starts at 1406F38B0
FsRtlNotifyFilterChangeDirectory endp

; ---------------------------------------------------------------------------
byte_1406F3C00  db 10h dup(0CCh)        ; DATA XREF: .rdata:000000014007FB64↑o
                                        ; .pdata:0000000140104CC4↑o
; Exported entry 519. FsRtlNotifyFilterReportChangeLiteEx

; =============== S U B R O U T I N E =======================================


                public FsRtlNotifyFilterReportChangeLiteEx
FsRtlNotifyFilterReportChangeLiteEx proc near
                                        ; CODE XREF: FsRtlNotifyFilterReportChangeLite+45↓p
                                        ; DATA XREF: .rdata:000000014007FBD8↑o ...

var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = byte ptr -0A8h
var_A7          = byte ptr -0A7h
var_A6          = byte ptr -0A6h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = byte ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 00000001407E806F SIZE 00000067 BYTES
; FUNCTION CHUNK AT 0000000140825ABA SIZE 00000031 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     r13, r9
                mov     rdi, rdx
                mov     r15, rcx
                xor     esi, esi
                mov     [rsp+0D8h+var_90], esi
                cmp     [rdx], rdx
                jnz     short loc_1406F3C5D

loc_1406F3C49:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+5D↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+567↓j ...
                add     rsp, 0A0h
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
; ---------------------------------------------------------------------------

loc_1406F3C5D:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+37↑j
                mov     rax, [rsp+0D8h+arg_48]
                test    rax, rax
                jz      short loc_1406F3C6F
                cmp     dword ptr [rax], 50h ; 'P'
                jb      short loc_1406F3C49

loc_1406F3C6F:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+58↑j
                cmp     [rcx], rsi
                jz      loc_140825ABA

loc_1406F3C78:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+131EC5↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+131ED6↓j
                mov     rbx, gs:188h
                mov     rax, [r15]
                cmp     rbx, [rax+38h]
                jz      short loc_1406F3C9C
                mov     rcx, rax
                call    ExAcquireFastMutexUnsafe
                mov     rax, [r15]
                mov     [rax+38h], rbx
                mov     rax, [r15]

loc_1406F3C9C:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+78↑j
                inc     dword ptr [rax+40h]

loc_1406F3C9F:                          ; DATA XREF: .rdata:000000014007FBC4↑o
;   __try { // __finally(loc_1407E80A2)
                mov     r12, [rdi]

loc_1406F3CA2:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+EB↓j
                mov     [rsp+0D8h+var_68], r12
                mov     [rsp+0D8h+var_88], r12
                cmp     r12, rdi
                jz      loc_1406F416B
                lea     rdi, [r12-20h]
                mov     [rsp+0D8h+var_70], rdi
                mov     [rsp+0D8h+var_50], rdi
                lea     rbx, [rdi+48h]
                movzx   ecx, word ptr [rbx]
                mov     r14b, cl
                shr     r14b, 7
                and     r14b, 1
                mov     [rsp+0D8h+var_A7], r14b
                mov     [rsp+0D8h+var_A6], r14b
                mov     eax, [rdi+4Ch]
                test    [rsp+0D8h+arg_20], eax
                jnz     short loc_1406F3CFD

loc_1406F3CEF:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+FA↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx:loc_1406F402D↓j ...
                mov     r12, [r12]
                mov     rdi, [rsp+0D8h+arg_8]
                jmp     short loc_1406F3CA2
; ---------------------------------------------------------------------------

loc_1406F3CFD:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+DD↑j
                test    [rsp+0D8h+arg_40], 1
                jnz     short loc_1406F3D19
                test    cl, 1
                jz      short loc_1406F3CEF
                mov     rax, [rdi+10h]
                test    rax, rax
                jnz     loc_1406F40D7

loc_1406F3D19:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+F5↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4E4↓j
                mov     rax, [rdi+40h]
                test    rax, rax
                jz      short loc_1406F3D33
                mov     rdx, [rsp+0D8h+arg_38]
                test    rdx, rdx
                jnz     loc_1406F40F9

loc_1406F3D33:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+110↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4FA↓j
                movzx   ecx, word ptr [rbx]
                mov     edx, 2
                test    dl, cl
                jnz     loc_1406F3FFE
                mov     r12d, [rdi+60h]
                test    r12d, r12d
                jz      loc_1406F4161
                mov     [rsp+0D8h+var_A4], esi
                mov     rdx, rsi
                mov     [rsp+0D8h+var_58], rdx
                mov     eax, [rdi+64h]
                test    eax, eax
                jnz     loc_1406F4086
                lea     rax, [rdi+30h]
                mov     r8, [rax]
                cmp     r8, rax
                jz      short loc_1406F3D90
                lea     rdx, [r8-0A8h]
                mov     [rsp+0D8h+var_58], rdx
                mov     rax, [rdx+0B8h]
                mov     r12d, [rax+8]

loc_1406F3D90:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+164↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+479↓j
                mov     [rsp+0D8h+var_A4], r12d
                mov     al, r14b
                neg     al
                sbb     r14d, r14d
                and     r14d, 48h
                add     r14d, 0Ch
                mov     [rsp+0D8h+var_A0], r14d
                mov     rax, [rsp+0D8h+arg_10]
                movzx   eax, word ptr [rax]
                add     r14d, eax
                mov     [rsp+0D8h+var_A0], r14d
                test    r13, r13
                jnz     loc_1406F410F

loc_1406F3DC6:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+510↓j
                mov     r13d, [rdi+68h]
                add     r13d, 3
                and     r13d, 0FFFFFFFCh
                mov     [rsp+0D8h+var_80], r13d
                cmp     r14d, r12d
                ja      loc_1406F4032
                lea     eax, [r14+r13]
                cmp     eax, r12d
                ja      loc_1406F4032
                mov     rbx, rsi
                mov     [rsp+0D8h+var_98], rbx
                mov     rax, [rdi+58h]
                test    rax, rax
                jnz     loc_1406F408E
                test    rdx, rdx
                jz      short loc_1406F3E21
                mov     rax, [rdx+18h]
                test    rax, rax
                jnz     loc_1406F40C2
                mov     rcx, [rdx+8]
                test    rcx, rcx
                jnz     loc_1406F4125

loc_1406F3E21:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1F5↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4A1↓j ...
                cmp     [rdi+58h], rsi
                jnz     loc_1406F407C
                mov     [rsp+0D8h+var_A8], sil

loc_1406F3E30:                          ; DATA XREF: .rdata:000000014007FBA4↑o
;     __try { // __except at loc_1406F3E75
                mov     r8d, r12d
                mov     edx, 1
                mov     rcx, [rdi+78h]
                call    PsChargePoolQuota
                mov     [rsp+0D8h+var_A8], 1
                mov     r8d, 4E725346h
                mov     edx, r12d
                mov     ecx, 11h
                call    ExAllocatePoolWithTag
                mov     [rdi+58h], rax
                mov     [rdi+50h], rax
                mov     [rdi+64h], r12d
                mov     rbx, [rdi+58h]
                mov     [rsp+0D8h+var_98], rbx
                mov     r12, [rsp+0D8h+var_88]
                jmp     short loc_1406F3EB9
;     } // starts at 1406F3E30
; ---------------------------------------------------------------------------

loc_1406F3E75:                          ; DATA XREF: .rdata:000000014007FBA4↑o
;   __except(loc_1407E806F) // owned by 1406F3E30
                mov     rdi, [rsp+0D8h+var_70]
                cmp     [rsp+0D8h+var_A8], 0
                jz      short loc_1406F3E8E
                mov     edx, [rsp+0D8h+var_A4]
                mov     rcx, [rdi+78h]
                call    PsReturnProcessPagedPoolQuota

loc_1406F3E8E:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+26F↑j
                or      word ptr [rdi+48h], 2
                xor     esi, esi
                mov     r15, [rsp+0D8h+arg_0]
                mov     r12, [rsp+0D8h+var_68]
                mov     r14d, [rsp+0D8h+var_A0]
                mov     r13d, [rsp+0D8h+var_80]
                mov     al, [rsp+0D8h+var_A6]
                mov     [rsp+0D8h+var_A7], al
                mov     rbx, [rsp+0D8h+var_98]

loc_1406F3EB9:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+263↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+471↓j
                                        ; DATA XREF: ...
;     __try { // __except at loc_1406F3FC7
                test    rbx, rbx
                jz      loc_1406F3FC0
                mov     ecx, [rdi+68h]
                cmp     r13d, ecx
                ja      short loc_1406F3F1D

loc_1406F3ECA:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+31E↓j
                mov     [rbx], esi
                mov     eax, [rsp+0D8h+arg_28]
                mov     [rbx+4], eax
                cmp     [rsp+0D8h+var_A7], sil
                jnz     short loc_1406F3F30
                lea     eax, [r14-0Ch]
                mov     [rbx+8], eax
                add     rbx, 0Ch

loc_1406F3EE8:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+37F↓j
                mov     rax, [rsp+0D8h+arg_10]
                movzx   r8d, word ptr [rax]
                mov     rdx, [rax+8]
                mov     rcx, rbx
                call    memmove
                mov     rdx, [rsp+0D8h+arg_18]
                test    rdx, rdx
                jnz     loc_1406F3F94

loc_1406F3F11:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3AB↓j
                lea     eax, [r14+r13]
                mov     [rdi+68h], eax
                jmp     loc_1406F3FC0
; ---------------------------------------------------------------------------

loc_1406F3F1D:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2B8↑j
                mov     r8d, r13d
                sub     r8d, ecx
                add     rcx, [rdi+58h]
                xor     edx, edx
                call    memset
                jmp     short loc_1406F3ECA
; ---------------------------------------------------------------------------

loc_1406F3F30:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2CB↑j
                mov     rcx, [rsp+0D8h+arg_48]
                mov     rax, [rcx+8]
                mov     [rbx+8], rax
                mov     rax, [rcx+10h]
                mov     [rbx+10h], rax
                mov     rax, [rcx+18h]
                mov     [rbx+18h], rax
                mov     rax, [rcx+20h]
                mov     [rbx+20h], rax
                mov     rax, [rcx+28h]
                mov     [rbx+28h], rax
                mov     rax, [rcx+30h]
                mov     [rbx+30h], rax
                mov     eax, [rcx+38h]
                mov     [rbx+38h], eax
                mov     eax, [rcx+3Ch]
                mov     [rbx+3Ch], eax
                mov     rax, [rcx+40h]
                mov     [rbx+40h], rax
                mov     rax, [rcx+48h]
                mov     [rbx+48h], rax
                lea     eax, [r14-54h]
                mov     [rbx+50h], eax
                add     rbx, 54h ; 'T'
                jmp     loc_1406F3EE8
; ---------------------------------------------------------------------------

loc_1406F3F94:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2FB↑j
                mov     rax, [rsp+0D8h+arg_10]
                movzx   eax, word ptr [rax]
                add     rbx, rax
                mov     eax, 3Ah ; ':'
                mov     [rbx], ax
                lea     rcx, [rbx+2]
                movzx   r8d, word ptr [rdx]
                mov     rdx, [rdx+8]
                call    memmove
                jmp     loc_1406F3F11
; ---------------------------------------------------------------------------

loc_1406F3FC0:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2AC↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+308↑j
                mov     edx, 2
                jmp     short loc_1406F3FE3
;     } // starts at 1406F3EB9
; ---------------------------------------------------------------------------

loc_1406F3FC7:                          ; DATA XREF: .rdata:000000014007FBB4↑o
;   __except(1) // owned by 1406F3EB9
                mov     rdi, [rsp+0D8h+var_70]
                or      word ptr [rdi+48h], 2
                xor     esi, esi
                lea     edx, [rsi+2]
                mov     r15, [rsp+0D8h+arg_0]
                mov     r12, [rsp+0D8h+var_68]

loc_1406F3FE3:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3B5↑j
                mov     rbx, [rsp+0D8h+var_50]
                add     rbx, 48h ; 'H'
                movzx   ecx, word ptr [rbx]

loc_1406F3FF2:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+432↓j
                test    dl, cl
                jnz     short loc_1406F4044

loc_1406F3FF6:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+438↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+467↓j
                mov     r13, [rsp+0D8h+arg_18]

loc_1406F3FFE:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+12D↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+556↓j
                movzx   eax, word ptr [rbx]
                cmp     [rsp+0D8h+arg_28], 4
                jz      loc_1406F40B6
                mov     ecx, 0FFF7h
                and     ax, cx
                mov     [rbx], ax
                lea     rax, [rdi+30h]
                cmp     [rax], rax
                jz      short loc_1406F402D
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406F4194

loc_1406F402D:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+411↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4AD↓j
                jmp     loc_1406F3CEF
; ---------------------------------------------------------------------------

loc_1406F4032:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1CA↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+1D7↑j
                mov     edx, 2
                or      cx, dx
                mov     [rbx], cx
                mov     r12, [rsp+0D8h+var_88]
                jmp     short loc_1406F3FF2
; ---------------------------------------------------------------------------

loc_1406F4044:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3E4↑j
                cmp     [rdi+58h], rsi
                jz      short loc_1406F3FF6
                cmp     [rdi+50h], rsi
                jz      short loc_1406F4067
                mov     edx, [rdi+64h]
                mov     rcx, [rdi+78h]
                call    PsReturnProcessPagedPoolQuota
                xor     edx, edx
                mov     rcx, [rdi+50h]
                call    ExFreePoolWithTag

loc_1406F4067:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+43E↑j
                mov     [rdi+58h], rsi
                mov     [rdi+50h], rsi
                and     qword ptr [rdi+68h], 0
                mov     [rdi+64h], esi
                jmp     loc_1406F3FF6
; ---------------------------------------------------------------------------

loc_1406F407C:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+215↑j
                mov     r12, [rsp+0D8h+var_88]
                jmp     loc_1406F3EB9
; ---------------------------------------------------------------------------

loc_1406F4086:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+154↑j
                mov     r12d, eax
                jmp     loc_1406F3D90
; ---------------------------------------------------------------------------

loc_1406F408E:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1EC↑j
                mov     ecx, [rdi+6Ch]
                lea     rdx, [rax+rcx]
                mov     [rsp+0D8h+var_98], rdx
                mov     eax, r13d
                sub     eax, ecx
                mov     [rdx], eax
                mov     [rdi+6Ch], r13d
                mov     ebx, r13d
                add     rbx, [rdi+58h]
                mov     [rsp+0D8h+var_98], rbx
                jmp     loc_1406F3E21
; ---------------------------------------------------------------------------

loc_1406F40B6:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3F9↑j
                or      ax, 8
                mov     [rbx], ax
                jmp     loc_1406F402D
; ---------------------------------------------------------------------------

loc_1406F40C2:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1FE↑j
                mov     rbx, rax
                mov     [rsp+0D8h+var_98], rax
                mov     [rdi+58h], rax

loc_1406F40CE:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+54C↓j
                mov     [rdi+64h], r12d
                jmp     loc_1406F3E21
; ---------------------------------------------------------------------------

loc_1406F40D7:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+103↑j
                mov     r8, [rdi+18h]
                mov     rdx, [rsp+0D8h+arg_30]
                mov     rcx, [rdi+8]
                call    sub_1404079D0
                test    al, al
                jz      loc_1406F3CEF
                jmp     loc_1406F3D19
; ---------------------------------------------------------------------------

loc_1406F40F9:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+11D↑j
                mov     rcx, [rdi+8]
                call    sub_1404079D0
                test    al, al
                jz      loc_1406F3CEF
                jmp     loc_1406F3D33
; ---------------------------------------------------------------------------

loc_1406F410F:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1B0↑j
                movzx   eax, word ptr [r13+0]
                add     r14d, 2
                add     r14d, eax
                mov     [rsp+0D8h+var_A0], r14d
                jmp     loc_1406F3DC6
; ---------------------------------------------------------------------------

loc_1406F4125:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+20B↑j
                test    byte ptr [rcx+0Ah], 5
                jz      short loc_1406F4136
                mov     rbx, [rcx+18h]
                mov     [rsp+0D8h+var_98], rbx
                jmp     short loc_1406F4158
; ---------------------------------------------------------------------------

loc_1406F4136:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+519↑j
                mov     [rsp+0D8h+var_B0], 40000010h
                mov     [rsp+0D8h+var_B8], esi
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                mov     rbx, rax
                mov     [rsp+0D8h+var_98], rax

loc_1406F4158:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+524↑j
                mov     [rdi+58h], rbx
                jmp     loc_1406F40CE
; ---------------------------------------------------------------------------

loc_1406F4161:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+13A↑j
                mov     r12, [rsp+0D8h+var_88]
                jmp     loc_1406F3FFE
;   } // starts at 1406F3C9F
; ---------------------------------------------------------------------------

loc_1406F416B:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+9F↑j
                                        ; DATA XREF: .rdata:000000014007FBC4↑o
                mov     rax, [r15]
                dec     dword ptr [rax+40h]
                mov     rax, [r15]
                cmp     [rax+40h], esi
                jnz     loc_1406F3C49
                mov     [rax+38h], rsi
                mov     rcx, [r15]
                call    ExReleaseFastMutexUnsafe
                jmp     loc_1406F3C49
; } // starts at 1406F3C10
FsRtlNotifyFilterReportChangeLiteEx endp

; ---------------------------------------------------------------------------
byte_1406F418E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007FBD8↑o
                                        ; .pdata:0000000140104CD0↑o

; =============== S U B R O U T I N E =======================================


sub_1406F4194   proc near               ; CODE XREF: FsRtlNotifyFilterReportChange+3CC↑p
                                        ; FsRtlNotifyFilterReportChangeLiteEx+418↑p ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     ebp, [rcx+68h]
                lea     rbx, [rcx+30h]
                and     dword ptr [rcx+68h], 0
                mov     eax, 0FFFDh
                and     [rcx+48h], ax
                mov     esi, edx
                and     dword ptr [rcx+6Ch], 0
                mov     rdi, rcx
                mov     rax, [rbx]

loc_1406F41C8:                          ; CODE XREF: sub_1406F4194+8D↓j
                cmp     [rax+8], rbx
                jnz     short loc_1406F4223
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     short loc_1406F4223
                mov     [rbx], rcx
                mov     r9d, esi
                mov     [rcx+8], rbx
                mov     r8d, ebp
                and     qword ptr [rax], 0
                lea     rcx, [rax-0A8h]
                mov     rdx, rdi
                mov     [rsp+38h+var_18], 1
                call    sub_1406F4230
                test    esi, esi
                jnz     short loc_1406F4219

loc_1406F4203:                          ; CODE XREF: sub_1406F4194+8B↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F4219:                          ; CODE XREF: sub_1406F4194+6D↑j
                mov     rax, [rbx]
                cmp     rax, rbx
                jz      short loc_1406F4203
                jmp     short loc_1406F41C8
; ---------------------------------------------------------------------------

loc_1406F4223:                          ; CODE XREF: sub_1406F4194+38↑j
                                        ; sub_1406F4194+41↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1406F4194   endp

; ---------------------------------------------------------------------------
algn_1406F422A:                         ; DATA XREF: .pdata:0000000140104CDC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406F4230   proc near               ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2FD↑p
                                        ; sub_1406F4194+66↑p ...

var_38          = dword ptr -38h
var_30          = dword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 38h
                mov     esi, r9d
                mov     r14d, r8d
                mov     r15, rdx
                mov     rdi, rcx
                call    sub_14033E2D8
                test    al, al
                jz      loc_1406F437C

loc_1406F425D:                          ; CODE XREF: sub_1406F4230+154↓j
                test    esi, esi
                jnz     loc_1406F4351
                mov     rax, [rdi+0B8h]
                test    r14d, r14d
                jz      loc_1406F4375
                cmp     [rax+8], r14d
                jb      loc_1406F4375
                mov     rdx, [r15+50h]
                test    rdx, rdx
                jz      loc_1406F4345

loc_1406F428C:                          ; DATA XREF: .rdata:000000014007FC30↑o
;   __try { // __except at loc_1406F4309
                mov     rcx, [rdi+18h]
                test    rcx, rcx
                jnz     short loc_1406F42B7
                mov     rcx, [rdi+8]
                test    rcx, rcx
                jnz     short loc_1406F42C1
                mov     al, [rax+3]
                test    al, 1
                jz      short loc_1406F42B3
                or      dword ptr [rdi+10h], 70h
                mov     rax, [r15+50h]
                mov     [rdi+18h], rax
                jmp     short loc_1406F4307
; ---------------------------------------------------------------------------

loc_1406F42B3:                          ; CODE XREF: sub_1406F4230+73↑j
                mov     rcx, [rdi+70h]

loc_1406F42B7:                          ; CODE XREF: sub_1406F4230+63↑j
                                        ; sub_1406F4230+C4↓j
                mov     r8, r14
                call    memmove
                jmp     short loc_1406F4307
; ---------------------------------------------------------------------------

loc_1406F42C1:                          ; CODE XREF: sub_1406F4230+6C↑j
                test    byte ptr [rcx+0Ah], 5
                jz      short loc_1406F42CD
                mov     rax, [rcx+18h]
                jmp     short loc_1406F42E8
; ---------------------------------------------------------------------------

loc_1406F42CD:                          ; CODE XREF: sub_1406F4230+95↑j
                mov     [rsp+58h+var_30], 40000010h
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache

loc_1406F42E8:                          ; CODE XREF: sub_1406F4230+9B↑j
                test    rax, rax
                jz      short loc_1406F42F6
                mov     rdx, [r15+50h]
                mov     rcx, rax
                jmp     short loc_1406F42B7
; ---------------------------------------------------------------------------

loc_1406F42F6:                          ; CODE XREF: sub_1406F4230+BB↑j
                mov     esi, 10Ch
                mov     [rsp+58h+arg_18], esi
                xor     r14d, r14d
                mov     [rsp+58h+arg_10], r14d

loc_1406F4307:                          ; CODE XREF: sub_1406F4230+81↑j
                                        ; sub_1406F4230+8F↑j
                jmp     short loc_1406F4324
;   } // starts at 1406F428C
; ---------------------------------------------------------------------------

loc_1406F4309:                          ; DATA XREF: .rdata:000000014007FC30↑o
;   __except(1) // owned by 1406F428C
                mov     esi, 10Ch
                mov     [rsp+58h+arg_18], esi
                xor     r14d, r14d
                mov     [rsp+58h+arg_10], r14d
                mov     r15, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_0]

loc_1406F4324:                          ; CODE XREF: sub_1406F4230:loc_1406F4307↑j
                mov     edx, [r15+64h]
                mov     rcx, [r15+78h]
                call    PsReturnProcessPagedPoolQuota
                mov     rcx, [r15+50h]
                cmp     rcx, [rdi+18h]
                jnz     short loc_1406F438C

loc_1406F433B:                          ; CODE XREF: sub_1406F4230+15F↓j
                                        ; sub_1406F4230+168↓j
                and     qword ptr [r15+50h], 0
                and     dword ptr [r15+64h], 0

loc_1406F4345:                          ; CODE XREF: sub_1406F4230+56↑j
                mov     eax, r14d
                mov     [rdi+38h], rax
                and     qword ptr [r15+58h], 0

loc_1406F4351:                          ; CODE XREF: sub_1406F4230+2F↑j
                                        ; sub_1406F4230+14A↓j
                mov     rax, [rdi+0B8h]
                or      byte ptr [rax+3], 1
                mov     [rdi+30h], esi
                mov     dl, 1
                mov     rcx, rdi
                call    IofCompleteRequest

loc_1406F4369:                          ; CODE XREF: sub_1406F4230+15A↓j
                add     rsp, 38h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F4375:                          ; CODE XREF: sub_1406F4230+3F↑j
                                        ; sub_1406F4230+49↑j
                mov     esi, 10Ch
                jmp     short loc_1406F4351
; ---------------------------------------------------------------------------

loc_1406F437C:                          ; CODE XREF: sub_1406F4230+27↑j
                cmp     [rsp+58h+arg_20], 0
                jz      loc_1406F425D
                jmp     short loc_1406F4369
; ---------------------------------------------------------------------------

loc_1406F438C:                          ; CODE XREF: sub_1406F4230+109↑j
                test    rcx, rcx
                jz      short loc_1406F433B
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406F433B
; } // starts at 1406F4230
sub_1406F4230   endp

; ---------------------------------------------------------------------------
algn_1406F439A:                         ; DATA XREF: .pdata:0000000140104CE8↑o
                align 20h
; Exported entry 513. FsRtlNotifyCleanup

; =============== S U B R O U T I N E =======================================


                public FsRtlNotifyCleanup
FsRtlNotifyCleanup proc near            ; DATA XREF: .rdata:000000014007FC70↑o
                                        ; .pdata:0000000140104CF4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E80DC SIZE 00000043 BYTES
; FUNCTION CHUNK AT 0000000140825AEC SIZE 00000018 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, r8
                mov     r14, rdx
                mov     rbx, rcx
                and     [rsp+38h+arg_18], 0
                mov     rdi, gs:188h
                cmp     rdi, [rcx+38h]
                jz      short loc_1406F43D9
                call    ExAcquireFastMutexUnsafe
                mov     [rbx+38h], rdi

loc_1406F43D9:                          ; CODE XREF: FsRtlNotifyCleanup+2E↑j
                inc     dword ptr [rbx+40h]

loc_1406F43DC:                          ; DATA XREF: .rdata:000000014007FC5C↑o
;   __try { // __finally(loc_1407E80DC)
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1406F4754
                test    rax, rax
                jz      short loc_1406F43FA
                lea     rdx, [rsp+38h+arg_18]
                mov     rcx, rax
                call    sub_1406F477C
                nop
;   } // starts at 1406F43DC

loc_1406F43FA:                          ; CODE XREF: FsRtlNotifyCleanup+4A↑j
                                        ; DATA XREF: .rdata:000000014007FC5C↑o
                add     dword ptr [rbx+40h], 0FFFFFFFFh
                jnz     short loc_1406F440D
                and     qword ptr [rbx+38h], 0
                mov     rcx, rbx
                call    ExReleaseFastMutexUnsafe

loc_1406F440D:                          ; CODE XREF: FsRtlNotifyCleanup+5E↑j
                mov     rbx, [rsp+38h+arg_18]
                test    rbx, rbx
                jnz     loc_140825AEC

loc_1406F441B:                          ; CODE XREF: FsRtlNotifyCleanup+13175F↓j
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F43A0
FsRtlNotifyCleanup endp

algn_1406F442A:                         ; DATA XREF: .rdata:000000014007FC70↑o
                                        ; .pdata:0000000140104CF4↑o
                align 10h
; Exported entry 516. FsRtlNotifyFilterChangeDirectoryLite

; =============== S U B R O U T I N E =======================================


                public FsRtlNotifyFilterChangeDirectoryLite
FsRtlNotifyFilterChangeDirectoryLite proc near
                                        ; DATA XREF: .rdata:000000014007FCC0↑o
                                        ; .pdata:0000000140104D00↑o

var_68          = dword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407E8125 SIZE 00000055 BYTES
; FUNCTION CHUNK AT 0000000140825B04 SIZE 0000002B BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r12d, r9d
                mov     r13, rdx
                mov     r15, rcx
                mov     rdi, [rsp+88h+arg_28]
                xor     esi, esi
                cmp     [rdx], rdx
                jnz     short loc_1406F446A
                test    rdi, rdi
                jz      loc_1406F470B

loc_1406F446A:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2F↑j
                cmp     [rcx], rsi
                jz      loc_1406F471C

loc_1406F4473:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+310↓j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1316E2↓j
                mov     rbx, gs:188h
                mov     rax, [r15]
                cmp     rbx, [rax+38h]
                jz      short loc_1406F4497
                mov     rcx, rax
                call    ExAcquireFastMutexUnsafe
                mov     rax, [r15]
                mov     [rax+38h], rbx
                mov     rax, [r15]

loc_1406F4497:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+53↑j
                mov     r9d, 1
                add     [rax+40h], r9d

loc_1406F44A1:                          ; DATA XREF: .rdata:000000014007FCAC↑o
;   __try { // __finally(loc_1407E8125)
                test    rdi, rdi
                jz      loc_1406F4671
                mov     r14, [rdi+0B8h]
                mov     [rsp+88h+var_50], r14
                mov     [rdi+30h], esi
                mov     [rdi+38h], rsi
                mov     rax, [r14+30h]
                test    dword ptr [rax+50h], 4000h
                jnz     loc_1406F467B
                mov     rdx, [rsp+88h+arg_10]
                mov     rcx, r13
                call    sub_1406F4754
                mov     rbx, rax
                mov     [rsp+88h+var_58], rax
                test    rax, rax
                jz      short loc_1406F455D
                movzx   eax, word ptr [rax+48h]
                test    al, 4
                jnz     loc_1406F467B
                test    al, 20h
                jnz     loc_1406F46C1
                movzx   ecx, ax
                and     cx, 8
                test    al, 2
                jnz     loc_1406F46CE

loc_1406F450E:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2A1↓j
                mov     r8d, [rbx+68h]
                test    r8d, r8d
                jnz     loc_1406F464F

loc_1406F451B:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+213↓j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+222↓j
                mov     [rdi+38h], rbx
                or      [r14+3], r9b
                lea     rax, [rdi+0A8h]
                lea     rcx, [rbx+30h]
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_1406F46D9
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                lock add [rbx+70h], r9d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033E2D8
                jmp     loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F455D:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+B9↑j
                mov     edx, 80h
                lea     ecx, [rdx-6Fh]
                mov     r8d, 4E725346h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+88h+var_58], rax
                xor     edx, edx
                mov     r8d, 80h
                mov     rcx, rax
                call    memset
                or      word ptr [rbx+48h], 40h
                mov     rax, [r15]
                mov     [rbx], rax
                mov     rax, [rsp+88h+arg_10]
                mov     [rbx+8], rax
                mov     rax, [rsp+88h+arg_30]
                mov     [rbx+10h], rax
                mov     rax, [rsp+88h+arg_38]
                mov     [rbx+18h], rax
                mov     [rsp+88h+arg_38], rsi
                mov     rax, [rsp+88h+arg_40]
                mov     [rbx+40h], rax
                lea     rax, [rbx+30h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     r9d, 1
                test    r9b, r12b
                jnz     short loc_1406F4648

loc_1406F45E1:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+21D↓j
                test    r12b, 4
                jnz     loc_1406F46B3

loc_1406F45EB:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+28C↓j
                mov     eax, [rsp+88h+arg_20]
                mov     [rbx+4Ch], eax
                test    r12b, 2
                jnz     short loc_1406F4602
                mov     eax, [r14+8]
                mov     [rbx+60h], eax

loc_1406F4602:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+1C9↑j
                mov     rax, [rdi+98h]
                mov     [rsp+88h+var_48], rax
                mov     rax, [rax+220h]
                mov     [rbx+78h], rax
                lea     rax, [rbx+20h]
                mov     rcx, [r13+8]
                cmp     [rcx], r13
                jnz     loc_1406F46D9
                mov     [rax], r13
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [r13+8], rax
                mov     [rbx+70h], r9d
                mov     r14, [rdi+0B8h]
                jmp     loc_1406F451B
; ---------------------------------------------------------------------------

loc_1406F4648:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+1AF↑j
                or      [rbx+48h], r9w
                jmp     short loc_1406F45E1
; ---------------------------------------------------------------------------

loc_1406F464F:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+E5↑j
                test    cx, cx
                jnz     loc_1406F451B
                and     qword ptr [rbx+68h], 0
                mov     [rsp+88h+var_68], esi
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406F4230
                jmp     short loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F4671:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+74↑j
                mov     rcx, r13
                call    sub_14088EC44
                jmp     short loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F467B:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+98↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+C1↑j
                or      [r14+3], r9b
                mov     dword ptr [rdi+30h], 10Bh
                jmp     short loc_1406F46A6
; ---------------------------------------------------------------------------

loc_1406F4688:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2A7↓j
                mov     ecx, 0FFFDh
                and     ax, cx
                mov     [rbx+48h], ax
                mov     rax, [rdi+0B8h]
                or      [rax+3], r9b
                mov     dword ptr [rdi+30h], 10Ch

loc_1406F46A6:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+256↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+29C↓j
                mov     dl, r9b
                mov     rcx, rdi
                call    IofCompleteRequest
                jmp     short loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F46B3:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+1B5↑j
                mov     eax, 80h
                or      [rbx+48h], ax
                jmp     loc_1406F45EB
; ---------------------------------------------------------------------------

loc_1406F46C1:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+C9↑j
                or      [r14+3], r9b
                mov     dword ptr [rdi+30h], 0C0000056h
                jmp     short loc_1406F46A6
; ---------------------------------------------------------------------------

loc_1406F46CE:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+D8↑j
                test    cx, cx
                jnz     loc_1406F450E
                jmp     short loc_1406F4688
; ---------------------------------------------------------------------------

loc_1406F46D9:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+105↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1F4↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
;   } // starts at 1406F44A1
; ---------------------------------------------------------------------------

loc_1406F46E0:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+128↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+23F↑j ...
                mov     rax, [r15]
                dec     dword ptr [rax+40h]
                mov     rax, [r15]
                cmp     [rax+40h], esi
                jnz     short loc_1406F46FA
                mov     [rax+38h], rsi
                mov     rcx, [r15]
                call    ExReleaseFastMutexUnsafe

loc_1406F46FA:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2BC↑j
                mov     rbx, [rsp+88h+arg_38]
                test    rbx, rbx
                jnz     loc_140825B17

loc_1406F470B:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+34↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1316FA↓j
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406F471C:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+3D↑j
                mov     [rsp+88h+arg_8], rsi
                lea     rcx, [rsp+88h+arg_8]
                call    FsRtlNotifyInitializeSync
                mov     rcx, [rsp+88h+arg_8]
                xor     eax, eax
                lock cmpxchg [r15], rcx
                jz      loc_1406F4473
                jmp     loc_140825B04
; } // starts at 1406F4430
FsRtlNotifyFilterChangeDirectoryLite endp

; ---------------------------------------------------------------------------
byte_1406F474B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007FCC0↑o
                                        ; .pdata:0000000140104D00↑o

; =============== S U B R O U T I N E =======================================


sub_1406F4754   proc near               ; CODE XREF: FsRtlNotifyFilterChangeDirectory+9D↑p
                                        ; FsRtlNotifyCleanup+42↑p ...
                mov     rax, [rcx]
                xor     r8d, r8d

loc_1406F475A:                          ; CODE XREF: sub_1406F4754+1D↓j
                cmp     rax, rcx
                jz      short loc_1406F4769
                cmp     [rax-18h], rdx
                jnz     short loc_1406F476E
                lea     r8, [rax-20h]

loc_1406F4769:                          ; CODE XREF: sub_1406F4754+9↑j
                mov     rax, r8
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F476E:                          ; CODE XREF: sub_1406F4754+F↑j
                mov     rax, [rax]
                jmp     short loc_1406F475A
sub_1406F4754   endp

; ---------------------------------------------------------------------------
byte_1406F4773  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140104D0C↑o

; =============== S U B R O U T I N E =======================================


sub_1406F477C   proc near               ; CODE XREF: FsRtlNotifyCleanup+54↑p
                                        ; FsRtlNotifyCleanupAll+4E↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140825B30 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                or      word ptr [rcx+48h], 4
                lea     rax, [rcx+30h]
                mov     rsi, rdx
                mov     rbx, rcx
                cmp     [rax], rax
                jnz     short loc_1406F47FD

loc_1406F479F:                          ; CODE XREF: sub_1406F477C+8B↓j
                lea     rax, [rbx+20h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     FatalListEntryError_90
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     FatalListEntryError_90
                mov     [rdx], rcx
                xor     edi, edi
                mov     [rcx+8], rdx
                lock dec dword ptr [rbx+70h]
                cmp     [rbx+70h], edi
                jnz     short loc_1406F47EC
                cmp     [rbx+50h], rdi
                jnz     short loc_1406F4809

loc_1406F47D5:                          ; CODE XREF: sub_1406F477C+A4↓j
                test    byte ptr [rbx+48h], 40h
                jz      short loc_1406F4822

loc_1406F47DB:                          ; CODE XREF: sub_1406F477C+AF↓j
                mov     rdi, [rbx+18h]

loc_1406F47DF:                          ; CODE XREF: sub_1406F477C+AD↓j
                xor     edx, edx
                mov     [rsi], rdi
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406F47EC:                          ; CODE XREF: sub_1406F477C+51↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F47FD:                          ; CODE XREF: sub_1406F477C+21↑j
                mov     edx, 10Bh
                call    sub_1406F4194
                jmp     short loc_1406F479F
; ---------------------------------------------------------------------------

loc_1406F4809:                          ; CODE XREF: sub_1406F477C+57↑j
                mov     edx, [rbx+64h]
                mov     rcx, [rbx+78h]
                call    PsReturnProcessPagedPoolQuota
                mov     rcx, [rbx+50h]
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406F47D5
; ---------------------------------------------------------------------------

loc_1406F4822:                          ; CODE XREF: sub_1406F477C+5D↑j
                cmp     [rbx+88h], rdi
                jz      short loc_1406F47DF
                jmp     short loc_1406F47DB
sub_1406F477C   endp

; ---------------------------------------------------------------------------
algn_1406F482D:                         ; DATA XREF: .rdata:000000014007FD10↑o
                                        ; .pdata:0000000140104D18↑o
                align 20h
; Exported entry 522. FsRtlNotifyInitializeSync

; =============== S U B R O U T I N E =======================================


                public FsRtlNotifyInitializeSync
FsRtlNotifyInitializeSync proc near     ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2FC↑p
                                        ; FsRtlNotifyFilterReportChangeLiteEx+131EB4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rcx], 0
                mov     rdi, rcx
                mov     ecx, 210h
                mov     edx, 48h ; 'H'
                mov     r8d, 4E725346h
                call    ExAllocatePoolWithTag
                mov     edx, 1
                xor     r8d, r8d
                mov     rbx, rax
                and     qword ptr [rax+8], 0
                lea     rcx, [rax+18h]
                and     dword ptr [rax+10h], 0
                mov     [rax], edx
                call    KeInitializeEvent
                and     qword ptr [rbx+38h], 0
                and     dword ptr [rbx+40h], 0
                mov     [rdi], rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyInitializeSync endp

byte_1406F489D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104D24↑o

; =============== S U B R O U T I N E =======================================


sub_1406F48A4   proc near               ; CODE XREF: FsRtlNotifyFilterReportChange+367↑p
                                        ; DATA XREF: .pdata:0000000140104D30↑o

var_28          = dword ptr -28h
var_18          = byte ptr -18h
var_14          = dword ptr -14h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = dword ptr  38h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 40h
                mov     r14, r9
                mov     rsi, r8
                mov     rbx, rcx
                xor     r15d, r15d
                mov     edi, r15d

loc_1406F48CC:                          ; DATA XREF: .rdata:000000014007FD40↑o
;   __try { // __except at loc_1406F4A3C
                mov     [rcx], r15d
                mov     [rcx+4], edx
                mov     edx, [rsp+48h+arg_30]
                add     edx, 0FFFFFFF4h
                jz      short loc_1406F4923
                mov     [rcx+8], edx
                movzx   ecx, word ptr [r8]
                cmp     [rsp+48h+arg_28], r15b
                jnz     short loc_1406F492A
                mov     [rax-14h], r15d
                test    cx, cx
                jnz     loc_1406F49AB

loc_1406F48F9:                          ; CODE XREF: sub_1406F48A4+133↓j
                mov     r10d, edi
                test    cx, cx
                lea     rcx, [rbx+0Ch]
                jnz     loc_1406F49DC
                mov     rdx, [rsp+48h+arg_20]
                add     rcx, r10

loc_1406F4911:                          ; CODE XREF: sub_1406F48A4+102↓j
                movzx   r8d, word ptr [rdx]
                mov     rdx, [rdx+8]
                call    memmove
                jmp     loc_1406F4A34
; ---------------------------------------------------------------------------

loc_1406F4923:                          ; CODE XREF: sub_1406F48A4+38↑j
                xor     al, al
                jmp     loc_1406F4A42
; ---------------------------------------------------------------------------

loc_1406F492A:                          ; CODE XREF: sub_1406F48A4+46↑j
                test    cx, cx
                jz      short loc_1406F4967
                mov     r8, rcx
                lea     rcx, [rbx+0Ch]
                mov     rdx, [rsi+8]
                call    memmove
                movzx   r8d, word ptr [rsi]
                lea     rcx, [r8+2]
                mov     eax, [rbx+8]
                cmp     rax, rcx
                jnb     short loc_1406F4956
                xor     al, al
                jmp     loc_1406F4A42
; ---------------------------------------------------------------------------

loc_1406F4956:                          ; CODE XREF: sub_1406F48A4+A9↑j
                mov     edx, 5Ch ; '\'
                mov     [r8+rbx+0Ch], dx
                movzx   edi, word ptr [rsi]
                add     edi, 2

loc_1406F4967:                          ; CODE XREF: sub_1406F48A4+89↑j
                movzx   r8d, word ptr [r14]
                mov     eax, edi
                lea     rcx, [rbx+0Ch]
                add     rcx, rax
                mov     rdx, [r14+8]
                call    memmove
                mov     rdx, [rsp+48h+arg_20]
                test    rdx, rdx
                jz      loc_1406F4A34
                movzx   eax, word ptr [r14]
                add     edi, eax
                mov     eax, edi
                mov     r8d, 3Ah ; ':'
                mov     [rdi+rbx+0Ch], r8w
                lea     rcx, [rbx+0Eh]
                add     rcx, rax
                jmp     loc_1406F4911
; ---------------------------------------------------------------------------

loc_1406F49AB:                          ; CODE XREF: sub_1406F48A4+4F↑j
                mov     eax, ecx
                lea     rcx, [rbx+0Ch]
                mov     [rsp+48h+var_28], eax
                mov     r9, [r8+8]
                lea     r8, [rsp+48h+var_14]
                call    RtlOemToUnicodeN
                mov     ecx, [rsp+48h+var_14]
                mov     edx, 5Ch ; '\'
                mov     [rcx+rbx+0Ch], dx
                lea     edi, [rcx+2]
                movzx   ecx, word ptr [rsi]
                jmp     loc_1406F48F9
; ---------------------------------------------------------------------------

loc_1406F49DC:                          ; CODE XREF: sub_1406F48A4+5F↑j
                movzx   eax, word ptr [r14]
                mov     [rsp+48h+var_28], eax
                mov     r9, [r14+8]
                lea     r8, [rsp+48h+var_14]
                mov     edx, [rbx+8]
                add     rcx, r10
                call    RtlOemToUnicodeN
                mov     r9, [rsp+48h+arg_20]
                test    r9, r9
                jz      short loc_1406F4A34
                add     edi, [rsp+48h+var_14]
                mov     ecx, edi
                mov     r8d, 3Ah ; ':'
                mov     [rdi+rbx+0Ch], r8w
                movzx   eax, word ptr [r9]
                add     rcx, 0Eh
                add     rcx, rbx
                mov     [rsp+48h+var_28], eax
                mov     r9, [r9+8]
                lea     r8, [rsp+48h+var_14]
                mov     edx, [rbx+8]
                call    RtlOemToUnicodeN

loc_1406F4A34:                          ; CODE XREF: sub_1406F48A4+7A↑j
                                        ; sub_1406F48A4+E1↑j ...
                mov     al, 1
                mov     [rsp+48h+var_18], al
                jmp     short loc_1406F4A42
;   } // starts at 1406F48CC
; ---------------------------------------------------------------------------

loc_1406F4A3C:                          ; DATA XREF: .rdata:000000014007FD40↑o
;   __except(1) // owned by 1406F48CC
                xor     al, al
                mov     [rsp+48h+var_18], al

loc_1406F4A42:                          ; CODE XREF: sub_1406F48A4+81↑j
                                        ; sub_1406F48A4+AD↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                mov     r14, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F48A4
sub_1406F48A4   endp

byte_1406F4A5E  db 12h dup(0CCh)        ; DATA XREF: .pdata:0000000140104D30↑o
; ---------------------------------------------------------------------------

loc_1406F4A70:                          ; DATA XREF: .pdata:0000000140104D3C↑o
                                        ; PAGEDATA:off_140D2D510↓o
                mov     r10, rdx
                mov     r11, rcx
                mov     rax, 8888888888888889h
                and     r11d, 3
                mul     r8
                shr     rdx, 3
                movzx   eax, dl
                imul    r9d, eax, 0Fh
                mov     rax, 0AAAAAAAAAAAAAAABh
                mul     r10
                sub     r8b, r9b
                mov     r9d, [rsp+38h]
                shr     rdx, 1
                add     rdx, r11
                lea     ecx, [r8+1]
                shr     r9d, cl
                lea     rcx, [r10+1]
                add     rcx, rdx
                mov     rdx, [rsp+30h]
                and     ecx, 3
                movzx   eax, word ptr [rdx+rcx*2]
                xor     eax, [rsp+38h]
                movzx   ecx, word ptr [rdx+r11*2]
                imul    eax, ecx
                add     eax, r9d
                retn
; ---------------------------------------------------------------------------
                align 8
algn_1406F4AD8:                         ; DATA XREF: .pdata:0000000140104D3C↑o
                align 20h
; Exported entry 1493. MmResetDriverPaging

; =============== S U B R O U T I N E =======================================


                public MmResetDriverPaging
MmResetDriverPaging proc near           ; DATA XREF: .pdata:0000000140104D48↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdx, rcx
                xor     ecx, ecx
                call    sub_1406F4C0C
                mov     rsi, rax
                test    rax, rax
                jz      loc_1406F4B8E
                mov     rbp, [rax+30h]
                mov     rcx, rbp
                call    RtlImageNtHeader
                mov     rcx, rsi
                mov     rbx, rax
                call    sub_1406F5908
                movzx   ecx, word ptr [rbx+14h]
                lea     rdi, [rbx+18h]
                movzx   ebx, word ptr [rbx+6]
                add     rdi, rcx
                test    ebx, ebx
                jz      short loc_1406F4B8E

loc_1406F4B34:                          ; CODE XREF: MmResetDriverPaging+AC↓j
                test    dword ptr [rdi+24h], 2000000h
                jnz     short loc_1406F4B85
                mov     rcx, rdi
                call    sub_1406F4BAC
                test    eax, eax
                jnz     short loc_1406F4B85
                mov     ecx, [rdi+10h]
                mov     eax, [rdi+8]
                cmp     ecx, eax
                mov     edx, [rdi+0Ch]
                cmovb   ecx, eax
                mov     eax, ecx
                lea     rcx, [rbp-1]
                add     rax, rdx
                add     rcx, rax
                call    sub_14026B560
                lea     rcx, [rdx+rbp]
                mov     r8, rax
                call    sub_14026B560
                mov     rdx, rax
                mov     rcx, rsi
                mov     r9d, 2
                call    sub_140276020

loc_1406F4B85:                          ; CODE XREF: MmResetDriverPaging+5B↑j
                                        ; MmResetDriverPaging+67↑j
                add     rdi, 28h ; '('
                add     ebx, 0FFFFFFFFh
                jnz     short loc_1406F4B34

loc_1406F4B8E:                          ; CODE XREF: MmResetDriverPaging+24↑j
                                        ; MmResetDriverPaging+52↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmResetDriverPaging endp

byte_1406F4BA4  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140104D48↑o

; =============== S U B R O U T I N E =======================================


sub_1406F4BAC   proc near               ; CODE XREF: MmResetDriverPaging+60↑p
                                        ; sub_14075B188+1C4↓p ...
                mov     edx, [rcx]
                xor     r8d, r8d
                mov     eax, r8d
                cmp     edx, 6164652Eh
                jz      short loc_1406F4BF0
                cmp     edx, 45474150h
                jz      short loc_1406F4BC6

locret_1406F4BC4:                       ; CODE XREF: sub_1406F4BAC+2A↓j
                                        ; sub_1406F4BAC+30↓j ...
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F4BC6:                          ; CODE XREF: sub_1406F4BAC+16↑j
                mov     dl, [rcx+4]
                mov     eax, 1
                cmp     dl, 4Bh ; 'K'
                jz      short loc_1406F4BF7
                cmp     dl, 56h ; 'V'
                jnz     short locret_1406F4BC4
                cmp     byte ptr [rcx+5], 52h ; 'R'
                jnz     short locret_1406F4BC4
                cmp     byte ptr [rcx+6], 46h ; 'F'
                jnz     short locret_1406F4BC4
                test    byte ptr cs:dword_140CFC400, al
                cmovnz  eax, r8d
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1406F4BF0:                          ; CODE XREF: sub_1406F4BAC+E↑j
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F4BF7:                          ; CODE XREF: sub_1406F4BAC+25↑j
                cmp     byte ptr [rcx+5], 44h ; 'D'
                jnz     short locret_1406F4BC4
                movzx   eax, cs:byte_140C40731
                retn
sub_1406F4BAC   endp

; ---------------------------------------------------------------------------
                align 2
byte_1406F4C06  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140104D54↑o

; =============== S U B R O U T I N E =======================================


sub_1406F4C0C   proc near               ; CODE XREF: MmResetDriverPaging+19↑p
                                        ; sub_1407A4DC0+1D↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140CFB174
                mov     rdi, rdx
                mov     rbx, rcx
                test    al, 1
                jnz     short loc_1406F4C61
                mov     rcx, rdx
                call    sub_140260090
                test    eax, eax
                jnz     short loc_1406F4C61
                test    rbx, rbx
                jnz     short loc_1406F4C45
                lea     edx, [rax+1]
                mov     rcx, rdi
                call    sub_14033EE44
                mov     rbx, rax

loc_1406F4C45:                          ; CODE XREF: sub_1406F4C0C+29↑j
                mov     rcx, rdi
                call    sub_140245330
                cmp     eax, 1
                jz      short loc_1406F4C61
                mov     rax, rbx

loc_1406F4C55:                          ; CODE XREF: sub_1406F4C0C+57↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F4C61:                          ; CODE XREF: sub_1406F4C0C+18↑j
                                        ; sub_1406F4C0C+24↑j ...
                xor     eax, eax
                jmp     short loc_1406F4C55
sub_1406F4C0C   endp

; ---------------------------------------------------------------------------
algn_1406F4C65:                         ; DATA XREF: .pdata:0000000140104D60↑o
                align 10h
; Exported entry 1482. MmPageEntireDriver

; =============== S U B R O U T I N E =======================================


                public MmPageEntireDriver
MmPageEntireDriver proc near            ; DATA XREF: .pdata:0000000140104D6C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140260090
                test    eax, eax
                jnz     short loc_1406F4D0A
                lea     edx, [rax+1]
                mov     rcx, rbx
                call    sub_14033EE44
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1406F4D0A
                mov     ecx, cs:dword_140CFB174
                mov     rbp, [rax+30h]
                test    cl, 1
                jnz     short loc_1406F4CF1
                mov     rcx, rbx
                call    sub_140245330
                cmp     eax, 1
                jz      short loc_1406F4CF1
                call    KeFlushQueuedDpcs
                mov     rcx, rbp
                call    sub_14026B560
                mov     ecx, [rsi+40h]
                mov     rdi, rax
                shr     rcx, 0Ch
                lea     rbx, [rax+rcx*8]
                mov     rcx, rsi
                call    sub_1406F5908
                lea     r8, [rbx-8]
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402DFB84

loc_1406F4CF1:                          ; CODE XREF: MmPageEntireDriver+40↑j
                                        ; MmPageEntireDriver+4D↑j
                mov     rax, rbp

loc_1406F4CF4:                          ; CODE XREF: MmPageEntireDriver+9C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F4D0A:                          ; CODE XREF: MmPageEntireDriver+1E↑j
                                        ; MmPageEntireDriver+31↑j
                xor     eax, eax
                jmp     short loc_1406F4CF4
MmPageEntireDriver endp

; ---------------------------------------------------------------------------
algn_1406F4D0E:                         ; DATA XREF: .pdata:0000000140104D6C↑o
                align 20h
; Exported entry 1458. MmLockPagableDataSection
; Exported entry 1459. MmLockPagableImageSection

; =============== S U B R O U T I N E =======================================


                public MmLockPagableImageSection
MmLockPagableImageSection proc near     ; CODE XREF: sub_1409A2560+2B↓p
                                        ; sub_1409C8D50+34↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140825B38 SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx ; MmLockPagableDataSection
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                call    sub_140260090
                test    eax, eax
                jnz     loc_1406F4E06
                mov     rbp, gs:188h
                xor     ebx, ebx
                dec     word ptr [rbp+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033EE44
                mov     rsi, rdi
                mov     rcx, [rax+30h]
                sub     rsi, rcx
                call    RtlImageNtHeader
                movzx   ecx, word ptr [rax+14h]
                lea     rdx, [rax+18h]
                movzx   r10d, word ptr [rax+6]
                add     rdx, rcx
                xor     ecx, ecx
                test    r10d, r10d
                jz      short loc_1406F4DC3

loc_1406F4D94:                          ; CODE XREF: MmLockPagableImageSection+9C↓j
                mov     r8d, [rdx+0Ch]
                mov     eax, [rdx+10h]
                mov     r9d, [rdx+8]
                cmp     rsi, r8
                jb      short loc_1406F4DB3
                cmp     eax, r9d
                cmovb   eax, r9d
                add     eax, r8d
                cmp     rsi, rax
                jb      short loc_1406F4DC0

loc_1406F4DB3:                          ; CODE XREF: MmLockPagableImageSection+82↑j
                add     rdx, 28h ; '('
                inc     ecx
                cmp     ecx, r10d
                jb      short loc_1406F4D94
                jmp     short loc_1406F4DC3
; ---------------------------------------------------------------------------

loc_1406F4DC0:                          ; CODE XREF: MmLockPagableImageSection+91↑j
                mov     rbx, rdx

loc_1406F4DC3:                          ; CODE XREF: MmLockPagableImageSection+72↑j
                                        ; MmLockPagableImageSection+9E↑j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rbp
                call    sub_14021E1F0
                test    rbx, rbx
                jz      loc_140825B38
                mov     edx, 1
                mov     rcx, rbx
                call    sub_140261960
                mov     rax, rbx

loc_1406F4DF0:                          ; CODE XREF: MmLockPagableImageSection+EB↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F4E06:                          ; CODE XREF: MmLockPagableImageSection+1E↑j
                mov     eax, 1
                jmp     short loc_1406F4DF0
MmLockPagableImageSection endp

; ---------------------------------------------------------------------------
algn_1406F4E0D:                         ; DATA XREF: .rdata:000000014007FEE0↑o
                                        ; .pdata:0000000140104D78↑o
                align 20h
; Exported entry 1415. MmChangeImageProtection

; =============== S U B R O U T I N E =======================================


                public MmChangeImageProtection
MmChangeImageProtection proc near       ; DATA XREF: .pdata:0000000140104D84↑o

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                lea     eax, [r9-1]
                mov     edi, 1
                mov     rbx, r8
                mov     r13, rdx
                mov     rsi, rcx
                cmp     eax, edi
                ja      loc_1406F513A
                mov     al, [rcx+0Ah]
                and     al, 7
                cmp     al, 2
                jnz     loc_1406F513A
                cmp     dword ptr [rcx+2Ch], 0
                jnz     loc_1406F513A
                mov     r14d, [rcx+28h]
                test    r14d, 0FFFh
                jnz     loc_1406F513A
                shr     r14d, 0Ch
                call    sub_1406F51C0
                mov     rbp, rax
                dec     word ptr [rax+1E4h]
                dec     word ptr [rax+1E4h]
                mov     dl, dil
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                mov     rcx, [rsi+20h]
                xor     edx, edx
                call    sub_14033EE44
                mov     rdi, rax
                mov     r12d, 0C0000018h
                test    rax, rax
                jz      short loc_1406F4F31
                mov     r15, [rax+30h]
                lea     rdx, [rbx+r13]
                mov     eax, [rax+40h]
                mov     ecx, [rsi+28h]
                add     rax, r15
                add     rcx, [rsi+20h]
                cmp     rcx, rax
                ja      short loc_1406F4F2C
                cmp     r13, r15
                jb      short loc_1406F4F2C
                cmp     rdx, rax
                ja      short loc_1406F4F2C
                lea     rax, [rdx-1]
                cmp     rax, r13
                jb      short loc_1406F4F2C
                mov     eax, [rdi+68h]
                mov     ecx, 80000h
                test    ecx, eax
                jz      short loc_1406F4F06
                lea     ebx, [r12+2Bh]
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F06:                          ; CODE XREF: MmChangeImageProtection+DD↑j
                or      eax, ecx
                xor     ebx, ebx
                mov     rcx, r15
                mov     [rdi+68h], eax
                call    sub_140245330
                lea     ecx, [rbx+1]
                cmp     eax, ecx
                jnz     short loc_1406F4F26
                mov     rcx, r15
                call    sub_1403A7964
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F26:                          ; CODE XREF: MmChangeImageProtection+FA↑j
                add     [rdi+6Ch], cx
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F2C:                          ; CODE XREF: MmChangeImageProtection+BE↑j
                                        ; MmChangeImageProtection+C3↑j ...
                mov     ebx, r12d
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F31:                          ; CODE XREF: MmChangeImageProtection+A4↑j
                mov     ebx, 0C0000225h

loc_1406F4F36:                          ; CODE XREF: MmChangeImageProtection+E4↑j
                                        ; MmChangeImageProtection+104↑j ...
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rcx, rbp
                call    sub_1406F5160
                test    ebx, ebx
                js      loc_1406F512E
                mov     rcx, [rdi+30h]
                call    sub_140260090
                test    eax, eax
                jz      short loc_1406F4F75
                mov     ebx, r12d

loc_1406F4F6A:                          ; CODE XREF: MmChangeImageProtection+20B↓j
                                        ; MmChangeImageProtection+215↓j
                mov     r12d, 1
                jmp     loc_1406F50E7
; ---------------------------------------------------------------------------

loc_1406F4F75:                          ; CODE XREF: MmChangeImageProtection+145↑j
                xor     r12d, r12d
                mov     rdx, 0FFFFFA8000000000h
                lea     r15, [rsi+30h]
                test    r14d, r14d
                jz      short loc_1406F4FD6
                mov     r13, r15

loc_1406F4F8E:                          ; CODE XREF: MmChangeImageProtection+1AF↓j
                mov     rax, [r13+0]
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, rdx
                add     rcx, rax
                call    sub_1403F41D8
                test    eax, eax
                jnz     loc_1406F5030
                xor     r8d, r8d
                xor     edx, edx
                call    sub_14027B160
                test    al, 40h
                jnz     short loc_1406F5026
                inc     r12d
                mov     rdx, 0FFFFFA8000000000h
                add     r13, 8
                cmp     r12d, r14d
                jb      short loc_1406F4F8E
                mov     r13, [rsp+68h+arg_8]

loc_1406F4FD6:                          ; CODE XREF: MmChangeImageProtection+169↑j
                mov     r8d, [rsi+28h]
                mov     r12d, 1
                mov     rdx, [rsi+20h]
                mov     r9d, r12d
                mov     rcx, rdi
                call    sub_14033EDF4
                cmp     [rsp+68h+arg_18], r12d
                jnz     loc_1406F50A8
                mov     rcx, [rdi+70h]
                test    rcx, rcx
                jz      short loc_1406F503A
                call    sub_140267410
                mov     rcx, [rax+60h]
                mov     rcx, [rcx+28h]
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFFFFF8h
                cmp     rax, 8
                jbe     short loc_1406F503A
                and     rcx, 0FFFFFFFFFFFFFFF8h
                jmp     short loc_1406F503C
; ---------------------------------------------------------------------------

loc_1406F5026:                          ; CODE XREF: MmChangeImageProtection+199↑j
                mov     ebx, 0C0000045h
                jmp     loc_1406F4F6A
; ---------------------------------------------------------------------------

loc_1406F5030:                          ; CODE XREF: MmChangeImageProtection+187↑j
                mov     ebx, 0C0000018h
                jmp     loc_1406F4F6A
; ---------------------------------------------------------------------------

loc_1406F503A:                          ; CODE XREF: MmChangeImageProtection+1E4↑j
                                        ; MmChangeImageProtection+1FE↑j
                xor     ecx, ecx

loc_1406F503C:                          ; CODE XREF: MmChangeImageProtection+204↑j
                mov     rax, cs:qword_140C1D970
                test    rax, rax
                jnz     short loc_1406F5052
                mov     ebx, 0C0000002h
                jmp     loc_1406F50E7
; ---------------------------------------------------------------------------

loc_1406F5052:                          ; CODE XREF: MmChangeImageProtection+226↑j
                mov     r9, [rsp+68h+arg_10]
                mov     rdx, r13
                sub     rdx, [rdi+30h]
                mov     r8, r13
                mov     [rsp+68h+var_48], rdx
                mov     rdx, rsi
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406F50E7
                test    byte ptr cs:dword_140CFC400+2, r12b
                mov     r9d, 3
                jz      short loc_1406F5094
                cmp     ebx, 12Ch
                lea     eax, [r9+10h]
                cmovz   r9d, eax

loc_1406F5094:                          ; CODE XREF: MmChangeImageProtection+264↑j
                mov     r8d, [rsi+28h]
                mov     rcx, rdi
                mov     rdx, [rsi+20h]
                call    sub_14033EDF4
                xor     ebx, ebx
                jmp     short loc_1406F50E7
; ---------------------------------------------------------------------------

loc_1406F50A8:                          ; CODE XREF: MmChangeImageProtection+1D7↑j
                test    byte ptr cs:dword_140CFC400+2, r12b
                jz      short loc_1406F50E7
                test    r14d, r14d
                jz      short loc_1406F50E7
                mov     esi, r14d
                mov     r14, 0FFFFFA8000000000h

loc_1406F50C3:                          ; CODE XREF: MmChangeImageProtection+2C5↓j
                mov     rax, [r15]
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, r14
                add     rcx, rax
                mov     edx, 18h
                call    sub_1402D69E8
                lea     r15, [r15+8]
                sub     rsi, r12
                jnz     short loc_1406F50C3

loc_1406F50E7:                          ; CODE XREF: MmChangeImageProtection+150↑j
                                        ; MmChangeImageProtection+22D↑j ...
                call    sub_1406F51C0
                dec     word ptr [rbp+1E4h]
                mov     dl, r12b
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                btr     dword ptr [rdi+68h], 13h
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rbp
                call    sub_14021E1F0
                or      edx, 0FFFFFFFFh
                mov     rcx, rdi
                call    sub_1406F5218
                mov     rcx, rbp
                call    sub_1406F5160

loc_1406F512E:                          ; CODE XREF: MmChangeImageProtection+134↑j
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     eax, ebx
                jmp     short loc_1406F513F
; ---------------------------------------------------------------------------

loc_1406F513A:                          ; CODE XREF: MmChangeImageProtection+36↑j
                                        ; MmChangeImageProtection+43↑j ...
                mov     eax, 0C000000Dh

loc_1406F513F:                          ; CODE XREF: MmChangeImageProtection+318↑j
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmChangeImageProtection endp

algn_1406F5155:                         ; DATA XREF: .pdata:0000000140104D84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F5160   proc near               ; CODE XREF: sub_14053F8C8+1EB↑p
                                        ; MmChangeImageProtection+12D↑p ...
                push    rbx
                sub     rsp, 20h
                add     cs:dword_140C4CB60, 0FFFFFFFFh
                mov     rbx, rcx
                jnz     short loc_1406F51A1
                or      cs:qword_140C4CB58, 1
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C4CB50, rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406F51A8

loc_1406F518D:                          ; CODE XREF: sub_1406F5160+54↓j
                lea     rcx, qword_140C4CB50
                call    sub_140243660
                mov     rcx, rbx
                call    sub_14021E1F0

loc_1406F51A1:                          ; CODE XREF: sub_1406F5160+10↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406F51A8:                          ; CODE XREF: sub_1406F5160+2B↑j
                lea     rcx, qword_140C4CB50
                call    ExfTryToWakePushLock
                jmp     short loc_1406F518D
sub_1406F5160   endp

; ---------------------------------------------------------------------------
algn_1406F51B6:                         ; DATA XREF: .pdata:0000000140104D90↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F51C0   proc near               ; CODE XREF: sub_14053F8C8+4F↑p
                                        ; MmChangeImageProtection+68↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, gs:188h
                cmp     rbx, cs:qword_140C4CB58
                jz      short loc_1406F5208
                dec     word ptr [rbx+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C4CB50
                call    ExAcquirePushLockExclusiveEx
                mov     cs:qword_140C4CB58, rbx
                mov     cs:dword_140C4CB60, 1

loc_1406F51FE:                          ; CODE XREF: sub_1406F51C0+4E↓j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406F5208:                          ; CODE XREF: sub_1406F51C0+16↑j
                inc     cs:dword_140C4CB60
                jmp     short loc_1406F51FE
sub_1406F51C0   endp

; ---------------------------------------------------------------------------
byte_1406F5210  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140104D9C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=90h

sub_1406F5218   proc near               ; CODE XREF: MmChangeImageProtection+301↑p
                                        ; sub_140757D1C+44C↓p ...

var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = dword ptr -160h
var_158         = dword ptr -158h
var_150         = dword ptr -150h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = xmmword ptr -118h
var_108         = qword ptr -108h
var_100         = xmmword ptr -100h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = qword ptr -0D0h
arg_0           = byte ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140825B54 SIZE 00000191 BYTES

                mov     [rsp-8+arg_8], edx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-58h]
                sub     rsp, 158h
                and     [rsp+190h+var_120], 0
                mov     edi, edx
                mov     rbx, rcx
                xorps   xmm0, xmm0
                xor     eax, eax
                lea     rcx, [rbp+90h+var_D0]
                xor     edx, edx
                mov     [rbp+90h+var_108], rax
                mov     r8d, 90h
                movups  [rsp+190h+var_118], xmm0
                call    memset
                cmp     qword ptr [rbx+88h], 1
                xorps   xmm0, xmm0
                movups  [rbp+90h+var_100], xmm0
                movups  [rbp+90h+var_F0], xmm0
                movups  [rbp+90h+var_E0], xmm0
                jz      loc_1406F52FE
                mov     r15, [rbx+30h]
                lea     rax, [rbx+0A0h]
                mov     ecx, edi
                mov     [rsp+190h+var_128], r15
                and     cl, 4
                neg     cl
                mov     rcx, r15
                sbb     r14, r14
                and     r14, rax
                call    sub_14026B560
                mov     ecx, [rbx+40h]
                xor     r13d, r13d
                mov     r12d, ecx
                mov     [rsp+190h+var_138], rax
                mov     rax, [rbx+70h]
                shr     r12, 0Ch
                mov     [rsp+190h+var_140], r12
                mov     [rbp+90h+arg_18], rax
                call    sub_1406F58C0
                shr     rax, 0Ch
                mov     rcx, r15
                mov     [rsp+190h+var_130], rax
                call    sub_140245330
                cmp     eax, 1
                jz      short loc_1406F5313
                lea     esi, [r13+1]
                mov     [rbp+90h+arg_10], esi

loc_1406F52E7:                          ; CODE XREF: sub_1406F5218+277↓j
                mov     eax, 0FFFFh
                add     [rbx+6Ch], ax
                jz      loc_1406F5494
                test    esi, esi
                jz      loc_1406F57E0

loc_1406F52FE:                          ; CODE XREF: sub_1406F5218+5D↑j
                                        ; sub_1406F5218+118↓j ...
                add     rsp, 158h
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F5313:                          ; CODE XREF: sub_1406F5218+C3↑j
                xor     r12d, r12d
                lea     rdx, [rsp+190h+var_118]
                mov     rcx, rbx
                mov     [rbp+90h+arg_10], r12d
                call    sub_14038ACF8
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1406F52FE
                mov     rcx, [rbp+90h+arg_18]
                call    sub_140267410
                mov     r13, rax
                cmp     [rbx], r12
                jz      short loc_1406F5350
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140772368

loc_1406F5350:                          ; CODE XREF: sub_1406F5218+12C↑j
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                mov     r12, [rdx+558h]
                and     edi, 1
                jz      short loc_1406F53A4
                call    sub_1402EF804
                test    al, al
                jnz     loc_140825B54

loc_1406F5379:                          ; CODE XREF: sub_1406F5218+13095A↓j
                call    sub_1402642FC
                mov     r9, [rsp+190h+var_140]
                lea     rcx, [rbp+90h+var_100]
                mov     r8, [rsp+190h+var_138]
                mov     rdx, r13
                mov     [rsp+190h+var_168], rcx
                mov     rcx, rax
                mov     dword ptr [rsp+190h+var_170], 3
                call    sub_1402DBE20

loc_1406F53A4:                          ; CODE XREF: sub_1406F5218+152↑j
                mov     rcx, rsi
                call    sub_140778698
                test    edi, edi
                jz      short loc_1406F542C
                mov     ecx, cs:dword_140C4CB30
                mov     eax, 0
                test    ecx, 0FFFh
                setnz   al
                shr     ecx, 0Ch
                add     ecx, eax
                jnz     loc_140825B77

loc_1406F53CF:                          ; CODE XREF: sub_1406F5218+130976↓j
                test    dword ptr [r13+38h], 4000000h
                jnz     loc_140825B93

loc_1406F53DD:                          ; CODE XREF: sub_1406F5218+13099B↓j
                mov     rcx, r15
                call    sub_1402A58F8
                mov     rcx, qword ptr [rsp+190h+var_118]
                mov     r8, rax
                test    rcx, rcx
                jz      loc_1406F5839
                inc     rcx

loc_1406F53F9:                          ; CODE XREF: sub_1406F5218:loc_1406F5839↓j
                test    rcx, rcx
                jnz     loc_1406F583E

loc_1406F5402:                          ; CODE XREF: sub_1406F5218+62E↓j
                                        ; sub_1406F5218+638↓j
                mov     ecx, [rbx+40h]
                dec     ecx
                add     rcx, r15
                call    sub_1402A58F8
                mov     rcx, qword ptr [rbp+90h+var_118+8]
                mov     rdx, rax
                test    rcx, rcx
                jnz     loc_1406F587D

loc_1406F541F:                          ; CODE XREF: sub_1406F5218+66D↓j
                                        ; sub_1406F5218+1309A4↓j
                cmp     rdx, r8
                jb      short loc_1406F542C
                mov     rcx, r8
                call    sub_14038C7C8

loc_1406F542C:                          ; CODE XREF: sub_1406F5218+196↑j
                                        ; sub_1406F5218+20A↑j
                mov     rdi, [rbp+90h+var_108]
                test    rdi, rdi
                jz      short loc_1406F545C
                movzx   ecx, word ptr [r12+1AEh]
                call    sub_14033F164
                mov     rdx, rdi
                mov     rcx, rax
                sub     rdx, qword ptr [rbp+90h+var_100+8]
                call    sub_14026B700
                neg     rdi
                lock xadd [r12+30h], rdi

loc_1406F545C:                          ; CODE XREF: sub_1406F5218+21B↑j
                mov     edi, [rbp+90h+arg_8]
                test    dil, 10h
                jz      short loc_1406F547A
                mov     rcx, [rsi+58h]
                call    sub_14077097C
                mov     rcx, [rsi+58h]
                call    sub_1407722C4

loc_1406F547A:                          ; CODE XREF: sub_1406F5218+24E↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     esi, [rbp+90h+arg_10]
                mov     r12, [rsp+190h+var_140]
                jmp     loc_1406F52E7
; ---------------------------------------------------------------------------

loc_1406F5494:                          ; CODE XREF: sub_1406F5218+D8↑j
                mov     rcx, rbx
                call    sub_1407723C4
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140771E54
                test    eax, eax
                js      loc_140825BC1
                test    esi, esi
                jz      loc_1406F5890
                cmp     cs:dword_140C4CB30, 0
                jnz     loc_140825BE7

loc_1406F54C3:                          ; CODE XREF: sub_1406F5218+680↓j
                                        ; sub_1406F5218+1309D8↓j
                mov     rcx, rbx
                call    sub_140772298
                test    eax, eax
                jnz     loc_1406F57D6

loc_1406F54D3:                          ; CODE XREF: sub_1406F5218+5C3↓j
                call    sub_1402EF804
                test    al, al
                jnz     loc_140825BF5

loc_1406F54E0:                          ; CODE XREF: sub_1406F5218+130A16↓j
                test    r14, r14
                jz      short loc_1406F54F5
                mov     rcx, [r14+88h]
                test    rcx, rcx
                jnz     loc_1406F5855

loc_1406F54F5:                          ; CODE XREF: sub_1406F5218+2CB↑j
                                        ; sub_1406F5218+64A↓j
                test    dil, 2
                jz      short loc_1406F550B
                mov     rcx, rbx
                call    sub_1409C44C4
                mov     rcx, rbx
                call    sub_140771BA4

loc_1406F550B:                          ; CODE XREF: sub_1406F5218+2E1↑j
                test    esi, esi
                jz      loc_1406F589D

loc_1406F5513:                          ; CODE XREF: sub_1406F5218+69B↓j
                test    dil, 10h
                jz      short loc_1406F5525
                mov     rcx, [rbx+88h]
                call    sub_14077097C

loc_1406F5525:                          ; CODE XREF: sub_1406F5218+2FF↑j
                mov     rcx, [rbx+88h]
                call    sub_1407722C4
                mov     rcx, r15
                mov     qword ptr [rbx+88h], 1
                call    sub_14037F9F8
                test    dword ptr [rbx+68h], 100000h
                mov     edx, 0FFFFFFFFh
                jz      short loc_1406F5561
                mov     r8d, edx
                lea     rcx, [rbx+58h]
                mov     rdx, r15
                call    sub_140372A70

loc_1406F5561:                          ; CODE XREF: sub_1406F5218+338↑j
                cmp     qword ptr [rbx], 0
                jz      short loc_1406F5576
                test    r12, r12
                jz      short loc_1406F5576
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140772368

loc_1406F5576:                          ; CODE XREF: sub_1406F5218+34D↑j
                                        ; sub_1406F5218+352↑j
                xor     sil, sil
                xor     r13b, r13b
                mov     [rbp+90h+arg_0], sil
                test    r12, r12
                jz      loc_1406F582D
                test    dil, 1
                jz      loc_1406F582D
                mov     r8, [rsp+190h+var_130]
                lea     rcx, [rbx+58h]
                shl     r8, 0Ch
                mov     rdx, r15
                call    sub_14075BD34
                mov     rax, [rbp+90h+arg_18]
                xor     esi, esi
                test    rax, rax
                jz      short loc_1406F55E0
                mov     rcx, rax
                call    sub_140267410
                cmp     qword ptr [rbx], 0
                mov     rsi, rax
                jz      short loc_1406F55E0
                mov     r8d, 4
                mov     [rbp+90h+var_D0], rax
                mov     rdx, r14
                lea     rcx, [rbp+90h+var_D0]
                call    sub_140263260

loc_1406F55E0:                          ; CODE XREF: sub_1406F5218+39F↑j
                                        ; sub_1406F5218+3B0↑j
                mov     ecx, 1
                call    sub_1402A46FC
                mov     rcx, r15
                mov     r12, rax
                call    sub_140260090
                test    eax, eax
                jnz     loc_140825C33
                test    r14, r14
                jz      short loc_1406F560A
                mov     rcx, rbx
                call    sub_140770274

loc_1406F560A:                          ; CODE XREF: sub_1406F5218+3E8↑j
                mov     r9, [rsp+190h+var_140]
                lea     rax, [rbp+90h+var_100]
                mov     r8, [rsp+190h+var_138]
                mov     rdx, rsi
                mov     [rsp+190h+var_168], rax
                mov     rcx, r12
                mov     dword ptr [rsp+190h+var_170], 5
                mov     cs:qword_140C4CBA0, rbx
                call    sub_1402DBE20
                mov     r15, qword ptr [rbp+90h+var_F0+8]
                mov     rdi, qword ptr [rbp+90h+var_100]
                test    rsi, rsi
                jz      short loc_1406F565D
                mov     r9d, 0FFFFFFFFh
                lea     rdx, [rsp+190h+var_120]
                mov     r8d, 4
                mov     rcx, rsi
                call    sub_140297FF0

loc_1406F565D:                          ; CODE XREF: sub_1406F5218+42A↑j
                and     cs:qword_140C4CBA0, 0
                sub     edi, r15d
                lock xadd dword ptr cs:xmmword_140C4CBC8+0Ch, edi
                mov     rax, [rbp+90h+arg_18]
                test    rax, rax
                jz      loc_1406F57F7
                mov     r15, [rsp+190h+var_128]
                mov     sil, r13b
                mov     edi, [rbp+90h+arg_8]

loc_1406F568E:                          ; CODE XREF: sub_1406F5218+61C↓j
                mov     r12d, [rbp+90h+arg_10]
                cmp     r12d, 1
                jnz     short loc_1406F56C0
                test    rax, rax
                jz      short loc_1406F56AE
                mov     edx, dword ptr [rsp+190h+var_130]
                mov     rcx, [rsp+190h+var_138]
                call    sub_140772878

loc_1406F56AE:                          ; CODE XREF: sub_1406F5218+486↑j
                test    dil, 1
                jz      short loc_1406F56C0
                lea     rdx, [rbp+90h+var_100]
                mov     rcx, rbx
                call    sub_140771EF0

loc_1406F56C0:                          ; CODE XREF: sub_1406F5218+481↑j
                                        ; sub_1406F5218+49A↑j
                cmp     qword ptr [rbx], 0
                jz      short loc_1406F571A
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140371FE4
                mov     eax, dword ptr cs:xmmword_140CFC480
                test    al, 4
                jz      short loc_1406F571A
                and     [rsp+190h+var_150], 0
                lea     rcx, [rbx+48h]
                movzx   r9d, word ptr [rbx+6Eh]
                xor     r8d, r8d
                mov     edx, [rbx+40h]
                mov     eax, r9d
                shr     eax, 4
                and     r9d, 0Fh
                and     eax, 7
                mov     [rsp+190h+var_158], eax
                mov     eax, [rbx+78h]
                mov     [rsp+190h+var_160], r9d
                mov     r9, r15
                mov     dword ptr [rsp+190h+var_168], eax
                mov     [rsp+190h+var_170], rdx
                xor     edx, edx
                call    sub_1406AAFB0

loc_1406F571A:                          ; CODE XREF: sub_1406F5218+4AC↑j
                                        ; sub_1406F5218+4C0↑j
                test    r13b, r13b
                jnz     loc_1406F5867

loc_1406F5723:                          ; CODE XREF: sub_1406F5218+660↓j
                mov     rcx, [rbx+50h]
                test    rcx, rcx
                jz      short loc_1406F5733
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406F5733:                          ; CODE XREF: sub_1406F5218+512↑j
                test    r14, r14
                jz      short loc_1406F5748
                mov     rcx, [r14+80h]
                test    rcx, rcx
                jnz     loc_140825CCC

loc_1406F5748:                          ; CODE XREF: sub_1406F5218+51E↑j
                                        ; sub_1406F5218+130ABA↓j
                mov     r13, [rbp+90h+arg_18]
                test    r13, r13
                jz      short loc_1406F57AD
                test    r14, r14
                jz      short loc_1406F576E
                mov     rdx, [r14+38h]
                test    rdx, rdx
                jz      short loc_1406F576E
                lea     rcx, unk_140C50C00
                call    sub_140207B8C

loc_1406F576E:                          ; CODE XREF: sub_1406F5218+53F↑j
                                        ; sub_1406F5218+548↑j
                mov     rcx, r13
                call    sub_140267410
                mov     rdi, rax
                test    sil, sil
                jnz     short loc_1406F5787
                mov     rcx, [rax]
                cmp     r15, [rcx+20h]
                jnz     short loc_1406F57BC

loc_1406F5787:                          ; CODE XREF: sub_1406F5218+564↑j
                                        ; sub_1406F5218+5BC↓j
                test    r14, r14
                jz      short loc_1406F579D
                test    r12d, r12d
                jz      short loc_1406F579D
                mov     eax, [r14+24h]
                test    al, al
                js      loc_140825CD7

loc_1406F579D:                          ; CODE XREF: sub_1406F5218+572↑j
                                        ; sub_1406F5218+577↑j ...
                mov     rcx, rdi
                call    sub_14033F130
                mov     rcx, r13
                call    ObDereferenceObjectDeferDelete

loc_1406F57AD:                          ; CODE XREF: sub_1406F5218+53A↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_1406F52FE
; ---------------------------------------------------------------------------

loc_1406F57BC:                          ; CODE XREF: sub_1406F5218+56D↑j
                mov     edx, 1
                mov     rcx, r15
                call    sub_14039FBB8
                mov     edx, [rbx+40h]
                mov     rcx, r15
                call    sub_14075BE7C
                jmp     short loc_1406F5787
; ---------------------------------------------------------------------------

loc_1406F57D6:                          ; CODE XREF: sub_1406F5218+2B5↑j
                call    sub_1407CC854
                jmp     loc_1406F54D3
; ---------------------------------------------------------------------------

loc_1406F57E0:                          ; CODE XREF: sub_1406F5218+E0↑j
                test    dil, 2
                jz      loc_1406F52FE
                mov     rcx, rbx
                call    sub_1409C44C4
                jmp     loc_1406F52FE
; ---------------------------------------------------------------------------

loc_1406F57F7:                          ; CODE XREF: sub_1406F5218+462↑j
                mov     rdi, [rsp+190h+var_130]
                mov     rsi, [rsp+190h+var_138]
                mov     edx, edi
                mov     rcx, rsi
                call    sub_140772878
                call    sub_14026CE60
                test    eax, eax
                jz      loc_140825C7E

loc_1406F5818:                          ; CODE XREF: sub_1406F5218+130A9E↓j
                                        ; sub_1406F5218+130AAF↓j
                mov     r15, [rsp+190h+var_128]
                mov     r13b, 1
                mov     sil, [rbp+90h+arg_0]
                mov     edi, [rbp+90h+arg_8]

loc_1406F582D:                          ; CODE XREF: sub_1406F5218+36E↑j
                                        ; sub_1406F5218+378↑j ...
                mov     rax, [rbp+90h+arg_18]
                jmp     loc_1406F568E
; ---------------------------------------------------------------------------

loc_1406F5839:                          ; CODE XREF: sub_1406F5218+1D8↑j
                jmp     loc_1406F53F9
; ---------------------------------------------------------------------------

loc_1406F583E:                          ; CODE XREF: sub_1406F5218+1E4↑j
                call    sub_1402A58F8
                cmp     rax, r8
                jnz     loc_1406F5402
                add     r8, 8
                jmp     loc_1406F5402
; ---------------------------------------------------------------------------

loc_1406F5855:                          ; CODE XREF: sub_1406F5218+2D7↑j
                call    sub_14078C554
                and     qword ptr [r14+88h], 0
                jmp     loc_1406F54F5
; ---------------------------------------------------------------------------

loc_1406F5867:                          ; CODE XREF: sub_1406F5218+505↑j
                mov     r8d, dword ptr [rsp+190h+var_130]
                xor     ecx, ecx
                mov     rdx, [rsp+190h+var_138]
                call    sub_14075BEC8
                jmp     loc_1406F5723
; ---------------------------------------------------------------------------

loc_1406F587D:                          ; CODE XREF: sub_1406F5218+201↑j
                call    sub_1402A58F8
                cmp     rax, rdx
                jnz     loc_1406F541F
                jmp     loc_140825BB8
; ---------------------------------------------------------------------------

loc_1406F5890:                          ; CODE XREF: sub_1406F5218+298↑j
                mov     rcx, r13
                call    sub_1407783B8
                jmp     loc_1406F54C3
; ---------------------------------------------------------------------------

loc_1406F589D:                          ; CODE XREF: sub_1406F5218+2F5↑j
                mov     edx, dword ptr [rsp+190h+var_130]
                mov     rcx, [rsp+190h+var_138]
                call    sub_140772878
                xor     r12d, r12d
                mov     [rsp+190h+var_140], r12
                jmp     loc_1406F5513
sub_1406F5218   endp

; ---------------------------------------------------------------------------
algn_1406F58B8:                         ; DATA XREF: .rdata:000000014007FF0C↑o
                                        ; .pdata:0000000140104DA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F58C0   proc near               ; CODE XREF: sub_1403A2964+BA↑p
                                        ; sub_140694400+22E↑p ...
                lea     rax, [rcx+0FFFh]
                mov     r8, rcx
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rax, rcx
                jb      short loc_1406F58FE
                mov     edx, cs:dword_140C4CB30
                add     rdx, 3
                and     rdx, 0FFFFFFFFFFFFFFFCh
                add     rax, rdx
                cmp     rax, rcx
                jb      short loc_1406F58FE
                mov     ecx, cs:dword_140C4CACC
                shl     ecx, 0Ch
                add     rax, rcx
                cmp     rax, r8
                jb      short loc_1406F58FE
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F58FE:                          ; CODE XREF: sub_1406F58C0+13↑j
                                        ; sub_1406F58C0+29↑j ...
                xor     eax, eax
                retn
sub_1406F58C0   endp

; ---------------------------------------------------------------------------
                align 2
algn_1406F5902:                         ; DATA XREF: .pdata:0000000140104DB4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406F5908   proc near               ; CODE XREF: MmResetDriverPaging+3C↑p
                                        ; MmPageEntireDriver+6D↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                test    dword ptr [rcx+68h], 400000h
                mov     rbx, rcx
                jnz     short loc_1406F592A

loc_1406F591E:                          ; CODE XREF: sub_1406F5908+6C↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F592A:                          ; CODE XREF: sub_1406F5908+14↑j
                mov     rdi, gs:188h
                dec     word ptr [rdi+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                test    dword ptr [rbx+68h], 400000h
                jz      short loc_1406F5960
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140A567B0
                btr     dword ptr [rbx+68h], 16h

loc_1406F5960:                          ; CODE XREF: sub_1406F5908+47↑j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rdi
                call    sub_14021E1F0
                jmp     short loc_1406F591E
sub_1406F5908   endp

; ---------------------------------------------------------------------------
byte_1406F5976  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140104DC0↑o

; =============== S U B R O U T I N E =======================================


sub_1406F597C   proc near               ; CODE XREF: sub_140694E60+479↑p
                                        ; sub_1407A4E40+DB↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], r8w
                mov     [rax+10h], edx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     esi, r9d
                mov     ebx, edx
                mov     r15, rcx
                and     qword ptr [rax-40h], 0
                and     dword ptr [rax+18h], 0
                and     dword ptr [rax-58h], 0
                mov     r8d, 0Ch
                lea     r9, [rax-50h]
                mov     dl, 1
                call    RtlImageDirectoryEntryToData
                mov     rdi, [rsp+78h+arg_20]
                test    rax, rax
                jnz     short loc_1406F5A15
                and     [rdi], eax

loc_1406F59CF:                          ; CODE XREF: sub_1406F597C+A0↓j
                lea     rdx, [rsi+8]
                cmp     rdx, rsi
                jb      loc_1406F5B89
                cmp     rdx, rbx
                ja      loc_1406F5B89

loc_1406F59E5:                          ; DATA XREF: .rdata:000000014007FFE0↑o
;   __try { // __except at loc_1406F5B7D
                mov     rax, [rsi+r15]
                mov     [rsp+78h+var_50], rax
;   } // starts at 1406F59E5

loc_1406F59EE:                          ; DATA XREF: .rdata:000000014007FFE0↑o
                mov     rcx, rax
                shr     rcx, 20h
                lea     r14d, [rsi+8]
                add     r14d, ecx
                cmp     r14d, esi
                jb      short loc_1406F5A1E
                cmp     r14d, ebx
                ja      short loc_1406F5A1E
                cmp     eax, 1
                jz      short loc_1406F5A28
                mov     ebx, 0C00000BBh
                jmp     loc_1406F5B92
; ---------------------------------------------------------------------------

loc_1406F5A15:                          ; CODE XREF: sub_1406F597C+4F↑j
                sub     eax, r15d
                mov     [rdi], eax
                cmp     eax, ebx
                jbe     short loc_1406F59CF

loc_1406F5A1E:                          ; CODE XREF: sub_1406F597C+83↑j
                                        ; sub_1406F597C+88↑j ...
                mov     ebx, 0C000007Bh
                jmp     loc_1406F5B92
; ---------------------------------------------------------------------------

loc_1406F5A28:                          ; CODE XREF: sub_1406F597C+8D↑j
                add     esi, 8

loc_1406F5A2B:                          ; CODE XREF: sub_1406F597C+15E↓j
                                        ; sub_1406F597C+1E0↓j
                cmp     esi, r14d
                jnb     loc_1406F5B79
                mov     edx, esi
                lea     rcx, [rdx+0Ch]
                mov     eax, r14d
                cmp     rcx, rax
                ja      short loc_1406F5A1E

loc_1406F5A42:                          ; DATA XREF: .rdata:000000014007FFF0↑o
;   __try { // __except at loc_1406F5B6D
                lea     r13, [rdx+r15]
                mov     [rsp+78h+var_40], r13
                movsd   xmm0, qword ptr [r13+0]
                movsd   [rsp+78h+var_50], xmm0
                mov     r12d, [r13+8]
;   } // starts at 1406F5A42

loc_1406F5A5B:                          ; DATA XREF: .rdata:000000014007FFF0↑o
                lea     r8, [rsp+78h+arg_10]
                mov     edx, 0Ch
                mov     ecx, esi
                call    sub_1402008C8
                test    eax, eax
                js      short loc_1406F5A1E
                lea     r8, [rsp+78h+arg_10]
                mov     edx, r12d
                mov     ecx, [rsp+78h+arg_10]
                call    sub_1402008C8
                test    eax, eax
                js      short loc_1406F5A1E
                mov     esi, [rsp+78h+arg_10]
                cmp     esi, r14d
                ja      short loc_1406F5A1E
                mov     rax, [rsp+78h+var_50]
                sub     rax, 3
                jz      short loc_1406F5AD3
                sub     rax, 1
                jz      short loc_1406F5AC0
                cmp     rax, 1
                jnz     short loc_1406F5ACF
                call    sub_1402EF804
                test    al, al
                jz      short loc_1406F5ACF
                lea     rbx, [rdi+18h]
                jmp     short loc_1406F5AD7
; ---------------------------------------------------------------------------

loc_1406F5AC0:                          ; CODE XREF: sub_1406F597C+12D↑j
                call    sub_1402EF804
                test    al, al
                jz      short loc_1406F5ACF
                lea     rbx, [rdi+10h]
                jmp     short loc_1406F5AD7
; ---------------------------------------------------------------------------

loc_1406F5ACF:                          ; CODE XREF: sub_1406F597C+133↑j
                                        ; sub_1406F597C+13C↑j ...
                xor     ebx, ebx
                jmp     short loc_1406F5AD7
; ---------------------------------------------------------------------------

loc_1406F5AD3:                          ; CODE XREF: sub_1406F597C+127↑j
                lea     rbx, [rdi+8]

loc_1406F5AD7:                          ; CODE XREF: sub_1406F597C+142↑j
                                        ; sub_1406F597C+151↑j ...
                test    rbx, rbx
                jz      loc_1406F5A2B
                cmp     qword ptr [rbx], 0
                jnz     loc_1406F5A1E
                mov     r8d, 7252694Dh
                lea     rdx, [r12+0Ch]
                mov     ecx, 100h
                call    sub_140268720
                mov     [rbx], rax
                test    rax, rax
                jnz     short loc_1406F5B11
                mov     ebx, 0C000009Ah
                jmp     loc_1406F5B92
; ---------------------------------------------------------------------------

loc_1406F5B11:                          ; CODE XREF: sub_1406F597C+189↑j
                                        ; DATA XREF: .rdata:0000000140080000↑o
;   __try { // __except at loc_1406F5B61
                lea     r8, [r12+0Ch]
                mov     rdx, r13
                mov     rcx, rax
                call    memmove
                nop
;   } // starts at 1406F5B11

loc_1406F5B22:                          ; DATA XREF: .rdata:0000000140080000↑o
                mov     rax, [rbx]
                movsd   xmm0, [rsp+78h+var_50]
                movsd   qword ptr [rax], xmm0
                mov     [rax+8], r12d
                lea     r8, [rsp+78h+var_58]
                mov     edx, [rsp+78h+arg_8]
                mov     rcx, [rbx]
                call    sub_14033F534
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406F5B8E
                mov     eax, [rsp+78h+var_58]
                add     [rdi+4], eax
                mov     r15, [rsp+78h+arg_0]
                jmp     loc_1406F5A2B
; ---------------------------------------------------------------------------

loc_1406F5B61:                          ; DATA XREF: .rdata:0000000140080000↑o
;   __except(1) // owned by 1406F5B11
                mov     ebx, eax
                mov     rdi, [rsp+78h+arg_20]
                jmp     short loc_1406F5B8E
; ---------------------------------------------------------------------------

loc_1406F5B6D:                          ; DATA XREF: .rdata:000000014007FFF0↑o
;   __except(1) // owned by 1406F5A42
                mov     ebx, eax
                mov     rdi, [rsp+78h+arg_20]
                jmp     short loc_1406F5B8E
; ---------------------------------------------------------------------------

loc_1406F5B79:                          ; CODE XREF: sub_1406F597C+B2↑j
                xor     ebx, ebx
                jmp     short loc_1406F5B8E
; ---------------------------------------------------------------------------

loc_1406F5B7D:                          ; DATA XREF: .rdata:000000014007FFE0↑o
;   __except(1) // owned by 1406F59E5
                mov     ebx, eax
                mov     rdi, [rsp+78h+arg_20]
                jmp     short loc_1406F5B8E
; ---------------------------------------------------------------------------

loc_1406F5B89:                          ; CODE XREF: sub_1406F597C+5A↑j
                                        ; sub_1406F597C+63↑j
                mov     ebx, 0C000007Bh

loc_1406F5B8E:                          ; CODE XREF: sub_1406F597C+1CF↑j
                                        ; sub_1406F597C+1EF↑j ...
                test    ebx, ebx
                jns     short loc_1406F5B9A

loc_1406F5B92:                          ; CODE XREF: sub_1406F597C+94↑j
                                        ; sub_1406F597C+A7↑j ...
                mov     rcx, rdi
                call    sub_1406953D4

loc_1406F5B9A:                          ; CODE XREF: sub_1406F597C+214↑j
                mov     eax, ebx
                add     rsp, 40h
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
; } // starts at 1406F597C
sub_1406F597C   endp

byte_1406F5BAD  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104DCC↑o

; =============== S U B R O U T I N E =======================================


sub_1406F5BB4   proc near               ; CODE XREF: sub_140694E60+4A2↑p
                                        ; sub_1407A4E40+F3↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 0000000140825CE6 SIZE 00000022 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                mov     ebx, r8d
                mov     ebp, r8d
                mov     r12d, edx
                shr     ebx, 0Ch
                mov     rsi, rcx
                mov     r14d, ebx
                shl     r14d, 3
                mov     ecx, 100h
                mov     r8d, 7252694Dh
                mov     r15, r9
                lea     edx, [r14+38h]
                call    sub_140268720
                mov     rdi, rax
                test    rax, rax
                jz      loc_140825CE6
                lea     ebx, [rbx+rbx*2]
                mov     ecx, 100h
                add     ebx, [rsi+4]
                mov     r8d, 7252694Dh
                shl     ebx, 2
                mov     edx, ebx
                call    sub_140268720
                mov     [rdi+30h], rax
                mov     rcx, rax
                test    rax, rax
                jz      loc_140825CF0
                mov     r9, [rsi+10h]
                lea     rax, [rdi+38h]
                mov     r8, [rsi+8]
                mov     edx, [rsi+4]
                mov     [rsp+68h+var_28], r14d
                mov     [rsp+68h+var_30], rax
                mov     rax, [rsi+18h]
                mov     [rsp+68h+var_38], ebx
                mov     [rsp+68h+var_40], rcx
                mov     ecx, ebp
                mov     [rsp+68h+var_48], rax
                call    sub_14033F610
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406F5C9C
                mov     eax, [rsi]
                mov     edx, 0FFFFF000h
                mov     [rdi+8], eax
                lea     eax, [rbp+0FFFh]
                mov     ecx, cs:dword_140C4CB30
                and     eax, edx
                add     ecx, 0FFFh
                mov     [rdi+4], r12d
                and     ecx, edx
                add     ecx, eax
                mov     [rdi], ecx
                mov     [r15], rdi
                xor     edi, edi
                xor     ebx, ebx

loc_1406F5C9C:                          ; CODE XREF: sub_1406F5BB4+B7↑j
                                        ; sub_1406F5BB4+130141↓j
                test    rdi, rdi
                jnz     loc_140825CFA

loc_1406F5CA5:                          ; CODE XREF: sub_1406F5BB4+130137↓j
                                        ; sub_1406F5BB4+13014F↓j
                lea     r11, [rsp+68h+var_18]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F5BB4   endp

algn_1406F5CC7:                         ; DATA XREF: .rdata:0000000140080050↑o
                                        ; .pdata:0000000140104DD8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406F5CD0   proc near               ; CODE XREF: sub_140656F00+2ED↑p
                                        ; sub_140656F00+1B144A↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r11, [rsp+38h+arg_20]
                lea     rsi, [rdx+0FFFh]
                shr     r11, 0Ch
                mov     r15, r8
                shr     r15, 0Ch
                dec     r11
                add     r11, r15
                shr     rsi, 0Ch
                mov     rbp, r9
                xor     r10d, r10d
                shr     rbp, 0Ch
                mov     rbx, rcx
                lea     r14, [r15-1]
                not     r14
                and     r11, r14
                test    rbp, rbp
                jz      short loc_1406F5D39
                xor     r9d, r9d
                mov     r8, rbp
                mov     rdx, rsi
                mov     rcx, r11
                call    sub_14033FAAC
                mov     r11, rax

loc_1406F5D39:                          ; CODE XREF: sub_1406F5CD0+53↑j
                mov     rdi, [rsp+38h+arg_28]
                shr     rdi, 0Ch
                cmp     r11, rdi
                ja      loc_1406F5ECF
                mov     rax, rdi
                sub     rax, r11
                inc     rax
                cmp     rsi, rax
                ja      loc_1406F5ECF
                mov     rax, [rbx]
                test    rax, rax
                jz      loc_1406F5EB4

loc_1406F5D69:                          ; CODE XREF: sub_1406F5CD0+A2↓j
                mov     rbx, rax
                mov     rax, [rax]
                test    rax, rax
                jnz     short loc_1406F5D69
                movzx   ecx, byte ptr [rbx+20h]
                mov     rdx, rbx
                mov     eax, [rbx+18h]
                shl     rcx, 20h
                or      rcx, rax
                cmp     rcx, r11
                ja      loc_1406F5EC2

loc_1406F5D8E:                          ; CODE XREF: sub_1406F5CD0+155↓j
                                        ; sub_1406F5CD0+1FA↓j
                mov     rax, [rbx+8]
                mov     rcx, rbx
                test    rax, rax
                jnz     short loc_1406F5DAE

loc_1406F5D9A:                          ; CODE XREF: sub_1406F5CD0+DC↓j
                mov     rbx, [rbx+10h]
                and     rbx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_1406F5DC7
                cmp     [rbx], rcx
                jz      short loc_1406F5DC7
                mov     rcx, rbx
                jmp     short loc_1406F5D9A
; ---------------------------------------------------------------------------

loc_1406F5DAE:                          ; CODE XREF: sub_1406F5CD0+C8↑j
                mov     rcx, [rax]
                mov     rbx, rax
                test    rcx, rcx
                jz      short loc_1406F5DC7

loc_1406F5DB9:                          ; CODE XREF: sub_1406F5CD0+F5↓j
                mov     rax, [rcx]
                mov     rbx, rcx
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1406F5DB9

loc_1406F5DC7:                          ; CODE XREF: sub_1406F5CD0+D2↑j
                                        ; sub_1406F5CD0+D7↑j ...
                movzx   ecx, byte ptr [rdx+21h]
                mov     eax, [rdx+1Ch]
                shl     rcx, 20h
                or      rcx, rax
                add     rcx, r15
                test    rbx, rbx
                jz      loc_1406F5E81
                lea     rax, [rcx-1]
                and     rax, r14
                cmp     rax, r11
                jb      short loc_1406F5E2A
                and     rcx, r14

loc_1406F5DF0:                          ; CODE XREF: sub_1406F5CD0+170↓j
                test    rbp, rbp
                jz      short loc_1406F5E06
                xor     r9d, r9d
                mov     r8, rbp
                mov     rdx, rsi
                call    sub_14033FAAC
                mov     rcx, rax

loc_1406F5E06:                          ; CODE XREF: sub_1406F5CD0+123↑j
                cmp     rcx, rdi
                ja      loc_1406F5ECF
                movzx   edx, byte ptr [rbx+20h]
                mov     eax, [rbx+18h]
                shl     rdx, 20h
                or      rdx, rax
                cmp     rdx, rcx
                ja      short loc_1406F5E42

loc_1406F5E22:                          ; CODE XREF: sub_1406F5CD0+16B↓j
                                        ; sub_1406F5CD0+178↓j ...
                mov     rdx, rbx
                jmp     loc_1406F5D8E
; ---------------------------------------------------------------------------

loc_1406F5E2A:                          ; CODE XREF: sub_1406F5CD0+11B↑j
                movzx   ecx, byte ptr [rbx+20h]
                mov     eax, [rbx+18h]
                shl     rcx, 20h
                or      rcx, rax
                cmp     rcx, r11
                jbe     short loc_1406F5E22
                mov     rcx, r11
                jmp     short loc_1406F5DF0
; ---------------------------------------------------------------------------

loc_1406F5E42:                          ; CODE XREF: sub_1406F5CD0+150↑j
                sub     rdx, rcx
                cmp     rsi, rdx
                ja      short loc_1406F5E22
                mov     rax, rdi
                sub     rax, rcx
                inc     rax
                cmp     rsi, rax
                ja      short loc_1406F5E22
                mov     rax, [rsp+38h+arg_30]
                shl     rcx, 0Ch
                mov     [rax], rcx

loc_1406F5E64:                          ; CODE XREF: sub_1406F5CD0+1F0↓j
                                        ; sub_1406F5CD0+205↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, r10d
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F5E81:                          ; CODE XREF: sub_1406F5CD0+10B↑j
                and     rcx, r14
                cmp     rcx, r11
                cmovnb  r11, rcx
                test    rbp, rbp
                jz      short loc_1406F5EA4
                xor     r9d, r9d
                mov     r8, rbp
                mov     rdx, rsi
                mov     rcx, r11
                call    sub_14033FAAC
                mov     r11, rax

loc_1406F5EA4:                          ; CODE XREF: sub_1406F5CD0+1BE↑j
                cmp     rdi, r11
                jb      short loc_1406F5ECF
                sub     rdi, r11
                inc     rdi
                cmp     rsi, rdi
                ja      short loc_1406F5ECF

loc_1406F5EB4:                          ; CODE XREF: sub_1406F5CD0+93↑j
                                        ; sub_1406F5CD0+1F8↓j
                mov     rax, [rsp+38h+arg_30]
                shl     r11, 0Ch
                mov     [rax], r11
                jmp     short loc_1406F5E64
; ---------------------------------------------------------------------------

loc_1406F5EC2:                          ; CODE XREF: sub_1406F5CD0+B8↑j
                sub     rcx, r11
                cmp     rsi, rcx
                jbe     short loc_1406F5EB4
                jmp     loc_1406F5D8E
; ---------------------------------------------------------------------------

loc_1406F5ECF:                          ; CODE XREF: sub_1406F5CD0+75↑j
                                        ; sub_1406F5CD0+87↑j ...
                mov     r10d, 0C0000017h
                jmp     short loc_1406F5E64
sub_1406F5CD0   endp

; ---------------------------------------------------------------------------
algn_1406F5ED7:                         ; DATA XREF: .pdata:0000000140104DE4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F5EE0   proc near               ; DATA XREF: .pdata:0000000140104DF0↑o
                                        ; PAGEDATA:0000000140D2D5F0↓o

arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

                mov     rax, [rsp+arg_28]
                and     ecx, 1
                lea     rdx, [rcx-1]
                mov     ecx, [rax+rcx*4]
                and     edx, 1
                mov     eax, [rax+rdx*4]
                xor     eax, ecx
                xor     eax, [rsp+arg_30]
                retn
sub_1406F5EE0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1406F5EFD  db 13h dup(0CCh)        ; DATA XREF: .pdata:0000000140104DF0↑o
; Exported entry 1836. PsGetProcessDxgProcess

; =============== S U B R O U T I N E =======================================


                public PsGetProcessDxgProcess
PsGetProcessDxgProcess proc near        ; DATA XREF: .pdata:0000000140104DFC↑o
                mov     rax, [rcx+960h]
                retn
PsGetProcessDxgProcess endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1406F5F19:                         ; DATA XREF: .pdata:0000000140104DFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F5F20   proc near               ; CODE XREF: sub_14060DA00+25EC↑p
                                        ; sub_140687200+12BA↑p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140825D08 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], rbx
                mov     [rax+10h], rdx
                mov     [rax+8], cl
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r14, rdx
                xor     edi, edi
                mov     [rax-68h], edi
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-50h], xmm0
                movups  xmmword ptr [rax-40h], xmm0
                xor     esi, esi
                mov     [rax-58h], rsi
                xor     r12d, r12d
                mov     [rax-64h], r12d
                and     [rax+18h], rsi
                and     [rax+8], esi
                xor     ebx, ebx
                mov     [rax-60h], ebx
                test    rdx, rdx
                jz      loc_140825D08

loc_1406F5F6F:                          ; DATA XREF: .rdata:000000014008016C↑o
;   __try { // __except at loc_1406F604A
                lea     rax, [rdx+20h]
                mov     r9, 7FFFFFFF0000h
                cmp     rax, r9
                ja      loc_1406F6016
                cmp     rax, rdx
                jb      loc_1406F6016

loc_1406F5F8F:                          ; CODE XREF: sub_1406F5F20+101↓j
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+98h+var_50], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  [rsp+98h+var_40], xmm1
                movd    ecx, xmm1
                test    ecx, ecx
                jz      short loc_1406F5FBD
                mov     r8d, ecx
                mov     rdx, qword ptr [rsp+98h+var_50]
                add     r8, rdx
                cmp     r8, r9
                ja      short loc_1406F6026
                cmp     r8, rdx
                jb      short loc_1406F6026

loc_1406F5FBD:                          ; CODE XREF: sub_1406F5F20+86↑j
                                        ; sub_1406F5F20+111↓j
                cmp     qword ptr [rsp+98h+var_50], 0
                jz      short loc_1406F603A
                test    ecx, ecx
                jz      short loc_1406F603A
                mov     r12d, ecx
                mov     [rsp+98h+var_64], ecx
                mov     r15d, ecx
                mov     r8d, 20534C53h
                mov     edx, ecx
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     [rsp+98h+var_58], rax
                test    rax, rax
                jz      short loc_1406F6033
                mov     r8d, r15d
                mov     rdx, qword ptr [rsp+98h+var_50]
                mov     rcx, rax
                call    memmove
                mov     r15, qword ptr [rsp+98h+var_50+8]
                test    r15, r15
                jz      short loc_1406F6048
                mov     ebx, dword ptr [rsp+98h+var_40+4]
                mov     [rsp+98h+var_60], ebx
                jmp     short loc_1406F6048
; ---------------------------------------------------------------------------

loc_1406F6016:                          ; CODE XREF: sub_1406F5F20+60↑j
                                        ; sub_1406F5F20+69↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_1406F5F8F
; ---------------------------------------------------------------------------

loc_1406F6026:                          ; CODE XREF: sub_1406F5F20+96↑j
                                        ; sub_1406F5F20+9B↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406F5FBD
; ---------------------------------------------------------------------------

loc_1406F6033:                          ; CODE XREF: sub_1406F5F20+D0↑j
                mov     edi, 0C0000017h
                jmp     short loc_1406F603F
; ---------------------------------------------------------------------------

loc_1406F603A:                          ; CODE XREF: sub_1406F5F20+A3↑j
                                        ; sub_1406F5F20+A7↑j
                mov     edi, 0C0000023h

loc_1406F603F:                          ; CODE XREF: sub_1406F5F20+118↑j
                mov     [rsp+98h+var_68], edi
                mov     r15, qword ptr [rsp+98h+var_50+8]

loc_1406F6048:                          ; CODE XREF: sub_1406F5F20+EA↑j
                                        ; sub_1406F5F20+F4↑j
                jmp     short loc_1406F606B
;   } // starts at 1406F5F6F
; ---------------------------------------------------------------------------

loc_1406F604A:                          ; DATA XREF: .rdata:000000014008016C↑o
;   __except(1) // owned by 1406F5F6F
                mov     edi, eax
                mov     [rsp+98h+var_68], eax
                mov     r14, [rsp+98h+arg_8]
                mov     r15, qword ptr [rsp+98h+var_50+8]
                mov     rsi, [rsp+98h+var_58]
                mov     r12d, [rsp+98h+var_64]
                mov     ebx, [rsp+98h+var_60]

loc_1406F606B:                          ; CODE XREF: sub_1406F5F20:loc_1406F6048↑j
                test    edi, edi
                js      loc_1406F6101
                lea     rax, [rsp+98h+arg_0]
                mov     [rsp+98h+var_78], rax
                lea     r9, [rsp+98h+arg_10]
                mov     r8d, ebx
                mov     edx, r12d
                mov     rcx, rsi
                call    sub_1406F6148
                mov     edi, eax
                mov     [rsp+98h+var_68], eax

loc_1406F609C:                          ; DATA XREF: .rdata:000000014008017C↑o
;   __try { // __except at loc_1406F60F6
                test    eax, eax
                js      short loc_1406F60F4
                test    r15, r15
                jz      short loc_1406F60DE
                mov     r12d, [rsp+98h+arg_0]
                cmp     dword ptr [rsp+98h+var_40+4], r12d
                jb      short loc_1406F60EB
                mov     r8d, 1
                mov     edx, r12d
                mov     rcx, r15
                call    ProbeForWrite
                mov     r8d, r12d
                mov     rdx, [rsp+98h+arg_10]
                mov     rcx, r15
                call    memmove
                mov     [r14+14h], r12d
                jmp     short loc_1406F60F4
; ---------------------------------------------------------------------------

loc_1406F60DE:                          ; CODE XREF: sub_1406F5F20+183↑j
                mov     ecx, [rsp+98h+arg_0]
                mov     [r14+14h], ecx
                jmp     short loc_1406F60F4
; ---------------------------------------------------------------------------

loc_1406F60EB:                          ; CODE XREF: sub_1406F5F20+192↑j
                mov     edi, 0C0000023h
                mov     [rsp+98h+var_68], edi

loc_1406F60F4:                          ; CODE XREF: sub_1406F5F20+17E↑j
                                        ; sub_1406F5F20+1BC↑j ...
                jmp     short loc_1406F6101
;   } // starts at 1406F609C
; ---------------------------------------------------------------------------

loc_1406F60F6:                          ; DATA XREF: .rdata:000000014008017C↑o
;   __except(1) // owned by 1406F609C
                mov     edi, eax
                mov     [rsp+98h+var_68], eax
                mov     rsi, [rsp+98h+var_58]

loc_1406F6101:                          ; CODE XREF: sub_1406F5F20+14D↑j
                                        ; sub_1406F5F20:loc_1406F60F4↑j ...
                test    rsi, rsi
                jz      short loc_1406F6110
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1406F6110:                          ; CODE XREF: sub_1406F5F20+1E4↑j
                mov     rcx, [rsp+98h+arg_10]
                test    rcx, rcx
                jz      short loc_1406F6127
                mov     edx, 20534C53h
                call    ExFreePoolWithTag

loc_1406F6127:                          ; CODE XREF: sub_1406F5F20+1FB↑j
                mov     eax, edi
                mov     rbx, [rsp+98h+arg_18]
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F5F20
sub_1406F5F20   endp

byte_1406F613F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140080190↑o
                                        ; .pdata:0000000140104E08↑o

; =============== S U B R O U T I N E =======================================


sub_1406F6148   proc near               ; CODE XREF: sub_1406F5F20+171↑p
                                        ; DATA XREF: .pdata:0000000140104E14↑o

var_38          = qword ptr -38h
var_28          = byte ptr -28h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_20          = qword ptr  28h

                mov     rax, rsp
                push    rbx
                sub     rsp, 50h
                and     qword ptr [rax-18h], 0
                mov     rbx, r9
                and     dword ptr [rax-10h], 0
                xor     r9d, r9d
                mov     [rax-28h], rcx
                lea     rcx, sub_14066A1D0
                mov     [rax-20h], edx
                lea     rdx, [rsp+58h+var_28]
                mov     [rax-1Ch], r8d
                xor     eax, eax
                and     [rsp+58h+var_38], rax
                mov     r8d, 4C00h
                mov     [rsp+58h+var_C], eax
                call    KeExpandKernelStackAndCalloutEx
                test    eax, eax
                js      short loc_1406F61AA
                mov     rax, [rsp+58h+var_18]
                mov     rcx, [rsp+58h+arg_20]
                mov     [rbx], rax
                mov     eax, [rsp+58h+var_10]
                mov     [rcx], eax
                mov     eax, [rsp+58h+var_C]

loc_1406F61AA:                          ; CODE XREF: sub_1406F6148+46↑j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F6148   endp

algn_1406F61B1:                         ; DATA XREF: .pdata:0000000140104E14↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406F61B8   proc near               ; CODE XREF: sub_1406169E0+484↑p
                                        ; sub_1406177A0+536↑p
                                        ; DATA XREF: ...
                test    r9, r9
                jz      short locret_1406F620D
                and     dword ptr [r9+4], 0
                mov     r10d, 20000000h
                test    r10d, r8d
                jz      short locret_1406F620D
                movsxd  rax, r8d
                and     r8d, 40000000h
                sar     rax, 3Fh
                test    ecx, ecx
                js      short loc_1406F620F
                movups  xmm0, xmmword ptr [rdx]
                and     eax, 18h
                add     rax, 8
                test    r8d, r8d
                lea     rcx, [rax+20h]
                cmovz   rcx, rax
                movups  xmmword ptr [rcx+r9], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  xmmword ptr [rcx+r9+10h], xmm1

loc_1406F6203:                          ; CODE XREF: sub_1406F61B8+88↓j
                cmp     qword ptr [rdx], 0
                jz      short locret_1406F620D
                or      [r9+4], r10d

locret_1406F620D:                       ; CODE XREF: sub_1406F61B8+3↑j
                                        ; sub_1406F61B8+13↑j ...
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F620F:                          ; CODE XREF: sub_1406F61B8+25↑j
                and     eax, 0Ch
                add     rax, 8
                test    r8d, r8d
                lea     rcx, [rax+10h]
                cmovz   rcx, rax
                mov     eax, [rdx]
                add     rcx, r9
                mov     [rcx], eax
                mov     eax, [rdx+8]
                mov     [rcx+4], eax
                mov     eax, [rdx+10h]
                mov     [rcx+8], eax
                mov     eax, [rdx+14h]
                mov     [rcx+0Ch], eax
                mov     eax, [rdx+18h]
                mov     [rcx+10h], eax
                jmp     short loc_1406F6203
sub_1406F61B8   endp

; ---------------------------------------------------------------------------
algn_1406F6242:                         ; DATA XREF: .pdata:0000000140104E20↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406F6248   proc near               ; CODE XREF: sub_1406F62F0+268↓p
                                        ; DATA XREF: .pdata:0000000140104E2C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, [rcx+168h]
                mov     ebx, edx
                mov     rbp, rcx
                prefetchw byte ptr [rsi+90h]
                mov     edi, [rsi+90h]
                cmp     edi, edx
                jz      short loc_1406F62C1

loc_1406F627E:                          ; CODE XREF: sub_1406F6248+71↓j
                mov     edx, edi
                mov     eax, edi
                lock cmpxchg [rsi+90h], ebx
                mov     edi, eax
                cmp     eax, edx
                jnz     short loc_1406F62BD
                cmp     qword ptr [rbp+20h], 0
                jz      short loc_1406F62C1
                cmp     edx, ebx
                jnb     short loc_1406F62B7
                mov     r14d, ebx
                sub     r14d, edx

loc_1406F62A1:                          ; CODE XREF: sub_1406F6248+6D↓j
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dl, 1
                mov     rcx, rbp
                call    sub_14033FFB4
                sub     r14, 1
                jnz     short loc_1406F62A1

loc_1406F62B7:                          ; CODE XREF: sub_1406F6248+51↑j
                                        ; sub_1406F6248+77↓j
                cmp     edi, ebx
                jnz     short loc_1406F627E
                jmp     short loc_1406F62C1
; ---------------------------------------------------------------------------

loc_1406F62BD:                          ; CODE XREF: sub_1406F6248+46↑j
                cmp     edi, ebx
                jb      short loc_1406F62B7

loc_1406F62C1:                          ; CODE XREF: sub_1406F6248+34↑j
                                        ; sub_1406F6248+4D↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F6248   endp

byte_1406F62DD  db 13h dup(0CCh)        ; DATA XREF: .pdata:0000000140104E2C↑o

; =============== S U B R O U T I N E =======================================


sub_1406F62F0   proc near               ; DATA XREF: .pdata:0000000140104E38↑o
                                        ; PAGE:000000014098AF38↓o

var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = byte ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_48], rax
                mov     r15d, r9d
                mov     esi, edx
                mov     rdi, rcx
                mov     [rsp+0F8h+var_B0], rcx
                mov     [rsp+0F8h+var_B8], r8
                xor     edx, edx
                lea     r8d, [rdx+48h]
                lea     rcx, [rsp+0F8h+var_98]
                call    memset
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                xor     r14d, r14d
                test    rdi, rdi
                jnz     short loc_1406F635D

loc_1406F6353:                          ; CODE XREF: sub_1406F62F0+7C↓j
                mov     edi, 0C000000Dh
                jmp     loc_1406F66C7
; ---------------------------------------------------------------------------

loc_1406F635D:                          ; CODE XREF: sub_1406F62F0+61↑j
                cmp     [rsp+0F8h+var_B8], r14
                jnz     short loc_1406F636E
                cmp     esi, 7
                jz      short loc_1406F636E
                cmp     esi, 0Ah
                jnz     short loc_1406F6353

loc_1406F636E:                          ; CODE XREF: sub_1406F62F0+72↑j
                                        ; sub_1406F62F0+77↑j
                mov     rax, gs:188h
                mov     dil, [rax+232h]
                mov     [rsp+0F8h+var_C8], dil
                mov     r13, [rsp+0F8h+var_B8]
                mov     r12, r13
                mov     [rsp+0F8h+var_A8], r13
                test    r15d, r15d
                jz      short loc_1406F63E3
                test    dil, dil
                jz      short loc_1406F63E3
                cmp     r15d, 48h ; 'H'
                jbe     short loc_1406F63AA
                mov     edi, 0C0000004h
                jmp     loc_1406F66C7
; ---------------------------------------------------------------------------

loc_1406F63AA:                          ; CODE XREF: sub_1406F62F0+AE↑j
                                        ; DATA XREF: .rdata:00000001400801CC↑o
;   __try { // __except at loc_1406F63DC
                mov     rax, 7FFFFFFF0000h
                cmp     r13, rax
                cmovnb  r13, rax
                mov     [rsp+0F8h+var_B8], r13
                mov     r8, r15
                mov     rdx, r13
                lea     rcx, [rsp+0F8h+var_98]
                call    memmove
                lea     r12, [rsp+0F8h+var_98]
                mov     [rsp+0F8h+var_A8], r12
                jmp     short loc_1406F63E3
;   } // starts at 1406F63AA
; ---------------------------------------------------------------------------

loc_1406F63DC:                          ; DATA XREF: .rdata:00000001400801CC↑o
;   __except(1) // owned by 1406F63AA
                mov     edi, eax
                jmp     loc_1406F66C7
; ---------------------------------------------------------------------------

loc_1406F63E3:                          ; CODE XREF: sub_1406F62F0+A3↑j
                                        ; sub_1406F62F0+A8↑j ...
                mov     r8, cs:qword_140CFC548
                mov     [rsp+0F8h+var_C0], r14
                mov     [rsp+0F8h+var_D0], r14
                lea     rax, [rsp+0F8h+var_C0]
                mov     [rsp+0F8h+var_D8], rax
                mov     r9b, dil
                mov     edx, 1
                mov     rcx, [rsp+0F8h+var_B0]
                call    ObReferenceObjectByHandle
                mov     edi, eax
                test    eax, eax
                js      loc_1406F66C7
                sub     esi, 1
                jz      loc_1406F6689
                sub     esi, 1
                jz      loc_1406F666C
                sub     esi, 3
                jz      loc_1406F665A
                sub     esi, 1
                jz      loc_1406F65CD
                sub     esi, 1
                jz      loc_1406F657C
                sub     esi, 1
                jz      loc_1406F6517
                sub     esi, 1
                jz      short loc_1406F64BA
                cmp     esi, 1
                jnz     loc_1406F65EC
                test    r15d, r15d
                jnz     loc_1406F65EC
                mov     rdi, [rsp+0F8h+var_C0]
                lea     rsi, [rdi+160h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                cmp     [rdi+168h], r14
                jnz     short loc_1406F648D
                mov     edi, 0C000000Dh
                jmp     short loc_1406F6498
; ---------------------------------------------------------------------------

loc_1406F648D:                          ; CODE XREF: sub_1406F62F0+194↑j
                btr     dword ptr [rdi+1A0h], 10h
                mov     edi, r14d

loc_1406F6498:                          ; CODE XREF: sub_1406F62F0+19B↑j
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1406F64AD
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_1406F64AD:                          ; CODE XREF: sub_1406F62F0+1B3↑j
                mov     rcx, rsi

loc_1406F64B0:                          ; CODE XREF: sub_1406F62F0+287↓j
                call    sub_140243660
                jmp     loc_1406F66BD
; ---------------------------------------------------------------------------

loc_1406F64BA:                          ; CODE XREF: sub_1406F62F0+163↑j
                cmp     [rsp+0F8h+var_C8], r14b
                jnz     loc_1406F65EC
                mov     rcx, [r13+0]
                call    ObfReferenceObject
                mov     rdi, [rsp+0F8h+var_C0]
                lea     rsi, [rdi+160h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [r13+0]
                mov     [rdi+170h], rax
                mov     rax, [r13+8]
                mov     [rdi+178h], rax
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1406F650F
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_1406F650F:                          ; CODE XREF: sub_1406F62F0+215↑j
                mov     rcx, rsi
                jmp     loc_1406F65C0
; ---------------------------------------------------------------------------

loc_1406F6517:                          ; CODE XREF: sub_1406F62F0+15A↑j
                cmp     r15d, 4
                jnz     loc_1406F65EC
                cmp     [r12], r14d
                jz      loc_1406F65EC
                mov     rdi, [rsp+0F8h+var_C0]
                lea     rbx, [rdi+160h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                cmp     [rdi+168h], r14
                jnz     short loc_1406F6551
                mov     edi, 0C000000Dh
                jmp     short loc_1406F6560
; ---------------------------------------------------------------------------

loc_1406F6551:                          ; CODE XREF: sub_1406F62F0+258↑j
                mov     edx, [r12]
                mov     rcx, rdi
                call    sub_1406F6248
                mov     edi, r14d

loc_1406F6560:                          ; CODE XREF: sub_1406F62F0+25F↑j
                mov     eax, 11h
                lock cmpxchg [rbx], r14
                jz      short loc_1406F6574
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_1406F6574:                          ; CODE XREF: sub_1406F62F0+27A↑j
                mov     rcx, rbx
                jmp     loc_1406F64B0
; ---------------------------------------------------------------------------

loc_1406F657C:                          ; CODE XREF: sub_1406F62F0+151↑j
                test    r15d, r15d
                jnz     short loc_1406F65EC
                mov     rsi, [rsp+0F8h+var_C0]
                lea     rdi, [rsi+160h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                cmp     [rsi+168h], r14
                jz      short loc_1406F65A8
                mov     rcx, rsi
                call    sub_1406F6DD8

loc_1406F65A8:                          ; CODE XREF: sub_1406F62F0+2AE↑j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1406F65BD
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1406F65BD:                          ; CODE XREF: sub_1406F62F0+2C3↑j
                mov     rcx, rdi

loc_1406F65C0:                          ; CODE XREF: sub_1406F62F0+222↑j
                call    sub_140243660
                mov     edi, r14d
                jmp     loc_1406F66BD
; ---------------------------------------------------------------------------

loc_1406F65CD:                          ; CODE XREF: sub_1406F62F0+148↑j
                mov     rax, [rsp+0F8h+var_C0]
                mov     ecx, [rax+1A0h]
                and     cl, 6
                cmp     cl, 2
                jnz     short loc_1406F65EC
                cmp     r15d, 10h
                jz      short loc_1406F65FC
                cmp     r15d, 18h
                jz      short loc_1406F65F6

loc_1406F65EC:                          ; CODE XREF: sub_1406F62F0+168↑j
                                        ; sub_1406F62F0+171↑j ...
                mov     edi, 0C000000Dh
                jmp     loc_1406F66BD
; ---------------------------------------------------------------------------

loc_1406F65F6:                          ; CODE XREF: sub_1406F62F0+2FA↑j
                mov     rdx, [r12]
                jmp     short loc_1406F6636
; ---------------------------------------------------------------------------

loc_1406F65FC:                          ; CODE XREF: sub_1406F62F0+2F4↑j
                movups  xmm0, xmmword ptr [r12]
                lea     r12, [rsp+0F8h+var_98]
                movq    rax, xmm0
                mov     edx, eax
                mov     [rsp+0F8h+var_98], rdx
                shr     rax, 20h
                mov     [rsp+0F8h+var_90], eax
                psrldq  xmm0, 8
                movq    rax, xmm0
                mov     [rsp+0F8h+var_8C], eax
                shr     rax, 20h
                mov     [rsp+0F8h+var_88], eax
                mov     r14d, 1

loc_1406F6636:                          ; CODE XREF: sub_1406F62F0+30A↑j
                mov     dword ptr [rsp+0F8h+var_D0], r14d
                mov     eax, [r12+10h]
                mov     dword ptr [rsp+0F8h+var_D8], eax
                mov     r9d, [r12+0Ch]
                mov     r8d, [r12+8]
                mov     rcx, [rsp+0F8h+var_C0]
                call    sub_1406F68D4
                jmp     short loc_1406F6685
; ---------------------------------------------------------------------------

loc_1406F665A:                          ; CODE XREF: sub_1406F62F0+13F↑j
                sub     r15d, 10h
                neg     r15d
                sbb     eax, eax
                mov     edi, 0C000000Dh
                and     edi, eax
                jmp     short loc_1406F66BD
; ---------------------------------------------------------------------------

loc_1406F666C:                          ; CODE XREF: sub_1406F62F0+136↑j
                cmp     r15d, 10h
                jnz     short loc_1406F668F
                mov     r8, [r12]
                mov     rdx, [r12+8]
                mov     rcx, [rsp+0F8h+var_C0]
                call    sub_1406F6704

loc_1406F6685:                          ; CODE XREF: sub_1406F62F0+368↑j
                mov     edi, eax
                jmp     short loc_1406F66BD
; ---------------------------------------------------------------------------

loc_1406F6689:                          ; CODE XREF: sub_1406F62F0+12D↑j
                cmp     r15d, 48h ; 'H'
                jz      short loc_1406F6696

loc_1406F668F:                          ; CODE XREF: sub_1406F62F0+380↑j
                mov     edi, 0C0000004h
                jmp     short loc_1406F66BD
; ---------------------------------------------------------------------------

loc_1406F6696:                          ; CODE XREF: sub_1406F62F0+39D↑j
                mov     ecx, [r12]
                test    ecx, 0FC00FFFFh
                jnz     loc_1406F65EC
                mov     rax, [rsp+0F8h+var_C0]
                xor     ecx, [rax+100h]
                and     ecx, 20000h
                xor     [rax+100h], ecx

loc_1406F66BD:                          ; CODE XREF: sub_1406F62F0+1C5↑j
                                        ; sub_1406F62F0+2D8↑j ...
                mov     rcx, [rsp+0F8h+var_C0]
                call    PsDereferenceSiloContext

loc_1406F66C7:                          ; CODE XREF: sub_1406F62F0+68↑j
                                        ; sub_1406F62F0+B5↑j ...
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, edi
                mov     rcx, [rsp+0F8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0C0h
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
; } // starts at 1406F62F0
sub_1406F62F0   endp

byte_1406F66FB  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140104E38↑o

; =============== S U B R O U T I N E =======================================


sub_1406F6704   proc near               ; CODE XREF: sub_1406F62F0+390↑p
                                        ; DATA XREF: .rdata:0000000140080200↑o ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140825D12 SIZE 000000AC BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, r8
                mov     rbx, rdx
                mov     rsi, rcx
                test    rdx, rdx
                jz      loc_140825D12
                lea     rdi, [rcx+160h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                cmp     qword ptr [rsi+20h], 0
                jnz     loc_140825D1C
                cmp     qword ptr [rsi+168h], 0
                jnz     loc_140825D47
                mov     rax, gs:188h
                mov     edx, 2
                mov     r8, cs:IoCompletionObjectType
                mov     rcx, rbx
                and     [rsp+48h+var_20], 0
                and     [rsp+48h+arg_8], 0
                mov     r9b, [rax+232h]
                lea     rax, [rsp+48h+arg_8]
                mov     [rsp+48h+var_28], rax
                call    ObReferenceObjectByHandle
                mov     rdx, [rsp+48h+arg_8]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     [rsi+20h], rdx
                mov     ebp, eax
                test    eax, eax
                js      loc_140825D8F
                mov     rax, [rsi+168h]
                mov     [rsi+28h], r14
                test    rax, rax
                jnz     loc_140825D7D
                mov     al, [rdx]
                and     al, 7Fh
                cmp     al, 15h
                jz      loc_140825D72
                mov     eax, [rdx+2Ch]

loc_1406F67CC:                          ; CODE XREF: sub_1406F6704+12F674↓j
                cmp     eax, 4
                jbe     short loc_1406F67D6
                mov     eax, 4

loc_1406F67D6:                          ; CODE XREF: sub_1406F6704+CB↑j
                                        ; sub_1406F6704+12F681↓j
                mov     r8, r14
                mov     ecx, eax
                call    sub_14067E67C
                mov     [rsi+30h], rax
                test    rax, rax
                jz      loc_140825D8A
                lea     rbp, [rsi+88h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                lea     r15, [rsi+90h]
                mov     r14, [r15]

loc_1406F6808:                          ; CODE XREF: sub_1406F6704+166↓j
                cmp     r14, r15
                jnz     short loc_1406F6857
                mov     rax, rbx
                lock xadd [rbp+0], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406F686C

loc_1406F681C:                          ; CODE XREF: sub_1406F6704+170↓j
                mov     rcx, rbp
                call    sub_140243660
                xor     ebp, ebp

loc_1406F6826:                          ; CODE XREF: sub_1406F6704+12F6A5↓j
                                        ; sub_1406F6704+12F6B5↓j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_1406F6876

loc_1406F6833:                          ; CODE XREF: sub_1406F6704+17A↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     eax, ebp

loc_1406F683D:                          ; CODE XREF: sub_1406F6704+12F613↓j
                                        ; sub_1406F6704+12F63E↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F6857:                          ; CODE XREF: sub_1406F6704+107↑j
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14033FFB4
                mov     r14, [r14]
                jmp     short loc_1406F6808
; ---------------------------------------------------------------------------

loc_1406F686C:                          ; CODE XREF: sub_1406F6704+116↑j
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_1406F681C
; ---------------------------------------------------------------------------

loc_1406F6876:                          ; CODE XREF: sub_1406F6704+12D↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_1406F6833
sub_1406F6704   endp

; ---------------------------------------------------------------------------
byte_1406F6880  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140080200↑o
                                        ; .pdata:0000000140104E44↑o

; =============== S U B R O U T I N E =======================================


sub_1406F6888   proc near               ; CODE XREF: sub_1406BA750+301↑p
                                        ; sub_1406BCE08+41F↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140825DBE SIZE 00000140 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebp, ebp
                mov     rbx, rcx
                cmp     [rcx+20h], rbp
                jz      loc_140825DBE
                xor     r9d, r9d
                mov     r8b, 1
                xor     edx, edx
                call    sub_14033FFB4

loc_1406F68B8:                          ; CODE XREF: sub_1406F6888+12F5A7↓j
                                        ; sub_1406F6888+12F671↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F6888   endp

byte_1406F68CE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140080228↑o
                                        ; .pdata:0000000140104E50↑o

; =============== S U B R O U T I N E =======================================


sub_1406F68D4   proc near               ; CODE XREF: sub_1406F62F0+363↑p
                                        ; DATA XREF: .rdata:0000000140080284↑o ...

var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = byte ptr -68h
var_67          = byte ptr -67h
var_64          = byte ptr -64h
var_63          = byte ptr -63h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140825EFE SIZE 000000E7 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r15d, r8d
                mov     r14, rcx
                xor     ebx, ebx
                mov     r12b, bl
                mov     r13b, bl
                mov     esi, ebx
                mov     ecx, 0FFFh
                test    rcx, rdx
                setz    dil
                test    ecx, r8d
                setz    al
                test    al, dil
                jz      loc_140825F01
                lea     eax, [r15-4000h]
                cmp     eax, 3FFFC000h
                ja      loc_140825F01
                mov     r13d, [rsp+98h+arg_20]
                test    r13d, 55FFFFFFh
                jnz     loc_140825EFE
                test    r9d, r9d
                jz      loc_140825EFE
                mov     edi, 0A0h
                mov     r8d, 6E496C41h
                mov     edx, edi
                lea     ecx, [rbx+1]
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     [rsp+98h+var_58], rax
                test    rax, rax
                jz      loc_140825F0E
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     [rsi+10h], rcx
                mov     rdi, [rsp+98h+arg_8]
                mov     [rsi+28h], rdi
                lea     rax, [rdi+r15]
                mov     [rsp+98h+var_50], rax
                mov     [rsi+30h], rax
                mov     rcx, rsi
                call    sub_1406F6D40
                test    eax, eax
                jz      loc_140825F15
                mov     al, 1
                mov     [rsp+98h+var_67], al
                mov     [rsp+98h+var_64], al
                mov     [rsp+98h+var_78], rbx
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r15d
                mov     rcx, rdi
                call    IoAllocateMdl
                mov     rcx, rax
                mov     [rsi+20h], rax
                test    rax, rax
                jz      loc_140825F1F

loc_1406F69F1:                          ; DATA XREF: .rdata:0000000140080270↑o
;   __try { // __except at loc_1406F6A14
                mov     rax, gs:188h
                mov     [rsp+98h+var_48], rax
                mov     dl, [rax+232h]
                mov     [rsp+98h+var_63], dl
                lea     r8d, [rbx+2]
                call    MmProbeAndLockPages
                jmp     short loc_1406F6A35
;   } // starts at 1406F69F1
; ---------------------------------------------------------------------------

loc_1406F6A14:                          ; DATA XREF: .rdata:0000000140080270↑o
;   __except(1) // owned by 1406F69F1
                mov     edi, eax
                xor     ebx, ebx
                mov     r14, [rsp+98h+arg_0]
                mov     rsi, [rsp+98h+var_58]
                mov     r12b, bl
                mov     r15b, bl
                mov     r13b, [rsp+98h+var_64]
                jmp     loc_1406F6CE9
; ---------------------------------------------------------------------------

loc_1406F6A35:                          ; CODE XREF: sub_1406F68D4+13E↑j
                mov     [rsp+98h+var_68], 1
                mov     rcx, [rsi+20h]
                test    byte ptr [rcx+0Ah], 5
                jnz     loc_140825F2B
                mov     [rsp+98h+var_70], 40000000h
                mov     dword ptr [rsp+98h+var_78], ebx
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache

loc_1406F6A62:                          ; CODE XREF: sub_1406F68D4+12F65B↓j
                mov     [rsi+40h], rax
                test    rax, rax
                jz      loc_140825F34
                mov     r8, r15
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r12, [rsi+40h]
                mov     rax, 0DEADBEEFBAADF00Dh
                mov     [r12], rax
                mov     rax, 0BAADF00DDEADBEEFh
                mov     [r12+148h], rax
                mov     eax, r15d
                shr     eax, 6
                lea     r9d, ds:0FFFh[rax*8]
                mov     eax, 0FFFFF000h
                and     r9d, eax
                mov     [rsp+98h+var_60], r9d
                mov     r11d, r15d
                sub     r11d, r9d
                sub     r11d, 1000h
                mov     r8d, r11d
                shr     r8d, 6
                mov     r10d, r8d
                shr     r10d, 3
                add     r10d, 0FFFh
                and     r10d, eax
                mov     [rsp+98h+var_5C], r10d
                sub     r11d, r10d
                mov     dword ptr [rsp+98h+var_58], r11d
                mov     [rsi+48h], r15
                mov     [rsi+50h], r12
                mov     rax, [rsi+40h]
                add     rax, 1000h
                mov     [rsi+58h], rax
                mov     edi, r9d
                mov     [rsi+60h], rdi
                lea     rcx, [r9+rax]
                mov     [rsi+68h], rcx
                mov     edx, r10d
                mov     [rsi+70h], rdx
                mov     eax, r10d
                shr     eax, 6
                sub     r8d, eax
                mov     [rsi+88h], r8d
                lea     rax, [rcx+r10]
                mov     [rsi+78h], rax
                mov     eax, r11d
                mov     [rsi+80h], rax
                mov     eax, [rsp+98h+arg_18]
                mov     [rsi+90h], eax
                mov     rcx, [rsp+98h+arg_8]
                mov     [rsi+28h], rcx
                mov     rax, [rsp+98h+var_50]
                mov     [rsi+30h], rax
                lea     rax, [r10+r9]
                add     rcx, 1000h
                add     rcx, rax
                mov     [rsi+38h], rcx
                mov     [rsi+94h], r13d
                mov     r15d, [rsp+98h+arg_28]
                test    r15d, r15d
                jnz     loc_140825F46
                mov     ecx, r13d
                call    AlpcGetHeaderSize
                mov     r9d, [rsp+98h+var_60]
                mov     r10d, [rsp+98h+var_5C]
                mov     r11d, dword ptr [rsp+98h+var_58]

loc_1406F6B9E:                          ; CODE XREF: sub_1406F68D4+12F6B5↓j
                mov     [rsi+98h], eax
                mov     eax, [rsp+98h+arg_10]
                mov     [r12+8], eax
                mov     dword ptr [r12+0Ch], 1000h
                mov     [r12+10h], r9d
                lea     eax, [r9+1000h]
                mov     [r12+14h], eax
                mov     [r12+18h], r10d
                add     eax, r10d
                mov     [r12+1Ch], eax
                mov     [r12+20h], r11d
                mov     rax, [r12+40h]
                or      rax, 0FFFFFFh
                mov     [r12+40h], rax
                mov     rax, [r12+40h]
                mov     rcx, 0FFFFFF000000h
                or      rax, rcx
                mov     [r12+40h], rax
                mov     rax, [r12+40h]
                mov     rcx, 0FFFFFFFFFFFFh
                and     rax, rcx
                mov     [r12+40h], rax
                mov     eax, [rsi+94h]
                mov     [r12+24h], eax
                mov     eax, [rsi+98h]
                mov     [r12+28h], eax
                mov     rdi, [rsi+58h]
                mov     rax, [rsi+60h]
                lea     rdx, [rax+rdi]
                lea     rcx, [rax+3]
                shr     rcx, 2
                cmp     rdi, rdx
                cmova   rcx, rbx
                test    rcx, rcx
                jz      short loc_1406F6C57
                mov     eax, 0FFFFFFFFh
                rep stosd

loc_1406F6C57:                          ; CODE XREF: sub_1406F68D4+37A↑j
                lea     rcx, [r14+160h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     r12b, 1
                cmp     [r14+168h], rbx
                jnz     loc_140825F8E
                mov     eax, [r14+1A0h]
                test    al, 40h
                jnz     loc_140825F98
                mov     rdx, [r14+20h]
                test    rdx, rdx
                jz      short loc_1406F6CBD
                mov     ecx, [rsp+98h+var_60]
                shr     ecx, 3
                mov     r8, [r14+28h]
                call    sub_14067E67C
                mov     rdi, rax
                test    rax, rax
                jz      loc_140825FA2
                mov     rcx, [r14+30h]
                call    sub_14030E46C
                mov     [r14+30h], rdi
                mov     eax, [r14+1A0h]

loc_1406F6CBD:                          ; CODE XREF: sub_1406F68D4+3B7↑j
                mov     [r14+168h], rsi
                mov     rsi, rbx
                and     r15d, 1
                or      r15d, 38h
                shl     r15d, 0Bh
                btr     eax, 0Bh
                or      r15d, eax
                mov     [r14+1A0h], r15d
                mov     edi, ebx

loc_1406F6CE3:                          ; CODE XREF: sub_1406F68D4+12F6BF↓j
                                        ; sub_1406F68D4+12F6C9↓j ...
                mov     r15b, r12b
                mov     r13b, r12b

loc_1406F6CE9:                          ; CODE XREF: sub_1406F68D4+15C↑j
                                        ; sub_1406F68D4+12F635↓j ...
                test    r12b, r12b
                jz      short loc_1406F6D0D
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [r14+160h], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406F6D29

loc_1406F6D01:                          ; CODE XREF: sub_1406F68D4+461↓j
                lea     rcx, [r14+160h]
                call    sub_140243660

loc_1406F6D0D:                          ; CODE XREF: sub_1406F68D4+418↑j
                test    rsi, rsi
                jnz     loc_140825FAC

loc_1406F6D16:                          ; CODE XREF: sub_1406F68D4+12F70C↓j
                mov     eax, edi
                add     rsp, 60h
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
; ---------------------------------------------------------------------------

loc_1406F6D29:                          ; CODE XREF: sub_1406F68D4+42B↑j
                lea     rcx, [r14+160h]
                call    ExfTryToWakePushLock
                jmp     short loc_1406F6D01
; } // starts at 1406F68D4
sub_1406F68D4   endp

; ---------------------------------------------------------------------------
algn_1406F6D37:                         ; DATA XREF: .rdata:0000000140080284↑o
                                        ; .pdata:0000000140104E5C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F6D40   proc near               ; CODE XREF: sub_1406F68D4+E0↑p
                                        ; DATA XREF: .rdata:00000001400802A0↑o ...

; FUNCTION CHUNK AT 0000000140825FE6 SIZE 0000003F BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, qword_140C2A7C0
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, cs:qword_140C2A7D0
                lea     r8, qword_140C2A7D0
                cmp     rdx, r8
                jnz     short loc_1406F6DC8

loc_1406F6D6A:                          ; CODE XREF: sub_1406F6D40+12F2AA↓j
                                        ; sub_1406F6D40+12F2BA↓j ...
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     loc_14082601E
                mov     [rbx], rdx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     [rdx+8], rbx
                mov     ebx, 1
                add     cs:dword_140C2A7C8, ebx

loc_1406F6D90:                          ; CODE XREF: sub_1406F6D40+12F2CC↓j
                or      rdx, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C2A7C0, rdx
                and     dl, 6
                cmp     dl, 2
                jz      short loc_1406F6DBA

loc_1406F6DA5:                          ; CODE XREF: sub_1406F6D40+86↓j
                lea     rcx, qword_140C2A7C0
                call    sub_140243660
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F6DBA:                          ; CODE XREF: sub_1406F6D40+63↑j
                lea     rcx, qword_140C2A7C0
                call    ExfTryToWakePushLock
                jmp     short loc_1406F6DA5
; ---------------------------------------------------------------------------

loc_1406F6DC8:                          ; CODE XREF: sub_1406F6D40+28↑j
                mov     rcx, [rbx+10h]
                jmp     loc_140825FE6
sub_1406F6D40   endp

; ---------------------------------------------------------------------------
algn_1406F6DD1:                         ; DATA XREF: .rdata:00000001400802A0↑o
                                        ; .pdata:0000000140104E68↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406F6DD8   proc near               ; CODE XREF: sub_1406F62F0+2B3↑p
                                        ; sub_1406BA13C+161EC7↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx+168h]
                mov     rdi, rcx
                mov     rcx, [rbx+20h]
                call    MmUnlockPages
                mov     rcx, [rbx+20h]
                call    IoFreeMdl
                mov     rcx, rbx
                call    sub_1406F6E34
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                and     qword ptr [rdi+168h], 0
                btr     dword ptr [rdi+1A0h], 0Eh
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406F6DD8   endp

byte_1406F6E2C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140104E74↑o

; =============== S U B R O U T I N E =======================================


sub_1406F6E34   proc near               ; CODE XREF: sub_1406F6DD8+29↑p
                                        ; sub_1406F68D4+12F6FC↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, qword_140C2A7C0
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, [rbx]
                cmp     [rdx+8], rbx
                jnz     short loc_1406F6E9E
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_1406F6E9E
                mov     [rax], rdx
                mov     [rdx+8], rax
                dec     cs:dword_140C2A7C8
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C2A7C0, rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406F6E90

loc_1406F6E7D:                          ; CODE XREF: sub_1406F6E34+68↓j
                lea     rcx, qword_140C2A7C0
                call    sub_140243660
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1406F6E90:                          ; CODE XREF: sub_1406F6E34+47↑j
                lea     rcx, qword_140C2A7C0
                call    ExfTryToWakePushLock
                jmp     short loc_1406F6E7D
; ---------------------------------------------------------------------------

loc_1406F6E9E:                          ; CODE XREF: sub_1406F6E34+1E↑j
                                        ; sub_1406F6E34+27↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1406F6E34   endp

; ---------------------------------------------------------------------------
algn_1406F6EA5:                         ; DATA XREF: .pdata:0000000140104E80↑o
                align 10h
; Exported entry 2551. SeQuerySessionIdToken

; =============== S U B R O U T I N E =======================================


                public SeQuerySessionIdToken
SeQuerySessionIdToken proc near         ; CODE XREF: NtQueryInformationToken+197↑p
                                        ; SeQueryInformationToken+175↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, rdx
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     eax, [rdi+78h]
                mov     [rbx], eax
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeQuerySessionIdToken endp

byte_1406F6EFC  db 14h dup(0CCh)        ; DATA XREF: .pdata:0000000140104E8C↑o

; =============== S U B R O U T I N E =======================================


sub_1406F6F10   proc near               ; DATA XREF: .pdata:0000000140104E98↑o
                                        ; PAGE:000000014098AB78↓o

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_18          = dword ptr  20h

; __unwind { // __C_specific_handler
                push    rbx
                sub     rsp, 50h
                mov     r10, r8
                mov     r9d, edx
                mov     rbx, rcx
                and     [rsp+58h+var_18], 0
                mov     rax, gs:188h
                mov     r8b, [rax+232h]
                test    r8b, r8b
                jz      short loc_1406F6F55

loc_1406F6F3A:                          ; DATA XREF: .rdata:00000001400802C0↑o
;   __try { // __except at loc_1406F6F53
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovb   rdx, rcx
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_1406F6F55
;   } // starts at 1406F6F3A
; ---------------------------------------------------------------------------

loc_1406F6F53:                          ; DATA XREF: .rdata:00000001400802C0↑o
;   __except(1) // owned by 1406F6F3A
                jmp     short loc_1406F6F8E
; ---------------------------------------------------------------------------

loc_1406F6F55:                          ; CODE XREF: sub_1406F6F10+28↑j
                                        ; sub_1406F6F10+41↑j
                lea     rax, [rsp+58h+var_18]
                mov     [rsp+58h+var_28], rax
                and     [rsp+58h+var_30], 0
                mov     [rsp+58h+var_38], r9d
                xor     r9d, r9d
                mov     rdx, cs:qword_140C259E0
                mov     rcx, r10
                call    ObOpenObjectByName
                mov     [rsp+58h+arg_18], eax

loc_1406F6F80:                          ; DATA XREF: .rdata:00000001400802D0↑o
;   __try { // __except at loc_1406F6F8A
                mov     rcx, [rsp+58h+var_18]
                mov     [rbx], rcx
                jmp     short loc_1406F6F8E
;   } // starts at 1406F6F80
; ---------------------------------------------------------------------------

loc_1406F6F8A:                          ; DATA XREF: .rdata:00000001400802D0↑o
;   __except(1) // owned by 1406F6F80
                mov     eax, [rsp+58h+arg_18]

loc_1406F6F8E:                          ; CODE XREF: sub_1406F6F10:loc_1406F6F53↑j
                                        ; sub_1406F6F10+78↑j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F6F10
sub_1406F6F10   endp

byte_1406F6F95  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104E98↑o

; =============== S U B R O U T I N E =======================================


sub_1406F6F9C   proc near               ; CODE XREF: sub_1404ECB84+4↑p
                                        ; sub_1405FFC6C+3D↑p ...
                movzx   edx, word ptr [rcx]
                xor     r8d, r8d
                mov     r9d, edx
                shr     r9d, 1
                jz      short loc_1406F6FC2
                mov     r10, [rcx+8]

loc_1406F6FAE:                          ; CODE XREF: sub_1406F6F9C+24↓j
                mov     ecx, 0FFh
                cmp     [r10+r8*2], cx
                ja      short loc_1406F6FC5
                inc     r8d
                cmp     r8d, r9d
                jb      short loc_1406F6FAE

loc_1406F6FC2:                          ; CODE XREF: sub_1406F6F9C+C↑j
                shr     dx, 1

loc_1406F6FC5:                          ; CODE XREF: sub_1406F6F9C+1C↑j
                movzx   eax, dx
                retn
sub_1406F6F9C   endp

; ---------------------------------------------------------------------------
                align 2
algn_1406F6FCA:                         ; DATA XREF: .pdata:0000000140104EA4↑o
                align 10h
; Exported entry 1994. RtlAreAllAccessesGranted

; =============== S U B R O U T I N E =======================================



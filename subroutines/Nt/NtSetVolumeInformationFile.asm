NtSetVolumeInformationFile proc near    ; DATA XREF: .pdata:000000014010A580↑o
                                        ; PAGE:000000014098AF48↓o

var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_C8          = byte ptr -0C8h
var_C7          = byte ptr -0C7h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = dword ptr -70h
var_6C          = xmmword ptr -6Ch
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
arg_20          = dword ptr  28h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+108h+var_48], rax
                mov     ebx, r9d
                mov     [rsp+108h+var_C4], ebx
                mov     r13, r8
                mov     rdi, rdx
                mov     [rsp+108h+var_A0], rdx
                mov     r11, rcx
                xor     r14d, r14d
                mov     [rsp+108h+var_C0], r14
                mov     r12d, r14d
                mov     [rsp+108h+var_98], r14
                mov     [rsp+108h+var_B8], r14
                mov     r9, gs:188h
                mov     [rsp+108h+var_B0], r9
                mov     r10b, [r9+232h]
                mov     [rsp+108h+var_C7], r10b
                test    r10b, r10b
                jz      loc_14076BFFB
                cmp     [rsp+108h+arg_20], 0Fh
                jnb     loc_14076BFF1
                movsxd  r8, [rsp+108h+arg_20]
                lea     rdx, cs:140000000h
                movzx   eax, byte ptr [r8+rdx+985080h]
                test    al, al
                jz      loc_14076BFF1
                cmp     ebx, eax
                jnb     short loc_14076BF3E
                mov     eax, 0C0000004h
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076BF3E:                          ; CODE XREF: NtSetVolumeInformationFile+A2↑j
                                        ; DATA XREF: .rdata:0000000140094234↑o
;   __try { // __except at loc_14076BFEC
                mov     rcx, rdi
                mov     rsi, 7FFFFFFF0000h
                cmp     rdi, rsi
                cmovnb  rcx, rsi
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [r9+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_14076BFAA
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_14076BF81
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_14076BFAA

loc_14076BF81:                          ; CODE XREF: NtSetVolumeInformationFile+E5↑j
                test    ebx, ebx
                jz      short loc_14076BFE4
                test    r13b, 3
                jnz     loc_14076C3EF
                lea     rcx, [rbx+r13]
                cmp     rcx, rsi
                ja      short loc_14076BF9D
                cmp     rcx, r13
                jnb     short loc_14076BFE4

loc_14076BF9D:                          ; CODE XREF: NtSetVolumeInformationFile+106↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14076BFE4
; ---------------------------------------------------------------------------

loc_14076BFAA:                          ; CODE XREF: NtSetVolumeInformationFile+D7↑j
                                        ; NtSetVolumeInformationFile+EF↑j
                test    ebx, ebx
                jz      short loc_14076BFE4
                movzx   eax, byte ptr [r8+rdx+985470h]
                mov     r15d, 1
                sub     rax, r15
                test    r13, rax
                jnz     loc_14076C3F4
                lea     rcx, [rbx+r13]
                cmp     rcx, rsi
                ja      short loc_14076BFD7
                cmp     rcx, r13
                jnb     short loc_14076BFEA

loc_14076BFD7:                          ; CODE XREF: NtSetVolumeInformationFile+140↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14076BFEA
; ---------------------------------------------------------------------------

loc_14076BFE4:                          ; CODE XREF: NtSetVolumeInformationFile+F3↑j
                                        ; NtSetVolumeInformationFile+10B↑j ...
                mov     r15d, 1

loc_14076BFEA:                          ; CODE XREF: NtSetVolumeInformationFile+145↑j
                                        ; NtSetVolumeInformationFile+152↑j
                jmp     short loc_14076C008
;   } // starts at 14076BF3E
; ---------------------------------------------------------------------------

loc_14076BFEC:                          ; DATA XREF: .rdata:0000000140094234↑o
                                        ; .rdata:0000000140094254↑o
;   __except(1) // owned by 14076BF3E
;   __except(1) // owned by 14076C3EF
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076BFF1:                          ; CODE XREF: NtSetVolumeInformationFile+7A↑j
                                        ; NtSetVolumeInformationFile+9A↑j
                mov     eax, 0C0000003h
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076BFFB:                          ; CODE XREF: NtSetVolumeInformationFile+6C↑j
                lea     rdx, cs:140000000h
                mov     r15d, 1

loc_14076C008:                          ; CODE XREF: NtSetVolumeInformationFile:loc_14076BFEA↑j
                movsxd  rax, [rsp+108h+arg_20]
                mov     [rsp+108h+var_E8], r14
                lea     r9, [rsp+108h+var_C0]
                mov     r8b, r10b
                mov     edx, ds:rva dword_140986640[rdx+rax*4]
                mov     rcx, r11
                call    sub_1402433F0
                test    eax, eax
                js      loc_14076C3CB
                lea     rdx, [rsp+108h+var_B8]
                mov     rsi, [rsp+108h+var_C0]
                mov     rcx, rsi
                call    sub_14069C6DC
                mov     rdi, [rsp+108h+var_B8]
                test    eax, eax
                cmovs   rdi, r14
                mov     [rsp+108h+var_B8], rdi
                lea     rax, [rsi+50h]
                mov     [rsp+108h+var_A8], rax
                mov     r14d, [rax]
                test    r14b, 2
                jz      loc_14076C11D
                shr     r14d, 2
                and     r14b, r15b
                mov     rax, gs:188h
                or      ecx, 0FFFFFFFFh
                add     [rax+1E4h], cx
                mov     rbx, [rsp+108h+var_C0]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+108h+var_C8], 0
                mov     ecx, r15d
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_14076C0C5
                test    rax, rax
                jz      short loc_14076C0B4
                or      [rax+1Ah], r15b

loc_14076C0B4:                          ; CODE XREF: NtSetVolumeInformationFile+21E↑j
                mov     rsi, [rsp+108h+var_C0]
                mov     rcx, rsi
                call    ObfReferenceObject
                xor     ebx, ebx
                jmp     short loc_14076C0E8
; ---------------------------------------------------------------------------

loc_14076C0C5:                          ; CODE XREF: NtSetVolumeInformationFile+219↑j
                lea     rcx, [rsp+108h+var_C8]
                mov     [rsp+108h+var_E8], rcx
                mov     r9, rax
                mov     r8b, r14b
                mov     dl, [rsp+108h+var_C7]
                mov     rsi, [rsp+108h+var_C0]
                mov     rcx, rsi
                call    sub_1406A0C70
                mov     ebx, eax

loc_14076C0E8:                          ; CODE XREF: NtSetVolumeInformationFile+233↑j
                cmp     [rsp+108h+var_C8], 0
                jz      short loc_14076C10D
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+108h+var_B8]
                test    rcx, rcx
                jz      short loc_14076C106

loc_14076C101:                          ; CODE XREF: NtSetVolumeInformationFile+4FC↓j
                call    PsDereferenceSiloContext

loc_14076C106:                          ; CODE XREF: NtSetVolumeInformationFile+26F↑j
                                        ; NtSetVolumeInformationFile+4A6↓j
                mov     eax, ebx
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076C10D:                          ; CODE XREF: NtSetVolumeInformationFile+25D↑j
                mov     [rsp+108h+var_C8], r15b
                mov     rdi, [rsp+108h+var_B8]
                mov     ebx, [rsp+108h+var_C4]
                jmp     short loc_14076C14C
; ---------------------------------------------------------------------------

loc_14076C11D:                          ; CODE XREF: NtSetVolumeInformationFile+1D6↑j
                call    sub_140359720
                mov     r12, rax
                mov     [rsp+108h+var_98], rax
                test    rax, rax
                jnz     short loc_14076C139
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                jmp     short loc_14076C1B7
; ---------------------------------------------------------------------------

loc_14076C139:                          ; CODE XREF: NtSetVolumeInformationFile+29D↑j
                xor     r8d, r8d
                mov     edx, r15d
                mov     rcx, rax
                call    KeInitializeEvent
                mov     [rsp+108h+var_C8], 0

loc_14076C14C:                          ; CODE XREF: NtSetVolumeInformationFile+28B↑j
                mov     rax, [rsp+108h+var_A8]
                mov     eax, [rax]
                bt      eax, 1Ah
                jb      short loc_14076C165
                lea     rcx, [rsi+98h]
                call    KeResetEvent

loc_14076C165:                          ; CODE XREF: NtSetVolumeInformationFile+2C7↑j
                mov     rcx, rsi
                call    IoGetRelatedDeviceObject
                mov     [rsp+108h+var_90], rax
                mov     r9, [rsp+108h]
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     r14, rax
                mov     [rsp+108h+var_88], rax
                xor     edx, edx
                test    rax, rax
                jnz     short loc_14076C1CE
                mov     rax, [rsp+108h+var_A8]
                mov     eax, [rax]
                test    al, 2
                jnz     short loc_14076C1AD
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_14076C1AD:                          ; CODE XREF: NtSetVolumeInformationFile+313↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1408925D4

loc_14076C1B7:                          ; CODE XREF: NtSetVolumeInformationFile+2A7↑j
                test    rdi, rdi
                jz      short loc_14076C1C4
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14076C1C4:                          ; CODE XREF: NtSetVolumeInformationFile+32A↑j
                mov     eax, 0C000009Ah
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076C1CE:                          ; CODE XREF: NtSetVolumeInformationFile+308↑j
                mov     [rax+0C0h], rsi
                mov     rax, [rsp+108h+var_B0]
                mov     [r14+98h], rax
                mov     al, [rsp+108h+var_C7]
                mov     [r14+40h], al
                xorps   xmm0, xmm0
                movups  [rsp+108h+var_80], xmm0
                cmp     [rsp+108h+var_C8], dl
                jz      short loc_14076C204
                mov     rax, [rsp+108h+var_A0]
                mov     rcx, rdx
                jmp     short loc_14076C217
; ---------------------------------------------------------------------------

loc_14076C204:                          ; CODE XREF: NtSetVolumeInformationFile+368↑j
                mov     dword ptr [r14+10h], 4
                lea     rax, [rsp+108h+var_80]
                mov     rcx, r12

loc_14076C217:                          ; CODE XREF: NtSetVolumeInformationFile+372↑j
                mov     [r14+50h], rcx
                mov     [r14+48h], rax
                mov     [r14+58h], rdx
                mov     rax, [r14+0B8h]
                sub     rax, 48h ; 'H'
                mov     [rsp+108h+var_B0], rax
                mov     byte ptr [rax], 0Bh
                mov     [rax+30h], rsi
                mov     [r14+18h], rdx
                mov     [r14+8], rdx

loc_14076C242:                          ; DATA XREF: .rdata:0000000140094244↑o
;   __try { // __except at loc_14076C391
                mov     rdx, rbx
                call    sub_1402159F0
                mov     [r14+18h], rax
                mov     r8, rbx
                mov     rdx, r13
                mov     rcx, rax
                call    memmove
                nop
;   } // starts at 14076C242

loc_14076C25D:                          ; DATA XREF: .rdata:0000000140094244↑o
                mov     r8b, [rsp+108h+var_C7]
                test    r8b, r8b
                jz      short loc_14076C2BA
                cmp     [rsp+108h+arg_20], 2
                jnz     short loc_14076C2BA
                mov     rax, [r14+18h]
                mov     eax, [rax]
                test    eax, eax
                js      short loc_14076C286
                add     eax, 4
                mov     edx, [rsp+108h+var_C4]
                cmp     eax, edx
                jbe     short loc_14076C2BE

loc_14076C286:                          ; CODE XREF: NtSetVolumeInformationFile+3E9↑j
                mov     eax, [rsi+50h]
                shr     eax, 1
                and     al, r15b
                mov     byte ptr [rsp+108h+var_E8], al
                mov     r9, r12
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1405CD328
                test    rdi, rdi
                jz      short loc_14076C2B0
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14076C2B0:                          ; CODE XREF: NtSetVolumeInformationFile+416↑j
                mov     eax, 0C000000Dh
                jmp     loc_14076C3CB
; ---------------------------------------------------------------------------

loc_14076C2BA:                          ; CODE XREF: NtSetVolumeInformationFile+3D5↑j
                                        ; NtSetVolumeInformationFile+3DF↑j
                mov     edx, [rsp+108h+var_C4]

loc_14076C2BE:                          ; CODE XREF: NtSetVolumeInformationFile+3F4↑j
                or      dword ptr [r14+10h], 30h
                mov     rcx, [rsp+108h+var_B0]
                mov     [rcx+8], edx
                mov     eax, [rsp+108h+arg_20]
                mov     [rcx+10h], eax
                mov     [rsp+108h+var_D8], 2
                mov     r13b, [rsp+108h+var_C8]
                mov     byte ptr [rsp+108h+var_E0], r13b
                mov     byte ptr [rsp+108h+var_E8], r8b
                xor     r9d, r9d
                mov     r8, rsi
                mov     rdx, r14
                mov     rcx, [rsp+108h+var_90]
                call    sub_140643F60
                mov     ebx, eax
                xor     esi, esi
                test    r13b, r13b
                jnz     short loc_14076C333
                mov     rax, [rsp+108h+var_A0]
                mov     [rsp+108h+var_E0], rax
                lea     rax, [rsp+108h+var_80]
                mov     [rsp+108h+var_E8], rax
                mov     r9b, [rsp+108h+var_C7]
                mov     r8, r14
                mov     rdx, r12
                mov     ecx, ebx
                call    sub_1406FC85C
                mov     ebx, eax

loc_14076C333:                          ; CODE XREF: NtSetVolumeInformationFile+476↑j
                test    rdi, rdi
                jz      loc_14076C106
                test    ebx, ebx
                js      short loc_14076C389
                mov     [rsp+108h+var_5C], esi
                mov     [rsp+108h+var_4C], esi
                mov     [rsp+108h+var_70], 240001h
                mov     [rsp+108h+var_58], rsi
                or      [rsp+108h+var_50], 0FFFFFFFFh
                movups  xmm0, cs:xmmword_14001E530
                movdqu  [rsp+108h+var_6C], xmm0
                lea     rdx, [rsp+108h+var_70]
                mov     rcx, rdi
                call    IoReportTargetDeviceChange

loc_14076C389:                          ; CODE XREF: NtSetVolumeInformationFile+4AE↑j
                mov     rcx, rdi
                jmp     loc_14076C101
; ---------------------------------------------------------------------------

loc_14076C391:                          ; DATA XREF: .rdata:0000000140094244↑o
;   __except(1) // owned by 14076C242
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_C0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+108h+var_E8], dl
                mov     r9, [rsp+108h+var_98]
                xor     r8d, r8d
                mov     rdx, [rsp+108h+var_88]
                call    sub_1405CD328
                mov     rcx, [rsp+108h+var_B8]
                test    rcx, rcx
                jz      short loc_14076C3C9
                call    PsDereferenceSiloContext

loc_14076C3C9:                          ; CODE XREF: NtSetVolumeInformationFile+532↑j
                mov     eax, ebx

loc_14076C3CB:                          ; CODE XREF: NtSetVolumeInformationFile+A9↑j
                                        ; NtSetVolumeInformationFile:loc_14076BFEC↑j ...
                mov     rcx, [rsp+108h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0D0h
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

loc_14076C3EF:                          ; CODE XREF: NtSetVolumeInformationFile+F9↑j
                                        ; DATA XREF: .rdata:0000000140094254↑o
;   __try { // __except at loc_14076BFEC
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14076C3F4:                          ; CODE XREF: NtSetVolumeInformationFile+133↑j
                call    ExRaiseDatatypeMisalignment
NtSetVolumeInformationFile endp

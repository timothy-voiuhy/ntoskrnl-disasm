NtSetInformationFile proc near          ; DATA XREF: .pdata:00000001400CB664↑o
                                        ; PAGE:000000014098AB38↓o

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = byte ptr -0E8h
var_E7          = byte ptr -0E7h
var_E0          = qword ptr -0E0h
var_D8          = byte ptr -0D8h
var_D7          = byte ptr -0D7h
var_D6          = byte ptr -0D6h
var_D5          = byte ptr -0D5h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = xmmword ptr -0C0h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9d
                mov     [r11+18h], r8
                mov     [r11+10h], rdx
                mov     [r11+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     r13d, r9d
                mov     r15, r8
                mov     r10, rdx
                mov     r12, rcx
                xor     edi, edi
                mov     [rsp+118h+var_E0], rdi
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+118h+var_C0], xmm0
                mov     [rsp+118h+var_B0], rax
                movups  xmmword ptr [r11-78h], xmm0
                mov     [r11-80h], rdi
                mov     [rsp+118h+var_E7], al
                mov     [rsp+118h+var_D8], al
                mov     [rsp+118h+var_D5], al
                mov     r9, gs:188h
                mov     [rsp+118h+var_A8], r9
                movzx   esi, byte ptr [r9+232h]
                mov     [rsp+118h+var_E8], sil
                test    sil, sil
                jz      loc_140234FE9
                movsxd  r14, [rsp+118h+arg_20]
                cmp     r14d, 4Ch ; 'L'
                jnb     loc_140234FDF
                lea     rdx, cs:140000000h
                movzx   eax, byte ptr [r14+rdx+986360h]
                test    al, al
                jz      loc_140234FDF
                cmp     r13d, eax
                jb      loc_140235165

loc_140234ED3:                          ; DATA XREF: .rdata:00000001400546A8↑o
;   __try { // __except at loc_140234FDA
                mov     r11, 7FFFFFFF0000h
                mov     rcx, r11
                cmp     r10, r11
                cmovb   rcx, r10
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [r9+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_140234F36
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_140234F16
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_140234F36

loc_140234F16:                          ; CODE XREF: NtSetInformationFile+EA↑j
                test    r13d, r13d
                jz      short loc_140234F69
                mov     rax, rdi
                mov     ecx, 3
                cmp     r13d, 1
                cmovnz  rax, rcx
                test    r15, rax
                jnz     loc_140235B7B
                jmp     short loc_140234F50
; ---------------------------------------------------------------------------

loc_140234F36:                          ; CODE XREF: NtSetInformationFile+DC↑j
                                        ; NtSetInformationFile+F4↑j
                test    r13d, r13d
                jz      short loc_140234F69
                movzx   eax, byte ptr [r14+rdx+9862C0h]
                dec     rax
                test    r15, rax
                jnz     loc_140235B80

loc_140234F50:                          ; CODE XREF: NtSetInformationFile+114↑j
                lea     rcx, [r8+r13]
                cmp     rcx, r11
                ja      short loc_140234F5E
                cmp     rcx, r15
                jnb     short loc_140234F69

loc_140234F5E:                          ; CODE XREF: NtSetInformationFile+137↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
;   } // starts at 140234ED3

loc_140234F69:                          ; CODE XREF: NtSetInformationFile+F9↑j
                                        ; NtSetInformationFile+119↑j ...
                mov     edi, ds:rva dword_140987330[rdx+r14*4]
                cmp     r14d, 0Bh
                jz      short loc_140234F81
                cmp     r14d, 48h ; 'H'
                jnz     loc_14023505F

loc_140234F81:                          ; CODE XREF: NtSetInformationFile+155↑j
                movups  [rsp+118h+var_60], xmm0
                movups  [rsp+118h+var_50], xmm0
                mov     rdx, [r9+220h]
                lea     r8, [rsp+118h+var_60]
                mov     rcx, r9
                call    SeCaptureSubjectContextEx
                movzx   edx, sil
                lea     rcx, [rsp+118h+var_60]
                call    RtlIsSandboxedToken
                movzx   ebx, al
                lea     rcx, [rsp+118h+var_60]
                call    SeReleaseSubjectContext
                test    bl, bl
                jz      loc_14023505F
                bts     edi, 8
                jmp     loc_14023505F
; ---------------------------------------------------------------------------

loc_140234FDA:                          ; DATA XREF: .rdata:00000001400546A8↑o
                                        ; .rdata:0000000140054708↑o
;   __except(1) // owned by 140234ED3
;   __except(1) // owned by 140235B7B
                jmp     loc_140235B67
; ---------------------------------------------------------------------------

loc_140234FDF:                          ; CODE XREF: NtSetInformationFile+8C↑j
                                        ; NtSetInformationFile+A4↑j
                mov     eax, 0C0000003h
                jmp     loc_140235B67
; ---------------------------------------------------------------------------

loc_140234FE9:                          ; CODE XREF: NtSetInformationFile+7A↑j
                mov     r14d, [rsp+118h+arg_20]
                cmp     r14d, 38h ; '8'
                jnz     short loc_140235004
                mov     r14d, 0Ah
                mov     [rsp+118h+var_D8], 1
                jmp     short loc_14023504E
; ---------------------------------------------------------------------------

loc_140235004:                          ; CODE XREF: NtSetInformationFile+1D5↑j
                cmp     r14d, 42h ; 'B'
                jnz     short loc_140235017
                mov     r14d, 41h ; 'A'
                mov     [rsp+118h+var_D8], 1
                jmp     short loc_14023504E
; ---------------------------------------------------------------------------

loc_140235017:                          ; CODE XREF: NtSetInformationFile+1E8↑j
                cmp     r14d, 39h ; '9'
                jnz     short loc_14023502A
                mov     r14d, 0Bh
                mov     [rsp+118h+var_D8], 1
                jmp     short loc_14023504E
; ---------------------------------------------------------------------------

loc_14023502A:                          ; CODE XREF: NtSetInformationFile+1FB↑j
                cmp     r14d, 49h ; 'I'
                jnz     short loc_14023503D
                mov     r14d, 48h ; 'H'
                mov     [rsp+118h+var_D8], 1
                jmp     short loc_14023504E
; ---------------------------------------------------------------------------

loc_14023503D:                          ; CODE XREF: NtSetInformationFile+20E↑j
                cmp     r14d, 4Bh ; 'K'
                jnz     short loc_14023504E
                mov     r14d, 47h ; 'G'
                mov     [rsp+118h+var_D5], 1

loc_14023504E:                          ; CODE XREF: NtSetInformationFile+1E2↑j
                                        ; NtSetInformationFile+1F5↑j ...
                movsxd  rax, r14d
                lea     rdx, cs:140000000h
                mov     edi, ds:rva dword_140987330[rdx+rax*4]

loc_14023505F:                          ; CODE XREF: NtSetInformationFile+15B↑j
                                        ; NtSetInformationFile+1AB↑j ...
                xor     r9d, r9d
                mov     [rsp+118h+var_F8], r9
                lea     r9, [rsp+118h+var_E0]
                movzx   r8d, sil
                mov     edx, edi
                mov     rcx, r12
                call    sub_1402433F0
                mov     edi, eax
                test    eax, eax
                js      loc_140235B67
                mov     rbx, [rsp+118h+var_E0]
                test    dword ptr [rbx+50h], 800h
                jnz     short loc_1402350A1
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                mov     rbx, [rsp+118h+var_E0]
                jmp     short loc_1402350AA
; ---------------------------------------------------------------------------

loc_1402350A1:                          ; CODE XREF: NtSetInformationFile+270↑j
                mov     rcx, [rbx+8]
                call    IoGetAttachedDevice

loc_1402350AA:                          ; CODE XREF: NtSetInformationFile+27F↑j
                mov     r12, rax
                mov     [rsp+118h+var_D0], rax
                mov     esi, [rbx+50h]
                test    sil, 2
                jz      loc_140235229
                shr     esi, 2
                and     sil, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     r9, rax
                mov     [rsp+118h+var_D7], 0
                mov     eax, 1
                xchg    eax, [rbx+74h]
                test    eax, eax
                jnz     short loc_140235113
                test    r9, r9
                jz      short loc_140235105
                or      byte ptr [r9+1Ah], 1

loc_140235105:                          ; CODE XREF: NtSetInformationFile+2DE↑j
                mov     rcx, rbx
                call    ObfReferenceObject
                xor     esi, esi
                mov     edi, esi
                jmp     short loc_140235132
; ---------------------------------------------------------------------------

loc_140235113:                          ; CODE XREF: NtSetInformationFile+2D9↑j
                lea     rax, [rsp+118h+var_D7]
                mov     [rsp+118h+var_F8], rax
                movzx   r8d, sil
                movzx   edx, [rsp+118h+var_E8]
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     edi, eax
                xor     esi, esi

loc_140235132:                          ; CODE XREF: NtSetInformationFile+2F1↑j
                mov     [rsp+118h+var_D4], edi
                cmp     [rsp+118h+var_D7], 0
                jnz     loc_1402351F3
                cmp     r14d, 0Eh
                jnz     loc_14023521F
                cmp     r13d, 8
                jnb     short loc_14023516F
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0
                mov     rcx, [rsp+118h+var_E0]
                call    PsDereferenceSiloContext

loc_140235165:                          ; CODE XREF: NtSetInformationFile+AD↑j
                mov     eax, 0C0000004h
                jmp     loc_140235B67
; ---------------------------------------------------------------------------

loc_14023516F:                          ; CODE XREF: NtSetInformationFile+32F↑j
                                        ; DATA XREF: .rdata:00000001400546B8↑o
;   __try { // __except at loc_140235202
                mov     rax, [r15]
                mov     [rsp+118h+var_40], rax
;   } // starts at 14023516F

loc_14023517A:                          ; DATA XREF: .rdata:00000001400546B8↑o
                mov     rdx, [rsp+118h+var_E0]
                mov     ecx, [rdx+50h]
                test    cl, 8
                jz      short loc_14023519B
                movzx   ecx, word ptr [r12+130h]
                test    cx, cx
                jz      short loc_14023519B
                dec     ecx
                test    eax, ecx
                jnz     short loc_1402351A6

loc_14023519B:                          ; CODE XREF: NtSetInformationFile+365↑j
                                        ; NtSetInformationFile+373↑j
                mov     rcx, rax
                shr     rcx, 20h
                test    ecx, ecx
                jns     short loc_1402351AD

loc_1402351A6:                          ; CODE XREF: NtSetInformationFile+379↑j
                mov     edi, 0C000000Dh
                jmp     short loc_1402351CD
; ---------------------------------------------------------------------------

loc_1402351AD:                          ; CODE XREF: NtSetInformationFile+384↑j
                mov     [rdx+68h], rax

loc_1402351B1:                          ; DATA XREF: .rdata:00000001400546C8↑o
;   __try { // __except at loc_1402351C1
                mov     rax, [rsp+118h+arg_8]
                mov     [rax], esi
                mov     [rax+8], rsi
                jmp     short loc_1402351CD
;   } // starts at 1402351B1
; ---------------------------------------------------------------------------

loc_1402351C1:                          ; DATA XREF: .rdata:00000001400546C8↑o
;   __except(1) // owned by 1402351B1
                mov     r13d, [rsp+118h+arg_18]
                mov     edi, [rsp+118h+var_D4]

loc_1402351CD:                          ; CODE XREF: NtSetInformationFile+38B↑j
                                        ; NtSetInformationFile+39F↑j
                mov     rcx, gs:188h
                mov     eax, r13d
                add     [rcx+3A8h], rax
                add     gs:2EF8h, rax
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0

loc_1402351F3:                          ; CODE XREF: NtSetInformationFile+31B↑j
                mov     rcx, [rsp+118h+var_E0]
                call    PsDereferenceSiloContext
                jmp     loc_140235B65
; ---------------------------------------------------------------------------

loc_140235202:                          ; DATA XREF: .rdata:00000001400546B8↑o
;   __except(1) // owned by 14023516F
                mov     ebx, eax
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0
                mov     rcx, [rsp+118h+var_E0]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140235B67
; ---------------------------------------------------------------------------

loc_14023521F:                          ; CODE XREF: NtSetInformationFile+325↑j
                mov     r12b, 1
                mov     rbx, [rsp+118h+var_E0]
                jmp     short loc_140235252
; ---------------------------------------------------------------------------

loc_140235229:                          ; CODE XREF: NtSetInformationFile+299↑j
                mov     word ptr [rsp+118h+var_C0], 1
                mov     byte ptr [rsp+118h+var_C0+2], 6
                xor     esi, esi
                mov     dword ptr [rsp+118h+var_C0+4], esi
                lea     rax, [rsp+118h+var_C0+8]
                mov     [rsp+118h+var_B0], rax
                lea     rax, [rsp+118h+var_C0+8]
                mov     qword ptr [rsp+118h+var_C0+8], rax
                xor     r12b, r12b

loc_140235252:                          ; CODE XREF: NtSetInformationFile+407↑j
                mov     [rsp+118h+var_D6], r12b
                mov     rcx, rbx
                call    sub_1402360C0
                cmp     r14d, 24h ; '$'
                jnz     loc_1402352F3
                cmp     r13d, 10h
                jnb     short loc_140235276
                mov     ebx, 0C0000004h
                jmp     short loc_1402352D3
; ---------------------------------------------------------------------------

loc_140235276:                          ; CODE XREF: NtSetInformationFile+44D↑j
                mov     rcx, [rsp+118h+var_E0]
                test    r12b, r12b
                lea     rax, [rcx+98h]
                jnz     short loc_14023528C
                lea     rax, [rsp+118h+var_C0]

loc_14023528C:                          ; CODE XREF: NtSetInformationFile+465↑j
                movzx   r9d, [rsp+118h+var_E8]
                mov     byte ptr [rsp+118h+var_F0], r9b
                mov     [rsp+118h+var_F8], rax
                mov     r9d, r13d
                mov     r8, r15
                lea     rdx, [rsp+118h+var_78]
                call    sub_1406DF220
                mov     ebx, eax
                mov     [rsp+118h+var_D4], eax
                test    eax, eax
                js      short loc_1402352D3

loc_1402352B9:                          ; DATA XREF: .rdata:00000001400546D8↑o
;   __try { // __except at loc_1402352C9
                mov     rax, [rsp+118h+arg_8]
                mov     [rax+8], rsi
                mov     [rax], ebx
                jmp     short loc_1402352D3
;   } // starts at 1402352B9
; ---------------------------------------------------------------------------

loc_1402352C9:                          ; DATA XREF: .rdata:00000001400546D8↑o
;   __except(1) // owned by 1402352B9
                mov     ebx, [rsp+118h+var_D4]
                movzx   r12d, [rsp+118h+var_D6]

loc_1402352D3:                          ; CODE XREF: NtSetInformationFile+454↑j
                                        ; NtSetInformationFile+497↑j ...
                test    r12b, r12b
                jz      short loc_1402352E2
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0

loc_1402352E2:                          ; CODE XREF: NtSetInformationFile+4B6↑j
                mov     rcx, [rsp+118h+var_E0]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140235B67
; ---------------------------------------------------------------------------

loc_1402352F3:                          ; CODE XREF: NtSetInformationFile+443↑j
                mov     r9, [rsp+118h]
                movzx   r8d, r12b
                xor     r8b, 1
                mov     rax, [rsp+118h+var_D0]
                movzx   edx, byte ptr [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rsi, rax
                mov     [rsp+118h+var_A0], rax
                test    rax, rax
                jnz     short loc_140235337
                xor     edx, edx
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_140235B67
; ---------------------------------------------------------------------------

loc_140235337:                          ; CODE XREF: NtSetInformationFile+4FF↑j
                mov     rax, [rsp+118h+var_E0]
                mov     [rsi+0C0h], rax
                mov     rax, [rsp+118h+var_A8]
                mov     [rsi+98h], rax
                movzx   eax, [rsp+118h+var_E8]
                mov     [rsi+40h], al
                test    r12b, r12b
                jz      short loc_140235370
                or      byte ptr [rsi+47h], 2
                mov     rax, [rsp+118h+arg_8]
                xor     r9d, r9d
                mov     ecx, r9d
                jmp     short loc_140235396
; ---------------------------------------------------------------------------

loc_140235370:                          ; CODE XREF: NtSetInformationFile+53A↑j
                cmp     al, 1
                jnz     short loc_14023537F
                xor     ecx, ecx
                call    KeSetKernelStackSwapEnable
                mov     [rsp+118h+var_E7], al

loc_14023537F:                          ; CODE XREF: NtSetInformationFile+552↑j
                mov     dword ptr [rsi+10h], 4
                lea     rax, [rsp+118h+var_78]
                lea     rcx, [rsp+118h+var_C0]
                xor     r9d, r9d

loc_140235396:                          ; CODE XREF: NtSetInformationFile+54E↑j
                mov     r8, rsi
                mov     rdx, rsi
                mov     [rdx+50h], rcx
                mov     [rsi+48h], rax
                mov     [rsi+58h], r9
                mov     r15, [rsi+0B8h]
                mov     byte ptr [r15-48h], 6
                mov     rax, [rsp+118h+var_E0]
                mov     [r15-18h], rax
                mov     [rsi+18h], r9
                mov     [rsi+8], r9

loc_1402353C5:                          ; DATA XREF: .rdata:00000001400546E8↑o
;   __try { // __except at loc_140235B2F
                mov     rdx, r13
                call    sub_1402159F0
                mov     [rsp+118h+var_A8], rax
                mov     [rsi+18h], rax
                mov     r8, r13
                mov     rdx, [rsp+118h+arg_10]
                mov     rcx, rax
                call    memmove
                lea     ecx, [r14-13h]
                cmp     ecx, 1
                jbe     short loc_1402353F8
                cmp     r14d, 0Eh
                jnz     short loc_140235407

loc_1402353F8:                          ; CODE XREF: NtSetInformationFile+5D0↑j
                mov     rax, [rsp+118h+var_A8]
                cmp     dword ptr [rax+4], 0
                jl      loc_140235B86
;   } // starts at 1402353C5

loc_140235407:                          ; CODE XREF: NtSetInformationFile+5D6↑j
                                        ; DATA XREF: .rdata:00000001400546E8↑o
                or      dword ptr [rsi+10h], 830h
                mov     [r15-40h], r13d
                mov     [r15-38h], r14d
                cmp     [rsp+118h+var_D8], 0
                jnz     short loc_140235424
                cmp     [rsp+118h+var_D5], 0
                jz      short loc_140235429

loc_140235424:                          ; CODE XREF: NtSetInformationFile+5FB↑j
                or      byte ptr [r15-46h], 1

loc_140235429:                          ; CODE XREF: NtSetInformationFile+602↑j
                mov     rcx, rsi
                call    sub_140245C90
                call    sub_140234A00
                cmp     r14d, 10h
                jnz     loc_1402354F7
                mov     r9, [rsi+18h]
                mov     r8d, [r9]
                test    r8d, 0FFFFFFC9h
                jnz     loc_1402354E2
                mov     edx, r8d
                and     edx, 30h
                mov     rcx, [rsp+118h+var_E0]
                jz      short loc_140235468
                mov     eax, [rcx+50h]
                test    al, 2
                jz      short loc_1402354E2

loc_140235468:                          ; CODE XREF: NtSetInformationFile+63F↑j
                test    edx, edx
                jnz     short loc_140235473
                mov     eax, [rcx+50h]
                test    al, 2
                jnz     short loc_1402354E2

loc_140235473:                          ; CODE XREF: NtSetInformationFile+64A↑j
                cmp     edx, 30h ; '0'
                jz      short loc_1402354E2
                mov     eax, [rcx+50h]
                test    al, 8
                jnz     short loc_140235495
                test    r8b, 2
                jz      short loc_14023548A
                or      eax, 10h
                jmp     short loc_14023548D
; ---------------------------------------------------------------------------

loc_14023548A:                          ; CODE XREF: NtSetInformationFile+663↑j
                and     eax, 0FFFFFFEFh

loc_14023548D:                          ; CODE XREF: NtSetInformationFile+668↑j
                mov     [rcx+50h], eax
                mov     rcx, [rsp+118h+var_E0]

loc_140235495:                          ; CODE XREF: NtSetInformationFile+65D↑j
                mov     eax, [r9]
                test    al, 4
                jz      short loc_1402354A2
                or      dword ptr [rcx+50h], 20h
                jmp     short loc_1402354A6
; ---------------------------------------------------------------------------

loc_1402354A2:                          ; CODE XREF: NtSetInformationFile+67A↑j
                and     dword ptr [rcx+50h], 0FFFFFFDFh

loc_1402354A6:                          ; CODE XREF: NtSetInformationFile+680↑j
                mov     rdx, [rsp+118h+var_E0]
                mov     ecx, [rdx+50h]
                test    cl, 2
                jz      short loc_1402354D4
                mov     eax, [r9]
                test    al, 10h
                jz      short loc_1402354CE
                or      ecx, 4
                mov     [rdx+50h], ecx
                xor     edi, edi
                mov     [rsi+30h], edi
                mov     [rsi+38h], rdi
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402354CE:                          ; CODE XREF: NtSetInformationFile+698↑j
                and     ecx, 0FFFFFFFBh
                mov     [rdx+50h], ecx

loc_1402354D4:                          ; CODE XREF: NtSetInformationFile+691↑j
                xor     edi, edi
                mov     [rsi+30h], edi
                mov     [rsi+38h], rdi
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402354E2:                          ; CODE XREF: NtSetInformationFile+62E↑j
                                        ; NtSetInformationFile+646↑j ...
                mov     edi, 0C000000Dh

loc_1402354E7:                          ; CODE XREF: NtSetInformationFile+834↓j
                                        ; NtSetInformationFile+991↓j ...
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402354F7:                          ; CODE XREF: NtSetInformationFile+61A↑j
                lea     eax, [r14-0Ah]
                cmp     eax, 3Eh ; '>'
                ja      loc_1402355A3
                mov     rcx, 4080000000200003h
                bt      rcx, rax
                jnb     loc_1402355A3
                mov     r8, [rsi+18h]
                mov     ecx, [r8+10h]
                test    ecx, ecx
                jz      short loc_140235531
                test    cl, 1
                jnz     short loc_140235531
                lea     eax, [r13-14h]
                cmp     eax, ecx
                jnb     short loc_14023553E

loc_140235531:                          ; CODE XREF: NtSetInformationFile+702↑j
                                        ; NtSetInformationFile+707↑j
                mov     edi, 0C000000Dh
                mov     [rsi+30h], edi
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_14023553E:                          ; CODE XREF: NtSetInformationFile+70F↑j
                cmp     r14d, 1Fh
                jnz     short loc_14023554D
                mov     eax, [r8]
                mov     [r15-28h], eax
                jmp     short loc_140235569
; ---------------------------------------------------------------------------

loc_14023554D:                          ; CODE XREF: NtSetInformationFile+722↑j
                cmp     r14d, 41h ; 'A'
                jz      short loc_14023555F
                cmp     r14d, 48h ; 'H'
                jz      short loc_14023555F
                movzx   eax, byte ptr [r8]
                jmp     short loc_140235565
; ---------------------------------------------------------------------------

loc_14023555F:                          ; CODE XREF: NtSetInformationFile+731↑j
                                        ; NtSetInformationFile+737↑j
                movzx   eax, byte ptr [r8]
                and     al, 1

loc_140235565:                          ; CODE XREF: NtSetInformationFile+73D↑j
                mov     [r15-28h], al

loc_140235569:                          ; CODE XREF: NtSetInformationFile+72B↑j
                cmp     word ptr [r8+14h], 5Ch ; '\'
                jz      short loc_14023557C
                cmp     qword ptr [r8+8], 0
                jz      loc_140235987

loc_14023557C:                          ; CODE XREF: NtSetInformationFile+74F↑j
                mov     r9, [rsp+118h+var_E0]
                mov     rdx, rsi
                lea     rcx, [rsp+118h+var_80]
                call    sub_1407060B4
                mov     edi, eax
                test    eax, eax
                jns     loc_140235987
                mov     [rsi+30h], eax
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402355A3:                          ; CODE XREF: NtSetInformationFile+6DE↑j
                                        ; NtSetInformationFile+6F2↑j
                cmp     r14d, 28h ; '('
                jnz     short loc_1402355DA
                mov     rcx, [rsi+18h]
                lea     eax, [r13-4]
                cmp     eax, [rcx]
                jnb     short loc_1402355C2
                mov     edi, 0C000000Dh
                mov     [rsi+30h], edi
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402355C2:                          ; CODE XREF: NtSetInformationFile+793↑j
                cmp     word ptr [rcx+4], 5Ch ; '\'
                jnz     loc_140235987
                mov     edi, 0C000000Dh
                mov     [rsi+30h], edi
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402355DA:                          ; CODE XREF: NtSetInformationFile+787↑j
                cmp     r14d, 0Dh
                jz      loc_140235964
                cmp     r14d, 40h ; '@'
                jz      loc_140235964
                cmp     r14d, 1Eh
                jnz     loc_140235734
                mov     r14, [rsi+18h]
                mov     rax, [rsp+118h+var_E0]
                cmp     qword ptr [rax+0B0h], 0
                jnz     loc_1402354E2
                mov     eax, [rax+50h]
                test    al, 2
                jnz     loc_1402354E2
                mov     r8, cs:IoCompletionObjectType
                mov     rcx, [r14]
                mov     [rsp+118h+var_C8], 0
                mov     [rsp+118h+var_F0], 0
                lea     rax, [rsp+118h+var_C8]
                mov     [rsp+118h+var_F8], rax
                movzx   r9d, [rsp+118h+var_E8]
                mov     edx, 2
                call    ObReferenceObjectByHandle
                mov     edi, eax
                test    eax, eax
                js      loc_1402354E7
                mov     edx, 18h
                mov     ecx, 200h
                mov     r8d, 63436F49h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140235692
                mov     rcx, [rsp+118h+var_C8]
                call    PsDereferenceSiloContext
                mov     edi, 0C000009Ah
                mov     [rsi+30h], edi
                mov     [rsi+38h], rbx
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_140235692:                          ; CODE XREF: NtSetInformationFile+855↑j
                mov     rcx, [rsp+118h+var_E0]
                add     rcx, 0B8h
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, [rsp+118h+var_E0]
                movzx   edx, al
                cmp     qword ptr [rcx+0B0h], 0
                jnz     short loc_1402356FF
                and     dword ptr [rcx+50h], 0FFFFFBFFh
                mov     rcx, [rsp+118h+var_C8]
                mov     [rbx], rcx
                mov     rcx, [r14+8]
                mov     [rbx+8], rcx
                mov     qword ptr [rbx+10h], 0
                mov     rcx, [rsp+118h+var_E0]
                mov     [rcx+0B0h], rbx
                xor     edi, edi
                mov     rcx, [rsp+118h+var_E0]
                add     rcx, 0B8h
                call    KeReleaseSpinLock
                mov     [rsi+30h], edi
                mov     [rsi+38h], rdi
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402356FF:                          ; CODE XREF: NtSetInformationFile+893↑j
                add     rcx, 0B8h
                call    KeReleaseSpinLock
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rcx, [rsp+118h+var_C8]
                call    PsDereferenceSiloContext
                mov     edi, 0C0000048h
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_140235734:                          ; CODE XREF: NtSetInformationFile+7D2↑j
                cmp     r14d, 3Dh ; '='
                jnz     loc_1402357E6
                mov     r14, [rsi+18h]
                xor     ebx, ebx
                mov     [rsp+118h+var_68], rbx
                mov     rcx, [rsp+118h+var_E0]
                cmp     [rcx+0B0h], rbx
                jz      loc_1402354E2
                mov     rax, [r14]
                test    rax, rax
                jz      short loc_1402357AF
                mov     r8, cs:IoCompletionObjectType
                mov     [rsp+118h+var_98], rbx
                mov     [rsp+118h+var_F0], rbx
                lea     rcx, [rsp+118h+var_98]
                mov     [rsp+118h+var_F8], rcx
                movzx   r9d, [rsp+118h+var_E8]
                lea     edx, [rbx+2]
                mov     rcx, rax
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     rbx, [rsp+118h+var_98]
                mov     [rsp+118h+var_68], rbx
                mov     rcx, [rsp+118h+var_E0]

loc_1402357AF:                          ; CODE XREF: NtSetInformationFile+944↑j
                test    edi, edi
                js      loc_1402354E7
                mov     r8, [r14+8]
                mov     rdx, rbx
                call    sub_14038CE5C
                mov     edi, eax
                test    rbx, rbx
                jz      loc_1402354E7
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_1402357E6:                          ; CODE XREF: NtSetInformationFile+918↑j
                cmp     r14d, 29h ; ')'
                jnz     short loc_14023585B
                mov     r8, [rsi+18h]
                mov     rax, [rsp+118h+var_E0]
                mov     edx, [rax+50h]
                test    dl, 2
                jz      short loc_140235812
                mov     edi, 0C000000Dh
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_140235812:                          ; CODE XREF: NtSetInformationFile+9DB↑j
                xor     edi, edi
                mov     ecx, [r8]
                test    cl, 1
                jz      short loc_14023582B
                bts     edx, 19h
                mov     [rax+50h], edx
                mov     ecx, [r8]
                mov     rax, [rsp+118h+var_E0]

loc_14023582B:                          ; CODE XREF: NtSetInformationFile+9FA↑j
                test    cl, 2
                jz      short loc_14023583F
                or      dword ptr [rax+50h], 4000000h
                mov     ecx, [r8]
                mov     rax, [rsp+118h+var_E0]

loc_14023583F:                          ; CODE XREF: NtSetInformationFile+A0E↑j
                test    cl, 4
                jz      short loc_14023584B
                or      dword ptr [rax+50h], 8000000h

loc_14023584B:                          ; CODE XREF: NtSetInformationFile+A22↑j
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_14023585B:                          ; CODE XREF: NtSetInformationFile+9CA↑j
                cmp     r14d, 2Ah ; '*'
                jnz     short loc_1402358C9
                movzx   ebx, [rsp+118h+var_E8]
                movzx   edx, bl
                mov     rcx, cs:qword_140D2E718
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_14023588E
                mov     edi, 0C0000061h
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359AC
; ---------------------------------------------------------------------------

loc_14023588E:                          ; CODE XREF: NtSetInformationFile+A57↑j
                mov     rcx, [rsp+118h+var_E0]
                mov     eax, [rcx+50h]
                test    al, 2
                jz      short loc_1402358AF
                mov     edi, 0C000000Dh
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359AC
; ---------------------------------------------------------------------------

loc_1402358AF:                          ; CODE XREF: NtSetInformationFile+A78↑j
                mov     rdx, rsi
                call    sub_140893FA4
                mov     edi, eax
                mov     [rsi+30h], eax
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359AC
; ---------------------------------------------------------------------------

loc_1402358C9:                          ; CODE XREF: NtSetInformationFile+A3F↑j
                cmp     r14d, 2Bh ; '+'
                jnz     short loc_140235923
                mov     [rsp+118h+var_90], 0
                mov     rbx, [rsi+18h]
                cmp     dword ptr [rbx], 2
                ja      loc_1402354E2
                lea     rdx, [rsp+118h+var_90]
                mov     rcx, [rsp+118h+var_E0]
                call    sub_14021AEE0
                mov     edi, eax
                test    eax, eax
                js      loc_1402354E7
                mov     ecx, [rbx]
                inc     ecx
                mov     rax, [rsp+118h+var_90]
                mov     [rax+50h], ecx
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     loc_1402359A7
; ---------------------------------------------------------------------------

loc_140235923:                          ; CODE XREF: NtSetInformationFile+AAD↑j
                cmp     r14d, 45h ; 'E'
                jnz     short loc_140235987
                movzx   ebx, [rsp+118h+var_E8]
                test    bl, bl
                jz      short loc_140235944
                mov     edi, 0C0000022h
                mov     [rsi+30h], edi
                mov     qword ptr [rsi+38h], 0
                jmp     short loc_1402359AC
; ---------------------------------------------------------------------------

loc_140235944:                          ; CODE XREF: NtSetInformationFile+B10↑j
                mov     r8d, r13d
                mov     rdx, [rsi+18h]
                mov     rcx, [rsp+118h+var_E0]
                call    sub_140895A6C
                mov     edi, eax
                mov     [rsi+30h], eax
                mov     qword ptr [rsi+38h], 0
                jmp     short loc_1402359AC
; ---------------------------------------------------------------------------

loc_140235964:                          ; CODE XREF: NtSetInformationFile+7BE↑j
                                        ; NtSetInformationFile+7C8↑j
                mov     rax, [rsi+18h]
                cmp     r14d, 40h ; '@'
                jnz     short loc_140235974
                mov     eax, [rax]
                test    al, 1
                jmp     short loc_140235979
; ---------------------------------------------------------------------------

loc_140235974:                          ; CODE XREF: NtSetInformationFile+B4C↑j
                movzx   eax, byte ptr [rax]
                test    al, al

loc_140235979:                          ; CODE XREF: NtSetInformationFile+B52↑j
                jz      short loc_140235987
                mov     rax, [rsp+118h+arg_0]
                mov     [r15-28h], rax

loc_140235987:                          ; CODE XREF: NtSetInformationFile+756↑j
                                        ; NtSetInformationFile+775↑j ...
                mov     dword ptr [rsp+118h+var_F8], 2
                mov     r9, [rsp+118h+var_E0]
                movzx   r8d, r12b
                mov     rdx, rsi
                mov     rcx, [rsp+118h+var_D0]
                call    sub_14030FD90
                mov     edi, eax

loc_1402359A7:                          ; CODE XREF: NtSetInformationFile+6A9↑j
                                        ; NtSetInformationFile+6BD↑j ...
                movzx   ebx, [rsp+118h+var_E8]

loc_1402359AC:                          ; CODE XREF: NtSetInformationFile+A69↑j
                                        ; NtSetInformationFile+A8A↑j ...
                cmp     edi, 103h
                jnz     loc_140235A38
                movzx   r8d, bl
                test    r12b, r12b
                jz      short loc_1402359D5
                mov     rdx, [rsp+118h+var_E0]
                mov     rcx, rsi
                call    sub_140201AE0
                mov     edi, eax
                jmp     loc_140235AFF
; ---------------------------------------------------------------------------

loc_1402359D5:                          ; CODE XREF: NtSetInformationFile+B9F↑j
                mov     [rsp+118h+var_F8], 0
                xor     r9d, r9d
                xor     edx, edx
                lea     rcx, [rsp+118h+var_C0]
                call    KeWaitForSingleObject
                cmp     eax, 101h
                jz      short loc_1402359FB
                cmp     eax, 0C0h
                jnz     short loc_140235A08

loc_1402359FB:                          ; CODE XREF: NtSetInformationFile+BD2↑j
                mov     rdx, rsi
                lea     rcx, [rsp+118h+var_C0]
                call    sub_14089280C

loc_140235A08:                          ; CODE XREF: NtSetInformationFile+BD9↑j
                mov     edi, dword ptr [rsp+118h+var_78]

loc_140235A0F:                          ; DATA XREF: .rdata:00000001400546F8↑o
;   __try { // __except at loc_140235A2C
                movups  xmm0, [rsp+118h+var_78]
                mov     rax, [rsp+118h+arg_8]
                movups  xmmword ptr [rax], xmm0
                movzx   eax, [rsp+118h+var_E7]
                jmp     loc_140235B0E
;   } // starts at 140235A0F
; ---------------------------------------------------------------------------

loc_140235A2C:                          ; DATA XREF: .rdata:00000001400546F8↑o
;   __except(1) // owned by 140235A0F
                mov     edi, eax
                movzx   eax, [rsp+118h+var_E7]
                jmp     loc_140235B0E
; ---------------------------------------------------------------------------

loc_140235A38:                          ; CODE XREF: NtSetInformationFile+B92↑j
                mov     [rsp+118h+var_A0], 0
                mov     [rsp+118h+var_88], 0
                test    r12b, r12b
                jnz     short loc_140235A5A
                mov     qword ptr [rsi+50h], 0

loc_140235A5A:                          ; CODE XREF: NtSetInformationFile+C30↑j
                mov     rax, [rsp+118h+arg_8]
                mov     [rsi+48h], rax
                mov     rbx, cr8
                mov     eax, 1
                mov     cr8, rax
                lea     rcx, [rsi+78h]
                lea     rax, [rsp+118h+var_88]
                mov     [rsp+118h+var_F8], rax
                lea     r9, [rsp+118h+var_E0]
                lea     r8, [rsp+118h+var_88]
                lea     rdx, [rsp+118h+var_A0]
                call    sub_14023D030
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140235AF3
                test    al, 1
                jz      short loc_140235AF3
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140235AF3
                cmp     bl, 0Fh
                ja      short loc_140235AF3
                cmp     al, 2
                jb      short loc_140235AF3
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, bl
                inc     ecx
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140235AF3
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140235AF3:                          ; CODE XREF: NtSetInformationFile+C83↑j
                                        ; NtSetInformationFile+C87↑j ...
                movzx   eax, bl
                mov     cr8, rax
                test    r12b, r12b
                jz      short loc_140235B09

loc_140235AFF:                          ; CODE XREF: NtSetInformationFile+BB0↑j
                mov     rcx, [rsp+118h+var_E0]
                call    sub_1402481D0

loc_140235B09:                          ; CODE XREF: NtSetInformationFile+CDD↑j
                movzx   eax, [rsp+118h+var_E7]

loc_140235B0E:                          ; CODE XREF: NtSetInformationFile+C07↑j
                                        ; NtSetInformationFile+C13↑j
                test    al, al
                jz      short loc_140235B19
                mov     cl, 1
                call    KeSetKernelStackSwapEnable

loc_140235B19:                          ; CODE XREF: NtSetInformationFile+CF0↑j
                mov     rcx, [rsp+118h+var_80]
                test    rcx, rcx
                jz      short loc_140235B65
                xor     edx, edx
                call    ObCloseHandle
                jmp     short loc_140235B65
; ---------------------------------------------------------------------------

loc_140235B2F:                          ; DATA XREF: .rdata:00000001400546E8↑o
                                        ; .rdata:0000000140054718↑o
;   __except(1) // owned by 1402353C5
;   __except(1) // owned by 140235B86
                mov     ebx, eax
                mov     rcx, [rsp+118h+var_E0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+118h+var_F8], dl
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+118h+var_A0]
                call    sub_1405CD328
                cmp     [rsp+118h+var_E7], 0
                jz      short loc_140235B61
                mov     cl, 1
                call    KeSetKernelStackSwapEnable

loc_140235B61:                          ; CODE XREF: NtSetInformationFile+D38↑j
                mov     eax, ebx
                jmp     short loc_140235B67
; ---------------------------------------------------------------------------

loc_140235B65:                          ; CODE XREF: NtSetInformationFile+3DD↑j
                                        ; NtSetInformationFile+D04↑j ...
                mov     eax, edi

loc_140235B67:                          ; CODE XREF: NtSetInformationFile:loc_140234FDA↑j
                                        ; NtSetInformationFile+1C4↑j ...
                add     rsp, 0E0h
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

loc_140235B7B:                          ; CODE XREF: NtSetInformationFile+10E↑j
                                        ; DATA XREF: .rdata:0000000140054708↑o
;   __try { // __except at loc_140234FDA
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140235B80:                          ; CODE XREF: NtSetInformationFile+12A↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 140235B7B

loc_140235B86:                          ; CODE XREF: NtSetInformationFile+5E1↑j
                                        ; DATA XREF: .rdata:0000000140054708↑o ...
;   __try { // __except at loc_140235B2F
                mov     ecx, 0C000000Dh
                call    RtlRaiseStatus
NtSetInformationFile endp

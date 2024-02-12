NtQueryQuotaInformationFile proc near   ; DATA XREF: .pdata:000000014011CB98↑o
                                        ; PAGE:000000014098B108↓o

var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_98          = byte ptr -98h
var_97          = byte ptr -97h
var_96          = byte ptr -96h
var_95          = byte ptr -95h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = byte ptr  48h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9d
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
                mov     r10, r8
                mov     r8, rdx
                mov     r15, rcx
                xor     edi, edi
                mov     [rsp+0D8h+var_88], rdi
                mov     [rsp+0D8h+var_80], rdi
                mov     [rsp+0D8h+var_90], rdi
                mov     [rax-60h], edi
                mov     [rax-70h], rdi
                mov     [rax-78h], rdi
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-50h], xmm0
                mov     rdx, gs:188h
                mov     [rsp+0D8h+var_58], rdx
                mov     r12b, [rdx+232h]
                mov     [rsp+0D8h+var_97], r12b
                test    r12b, r12b
                jz      loc_14089751E

loc_140897337:                          ; DATA XREF: .rdata:00000001400B7444↑o
;   __try { // __except at loc_140897504
                mov     r12, 7FFFFFFF0000h
                mov     rcx, r12
                cmp     r8, r12
                cmovb   rcx, r8
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [rdx+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_140897382
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_14089737A
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_140897382

loc_14089737A:                          ; CODE XREF: NtQueryQuotaInformationFile+AE↑j
                mov     r8d, 4
                jmp     short loc_140897388
; ---------------------------------------------------------------------------

loc_140897382:                          ; CODE XREF: NtQueryQuotaInformationFile+A0↑j
                                        ; NtQueryQuotaInformationFile+B8↑j
                mov     r8d, 8

loc_140897388:                          ; CODE XREF: NtQueryQuotaInformationFile+C0↑j
                mov     edx, r9d
                mov     rcx, r10
                call    ProbeForWrite
                mov     r13, [rsp+0D8h+arg_38]
                test    r13, r13
                jz      short loc_1408973F0
                lea     rax, [r13+1]
                cmp     rax, r12
                cmovnb  rax, r12
                mov     al, [rax]
                mov     [rsp+0D8h+var_98], al
                movzx   ebx, al
                mov     [rsp+0D8h+var_96], bl
                mov     ecx, ebx
                call    RtlLengthRequiredSid
                mov     r15d, eax
                mov     dword ptr [rsp+0D8h+var_60], r15d
                test    eax, eax
                jz      short loc_140897400
                test    r13b, 3
                jnz     loc_1408979E0
                lea     rcx, [r15+r13]
                cmp     rcx, r12
                ja      short loc_1408973E3
                cmp     rcx, r13
                jnb     short loc_140897400

loc_1408973E3:                          ; CODE XREF: NtQueryQuotaInformationFile+11C↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140897400
; ---------------------------------------------------------------------------

loc_1408973F0:                          ; CODE XREF: NtQueryQuotaInformationFile+DE↑j
                mov     al, dil
                mov     [rsp+0D8h+var_96], al
                mov     [rsp+0D8h+var_98], al
                mov     r15d, dword ptr [rsp+0D8h+var_60]

loc_140897400:                          ; CODE XREF: NtQueryQuotaInformationFile+109↑j
                                        ; NtQueryQuotaInformationFile+121↑j ...
                mov     rsi, [rsp+0D8h+arg_28]
                test    rsi, rsi
                jz      loc_14089749B
                mov     r14d, [rsp+0D8h+arg_30]
                test    r14d, r14d
                jz      short loc_14089749B
                test    sil, 3
                jnz     loc_1408979E5
                lea     rax, [rsi+r14]
                cmp     rax, r12
                ja      short loc_140897436
                cmp     rax, rsi
                jnb     short loc_140897441

loc_140897436:                          ; CODE XREF: NtQueryQuotaInformationFile+16F↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_140897441:                          ; CODE XREF: NtQueryQuotaInformationFile+174↑j
                lea     ecx, [r14+3]
                mov     r12d, 0FFFFFFFCh
                and     ecx, r12d
                mov     eax, r15d
                not     eax
                cmp     ecx, eax
                jbe     short loc_140897461
                mov     eax, 0C000000Dh
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_140897461:                          ; CODE XREF: NtQueryQuotaInformationFile+195↑j
                cmp     ecx, r14d
                jnb     short loc_140897470
                mov     eax, 0C000000Dh
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_140897470:                          ; CODE XREF: NtQueryQuotaInformationFile+1A4↑j
                lea     edx, [rcx+r15]
                mov     ecx, 200h
                call    sub_140508AC0
                mov     rbx, rax
                mov     [rsp+0D8h+var_90], rax
                mov     [rsp+0D8h+var_78], rax
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, rax
                call    memmove
                jmp     short loc_1408974CC
; ---------------------------------------------------------------------------

loc_14089749B:                          ; CODE XREF: NtQueryQuotaInformationFile+14B↑j
                                        ; NtQueryQuotaInformationFile+15C↑j
                mov     r14d, edi
                mov     [rsp+0D8h+arg_30], edi
                test    r13, r13
                jz      short loc_1408974C1
                mov     edx, r15d
                mov     ecx, 1
                call    sub_140508AC0
                mov     rbx, rax
                mov     [rsp+0D8h+var_90], rax
                jmp     short loc_1408974C6
; ---------------------------------------------------------------------------

loc_1408974C1:                          ; CODE XREF: NtQueryQuotaInformationFile+1E8↑j
                mov     rbx, [rsp+0D8h+var_90]

loc_1408974C6:                          ; CODE XREF: NtQueryQuotaInformationFile+1FF↑j
                mov     r12d, 0FFFFFFFCh

loc_1408974CC:                          ; CODE XREF: NtQueryQuotaInformationFile+1D9↑j
                test    r13, r13
                jz      short loc_1408974F5
                lea     esi, [r14+3]
                and     rsi, r12
                add     rsi, rbx
                mov     [rsp+0D8h+var_70], rsi
                mov     r8d, r15d
                mov     rdx, r13
                mov     rcx, rsi
                call    memmove
                mov     al, [rsp+0D8h+var_96]
                mov     [rsi+1], al
;   } // starts at 140897337

loc_1408974F5:                          ; CODE XREF: NtQueryQuotaInformationFile+20F↑j
                                        ; DATA XREF: .rdata:00000001400B7444↑o
                mov     r15, [rsp+0D8h+arg_0]
                mov     r12b, [rsp+0D8h+var_97]
                jmp     short loc_140897564
; ---------------------------------------------------------------------------

loc_140897504:                          ; DATA XREF: .rdata:00000001400B7444↑o
                                        ; .rdata:00000001400B7484↑o
;   __except(1) // owned by 140897337
;   __except(1) // owned by 1408979E0
                mov     ebx, eax
                mov     rcx, [rsp+0D8h+var_90]
                test    rcx, rcx
                jz      short loc_140897517
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140897517:                          ; CODE XREF: NtQueryQuotaInformationFile+24E↑j
                mov     eax, ebx
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_14089751E:                          ; CODE XREF: NtQueryQuotaInformationFile+71↑j
                mov     r14d, [rsp+0D8h+arg_30]
                cmp     [rsp+0D8h+arg_28], rdi
                jz      short loc_140897546
                mov     rax, [rsp+0D8h+var_78]
                test    r14d, r14d
                cmovnz  rax, [rsp+0D8h+arg_28]
                mov     [rsp+0D8h+var_78], rax

loc_140897546:                          ; CODE XREF: NtQueryQuotaInformationFile+26E↑j
                mov     rax, [rsp+0D8h+var_70]
                mov     r13, [rsp+0D8h+arg_38]
                test    r13, r13
                cmovnz  rax, r13
                mov     [rsp+0D8h+var_70], rax
                mov     rbx, [rsp+0D8h+var_90]

loc_140897564:                          ; CODE XREF: NtQueryQuotaInformationFile+242↑j
                mov     rcx, [rsp+0D8h+var_78]
                test    rcx, rcx
                jz      short loc_1408975B6
                mov     [rsp+0D8h+var_68], rdi
                lea     r8, [rsp+0D8h+var_68]
                mov     edx, r14d
                call    sub_1408929DC
                mov     esi, eax
                test    eax, eax
                jns     short loc_1408975B6

loc_140897586:                          ; DATA XREF: .rdata:00000001400B7454↑o
;   __try { // __except at loc_140897599
                mov     rax, [rsp+0D8h+var_68]
                mov     rcx, [rsp+0D8h+arg_8]
                mov     [rcx+8], rax
                jmp     short loc_1408975A0
;   } // starts at 140897586
; ---------------------------------------------------------------------------

loc_140897599:                          ; DATA XREF: .rdata:00000001400B7454↑o
;   __except(1) // owned by 140897586
                mov     esi, eax
                mov     rbx, [rsp+0D8h+var_90]

loc_1408975A0:                          ; CODE XREF: NtQueryQuotaInformationFile+2D7↑j
                                        ; NtQueryQuotaInformationFile+340↓j
                test    rbx, rbx
                jz      short loc_1408975AF
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1408975AF:                          ; CODE XREF: NtQueryQuotaInformationFile+2E3↑j
                mov     eax, esi
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_1408975B6:                          ; CODE XREF: NtQueryQuotaInformationFile+2AC↑j
                                        ; NtQueryQuotaInformationFile+2C4↑j
                mov     rsi, [rsp+0D8h+var_70]
                test    rsi, rsi
                jz      short loc_1408975E5
                mov     rcx, rsi
                call    RtlValidSid
                test    al, al
                jnz     short loc_1408975E5
                test    rbx, rbx
                jz      short loc_1408975DB
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1408975DB:                          ; CODE XREF: NtQueryQuotaInformationFile+30F↑j
                mov     eax, 0C0000078h
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_1408975E5:                          ; CODE XREF: NtQueryQuotaInformationFile+2FE↑j
                                        ; NtQueryQuotaInformationFile+30A↑j
                mov     [rsp+0D8h+var_B8], rdi
                lea     r9, [rsp+0D8h+var_88]
                mov     r8b, r12b
                xor     edx, edx
                mov     rcx, r15
                call    sub_1402433F0
                mov     esi, eax
                test    eax, eax
                js      short loc_1408975A0
                mov     r15, [rsp+0D8h+var_88]
                lea     r12, [r15+50h]
                mov     esi, [r12]
                test    sil, 2
                jz      loc_1408976C3
                shr     esi, 2
                and     sil, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+0D8h+var_88]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     r9, rax
                mov     [rsp+0D8h+var_95], dil
                mov     eax, 1
                xchg    eax, [rbx+74h]
                test    eax, eax
                jnz     short loc_140897675
                test    r9, r9
                jz      short loc_140897664
                or      byte ptr [r9+1Ah], 1

loc_140897664:                          ; CODE XREF: NtQueryQuotaInformationFile+39D↑j
                mov     r15, [rsp+0D8h+var_88]
                mov     rcx, r15
                call    ObfReferenceObject
                mov     ebx, edi
                jmp     short loc_140897695
; ---------------------------------------------------------------------------

loc_140897675:                          ; CODE XREF: NtQueryQuotaInformationFile+398↑j
                lea     rax, [rsp+0D8h+var_95]
                mov     [rsp+0D8h+var_B8], rax
                mov     r8b, sil
                mov     dl, [rsp+0D8h+var_97]
                mov     r15, [rsp+0D8h+var_88]
                mov     rcx, r15
                call    sub_1406A0C70
                mov     ebx, eax

loc_140897695:                          ; CODE XREF: NtQueryQuotaInformationFile+3B3↑j
                cmp     [rsp+0D8h+var_95], dil
                jz      short loc_1408976AF
                mov     rcx, [rsp+0D8h+var_90]
                test    rcx, rcx
                jz      short loc_1408976E6
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1408976E6
; ---------------------------------------------------------------------------

loc_1408976AF:                          ; CODE XREF: NtQueryQuotaInformationFile+3DA↑j
                mov     [rsp+0D8h+var_98], 1
                mov     r14d, [rsp+0D8h+arg_30]
                mov     rbx, [rsp+0D8h+var_90]
                jmp     short loc_140897709
; ---------------------------------------------------------------------------

loc_1408976C3:                          ; CODE XREF: NtQueryQuotaInformationFile+353↑j
                call    sub_140508A4C
                mov     [rsp+0D8h+var_80], rax
                test    rax, rax
                jnz     short loc_1408976F5
                test    rbx, rbx
                jz      short loc_1408976E1
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1408976E1:                          ; CODE XREF: NtQueryQuotaInformationFile+415↑j
                mov     ebx, 0C000009Ah

loc_1408976E6:                          ; CODE XREF: NtQueryQuotaInformationFile+3E4↑j
                                        ; NtQueryQuotaInformationFile+3ED↑j
                mov     rcx, r15
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_1408976F5:                          ; CODE XREF: NtQueryQuotaInformationFile+410↑j
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rax
                call    KeInitializeEvent
                mov     [rsp+0D8h+var_98], dil

loc_140897709:                          ; CODE XREF: NtQueryQuotaInformationFile+401↑j
                mov     rcx, r15
                call    sub_1402360C0
                mov     rcx, r15
                call    IoGetRelatedDeviceObject
                mov     [rsp+0D8h+var_60], rax
                mov     r9, [rsp+0D8h]
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rsi, rax
                mov     [rsp+0D8h+var_68], rax
                test    rax, rax
                jnz     short loc_140897778
                mov     eax, [r12]
                test    al, 2
                jnz     short loc_140897755
                xor     edx, edx
                mov     rcx, [rsp+0D8h+var_80]
                call    ExFreePoolWithTag

loc_140897755:                          ; CODE XREF: NtQueryQuotaInformationFile+487↑j
                xor     edx, edx
                mov     rcx, r15
                call    sub_1408925D4
                test    rbx, rbx
                jz      short loc_14089776E
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14089776E:                          ; CODE XREF: NtQueryQuotaInformationFile+4A2↑j
                mov     eax, 0C000009Ah
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_140897778:                          ; CODE XREF: NtQueryQuotaInformationFile+47F↑j
                mov     [rax+0C0h], r15
                mov     rax, [rsp+0D8h+var_58]
                mov     [rsi+98h], rax
                mov     al, [rsp+0D8h+var_97]
                mov     [rsi+40h], al
                cmp     [rsp+0D8h+var_98], dil
                jz      short loc_1408977A9
                mov     rax, [rsp+0D8h+arg_8]
                mov     rcx, rdi
                jmp     short loc_1408977BD
; ---------------------------------------------------------------------------

loc_1408977A9:                          ; CODE XREF: NtQueryQuotaInformationFile+4DA↑j
                mov     dword ptr [rsi+10h], 4
                lea     rax, [rsp+0D8h+var_50]
                mov     rcx, [rsp+0D8h+var_80]

loc_1408977BD:                          ; CODE XREF: NtQueryQuotaInformationFile+4E7↑j
                mov     [rsi+50h], rcx
                mov     [rsi+48h], rax
                mov     [rsi+58h], rdi
                mov     r12, [rsi+0B8h]
                mov     byte ptr [r12-48h], 19h
                mov     [r12-18h], r15
                mov     [rsi+0A0h], rbx
                mov     rax, [rsp+0D8h+var_78]
                mov     [r12-30h], rax
                mov     [r12-28h], r14d
                mov     r14, [rsp+0D8h+var_60]
                mov     eax, [r14+30h]
                test    al, 4
                jz      loc_140897885
                mov     eax, [rsp+0D8h+arg_18]
                test    eax, eax
                jz      short loc_14089787C

loc_14089780D:                          ; DATA XREF: .rdata:00000001400B7464↑o
;   __try { // __except at loc_14089783E
                mov     ebx, eax
                mov     edx, eax
                mov     ecx, 200h
                call    sub_140508AC0
                mov     rcx, rax
                mov     [rsi+18h], rax
;   } // starts at 14089780D

loc_140897822:                          ; DATA XREF: .rdata:00000001400B7464↑o
                cmp     cs:dword_140CF4A5C, 0
                jnz     short loc_140897835
                mov     r8, rbx
                xor     edx, edx
                call    memset

loc_140897835:                          ; CODE XREF: NtQueryQuotaInformationFile+569↑j
                or      dword ptr [rsi+10h], 70h
                jmp     loc_140897918
; ---------------------------------------------------------------------------

loc_14089783E:                          ; DATA XREF: .rdata:00000001400B7464↑o
;   __except(1) // owned by 14089780D
                mov     ebx, eax
                mov     rcx, [rsp+0D8h+var_88]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0D8h+var_B8], dl
                mov     r9, [rsp+0D8h+var_80]
                xor     r8d, r8d
                mov     rdx, [rsp+0D8h+var_68]
                call    sub_1405CD328
                mov     rcx, [rsp+0D8h+var_90]
                test    rcx, rcx
                jz      short loc_140897875
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140897875:                          ; CODE XREF: NtQueryQuotaInformationFile+5AC↑j
                mov     eax, ebx
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_14089787C:                          ; CODE XREF: NtQueryQuotaInformationFile+54B↑j
                mov     [rsi+18h], rdi
                jmp     loc_140897918
; ---------------------------------------------------------------------------

loc_140897885:                          ; CODE XREF: NtQueryQuotaInformationFile+53C↑j
                test    al, 10h
                jz      loc_140897918
                mov     ebx, [rsp+0D8h+arg_18]
                test    ebx, ebx
                jz      loc_14089792B

loc_14089789C:                          ; DATA XREF: .rdata:00000001400B7474↑o
;   __try { // __except at loc_1408978DA
                mov     [rsp+0D8h+var_B8], rsi
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, [rsp+0D8h+arg_10]
                call    IoAllocateMdl
                mov     rcx, rax
                test    rax, rax
                jz      loc_1408979EB
                movzx   eax, byte ptr [r12-48h]
                mov     dword ptr [rsp+0D8h+var_B8], eax
                mov     r9, r14
                mov     dl, [rsp+0D8h+var_97]
                call    sub_140508980
                jmp     short loc_14089792B
;   } // starts at 14089789C
; ---------------------------------------------------------------------------

loc_1408978DA:                          ; DATA XREF: .rdata:00000001400B7474↑o
                                        ; .rdata:00000001400B7494↑o
;   __except(1) // owned by 14089789C
;   __except(1) // owned by 1408979EB
                mov     ebx, eax
                mov     rcx, [rsp+0D8h+var_88]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0D8h+var_B8], dl
                mov     r9, [rsp+0D8h+var_80]
                xor     r8d, r8d
                mov     rdx, [rsp+0D8h+var_68]
                call    sub_1405CD328
                mov     rcx, [rsp+0D8h+var_90]
                test    rcx, rcx
                jz      short loc_140897911
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140897911:                          ; CODE XREF: NtQueryQuotaInformationFile+648↑j
                mov     eax, ebx
                jmp     loc_1408979CC
; ---------------------------------------------------------------------------

loc_140897918:                          ; CODE XREF: NtQueryQuotaInformationFile+579↑j
                                        ; NtQueryQuotaInformationFile+5C0↑j ...
                mov     rax, [rsp+0D8h+arg_10]
                mov     [rsi+70h], rax
                mov     ebx, [rsp+0D8h+arg_18]

loc_14089792B:                          ; CODE XREF: NtQueryQuotaInformationFile+5D6↑j
                                        ; NtQueryQuotaInformationFile+618↑j
                mov     [r12-40h], ebx
                mov     rax, [rsp+0D8h+var_70]
                mov     [r12-38h], rax
                mov     [r12-46h], dil
                mov     al, dil
                cmp     [rsp+0D8h+arg_40], dil
                jz      short loc_140897954
                mov     byte ptr [r12-46h], 1
                mov     al, 1

loc_140897954:                          ; CODE XREF: NtQueryQuotaInformationFile+68A↑j
                cmp     [rsp+0D8h+arg_20], dil
                jz      short loc_140897965
                or      al, 2
                mov     [r12-46h], al

loc_140897965:                          ; CODE XREF: NtQueryQuotaInformationFile+69C↑j
                test    r13, r13
                jz      short loc_140897971
                or      al, 4
                mov     [r12-46h], al

loc_140897971:                          ; CODE XREF: NtQueryQuotaInformationFile+6A8↑j
                mov     [rsp+0D8h+var_A8], 2
                mov     bl, [rsp+0D8h+var_98]
                mov     byte ptr [rsp+0D8h+var_B0], bl
                mov     r12b, [rsp+0D8h+var_97]
                mov     byte ptr [rsp+0D8h+var_B8], r12b
                xor     r9d, r9d
                mov     r8, r15
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_140643F60
                test    bl, bl
                jnz     short loc_1408979CC
                mov     rcx, [rsp+0D8h+arg_8]
                mov     [rsp+0D8h+var_B0], rcx
                lea     rcx, [rsp+0D8h+var_50]
                mov     [rsp+0D8h+var_B8], rcx
                mov     r9b, r12b
                mov     r8, rsi
                mov     rdx, [rsp+0D8h+var_80]
                mov     ecx, eax
                call    sub_1406FC85C

loc_1408979CC:                          ; CODE XREF: NtQueryQuotaInformationFile+19C↑j
                                        ; NtQueryQuotaInformationFile+1AB↑j ...
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
                align 20h

loc_1408979E0:                          ; CODE XREF: NtQueryQuotaInformationFile+10F↑j
                                        ; DATA XREF: .rdata:00000001400B7484↑o
;   __try { // __except at loc_140897504
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1408979E5:                          ; CODE XREF: NtQueryQuotaInformationFile+162↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1408979E0
; ---------------------------------------------------------------------------

loc_1408979EB:                          ; CODE XREF: NtQueryQuotaInformationFile+5FC↑j
                                        ; DATA XREF: .rdata:00000001400B7484↑o ...
;   __try { // __except at loc_1408978DA
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 1408979EB
byte_1408979F6  db 0CCh                 ; DATA XREF: .rdata:00000001400B7494↑o
; } // starts at 1408972C0
NtQueryQuotaInformationFile endp

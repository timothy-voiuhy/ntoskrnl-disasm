NtWriteFileGather proc near             ; DATA XREF: .pdata:00000001401053C0↑o
                                        ; PAGE:000000014098A9F8↓o

var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_B8          = byte ptr -0B8h
var_B7          = byte ptr -0B7h
var_B0          = qword ptr -0B0h
var_A8          = byte ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407E8598 SIZE 0000001A BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9
                mov     [r11+18h], r8
                mov     [r11+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     r15, [rsp+0F8h+arg_40]
                mov     r12, [rsp+0F8h+arg_38]
                xor     esi, esi
                mov     [rsp+0F8h+var_A0], rsi
                mov     [rsp+0F8h+var_98], rsi
                mov     [r11-58h], rsi
                mov     [rsp+0F8h+var_88], rsi
                mov     [rsp+0F8h+var_90], esi
                mov     [rsp+0F8h+var_B0], rsi
                mov     rax, gs:188h
                mov     [rsp+0F8h+var_50], rax
                mov     r14b, [rax+232h]
                mov     [rsp+0F8h+var_B8], r14b
                lea     rax, [r11-58h]
                mov     [rsp+0F8h+var_D8], rax
                lea     r9, [rsp+0F8h+var_A0]
                mov     r8b, r14b
                xor     edx, edx
                call    sub_1402433F0
                test    eax, eax
                js      loc_1406FE992
                mov     r13d, [rsp+0F8h+var_54]
                mov     rdi, [rsp+0F8h+var_A0]
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     [rsp+0F8h+var_70], rax
                lea     rbx, [rdi+50h]
                mov     [rsp+0F8h+var_78], rbx
                mov     edx, [rbx]
                test    dl, 8
                jz      loc_1406FE985
                test    dl, 2
                jnz     loc_1406FE985
                mov     ecx, [rax+30h]
                test    cl, 4
                jnz     loc_1406FE985
                mov     ecx, [rax+48h]
                cmp     ecx, 36h ; '6'
                ja      short loc_1406FE26D
                mov     r8, 40000100100348h
                bt      r8, rcx
                jb      short loc_1406FE276

loc_1406FE26D:                          ; CODE XREF: NtWriteFileGather+DB↑j
                cmp     ecx, 53h ; 'S'
                jnz     loc_1406FE985

loc_1406FE276:                          ; CODE XREF: NtWriteFileGather+EB↑j
                mov     eax, [rsp+0F8h+arg_30]
                test    eax, 0FFFh
                setnz   sil
                shr     eax, 0Ch
                add     esi, eax
                xor     ecx, ecx
                test    r14b, r14b
                jz      loc_1406FE515
                shr     edx, 5
                not     edx
                and     edx, 4
                or      edx, 2
                test    r13b, dl
                jnz     short loc_1406FE2B8
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C0000022h
                jmp     loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE2B8:                          ; CODE XREF: NtWriteFileGather+124↑j
                mov     [rsp+0F8h+var_80], ecx

loc_1406FE2BC:                          ; DATA XREF: .rdata:0000000140081F90↑o
;   __try { // __except at loc_1406FE4F1
                mov     rcx, [rsp+0F8h+arg_20]
                mov     r14, 7FFFFFFF0000h
                cmp     rcx, r14
                cmovnb  rcx, r14
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     r8b, [rbx]
                and     r8b, 2
                lea     rdx, [rsp+0F8h+arg_10]
                lea     rcx, [rsp+0F8h+arg_20]
                call    sub_140236180
                mov     rax, gs:188h
                mov     [rsp+0F8h+var_48], rax
                mov     rax, [rax+0B8h]
                mov     rcx, [rax+580h]
                xor     r11d, r11d
                test    rcx, rcx
                jz      short loc_1406FE338
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_1406FE334
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_1406FE338

loc_1406FE334:                          ; CODE XREF: NtWriteFileGather+1A8↑j
                mov     cl, 1
                jmp     short loc_1406FE33B
; ---------------------------------------------------------------------------

loc_1406FE338:                          ; CODE XREF: NtWriteFileGather+19A↑j
                                        ; NtWriteFileGather+1B2↑j
                mov     cl, r11b

loc_1406FE33B:                          ; CODE XREF: NtWriteFileGather+1B6↑j
                mov     [rsp+0F8h+var_A8], cl
                mov     edi, esi
                shl     rdi, 3
                test    rdi, rdi
                jz      short loc_1406FE38D
                test    cl, cl
                jz      short loc_1406FE35E
                test    byte ptr [rsp+0F8h+arg_28], 3
                jnz     loc_1406FE9A6
                jmp     short loc_1406FE36C
; ---------------------------------------------------------------------------

loc_1406FE35E:                          ; CODE XREF: NtWriteFileGather+1CC↑j
                test    byte ptr [rsp+0F8h+arg_28], 7
                jnz     loc_1406FE9AB

loc_1406FE36C:                          ; CODE XREF: NtWriteFileGather+1DC↑j
                mov     rax, [rsp+0F8h+arg_28]
                lea     rcx, [rdi+rax]
                cmp     rcx, r14
                ja      short loc_1406FE382
                cmp     rcx, rax
                jnb     short loc_1406FE38D

loc_1406FE382:                          ; CODE XREF: NtWriteFileGather+1FB↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1406FE38D:                          ; CODE XREF: NtWriteFileGather+1C8↑j
                                        ; NtWriteFileGather+200↑j
                cmp     [rsp+0F8h+arg_30], r11d
                jz      short loc_1406FE3FE
                mov     rdx, rdi
                mov     ecx, 1
                call    sub_140348A98
                mov     rbx, rax
                mov     [rsp+0F8h+var_98], rax
                mov     r8, rdi
                mov     rdx, [rsp+0F8h+arg_28]
                mov     rcx, rax
                call    memmove
                mov     [rsp+0F8h+arg_28], rbx
                xor     ecx, ecx
                mov     edx, ecx
                mov     [rsp+0F8h+var_60], ecx

loc_1406FE3D2:                          ; CODE XREF: NtWriteFileGather+279↓j
                cmp     edx, esi
                jnb     short loc_1406FE3FB
                mov     ecx, edx
                mov     rax, [rsp+0F8h+arg_28]
                mov     ecx, [rax+rcx*8]
                test    rcx, 0FFFh
                jnz     loc_1406FE9B0
                inc     edx
                mov     [rsp+0F8h+var_60], edx
                jmp     short loc_1406FE3D2
; ---------------------------------------------------------------------------

loc_1406FE3FB:                          ; CODE XREF: NtWriteFileGather+254↑j
                xor     r11d, r11d

loc_1406FE3FE:                          ; CODE XREF: NtWriteFileGather+215↑j
                mov     rdi, [rsp+0F8h+var_A0]
                cmp     [rdi+0B0h], r11
                jz      short loc_1406FE41E
                test    [rsp+0F8h+arg_10], 0FFFFFFFFFFFFFFFEh
                jnz     loc_1406FE9BA

loc_1406FE41E:                          ; CODE XREF: NtWriteFileGather+28A↑j
                test    r12, r12
                jz      short loc_1406FE447
                test    r12b, 3
                jnz     loc_1406FE9C4
                mov     rax, r14
                cmp     r12, r14
                cmovb   rax, r12
                mov     al, [rax]
                mov     rdi, [rsp+0F8h+var_A0]
                mov     rax, [r12]
                mov     [rsp+0F8h+var_B0], rax

loc_1406FE447:                          ; CODE XREF: NtWriteFileGather+2A1↑j
                lea     rbx, [rdi+50h]
                mov     [rsp+0F8h+var_78], rbx
                mov     r9d, [rbx]
                test    r9b, 8
                jz      short loc_1406FE4CF
                mov     rax, [rsp+0F8h+var_70]
                movzx   ecx, word ptr [rax+130h]
                test    cx, cx
                jz      short loc_1406FE493
                mov     r8d, ecx
                lea     eax, [rcx-1]
                mov     r10d, [rsp+0F8h+arg_30]
                test    r10d, eax
                jz      short loc_1406FE493
                xor     edx, edx
                mov     eax, r10d
                div     r8d
                test    edx, edx
                jnz     loc_1406FE9CA

loc_1406FE493:                          ; CODE XREF: NtWriteFileGather+2EE↑j
                                        ; NtWriteFileGather+301↑j
                test    r12, r12
                jz      short loc_1406FE4CF
                or      esi, 0FFFFFFFFh
                cmp     dword ptr [rsp+0F8h+var_B0], 0FFFFFFFFh
                jnz     short loc_1406FE4A8
                cmp     dword ptr [rsp+0F8h+var_B0+4], esi
                jz      short loc_1406FE4D2

loc_1406FE4A8:                          ; CODE XREF: NtWriteFileGather+320↑j
                cmp     dword ptr [rsp+0F8h+var_B0], 0FFFFFFFEh
                jnz     short loc_1406FE4BB
                cmp     dword ptr [rsp+0F8h+var_B0+4], esi
                jnz     short loc_1406FE4BB
                test    r9b, 2
                jnz     short loc_1406FE4D2

loc_1406FE4BB:                          ; CODE XREF: NtWriteFileGather+32D↑j
                                        ; NtWriteFileGather+333↑j
                test    cx, cx
                jz      short loc_1406FE4D2
                lea     eax, [rcx-1]
                test    dword ptr [rsp+0F8h+var_B0], eax
                jnz     loc_1406FE9D4
                jmp     short loc_1406FE4D2
; ---------------------------------------------------------------------------

loc_1406FE4CF:                          ; CODE XREF: NtWriteFileGather+2DA↑j
                                        ; NtWriteFileGather+316↑j
                or      esi, 0FFFFFFFFh

loc_1406FE4D2:                          ; CODE XREF: NtWriteFileGather+326↑j
                                        ; NtWriteFileGather+339↑j ...
                test    r15, r15
                jz      short loc_1406FE4EA
                cmp     r15, r14
                cmovb   r14, r15
                mov     eax, [r14]
                mov     [rsp+0F8h+var_90], eax
                mov     rdi, [rsp+0F8h+var_A0]

loc_1406FE4EA:                          ; CODE XREF: NtWriteFileGather+355↑j
                mov     r14b, [rsp+0F8h+var_B8]
                jmp     short loc_1406FE532
;   } // starts at 1406FE2BC
; ---------------------------------------------------------------------------

loc_1406FE4F1:                          ; DATA XREF: .rdata:0000000140081F90↑o
                                        ; .rdata:0000000140081FB0↑o
;   __except(loc_1407E8598) // owned by 1406FE2BC
;   __except(loc_1407E8598) // owned by 1406FE9A6
                mov     rcx, [rsp+0F8h+var_A0]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0F8h+var_98]
                test    rcx, rcx
                jz      short loc_1406FE50C
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FE50C:                          ; CODE XREF: NtWriteFileGather+383↑j
                mov     eax, [rsp+0F8h+var_80]
                jmp     loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE515:                          ; CODE XREF: NtWriteFileGather+110↑j
                test    r12, r12
                jz      short loc_1406FE523
                mov     rax, [r12]
                mov     [rsp+0F8h+var_B0], rax

loc_1406FE523:                          ; CODE XREF: NtWriteFileGather+398↑j
                or      esi, 0FFFFFFFFh
                test    r15, r15
                jz      short loc_1406FE532
                mov     eax, [r15]
                mov     [rsp+0F8h+var_90], eax

loc_1406FE532:                          ; CODE XREF: NtWriteFileGather+36F↑j
                                        ; NtWriteFileGather+3A9↑j
                and     r13b, 6
                cmp     r13b, 4
                jnz     short loc_1406FE545
                or      dword ptr [rsp+0F8h+var_B0], 0FFFFFFFFh
                mov     dword ptr [rsp+0F8h+var_B0+4], esi

loc_1406FE545:                          ; CODE XREF: NtWriteFileGather+3BA↑j
                mov     rax, [rsp+0F8h+arg_8]
                xor     r13d, r13d
                test    rax, rax
                jz      short loc_1406FE5C2
                mov     r8, cs:ExEventObjectType
                mov     [rsp+0F8h+var_68], r13
                mov     [rsp+0F8h+var_D0], r13
                lea     rcx, [rsp+0F8h+var_68]
                mov     [rsp+0F8h+var_D8], rcx
                mov     r9b, r14b
                lea     edx, [r13+2]
                mov     rcx, rax
                call    ObReferenceObjectByHandle
                mov     r14d, eax
                mov     rcx, [rsp+0F8h+var_68]
                mov     [rsp+0F8h+var_88], rcx
                test    eax, eax
                jns     short loc_1406FE5BD
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     rbx, [rsp+0F8h+var_98]
                test    rbx, rbx
                jz      short loc_1406FE5B5
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406FE5B5:                          ; CODE XREF: NtWriteFileGather+429↑j
                mov     eax, r14d
                jmp     loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE5BD:                          ; CODE XREF: NtWriteFileGather+417↑j
                call    KeResetEvent

loc_1406FE5C2:                          ; CODE XREF: NtWriteFileGather+3D3↑j
                mov     r14d, [rbx]
                test    r14b, 2
                jz      loc_1406FE6BA
                shr     r14d, 2
                and     r14b, 1
                mov     rax, gs:188h
                add     [rax+1E4h], si
                mov     rbx, [rsp+0F8h+var_A0]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+0F8h+var_B7], r13b
                mov     ecx, 1
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_1406FE62E
                test    rax, rax
                jz      short loc_1406FE617
                or      byte ptr [rax+1Ah], 1

loc_1406FE617:                          ; CODE XREF: NtWriteFileGather+491↑j
                mov     rdi, [rsp+0F8h+var_A0]
                mov     rcx, rdi
                call    ObfReferenceObject
                mov     ebx, r13d
                mov     r14b, [rsp+0F8h+var_B8]
                jmp     short loc_1406FE655
; ---------------------------------------------------------------------------

loc_1406FE62E:                          ; CODE XREF: NtWriteFileGather+48C↑j
                lea     rcx, [rsp+0F8h+var_B7]
                mov     [rsp+0F8h+var_D8], rcx
                mov     r9, rax
                mov     r8b, r14b
                mov     r14b, [rsp+0F8h+var_B8]
                mov     dl, r14b
                mov     rdi, [rsp+0F8h+var_A0]
                mov     rcx, rdi
                call    sub_1406A0C70
                mov     ebx, eax

loc_1406FE655:                          ; CODE XREF: NtWriteFileGather+4AC↑j
                cmp     [rsp+0F8h+var_B7], r13b
                jz      short loc_1406FE68B
                mov     rcx, [rsp+0F8h+var_88]
                test    rcx, rcx
                jz      short loc_1406FE66B
                call    PsDereferenceSiloContext

loc_1406FE66B:                          ; CODE XREF: NtWriteFileGather+4E4↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0F8h+var_98]
                test    rcx, rcx
                jz      short loc_1406FE684
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FE684:                          ; CODE XREF: NtWriteFileGather+4FB↑j
                mov     eax, ebx
                jmp     loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE68B:                          ; CODE XREF: NtWriteFileGather+4DA↑j
                mov     r15b, 1
                test    r12, r12
                jnz     short loc_1406FE69A
                cmp     dword ptr [rsp+0F8h+var_B0], r13d
                jz      short loc_1406FE6A7

loc_1406FE69A:                          ; CODE XREF: NtWriteFileGather+511↑j
                cmp     dword ptr [rsp+0F8h+var_B0], 0FFFFFFFEh
                jnz     short loc_1406FE6B0
                cmp     dword ptr [rsp+0F8h+var_B0+4], esi
                jnz     short loc_1406FE6B0

loc_1406FE6A7:                          ; CODE XREF: NtWriteFileGather+518↑j
                mov     rax, [rdi+68h]
                mov     [rsp+0F8h+var_B0], rax

loc_1406FE6B0:                          ; CODE XREF: NtWriteFileGather+51F↑j
                                        ; NtWriteFileGather+525↑j
                mov     rbx, [rsp+0F8h+var_78]
                jmp     short loc_1406FE6E1
; ---------------------------------------------------------------------------

loc_1406FE6BA:                          ; CODE XREF: NtWriteFileGather+449↑j
                test    r12, r12
                jnz     short loc_1406FE6D9
                test    r14d, 280h
                jnz     short loc_1406FE6D9
                mov     rcx, [rsp+0F8h+var_88]
                test    rcx, rcx
                jz      short loc_1406FE710
                call    PsDereferenceSiloContext
                jmp     short loc_1406FE710
; ---------------------------------------------------------------------------

loc_1406FE6D9:                          ; CODE XREF: NtWriteFileGather+53D↑j
                                        ; NtWriteFileGather+546↑j
                mov     r15b, r13b
                mov     r14b, [rsp+0F8h+var_B8]

loc_1406FE6E1:                          ; CODE XREF: NtWriteFileGather+538↑j
                mov     eax, dword ptr [rsp+0F8h+var_B0+4]
                test    eax, eax
                jns     short loc_1406FE735
                cmp     eax, esi
                jnz     short loc_1406FE6F4
                cmp     dword ptr [rsp+0F8h+var_B0], 0FFFFFFFFh
                jz      short loc_1406FE735

loc_1406FE6F4:                          ; CODE XREF: NtWriteFileGather+56B↑j
                mov     rcx, [rsp+0F8h+var_88]
                test    rcx, rcx
                jz      short loc_1406FE703
                call    PsDereferenceSiloContext

loc_1406FE703:                          ; CODE XREF: NtWriteFileGather+57C↑j
                test    r15b, r15b
                jz      short loc_1406FE710
                mov     rcx, rdi
                call    sub_1402481D0

loc_1406FE710:                          ; CODE XREF: NtWriteFileGather+550↑j
                                        ; NtWriteFileGather+557↑j ...
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     rbx, [rsp+0F8h+var_98]
                test    rbx, rbx
                jz      loc_1406FE98D
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_1406FE98D
; ---------------------------------------------------------------------------

loc_1406FE735:                          ; CODE XREF: NtWriteFileGather+567↑j
                                        ; NtWriteFileGather+572↑j
                mov     rcx, rdi
                call    sub_1402360C0
                mov     r9, [rsp+0F8h]
                mov     r8b, r15b
                xor     r8b, 1
                mov     r12, [rsp+0F8h+var_70]
                mov     dl, [r12+4Ch]
                mov     rcx, r12
                call    sub_140235D20
                mov     rsi, rax
                mov     [rsp+0F8h+var_68], rax
                test    rax, rax
                jnz     short loc_1406FE79C
                mov     rdx, [rsp+0F8h+var_88]
                mov     rcx, rdi
                call    sub_1408925D4
                mov     rbx, [rsp+0F8h+var_98]
                test    rbx, rbx
                jz      short loc_1406FE792
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406FE792:                          ; CODE XREF: NtWriteFileGather+606↑j
                mov     eax, 0C000009Ah
                jmp     loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE79C:                          ; CODE XREF: NtWriteFileGather+5EF↑j
                mov     [rax+0C0h], rdi
                mov     rax, [rsp+0F8h+var_50]
                mov     [rsi+98h], rax
                mov     [rsi+0A0h], r13
                mov     [rsi+40h], r14b
                mov     [rsi+41h], r13b
                mov     [rsi+44h], r13b
                mov     [rsi+68h], r13
                mov     rax, [rsp+0F8h+var_88]
                mov     [rsi+50h], rax
                mov     r13, [rsp+0F8h+arg_20]
                mov     [rsi+48h], r13
                mov     rax, [rsp+0F8h+arg_10]
                mov     [rsi+58h], rax
                mov     rax, [rsp+0F8h+arg_18]
                mov     [rsi+60h], rax
                mov     r14, [rsi+0B8h]
                mov     dword ptr [r14-48h], 4
                mov     [r14-18h], rdi
                mov     eax, [rbx]
                test    al, 10h
                jz      short loc_1406FE814
                mov     byte ptr [r14-46h], 4

loc_1406FE814:                          ; CODE XREF: NtWriteFileGather+68D↑j
                xor     ecx, ecx
                mov     [rsi+18h], rcx
                mov     [rsi+8], rcx
                mov     [rsi+10h], ecx
                mov     eax, [rsp+0F8h+arg_30]
                test    eax, eax
                jz      loc_1406FE8FC

loc_1406FE830:                          ; DATA XREF: .rdata:0000000140081FA0↑o
;   __try { // __except at loc_1406FE8BB
                mov     [rsp+0F8h+var_D8], rsi
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, eax
                mov     rcx, [rsp+0F8h+arg_28]
                mov     rcx, [rcx]
                call    IoAllocateMdl
                mov     rbx, rax
                test    rax, rax
                jz      loc_1406FE9DF
                movzx   r12d, byte ptr [r14-48h]
                xor     r9d, r9d
                mov     r8b, [rsp+0F8h+var_B8]
                mov     rdx, [rsp+0F8h+arg_28]
                mov     rcx, rbx
                call    MmProbeAndLockSelectedPages
                mov     eax, cs:dword_140CFC4EC
                test    al, 1
                jz      short loc_1406FE8A2
                mov     ecx, r12d
                mov     r12, [rsp+0F8h+var_70]
                mov     rax, [r12+8]
                mov     rdx, [rax+rcx*8+70h]
                mov     r8, r12
                mov     rcx, rbx
                call    sub_140531440
                jmp     short loc_1406FE8AA
; ---------------------------------------------------------------------------

loc_1406FE8A2:                          ; CODE XREF: NtWriteFileGather+6FE↑j
                mov     r12, [rsp+0F8h+var_70]

loc_1406FE8AA:                          ; CODE XREF: NtWriteFileGather+720↑j
                mov     rax, [rsp+0F8h+arg_28]
                mov     rcx, [rax]
                mov     [rsi+70h], rcx
                jmp     short loc_1406FE8FC
;   } // starts at 1406FE830
; ---------------------------------------------------------------------------

loc_1406FE8BB:                          ; DATA XREF: .rdata:0000000140081FA0↑o
                                        ; .rdata:0000000140081FC0↑o
;   __except(1) // owned by 1406FE830
;   __except(1) // owned by 1406FE9DF
                mov     ebx, eax
                mov     rcx, [rsp+0F8h+var_A0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0F8h+var_D8], dl
                xor     r9d, r9d
                mov     r8, [rsp+0F8h+var_88]
                mov     rdx, [rsp+0F8h+var_68]
                call    sub_1405CD328
                mov     rcx, [rsp+0F8h+var_98]
                test    rcx, rcx
                jz      short loc_1406FE8F5
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FE8F5:                          ; CODE XREF: NtWriteFileGather+76C↑j
                mov     eax, ebx
                jmp     loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE8FC:                          ; CODE XREF: NtWriteFileGather+6AA↑j
                                        ; NtWriteFileGather+739↑j
                mov     rbx, [rsp+0F8h+var_98]
                test    rbx, rbx
                jz      short loc_1406FE910
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1406FE910:                          ; CODE XREF: NtWriteFileGather+784↑j
                mov     rax, [rsp+0F8h+var_78]
                mov     eax, [rax]
                and     eax, 8
                or      eax, 5000h
                shr     eax, 3
                or      [rsi+10h], eax
                mov     eax, [rsp+0F8h+arg_30]
                mov     [r14-40h], eax
                mov     eax, [rsp+0F8h+var_90]
                mov     [r14-38h], eax
                mov     rax, [rsp+0F8h+var_B0]
                mov     [r14-30h], rax
                mov     edx, 10h
                mov     rcx, rdi
                call    sub_14021592C
                test    al, al
                jz      short loc_1406FE95D
                mov     eax, [r13+8]
                mov     [r14-34h], eax

loc_1406FE95D:                          ; CODE XREF: NtWriteFileGather+7D3↑j
                mov     [rsp+0F8h+var_C8], 1
                mov     byte ptr [rsp+0F8h+var_D0], r15b
                mov     al, [rsp+0F8h+var_B8]
                mov     byte ptr [rsp+0F8h+var_D8], al
                mov     r9b, 1
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_140643F60
                jmp     short loc_1406FE992
; ---------------------------------------------------------------------------

loc_1406FE985:                          ; CODE XREF: NtWriteFileGather+BA↑j
                                        ; NtWriteFileGather+C3↑j ...
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_1406FE98D:                          ; CODE XREF: NtWriteFileGather+5A0↑j
                                        ; NtWriteFileGather+5B0↑j
                mov     eax, 0C000000Dh

loc_1406FE992:                          ; CODE XREF: NtWriteFileGather+86↑j
                                        ; NtWriteFileGather+133↑j ...
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
                align 2

loc_1406FE9A6:                          ; CODE XREF: NtWriteFileGather+1D6↑j
                                        ; DATA XREF: .rdata:0000000140081FB0↑o
;   __try { // __except at loc_1406FE4F1
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406FE9AB:                          ; CODE XREF: NtWriteFileGather+1E6↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406FE9B0:                          ; CODE XREF: NtWriteFileGather+26A↑j
                mov     ecx, 0C000000Dh
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_1406FE9BA:                          ; CODE XREF: NtWriteFileGather+298↑j
                mov     ecx, 0C000000Dh
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_1406FE9C4:                          ; CODE XREF: NtWriteFileGather+2A7↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_1406FE9CA:                          ; CODE XREF: NtWriteFileGather+30D↑j
                mov     ecx, 0C000000Dh
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_1406FE9D4:                          ; CODE XREF: NtWriteFileGather+347↑j
                mov     ecx, 0C000000Dh
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1406FE9A6
; ---------------------------------------------------------------------------

loc_1406FE9DF:                          ; CODE XREF: NtWriteFileGather+6D3↑j
                                        ; DATA XREF: .rdata:0000000140081FB0↑o ...
;   __try { // __except at loc_1406FE8BB
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 1406FE9DF
byte_1406FE9EA  db 0CCh                 ; DATA XREF: .rdata:0000000140081FC0↑o
; } // starts at 1406FE180
NtWriteFileGather endp

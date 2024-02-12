NtReadFileScatter proc near             ; DATA XREF: .pdata:00000001401053B4↑o
                                        ; PAGE:000000014098A808↓o

var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_98          = byte ptr -98h
var_97          = byte ptr -97h
var_96          = byte ptr -96h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407E8578 SIZE 0000001A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     rsi, rdx
                mov     r13, [rsp+0D8h+arg_40]
                xor     ebx, ebx
                mov     [rsp+0D8h+var_90], rbx
                mov     [rsp+0D8h+var_88], rbx
                mov     [rax-70h], rbx
                mov     [rax-78h], ebx
                mov     [rax-80h], rbx
                mov     rax, gs:188h
                mov     [rsp+0D8h+var_50], rax
                mov     dil, [rax+232h]
                mov     [rsp+0D8h+var_98], dil
                mov     [rsp+0D8h+var_B8], rbx
                lea     r9, [rsp+0D8h+var_90]
                mov     r8b, dil
                lea     edx, [rbx+1]
                call    sub_1402433F0
                test    eax, eax
                js      loc_1406FE131
                mov     rbx, [rsp+0D8h+var_90]
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                mov     r14, rax
                mov     [rsp+0D8h+var_58], rax
                mov     ecx, [rbx+50h]
                test    cl, 8
                jz      loc_1406FE124
                test    cl, 2
                jnz     loc_1406FE124
                mov     ecx, [rax+30h]
                test    cl, 4
                jnz     loc_1406FE124
                mov     ecx, [rax+48h]
                cmp     ecx, 36h ; '6'
                ja      short loc_1406FDAAE
                mov     rdx, 40000100100348h
                bt      rdx, rcx
                jb      short loc_1406FDAB7

loc_1406FDAAE:                          ; CODE XREF: NtReadFileScatter+BC↑j
                cmp     ecx, 53h ; 'S'
                jnz     loc_1406FE124

loc_1406FDAB7:                          ; CODE XREF: NtReadFileScatter+CC↑j
                mov     eax, [rsp+0D8h+arg_30]
                test    eax, 0FFFh
                mov     r10d, 0
                mov     r12d, r10d
                setnz   r12b
                shr     eax, 0Ch
                add     r12d, eax
                test    dil, dil
                jz      loc_1406FDD2E
                mov     [rsp+0D8h+var_74], r10d

loc_1406FDAE4:                          ; DATA XREF: .rdata:0000000140081F20↑o
;   __try { // __except at loc_1406FDD0A
                mov     rcx, [rsp+0D8h+arg_20]
                mov     rsi, 7FFFFFFF0000h
                cmp     rcx, rsi
                cmovnb  rcx, rsi
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     r8b, [rbx+50h]
                and     r8b, 2
                lea     rdx, [rsp+0D8h+arg_10]
                lea     rcx, [rsp+0D8h+arg_20]
                call    sub_140236180
                mov     rdi, [rsp+0D8h+var_90]
                xor     r10d, r10d
                cmp     [rdi+0B0h], r10
                jz      short loc_1406FDB4F
                test    [rsp+0D8h+arg_10], 0FFFFFFFFFFFFFFFEh
                jz      short loc_1406FDB4F
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDB4F:                          ; CODE XREF: NtReadFileScatter+14D↑j
                                        ; NtReadFileScatter+15B↑j
                mov     r15, [rsp+0D8h+arg_38]
                test    r15, r15
                jz      short loc_1406FDB7F
                test    r15b, 3
                jnz     loc_1406FE145
                mov     rax, rsi
                cmp     r15, rsi
                cmovb   rax, r15
                mov     al, [rax]
                mov     rdi, [rsp+0D8h+var_90]
                mov     rax, [r15]
                mov     [rsp+0D8h+var_80], rax

loc_1406FDB7F:                          ; CODE XREF: NtReadFileScatter+17A↑j
                mov     eax, [rbx+50h]
                mov     r9d, [rsp+0D8h+arg_30]
                test    al, 8
                jz      short loc_1406FDBE8
                movzx   ecx, word ptr [r14+130h]
                test    cx, cx
                jz      short loc_1406FDBC4
                mov     r8d, ecx
                lea     eax, [rcx-1]
                test    r9d, eax
                jz      short loc_1406FDBC4
                xor     edx, edx
                mov     eax, r9d
                div     r8d
                test    edx, edx
                jz      short loc_1406FDBC4
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDBC4:                          ; CODE XREF: NtReadFileScatter+1B9↑j
                                        ; NtReadFileScatter+1C4↑j ...
                test    r15, r15
                jz      short loc_1406FDBE8
                test    cx, cx
                jz      short loc_1406FDBE8
                dec     ecx
                test    dword ptr [rsp+0D8h+var_80], ecx
                jz      short loc_1406FDBE8
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDBE8:                          ; CODE XREF: NtReadFileScatter+1AC↑j
                                        ; NtReadFileScatter+1E7↑j ...
                mov     rax, gs:188h
                mov     [rsp+0D8h+var_40], rax
                mov     rax, [rax+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_1406FDC28
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_1406FDC24
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_1406FDC28

loc_1406FDC24:                          ; CODE XREF: NtReadFileScatter+238↑j
                mov     cl, 1
                jmp     short loc_1406FDC2B
; ---------------------------------------------------------------------------

loc_1406FDC28:                          ; CODE XREF: NtReadFileScatter+22A↑j
                                        ; NtReadFileScatter+242↑j
                mov     cl, r10b

loc_1406FDC2B:                          ; CODE XREF: NtReadFileScatter+246↑j
                mov     [rsp+0D8h+var_96], cl
                mov     ebx, r12d
                shl     rbx, 3
                test    rbx, rbx
                jz      short loc_1406FDC7E
                test    cl, cl
                jz      short loc_1406FDC4F
                test    byte ptr [rsp+0D8h+arg_28], 3
                jnz     loc_1406FE14B
                jmp     short loc_1406FDC5D
; ---------------------------------------------------------------------------

loc_1406FDC4F:                          ; CODE XREF: NtReadFileScatter+25D↑j
                test    byte ptr [rsp+0D8h+arg_28], 7
                jnz     loc_1406FE150

loc_1406FDC5D:                          ; CODE XREF: NtReadFileScatter+26D↑j
                mov     r14, [rsp+0D8h+arg_28]
                lea     rax, [rbx+r14]
                cmp     rax, rsi
                ja      short loc_1406FDC73
                cmp     rax, r14
                jnb     short loc_1406FDC7E

loc_1406FDC73:                          ; CODE XREF: NtReadFileScatter+28C↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1406FDC7E:                          ; CODE XREF: NtReadFileScatter+259↑j
                                        ; NtReadFileScatter+291↑j
                test    r9d, r9d
                jz      short loc_1406FDCDA
                mov     rdx, rbx
                mov     ecx, 1
                call    sub_140348A98
                mov     rdi, rax
                mov     [rsp+0D8h+var_88], rax
                mov     r8, rbx
                mov     rdx, [rsp+0D8h+arg_28]
                mov     rcx, rax
                call    memmove
                mov     [rsp+0D8h+arg_28], rdi
                xor     edx, edx

loc_1406FDCB5:                          ; CODE XREF: NtReadFileScatter+2F8↓j
                mov     [rsp+0D8h+var_60], edx
                cmp     edx, r12d
                jnb     short loc_1406FDCE1
                mov     rax, [rsp+0D8h+arg_28]
                mov     ecx, [rax+rdx*8]
                test    rcx, 0FFFh
                jnz     loc_1406FE155
                inc     edx
                jmp     short loc_1406FDCB5
; ---------------------------------------------------------------------------

loc_1406FDCDA:                          ; CODE XREF: NtReadFileScatter+2A1↑j
                mov     rdi, [rsp+0D8h+var_88]
                jmp     short loc_1406FDCE4
; ---------------------------------------------------------------------------

loc_1406FDCE1:                          ; CODE XREF: NtReadFileScatter+2DC↑j
                xor     r10d, r10d

loc_1406FDCE4:                          ; CODE XREF: NtReadFileScatter+2FF↑j
                test    r13, r13
                jz      short loc_1406FDCFB
                cmp     r13, rsi
                cmovb   rsi, r13
                mov     eax, [rsi]
                mov     [rsp+0D8h+var_78], eax
                mov     rdi, [rsp+0D8h+var_88]

loc_1406FDCFB:                          ; CODE XREF: NtReadFileScatter+307↑j
                mov     rbx, [rsp+0D8h+var_90]
                mov     rsi, [rsp+0D8h+arg_8]
                jmp     short loc_1406FDD55
;   } // starts at 1406FDAE4
; ---------------------------------------------------------------------------

loc_1406FDD0A:                          ; DATA XREF: .rdata:0000000140081F20↑o
                                        ; .rdata:0000000140081F40↑o
;   __except(loc_1407E8578) // owned by 1406FDAE4
;   __except(loc_1407E8578) // owned by 1406FE145
                mov     rcx, [rsp+0D8h+var_90]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0D8h+var_88]
                test    rcx, rcx
                jz      short loc_1406FDD25
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FDD25:                          ; CODE XREF: NtReadFileScatter+33C↑j
                mov     eax, [rsp+0D8h+var_74]
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDD2E:                          ; CODE XREF: NtReadFileScatter+F9↑j
                mov     r15, [rsp+0D8h+arg_38]
                test    r15, r15
                jz      short loc_1406FDD43
                mov     rax, [r15]
                mov     [rsp+0D8h+var_80], rax

loc_1406FDD43:                          ; CODE XREF: NtReadFileScatter+359↑j
                mov     rdi, [rsp+0D8h+var_88]
                test    r13, r13
                jz      short loc_1406FDD55
                mov     eax, [r13+0]
                mov     [rsp+0D8h+var_78], eax

loc_1406FDD55:                          ; CODE XREF: NtReadFileScatter+328↑j
                                        ; NtReadFileScatter+36B↑j
                mov     r13b, [rsp+0D8h+var_98]
                test    rsi, rsi
                jz      short loc_1406FDDC5
                mov     r8, cs:ExEventObjectType
                mov     [rsp+0D8h+var_68], r10
                mov     [rsp+0D8h+var_B0], r10
                lea     rax, [rsp+0D8h+var_68]
                mov     [rsp+0D8h+var_B8], rax
                mov     r9b, r13b
                mov     edx, 2
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     esi, eax
                mov     r14, [rsp+0D8h+var_68]
                mov     [rsp+0D8h+var_70], r14
                test    eax, eax
                jns     short loc_1406FDDB8
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                test    rdi, rdi
                jz      short loc_1406FDDB1
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1406FDDB1:                          ; CODE XREF: NtReadFileScatter+3C5↑j
                mov     eax, esi
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDDB8:                          ; CODE XREF: NtReadFileScatter+3B8↑j
                mov     rcx, r14
                call    KeResetEvent
                xor     r10d, r10d
                jmp     short loc_1406FDDCA
; ---------------------------------------------------------------------------

loc_1406FDDC5:                          ; CODE XREF: NtReadFileScatter+37D↑j
                mov     r14, [rsp+0D8h+var_70]

loc_1406FDDCA:                          ; CODE XREF: NtReadFileScatter+3E3↑j
                lea     rax, [rbx+50h]
                mov     [rsp+0D8h+var_48], rax
                mov     esi, [rax]
                test    sil, 2
                jz      loc_1406FDEC8
                shr     esi, 2
                and     sil, 1
                mov     rax, gs:188h
                or      r14d, 0FFFFFFFFh
                add     [rax+1E4h], r14w
                mov     rbx, [rsp+0D8h+var_90]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+0D8h+var_97], 0
                lea     ecx, [r14+2]
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_1406FDE42
                test    rax, rax
                jz      short loc_1406FDE2D
                or      byte ptr [rax+1Ah], 1

loc_1406FDE2D:                          ; CODE XREF: NtReadFileScatter+447↑j
                mov     rbx, [rsp+0D8h+var_90]
                mov     rcx, rbx
                call    ObfReferenceObject
                xor     r10d, r10d
                mov     edi, r10d
                jmp     short loc_1406FDE67
; ---------------------------------------------------------------------------

loc_1406FDE42:                          ; CODE XREF: NtReadFileScatter+442↑j
                lea     rcx, [rsp+0D8h+var_97]
                mov     [rsp+0D8h+var_B8], rcx
                mov     r9, rax
                mov     r8b, sil
                mov     dl, r13b
                mov     rbx, [rsp+0D8h+var_90]
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     edi, eax
                xor     r10d, r10d

loc_1406FDE67:                          ; CODE XREF: NtReadFileScatter+460↑j
                cmp     [rsp+0D8h+var_97], r10b
                jz      short loc_1406FDE9D
                mov     rcx, [rsp+0D8h+var_70]
                test    rcx, rcx
                jz      short loc_1406FDE7D
                call    PsDereferenceSiloContext

loc_1406FDE7D:                          ; CODE XREF: NtReadFileScatter+496↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0D8h+var_88]
                test    rcx, rcx
                jz      short loc_1406FDE96
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FDE96:                          ; CODE XREF: NtReadFileScatter+4AD↑j
                mov     eax, edi
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDE9D:                          ; CODE XREF: NtReadFileScatter+48C↑j
                test    r15, r15
                jz      short loc_1406FDEB0
                cmp     dword ptr [rsp+0D8h+var_80], 0FFFFFFFEh
                jnz     short loc_1406FDEB9
                cmp     dword ptr [rsp+0D8h+var_80+4], r14d
                jnz     short loc_1406FDEB9

loc_1406FDEB0:                          ; CODE XREF: NtReadFileScatter+4C0↑j
                mov     rax, [rbx+68h]
                mov     [rsp+0D8h+var_80], rax

loc_1406FDEB9:                          ; CODE XREF: NtReadFileScatter+4C7↑j
                                        ; NtReadFileScatter+4CE↑j
                mov     r12b, 1
                mov     rdi, [rsp+0D8h+var_88]
                mov     r14, [rsp+0D8h+var_70]
                jmp     short loc_1406FDEE7
; ---------------------------------------------------------------------------

loc_1406FDEC8:                          ; CODE XREF: NtReadFileScatter+3FC↑j
                test    r15, r15
                jnz     short loc_1406FDEE4
                test    esi, 280h
                jnz     short loc_1406FDEE4
                test    r14, r14
                jz      short loc_1406FDF08
                mov     rcx, r14
                call    PsDereferenceSiloContext
                jmp     short loc_1406FDF08
; ---------------------------------------------------------------------------

loc_1406FDEE4:                          ; CODE XREF: NtReadFileScatter+4EB↑j
                                        ; NtReadFileScatter+4F3↑j
                mov     r12b, r10b

loc_1406FDEE7:                          ; CODE XREF: NtReadFileScatter+4E6↑j
                cmp     dword ptr [rsp+0D8h+var_80+4], r10d
                jge     short loc_1406FDF28
                test    r14, r14
                jz      short loc_1406FDEFB
                mov     rcx, r14
                call    PsDereferenceSiloContext

loc_1406FDEFB:                          ; CODE XREF: NtReadFileScatter+511↑j
                test    r12b, r12b
                jz      short loc_1406FDF08
                mov     rcx, rbx
                call    sub_1402481D0

loc_1406FDF08:                          ; CODE XREF: NtReadFileScatter+4F8↑j
                                        ; NtReadFileScatter+502↑j ...
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                test    rdi, rdi
                jz      loc_1406FE12C
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_1406FE12C
; ---------------------------------------------------------------------------

loc_1406FDF28:                          ; CODE XREF: NtReadFileScatter+50C↑j
                mov     rcx, rbx
                call    sub_1402360C0
                mov     r9, [rsp+0D8h]
                mov     r8b, r12b
                xor     r8b, 1
                mov     rax, [rsp+0D8h+var_58]
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rsi, rax
                mov     [rsp+0D8h+var_68], rax
                xor     r8d, r8d
                test    rax, rax
                jnz     short loc_1406FDF86
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1408925D4
                test    rdi, rdi
                jz      short loc_1406FDF7C
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1406FDF7C:                          ; CODE XREF: NtReadFileScatter+590↑j
                mov     eax, 0C000009Ah
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FDF86:                          ; CODE XREF: NtReadFileScatter+580↑j
                mov     [rax+0C0h], rbx
                mov     rax, [rsp+0D8h+var_50]
                mov     [rsi+98h], rax
                mov     [rsi+0A0h], r8
                mov     [rsi+40h], r13b
                mov     [rsi+41h], r8b
                mov     [rsi+44h], r8b
                mov     [rsi+68h], r8
                mov     [rsi+50h], r14
                mov     r13, [rsp+0D8h+arg_20]
                mov     [rsi+48h], r13
                mov     rax, [rsp+0D8h+arg_10]
                mov     [rsi+58h], rax
                mov     rax, [rsp+0D8h+arg_18]
                mov     [rsi+60h], rax
                mov     r15, [rsi+0B8h]
                mov     dword ptr [r15-48h], 3
                mov     [r15-18h], rbx
                mov     [rsi+18h], r8
                mov     [rsi+8], r8
                mov     [rsi+10h], r8d
                mov     r14d, [rsp+0D8h+arg_30]
                test    r14d, r14d
                jz      loc_1406FE0A2

loc_1406FE00B:                          ; DATA XREF: .rdata:0000000140081F30↑o
;   __try { // __except at loc_1406FE064
                mov     [rsp+0D8h+var_B8], rsi
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, r14d
                mov     rcx, [rsp+0D8h+arg_28]
                mov     rcx, [rcx]
                call    IoAllocateMdl
                test    rax, rax
                jz      loc_1406FE160
                mov     r9d, 1
                mov     r8b, [rsp+0D8h+var_98]
                mov     r14, [rsp+0D8h+arg_28]
                mov     rdx, r14
                mov     rcx, rax
                call    MmProbeAndLockSelectedPages
                mov     rax, [r14]
                mov     [rsi+70h], rax
                mov     r14d, [rsp+0D8h+arg_30]
                xor     r8d, r8d
                jmp     short loc_1406FE0A2
;   } // starts at 1406FE00B
; ---------------------------------------------------------------------------

loc_1406FE064:                          ; DATA XREF: .rdata:0000000140081F30↑o
                                        ; .rdata:0000000140081F50↑o
;   __except(1) // owned by 1406FE00B
;   __except(1) // owned by 1406FE160
                mov     ebx, eax
                mov     rcx, [rsp+0D8h+var_90]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0D8h+var_B8], dl
                xor     r9d, r9d
                mov     r8, [rsp+0D8h+var_70]
                mov     rdx, [rsp+0D8h+var_68]
                call    sub_1405CD328
                mov     rcx, [rsp+0D8h+var_88]
                test    rcx, rcx
                jz      short loc_1406FE09B
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406FE09B:                          ; CODE XREF: NtReadFileScatter+6B2↑j
                mov     eax, ebx
                jmp     loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FE0A2:                          ; CODE XREF: NtReadFileScatter+625↑j
                                        ; NtReadFileScatter+682↑j
                test    rdi, rdi
                jz      short loc_1406FE0B4
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                xor     r8d, r8d

loc_1406FE0B4:                          ; CODE XREF: NtReadFileScatter+6C5↑j
                mov     rax, [rsp+0D8h+var_48]
                mov     eax, [rax]
                and     eax, 8
                or      eax, 4800h
                shr     eax, 3
                or      [rsi+10h], eax
                mov     [r15-40h], r14d
                mov     eax, [rsp+0D8h+var_78]
                mov     [r15-38h], eax
                mov     rax, [rsp+0D8h+var_80]
                mov     [r15-30h], rax
                mov     edx, 10h
                mov     rcx, rbx
                call    sub_14021592C
                test    al, al
                jz      short loc_1406FE0FA
                mov     eax, [r13+8]
                mov     [r15-34h], eax

loc_1406FE0FA:                          ; CODE XREF: NtReadFileScatter+710↑j
                mov     [rsp+0D8h+var_A8], r8d
                mov     byte ptr [rsp+0D8h+var_B0], r12b
                mov     al, [rsp+0D8h+var_98]
                mov     byte ptr [rsp+0D8h+var_B8], al
                mov     r9b, 1
                mov     r8, rbx
                mov     rdx, rsi
                mov     rcx, [rsp+0D8h+var_58]
                call    sub_140643F60
                jmp     short loc_1406FE131
; ---------------------------------------------------------------------------

loc_1406FE124:                          ; CODE XREF: NtReadFileScatter+9B↑j
                                        ; NtReadFileScatter+A4↑j ...
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_1406FE12C:                          ; CODE XREF: NtReadFileScatter+533↑j
                                        ; NtReadFileScatter+543↑j
                mov     eax, 0C000000Dh

loc_1406FE131:                          ; CODE XREF: NtReadFileScatter+77↑j
                                        ; NtReadFileScatter+16A↑j ...
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

loc_1406FE145:                          ; CODE XREF: NtReadFileScatter+180↑j
                                        ; DATA XREF: .rdata:0000000140081F40↑o
;   __try { // __except at loc_1406FDD0A
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406FE14B:                          ; CODE XREF: NtReadFileScatter+267↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406FE150:                          ; CODE XREF: NtReadFileScatter+277↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406FE155:                          ; CODE XREF: NtReadFileScatter+2F0↑j
                mov     ecx, 0C000000Dh
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 20h
;   } // starts at 1406FE145

loc_1406FE160:                          ; CODE XREF: NtReadFileScatter+64C↑j
                                        ; DATA XREF: .rdata:0000000140081F40↑o ...
;   __try { // __except at loc_1406FE064
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1406FE160
byte_1406FE16B  db 0CCh                 ; DATA XREF: .rdata:0000000140081F50↑o
; } // starts at 1406FD9E0
NtReadFileScatter endp

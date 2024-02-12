NtLockFile      proc near               ; DATA XREF: .pdata:0000000140104970↑o
                                        ; PAGE:000000014098AC18↓o

var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_88          = byte ptr -88h
var_87          = byte ptr -87h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_44          = byte ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h
arg_40          = byte ptr  48h
arg_48          = byte ptr  50h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+20h], r9
                mov     [r11+18h], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0B0h
                mov     r15, r9
                mov     rsi, rdx
                xor     edi, edi
                mov     [r11-80h], rdi
                mov     [r11-78h], rdi
                mov     [r11-60h], rdi
                mov     [r11-58h], rdi
                mov     [r11-48h], rdi
                mov     rax, gs:188h
                mov     [rsp+0D8h+var_30], rax
                mov     r12b, [rax+232h]
                lea     rax, [r11-48h]
                mov     [rsp+0D8h+var_B8], rax
                lea     r9, [r11-80h]
                mov     r8b, r12b
                xor     edx, edx
                call    sub_1402433F0
                test    eax, eax
                js      loc_1406ECED5
                test    r12b, r12b
                jz      loc_1406ECA5C
                mov     r14b, 3
                test    [rsp+0D8h+var_44], r14b
                jnz     short loc_1406EC990
                mov     rcx, [rsp+0D8h+var_80]
                call    PsDereferenceSiloContext
                mov     eax, 0C0000022h
                jmp     loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406EC990:                          ; CODE XREF: NtLockFile+8A↑j
                                        ; DATA XREF: .rdata:000000014007D6F0↑o
;   __try { // __except at loc_1406ECA49
                mov     rcx, [rsp+0D8h+arg_20]
                mov     rbx, 7FFFFFFF0000h
                cmp     rcx, rbx
                cmovnb  rcx, rbx
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [rsp+0D8h+var_80]
                mov     r8b, [rax+50h]
                and     r8b, 2
                lea     rdx, [rsp+0D8h+arg_10]
                lea     rcx, [rsp+0D8h+arg_20]
                call    sub_140236180
                mov     rdx, [rsp+0D8h+arg_28]
                test    r14b, dl
                jnz     loc_1406ECEF3
                mov     rax, rbx
                cmp     rdx, rbx
                cmovb   rax, rdx
                mov     al, [rax]
                mov     rax, [rdx]
                mov     [rsp+0D8h+var_60], rax
                mov     rcx, [rsp+0D8h+arg_30]
                test    r14b, cl
                jnz     loc_1406ECEF8
                cmp     rcx, rbx
                cmovb   rbx, rcx
                mov     al, [rbx]
                mov     rax, [rcx]
                mov     [rsp+0D8h+var_58], rax
                mov     rbx, [rsp+0D8h+var_80]
                cmp     [rbx+0B0h], rdi
                jz      short loc_1406ECA47
                test    [rsp+0D8h+arg_10], 0FFFFFFFFFFFFFFFEh
                jz      short loc_1406ECA47
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406ECA47:                          ; CODE XREF: NtLockFile+135↑j
                                        ; NtLockFile+143↑j
                jmp     short loc_1406ECA84
;   } // starts at 1406EC990
; ---------------------------------------------------------------------------

loc_1406ECA49:                          ; DATA XREF: .rdata:000000014007D6F0↑o
                                        ; .rdata:000000014007D720↑o
;   __except(1) // owned by 1406EC990
;   __except(1) // owned by 1406ECEF3
                mov     ebx, eax
                mov     rcx, [rsp+0D8h+var_80]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406ECA5C:                          ; CODE XREF: NtLockFile+79↑j
                mov     rax, [rsp+0D8h+arg_28]
                mov     rcx, [rax]
                mov     [rsp+0D8h+var_60], rcx
                mov     rax, [rsp+0D8h+arg_30]
                mov     rcx, [rax]
                mov     [rsp+0D8h+var_58], rcx
                mov     rbx, [rsp+0D8h+var_80]

loc_1406ECA84:                          ; CODE XREF: NtLockFile:loc_1406ECA47↑j
                mov     byte ptr [rbx+48h], 1
                call    PsGetCurrentProcess
                mov     rdx, rax
                xor     r8d, r8d
                mov     rcx, rbx
                call    sub_140331088
                test    eax, eax
                js      loc_1406ECED5
                test    rsi, rsi
                jz      short loc_1406ECAEF
                mov     r8, cs:ExEventObjectType
                mov     [rsp+0D8h+var_40], rdi
                mov     [rsp+0D8h+var_B0], rdi
                lea     rax, [rsp+0D8h+var_40]
                mov     [rsp+0D8h+var_B8], rax
                mov     r9b, r12b
                mov     edx, 2
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+0D8h+var_40]
                mov     [rsp+0D8h+var_78], rcx
                test    eax, eax
                js      short loc_1406ECAEF
                call    KeResetEvent

loc_1406ECAEF:                          ; CODE XREF: NtLockFile+1B6↑j
                                        ; NtLockFile+1F8↑j
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                mov     r13, rax
                mov     rcx, [rax+8]
                mov     r14, [rcx+50h]
                test    r14, r14
                jz      loc_1406ECCDB
                mov     r14, [r14+30h]
                test    r14, r14
                jz      loc_1406ECCDB
                xorps   xmm0, xmm0
                movups  [rsp+0D8h+var_70], xmm0
                mov     ecx, cs:dword_140C2A6E0
                test    cl, 10h
                jz      short loc_1406ECB35
                call    sub_1409CBA9C
                mov     rsi, rax
                jmp     short loc_1406ECB38
; ---------------------------------------------------------------------------

loc_1406ECB35:                          ; CODE XREF: NtLockFile+239↑j
                mov     rsi, rdi

loc_1406ECB38:                          ; CODE XREF: NtLockFile+243↑j
                mov     r9, [rsp+0D8h+var_30]
                mov     r9, [r9+0B8h]
                mov     [rsp+0D8h+var_98], r13
                lea     rax, [rsp+0D8h+var_70]
                mov     [rsp+0D8h+var_A0], rax
                mov     al, [rsp+0D8h+arg_48]
                mov     byte ptr [rsp+0D8h+var_A8], al
                mov     al, [rsp+0D8h+arg_40]
                mov     byte ptr [rsp+0D8h+var_B0], al
                mov     eax, [rsp+0D8h+arg_38]
                mov     dword ptr [rsp+0D8h+var_B8], eax
                lea     r8, [rsp+0D8h+var_58]
                lea     rdx, [rsp+0D8h+var_60]
                mov     rcx, rbx
                mov     rax, r14
                call    sub_1404079D0
                mov     [rsp+0D8h+var_88], al
                test    rsi, rsi
                jz      short loc_1406ECBA7
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1409CB9C4
                mov     al, [rsp+0D8h+var_88]

loc_1406ECBA7:                          ; CODE XREF: NtLockFile+2A6↑j
                test    al, al
                jz      loc_1406ECCDB

loc_1406ECBAF:                          ; DATA XREF: .rdata:000000014007D700↑o
;   __try { // __except at loc_1406ECBE3
                test    byte ptr [rsp+0D8h+arg_10], 1
                jz      short loc_1406ECBD0
                mov     eax, dword ptr [rsp+0D8h+var_70+8]
                mov     rcx, [rsp+0D8h+arg_20]
                mov     [rcx+4], eax
                mov     eax, dword ptr [rsp+0D8h+var_70]
                mov     [rcx], eax
                jmp     short loc_1406ECBE1
; ---------------------------------------------------------------------------

loc_1406ECBD0:                          ; CODE XREF: NtLockFile+2C7↑j
                movups  xmm0, [rsp+0D8h+var_70]
                mov     rax, [rsp+0D8h+arg_20]
                movdqu  xmmword ptr [rax], xmm0

loc_1406ECBE1:                          ; CODE XREF: NtLockFile+2DE↑j
                jmp     short loc_1406ECBFC
;   } // starts at 1406ECBAF
; ---------------------------------------------------------------------------

loc_1406ECBE3:                          ; DATA XREF: .rdata:000000014007D700↑o
;   __except(1) // owned by 1406ECBAF
                mov     dword ptr [rsp+0D8h+var_70], eax
                and     qword ptr [rsp+0D8h+var_70+8], 0
                xor     edi, edi
                mov     rbx, [rsp+0D8h+var_80]
                mov     r15, [rsp+0D8h+arg_18]

loc_1406ECBFC:                          ; CODE XREF: NtLockFile:loc_1406ECBE1↑j
                mov     rcx, [rsp+0D8h+var_78]
                test    rcx, rcx
                jz      short loc_1406ECC23
                test    dword ptr [rbx+50h], 8000000h
                jnz     short loc_1406ECC19
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_1406ECC19:                          ; CODE XREF: NtLockFile+31D↑j
                mov     rcx, [rsp+0D8h+var_78]
                call    PsDereferenceSiloContext

loc_1406ECC23:                          ; CODE XREF: NtLockFile+314↑j
                cmp     [rbx+0B0h], rdi
                jz      loc_1406ECCCA
                test    r15, r15
                jz      loc_1406ECCCA
                test    dword ptr [rbx+50h], 2000000h
                jnz     loc_1406ECCCA
                mov     [rsp+0D8h+var_38], rdi
                mov     [rsp+0D8h+var_50], rdi
                mov     [rsp+0D8h+var_87], dil
                lea     r9, [rsp+0D8h+var_50]
                lea     r8, [rsp+0D8h+var_38]
                lea     rdx, [rsp+0D8h+var_87]
                mov     rcx, rbx
                call    sub_1403F12DC
                mov     rcx, [rsp+0D8h+var_38]
                test    rcx, rcx
                jz      short loc_1406ECCBB
                mov     byte ptr [rsp+0D8h+var_B0], 1
                mov     rax, qword ptr [rsp+0D8h+var_70+8]
                mov     [rsp+0D8h+var_B8], rax
                mov     r9d, dword ptr [rsp+0D8h+var_70]
                mov     r8, r15
                mov     rdx, [rsp+0D8h+var_50]
                call    IoSetIoCompletion
                mov     ecx, dword ptr [rsp+0D8h+var_70]
                mov     edx, 0C000009Ah
                test    eax, eax
                cmovs   ecx, edx
                mov     dword ptr [rsp+0D8h+var_70], ecx

loc_1406ECCBB:                          ; CODE XREF: NtLockFile+393↑j
                cmp     [rsp+0D8h+var_87], dil
                jz      short loc_1406ECCCA
                mov     rcx, rbx
                call    sub_1403F1214

loc_1406ECCCA:                          ; CODE XREF: NtLockFile+33A↑j
                                        ; NtLockFile+343↑j ...
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, dword ptr [rsp+0D8h+var_70]
                jmp     loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406ECCDB:                          ; CODE XREF: NtLockFile+215↑j
                                        ; NtLockFile+222↑j ...
                mov     esi, [rbx+50h]
                test    sil, 2
                jz      loc_1406ECD8C
                shr     esi, 2
                and     sil, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+0D8h+var_80]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+0D8h+var_88], dil
                mov     ecx, 1
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_1406ECD40
                test    rax, rax
                jz      short loc_1406ECD2F
                or      byte ptr [rax+1Ah], 1

loc_1406ECD2F:                          ; CODE XREF: NtLockFile+439↑j
                mov     rbx, [rsp+0D8h+var_80]
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     esi, edi
                jmp     short loc_1406ECD62
; ---------------------------------------------------------------------------

loc_1406ECD40:                          ; CODE XREF: NtLockFile+434↑j
                lea     rcx, [rsp+0D8h+var_88]
                mov     [rsp+0D8h+var_B8], rcx
                mov     r9, rax
                mov     r8b, sil
                mov     dl, r12b
                mov     rbx, [rsp+0D8h+var_80]
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     esi, eax

loc_1406ECD62:                          ; CODE XREF: NtLockFile+44E↑j
                cmp     [rsp+0D8h+var_88], dil
                jz      short loc_1406ECD87
                mov     rcx, [rsp+0D8h+var_78]
                test    rcx, rcx
                jz      short loc_1406ECD78
                call    PsDereferenceSiloContext

loc_1406ECD78:                          ; CODE XREF: NtLockFile+481↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, esi
                jmp     loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406ECD87:                          ; CODE XREF: NtLockFile+477↑j
                mov     r15b, 1
                jmp     short loc_1406ECD8F
; ---------------------------------------------------------------------------

loc_1406ECD8C:                          ; CODE XREF: NtLockFile+3F2↑j
                mov     r15b, dil

loc_1406ECD8F:                          ; CODE XREF: NtLockFile+49A↑j
                mov     rcx, rbx
                call    sub_1402360C0
                mov     r9, [rsp+0D8h]
                mov     r8b, r15b
                xor     r8b, 1
                mov     dl, [r13+4Ch]
                mov     rcx, r13
                call    sub_140235D20
                mov     r14, rax
                mov     [rsp+0D8h+var_50], rax
                test    rax, rax
                jnz     short loc_1406ECDD9
                mov     rdx, [rsp+0D8h+var_78]
                mov     rcx, rbx
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406ECDD9:                          ; CODE XREF: NtLockFile+4D0↑j
                mov     [rax+0C0h], rbx
                mov     rax, [rsp+0D8h+var_30]
                mov     [r14+98h], rax
                mov     [r14+40h], r12b
                mov     rax, [rsp+0D8h+var_78]
                mov     [r14+50h], rax
                mov     rax, [rsp+0D8h+arg_20]
                mov     [r14+48h], rax
                mov     rax, [rsp+0D8h+arg_10]
                mov     [r14+58h], rax
                mov     rax, [rsp+0D8h+arg_18]
                mov     [r14+60h], rax
                mov     rsi, [r14+0B8h]
                mov     word ptr [rsi-48h], 111h
                mov     [rsi-18h], rbx
                mov     [rsi-46h], dil
                mov     al, dil
                cmp     [rsp+0D8h+arg_40], dil
                jz      short loc_1406ECE48
                mov     byte ptr [rsi-46h], 1
                mov     al, 1

loc_1406ECE48:                          ; CODE XREF: NtLockFile+550↑j
                cmp     [rsp+0D8h+arg_48], dil
                jz      short loc_1406ECE57
                or      al, 2
                mov     [rsi-46h], al

loc_1406ECE57:                          ; CODE XREF: NtLockFile+560↑j
                mov     eax, [rsp+0D8h+arg_38]
                mov     [rsi-38h], eax
                mov     rax, [rsp+0D8h+var_60]
                mov     [rsi-30h], rax

loc_1406ECE6A:                          ; DATA XREF: .rdata:000000014007D710↑o
;   __try { // __except at loc_1406ECEAA
                call    sub_140508900
                mov     rcx, [rsp+0D8h+var_58]
                mov     [rax], rcx
                mov     [r14+0A0h], rax
                mov     [rsi-40h], rax
;   } // starts at 1406ECE6A

loc_1406ECE85:                          ; DATA XREF: .rdata:000000014007D710↑o
                mov     [rsp+0D8h+var_A8], 2
                mov     byte ptr [rsp+0D8h+var_B0], r15b
                mov     byte ptr [rsp+0D8h+var_B8], r12b
                xor     r9d, r9d
                mov     r8, rbx
                mov     rdx, r14
                mov     rcx, r13
                call    sub_140643F60
                jmp     short loc_1406ECED5
; ---------------------------------------------------------------------------

loc_1406ECEAA:                          ; DATA XREF: .rdata:000000014007D710↑o
;   __except(1) // owned by 1406ECE6A
                mov     ebx, eax
                mov     rcx, [rsp+0D8h+var_80]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0D8h+var_B8], dl
                xor     r9d, r9d
                mov     r8, [rsp+0D8h+var_78]
                mov     rdx, [rsp+0D8h+var_50]
                call    sub_1405CD328
                mov     eax, ebx

loc_1406ECED5:                          ; CODE XREF: NtLockFile+70↑j
                                        ; NtLockFile+9B↑j ...
                lea     r11, [rsp+0D8h+var_28]
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
; ---------------------------------------------------------------------------

loc_1406ECEF3:                          ; CODE XREF: NtLockFile+EA↑j
                                        ; DATA XREF: .rdata:000000014007D720↑o
;   __try { // __except at loc_1406ECA49
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406ECEF8:                          ; CODE XREF: NtLockFile+10F↑j
                call    ExRaiseDatatypeMisalignment
NtLockFile      endp

; ---------------------------------------------------------------------------
                align 2
;   } // starts at 1406ECEF3
byte_1406ECEFE  db 0CCh                 ; DATA XREF: .rdata:000000014007D720↑o
; } // starts at 1406EC8F0
byte_1406ECEFF  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140104970↑o

; =============== S U B R O U T I N E =======================================


sub_1406ECF08   proc near               ; CODE XREF: sub_140641060+1EF↑p
                                        ; DATA XREF: .pdata:000000014010497C↑o

arg_8           = qword ptr  10h

                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                lea     rdx, [rsp+28h+arg_8]
                xor     r8d, r8d
                mov     rdi, rcx
                call    sub_14033148C
                cmp     [rsp+28h+arg_8], 0
                jnz     short loc_1406ECF33

loc_1406ECF2C:                          ; CODE XREF: sub_1406ECF08+47↓j
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ECF33:                          ; CODE XREF: sub_1406ECF08+22↑j
                mov     rdx, [rsp+28h+arg_8]
                xor     r8d, r8d
                mov     rcx, rdi
                call    sub_1403314FC
                mov     rcx, [rsp+28h+arg_8]
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406ECF2C
sub_1406ECF08   endp

; ---------------------------------------------------------------------------
algn_1406ECF51:                         ; DATA XREF: .pdata:000000014010497C↑o
                align 20h
; Exported entry 1551. NtDuplicateObject

; =============== S U B R O U T I N E =======================================



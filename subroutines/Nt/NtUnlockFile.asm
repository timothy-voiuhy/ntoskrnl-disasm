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



CcMdlRead       proc near               ; CODE XREF: FsRtlMdlReadDev+15C↓p
                                        ; DATA XREF: .rdata:000000014008150C↑o ...

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407E8433 SIZE 00000105 BYTES
; FUNCTION CHUNK AT 00000001408267EC SIZE 00000015 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
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
                sub     rsp, 0B0h
                mov     r15d, r8d
                mov     r14, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     [rsp+0E8h+var_88], rdx
                mov     [rsp+0E8h+var_98], r8d
                mov     [rsp+0E8h+var_A4], edx
                mov     [rsp+0E8h+var_90], rdx
                mov     [rsp+0E8h+var_9C], edx
                mov     rax, [rcx+28h]
                mov     r13, [rax+8]
                mov     [rsp+0E8h+var_70], r13
                mov     r12, [rcx+30h]
                mov     [rsp+0E8h+var_58], r12
                mov     [rsp+0E8h+var_50], r12
                test    dword ptr [r12], 20000h
                jnz     loc_1406FAADB

loc_1406FA8E6:                          ; CODE XREF: CcMdlRead+278↓j
                inc     dword ptr gs:8124h
                mov     rax, gs:188h
                mov     [rax+54Ch], edx
                mov     rbx, [r14]
                mov     [rsp+0E8h+var_78], rbx

loc_1406FA905:                          ; DATA XREF: .rdata:00000001400814F8↑o
;   __try { // __finally(loc_1407E8433)
                mov     [rsp+0E8h+var_80], rbx
                mov     esi, [rsp+0E8h+arg_10]

loc_1406FA911:                          ; CODE XREF: CcMdlRead+1B7↓j
                test    esi, esi
                jz      loc_1406FAA5D
                mov     [rsp+0E8h+var_A0], edx
                mov     dword ptr [rsp+0E8h+var_C0], edx
                mov     dword ptr [rsp+0E8h+var_C8], edx
                lea     r9, [rsp+0E8h+var_A0]
                lea     r8, [rsp+0E8h+var_90]
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_140273980
                mov     [rsp+0E8h+var_68], rax
                mov     ecx, [r13+98h]
                test    cl, 8
                jnz     short loc_1406FA991
                mov     ecx, [r12]
                shr     ecx, 12h
                and     ecx, 7
                and     [rsp+0E8h+var_B0], 0
                mov     [rsp+0E8h+var_B8], ecx
                mov     rcx, [rsp+0E8h+var_90]
                mov     [rsp+0E8h+var_C0], rcx
                lea     rax, [rsp+0E8h+var_9C]
                mov     [rsp+0E8h+var_C8], rax
                mov     r9b, 1
                mov     r8d, esi
                lea     rdx, [rsp+0E8h+var_78]
                mov     rcx, rdi
                call    sub_1402734A0
                mov     rax, [rsp+0E8h+var_68]

loc_1406FA991:                          ; CODE XREF: CcMdlRead+DC↑j
                mov     r12d, [rsp+0E8h+var_A0]
                cmp     r12d, esi
                cmova   r12d, esi
                mov     [rsp+0E8h+var_A0], r12d
                mov     ebx, r12d
                add     rbx, [rsp+0E8h+var_80]
                mov     [rsp+0E8h+var_80], rbx
                and     [rsp+0E8h+var_C8], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r12d
                mov     rcx, rax
                call    IoAllocateMdl
                mov     [rsp+0E8h+var_88], rax
                test    rax, rax
                jz      short loc_1406FAA46
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rax
                call    MmProbeAndLockPages
                mov     rcx, [rsp+0E8h+var_90]
                call    sub_140273460
                xor     edx, edx
                mov     [rsp+0E8h+var_90], rdx
                mov     r9, [rsp+0E8h+arg_18]
                mov     rax, [r9]
                test    rax, rax
                jnz     short loc_1406FAA2C
                mov     rcx, [rsp+0E8h+var_88]
                mov     [r9], rcx

loc_1406FAA06:                          ; CODE XREF: CcMdlRead+1D4↓j
                mov     [rsp+0E8h+var_88], rdx
                mov     [rsp+0E8h+var_78], rbx
                add     [rsp+0E8h+var_A4], r12d
                sub     esi, r12d
                mov     [rsp+0E8h+arg_10], esi
                mov     r12, [rsp+0E8h+var_58]
                jmp     loc_1406FA911
; ---------------------------------------------------------------------------

loc_1406FAA2C:                          ; CODE XREF: CcMdlRead+18C↑j
                mov     [rsp+0E8h+var_60], rax

loc_1406FAA34:                          ; CODE XREF: CcMdlRead+1EB↓j
                mov     rcx, [rax]
                test    rcx, rcx
                jnz     short loc_1406FAA50
                mov     rcx, [rsp+0E8h+var_88]
                mov     [rax], rcx
                jmp     short loc_1406FAA06
; ---------------------------------------------------------------------------

loc_1406FAA46:                          ; CODE XREF: CcMdlRead+15E↑j
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_1406FAA50:                          ; CODE XREF: CcMdlRead+1CA↑j
                mov     rax, rcx
                mov     [rsp+0E8h+var_60], rcx
                jmp     short loc_1406FAA34
;   } // starts at 1406FA905
; ---------------------------------------------------------------------------

loc_1406FAA5D:                          ; CODE XREF: CcMdlRead+A3↑j
                                        ; DATA XREF: .rdata:00000001400814F8↑o
                mov     rax, gs:188h
                mov     ecx, [rax+54Ch]
                add     gs:8160h, ecx
                test    dword ptr [r12], 20000h
                jnz     short loc_1406FAA84
                cmp     [rsp+0E8h+var_9C], edx
                jnz     short loc_1406FAAC8

loc_1406FAA84:                          ; CODE XREF: CcMdlRead+20C↑j
                                        ; CcMdlRead+269↓j
                mov     r8d, r15d
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1403459E4
                mov     eax, [r13+98h]
                test    al, 8
                jnz     loc_1408267EC

loc_1406FAAA1:                          ; CODE XREF: CcMdlRead+12BF8C↓j
                mov     rcx, [rsp+0E8h+arg_20]
                and     dword ptr [rcx], 0
                mov     eax, [rsp+0E8h+var_A4]
                mov     [rcx+8], rax
                add     rsp, 0B0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406FAAC8:                          ; CODE XREF: CcMdlRead+212↑j
                xor     r9d, r9d
                mov     r8d, r15d
                mov     rdx, r14
                mov     rcx, rdi
                call    CcScheduleReadAheadEx
                jmp     short loc_1406FAA84
; ---------------------------------------------------------------------------

loc_1406FAADB:                          ; CODE XREF: CcMdlRead+70↑j
                xor     r9d, r9d
                mov     rdx, r14
                call    CcScheduleReadAheadEx
                xor     edx, edx
                jmp     loc_1406FA8E6
; } // starts at 1406FA870
CcMdlRead       endp

; ---------------------------------------------------------------------------
algn_1406FAAED:                         ; DATA XREF: .rdata:000000014008150C↑o
                                        ; .pdata:0000000140105198↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406FAB00   proc near               ; DATA XREF: .pdata:00000001401051A4↑o
                                        ; sub_140A3EC48+2A6↓o

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 60h
                cmp     rdx, cs:IoFileObjectType
                mov     bpl, r9b
                mov     r14, r8
                mov     rdi, rdx
                mov     rsi, rcx
                jnz     loc_1406FABE3
                mov     rbx, [rsp+68h+arg_38]
                test    rbx, rbx
                jz      loc_1406FABE3
                cmp     word ptr [rbx], 8
                jnz     loc_1406FABE3
                mov     eax, 0E0h
                cmp     [rbx+2], ax
                jnz     loc_1406FABE3
                call    IoGetRelatedDeviceObject
                mov     rcx, [rsp+68h+arg_50]
                mov     r9b, bpl
                mov     [rsp+68h+var_18], rcx
                mov     r8, r14
                mov     rcx, [rsp+68h+arg_48]
                mov     rdx, rdi
                mov     [rsp+68h+var_20], rcx
                mov     rcx, [rsp+68h+arg_40]
                mov     [rsp+68h+var_28], rcx
                mov     rcx, [rsp+68h+arg_30]
                mov     [rsp+68h+var_30], rbx
                mov     [rsp+68h+var_38], rcx
                mov     rcx, [rsp+68h+arg_28]
                mov     [rsp+68h+var_40], rcx
                mov     ecx, [rsp+68h+arg_20]
                mov     [rsp+68h+var_48], ecx
                mov     rcx, rax
                mov     [rbx+28h], rsi
                call    sub_140653C50

loc_1406FABC7:                          ; CODE XREF: sub_1406FAB00+E8↓j
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406FABE3:                          ; CODE XREF: sub_1406FAB00+2C↑j
                                        ; sub_1406FAB00+3D↑j ...
                mov     eax, 0C0000024h
                jmp     short loc_1406FABC7
sub_1406FAB00   endp

; ---------------------------------------------------------------------------
algn_1406FABEA:                         ; DATA XREF: .pdata:00000001401051A4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406FABF0   proc near               ; CODE XREF: sub_140249E90+639↑p
                                        ; sub_140249E90+1EA615↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140826802 SIZE 00000024 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rsp+28h+arg_20]
                mov     bpl, r9b
                mov     sil, r8b
                mov     dil, dl
                test    rbx, rbx
                jz      short loc_1406FAC87
                test    ecx, ecx
                jz      short loc_1406FAC87
                lea     eax, [rcx-1]
                mov     r8d, 72506553h
                lea     ecx, [rax+rax*2]
                lea     edx, ds:14h[rcx*4]
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     r8, rax
                test    rax, rax
                jz      short loc_1406FAC87
                and     dword ptr [rax], 0
                mov     r9d, 80000000h
                and     dword ptr [rax+4], 0
                xor     eax, eax
                test    dil, dil
                jnz     short loc_1406FAC9D

loc_1406FAC54:                          ; CODE XREF: sub_1406FABF0+CA↓j
                test    sil, sil
                jz      short loc_1406FAC7B
                lea     rcx, [rax+rax*2]
                mov     rax, cs:qword_140D2E740
                mov     [r8+rcx*4+8], rax
                mov     eax, [r8]
                lea     rcx, [rax+rax*2]
                mov     [r8+rcx*4+10h], r9d
                inc     dword ptr [r8]
                mov     eax, [r8]

loc_1406FAC7B:                          ; CODE XREF: sub_1406FABF0+67↑j
                test    bpl, bpl
                jnz     loc_140826802

loc_1406FAC84:                          ; CODE XREF: sub_1406FABF0+12BC31↓j
                mov     [rbx], r8

loc_1406FAC87:                          ; CODE XREF: sub_1406FABF0+25↑j
                                        ; sub_1406FABF0+29↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406FAC9D:                          ; CODE XREF: sub_1406FABF0+62↑j
                mov     rcx, cs:qword_140D2E708
                mov     [r8+8], rcx
                mov     ecx, [r8]
                lea     rdx, [rcx+rcx*2]
                mov     [r8+rdx*4+10h], r9d
                inc     dword ptr [r8]
                mov     eax, [r8]
                jmp     short loc_1406FAC54
sub_1406FABF0   endp

; ---------------------------------------------------------------------------
byte_1406FACBC  db 14h dup(0CCh)        ; DATA XREF: .rdata:00000001400815C8↑o
                                        ; .pdata:00000001401051B0↑o
; Exported entry 1627. NtSetSecurityObject

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h


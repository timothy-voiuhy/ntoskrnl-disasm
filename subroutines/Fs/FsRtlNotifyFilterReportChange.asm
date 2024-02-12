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

NtCreateEvent   proc near               ; CODE XREF: sub_1405DBB4C+159↑p
                                        ; sub_1405DC268+93↑p ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     [rsp+arg_18], r14
                push    r15
                sub     rsp, 60h
                mov     ebx, r9d
                mov     r14d, edx
                mov     rdi, rcx
                xor     r15d, r15d
                mov     [rsp+68h+var_18], r15
                mov     [rsp+68h+var_10], r15
                mov     rax, gs:188h
                movzx   esi, byte ptr [rax+232h]
                test    sil, sil
                jz      short loc_14061E2D4

loc_14061E2B5:                          ; DATA XREF: .rdata:000000014004E94C↑o
;   __try { // __except at loc_14061E2CF
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                jb      short loc_14061E2C7
                mov     rcx, rax

loc_14061E2C7:                          ; CODE XREF: NtCreateEvent+52↑j
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     short loc_14061E2D4
;   } // starts at 14061E2B5
; ---------------------------------------------------------------------------

loc_14061E2CF:                          ; DATA XREF: .rdata:000000014004E94C↑o
;   __except(1) // owned by 14061E2B5
                jmp     loc_14061E36C
; ---------------------------------------------------------------------------

loc_14061E2D4:                          ; CODE XREF: NtCreateEvent+43↑j
                                        ; NtCreateEvent+5D↑j
                cmp     ebx, 1
                ja      loc_14061E392
                mov     rdx, cs:ExEventObjectType
                mov     [rsp+68h+var_20], r15
                lea     rax, [rsp+68h+var_18]
                mov     [rsp+68h+var_28], rax
                mov     [rsp+68h+var_30], r15d
                mov     dword ptr [rsp+68h+var_38], r15d
                mov     dword ptr [rsp+68h+var_40], 18h
                movzx   r9d, sil
                movzx   ecx, sil
                call    sub_14061EDD0
                test    eax, eax
                js      short loc_14061E36C
                movzx   r8d, [rsp+68h+arg_20]
                mov     edx, ebx
                mov     rcx, [rsp+68h+var_18]
                call    KeInitializeEvent
                lea     rax, [rsp+68h+var_10]
                mov     [rsp+68h+var_38], rax
                mov     [rsp+68h+var_40], r15
                mov     [rsp+68h+var_48], r15d
                xor     r9d, r9d
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, [rsp+68h+var_18]
                call    sub_14061EFE0
                mov     dword ptr [rsp+68h+var_18], eax
                test    eax, eax
                js      short loc_14061E36C
                test    sil, sil
                jz      short loc_14061E388

loc_14061E35E:                          ; DATA XREF: .rdata:000000014004E95C↑o
;   __try { // __except at loc_14061E368
                mov     rcx, [rsp+68h+var_10]
                mov     [rdi], rcx
                jmp     short loc_14061E36C
;   } // starts at 14061E35E
; ---------------------------------------------------------------------------

loc_14061E368:                          ; DATA XREF: .rdata:000000014004E95C↑o
;   __except(1) // owned by 14061E35E
                mov     eax, dword ptr [rsp+68h+var_18]

loc_14061E36C:                          ; CODE XREF: NtCreateEvent:loc_14061E2CF↑j
                                        ; NtCreateEvent+A4↑j ...
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14061E388:                          ; CODE XREF: NtCreateEvent+EC↑j
                mov     rcx, [rsp+68h+var_10]
                mov     [rdi], rcx
                jmp     short loc_14061E36C
; ---------------------------------------------------------------------------

loc_14061E392:                          ; CODE XREF: NtCreateEvent+67↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14061E36C
; } // starts at 14061E270
NtCreateEvent   endp

; ---------------------------------------------------------------------------
algn_14061E399:                         ; DATA XREF: .pdata:00000001400FDAF4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14061E3A0   proc near               ; CODE XREF: sub_140311538+71↑p
                                        ; sub_140363AB4+12A↑p ...

var_C0          = dword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h
arg_38          = qword ptr  40h

                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                sub     rsp, 0C0h
                mov     r12d, [rsp+0E8h+arg_20]
                xor     esi, esi
                mov     [rsp+0E8h+var_98], rsi
                mov     r13d, r9d
                mov     [rsp+0E8h+arg_18], esi
                mov     rbx, rcx
                mov     edi, esi
                cmp     r9d, 2
                jnz     short loc_14061E3F7
                cmp     r12d, 3
                jbe     short loc_14061E3F7
                mov     eax, 0C00000A5h
                add     rsp, 0C0h
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061E3F7:                          ; CODE XREF: sub_14061E3A0+3A↑j
                                        ; sub_14061E3A0+40↑j
                                        ; DATA XREF: ...
                mov     [rsp+0E8h+arg_0], rbp
                mov     edx, 30h ; '0'
                mov     [rsp+0E8h+var_30], r14
                mov     r8d, 74416553h
                mov     [rsp+0E8h+var_38], r15
                mov     r15d, 1
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      short loc_14061E479
                mov     [rax], esi
                add     rax, 8
                mov     [r14+18h], esi
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [r14+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                cmp     cs:dword_140D2D010, esi
                jz      short loc_14061E4A6
                mov     edx, 120h
                mov     r8d, 74416553h
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14061E4A6
                xor     edx, edx
                mov     rcx, r14

loc_14061E474:                          ; CODE XREF: sub_14061E3A0+13A↓j
                call    ExFreePoolWithTag

loc_14061E479:                          ; CODE XREF: sub_14061E3A0+8E↑j
                                        ; sub_14061E3A0+133↓j ...
                mov     eax, 0C000009Ah

loc_14061E47E:                          ; CODE XREF: sub_14061E3A0+1D5↓j
                                        ; sub_14061E3A0+5B6↓j ...
                mov     r14, [rsp+0E8h+var_30]
                mov     rbp, [rsp+0E8h+arg_0]
                mov     r15, [rsp+0E8h+var_38]
                add     rsp, 0C0h
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14061E4A5:                         ; DATA XREF: .pdata:00000001400FDB0C↑o
                                        ; .pdata:00000001400FDB18↑o
                align 2

loc_14061E4A6:                          ; CODE XREF: sub_14061E3A0+B2↑j
                                        ; sub_14061E3A0+CD↑j
                                        ; DATA XREF: ...
                mov     edx, 68h ; 'h'
                mov     ecx, 200h
                mov     r8d, 6C546553h
                call    ExAllocatePoolWithTag
                mov     rbp, rax
                test    rax, rax
                jnz     short loc_14061E4DC
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                cmp     cs:dword_140D2D010, esi
                jz      short loc_14061E479
                xor     edx, edx
                mov     rcx, rdi
                jmp     short loc_14061E474
; ---------------------------------------------------------------------------

loc_14061E4DC:                          ; CODE XREF: sub_14061E3A0+121↑j
                mov     edx, [rbx+84h]
                lea     r8, [rsp+0E8h+arg_18]
                mov     ecx, 490h
                call    sub_1402008C8
                mov     esi, eax
                test    eax, eax
                js      short loc_14061E54C
                mov     ecx, [rbx+88h]
                lea     rax, [rsp+0E8h+var_98]
                mov     rdx, cs:SeTokenObjectType
                mov     r8, [rsp+0E8h+arg_8]
                mov     [rsp+0E8h+var_A0], 0
                mov     [rsp+0E8h+var_A8], rax
                mov     eax, [rsp+0E8h+arg_18]
                mov     [rsp+0E8h+var_B0], eax
                mov     [rsp+0E8h+var_B8], ecx
                movzx   ecx, [rsp+0E8h+arg_28]
                movzx   r9d, cl
                mov     [rsp+0E8h+var_C0], eax
                call    sub_14061EDD0
                mov     esi, eax
                test    eax, eax
                jns     short loc_14061E57A

loc_14061E54C:                          ; CODE XREF: sub_14061E3A0+158↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                xor     edx, edx
                mov     rcx, rbp
                call    ExFreePoolWithTag
                cmp     cs:dword_140D2D010, 0
                jz      short loc_14061E573
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14061E573:                          ; CODE XREF: sub_14061E3A0+1C7↑j
                mov     eax, esi
                jmp     loc_14061E47E
; ---------------------------------------------------------------------------

loc_14061E57A:                          ; CODE XREF: sub_14061E3A0+1AA↑j
                mov     rcx, cs:qword_14003AFE0
                mov     rdx, [rsp+0E8h+var_98]
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                mov     rsi, [rsp+0E8h+var_98]
                add     rax, rcx
                mov     [rdx+10h], eax
                mov     rcx, rbp
                shr     rax, 20h
                mov     [rdx+14h], eax
                mov     byte ptr [rsi+0CCh], 0
                mov     [rsi+0C0h], r13d
                mov     [rsi+0C4h], r12d
                mov     [rsi+30h], rbp
                call    ExInitializeResourceLite
                mov     rax, [rbx+18h]
                xor     r13d, r13d
                mov     [rsi+18h], rax
                movups  xmm0, xmmword ptr [rbx]
                movups  xmmword ptr [rsi], xmm0
                mov     [rsi+8Ch], r13d
                mov     rax, [rbx+20h]
                mov     [rsi+20h], rax
                mov     rax, [rbx+28h]
                mov     [rsi+28h], rax
                mov     rax, [rbx+0E0h]
                mov     [rsi+0E0h], rax
                mov     [rsi+460h], r13
                mov     [rsi+468h], r13
                mov     [rsi+448h], r13
                mov     [rsi+478h], rdi
                mov     [rsi+78h], r13d
                mov     [rsi+488h], r13
                cmp     cs:dword_140D2D010, r13d
                jz      short loc_14061E664
                lea     rcx, [rdi+28h]
                xor     r8d, r8d
                mov     edi, 1Eh
                mov     edx, edi
                call    RtlWalkFrameChain
                mov     rcx, cr8
                cmp     cl, 2
                jnb     short loc_14061E664
                sub     edi, eax
                mov     ecx, eax
                mov     rax, [rsi+478h]
                mov     r8d, r15d
                add     rax, 28h ; '('
                mov     edx, edi
                lea     rcx, [rax+rcx*8]
                call    RtlWalkFrameChain

loc_14061E664:                          ; CODE XREF: sub_14061E3A0+289↑j
                                        ; sub_14061E3A0+2A5↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx+30h]
                movzx   edx, r15b
                call    ExAcquireResourceSharedLite
                mov     rax, [rbx+38h]
                mov     rdi, [rsp+0E8h+var_98]
                mov     [rdi+38h], rax
                lea     rcx, [rdi+80h]
                mov     eax, [rbx+88h]
                mov     [rdi+88h], eax
                mov     eax, [rbx+90h]
                mov     [rdi+90h], eax
                mov     eax, [rbx+80h]
                mov     [rcx], eax
                mov     eax, [rbx+84h]
                mov     [rdi+84h], eax
                mov     eax, [rbx+0C8h]
                and     eax, 0FFFFFBDFh
                mov     [rsp+0E8h+var_80], rcx
                mov     [rdi+0C8h], eax
                mov     ebp, [rbx+78h]
                cmp     [rsi+78h], ebp
                jz      short loc_14061E70A
                mov     [rsi+78h], ebp
                cmp     cs:dword_140D2D0E0, r13d
                jnz     short loc_14061E70A
                mov     rcx, [rsi+488h]
                test    rcx, rcx
                jz      short loc_14061E6FC
                call    PsDereferenceSiloContext

loc_14061E6FC:                          ; CODE XREF: sub_14061E3A0+355↑j
                mov     ecx, ebp
                call    sub_140201F98
                mov     [rsi+488h], rax

loc_14061E70A:                          ; CODE XREF: sub_14061E3A0+33D↑j
                                        ; sub_14061E3A0+349↑j
                mov     eax, [rbx+78h]
                xor     edx, edx
                mov     [rsi+78h], eax
                mov     r8d, 110h
                movups  xmm0, xmmword ptr [rbx+58h]
                movups  xmmword ptr [rdi+58h], xmm0
                movsd   xmm1, qword ptr [rbx+68h]
                movsd   qword ptr [rdi+68h], xmm1
                mov     eax, [rbx+70h]
                mov     [rdi+70h], eax
                movzx   eax, word ptr [rbx+74h]
                mov     [rdi+74h], ax
                movzx   eax, byte ptr [rbx+76h]
                mov     [rdi+76h], al
                mov     eax, [rbx+0D0h]
                mov     [rdi+0D0h], eax
                mov     eax, [rbx+0D4h]
                mov     [rdi+0D4h], eax
                lea     rax, [rdi+308h]
                movups  xmm0, xmmword ptr [rbx+40h]
                mov     [rsp+0E8h+var_90], rax
                movups  xmmword ptr [rdi+40h], xmm0
                movsd   xmm1, qword ptr [rbx+50h]
                movsd   qword ptr [rdi+50h], xmm1
                mov     [rax], r14
                lea     rax, [rdi+438h]
                mov     [rax], r13
                mov     [rsp+0E8h+var_70], rax
                lea     rax, [rdi+440h]
                mov     [rax], r13
                mov     [rsp+0E8h+var_68], rax
                lea     rax, [rdi+480h]
                mov     [rax], r13
                mov     [rsp+0E8h+var_60], rax
                lea     rax, [rdi+318h]
                mov     [rax], r13
                mov     [rsp+0E8h+var_50], rax
                lea     rax, [rdi+320h]
                mov     [rdi+310h], r13
                mov     [rsp+0E8h+var_40], rax
                mov     [rax], r13d
                lea     rax, [rdi+328h]
                mov     rcx, rax
                mov     [rsp+0E8h+var_48], rax
                call    memset
                lea     rax, [rdi+0B0h]
                mov     [rax], r13
                mov     [rsp+0E8h+var_78], rax
                lea     rax, [rdi+450h]
                mov     [rax], r13
                mov     [rdi+458h], r13
                lea     r13, [rdi+470h]
                mov     qword ptr [r13+0], 0
                cmp     byte ptr [rdi+76h], 2
                mov     [rsp+0E8h+var_58], rax
                jnz     short loc_14061E837
                movzx   edx, r15b
                lea     rcx, [rdi+58h]
                call    sub_14091E260

loc_14061E837:                          ; CODE XREF: sub_14061E3A0+488↑j
                mov     eax, [rbx+0C8h]
                test    al, 20h
                jnz     short loc_14061E870
                mov     rcx, [rbx+0D8h]
                mov     rax, r15
                mov     [rdi+0D8h], rcx
                lock xadd [rcx+18h], rax
                inc     rax
                cmp     rax, r15
                jg      short loc_14061E867
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14061E867:                          ; CODE XREF: sub_14061E3A0+4BE↑j
                mov     rdi, [rsp+0E8h+var_98]
                xor     ebp, ebp
                jmp     short loc_14061E8A0
; ---------------------------------------------------------------------------

loc_14061E870:                          ; CODE XREF: sub_14061E3A0+49F↑j
                lea     rdx, [rdi+0D8h]
                lea     rcx, [rbx+18h]
                call    sub_1406B76F4
                mov     ebp, eax
                test    eax, eax
                jns     short loc_14061E898
                or      dword ptr [rdi+0C8h], 20h
                mov     qword ptr [rdi+0D8h], 0

loc_14061E898:                          ; CODE XREF: sub_14061E3A0+4E4↑j
                test    ebp, ebp
                js      loc_14061E93E

loc_14061E8A0:                          ; CODE XREF: sub_14061E3A0+4CE↑j
                mov     rax, [rbx+470h]
                test    rax, rax
                jz      short loc_14061E8BB
                mov     rcx, rax
                call    sub_14021B674
                mov     rax, [rbx+470h]

loc_14061E8BB:                          ; CODE XREF: sub_14061E3A0+50A↑j
                mov     [r13+0], rax
                mov     rcx, [rbx+308h]
                cmp     dword ptr [rcx], 0
                jz      short loc_14061E8E7
                mov     rdx, [rsp+0E8h+var_90]
                movzx   r8d, [rsp+0E8h+arg_30]
                mov     rdx, [rdx]
                call    sub_14021B6A0
                mov     ebp, eax
                test    eax, eax
                js      short loc_14061E93E

loc_14061E8E7:                          ; CODE XREF: sub_14061E3A0+529↑j
                mov     r8d, [rbx+84h]
                lea     rdx, [rbx+490h]
                lea     rcx, [rdi+490h]
                call    memmove
                mov     r14, rdi
                lea     r13, [rdi+98h]
                sub     r14, rbx
                cmp     cs:byte_140C543A0, 0
                jz      short loc_14061E95B
                mov     rcx, [rbx+98h]
                mov     rdx, rdi
                add     rcx, r14
                mov     [r13+0], rcx
                mov     rcx, rbx
                call    sub_14092477C
                mov     ebp, eax
                test    eax, eax
                jns     short loc_14061E98C
                mov     qword ptr [r13+0], 0

loc_14061E93E:                          ; CODE XREF: sub_14061E3A0+4FA↑j
                                        ; sub_14061E3A0+545↑j ...
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_14061E94C:                          ; CODE XREF: sub_14061E3A0+84B↓j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, ebp
                jmp     loc_14061E47E
; ---------------------------------------------------------------------------

loc_14061E95B:                          ; CODE XREF: sub_14061E3A0+575↑j
                mov     eax, [rbx+7Ch]
                mov     [rdi+7Ch], eax
                mov     rcx, [rbx+98h]
                add     rcx, r14
                mov     [r13+0], rcx
                mov     eax, [rdi+7Ch]
                test    eax, eax
                jz      short loc_14061E98C
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_14061E980:                          ; CODE XREF: sub_14061E3A0+5EA↓j
                add     [rcx], r14
                lea     rcx, [rcx+10h]
                add     eax, 0FFFFFFFFh
                jnz     short loc_14061E980

loc_14061E98C:                          ; CODE XREF: sub_14061E3A0+594↑j
                                        ; sub_14061E3A0+5D4↑j
                mov     rax, [rbx+0A0h]
                lea     rcx, [rdi+0A0h]
                mov     [rsp+0E8h+var_90], rcx
                mov     [rcx], rax
                test    rax, rax
                jz      short loc_14061E9CC
                add     rax, r14
                mov     [rcx], rax
                mov     rcx, [rsp+0E8h+var_80]
                mov     ecx, [rcx]
                test    ecx, ecx
                jz      short loc_14061E9CC
                nop     dword ptr [rax+rax+00000000h]

loc_14061E9C0:                          ; CODE XREF: sub_14061E3A0+62A↓j
                add     [rax], r14
                lea     rax, [rax+10h]
                add     ecx, 0FFFFFFFFh
                jnz     short loc_14061E9C0

loc_14061E9CC:                          ; CODE XREF: sub_14061E3A0+605↑j
                                        ; sub_14061E3A0+616↑j
                mov     rax, [rbx+0A8h]
                movzx   ecx, byte ptr [rax+1]
                mov     rax, [rbx+0B8h]
                lea     ecx, ds:8[rcx*4]
                test    rax, rax
                jz      short loc_14061E9F0
                movzx   eax, word ptr [rax+2]
                add     ecx, eax

loc_14061E9F0:                          ; CODE XREF: sub_14061E3A0+648↑j
                mov     r12d, ecx
                mov     r8d, 64546553h
                mov     edx, ecx
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     r14, rax
                mov     rax, [rsp+0E8h+var_78]
                mov     [rax], r14
                test    r14, r14
                jnz     short loc_14061EA2E
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                jmp     loc_14061E479
; ---------------------------------------------------------------------------

loc_14061EA2E:                          ; CODE XREF: sub_14061E3A0+671↑j
                mov     rdx, [rbx+0B0h]
                mov     r8, r12
                mov     rcx, r14
                call    memmove
                mov     rax, [rbx+0B8h]
                sub     r14, [rbx+0B0h]
                mov     [rdi+0B8h], rax
                test    rax, rax
                jz      short loc_14061EA64
                add     rax, r14
                mov     [rdi+0B8h], rax

loc_14061EA64:                          ; CODE XREF: sub_14061E3A0+6B8↑j
                mov     rcx, [rbx+0A8h]
                add     rcx, r14
                mov     [rdi+0A8h], rcx
                mov     r9d, [rbx+320h]
                test    r9d, r9d
                jz      short loc_14061EA99
                mov     r8, [rbx+318h]
                mov     rcx, rdi
                mov     rdx, [rbx+310h]
                call    sub_1406B8238
                mov     ebp, eax

loc_14061EA99:                          ; CODE XREF: sub_14061E3A0+6DF↑j
                test    ebp, ebp
                js      loc_14061E93E
                mov     rdx, [rbx+310h]
                test    rdx, rdx
                jz      short loc_14061EAB7
                mov     rcx, rdi
                call    sub_1406D81B0
                mov     ebp, eax

loc_14061EAB7:                          ; CODE XREF: sub_14061E3A0+70B↑j
                test    ebp, ebp
                js      loc_14061E93E
                mov     rcx, [rbx+438h]
                test    rcx, rcx
                jz      short loc_14061EAF7
                mov     rax, r15
                lock xadd [rcx+18h], rax
                inc     rax
                cmp     rax, r15
                jg      short loc_14061EAE3
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14061EAE3:                          ; CODE XREF: sub_14061E3A0+73A↑j
                mov     rcx, [rsp+0E8h+var_70]
                mov     rax, [rbx+438h]
                mov     rdi, [rsp+0E8h+var_98]
                mov     [rcx], rax

loc_14061EAF7:                          ; CODE XREF: sub_14061E3A0+729↑j
                mov     rcx, [rbx+440h]
                test    rcx, rcx
                jz      short loc_14061EB32
                mov     rax, r15
                lock xadd [rcx+18h], rax
                inc     rax
                cmp     rax, r15
                jg      short loc_14061EB1B
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14061EB1B:                          ; CODE XREF: sub_14061E3A0+772↑j
                mov     rcx, [rsp+0E8h+var_68]
                mov     rax, [rbx+440h]
                mov     rdi, [rsp+0E8h+var_98]
                mov     [rcx], rax

loc_14061EB32:                          ; CODE XREF: sub_14061E3A0+761↑j
                mov     rdx, [rbx+480h]
                test    rdx, rdx
                jz      short loc_14061EB6D
                mov     rax, r15
                lock xadd [rdx+18h], rax
                inc     rax
                cmp     rax, r15
                jg      short loc_14061EB56
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14061EB56:                          ; CODE XREF: sub_14061E3A0+7AD↑j
                mov     rcx, [rsp+0E8h+var_60]
                mov     rax, [rbx+480h]
                mov     rdi, [rsp+0E8h+var_98]
                mov     [rcx], rax

loc_14061EB6D:                          ; CODE XREF: sub_14061E3A0+79C↑j
                cmp     qword ptr [rbx+448h], 0
                jz      short loc_14061EB8C
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14092693C
                mov     ebp, eax
                test    eax, eax
                js      loc_14061E93E

loc_14061EB8C:                          ; CODE XREF: sub_14061E3A0+7D5↑j
                mov     rcx, [rbx+450h]
                xor     r14d, r14d
                xor     ebp, ebp
                mov     [rsp+0E8h+var_88], r14
                test    rcx, rcx
                jz      short loc_14061EBB7
                lea     rdx, [rsp+0E8h+var_88]
                call    sub_14061C2E0
                mov     ebp, eax
                test    eax, eax
                js      short loc_14061EBDB
                mov     r14, [rsp+0E8h+var_88]

loc_14061EBB7:                          ; CODE XREF: sub_14061E3A0+800↑j
                mov     r12, [rsp+0E8h+var_58]
                mov     rcx, [r12]
                test    rcx, rcx
                jz      short loc_14061EBD7
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     qword ptr [r12], 0

loc_14061EBD7:                          ; CODE XREF: sub_14061E3A0+826↑j
                mov     [r12], r14

loc_14061EBDB:                          ; CODE XREF: sub_14061E3A0+810↑j
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                test    ebp, ebp
                js      loc_14061E94C
                cmp     cs:dword_140D2D010, 0
                jz      loc_14061ECB2
                mov     rax, gs:188h
                mov     rcx, [rsi+478h]
                mov     rax, [rax+478h]
                mov     [rcx], rax
                mov     rax, gs:188h
                mov     rcx, [rsi+478h]
                mov     rax, [rax+480h]
                mov     [rcx+8], rax
                mov     rax, [rsi+478h]
                mov     dword ptr [rax+20h], 0Dh
                mov     rax, [rsi+478h]
                mov     dword ptr [rax+118h], 0
                mov     rax, [rsi+478h]
                mov     dword ptr [rax+11Ch], 0
                mov     rax, gs:188h
                mov     rdx, [rsi+478h]
                mov     rdi, [rsp+0E8h+var_98]
                mov     rcx, [rax+0B8h]
                movsd   xmm0, qword ptr [rcx+5A8h]
                movsd   qword ptr [rdx+10h], xmm0
                mov     eax, [rcx+5B0h]
                mov     [rdx+18h], eax
                movzx   eax, word ptr [rcx+5B4h]
                mov     [rdx+1Ch], ax
                movzx   eax, byte ptr [rcx+5B6h]
                mov     rcx, rdi
                mov     [rdx+1Eh], al
                call    sub_140924D90

loc_14061ECB2:                          ; CODE XREF: sub_14061E3A0+858↑j
                cmp     [rsp+0E8h+arg_10], 0
                jz      short loc_14061ECC4
                mov     rcx, rdi
                call    sub_1406F9E98

loc_14061ECC4:                          ; CODE XREF: sub_14061E3A0+91A↑j
                mov     edx, [rdi+7Ch]
                lea     r8, [rdi+0E8h]
                mov     rcx, [r13+0]
                call    RtlSidHashInitialize
                mov     rax, [rsp+0E8h+var_80]
                lea     r8, [rdi+1F8h]
                mov     rcx, [rsp+0E8h+var_90]
                mov     edx, [rax]
                mov     rcx, [rcx]
                call    RtlSidHashInitialize
                mov     rax, [rsp+0E8h+var_50]
                mov     rcx, [rax]
                test    rcx, rcx
                jz      short loc_14061ED19
                mov     rax, [rsp+0E8h+var_40]
                mov     r8, [rsp+0E8h+var_48]
                mov     edx, [rax]
                call    RtlSidHashInitialize

loc_14061ED19:                          ; CODE XREF: sub_14061E3A0+960↑j
                cmp     cs:dword_140D2D010, 0
                jz      loc_14061EDAA
                cmp     cs:dword_140CF9F60, 0Dh
                jnz     short loc_14061EDAA
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, cs:qword_140CF9F50
                cmp     [rcx+440h], rax
                jnz     short loc_14061EDA5
                lock xadd cs:dword_140CF9F58, r15d
                mov     rax, [rsi+478h]
                inc     r15d
                mov     [rax+118h], r15d
                mov     rax, [rsi+478h]
                mov     edx, [rax+118h]
                cmp     edx, cs:dword_140CF9F5C
                jl      short loc_14061EDA5
                mov     rdi, [rsp+0E8h+var_98]
                lea     rcx, aTokenNumber0xX_0 ; "\nToken number 0x%x = 0x%p\n"
                mov     r8, rdi
                call    DbgPrint
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------
                mov     rax, [rsp+0E8h+arg_38]
                mov     [rax], rdi
                mov     eax, ebp
                jmp     loc_14061E47E
; ---------------------------------------------------------------------------

loc_14061EDA5:                          ; CODE XREF: sub_14061E3A0+9AD↑j
                                        ; sub_14061E3A0+9DC↑j
                mov     rdi, [rsp+0E8h+var_98]

loc_14061EDAA:                          ; CODE XREF: sub_14061E3A0+980↑j
                                        ; sub_14061E3A0+98D↑j
                mov     rax, [rsp+0E8h+arg_38]
                mov     [rax], rdi
                mov     eax, ebp
                jmp     loc_14061E47E
sub_14061E3A0   endp

; ---------------------------------------------------------------------------
byte_14061EDBC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400FDB24↑o

; =============== S U B R O U T I N E =======================================


sub_14061EDD0   proc near               ; CODE XREF: sub_14060BD48+91↑p
                                        ; sub_14061D820+116↑p ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 00000001407FEA52 SIZE 000000C6 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rbp, gs:20h
                movzx   r12d, cl
                xorps   xmm0, xmm0
                xor     r13d, r13d
                movzx   r14d, r9b
                mov     [rax+28h], r13
                mov     r15, r8
                mov     rdi, rdx
                mov     rsi, [rbp+840h]
                mov     rcx, rsi
                movups  xmmword ptr [rax-38h], xmm0
                inc     dword ptr [rsi+14h]
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jz      loc_14061EF1B

loc_14061EE2F:                          ; CODE XREF: sub_14061EDD0+166↓j
                                        ; sub_14061EDD0+188↓j
                mov     eax, [rbp+24h]
                lea     r9, [rsp+78h+var_38]
                mov     dword ptr [rsp+78h+var_50], r13d
                mov     r8, r15
                movzx   edx, r14b
                mov     [rbx], eax
                movzx   ecx, r12b
                mov     [rsp+78h+var_58], rbx
                call    sub_1406521E0
                mov     esi, eax
                test    eax, eax
                js      loc_1407FEA5C
                mov     ecx, [rbx]
                test    [rdi+48h], ecx
                jnz     loc_1407FEAB9
                test    cl, 10h
                jnz     loc_14061EF63

loc_14061EE71:                          ; CODE XREF: sub_14061EDD0+1A5↓j
                mov     eax, [rsp+78h+arg_30]
                test    eax, eax
                jnz     short loc_14061EE7F
                mov     eax, [rdi+68h]

loc_14061EE7F:                          ; CODE XREF: sub_14061EDD0+AA↑j
                mov     ecx, [rsp+78h+arg_38]
                test    ecx, ecx
                jnz     short loc_14061EE8D
                mov     ecx, [rdi+6Ch]

loc_14061EE8D:                          ; CODE XREF: sub_14061EDD0+B8↑j
                mov     [rbx+14h], eax
                lea     r9, [rsp+78h+var_38]
                mov     rax, [rsp+78h+arg_48]
                mov     r8, rdi
                mov     [rsp+78h+var_48], rax
                movzx   edx, r14b
                lea     rax, [rsp+78h+arg_20]
                mov     [rbx+18h], ecx
                mov     [rsp+78h+var_50], rax
                mov     rcx, rbx
                mov     eax, [rsp+78h+arg_28]
                mov     dword ptr [rsp+78h+var_58], eax
                call    sub_1406444C0
                mov     edi, eax
                test    eax, eax
                js      loc_14061EF80
                cmp     cs:dword_140CFB010, r13d
                mov     rbx, [rsp+78h+arg_20]
                jnz     loc_1407FEAF2

loc_14061EEEB:                          ; CODE XREF: sub_14061EDD0+1DFD43↓j
                mov     rax, [rsp+78h+arg_40]
                lea     rcx, [rbx+30h]
                mov     [rax], rcx

loc_14061EEFA:                          ; CODE XREF: sub_14061EDD0+202↓j
                                        ; sub_14061EDD0+1DFD1D↓j
                mov     eax, edi

loc_14061EEFC:                          ; CODE XREF: sub_14061EDD0+1DFC87↓j
                                        ; sub_14061EDD0+1DFCE4↓j
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
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

loc_14061EF1B:                          ; CODE XREF: sub_14061EDD0+59↑j
                inc     dword ptr [rsi+18h]
                mov     rsi, [rbp+848h]
                mov     rcx, rsi
                inc     dword ptr [rsi+14h]
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jnz     loc_14061EE2F
                mov     edx, [rsi+2Ch]
                mov     rax, [rsi+30h]
                mov     r8d, [rsi+28h]
                mov     ecx, [rsi+24h]
                inc     dword ptr [rsi+18h]
                call    sub_1404079D0
                mov     rbx, rax
                test    rax, rax
                jnz     loc_14061EE2F
                jmp     loc_1407FEA52
; ---------------------------------------------------------------------------

loc_14061EF63:                          ; CODE XREF: sub_14061EDD0+9B↑j
                mov     rcx, cs:qword_140D2E7C8
                movzx   edx, r12b
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     loc_14061EE71
                mov     edi, 0C0000061h

loc_14061EF80:                          ; CODE XREF: sub_14061EDD0+100↑j
                                        ; sub_14061EDD0+1DFCEE↓j
                cmp     [rsp+78h+var_30], r13
                jz      short loc_14061EF91
                lea     rcx, [rsp+78h+var_38]
                call    sub_140625EB8

loc_14061EF91:                          ; CODE XREF: sub_14061EDD0+1B5↑j
                mov     rcx, [rbx+20h]
                test    rcx, rcx
                jz      short loc_14061EFAA
                movzx   edx, byte ptr [rbx+10h]
                mov     r8b, 1
                call    SeReleaseSecurityDescriptor
                mov     [rbx+20h], r13

loc_14061EFAA:                          ; CODE XREF: sub_14061EDD0+1C8↑j
                mov     rdx, gs:20h
                mov     rcx, [rdx+840h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     loc_1407FEAC3

loc_14061EFCA:                          ; CODE XREF: sub_14061EDD0+1DFD07↓j
                mov     rdx, rbx
                call    ExpInterlockedPushEntrySList
                jmp     loc_14061EEFA
sub_14061EDD0   endp

; ---------------------------------------------------------------------------
algn_14061EFD7:                         ; DATA XREF: .rdata:000000014004EA18↑o
                                        ; .pdata:00000001400FDB30↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=180h

sub_14061EFE0   proc near               ; CODE XREF: sub_1405E4E90+2FE↑p
                                        ; sub_14060BD48+171↑p ...

var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_220         = byte ptr -220h
var_21C         = dword ptr -21Ch
var_218         = dword ptr -218h
var_214         = dword ptr -214h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = xmmword ptr -1E8h
var_1D8         = xmmword ptr -1D8h
var_1C0         = byte ptr -1C0h
var_120         = byte ptr -120h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-150h]
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+180h+var_40], rax
                mov     rax, [rbp+180h+arg_28]
                mov     rdi, rdx
                mov     r12, [rbp+180h+arg_30]
                mov     r14, rcx
                mov     [rsp+280h+var_21C], r8d
                lea     rcx, [rbp+180h+var_120]
                xor     edx, edx
                mov     [rbp+180h+var_1F0], rax
                mov     r8d, 0E0h
                mov     [rsp+280h+var_214], r9d
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+180h+var_1C0]
                mov     r8d, 0A0h
                call    memset
                mov     rsi, [r14-10h]
                lea     r15, [r14-30h]
                xor     r9d, r9d
                lea     r8, cs:140000000h
                mov     rax, r15
                mov     edx, r9d
                shr     rax, 8
                mov     ebx, r9d
                movzx   ecx, al
                movzx   eax, byte ptr [r15+18h]
                xor     rcx, rax
                mov     [rbp+180h+var_1F8], rdx
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                movzx   eax, byte ptr [r15+1Ah]
                mov     r13, ds:rva qword_140CFCE60[r8+rcx*8]
                test    al, 2
                jz      short loc_14061F0B9
                and     eax, 3
                mov     rcx, r15
                movzx   eax, byte ptr [rax+r8+0C25E20h]
                sub     rcx, rax
                jz      short loc_14061F0B9
                lea     rdx, [rcx+8]
                mov     [rbp+180h+var_1F8], rdx

loc_14061F0B9:                          ; CODE XREF: sub_14061EFE0+BB↑j
                                        ; sub_14061EFE0+CF↑j
                mov     rax, gs:188h
                test    byte ptr [r13+42h], 8
                movzx   r8d, byte ptr [rax+232h]
                mov     [rsp+280h+var_220], r8b
                jnz     loc_14061F1BA
                test    rdx, rdx
                jnz     loc_14061F1BA
                cmp     [rsi+20h], rbx
                jnz     loc_14061F1BA
                mov     [r15+20h], r9
                test    r12, r12
                jz      short loc_14061F138
                mov     rdx, [rbp+180h+var_1F0]
                mov     ecx, [rsp+280h+var_214]
                mov     [rsp+280h+var_230], r12
                inc     ecx
                mov     [rsp+280h+var_238], rdx
                mov     rdx, r14
                mov     dword ptr [rsp+280h+var_240], r9d
                mov     [rsp+280h+var_248], r9
                mov     byte ptr [rsp+280h+var_250], r8b
                mov     r8d, [rsp+280h+var_21C]
                mov     [r12], r9
                mov     eax, [rsi]
                mov     dword ptr [rsp+280h+var_258], eax
                mov     dword ptr [rsp+280h+var_260], ecx
                xor     ecx, ecx
                call    sub_14064A9E0
                mov     ebx, eax

loc_14061F138:                          ; CODE XREF: sub_14061EFE0+114↑j
                mov     rcx, [rsi+20h]
                test    rcx, rcx
                jz      short loc_14061F153
                movzx   edx, byte ptr [rsi+10h]
                mov     r8b, 1
                call    SeReleaseSecurityDescriptor
                xor     ecx, ecx
                mov     [rsi+20h], rcx

loc_14061F153:                          ; CODE XREF: sub_14061EFE0+15F↑j
                mov     rdx, gs:20h
                mov     rcx, [rdx+840h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_14061F1A3
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+848h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_14061F1A3
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, rsi
                call    sub_1404079D0
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_14061F590
; ---------------------------------------------------------------------------

loc_14061F1A3:                          ; CODE XREF: sub_14061EFE0+18D↑j
                                        ; sub_14061EFE0+1A3↑j
                mov     rdx, rsi
                call    ExpInterlockedPushEntrySList

loc_14061F1AB:                          ; CODE XREF: sub_14061EFE0+233↓j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_14061F590
; ---------------------------------------------------------------------------

loc_14061F1BA:                          ; CODE XREF: sub_14061EFE0+F4↑j
                                        ; sub_14061EFE0+FD↑j ...
                test    rdi, rdi
                jnz     short loc_14061F215
                mov     rax, gs:188h
                lea     r8, [rbp+180h+var_1E8]
                mov     rcx, gs:188h
                lea     rdi, [rbp+180h+var_1C0]
                xorps   xmm0, xmm0
                movups  [rbp+180h+var_1E8], xmm0
                mov     rdx, [rax+0B8h]
                movups  [rbp+180h+var_1D8], xmm0
                call    SeCaptureSubjectContextEx
                mov     r9d, [rsp+280h+var_21C]
                lea     rax, [r13+4Ch]
                lea     r8, [rbp+180h+var_120]
                mov     [rsp+280h+var_260], rax
                lea     rdx, [rbp+180h+var_1C0]
                lea     rcx, [rbp+180h+var_1E8]
                call    sub_14024C690
                mov     ebx, eax
                test    eax, eax
                js      short loc_14061F1AB

loc_14061F215:                          ; CODE XREF: sub_14061EFE0+1DD↑j
                mov     rbx, [rsi+20h]
                mov     [rdi+40h], rbx
                test    rbx, rbx
                jz      short loc_14061F24C
                mov     rcx, rbx
                call    RtlValidSecurityDescriptor
                test    al, al
                jz      loc_14061F350
                test    byte ptr [rbx+2], 10h
                jz      short loc_14061F24C
                test    dword ptr [rdi+14h], 1000000h
                jnz     short loc_14061F24C
                mov     rcx, rbx
                call    sub_140707E84
                or      [rdi+10h], eax

loc_14061F24C:                          ; CODE XREF: sub_14061EFE0+240↑j
                                        ; sub_14061EFE0+256↑j ...
                mov     rcx, [rbp+180h+var_1F8]
                mov     edx, 1
                test    rcx, rcx
                jnz     loc_14061F40F
                test    byte ptr [r13+42h], 8
                jnz     short loc_14061F26F
                cmp     [rsi+20h], rcx
                jz      loc_14061F40F

loc_14061F26F:                          ; CODE XREF: sub_14061EFE0+283↑j
                mov     r15d, [rbp+180h+arg_20]
                lea     r9, [rsp+280h+var_218]
                xor     eax, eax
                and     r15d, edx
                mov     rdx, [rdi+40h]
                xor     r8d, r8d
                mov     [rsp+280h+var_210], rax
                mov     rcx, r13
                mov     [rsp+280h+var_218], eax
                mov     [rbp+180h+var_200], rax
                mov     [rsp+280h+var_208], rax
                lea     rax, [rsp+280h+var_210]
                mov     [rsp+280h+var_260], rax
                shl     r15d, 4
                mov     dword ptr [rsp+280h+var_210], 8
                call    sub_14021BDB0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14061F327
                mov     ecx, [rsp+280h+var_218]
                mov     rdx, [rsp+280h+var_208]
                or      ecx, r15d
                cmp     r13, cs:qword_140C259E0
                setz    r8b
                test    rdx, rdx
                jnz     short loc_14061F2DD
                mov     rdx, [rdi+40h]

loc_14061F2DD:                          ; CODE XREF: sub_14061EFE0+2F7↑j
                lea     rax, [rdi+20h]
                xor     r9d, r9d
                lea     r15, [r13+4Ch]
                mov     [rsp+280h+var_240], r15
                mov     [rsp+280h+var_248], rax
                lea     rax, [rsp+280h+var_210]
                mov     [rsp+280h+var_250], rax
                mov     dword ptr [rsp+280h+var_258], ecx
                xor     ecx, ecx
                mov     byte ptr [rsp+280h+var_260], r8b
                lea     r8, [rbp+180h+var_200]
                call    sub_14021BC50
                mov     rcx, [rsp+280h+var_208]
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14061F37C
                test    rcx, rcx
                jz      short loc_14061F327
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14061F327:                          ; CODE XREF: sub_14061EFE0+2DB↑j
                                        ; sub_14061EFE0+33E↑j ...
                mov     rcx, r14
                call    PsDereferenceSiloContext
                lea     rax, [rbp+180h+var_1C0]
                cmp     rdi, rax
                jnz     short loc_14061F349
                mov     rcx, rdi
                call    sub_14024C4F0
                lea     rcx, [rdi+20h]
                call    SeReleaseSubjectContext

loc_14061F349:                          ; CODE XREF: sub_14061EFE0+356↑j
                mov     eax, ebx
                jmp     loc_14061F590
; ---------------------------------------------------------------------------

loc_14061F350:                          ; CODE XREF: sub_14061EFE0+24C↑j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                lea     rax, [rbp+180h+var_1C0]
                cmp     rdi, rax
                jnz     short loc_14061F372
                mov     rcx, rdi
                call    sub_14024C4F0
                lea     rcx, [rdi+20h]
                call    SeReleaseSubjectContext

loc_14061F372:                          ; CODE XREF: sub_14061EFE0+37F↑j
                mov     eax, 0C0000079h
                jmp     loc_14061F590
; ---------------------------------------------------------------------------

loc_14061F37C:                          ; CODE XREF: sub_14061EFE0+339↑j
                test    rcx, rcx
                jz      short loc_14061F388
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14061F388:                          ; CODE XREF: sub_14061EFE0+39F↑j
                mov     rcx, gs:188h
                xor     r8d, r8d
                mov     rax, [r13+98h]
                mov     r9, [rbp+180h+var_200]
                movzx   edx, byte ptr [rcx+232h]
                xor     ecx, ecx
                mov     byte ptr [rsp+280h+var_240], dl
                mov     [rsp+280h+var_248], r15
                mov     dword ptr [rsp+280h+var_250], 1
                mov     [rsp+280h+var_258], rcx
                lea     edx, [rcx+3]
                mov     [rsp+280h+var_260], rcx
                mov     rcx, r14
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14061F3E2
                lea     rcx, [rbp+180h+var_200]
                call    SeDeassignSecurity
                jmp     loc_14061F327
; ---------------------------------------------------------------------------

loc_14061F3E2:                          ; CODE XREF: sub_14061EFE0+3F2↑j
                cmp     byte ptr [rsi+10h], 1
                mov     rcx, [rsi+20h]
                ja      short loc_14061F3F8
                test    rcx, rcx
                jz      short loc_14061F3F8
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14061F3F8:                          ; CODE XREF: sub_14061EFE0+40A↑j
                                        ; sub_14061EFE0+40F↑j
                mov     rcx, [rbp+180h+var_1F8]
                lea     r15, [r14-30h]
                xor     ebx, ebx
                mov     [rsi+20h], rbx
                mov     [rdi+40h], rbx
                lea     edx, [rbx+1]
                jmp     short loc_14061F411
; ---------------------------------------------------------------------------

loc_14061F40F:                          ; CODE XREF: sub_14061EFE0+278↑j
                                        ; sub_14061EFE0+289↑j
                xor     ebx, ebx

loc_14061F411:                          ; CODE XREF: sub_14061EFE0+42D↑j
                mov     [r15+20h], rbx
                test    r12, r12
                jz      short loc_14061F478
                mov     rdx, [rbp+180h+var_1F0]
                test    rcx, rcx
                mov     ecx, [rsp+280h+var_214]
                mov     rax, rbx
                cmovnz  rax, rsi
                mov     [rsp+280h+var_230], r12
                mov     [rsp+280h+var_238], rdx
                inc     ecx
                mov     dword ptr [rsp+280h+var_240], ebx
                mov     r9, rdi
                mov     [rsp+280h+var_248], rax
                xor     r8d, r8d
                movzx   eax, [rsp+280h+var_220]
                mov     rdx, r14
                mov     byte ptr [rsp+280h+var_250], al
                mov     [r12], rbx
                mov     eax, [rsi]
                mov     dword ptr [rsp+280h+var_258], eax
                mov     dword ptr [rsp+280h+var_260], ecx
                xor     ecx, ecx
                call    sub_14064A9E0
                mov     rcx, r14
                mov     r15d, eax
                call    PsDereferenceSiloContext
                jmp     loc_14061F50F
; ---------------------------------------------------------------------------

loc_14061F478:                          ; CODE XREF: sub_14061EFE0+438↑j
                lea     rax, [rbp+180h+var_1C0]
                cmp     rdi, rax
                jz      short loc_14061F4B5
                test    dword ptr [rsi], 400h
                mov     r9, r14
                movzx   eax, [rsp+280h+var_220]
                mov     r8, r13
                cmovnz  eax, edx
                mov     rcx, rdi
                movzx   edx, al
                call    sub_140627364
                mov     r15d, eax
                test    eax, eax
                jns     short loc_14061F4B1
                mov     rcx, r14
                call    PsDereferenceSiloContext
                jmp     short loc_14061F50F
; ---------------------------------------------------------------------------

loc_14061F4B1:                          ; CODE XREF: sub_14061EFE0+4C5↑j
                lea     r15, [r14-30h]

loc_14061F4B5:                          ; CODE XREF: sub_14061EFE0+49F↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rbx, [r15+10h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, gs:188h
                xor     r8d, r8d
                mov     rcx, r15
                mov     rdx, [rax+0B8h]
                call    sub_140625618
                xor     edx, edx
                mov     rcx, rbx
                mov     r15d, eax
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                test    r15d, r15d
                jns     short loc_14061F50D
                mov     rcx, r14
                call    PsDereferenceSiloContext

loc_14061F50D:                          ; CODE XREF: sub_14061EFE0+523↑j
                xor     ebx, ebx

loc_14061F50F:                          ; CODE XREF: sub_14061EFE0+493↑j
                                        ; sub_14061EFE0+4CF↑j
                mov     rcx, [rsi+20h]
                test    rcx, rcx
                jz      short loc_14061F528
                movzx   edx, byte ptr [rsi+10h]
                mov     r8b, 1
                call    SeReleaseSecurityDescriptor
                mov     [rsi+20h], rbx

loc_14061F528:                          ; CODE XREF: sub_14061EFE0+536↑j
                mov     rdx, gs:20h
                mov     rcx, [rdx+840h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_14061F56B
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+848h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_14061F56B
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, rsi
                call    sub_1404079D0
                jmp     short loc_14061F573
; ---------------------------------------------------------------------------

loc_14061F56B:                          ; CODE XREF: sub_14061EFE0+562↑j
                                        ; sub_14061EFE0+578↑j
                mov     rdx, rsi
                call    ExpInterlockedPushEntrySList

loc_14061F573:                          ; CODE XREF: sub_14061EFE0+589↑j
                lea     rax, [rbp+180h+var_1C0]
                cmp     rdi, rax
                jnz     short loc_14061F58D
                mov     rcx, rdi
                call    sub_14024C4F0
                lea     rcx, [rdi+20h]
                call    SeReleaseSubjectContext

loc_14061F58D:                          ; CODE XREF: sub_14061EFE0+59A↑j
                mov     eax, r15d

loc_14061F590:                          ; CODE XREF: sub_14061EFE0+1BE↑j
                                        ; sub_14061EFE0+1D5↑j ...
                mov     rcx, [rbp+180h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+280h+arg_18]
                add     rsp, 250h
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
; } // starts at 14061EFE0
sub_14061EFE0   endp

byte_14061F5BB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400FDB3C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=230h

sub_14061F5D0   proc near               ; CODE XREF: sub_14021BC50+69↑p
                                        ; SeAssignSecurity+6D↑p ...

var_320         = qword ptr -320h
var_318         = qword ptr -318h
var_310         = qword ptr -310h
var_308         = qword ptr -308h
var_300         = qword ptr -300h
var_2F8         = qword ptr -2F8h
var_2F0         = qword ptr -2F0h
var_2E8         = dword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D8         = dword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = byte ptr -2B0h
var_2AF         = byte ptr -2AFh
var_2AE         = byte ptr -2AEh
var_2A8         = qword ptr -2A8h
var_2A0         = byte ptr -2A0h
var_298         = qword ptr -298h
var_290         = byte ptr -290h
var_28C         = dword ptr -28Ch
var_288         = qword ptr -288h
var_280         = byte ptr -280h
var_27F         = byte ptr -27Fh
var_27E         = byte ptr -27Eh
var_27D         = byte ptr -27Dh
var_27C         = byte ptr -27Ch
var_27B         = byte ptr -27Bh
var_27A         = byte ptr -27Ah
var_279         = byte ptr -279h
var_278         = byte ptr -278h
var_277         = byte ptr -277h
var_276         = byte ptr -276h
var_274         = dword ptr -274h
var_270         = qword ptr -270h
var_268         = byte ptr -268h
var_267         = byte ptr -267h
var_264         = dword ptr -264h
var_260         = dword ptr -260h
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = dword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = dword ptr -220h
var_21C         = dword ptr -21Ch
var_218         = dword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = dword ptr -1F0h
var_1EC         = dword ptr -1ECh
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = dword ptr -1B0h
var_1AC         = dword ptr -1ACh
var_1A8         = dword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = xmmword ptr -178h
var_168         = xmmword ptr -168h
var_158         = qword ptr -158h
var_150         = dword ptr -150h
var_14C         = word ptr -14Ch
var_148         = xmmword ptr -148h
var_138         = dword ptr -138h
var_130         = qword ptr -130h
var_128         = byte ptr -128h
var_B0          = byte ptr -0B0h
var_50          = qword ptr -50h
var_38          = qword ptr -38h
arg_20          = dword ptr  30h
arg_28          = byte ptr  38h
arg_30          = dword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h

; FUNCTION CHUNK AT 00000001407FEB18 SIZE 0000076D BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-200h]
                sub     rsp, 310h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+230h+var_50], rax
                mov     rax, [rbp+230h+arg_40]
                xor     r10d, r10d
                mov     rbx, [rbp+230h+arg_38]
                xorps   xmm0, xmm0
                mov     [rbp+230h+var_238], rax
                mov     r11, rdx
                mov     rax, [rbp+230h+arg_48]
                mov     edi, r10d
                mov     [rbp+230h+var_198], rax
                mov     rsi, rcx
                xor     eax, eax
                mov     [rbp+230h+var_180], r8
                mov     [rbp+230h+var_158], rax
                mov     r8d, 2000h
                mov     [rbp+230h+var_290], al
                mov     r14d, r10d
                mov     [rbp+230h+var_277], al
                mov     r15d, r10d
                mov     [rbp+230h+var_278], al
                mov     r12d, r10d
                mov     [rbp+230h+var_2B0], al
                mov     [rbp+230h+var_27F], al
                mov     [rbp+230h+var_280], al
                mov     [rbp+230h+var_268], al
                mov     [rbp+230h+var_267], al
                mov     [rbp+230h+var_27E], al
                mov     [rbp+230h+var_27B], al
                mov     [rbp+230h+var_279], al
                mov     [rbp+230h+var_138], eax
                lea     rax, [rbp+230h+var_130]
                mov     [rbp+230h+var_258], rdx
                mov     edx, [rbp+230h+arg_30]
                mov     [rbp+230h+var_1E0], r9
                mov     r9d, r10d
                mov     [rbp+230h+var_1D0], rax
                mov     [rbp+230h+var_210], rcx
                mov     [rbp+230h+var_228], rbx
                mov     [rbp+230h+var_270], r10
                mov     [rbp+230h+var_248], r10d
                mov     [rbp+230h+var_2A8], r10
                mov     [rbp+230h+var_1C0], r10
                mov     [rbp+230h+var_1D8], r10
                mov     [rbp+230h+var_1E8], r10
                mov     [rbp+230h+var_1A0], r10
                mov     [rbp+230h+var_230], r10
                mov     [rbp+230h+var_1F8], r10
                mov     [rbp+230h+var_1C8], r10
                mov     [rbp+230h+var_288], r10
                mov     [rbp+230h+var_2AF], 1
                mov     [rbp+230h+var_274], r10d
                mov     [rbp+230h+var_1A8], r10d
                mov     [rbp+230h+var_188], r10
                mov     [rbp+230h+var_200], r10
                mov     [rbp+230h+var_190], r10
                mov     [rbp+230h+var_208], r10
                mov     [rbp+230h+var_2A0], 1
                mov     [rbp+230h+var_1B8], r10
                mov     [rbp+230h+var_276], dil
                movups  [rbp+230h+var_178], xmm0
                movups  [rbp+230h+var_168], xmm0
                movups  [rbp+230h+var_148], xmm0
                test    r8d, edx
                jnz     short loc_14061F721
                mov     rax, gs:188h
                movzx   eax, byte ptr [rax+232h]
                mov     [rbp+230h+var_2AF], al

loc_14061F721:                          ; CODE XREF: sub_14061F5D0+13C↑j
                test    r11, r11
                jnz     loc_1406204BD
                lea     r11, [rbp+230h+var_178]
                mov     [rbp+230h+var_27C], dil
                mov     [rbp+230h+var_258], r11
                mov     byte ptr [rbp+230h+var_178], 1

loc_14061F740:                          ; CODE XREF: sub_14061F5D0+EF1↓j
                movzx   eax, word ptr [r11+2]
; } // starts at 14061F5D0

loc_14061F745:                          ; DATA XREF: .rdata:000000014004EA94↑o
                                        ; .rdata:000000014004EAA4↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+340h+var_38], r13
                test    al, al
                js      loc_1407FEB18
                xor     r13b, r13b

loc_14061F758:                          ; CODE XREF: sub_14061F5D0+1DF54B↓j
                mov     [rbp+230h+var_2AE], r13b
                test    al, 40h
                jnz     loc_1407FEB20
                mov     [rbp+230h+var_27A], dil

loc_14061F768:                          ; CODE XREF: sub_14061F5D0+1DF554↓j
                test    rbx, rbx
                jz      loc_1407FEB29

loc_14061F771:                          ; CODE XREF: sub_14061F5D0+1DF562↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx+10h]
                mov     dl, 1
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceSharedLite
                mov     rdx, [rbx]
                test    rdx, rdx
                jnz     loc_14062098D

loc_14061F79C:                          ; CODE XREF: sub_14061F5D0+13E1↓j
                mov     rdx, [rbx+10h]
                mov     rdi, rdx

loc_14061F7A3:                          ; CODE XREF: sub_14061F5D0+13F5↓j
                mov     rax, [rdx+98h]
                mov     ecx, [rdx+90h]
                mov     rbx, [rdx+0A8h]
                add     rcx, rcx
                mov     rsi, [rdx+0B8h]
                mov     r13, [rax+rcx*8]
                mov     rax, [rdi+98h]
                mov     ecx, [rdi+90h]
                mov     rdi, [rdi+0A8h]
                add     rcx, rcx
                mov     r12, [rax+rcx*8]
                mov     rcx, rdx
                call    sub_14021BD88
                test    rax, rax
                jz      loc_1407FEB37
                mov     r15, [rax]

loc_14061F7F4:                          ; CODE XREF: sub_14061F5D0+1DF56E↓j
                mov     rcx, [rbp+230h+var_228]
                call    sub_14021BD38
                xor     ecx, ecx
                mov     r14, rax
                test    rax, rax
                jnz     loc_1406206A5
                mov     edx, ecx

loc_14061F80D:                          ; CODE XREF: sub_14061F5D0+10E1↓j
                test    rbx, rbx
                jz      loc_1407FEB43
                movzx   eax, byte ptr [rbx+1]
                lea     r10, ds:8[rax*4]

loc_14061F822:                          ; CODE XREF: sub_14061F5D0+1DF576↓j
                test    rdi, rdi
                jz      loc_1407FEB4B
                movzx   eax, byte ptr [rdi+1]
                lea     r9, ds:20h[rax*4]

loc_14061F837:                          ; CODE XREF: sub_14061F5D0+1DF581↓j
                test    rsi, rsi
                jz      loc_1407FEB56
                movzx   r8d, word ptr [rsi+2]

loc_14061F845:                          ; CODE XREF: sub_14061F5D0+1DF589↓j
                movzx   eax, byte ptr [r13+1]
                movzx   ecx, byte ptr [r12+1]
                add     rcx, rax
                movzx   eax, byte ptr [r15+1]
                add     rcx, rax
                lea     rdx, [rdx+rcx*4]
                mov     ecx, 1
                add     rdx, r10
                add     rdx, r8
                mov     r8d, 64536553h
                add     rdx, r9
                call    ExAllocatePoolWithTag
                mov     [rbp+230h+var_1D8], rax
                test    rax, rax
                jz      loc_1407FF272
                movzx   r8d, byte ptr [r13+1]
                mov     rdx, r13
                mov     rcx, rax
                lea     r8, ds:8[r8*4]
                call    memmove
                movzx   eax, byte ptr [r13+1]
                mov     rdx, r15
                movzx   r8d, byte ptr [r15+1]
                mov     rcx, [rbp+230h+var_1D8]
                add     rcx, 8
                lea     r8, ds:8[r8*4]
                lea     r13, [rcx+rax*4]
                mov     rcx, r13
                mov     [rbp+230h+var_1E8], r13
                call    memmove
                movzx   eax, byte ptr [r15+1]
                lea     r15, ds:8[rax*4]
                add     r15, r13
                mov     [rbp+230h+var_230], r15
                test    r14, r14
                jnz     loc_14062066D
                xor     r13d, r13d
                mov     [rbp+230h+var_1A0], r13

loc_14061F8F1:                          ; CODE XREF: sub_14061F5D0+10D0↓j
                test    rbx, rbx
                jz      loc_1407FEB5E
                movzx   r8d, byte ptr [rbx+1]
                mov     rdx, rbx
                mov     rcx, r15
                mov     r14, r15
                lea     r8, ds:8[r8*4]
                call    memmove
                movzx   eax, byte ptr [rbx+1]
                lea     r15, [r15+rax*4]
                add     r15, 8
                mov     [rbp+230h+var_230], r15

loc_14061F925:                          ; CODE XREF: sub_14061F5D0+1DF591↓j
                movzx   r8d, byte ptr [r12+1]
                mov     rdx, r12
                mov     rcx, r15
                lea     r8, ds:8[r8*4]
                call    memmove
                movzx   ebx, byte ptr [r12+1]
                add     rbx, 2
                lea     rbx, [r15+rbx*4]
                mov     [rbp+230h+var_1C8], rbx
                test    rdi, rdi
                jz      loc_1407FEB66
                movzx   r8d, byte ptr [rdi+1]
                mov     rdx, rdi
                mov     rcx, rbx
                mov     [rbp+230h+var_1F8], rbx
                mov     r12, rbx
                lea     r8, ds:8[r8*4]
                call    memmove
                movzx   eax, byte ptr [rdi+1]
                lea     rbx, [rbx+rax*4]
                add     rbx, 8
                mov     [rbp+230h+var_1C8], rbx

loc_14061F988:                          ; CODE XREF: sub_14061F5D0+1DF59D↓j
                test    rsi, rsi
                jz      loc_1407FEB72
                movzx   r8d, word ptr [rsi+2]
                mov     rdx, rsi
                mov     rcx, rbx
                call    memmove

loc_14061F9A1:                          ; CODE XREF: sub_14061F5D0+1DF5A6↓j
                mov     rbx, [rbp+230h+var_228]
                mov     rcx, [rbx+10h]
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, [rbx]
                test    rcx, rcx
                jnz     loc_1406209CA

loc_14061F9C3:                          ; CODE XREF: sub_14061F5D0+1408↓j
                movzx   r13d, [rbp+230h+var_2AE]
                xor     r10d, r10d
                mov     rsi, [rbp+230h+var_210]
                mov     r8d, 2000h
                mov     r9, [rbp+230h+var_1D8]
                mov     edx, [rbp+230h+arg_30]
                mov     r11, [rbp+230h+var_258]
                mov     rdi, [rbp+230h+var_288]

loc_14061F9E7:                          ; CODE XREF: sub_14061F5D0+1DF55C↓j
                movzx   ecx, word ptr [r11+2]
                test    cx, cx
                js      loc_140620588
                mov     rax, [r11+8]

loc_14061F9F9:                          ; CODE XREF: sub_14061F5D0+FC7↓j
                mov     [rbp+230h+var_250], rax
                test    rax, rax
                jnz     loc_140620A40

loc_14061FA06:                          ; CODE XREF: sub_14061F5D0+FBE↓j
                test    dl, 20h
                jnz     loc_1407FEB7B
                test    r13b, r13b
                mov     rax, r15
                cmovz   rax, r9
                mov     [rbp+230h+var_250], rax
                test    rax, rax
                jz      loc_1407FEBCA

loc_14061FA26:                          ; CODE XREF: sub_14061F5D0+1474↓j
                                        ; sub_14061F5D0+1DF5E3↓j
                test    cx, cx
                js      loc_14062059C
                mov     rax, [r11+10h]

loc_14061FA33:                          ; CODE XREF: sub_14061F5D0+FDB↓j
                mov     [rbp+230h+var_240], rax
                test    rax, rax
                jnz     short loc_14061FA5C

loc_14061FA3C:                          ; CODE XREF: sub_14061F5D0+FD2↓j
                test    dl, 40h
                jnz     loc_1407FEBDB
                test    r13b, r13b
                mov     rax, r14
                cmovnz  rax, r12

loc_14061FA4F:                          ; CODE XREF: sub_14061F5D0+1DF632↓j
                                        ; sub_14061F5D0+1DF63B↓j
                mov     [rbp+230h+var_240], rax
                test    rax, rax
                jz      loc_1407FEC10

loc_14061FA5C:                          ; CODE XREF: sub_14061F5D0+46A↑j
                mov     eax, edx
                and     eax, 4
                mov     [rbp+230h+var_260], eax
                jnz     loc_1407FEC21
                xor     r13b, r13b

loc_14061FA6D:                          ; CODE XREF: sub_14061F5D0+1DF654↓j
                mov     r14d, edx
                movzx   edx, cx
                and     r14d, 2
                setnz   bl
                and     dx, 10h
                movzx   eax, dx
                mov     [rbp+230h+var_27D], bl
                neg     ax
                sbb     edi, edi
                and     edi, 4
                test    cl, 20h
                jnz     loc_1407FEC29

loc_14061FA95:                          ; CODE XREF: sub_14061F5D0+1DF65F↓j
                mov     eax, 800h
                xor     r15d, r15d
                test    ax, cx
                jnz     loc_1407FEC34
                mov     r9d, r15d

loc_14061FAA9:                          ; CODE XREF: sub_14061F5D0+1DF66A↓j
                test    r8w, cx
                jnz     loc_1407FEC3F
                mov     r8d, r15d

loc_14061FAB6:                          ; CODE XREF: sub_14061F5D0+1DF675↓j
                test    dx, dx
                jnz     loc_140620A9C
                mov     r12, r15

loc_14061FAC2:                          ; CODE XREF: sub_14061F5D0+14E5↓j
                                        ; sub_14061F5D0+1DF67D↓j ...
                test    rsi, rsi
                jnz     loc_1406206B6

loc_14061FACB:                          ; CODE XREF: sub_14061F5D0+10EC↓j
                                        ; sub_14061F5D0+1100↓j
                mov     rsi, r15

loc_14061FACE:                          ; CODE XREF: sub_14061F5D0+110C↓j
                                        ; sub_14061F5D0+1DF68F↓j
                or      edi, r8d
                or      edi, r9d
                or      edi, r10d
                jnz     loc_14062075C
                test    rsi, rsi
                jnz     loc_14062075C
                mov     eax, r14d
                neg     eax
                sbb     ecx, ecx
                and     ecx, 400h
                xor     r10d, r10d
                mov     [rbp+230h+var_274], ecx
                mov     [rbp+230h+var_298], r10

loc_14061FAFD:                          ; CODE XREF: sub_14061F5D0+1280↓j
                movzx   ecx, word ptr [r11+2]
                test    r14d, r14d
                mov     eax, 8000h
                mov     edx, 8800h
                cmovz   edx, eax
                movzx   eax, cl
                and     al, 30h
                mov     [rbp+230h+var_28C], edx
                cmp     al, 30h ; '0'
                jz      loc_1407FEC9E

loc_14061FB22:                          ; CODE XREF: sub_14061F5D0+158C↓j
                                        ; sub_14061F5D0+1DF70B↓j
                cmp     [rbp+230h+var_260], 0
                jnz     loc_1407FECE0
                xor     r12b, r12b

loc_14061FB2F:                          ; CODE XREF: sub_14061F5D0+1DF713↓j
                movzx   edx, word ptr [r11+2]
                movzx   ecx, dx
                and     cx, 10h
                movzx   eax, cx
                neg     ax
                sbb     esi, esi
                and     esi, 4
                test    dl, 20h
                jnz     loc_1407FECE8
                mov     r9d, r10d

loc_14061FB52:                          ; CODE XREF: sub_14061F5D0+1DF71E↓j
                mov     eax, 800h
                test    ax, dx
                jnz     loc_1407FECF3
                mov     r8d, r10d

loc_14061FB63:                          ; CODE XREF: sub_14061F5D0+1DF729↓j
                test    cx, cx
                jnz     loc_140620ABA
                mov     r15, r10

loc_14061FB6F:                          ; CODE XREF: sub_14061F5D0+1503↓j
                                        ; sub_14061F5D0+1DF731↓j ...
                mov     rcx, [rbp+230h+var_210]
                test    rcx, rcx
                jnz     loc_1406206E1

loc_14061FB7C:                          ; CODE XREF: sub_14061F5D0+1117↓j
                                        ; sub_14061F5D0+112B↓j
                mov     rdi, r10

loc_14061FB7F:                          ; CODE XREF: sub_14061F5D0+1135↓j
                                        ; sub_14061F5D0+1DF743↓j
                or      esi, r8d
                or      esi, r9d
                jnz     loc_140620855
                test    rdi, rdi
                jnz     loc_140620855
                mov     rdi, r10
                mov     [rbp+230h+var_270], r10
                mov     [rbp+230h+var_1EC], 8000000Bh

loc_14061FBA2:                          ; CODE XREF: sub_14061F5D0+138B↓j
                movzx   ecx, word ptr [r11+2]
                movzx   eax, cl
                and     al, 30h
                cmp     al, 30h ; '0'
                jz      loc_1407FED47

loc_14061FBB4:                          ; CODE XREF: sub_14061F5D0+15AF↓j
                                        ; sub_14061F5D0+1DF783↓j ...
                mov     r13, [rbp+230h+var_1A0]
                mov     [rbp+230h+var_264], r10d

loc_14061FBBF:                          ; CODE XREF: sub_14061F5D0+1648↓j
                movzx   eax, word ptr [r11+2]
                test    al, 10h
                jnz     loc_140620A7E
                mov     rcx, r10

loc_14061FBCF:                          ; CODE XREF: sub_14061F5D0+14C7↓j
                                        ; sub_14061F5D0+1DF7B7↓j ...
                lea     r8, [rbp+230h+var_264]
                mov     edx, 14h
                call    RtlFindAceByType
                mov     rbx, rax
                test    rax, rax
                jnz     loc_140620BEB

loc_14061FBE9:                          ; CODE XREF: sub_14061F5D0+1622↓j
                                        ; sub_14061F5D0+1636↓j
                inc     [rbp+230h+var_264]
                test    rbx, rbx
                jnz     loc_140620C11
                mov     r14d, [rbp+230h+arg_30]
                lea     r15d, [rbx+4]
                mov     rsi, [rbp+230h+var_258]
                mov     eax, 800h
                test    eax, r14d
                jnz     loc_1407FEDA3

loc_14061FC12:                          ; CODE XREF: sub_14061F5D0+1DF854↓j
                mov     r12, [rbp+230h+var_240]
                mov     [rbp+230h+var_1B8], rdi

loc_14061FC1A:                          ; CODE XREF: sub_14061F5D0+1DF941↓j
                movzx   eax, word ptr [rsi+2]
                test    al, 10h
                jnz     loc_140620AD8
                mov     rdi, rbx

loc_14061FC29:                          ; CODE XREF: sub_14061F5D0+1520↓j
                                        ; sub_14061F5D0+1DF949↓j ...
                mov     [rbp+230h+var_1F0], ebx
                mov     [rbp+230h+var_150], 0
                mov     [rbp+230h+var_14C], 100h
                mov     [rbp+230h+var_21C], ebx

loc_14061FC42:                          ; CODE XREF: sub_14061F5D0+695↓j
                lea     r8, [rbp+230h+var_21C]
                mov     edx, 15h
                mov     rcx, rdi
                call    RtlFindAceByType
                mov     rbx, rax
                test    rax, rax
                jnz     loc_1407FEF27

loc_14061FC5F:                          ; CODE XREF: sub_14061F5D0+1DF982↓j
                                        ; sub_14061F5D0+1DF9B0↓j
                inc     [rbp+230h+var_21C]
                test    rbx, rbx
                jnz     short loc_14061FC42
                mov     ebx, [rbp+230h+var_1F0]

loc_14061FC6A:                          ; CODE XREF: sub_14061F5D0+1DF9BB↓j
                test    ebx, ebx
                js      loc_1407FF0BF
                mov     ecx, r14d
                mov     eax, r14d
                shr     ecx, 8
                and     ecx, 1
                mov     edx, ecx
                or      edx, 2
                and     eax, 200h
                mov     eax, r14d
                cmovz   edx, ecx
                mov     ebx, edx
                or      ebx, r15d
                and     eax, 400h
                cmovz   ebx, edx
                test    ebx, ebx
                jz      loc_1406203E9
                mov     r13, [rbp+230h+var_188]

loc_14061FCAA:                          ; CODE XREF: sub_14061F5D0+E39↓j
                                        ; sub_14061F5D0+1DF9DB↓j
                xor     dil, dil

loc_14061FCAD:                          ; CODE XREF: sub_14061F5D0+E5E↓j
                test    dil, 8
                jnz     loc_1407FEFB0

loc_14061FCB7:                          ; CODE XREF: sub_14061F5D0+1DF9F1↓j
                test    ebx, ebx
                jz      loc_140620490

loc_14061FCBF:                          ; CODE XREF: sub_14061F5D0+EE8↓j
                test    r13, r13
                jnz     short loc_14061FCD9
                cmp     [rbp+230h+var_228], r13
                jz      loc_1407FEFD5
                mov     rdi, [rbp+230h+var_1E8]
                mov     [rbp+230h+var_200], rdi
                xor     dil, dil

loc_14061FCD9:                          ; CODE XREF: sub_14061F5D0+6F2↑j
                                        ; sub_14061F5D0+EC7↓j ...
                cmp     [rbp+230h+var_200], 0
                jz      loc_1406205CD
                xor     edx, edx
                lea     rcx, [rbp+230h+var_128]
                lea     r8d, [rdx+78h]
                call    memset
                mov     r9, [rbp+230h+var_200]
                lea     rcx, [rbp+230h+var_130]
                movzx   r8d, dil
                mov     [rbp+230h+var_130], 800002h
                mov     dword ptr [rsp+340h+var_318], ebx
                call    sub_140621DE0
                mov     ebx, eax
                test    eax, eax
                js      loc_1407FF0BF
                lea     rbx, [rbp+230h+var_130]
                xor     r9d, r9d

loc_14061FD2D:                          ; CODE XREF: sub_14061F5D0+1007↓j
                test    r14d, 700h
                jz      loc_140620439
                mov     r13d, 2000h

loc_14061FD40:                          ; CODE XREF: sub_14061F5D0+EBB↓j
                                        ; sub_14061F5D0+1482↓j
                mov     rcx, [rbp+230h+var_210]
                test    rcx, rcx
                jnz     loc_14062070A

loc_14061FD4D:                          ; CODE XREF: sub_14061F5D0+1140↓j
                                        ; sub_14061F5D0+1154↓j
                mov     rsi, r9

loc_14061FD50:                          ; CODE XREF: sub_14061F5D0+115E↓j
                                        ; sub_14061F5D0+1DFA37↓j
                test    r15d, r15d
                jz      loc_1406203B5

loc_14061FD59:                          ; CODE XREF: sub_14061F5D0+DE8↓j
                mov     eax, 0C8h
                mov     r14d, r9d
                mov     [rbp+230h+var_218], eax

loc_14061FD64:                          ; CODE XREF: sub_14061F5D0+1DFA50↓j
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 63416553h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1407FF23A
                movzx   r9d, [rbp+230h+arg_28]
                lea     rax, [rbp+230h+var_274]
                mov     [rsp+340h+var_2B8], rax
                mov     r8d, r15d
                lea     rax, [rbp+230h+var_267]
                mov     rdx, rbx
                mov     [rsp+340h+var_2C0], rax
                mov     rcx, rsi
                mov     [rsp+340h+var_2C8], rdi
                lea     rax, [rbp+230h+var_218]
                mov     [rsp+340h+var_2D0], rax
                mov     eax, [rbp+230h+arg_20]
                mov     [rsp+340h+var_2D8], eax
                mov     rax, [rbp+230h+var_1E0]
                mov     [rsp+340h+var_2E0], rax
                mov     rax, [rbp+230h+var_238]
                mov     [rsp+340h+var_2E8], 3
                mov     [rsp+340h+var_2F0], rax
                mov     rax, [rbp+230h+var_1F8]
                mov     [rsp+340h+var_2F8], rax
                mov     rax, [rbp+230h+var_230]
                mov     [rsp+340h+var_300], rax
                mov     rax, [rbp+230h+var_250]
                mov     [rsp+340h+var_308], r12
                mov     [rsp+340h+var_310], rax
                mov     byte ptr [rsp+340h+var_318], 0
                mov     byte ptr [rsp+340h+var_320], 1
                call    sub_140620D00
                mov     ebx, eax
                test    eax, eax
                js      loc_140620960
                cmp     [rbp+230h+var_218], 0
                jz      loc_1407FF025

loc_14061FE20:                          ; CODE XREF: sub_14061F5D0+13A4↓j
                                        ; sub_14061F5D0+1DFA43↓j ...
                cmp     ebx, 8000000Bh
                jz      loc_1406203BE
                test    ebx, ebx
                js      loc_1407FF0BF
                mov     esi, [rbp+230h+var_274]
                mov     r12, [rbp+230h+var_1D0]

loc_14061FE3B:                          ; CODE XREF: sub_14061F5D0+DFC↓j
                mov     rcx, [rbp+230h+var_270]
                lea     rax, [rbp+230h+var_248]
                mov     r14, [rbp+230h+var_298]
                mov     r9, rcx
                mov     [rsp+340h+var_308], rax
                mov     r8, rcx
                lea     rax, [rbp+230h+var_190]
                mov     rdx, rdi
                mov     [rsp+340h+var_310], rax
                mov     rax, [rbp+230h+var_1B8]
                mov     [rsp+340h+var_318], rcx
                mov     rcx, r14
                mov     [rsp+340h+var_320], rax
                call    sub_140621260
                mov     r15d, [rbp+230h+var_28C]
                xor     r9d, r9d
                mov     ebx, eax
                test    r13d, r15d
                jnz     loc_1407FF038
                mov     eax, r9d

loc_14061FE8C:                          ; CODE XREF: sub_14061F5D0+1DFA6D↓j
                mov     r13d, [rbp+230h+var_248]
                or      r13d, eax
                test    rdi, rdi
                jz      short loc_14061FEAA
                cmp     rdi, r12
                jz      short loc_14061FEAA
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                xor     r9d, r9d

loc_14061FEAA:                          ; CODE XREF: sub_14061F5D0+8C6↑j
                                        ; sub_14061F5D0+8CB↑j
                test    ebx, ebx
                js      loc_1407FED9A
                mov     rbx, [rbp+230h+var_190]
                test    rbx, rbx
                jz      short loc_14061FF06
                cmp     [rbp+230h+var_290], 0
                jnz     loc_140620B84

loc_14061FEC8:                          ; CODE XREF: sub_14061F5D0+15B7↓j
                                        ; sub_14061F5D0+15C7↓j
                mov     [rbp+230h+var_298], rbx
                mov     r14, rbx
                mov     [rbp+230h+var_278], 1
                test    sil, 8
                jnz     loc_1407FF042
                mov     ecx, 10h

loc_14061FEE2:                          ; CODE XREF: sub_14061F5D0+1DFA77↓j
                mov     eax, esi
                xor     r9d, r9d
                and     eax, 400h
                add     eax, eax
                bt      esi, 0Ch
                jb      loc_1407FF04C
                mov     edx, r9d

loc_14061FEFB:                          ; CODE XREF: sub_14061F5D0+1DFA81↓j
                or      edx, eax
                or      edx, ecx
                or      r15d, edx
                mov     [rbp+230h+var_28C], r15d

loc_14061FF06:                          ; CODE XREF: sub_14061F5D0+8EC↑j
                mov     r8d, [rbp+230h+arg_30]
                mov     eax, r8d
                and     eax, 8
                mov     [rbp+230h+var_248], eax
                jnz     short loc_14061FF76
                xor     r8d, r8d
                mov     rcx, r14
                lea     edx, [r8+11h]
                call    RtlFindAceByType
                test    rax, rax
                jz      loc_1406205EB
                add     rax, 8

loc_14061FF34:                          ; CODE XREF: sub_14061F5D0+101F↓j
                test    rax, rax
                jz      loc_1406205F4
                cmp     [rbp+230h+var_228], 0
                jz      loc_1407FF056
                mov     rcx, [rbp+230h+var_1E8]
                lea     r8, [rbp+230h+var_2A0]
                mov     rdx, rax
                call    sub_14021BF70
                mov     ebx, eax
                test    eax, eax
                js      loc_1407FF0BF
                mov     r8d, [rbp+230h+arg_30]
                xor     r9d, r9d
                cmp     [rbp+230h+var_2A0], r9b
                jz      loc_1407FF064

loc_14061FF76:                          ; CODE XREF: sub_14061F5D0+946↑j
                                        ; sub_14061F5D0+102E↓j ...
                cmp     [rbp+230h+var_260], 0
                jnz     loc_1407FF06D
                xor     bl, bl

loc_14061FF82:                          ; CODE XREF: sub_14061F5D0+1DFA9F↓j
                mov     rdx, [rbp+230h+var_258]
                mov     edi, r8d
                and     edi, 1
                mov     [rbp+230h+var_2A0], bl
                movzx   eax, word ptr [rdx+2]
                movzx   esi, ax
                test    al, 4
                jnz     loc_1406205B0
                mov     r12, r9

loc_14061FFA1:                          ; CODE XREF: sub_14061F5D0+FF8↓j
                                        ; sub_14061F5D0+1616↓j ...
                mov     rcx, [rbp+230h+var_210]
                test    rcx, rcx
                jnz     loc_140620733

loc_14061FFAE:                          ; CODE XREF: sub_14061F5D0+1169↓j
                                        ; sub_14061F5D0+117D↓j
                mov     r14, r9

loc_14061FFB1:                          ; CODE XREF: sub_14061F5D0+1187↓j
                                        ; sub_14061F5D0+1DFAA8↓j
                and     esi, 140Ch
                jnz     loc_1406202B6
                test    r14, r14
                jnz     loc_1406202B6
                mov     [rbp+230h+var_2A8], r9

loc_14061FFCA:                          ; CODE XREF: sub_14061F5D0+146B↓j
                mov     r14d, [rbp+230h+var_28C]
                mov     ecx, r15d
                movzx   r14d, word ptr [rdx+2]
                bts     ecx, 0Ah
                test    edi, edi
                movzx   eax, r14b
                cmovz   ecx, r15d
                and     al, 0Ch
                cmp     al, 0Ch
                jz      loc_140620C32
                mov     rax, [rbp+230h+var_1C8]
                mov     r14d, ecx
                mov     [rbp+230h+var_28C], ecx
                test    rax, rax
                jz      short loc_140620009
                mov     [rbp+230h+var_2A8], rax

loc_140620001:                          ; CODE XREF: sub_14061F5D0+1696↓j
                or      r14d, 4
                mov     [rbp+230h+var_28C], r14d

loc_140620009:                          ; CODE XREF: sub_14061F5D0+A2B↑j
                xor     r12b, r12b

loc_14062000C:                          ; CODE XREF: sub_14061F5D0+DE0↓j
                mov     rsi, [rbp+230h+var_228]
                bt      r8d, 0Ch
                jb      short loc_140620021
                cmp     [rbp+230h+var_27C], 0
                jnz     loc_1406204C6

loc_140620021:                          ; CODE XREF: sub_14061F5D0+A45↑j
                                        ; sub_14061F5D0+EF9↓j ...
                movzx   r15d, [rbp+230h+var_2AF]

loc_140620026:                          ; CODE XREF: sub_14061F5D0+FB3↓j
                mov     rbx, [rbp+230h+var_2A8]
                test    edi, edi
                jnz     loc_14062097F

loc_140620032:                          ; CODE XREF: sub_14061F5D0+13B2↓j
                                        ; sub_14061F5D0+1DFB0E↓j
                test    r13d, r13d
                jz      loc_140620603
                mov     eax, r13d
                and     eax, 1B0h
                cmp     eax, r13d
                jnz     loc_140620603
                xor     al, al

loc_14062004E:                          ; CODE XREF: sub_14061F5D0+1035↓j
                cmp     r15b, 1
                jnz     short loc_140620086
                cmp     [rbp+230h+var_280], 0
                mov     edi, [rbp+230h+var_248]
                jnz     loc_140620C1D

loc_140620061:                          ; CODE XREF: sub_14061F5D0+164F↓j
                                        ; sub_14061F5D0+1657↓j
                xor     r15d, r15d

loc_140620064:                          ; CODE XREF: sub_14061F5D0+1DFB8E↓j
                cmp     [rbp+230h+var_27B], 0
                jnz     loc_1407FF163

loc_14062006E:                          ; CODE XREF: sub_14061F5D0+1DFB95↓j
                                        ; sub_14061F5D0+1DFC16↓j
                cmp     [rbp+230h+var_27F], 0
                movzx   edi, [rbp+230h+var_2AE]
                jnz     loc_140620A57

loc_14062007C:                          ; CODE XREF: sub_14061F5D0+148B↓j
                                        ; sub_14061F5D0+14A3↓j
                cmp     [rbp+230h+var_27E], 0
                jnz     loc_140620612

loc_140620086:                          ; CODE XREF: sub_14061F5D0+A82↑j
                                        ; sub_14061F5D0+1045↓j
                xor     ecx, ecx

loc_140620088:                          ; CODE XREF: sub_14061F5D0+1098↓j
                mov     rax, [rbp+230h+var_250]
                movzx   eax, byte ptr [rax+1]
                lea     r15d, ds:8[rax*4]
                mov     rax, [rbp+230h+var_240]
                test    rax, rax
                jz      loc_1407FF1F5
                movzx   eax, byte ptr [rax+1]
                lea     r13d, ds:8[rax*4]

loc_1406200B1:                          ; CODE XREF: sub_14061F5D0+1DFC28↓j
                mov     esi, r14d
                and     esi, 10h
                jz      loc_14062060A
                mov     rax, [rbp+230h+var_298]
                test    rax, rax
                jz      loc_14062060A
                movzx   r12d, word ptr [rax+2]
                add     r12d, 3
                and     r12d, 0FFFFFFFCh

loc_1406200D7:                          ; CODE XREF: sub_14061F5D0+103D↓j
                and     r14d, 4
                jz      loc_140620C8A
                test    rbx, rbx
                jz      loc_140620C8A
                movzx   edi, word ptr [rbx+2]
                add     edi, 3
                and     edi, 0FFFFFFFCh

loc_1406200F4:                          ; CODE XREF: sub_14061F5D0+16BC↓j
                lea     eax, [rdi+r12]
                mov     ecx, 1
                add     eax, r13d
                lea     edx, [r15+14h]
                add     edx, eax
                mov     r8d, 64536553h
                call    ExAllocatePoolWithTag
                mov     [rbp+230h+var_288], rax
                mov     rdx, rax
                test    rax, rax
                jz      loc_1407FF0BA
                mov     ecx, [rbp+230h+var_28C]
                lea     rbx, [rdx+14h]
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  xmmword ptr [rdx], xmm0
                mov     [rdx+10h], eax
                or      [rdx+2], cx
                test    esi, esi
                mov     byte ptr [rdx], 1
                mov     rsi, [rbp+230h+var_298]
                jz      short loc_140620187
                test    rsi, rsi
                jz      short loc_140620187
                movzx   r8d, word ptr [rsi+2]
                mov     rdx, rsi
                mov     rcx, rbx
                call    memmove
                cmp     [rbp+230h+var_290], 0
                jnz     short loc_140620169
                mov     rdx, [rbp+230h+var_238]
                mov     rcx, rbx
                call    sub_1406211A0

loc_140620169:                          ; CODE XREF: sub_14061F5D0+B8B↑j
                mov     rdx, [rbp+230h+var_288]
                mov     eax, ebx
                sub     eax, edx
                mov     [rdx+0Ch], eax
                movzx   ecx, word ptr [rsi+2]
                cmp     r12d, ecx
                ja      loc_1407FF1FD

loc_140620181:                          ; CODE XREF: sub_14061F5D0+1DFC41↓j
                mov     eax, r12d
                add     rbx, rax

loc_140620187:                          ; CODE XREF: sub_14061F5D0+B70↑j
                                        ; sub_14061F5D0+B75↑j
                test    r14d, r14d
                mov     r14, [rbp+230h+var_2A8]
                jz      loc_140620C96
                test    r14, r14
                jz      loc_140620C91
                movzx   r8d, word ptr [r14+2]
                mov     rdx, r14
                mov     rcx, rbx
                call    memmove
                movzx   r12d, [rbp+230h+var_2B0]
                test    r12b, r12b
                jnz     short loc_1406201C3
                mov     rdx, [rbp+230h+var_238]
                mov     rcx, rbx
                call    sub_1406211A0

loc_1406201C3:                          ; CODE XREF: sub_14061F5D0+BE5↑j
                mov     rcx, [rbp+230h+var_288]
                mov     eax, ebx
                sub     eax, ecx
                mov     [rcx+10h], eax
                movzx   ecx, word ptr [r14+2]
                cmp     edi, ecx
                ja      loc_1407FF216

loc_1406201DB:                          ; CODE XREF: sub_14061F5D0+1DFC57↓j
                mov     eax, edi
                add     rbx, rax

loc_1406201E0:                          ; CODE XREF: sub_14061F5D0+16CB↓j
                mov     rdx, [rbp+230h+var_250]
                mov     rcx, rbx
                mov     r8d, r15d
                call    memmove
                mov     rdi, [rbp+230h+var_288]
                mov     eax, ebx
                sub     eax, edi
                mov     [rdi+4], eax
                mov     eax, r15d
                add     rbx, rax
                mov     rax, [rbp+230h+var_240]
                test    rax, rax
                jz      short loc_14062021C
                mov     r8d, r13d
                mov     rdx, rax
                mov     rcx, rbx
                call    memmove
                sub     ebx, edi
                mov     [rdi+8], ebx

loc_14062021C:                          ; CODE XREF: sub_14061F5D0+C37↑j
                xor     eax, eax
                mov     ebx, eax

loc_140620220:                          ; CODE XREF: sub_14061F5D0+1DFB00↓j
                                        ; sub_14061F5D0+1DFC83↓j
                mov     rcx, [rbp+230h+var_208]
                test    rcx, rcx
                jnz     loc_140620A14

loc_14062022D:                          ; CODE XREF: sub_14061F5D0+144B↓j
                cmp     [rbp+230h+var_279], 0
                jnz     loc_140620BD0

loc_140620237:                          ; CODE XREF: sub_14061F5D0+1607↓j
                                        ; sub_14061F5D0+1DFC90↓j
                mov     rcx, [rbp+230h+var_1D8]
                test    rcx, rcx
                jz      short loc_140620247
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140620247:                          ; CODE XREF: sub_14061F5D0+C6E↑j
                cmp     [rbp+230h+var_278], 0
                jz      loc_1406205DC

loc_140620251:                          ; CODE XREF: sub_14061F5D0+1016↓j
                test    rsi, rsi
                jz      short loc_140620260
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_140620260:                          ; CODE XREF: sub_14061F5D0+C84↑j
                                        ; sub_14061F5D0+1010↓j
                cmp     [rbp+230h+var_277], 0
                jnz     loc_140620B9C

loc_14062026A:                          ; CODE XREF: sub_14061F5D0+15D3↓j
                                        ; sub_14061F5D0+15E3↓j
                mov     rcx, [rbp+230h+var_1B8]
                test    rcx, rcx
                jnz     loc_140620BB8

loc_140620277:                          ; CODE XREF: sub_14061F5D0+15EC↓j
                                        ; sub_14061F5D0+1DFC9D↓j
                test    r12b, r12b
                jnz     loc_1406203D1

loc_140620280:                          ; CODE XREF: sub_14061F5D0+E04↓j
                                        ; sub_14061F5D0+E14↓j
                mov     rax, [rbp+230h+var_180]
                mov     [rax], rdi
                mov     eax, ebx

loc_14062028C:                          ; CODE XREF: sub_14061F5D0+1DFCB0↓j
                mov     r13, [rsp+340h+var_38]
                mov     rcx, [rbp+230h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 310h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; } // starts at 14061F745
; ---------------------------------------------------------------------------
; __unwind { // __GSHandlerCheck
algn_1406202B5:                         ; DATA XREF: .pdata:00000001400FDB54↑o
                                        ; .pdata:00000001400FDB60↑o
                align 2
; } // starts at 1406202B5

loc_1406202B6:                          ; CODE XREF: sub_14061F5D0+9E7↑j
                                        ; sub_14061F5D0+9F0↑j
                                        ; DATA XREF: ...
                mov     eax, 0C8h
                mov     r15d, r9d
                mov     [rbp+230h+var_260], eax

loc_1406202C1:                          ; CODE XREF: sub_14061F5D0+143F↓j
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 63416553h
                call    ExAllocatePoolWithTag
                mov     [rbp+230h+var_2A8], rax
                test    rax, rax
                jz      loc_1407FF22C
                movzx   r9d, [rbp+230h+arg_28]
                lea     rcx, [rbp+230h+var_274]
                mov     [rsp+340h+var_2B8], rcx
                mov     r8d, esi
                lea     rcx, [rbp+230h+var_27E]
                mov     rdx, r12
                mov     [rsp+340h+var_2C0], rcx
                mov     rcx, r14
                mov     [rsp+340h+var_2C8], rax
                lea     rax, [rbp+230h+var_260]
                mov     [rsp+340h+var_2D0], rax
                mov     eax, [rbp+230h+arg_20]
                mov     [rsp+340h+var_2D8], eax
                mov     rax, [rbp+230h+var_1E0]
                mov     [rsp+340h+var_2E0], rax
                mov     rax, [rbp+230h+var_238]
                mov     [rsp+340h+var_2E8], 1
                mov     [rsp+340h+var_2F0], rax
                mov     rax, [rbp+230h+var_1F8]
                mov     [rsp+340h+var_2F8], rax
                mov     rax, [rbp+230h+var_230]
                mov     [rsp+340h+var_300], rax
                mov     rax, [rbp+230h+var_240]
                mov     [rsp+340h+var_308], rax
                mov     rax, [rbp+230h+var_250]
                mov     [rsp+340h+var_310], rax
                mov     byte ptr [rsp+340h+var_318], bl
                mov     byte ptr [rsp+340h+var_320], dil
                call    sub_140620D00
                mov     ebx, eax
                test    eax, eax
                js      loc_1406209DD
                cmp     [rbp+230h+var_260], 0
                jz      loc_140620C73
                xor     r9d, r9d

loc_140620384:                          ; CODE XREF: sub_14061F5D0+1425↓j
                                        ; sub_14061F5D0+1432↓j ...
                test    ebx, ebx
                js      loc_140620A20
                mov     r14d, [rbp+230h+var_28C]
                mov     r12b, 1
                mov     eax, [rbp+230h+var_274]
                mov     r8d, [rbp+230h+arg_30]
                and     eax, 1408h
                or      eax, 4
                mov     [rbp+230h+var_2B0], r12b
                or      r14d, eax
                mov     [rbp+230h+var_28C], r14d
                jmp     loc_14062000C
; ---------------------------------------------------------------------------

loc_1406203B5:                          ; CODE XREF: sub_14061F5D0+783↑j
                test    rsi, rsi
                jnz     loc_14061FD59

loc_1406203BE:                          ; CODE XREF: sub_14061F5D0+856↑j
                mov     r12, [rbp+230h+var_1D0]
                xor     eax, eax
                mov     rdi, r12
                mov     [rbp+230h+var_274], eax
                mov     esi, eax
                jmp     loc_14061FE3B
; ---------------------------------------------------------------------------

loc_1406203D1:                          ; CODE XREF: sub_14061F5D0+CAA↑j
                test    r14, r14
                jz      loc_140620280
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_140620280
; ---------------------------------------------------------------------------

loc_1406203E9:                          ; CODE XREF: sub_14061F5D0+6CD↑j
                movzx   eax, word ptr [rsi+2]
                test    al, 10h
                jnz     loc_140620AF5
                xor     ecx, ecx

loc_1406203F7:                          ; CODE XREF: sub_14061F5D0+153D↓j
                                        ; sub_14061F5D0+1DF9C2↓j ...
                xor     r8d, r8d
                lea     edx, [r8+11h]
                call    RtlFindAceByType
                mov     r13, rax
                test    rax, rax
                jz      loc_14061FCAA
                movzx   edi, byte ptr [r13+1]
                add     rax, 8
                mov     ebx, [r13+4]
                mov     [rbp+230h+var_200], rax
                cmp     dil, 8
                jz      loc_1407FEFA0
                test    dil, 10h
                jz      loc_14061FCAD
                jmp     loc_1407FEFA0
; ---------------------------------------------------------------------------

loc_140620439:                          ; CODE XREF: sub_14061F5D0+764↑j
                test    r13, r13
                jnz     short loc_140620447
                test    rbx, rbx
                jnz     loc_140620A49

loc_140620447:                          ; CODE XREF: sub_14061F5D0+E6C↑j
                movzx   eax, word ptr [rsi+2]
                mov     ecx, eax
                shr     ecx, 2
                and     ecx, r15d
                test    al, 20h
                jnz     loc_1407FEFE3
                mov     r8d, r9d

loc_14062045E:                          ; CODE XREF: sub_14061F5D0+1DFA19↓j
                mov     edx, 800h
                test    dx, ax
                jnz     loc_1407FEFEE
                mov     edx, r9d

loc_14062046F:                          ; CODE XREF: sub_14061F5D0+1DFA23↓j
                mov     r13d, 2000h
                test    r13w, ax
                jnz     loc_1407FEFF8
                mov     r15d, r9d

loc_140620482:                          ; CODE XREF: sub_14061F5D0+1DFA2E↓j
                or      r15d, edx
                or      r15d, ecx
                or      r15d, r8d
                jmp     loc_14061FD40
; ---------------------------------------------------------------------------

loc_140620490:                          ; CODE XREF: sub_14061F5D0+6E9↑j
                mov     rax, [rbp+230h+var_1E8]
                test    rax, rax
                jz      loc_14061FCD9
                xor     edx, edx
                mov     rcx, rax
                call    RtlSubAuthoritySid
                cmp     dword ptr [rax], 2000h
                jnb     loc_14061FCD9
                mov     ebx, 1
                jmp     loc_14061FCBF
; ---------------------------------------------------------------------------

loc_1406204BD:                          ; CODE XREF: sub_14061F5D0+154↑j
                                        ; DATA XREF: .pdata:00000001400FDB6C↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rbp+230h+var_27C], 1
                jmp     loc_14061F740
; } // starts at 1406204BD
; ---------------------------------------------------------------------------

loc_1406204C6:                          ; CODE XREF: sub_14061F5D0+A4B↑j
                                        ; DATA XREF: .pdata:00000001400FDB78↑o ...
; __unwind { // __GSHandlerCheck
                test    rsi, rsi
                jz      loc_140620021
                mov     rcx, [rbp+230h+var_210]
                test    rcx, rcx
                jz      loc_140620021
                mov     rdx, [rbp+230h+var_198]
                mov     eax, r8d
                mov     [rsp+340h+var_2F8], rdx
                lea     r8, [rbp+230h+var_208]
                mov     rdx, [rbp+230h+var_238]
                or      eax, 1
                mov     [rsp+340h+var_300], rdx
                xor     edx, edx
                mov     [rsp+340h+var_308], rsi
                mov     dword ptr [rsp+340h+var_310], eax
                movzx   eax, [rbp+230h+arg_28]
                mov     byte ptr [rsp+340h+var_318], al
                mov     eax, [rbp+230h+arg_20]
                mov     [rbp+230h+var_1B0], r9d
                mov     [rbp+230h+var_1AC], r9d
                mov     r9, [rbp+230h+var_1E0]
                mov     dword ptr [rsp+340h+var_320], eax
                call    sub_14061F5D0
                mov     ebx, eax
                test    eax, eax
                js      loc_1407FF0BF
                mov     rax, [rbp+230h+var_208]
                movzx   ecx, word ptr [rax+2]
                test    cl, 4
                jz      loc_1407FF098
                test    cx, cx
                jns     loc_1407FF0AA
                mov     ecx, [rax+10h]
                test    ecx, ecx
                jz      loc_1407FF0A1
                mov     edx, ecx
                add     rdx, rax

loc_140620566:                          ; CODE XREF: sub_14061F5D0+1DFADE↓j
                xor     ebx, ebx

loc_140620568:                          ; CODE XREF: sub_14061F5D0+1DFACC↓j
                                        ; sub_14061F5D0+1DFAD5↓j
                mov     cl, 10h
                call    sub_140329990
                movzx   r15d, [rbp+230h+var_2AF]
                test    al, al
                jnz     loc_140620CA0

loc_14062057C:                          ; CODE XREF: sub_14061F5D0+1716↓j
                mov     r8d, [rbp+230h+arg_30]
                jmp     loc_140620026
; ---------------------------------------------------------------------------

loc_140620588:                          ; CODE XREF: sub_14061F5D0+41F↑j
                mov     eax, [r11+4]
                test    eax, eax
                jz      loc_14061FA06
                add     rax, r11
                jmp     loc_14061F9F9
; ---------------------------------------------------------------------------

loc_14062059C:                          ; CODE XREF: sub_14061F5D0+459↑j
                mov     eax, [r11+8]
                test    eax, eax
                jz      loc_14061FA3C
                add     rax, r11
                jmp     loc_14061FA33
; ---------------------------------------------------------------------------

loc_1406205B0:                          ; CODE XREF: sub_14061F5D0+9C8↑j
                test    ax, ax
                jns     loc_140620BE2
                mov     eax, [rdx+10h]
                test    eax, eax
                jz      loc_140620C6B
                lea     r12, [rdx+rax]
                jmp     loc_14061FFA1
; ---------------------------------------------------------------------------

loc_1406205CD:                          ; CODE XREF: sub_14061F5D0+70E↑j
                xor     r9d, r9d
                mov     ebx, r9d
                mov     [rbp+230h+var_1D0], rbx
                jmp     loc_14061FD2D
; ---------------------------------------------------------------------------

loc_1406205DC:                          ; CODE XREF: sub_14061F5D0+C7B↑j
                cmp     [rbp+230h+var_290], 0
                jz      loc_140620260
                jmp     loc_140620251
; ---------------------------------------------------------------------------

loc_1406205EB:                          ; CODE XREF: sub_14061F5D0+95A↑j
                mov     rax, [rbp+230h+var_200]
                jmp     loc_14061FF34
; ---------------------------------------------------------------------------

loc_1406205F4:                          ; CODE XREF: sub_14061F5D0+967↑j
                mov     r8d, [rbp+230h+arg_30]
                xor     r9d, r9d
                jmp     loc_14061FF76
; ---------------------------------------------------------------------------

loc_140620603:                          ; CODE XREF: sub_14061F5D0+A65↑j
                                        ; sub_14061F5D0+A76↑j
                mov     al, 1
                jmp     loc_14062004E
; ---------------------------------------------------------------------------

loc_14062060A:                          ; CODE XREF: sub_14061F5D0+AE7↑j
                                        ; sub_14061F5D0+AF4↑j
                mov     r12d, ecx
                jmp     loc_1406200D7
; ---------------------------------------------------------------------------

loc_140620612:                          ; CODE XREF: sub_14061F5D0+AB0↑j
                test    dil, dil
                jz      loc_140620086
                mov     r8, [rbp+230h+var_230]
                lea     rax, [rbp+230h+var_279]
                movzx   edx, [rbp+230h+var_27A]
                lea     r9, [rbp+230h+var_1C0]
                mov     rcx, rbx
                mov     [rsp+340h+var_320], rax
                call    sub_140712E24
                mov     ebx, eax
                test    eax, eax
                js      loc_1407FF0BF
                test    r12b, r12b
                jz      short loc_14062065A
                mov     rax, [rbp+230h+var_2A8]
                test    rax, rax
                jz      short loc_14062065A
                xor     edx, edx
                mov     rcx, rax
                call    ExFreePoolWithTag

loc_14062065A:                          ; CODE XREF: sub_14061F5D0+1075↑j
                                        ; sub_14061F5D0+107E↑j
                mov     rbx, [rbp+230h+var_1C0]
                xor     ecx, ecx
                mov     [rbp+230h+var_2A8], rbx
                mov     [rbp+230h+var_1C0], rcx
                jmp     loc_140620088
; ---------------------------------------------------------------------------

loc_14062066D:                          ; CODE XREF: sub_14061F5D0+311↑j
                movzx   r8d, byte ptr [r14+1]
                mov     rdx, r14
                mov     rcx, r15
                mov     [rbp+230h+var_1A0], r15
                lea     r8, ds:8[r8*4]
                call    memmove
                movzx   eax, byte ptr [r14+1]
                lea     r15, [r15+rax*4]
                add     r15, 8
                mov     [rbp+230h+var_230], r15
                xor     r13d, r13d
                jmp     loc_14061F8F1
; ---------------------------------------------------------------------------

loc_1406206A5:                          ; CODE XREF: sub_14061F5D0+235↑j
                movzx   eax, byte ptr [rax+1]
                lea     rdx, ds:8[rax*4]
                jmp     loc_14061F80D
; ---------------------------------------------------------------------------

loc_1406206B6:                          ; CODE XREF: sub_14061F5D0+4F5↑j
                movzx   eax, word ptr [rsi+2]
                test    al, 10h
                jz      loc_14061FACB
                test    ax, ax
                jns     loc_1407FEC5B
                mov     eax, [rsi+0Ch]
                test    eax, eax
                jz      loc_14061FACB
                mov     esi, eax
                add     rsi, [rbp+230h+var_210]
                jmp     loc_14061FACE
; ---------------------------------------------------------------------------

loc_1406206E1:                          ; CODE XREF: sub_14061F5D0+5A6↑j
                movzx   eax, word ptr [rcx+2]
                test    al, 10h
                jz      loc_14061FB7C
                test    ax, ax
                jns     loc_1407FED0F
                mov     eax, [rcx+0Ch]
                test    eax, eax
                jz      loc_14061FB7C
                lea     rdi, [rcx+rax]
                jmp     loc_14061FB7F
; ---------------------------------------------------------------------------

loc_14062070A:                          ; CODE XREF: sub_14061F5D0+777↑j
                movzx   eax, word ptr [rcx+2]
                test    al, 10h
                jz      loc_14061FD4D
                test    ax, ax
                jns     loc_1407FF003
                mov     eax, [rcx+0Ch]
                test    eax, eax
                jz      loc_14061FD4D
                lea     rsi, [rcx+rax]
                jmp     loc_14061FD50
; ---------------------------------------------------------------------------

loc_140620733:                          ; CODE XREF: sub_14061F5D0+9D8↑j
                movzx   eax, word ptr [rcx+2]
                test    al, 4
                jz      loc_14061FFAE
                test    ax, ax
                jns     loc_1407FF074
                mov     eax, [rcx+10h]
                test    eax, eax
                jz      loc_14061FFAE
                lea     r14, [rcx+rax]
                jmp     loc_14061FFB1
; ---------------------------------------------------------------------------

loc_14062075C:                          ; CODE XREF: sub_14061F5D0+507↑j
                                        ; sub_14061F5D0+510↑j
                mov     eax, 0C8h
                mov     [rbp+230h+var_28C], eax

loc_140620764:                          ; CODE XREF: sub_14061F5D0+1DF6A8↓j
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 63416553h
                call    ExAllocatePoolWithTag
                mov     [rbp+230h+var_298], rax
                test    rax, rax
                jz      loc_1407FF240
                movzx   r9d, [rbp+230h+arg_28]
                lea     rcx, [rbp+230h+var_274]
                mov     [rsp+340h+var_2B8], rcx
                mov     r8d, edi
                lea     rcx, [rbp+230h+var_280]
                mov     rdx, r12
                mov     [rsp+340h+var_2C0], rcx
                mov     rcx, rsi
                mov     [rsp+340h+var_2C8], rax
                lea     rax, [rbp+230h+var_28C]
                mov     [rsp+340h+var_2D0], rax
                mov     eax, [rbp+230h+arg_20]
                mov     [rsp+340h+var_2D8], eax
                mov     rax, [rbp+230h+var_1E0]
                mov     [rsp+340h+var_2E0], rax
                mov     rax, [rbp+230h+var_238]
                mov     [rsp+340h+var_2E8], 2
                mov     [rsp+340h+var_2F0], rax
                mov     rax, [rbp+230h+var_1F8]
                mov     [rsp+340h+var_2F8], rax
                mov     rax, [rbp+230h+var_230]
                mov     [rsp+340h+var_300], rax
                mov     rax, [rbp+230h+var_240]
                mov     [rsp+340h+var_308], rax
                mov     rax, [rbp+230h+var_250]
                mov     [rsp+340h+var_310], rax
                mov     byte ptr [rsp+340h+var_318], r13b
                mov     byte ptr [rsp+340h+var_320], bl
                call    sub_140620D00
                mov     ebx, eax
                test    eax, eax
                jns     loc_140620B12
                mov     rcx, [rbp+230h+var_298]
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     r10d, r10d
                mov     [rbp+230h+var_298], r10
                cmp     ebx, 0C0000023h
                jz      loc_1407FEC64

loc_140620838:                          ; CODE XREF: sub_14061F5D0+154F↓j
                                        ; sub_14061F5D0+1DF69B↓j ...
                test    ebx, ebx
                jns     loc_140620B24
                cmp     ebx, 8000000Bh
                jnz     loc_1407FED9A
                mov     r11, [rbp+230h+var_258]
                jmp     loc_14061FAFD
; ---------------------------------------------------------------------------

loc_140620855:                          ; CODE XREF: sub_14061F5D0+5B5↑j
                                        ; sub_14061F5D0+5BE↑j
                movzx   r13d, [rbp+230h+var_27D]
                mov     eax, 0C8h
                mov     [rbp+230h+var_220], eax
                mov     r14d, r10d

loc_140620865:                          ; CODE XREF: sub_14061F5D0+1DF758↓j
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 63416553h
                call    ExAllocatePoolWithTag
                mov     [rbp+230h+var_270], rax
                test    rax, rax
                jz      loc_1407FF23A
                movzx   r9d, [rbp+230h+arg_28]
                lea     rcx, [rbp+230h+var_1A8]
                mov     [rsp+340h+var_2B8], rcx
                mov     r8d, esi
                lea     rcx, [rbp+230h+var_268]
                mov     rdx, r15
                mov     [rsp+340h+var_2C0], rcx
                mov     rcx, rdi
                mov     [rsp+340h+var_2C8], rax
                lea     rax, [rbp+230h+var_220]
                mov     [rsp+340h+var_2D0], rax
                mov     eax, [rbp+230h+arg_20]
                mov     [rsp+340h+var_2D8], eax
                mov     rax, [rbp+230h+var_1E0]
                mov     [rsp+340h+var_2E0], rax
                mov     rax, [rbp+230h+var_238]
                mov     [rsp+340h+var_2E8], 2
                mov     [rsp+340h+var_2F0], rax
                mov     rax, [rbp+230h+var_1F8]
                mov     [rsp+340h+var_2F8], rax
                mov     rax, [rbp+230h+var_230]
                mov     [rsp+340h+var_300], rax
                mov     rax, [rbp+230h+var_240]
                mov     [rsp+340h+var_308], rax
                mov     rax, [rbp+230h+var_250]
                mov     [rsp+340h+var_310], rax
                mov     byte ptr [rsp+340h+var_318], r12b
                mov     byte ptr [rsp+340h+var_320], r13b
                call    sub_140620D00
                mov     ebx, eax
                test    eax, eax
                jns     loc_140620B61
                mov     rcx, [rbp+230h+var_270]
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     r10d, r10d
                mov     [rbp+230h+var_270], r10
                cmp     ebx, 0C0000023h
                jz      loc_1407FED18

loc_14062093D:                          ; CODE XREF: sub_14061F5D0+1DF74F↓j
                mov     rdi, r10

loc_140620940:                          ; CODE XREF: sub_14061F5D0+15A2↓j
                                        ; sub_14061F5D0+1DF772↓j
                mov     [rbp+230h+var_1EC], ebx
                test    ebx, ebx
                jns     loc_140620B77
                cmp     ebx, 8000000Bh
                jnz     loc_1407FED9A
                mov     r11, [rbp+230h+var_258]
                jmp     loc_14061FBA2
; ---------------------------------------------------------------------------

loc_140620960:                          ; CODE XREF: sub_14061F5D0+840↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                xor     eax, eax
                mov     edi, eax
                cmp     ebx, 0C0000023h
                jnz     loc_14061FE20
                jmp     loc_1407FF00C
; ---------------------------------------------------------------------------

loc_14062097F:                          ; CODE XREF: sub_14061F5D0+A5C↑j
                test    rbx, rbx
                jnz     loc_140620032
                jmp     loc_1407FF0D5
; ---------------------------------------------------------------------------

loc_14062098D:                          ; CODE XREF: sub_14061F5D0+1C6↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx]
                mov     dl, 1
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceSharedLite
                mov     rdx, [rbx]
                test    rdx, rdx
                jz      loc_14061F79C
                cmp     dword ptr [rbx+8], 1
                jz      loc_140620BC7

loc_1406209C1:                          ; CODE XREF: sub_14061F5D0+15FB↓j
                mov     rdi, [rbx+10h]
                jmp     loc_14061F7A3
; ---------------------------------------------------------------------------

loc_1406209CA:                          ; CODE XREF: sub_14061F5D0+3ED↑j
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                jmp     loc_14061F9C3
; ---------------------------------------------------------------------------

loc_1406209DD:                          ; CODE XREF: sub_14061F5D0+DA1↑j
                mov     rcx, [rbp+230h+var_2A8]
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     r9d, r9d
                mov     [rbp+230h+var_2A8], r9
                cmp     ebx, 0C0000023h
                jnz     loc_140620384
                inc     r15d
                cmp     r15d, 2
                jnb     loc_140620384
                mov     eax, [rbp+230h+var_260]
                movzx   ebx, [rbp+230h+var_2A0]
                jmp     loc_1406202C1
; ---------------------------------------------------------------------------

loc_140620A14:                          ; CODE XREF: sub_14061F5D0+C57↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     loc_14062022D
; ---------------------------------------------------------------------------

loc_140620A20:                          ; CODE XREF: sub_14061F5D0+DB6↑j
                cmp     ebx, 8000000Bh
                jnz     loc_1407FED9A
                mov     r15d, [rbp+230h+var_28C]
                mov     rdx, [rbp+230h+var_258]
                mov     r8d, [rbp+230h+arg_30]
                jmp     loc_14061FFCA
; ---------------------------------------------------------------------------

loc_140620A40:                          ; CODE XREF: sub_14061F5D0+430↑j
                mov     [rbp+230h+var_27F], 1
                jmp     loc_14061FA26
; ---------------------------------------------------------------------------

loc_140620A49:                          ; CODE XREF: sub_14061F5D0+E71↑j
                mov     r15d, r9d
                mov     r13d, 2000h
                jmp     loc_14061FD40
; ---------------------------------------------------------------------------

loc_140620A57:                          ; CODE XREF: sub_14061F5D0+AA6↑j
                test    r8b, 10h
                jnz     loc_14062007C
                mov     rdx, [rbp+230h+var_250]
                movzx   r8d, dil
                mov     rcx, rsi
                call    sub_14070166C
                test    al, al
                jnz     loc_14062007C
                jmp     loc_1407FF1EB
; ---------------------------------------------------------------------------

loc_140620A7E:                          ; CODE XREF: sub_14061F5D0+5F6↑j
                test    ax, ax
                jns     loc_1407FED8C
                mov     eax, [r11+0Ch]
                test    eax, eax
                jz      loc_1407FED84
                lea     rcx, [r11+rax]
                jmp     loc_14061FBCF
; ---------------------------------------------------------------------------

loc_140620A9C:                          ; CODE XREF: sub_14061F5D0+4E9↑j
                test    cx, cx
                jns     loc_1407FEC52
                mov     eax, [r11+0Ch]
                test    eax, eax
                jz      loc_1407FEC4A
                lea     r12, [r11+rax]
                jmp     loc_14061FAC2
; ---------------------------------------------------------------------------

loc_140620ABA:                          ; CODE XREF: sub_14061F5D0+596↑j
                test    dx, dx
                jns     loc_1407FED06
                mov     eax, [r11+0Ch]
                test    eax, eax
                jz      loc_1407FECFE
                lea     r15, [r11+rax]
                jmp     loc_14061FB6F
; ---------------------------------------------------------------------------

loc_140620AD8:                          ; CODE XREF: sub_14061F5D0+650↑j
                test    ax, ax
                jns     loc_1407FEF1E
                mov     eax, [rsi+0Ch]
                test    eax, eax
                jz      loc_1407FEF16
                lea     rdi, [rsi+rax]
                jmp     loc_14061FC29
; ---------------------------------------------------------------------------

loc_140620AF5:                          ; CODE XREF: sub_14061F5D0+E1F↑j
                test    ax, ax
                jns     loc_1407FEF97
                mov     eax, [rsi+0Ch]
                test    eax, eax
                jz      loc_1407FEF90
                lea     rcx, [rsi+rax]
                jmp     loc_1406203F7
; ---------------------------------------------------------------------------

loc_140620B12:                          ; CODE XREF: sub_14061F5D0+1244↑j
                cmp     [rbp+230h+var_28C], 0
                jz      loc_1407FEC7D
                xor     r10d, r10d
                jmp     loc_140620838
; ---------------------------------------------------------------------------

loc_140620B24:                          ; CODE XREF: sub_14061F5D0+126A↑j
                mov     eax, [rbp+230h+var_274]
                mov     edx, 8030h
                test    al, 8
                mov     [rbp+230h+var_290], 1
                mov     ecx, 8010h
                cmovnz  ecx, edx
                mov     edx, eax
                and     edx, 400h
                add     edx, edx
                bt      eax, 0Ch
                jb      loc_1407FEC94
                mov     eax, r10d

loc_140620B51:                          ; CODE XREF: sub_14061F5D0+1DF6C9↓j
                mov     r11, [rbp+230h+var_258]
                or      edx, eax
                or      edx, ecx
                mov     [rbp+230h+var_28C], edx
                jmp     loc_14061FB22
; ---------------------------------------------------------------------------

loc_140620B61:                          ; CODE XREF: sub_14061F5D0+1349↑j
                cmp     [rbp+230h+var_220], 0
                jz      loc_1407FED2D
                mov     rdi, [rbp+230h+var_270]
                xor     r10d, r10d
                jmp     loc_140620940
; ---------------------------------------------------------------------------

loc_140620B77:                          ; CODE XREF: sub_14061F5D0+1375↑j
                mov     r11, [rbp+230h+var_258]
                mov     [rbp+230h+var_277], 1
                jmp     loc_14061FBB4
; ---------------------------------------------------------------------------

loc_140620B84:                          ; CODE XREF: sub_14061F5D0+8F2↑j
                test    r14, r14
                jz      loc_14061FEC8
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_14061FEC8
; ---------------------------------------------------------------------------

loc_140620B9C:                          ; CODE XREF: sub_14061F5D0+C94↑j
                mov     rax, [rbp+230h+var_270]
                test    rax, rax
                jz      loc_14062026A
                xor     edx, edx
                mov     rcx, rax
                call    ExFreePoolWithTag
                jmp     loc_14062026A
; ---------------------------------------------------------------------------

loc_140620BB8:                          ; CODE XREF: sub_14061F5D0+CA1↑j
                cmp     [rbp+230h+var_276], 0
                jz      loc_140620277
                jmp     loc_1407FF265
; ---------------------------------------------------------------------------

loc_140620BC7:                          ; CODE XREF: sub_14061F5D0+13EB↑j
                mov     [rbp+230h+var_2AE], 1
                jmp     loc_1406209C1
; ---------------------------------------------------------------------------

loc_140620BD0:                          ; CODE XREF: sub_14061F5D0+C61↑j
                mov     rcx, [rbp+230h+var_1C0]
                test    rcx, rcx
                jz      loc_140620237
                jmp     loc_1407FF258
; ---------------------------------------------------------------------------

loc_140620BE2:                          ; CODE XREF: sub_14061F5D0+FE3↑j
                mov     r12, [rdx+20h]
                jmp     loc_14061FFA1
; ---------------------------------------------------------------------------

loc_140620BEB:                          ; CODE XREF: sub_14061F5D0+613↑j
                lea     rdx, [rax+8]
                test    rdx, rdx
                jz      loc_14061FBE9
                lea     r9, [rbp+230h+var_1EC]
                mov     rcx, r13
                call    sub_140361F40
                test    al, al
                jnz     loc_14061FBE9
                jmp     loc_1407FED95
; ---------------------------------------------------------------------------

loc_140620C11:                          ; CODE XREF: sub_14061F5D0+61F↑j
                mov     r11, [rbp+230h+var_258]
                xor     r10d, r10d
                jmp     loc_14061FBBF
; ---------------------------------------------------------------------------

loc_140620C1D:                          ; CODE XREF: sub_14061F5D0+A8B↑j
                test    edi, edi
                jnz     loc_140620061
                test    al, al
                jz      loc_140620061
                jmp     loc_1407FF0E3
; ---------------------------------------------------------------------------

loc_140620C32:                          ; CODE XREF: sub_14061F5D0+A18↑j
                test    r14b, 4
                jz      loc_1407FF07D
                test    r14w, r14w
                jns     loc_1407FF08F
                mov     eax, [rdx+10h]
                test    eax, eax
                jz      loc_1407FF086
                add     rax, rdx

loc_140620C54:                          ; CODE XREF: sub_14061F5D0+1DFAC3↓j
                mov     [rbp+230h+var_2A8], rax

loc_140620C58:                          ; CODE XREF: sub_14061F5D0+1DFAB1↓j
                                        ; sub_14061F5D0+1DFABA↓j
                and     r14d, 1000h
                mov     [rbp+230h+var_27E], 1
                or      r14d, ecx
                jmp     loc_140620001
; ---------------------------------------------------------------------------

loc_140620C6B:                          ; CODE XREF: sub_14061F5D0+FEE↑j
                mov     r12, r9
                jmp     loc_14061FFA1
; ---------------------------------------------------------------------------

loc_140620C73:                          ; CODE XREF: sub_14061F5D0+DAB↑j
                mov     rcx, [rbp+230h+var_2A8]
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     r9d, r9d
                mov     [rbp+230h+var_2A8], r9
                jmp     loc_140620384
; ---------------------------------------------------------------------------

loc_140620C8A:                          ; CODE XREF: sub_14061F5D0+B0B↑j
                                        ; sub_14061F5D0+B14↑j
                mov     edi, ecx
                jmp     loc_1406200F4
; ---------------------------------------------------------------------------

loc_140620C91:                          ; CODE XREF: sub_14061F5D0+BC7↑j
                xor     eax, eax
                mov     [rdx+10h], eax

loc_140620C96:                          ; CODE XREF: sub_14061F5D0+BBE↑j
                movzx   r12d, [rbp+230h+var_2B0]
                jmp     loc_1406201E0
; ---------------------------------------------------------------------------

loc_140620CA0:                          ; CODE XREF: sub_14061F5D0+FA6↑j
                mov     rcx, [rbp+230h+var_208]
                lea     rax, [rbp+230h+var_1AC]
                mov     [rsp+340h+var_2F8], rax
                mov     r9d, 40000h
                lea     rax, [rbp+230h+var_1B0]
                xor     r8d, r8d
                mov     [rsp+340h+var_300], rax
                mov     rdx, rsi
                mov     rax, [rbp+230h+var_238]
                mov     byte ptr [rsp+340h+var_308], r15b
                mov     [rsp+340h+var_310], rax
                mov     [rsp+340h+var_318], rbx
                mov     dword ptr [rsp+340h+var_320], ebx
                call    SeAccessCheck
                test    al, al
                jnz     loc_14062057C
                jmp     loc_1407FF0B3
; } // starts at 1406204C6
sub_14061F5D0   endp

; ---------------------------------------------------------------------------
algn_140620CF1:                         ; DATA XREF: .pdata:00000001400FDB84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140620D00   proc near               ; CODE XREF: sub_14061F5D0+837↑p
                                        ; sub_14061F5D0+D98↑p ...

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = byte ptr -68h
var_67          = byte ptr -67h
var_66          = word ptr -66h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h
arg_58          = dword ptr  60h
arg_60          = qword ptr  68h
arg_68          = dword ptr  70h
arg_70          = qword ptr  78h
arg_78          = qword ptr  80h
arg_80          = qword ptr  88h
arg_88          = qword ptr  90h

; FUNCTION CHUNK AT 00000001407FF286 SIZE 000000DE BYTES

                mov     rax, rsp
                mov     [rax+20h], r9b
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A8h
                mov     r13, [rsp+0E8h+arg_70]
                xor     r15d, r15d
                mov     rdi, [rsp+0E8h+arg_78]
                xor     r11b, r11b
                mov     esi, r15d
                mov     [rax-64h], r15d
                mov     [rax-5Ch], r15d
                mov     r12d, 2
                mov     ebx, [r13+0]
                mov     ebp, r8d
                mov     [rax-50h], r15
                mov     r10, rdx
                mov     [rax-58h], r15
                mov     r8d, r15d
                mov     [rax-68h], sil
                mov     r14d, r15d
                lea     eax, [rbx-8]
                mov     [rsp+0E8h+var_66], r15w
                mov     [rsp+0E8h+arg_10], r11b
                mov     [rsp+0E8h+var_67], 1
                mov     [rsp+0E8h+var_60], r12d
                cmp     eax, 0FFF4h
                ja      short loc_140620DC4
                mov     r8d, ebx
                xor     edx, edx
                mov     rcx, rdi
                call    memset
                mov     r8d, [rsp+0E8h+var_64]
                mov     eax, 0FFFCh
                mov     r10, [rsp+0E8h+arg_8]
                and     bx, ax
                mov     [rdi+2], bx
                xor     r11b, r11b
                mov     [rdi], r12w
                mov     [rdi+4], r15d

loc_140620DC4:                          ; CODE XREF: sub_140620D00+8E↑j
                movzx   ebx, [rsp+0E8h+arg_20]
                mov     r15d, ebp
                mov     r9, [rsp+0E8h+arg_80]
                movzx   eax, bl
                neg     al
                mov     rax, [rsp+0E8h+arg_88]
                sbb     ecx, ecx
                and     ecx, 400h
                mov     [r9], sil
                mov     [rax], ecx
                and     r15d, 8
                jnz     loc_1406210A3
                mov     edx, ebp
                and     edx, 1000h
                jnz     loc_140621136

loc_140620E09:                          ; CODE XREF: sub_140620D00+447↓j
                mov     eax, ebp
                and     eax, 1004h
                jz      loc_1406210A3
                test    r10, r10
                jz      loc_14062114C
                movzx   eax, byte ptr [r10]
                cmp     eax, r12d
                jb      short loc_140620E2F
                mov     [rsp+0E8h+var_60], eax

loc_140620E2F:                          ; CODE XREF: sub_140620D00+126↑j
                mov     [rsp+0E8h+var_67], sil
                test    bl, bl
                jz      loc_1406210DD
                test    edx, edx
                jnz     loc_140621168
                mov     r12d, 1
                xor     r9b, r9b
                movzx   eax, r12b

loc_140620E54:                          ; CODE XREF: sub_140620D00+3E2↓j
                                        ; sub_140620D00+46D↓j
                mov     rdx, [rsp+0E8h+arg_50]
                lea     rcx, [rsp+0E8h+var_64]
                mov     [rsp+0E8h+var_80], rdi
                mov     r8d, r12d
                mov     [rsp+0E8h+var_88], rcx
                mov     ecx, [rsp+0E8h+arg_58]
                mov     [rsp+0E8h+var_90], ecx
                movzx   ecx, [rsp+0E8h+arg_18]
                mov     byte ptr [rsp+0E8h+var_98], sil
                mov     byte ptr [rsp+0E8h+var_A0], cl
                mov     rcx, [rsp+0E8h+arg_48]
                mov     [rsp+0E8h+var_A8], rcx
                mov     rcx, [rsp+0E8h+arg_40]
                mov     [rsp+0E8h+var_B0], rcx
                mov     rcx, [rsp+0E8h+arg_38]
                mov     [rsp+0E8h+var_B8], rcx
                mov     rcx, [rsp+0E8h+arg_30]
                mov     [rsp+0E8h+var_C0], rcx
                mov     rcx, r10
                mov     byte ptr [rsp+0E8h+var_C8], al
                call    sub_1406218D0
                mov     r8d, [rsp+0E8h+var_64]
                mov     esi, r8d
                cmp     eax, 0C0000023h
                jz      loc_14062112E
                test    eax, eax
                js      loc_140620F9F
                xor     r12b, r12b

loc_140620EEE:                          ; CODE XREF: sub_140620D00+431↓j
                cmp     [rsp+0E8h+arg_28], r14b
                jnz     loc_1407FF286

loc_140620EFC:                          ; CODE XREF: sub_140620D00+1DE589↓j
                                        ; sub_140620D00+1DE5BB↓j
                mov     r10, [rsp+0E8h+arg_8]
                mov     r9, [rsp+0E8h+arg_80]
                movzx   r11d, [rsp+0E8h+arg_10]

loc_140620F15:                          ; CODE XREF: sub_140620D00+490↓j
                mov     ecx, [rsp+0E8h+arg_58]
                cmp     ecx, 1
                jz      loc_1406210E7

loc_140620F25:                          ; CODE XREF: sub_140620D00+463↓j
                cmp     ecx, 2
                jz      loc_1406210F0

loc_140620F2E:                          ; CODE XREF: sub_140620D00+3A6↓j
                                        ; sub_140620D00+3EB↓j ...
                test    bl, bl
                jz      loc_1406210AB

loc_140620F36:                          ; CODE XREF: sub_140620D00+3AF↓j
                test    r15d, r15d
                jnz     short loc_140620F44
                test    bl, bl
                jz      short loc_140620F51
                test    r11b, r11b
                jnz     short loc_140620F51

loc_140620F44:                          ; CODE XREF: sub_140620D00+239↑j
                                        ; sub_140620D00+3B5↓j
                mov     r10, [rsp+0E8h+arg_0]
                test    r10, r10
                jnz     short loc_140620FB4

loc_140620F51:                          ; CODE XREF: sub_140620D00+23D↑j
                                        ; sub_140620D00+242↑j
                mov     ebx, [rsp+0E8h+var_64]
                mov     ebp, [rsp+0E8h+var_60]

loc_140620F5F:                          ; CODE XREF: sub_140620D00+39E↓j
                lea     eax, [r14+rsi]
                test    eax, eax
                jz      loc_1406210BA

loc_140620F6B:                          ; CODE XREF: sub_140620D00+47A↓j
                add     rax, 8
                cmp     rax, 0FFFFh
                ja      loc_1407FF35A
                lea     ecx, [rbx+8]
                add     ecx, r14d
                mov     [r13+0], ecx
                test    r12b, r12b
                jnz     loc_14062111C
                add     si, 8
                mov     [rdi], bpl
                add     si, r14w
                mov     [rdi+2], si

loc_140620F9D:                          ; CODE XREF: sub_140620D00+488↓j
                xor     eax, eax

loc_140620F9F:                          ; CODE XREF: sub_140620D00+1E5↑j
                                        ; sub_140620D00+37B↓j ...
                add     rsp, 0A8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140620FB4:                          ; CODE XREF: sub_140620D00+24F↑j
                movzx   ecx, byte ptr [r10]
                lea     eax, [rcx-2]
                cmp     al, 2
                ja      loc_1407FF350
                mov     ebp, [rsp+0E8h+var_60]
                cmp     ebp, ecx
                ja      short loc_140620FD7
                mov     [rsp+0E8h+var_60], ecx
                mov     ebp, ecx

loc_140620FD7:                          ; CODE XREF: sub_140620D00+2CC↑j
                mov     ecx, [rsp+0E8h+arg_58]
                lea     rax, [rsp+0E8h+var_68]
                mov     r9, [rsp+0E8h+arg_30]
                movzx   r8d, bl
                movzx   edx, [rsp+0E8h+arg_18]
                mov     [rsp+0E8h+var_78], rax
                lea     rax, [rsp+0E8h+var_5C]
                mov     [rsp+0E8h+var_80], rdi
                mov     [rsp+0E8h+var_88], rax
                mov     eax, [rsp+0E8h+arg_68]
                mov     byte ptr [rsp+0E8h+var_90], r12b
                mov     [rsp+0E8h+var_98], ecx
                mov     rcx, r10
                mov     [rsp+0E8h+var_A0], eax
                mov     rax, [rsp+0E8h+arg_60]
                mov     [rsp+0E8h+var_A8], rax
                mov     rax, [rsp+0E8h+arg_50]
                mov     [rsp+0E8h+var_B0], rax
                mov     rax, [rsp+0E8h+arg_48]
                mov     [rsp+0E8h+var_B8], rax
                mov     rax, [rsp+0E8h+arg_40]
                mov     [rsp+0E8h+var_C0], rax
                mov     rax, [rsp+0E8h+arg_38]
                mov     [rsp+0E8h+var_C8], rax
                call    sub_1406232A0
                cmp     eax, 0C0000023h
                jz      loc_140621126
                test    eax, eax
                js      loc_140620F9F

loc_140621081:                          ; CODE XREF: sub_140620D00+429↓j
                mov     ebx, [rsp+0E8h+var_64]
                cmp     [rsp+0E8h+arg_28], r14b
                jnz     loc_1407FF2E0

loc_140621096:                          ; CODE XREF: sub_140620D00+1DE5E2↓j
                                        ; sub_140620D00+1DE5F0↓j ...
                mov     r14d, [rsp+0E8h+var_5C]
                jmp     loc_140620F5F
; ---------------------------------------------------------------------------

loc_1406210A3:                          ; CODE XREF: sub_140620D00+F5↑j
                                        ; sub_140620D00+110↑j
                xor     r12b, r12b
                jmp     loc_140620F2E
; ---------------------------------------------------------------------------

loc_1406210AB:                          ; CODE XREF: sub_140620D00+230↑j
                test    bpl, 4
                jnz     loc_140620F36
                jmp     loc_140620F44
; ---------------------------------------------------------------------------

loc_1406210BA:                          ; CODE XREF: sub_140620D00+265↑j
                mov     rcx, [rsp+0E8h+arg_80]
                cmp     byte ptr [rcx], 0
                jnz     loc_140621172
                mov     dword ptr [r13+0], 0
                mov     eax, 8000000Bh
                jmp     loc_140620F9F
; ---------------------------------------------------------------------------

loc_1406210DD:                          ; CODE XREF: sub_140620D00+139↑j
                xor     r9b, r9b
                xor     al, al
                jmp     loc_140620E54
; ---------------------------------------------------------------------------

loc_1406210E7:                          ; CODE XREF: sub_140620D00+21F↑j
                                        ; sub_140620D00+3F3↓j ...
                mov     byte ptr [r9], 1
                jmp     loc_140620F2E
; ---------------------------------------------------------------------------

loc_1406210F0:                          ; CODE XREF: sub_140620D00+228↑j
                test    r8d, r8d
                jnz     short loc_1406210E7
                test    r11b, r11b
                jnz     short loc_1406210E7
                test    r8d, r8d
                jnz     loc_140620F2E
                test    r10, r10
                jz      loc_140620F2E
                cmp     [r10+4], r14w
                jnz     loc_140620F2E
                jmp     loc_1407FF2D7
; ---------------------------------------------------------------------------

loc_14062111C:                          ; CODE XREF: sub_140620D00+288↑j
                mov     eax, 0C0000023h
                jmp     loc_140620F9F
; ---------------------------------------------------------------------------

loc_140621126:                          ; CODE XREF: sub_140620D00+373↑j
                mov     r12b, 1
                jmp     loc_140621081
; ---------------------------------------------------------------------------

loc_14062112E:                          ; CODE XREF: sub_140620D00+1DD↑j
                mov     r12b, 1
                jmp     loc_140620EEE
; ---------------------------------------------------------------------------

loc_140621136:                          ; CODE XREF: sub_140620D00+103↑j
                mov     r11b, 1
                bts     ecx, 0Ch
                mov     [rsp+0E8h+arg_10], r11b
                mov     [rax], ecx
                jmp     loc_140620E09
; ---------------------------------------------------------------------------

loc_14062114C:                          ; CODE XREF: sub_140620D00+119↑j
                test    bl, bl
                jz      short loc_14062118D
                mov     ecx, [rsp+0E8h+arg_58]
                cmp     ecx, 1
                jz      loc_1407FF2C0
                xor     r12b, r12b
                jmp     loc_140620F25
; ---------------------------------------------------------------------------

loc_140621168:                          ; CODE XREF: sub_140620D00+141↑j
                mov     r9b, 10h
                mov     al, 1
                jmp     loc_140620E54
; ---------------------------------------------------------------------------

loc_140621172:                          ; CODE XREF: sub_140620D00+3C5↑j
                cmp     [rsp+0E8h+var_67], 0
                jz      loc_140620F6B
                mov     dword ptr [r13+0], 0
                jmp     loc_140620F9D
; ---------------------------------------------------------------------------

loc_14062118D:                          ; CODE XREF: sub_140620D00+44E↑j
                xor     r12b, r12b
                jmp     loc_140620F15
sub_140620D00   endp

; ---------------------------------------------------------------------------
algn_140621195:                         ; DATA XREF: .rdata:000000014004EB1C↑o
                                        ; .pdata:00000001400FDB90↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406211A0   proc near               ; CODE XREF: sub_1405F0AD8+44↑p
                                        ; sub_1405F0AD8+83↑p ...
                mov     r10, rdx
                mov     r9, rcx
                test    rcx, rcx
                jz      short locret_14062121A
                xor     r8d, r8d
                lea     rax, [rcx+8]
                cmp     r8w, [rcx+4]
                jnb     short locret_14062121A
                mov     r11d, 673h

loc_1406211BF:                          ; CODE XREF: sub_1406211A0+78↓j
                movzx   ecx, byte ptr [rax]
                cmp     cl, 0Bh
                jnb     short loc_140621222

loc_1406211C7:                          ; CODE XREF: sub_1406211A0+8A↓j
                test    byte ptr [rax+1], 8
                jnz     short loc_140621206
                mov     edx, [rax+4]
                test    edx, edx
                js      short loc_14062122C

loc_1406211D4:                          ; CODE XREF: sub_1406211A0+92↓j
                bt      edx, 1Eh
                jb      short loc_140621241

loc_1406211DA:                          ; CODE XREF: sub_1406211A0+AC↓j
                bt      edx, 1Dh
                jb      short loc_140621234

loc_1406211E0:                          ; CODE XREF: sub_1406211A0+9F↓j
                bt      edx, 1Ch
                jb      short loc_14062121C

loc_1406211E6:                          ; CODE XREF: sub_1406211A0+80↓j
                and     edx, 0FFFFFFFh
                mov     [rax+4], edx
                movzx   ecx, byte ptr [rax]
                cmp     cl, 0Ah
                ja      short loc_14062124E
                bt      r11d, ecx
                jnb     short loc_14062124E
                mov     ecx, [r10+0Ch]

loc_140621201:                          ; CODE XREF: sub_1406211A0+B6↓j
                and     ecx, edx
                mov     [rax+4], ecx

loc_140621206:                          ; CODE XREF: sub_1406211A0+2B↑j
                                        ; sub_1406211A0+88↓j
                movzx   ecx, word ptr [rax+2]
                inc     r8d
                add     rax, rcx
                movzx   ecx, word ptr [r9+4]
                cmp     r8d, ecx
                jb      short loc_1406211BF

locret_14062121A:                       ; CODE XREF: sub_1406211A0+9↑j
                                        ; sub_1406211A0+17↑j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14062121C:                          ; CODE XREF: sub_1406211A0+44↑j
                or      edx, [r10+0Ch]
                jmp     short loc_1406211E6
; ---------------------------------------------------------------------------

loc_140621222:                          ; CODE XREF: sub_1406211A0+25↑j
                sub     cl, 0Dh
                cmp     cl, 1
                ja      short loc_140621206
                jmp     short loc_1406211C7
; ---------------------------------------------------------------------------

loc_14062122C:                          ; CODE XREF: sub_1406211A0+32↑j
                or      edx, [r10]
                mov     [rax+4], edx
                jmp     short loc_1406211D4
; ---------------------------------------------------------------------------

loc_140621234:                          ; CODE XREF: sub_1406211A0+3E↑j
                mov     ecx, [r10+8]
                or      ecx, edx
                mov     edx, ecx
                mov     [rax+4], ecx
                jmp     short loc_1406211E0
; ---------------------------------------------------------------------------

loc_140621241:                          ; CODE XREF: sub_1406211A0+38↑j
                mov     ecx, [r10+4]
                or      ecx, edx
                mov     edx, ecx
                mov     [rax+4], ecx
                jmp     short loc_1406211DA
; ---------------------------------------------------------------------------

loc_14062124E:                          ; CODE XREF: sub_1406211A0+55↑j
                                        ; sub_1406211A0+5B↑j
                mov     ecx, [r10+0Ch]
                bts     ecx, 18h
                jmp     short loc_140621201
sub_1406211A0   endp

; ---------------------------------------------------------------------------
algn_140621258:                         ; DATA XREF: .pdata:00000001400FDB9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140621260   proc near               ; CODE XREF: sub_14061F5D0+8A2↑p
                                        ; sub_140623930+6D8↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 00000001407FF364 SIZE 00000106 BYTES

                mov     [rsp+arg_10], r8
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12, [rsp+68h+arg_28]
                xor     edi, edi
                mov     r15, [rsp+68h+arg_20]
                mov     r13, r9
                mov     r9d, 2
                mov     rbx, rdx
                mov     [rsp+68h+arg_0], r9d
                mov     rsi, rcx
                mov     r14d, edi
                test    rcx, rcx
                jnz     short loc_1406212AB
                test    rdx, rdx
                jz      loc_140621485

loc_1406212AB:                          ; CODE XREF: sub_140621260+40↑j
                                        ; sub_140621260+228↓j ...
                mov     r11, [rsp+68h+arg_38]
                mov     edx, 8

loc_1406212B8:                          ; DATA XREF: .rdata:000000014004EB48↑o
                                        ; .rdata:000000014004EB5C↑o ...
                mov     [rsp+68h+arg_8], rbp
                lea     rcx, cs:140000000h
                test    rsi, rsi
                jnz     loc_140621533

loc_1406212CD:                          ; CODE XREF: sub_140621260+2DD↓j
                                        ; sub_140621260+300↓j
                test    rbx, rbx
                jz      short loc_14062131D
                lea     rcx, [rbx+8]
                mov     ebp, edi
                cmp     di, [rbx+4]
                jnb     short loc_14062131D

loc_1406212DE:                          ; CODE XREF: sub_140621260+BB↓j
                cmp     byte ptr [rcx], 11h
                jnz     short loc_14062130C
                movzx   r10d, word ptr [rcx+2]
                add     r10d, edx
                cmp     r10d, edx
                jb      loc_1407FF37C
                mov     edx, r10d
                test    r11, r11
                jz      short loc_140621300
                or      dword ptr [r11], 10h

loc_140621300:                          ; CODE XREF: sub_140621260+9A↑j
                movzx   eax, byte ptr [rbx]
                cmp     eax, r9d
                ja      loc_140621751

loc_14062130C:                          ; CODE XREF: sub_140621260+81↑j
                                        ; sub_140621260+4F8↓j
                movzx   eax, word ptr [rcx+2]
                inc     ebp
                add     rcx, rax
                movzx   eax, word ptr [rbx+4]
                cmp     ebp, eax
                jb      short loc_1406212DE

loc_14062131D:                          ; CODE XREF: sub_140621260+70↑j
                                        ; sub_140621260+7C↑j
                test    r15, r15
                jnz     loc_1406215C7

loc_140621326:                          ; CODE XREF: sub_140621260+372↓j
                                        ; sub_140621260+3B7↓j
                test    r12, r12
                jnz     loc_14062166A

loc_14062132F:                          ; CODE XREF: sub_140621260+418↓j
                                        ; sub_140621260+43A↓j
                test    r8, r8
                jnz     loc_1406214C7

loc_140621338:                          ; CODE XREF: sub_140621260+273↓j
                                        ; sub_140621260+294↓j
                test    r13, r13
                jnz     loc_1406216A2

loc_140621341:                          ; CODE XREF: sub_140621260+44E↓j
                                        ; sub_140621260+46F↓j
                lea     ebp, [rdx+3]
                cmp     ebp, edx
                jb      loc_1407FF37C
                and     ebp, 0FFFFFFFCh
                mov     ecx, 1
                mov     edx, ebp
                mov     r8d, 64536553h
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_1407FF3FB
                cmp     ebp, 8
                jb      loc_1407FF405
                mov     eax, [rsp+68h+arg_0]
                add     eax, 0FFFFFFFEh
                cmp     eax, 2
                ja      loc_1407FF453
                cmp     ebp, 0FFFCh
                ja      loc_1407FF453
                mov     r8d, ebp
                xor     edx, edx
                mov     rcx, r14
                call    memset
                mov     eax, [rsp+68h+arg_0]
                lea     rcx, [r14+8]
                mov     [r14], al
                movzx   eax, bp
                mov     [r14+2], ax
                add     rax, r14
                mov     [r14+1], dil
                mov     [r14+4], edi
                mov     [rsp+68h+var_48], edi
                mov     [rsp+68h+var_40], rdi
                cmp     rcx, rax
                ja      short loc_1406213D0
                mov     [rsp+68h+var_40], rcx

loc_1406213D0:                          ; CODE XREF: sub_140621260+169↑j
                test    rsi, rsi
                jnz     loc_140621568

loc_1406213D9:                          ; CODE XREF: sub_140621260+316↓j
                                        ; sub_140621260+362↓j
                test    rbx, rbx
                jz      short loc_14062142F
                lea     rsi, [rbx+8]
                mov     ebp, edi
                cmp     di, [rbx+4]
                jnb     short loc_14062142F
                mov     r15, [rsp+68h+var_40]

loc_1406213EF:                          ; CODE XREF: sub_140621260+1C0↓j
                cmp     byte ptr [rsi], 11h
                movzx   eax, word ptr [rsi+2]
                jnz     short loc_140621412
                mov     r8d, eax
                mov     rdx, rsi
                mov     rcx, r15
                call    memmove
                inc     word ptr [r14+4]
                movzx   eax, word ptr [rsi+2]
                add     r15, rax

loc_140621412:                          ; CODE XREF: sub_140621260+196↑j
                movzx   eax, ax
                inc     ebp
                add     rsi, rax
                movzx   eax, word ptr [rbx+4]
                cmp     ebp, eax
                jb      short loc_1406213EF
                mov     [rsp+68h+var_40], r15
                mov     r15, [rsp+68h+arg_20]

loc_14062142F:                          ; CODE XREF: sub_140621260+17C↑j
                                        ; sub_140621260+188↑j
                mov     rsi, [rsp+68h+var_40]
                test    r15, r15
                jnz     loc_14062161F

loc_14062143D:                          ; CODE XREF: sub_140621260+3CA↓j
                                        ; sub_140621260+402↓j
                test    r12, r12
                jnz     loc_1406216D7

loc_140621446:                          ; CODE XREF: sub_140621260+484↓j
                                        ; sub_140621260+4A7↓j
                mov     rbx, [rsp+68h+arg_10]
                test    rbx, rbx
                jnz     loc_1406214FC

loc_140621457:                          ; CODE XREF: sub_140621260+2A7↓j
                                        ; sub_140621260+2CB↓j
                test    r13, r13
                jnz     loc_14062170F

loc_140621460:                          ; CODE XREF: sub_140621260+4B8↓j
                mov     ebx, edi

loc_140621462:                          ; CODE XREF: sub_140621260+4E0↓j
                                        ; sub_140621260+1DE121↓j ...
                mov     rcx, [rsp+68h+arg_30]
                mov     eax, ebx
                mov     rbp, [rsp+68h+arg_8]
                mov     [rcx], r14
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_140621484  db 0CCh                 ; DATA XREF: .pdata:00000001400FDBB4↑o
                                        ; .pdata:00000001400FDBC0↑o
; ---------------------------------------------------------------------------

loc_140621485:                          ; CODE XREF: sub_140621260+45↑j
                test    r8, r8
                jnz     loc_1406212AB
                test    r13, r13
                jnz     loc_1406212AB
                test    r15, r15
                jnz     loc_1406212AB
                test    r12, r12
                jnz     loc_1406212AB
                mov     rax, [rsp+68h+arg_30]
                mov     [rax], rdi
                xor     eax, eax
                add     rsp, 30h
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

loc_1406214C7:                          ; CODE XREF: sub_140621260+D2↑j
                                        ; DATA XREF: .pdata:00000001400FDBC0↑o ...
                lea     rcx, [r8+8]
                mov     r10d, edi
                cmp     di, [r8+4]
                jnb     loc_140621338

loc_1406214D9:                          ; CODE XREF: sub_140621260+29A↓j
                cmp     byte ptr [rcx], 12h
                jz      loc_14062175D

loc_1406214E2:                          ; CODE XREF: sub_140621260+51D↓j
                                        ; sub_140621260+1DE167↓j
                movzx   eax, word ptr [rcx+2]
                inc     r10d
                add     rcx, rax
                movzx   eax, word ptr [r8+4]
                cmp     r10d, eax
                jnb     loc_140621338
                jmp     short loc_1406214D9
; ---------------------------------------------------------------------------

loc_1406214FC:                          ; CODE XREF: sub_140621260+1F1↑j
                lea     rbp, [rbx+8]
                mov     r15d, edi
                cmp     di, [rbx+4]
                jnb     loc_140621457

loc_14062150D:                          ; CODE XREF: sub_140621260+2D1↓j
                cmp     byte ptr [rbp+0], 12h
                movzx   eax, word ptr [rbp+2]
                jz      loc_140621788

loc_14062151B:                          ; CODE XREF: sub_140621260+542↓j
                movzx   eax, ax
                inc     r15d
                add     rbp, rax
                movzx   eax, word ptr [rbx+4]
                cmp     r15d, eax
                jnb     loc_140621457
                jmp     short loc_14062150D
; ---------------------------------------------------------------------------

loc_140621533:                          ; CODE XREF: sub_140621260+67↑j
                lea     r10, [rsi+8]
                mov     ebp, edi
                cmp     di, [rsi+4]
                jnb     loc_1406212CD

loc_140621543:                          ; CODE XREF: sub_140621260+306↓j
                movzx   eax, byte ptr [r10]
                cmp     eax, 10h
                jbe     loc_1406217A7

def_1406217C6:                          ; CODE XREF: sub_140621260+54D↓j
                                        ; sub_140621260+593↓j ...
                movzx   eax, word ptr [r10+2] ; jumptable 00000001406217C6 default case
                inc     ebp
                add     r10, rax
                movzx   eax, word ptr [rsi+4]
                cmp     ebp, eax
                jnb     loc_1406212CD
                jmp     short loc_140621543
; ---------------------------------------------------------------------------

loc_140621568:                          ; CODE XREF: sub_140621260+173↑j
                lea     rbp, [rsi+8]
                mov     ecx, edi
                mov     [rsp+68h+arg_0], ecx
                cmp     di, [rsi+4]
                jnb     loc_1406213D9
                mov     r12, [rsp+68h+var_40]
                lea     r15, cs:140000000h

loc_140621588:                          ; CODE XREF: sub_140621260+34B↓j
                movzx   eax, byte ptr [rbp+0]
                cmp     eax, 10h
                jbe     loc_1406217FE

def_140621817:                          ; CODE XREF: sub_140621260+5A4↓j
                                        ; sub_140621260+1DE1B0↓j
                movzx   eax, word ptr [rbp+2] ; jumptable 0000000140621817 default case

loc_140621599:                          ; CODE XREF: sub_140621260+5DD↓j
                movzx   eax, ax
                inc     ecx
                add     rbp, rax
                mov     [rsp+68h+arg_0], ecx
                movzx   eax, word ptr [rsi+4]
                cmp     ecx, eax
                jb      short loc_140621588
                mov     r15, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], r12
                mov     r12, [rsp+68h+arg_28]
                jmp     loc_1406213D9
; ---------------------------------------------------------------------------

loc_1406215C7:                          ; CODE XREF: sub_140621260+C0↑j
                lea     rcx, [r15+8]
                mov     ebp, edi
                cmp     di, [r15+4]
                jnb     loc_140621326

loc_1406215D8:                          ; CODE XREF: sub_140621260+3BD↓j
                cmp     byte ptr [rcx], 14h
                jnz     short loc_140621607
                movzx   r10d, word ptr [rcx+2]
                add     r10d, edx
                cmp     r10d, edx
                jb      loc_1407FF37C
                mov     edx, r10d
                test    r11, r11
                jnz     loc_140621745

loc_1406215FA:                          ; CODE XREF: sub_140621260+4EC↓j
                movzx   eax, byte ptr [r15]
                cmp     eax, r9d
                ja      loc_1407FF386

loc_140621607:                          ; CODE XREF: sub_140621260+37B↑j
                                        ; sub_140621260+1DE12D↓j
                movzx   eax, word ptr [rcx+2]
                inc     ebp
                add     rcx, rax
                movzx   eax, word ptr [r15+4]
                cmp     ebp, eax
                jnb     loc_140621326
                jmp     short loc_1406215D8
; ---------------------------------------------------------------------------

loc_14062161F:                          ; CODE XREF: sub_140621260+1D7↑j
                lea     rbx, [r15+8]
                mov     ebp, edi
                cmp     di, [r15+4]
                jnb     loc_14062143D

loc_140621630:                          ; CODE XREF: sub_140621260+408↓j
                cmp     byte ptr [rbx], 14h
                movzx   eax, word ptr [rbx+2]
                jnz     short loc_140621653
                mov     r8d, eax
                mov     rdx, rbx
                mov     rcx, rsi
                call    memmove
                inc     word ptr [r14+4]
                movzx   eax, word ptr [rbx+2]
                add     rsi, rax

loc_140621653:                          ; CODE XREF: sub_140621260+3D7↑j
                movzx   eax, ax
                inc     ebp
                add     rbx, rax
                movzx   eax, word ptr [r15+4]
                cmp     ebp, eax
                jnb     loc_14062143D
                jmp     short loc_140621630
; ---------------------------------------------------------------------------

loc_14062166A:                          ; CODE XREF: sub_140621260+C9↑j
                lea     rcx, [r12+8]
                mov     r10d, edi
                cmp     di, [r12+4]
                jnb     loc_14062132F

loc_14062167E:                          ; CODE XREF: sub_140621260+440↓j
                cmp     byte ptr [rcx], 15h
                jz      loc_1407FF392

loc_140621687:                          ; CODE XREF: sub_140621260+1DE15B↓j
                movzx   eax, word ptr [rcx+2]
                inc     r10d
                add     rcx, rax
                movzx   eax, word ptr [r12+4]
                cmp     r10d, eax
                jnb     loc_14062132F
                jmp     short loc_14062167E
; ---------------------------------------------------------------------------

loc_1406216A2:                          ; CODE XREF: sub_140621260+DB↑j
                lea     rcx, [r13+8]
                mov     r8d, edi
                cmp     di, [r13+4]
                jnb     loc_140621341

loc_1406216B4:                          ; CODE XREF: sub_140621260+475↓j
                cmp     byte ptr [rcx], 13h
                jz      loc_1407FF3CC

loc_1406216BD:                          ; CODE XREF: sub_140621260+1DE196↓j
                movzx   eax, word ptr [rcx+2]
                inc     r8d
                add     rcx, rax
                movzx   eax, word ptr [r13+4]
                cmp     r8d, eax
                jnb     loc_140621341
                jmp     short loc_1406216B4
; ---------------------------------------------------------------------------

loc_1406216D7:                          ; CODE XREF: sub_140621260+1E0↑j
                lea     rbx, [r12+8]
                mov     ebp, edi
                cmp     di, [r12+4]
                jnb     loc_140621446

loc_1406216EA:                          ; CODE XREF: sub_140621260+4AD↓j
                cmp     byte ptr [rbx], 15h
                movzx   eax, word ptr [rbx+2]
                jz      loc_1407FF415

loc_1406216F7:                          ; CODE XREF: sub_140621260+1DE1CF↓j
                movzx   eax, ax
                inc     ebp
                add     rbx, rax
                movzx   eax, word ptr [r12+4]
                cmp     ebp, eax
                jnb     loc_140621446
                jmp     short loc_1406216EA
; ---------------------------------------------------------------------------

loc_14062170F:                          ; CODE XREF: sub_140621260+1FA↑j
                lea     rbx, [r13+8]
                cmp     di, [r13+4]
                jnb     loc_140621460

loc_14062171E:                          ; CODE XREF: sub_140621260+4DA↓j
                cmp     byte ptr [rbx], 13h
                movzx   eax, word ptr [rbx+2]
                jz      loc_1407FF434

loc_14062172B:                          ; CODE XREF: sub_140621260+1DE1EE↓j
                movzx   eax, ax
                inc     edi
                add     rbx, rax
                movzx   eax, word ptr [r13+4]
                cmp     edi, eax
                jb      short loc_14062171E
                mov     ebx, [rsp+68h+var_48]
                jmp     loc_140621462
; ---------------------------------------------------------------------------

loc_140621745:                          ; CODE XREF: sub_140621260+394↑j
                or      dword ptr [r11], 80h
                jmp     loc_1406215FA
; ---------------------------------------------------------------------------

loc_140621751:                          ; CODE XREF: sub_140621260+A6↑j
                mov     r9d, eax
                mov     [rsp+68h+arg_0], eax
                jmp     loc_14062130C
; ---------------------------------------------------------------------------

loc_14062175D:                          ; CODE XREF: sub_140621260+27C↑j
                movzx   eax, word ptr [rcx+2]
                add     eax, edx
                cmp     eax, edx
                jb      loc_1407FF37C
                mov     edx, eax
                test    r11, r11
                jz      short loc_140621776
                or      dword ptr [r11], 20h

loc_140621776:                          ; CODE XREF: sub_140621260+510↑j
                movzx   eax, byte ptr [r8]
                cmp     eax, r9d
                jbe     loc_1406214E2
                jmp     loc_1407FF3C0
; ---------------------------------------------------------------------------

loc_140621788:                          ; CODE XREF: sub_140621260+2B5↑j
                mov     r8, rax
                mov     rdx, rbp
                mov     rcx, rsi
                call    memmove
                inc     word ptr [r14+4]
                movzx   eax, word ptr [rbp+2]
                add     rsi, rax
                jmp     loc_14062151B
; ---------------------------------------------------------------------------

loc_1406217A7:                          ; CODE XREF: sub_140621260+2EA↑j
                add     eax, 0FFFFFFFEh ; switch 15 cases
                cmp     eax, 0Eh
                ja      def_1406217C6   ; jumptable 00000001406217C6 default case
                cdqe
                mov     ecx, ds:(jpt_1406217C6 - 140000000h)[rcx+rax*4]
                lea     rax, cs:140000000h
                add     rcx, rax
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1406217CC:                          ; CODE XREF: sub_140621260+566↑j
                                        ; DATA XREF: sub_140621260:jpt_1406217C6↓o
                movzx   ecx, word ptr [r10+2] ; jumptable 00000001406217C6 cases 2,3,7,8,13-16
                add     ecx, edx
                cmp     ecx, edx
                jb      loc_1407FF37C
                mov     edx, ecx
                test    r11, r11
                jz      short loc_1406217E6
                or      dword ptr [r11], 8

loc_1406217E6:                          ; CODE XREF: sub_140621260+580↑j
                movzx   eax, byte ptr [rsi]
                lea     rcx, cs:140000000h
                cmp     eax, r9d
                jbe     def_1406217C6   ; jumptable 00000001406217C6 default case
                jmp     loc_1407FF364
; ---------------------------------------------------------------------------

loc_1406217FE:                          ; CODE XREF: sub_140621260+32F↑j
                add     eax, 0FFFFFFFEh ; switch 15 cases
                cmp     eax, 0Eh
                ja      def_140621817   ; jumptable 0000000140621817 default case
                cdqe
                mov     ecx, ds:(jpt_140621817 - 140000000h)[r15+rax*4]
                add     rcx, r15
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14062181D:                          ; CODE XREF: sub_140621260+5B7↑j
                                        ; DATA XREF: sub_140621260:jpt_140621817↓o
                movzx   r8d, word ptr [rbp+2] ; jumptable 0000000140621817 cases 2,3,7,8,13-16
                mov     rdx, rbp
                mov     rcx, r12
                call    memmove
                inc     word ptr [r14+4]
                movzx   eax, word ptr [rbp+2]
                mov     ecx, [rsp+68h+arg_0]
                add     r12, rax
                jmp     loc_140621599
; ---------------------------------------------------------------------------
                align 4
jpt_1406217C6   dd offset loc_1406217CC - 140000000h
                                        ; DATA XREF: sub_140621260+555↑r
                dd offset loc_1406217CC - 140000000h ; jump table for switch statement
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1406217CC - 140000000h
                dd offset loc_1406217CC - 140000000h
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1407FF370 - 140000000h
                dd offset loc_1406217CC - 140000000h
                dd offset loc_1406217CC - 140000000h
                dd offset loc_1406217CC - 140000000h
                dd offset loc_1406217CC - 140000000h
jpt_140621817   dd offset loc_14062181D - 140000000h
                                        ; DATA XREF: sub_140621260+5AC↑r
                dd offset loc_14062181D - 140000000h ; jump table for switch statement
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_14062181D - 140000000h
                dd offset loc_14062181D - 140000000h
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_1407FF40C - 140000000h
                dd offset loc_14062181D - 140000000h
                dd offset loc_14062181D - 140000000h
                dd offset loc_14062181D - 140000000h
                dd offset loc_14062181D - 140000000h
sub_140621260   endp

byte_1406218BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400FDBCC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1Fh

sub_1406218D0   proc near               ; CODE XREF: sub_140620D00+1C8↑p
                                        ; sub_140915838+F4↓p ...

var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_8F          = byte ptr -8Fh
var_8E          = byte ptr -8Eh
var_8D          = byte ptr -8Dh
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = word ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_10          = qword ptr  20h
arg_20          = byte ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = byte ptr  58h
arg_50          = byte ptr  60h
arg_58          = dword ptr  68h
arg_60          = qword ptr  70h
arg_68          = qword ptr  78h

; FUNCTION CHUNK AT 00000001407FF46A SIZE 0000006B BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rsi
                push    r14
                push    r15
                lea     rbp, [rsp-7]
                sub     rsp, 0F8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1Fh+var_38], rax
                mov     rax, [rbp+1Fh+arg_28]
                xor     r10b, r10b
                mov     r14, [rbp+1Fh+arg_68]
                mov     esi, r8d
                mov     [rbp+1Fh+var_50], rax
                mov     r11, rdx
                mov     rax, [rbp+1Fh+arg_30]
                mov     r15, rcx
                mov     [rbp+1Fh+var_58], rax
                mov     rax, [rbp+1Fh+arg_38]
                mov     [rbp+1Fh+var_60], rax
                mov     rax, [rbp+1Fh+arg_40]
                mov     [rbp+1Fh+var_68], rax
                mov     rax, [rbp+1Fh+arg_60]
                mov     [rbp+1Fh+var_48], rax
                movzx   eax, byte ptr [r14]
                sub     al, 2
                mov     [rbp+1Fh+var_8F], r9b
                mov     [rbp+1Fh+var_70], r8d
                mov     [rbp+1Fh+var_78], rdx
                mov     [rbp+1Fh+var_88], rcx
                mov     [rbp+1Fh+var_90], r10b
                cmp     al, 2
                ja      loc_1407FF4CB
                movzx   edx, word ptr [r14+4]
                lea     rcx, [r14+8]
; } // starts at 1406218D0

loc_14062195A:                          ; DATA XREF: .rdata:000000014004EBC8↑o
                                        ; .rdata:000000014004EBDC↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+110h+arg_10], rbx
                xor     r8d, r8d
                mov     [rsp+110h+var_20], rdi
                xor     ebx, ebx
                mov     [rsp+110h+var_28], r12
                mov     [rsp+110h+var_30], r13
                test    edx, edx
                jnz     loc_1407FF46A

loc_140621987:                          ; CODE XREF: sub_1406218D0+1DDBB6↓j
                movzx   eax, word ptr [r14+2]
                add     rax, r14
                cmp     rcx, rax
                ja      short loc_140621997
                mov     rbx, rcx

loc_140621997:                          ; CODE XREF: sub_1406218D0+C2↑j
                xor     edx, edx
                lea     rdi, [r15+8]
                mov     r12d, edx
                mov     r13d, edx
                cmp     dx, [r15+4]
                jnb     loc_140621AED
                mov     eax, [rbp+1Fh+arg_58]
                lea     r8d, [rdx+1]

loc_1406219B8:                          ; CODE XREF: sub_1406218D0+205↓j
                cmp     byte ptr [rdi], 11h
                jz      loc_140621C49
                cmp     eax, 3
                jz      loc_140621AB0

loc_1406219CA:                          ; CODE XREF: sub_1406218D0+3A8↓j
                mov     eax, esi
                test    esi, esi
                jz      loc_1407FF48B
                sub     eax, 1
                jz      loc_140621C3A
                cmp     eax, 1
                jnz     loc_140621AB0

loc_1406219E6:                          ; CODE XREF: sub_1406218D0+36E↓j
                                        ; sub_1406218D0+1DDBC5↓j
                cmp     [rbp+1Fh+arg_20], 0
                jnz     loc_140621B39
                movzx   esi, word ptr [rdi+2]
                test    rbx, rbx
                jz      loc_140621CEF
                movzx   eax, word ptr [r14+2]
                mov     r8d, esi
                sub     rax, rbx
                add     rax, r14
                cmp     rsi, rax
                jg      loc_140621CEF
                test    r10b, r10b
                jnz     loc_140621CD6
                mov     rdx, rdi
                mov     rcx, rbx
                call    memmove
                movzx   eax, byte ptr [rbx]
                cmp     al, 0Bh
                jnb     loc_140621D95

loc_140621A33:                          ; CODE XREF: sub_1406218D0+4CF↓j
                test    byte ptr [rbx+1], 8
                jnz     short loc_140621A92
                mov     ecx, [rbx+4]
                mov     rdx, [rbp+1Fh+var_78]
                test    ecx, ecx
                js      loc_140621C85

loc_140621A48:                          ; CODE XREF: sub_1406218D0+3BA↓j
                bt      ecx, 1Eh
                jb      loc_140621C9E

loc_140621A52:                          ; CODE XREF: sub_1406218D0+3D8↓j
                bt      ecx, 1Dh
                jb      loc_140621C8F

loc_140621A5C:                          ; CODE XREF: sub_1406218D0+3C9↓j
                bt      ecx, 1Ch
                jb      loc_140621C7D

loc_140621A66:                          ; CODE XREF: sub_1406218D0+3B0↓j
                and     ecx, 0FFFFFFFh
                mov     [rbx+4], ecx
                movzx   eax, byte ptr [rbx]
                cmp     al, 0Ah
                ja      loc_1407FF4B5
                mov     r8d, 673h
                bt      r8d, eax
                jnb     loc_1407FF4B5
                mov     eax, [rdx+0Ch]

loc_140621A8D:                          ; CODE XREF: sub_1406218D0+1DDBEC↓j
                and     eax, ecx
                mov     [rbx+4], eax

loc_140621A92:                          ; CODE XREF: sub_1406218D0+167↑j
                                        ; sub_1406218D0+4C9↓j
                movzx   eax, [rbp+1Fh+var_8F]
                not     al
                and     [rbx+1], al

loc_140621A9B:                          ; CODE XREF: sub_1406218D0+4C0↓j
                movzx   r10d, [rbp+1Fh+var_90]
                inc     word ptr [r14+4]

loc_140621AA5:                          ; CODE XREF: sub_1406218D0+365↓j
                                        ; sub_1406218D0+4FC↓j
                mov     eax, esi
                add     rbx, rax

loc_140621AAA:                          ; CODE XREF: sub_1406218D0+40E↓j
                                        ; sub_1406218D0+42E↓j
                add     r12d, esi
                mov     esi, [rbp+1Fh+var_70]

loc_140621AB0:                          ; CODE XREF: sub_1406218D0+F4↑j
                                        ; sub_1406218D0+110↑j ...
                movzx   eax, word ptr [rdi+2]
                mov     edx, 0
                mov     r11, [rbp+1Fh+var_78]
                add     rdi, rax
                movzx   eax, word ptr [r15+4]
                inc     r13d
                cmp     r13d, eax
                mov     eax, [rbp+1Fh+arg_58]
                lea     r8d, [rdx+1]
                jb      loc_1406219B8

loc_140621ADB:                          ; CODE XREF: sub_1406218D0+393↓j
                cmp     r12d, 0FFFFh
                ja      loc_1407FF4C1
                movzx   r10d, [rbp+1Fh+var_90]

loc_140621AED:                          ; CODE XREF: sub_1406218D0+D8↑j
                mov     rax, [rbp+1Fh+var_48]
                neg     r10b
                mov     [rax], r12d
                sbb     eax, eax
                and     eax, 0C0000023h

loc_140621AFE:                          ; CODE XREF: sub_1406218D0+1DDBF6↓j
                mov     r12, [rsp+110h+var_28]
                mov     rdi, [rsp+110h+var_20]
                mov     rbx, [rsp+110h+arg_10]
                mov     r13, [rsp+110h+var_30]
; } // starts at 14062195A

loc_140621B1E:                          ; CODE XREF: sub_1406218D0+1DDC00↓j
                                        ; DATA XREF: .pdata:00000001400FDBE4↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rbp+1Fh+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0F8h
                pop     r15
                pop     r14
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140621B1E
; ---------------------------------------------------------------------------

loc_140621B39:                          ; CODE XREF: sub_1406218D0+11A↑j
                                        ; DATA XREF: .pdata:00000001400FDBF0↑o ...
; __unwind { // __GSHandlerCheck
                cmp     [rbp+1Fh+arg_48], 0
                mov     ecx, edx
                movzx   eax, byte ptr [rdi+1]
                mov     r9, rbx
                mov     [rbp+1Fh+var_8C], edx
                mov     esi, edx
                mov     [rbp+1Fh+var_8D], 0
                mov     [rbp+1Fh+var_80], rbx
                jnz     loc_140621CBB

loc_140621B59:                          ; CODE XREF: sub_1406218D0+3ED↓j
                xor     r15b, r15b

loc_140621B5C:                          ; CODE XREF: sub_1406218D0+3F6↓j
                test    al, 8
                jnz     loc_140621CB1
                xor     cl, cl
                mov     [rbp+1Fh+var_8E], 0
                cmp     [rbp+1Fh+arg_50], cl
                jnz     loc_1407FF49A

loc_140621B73:                          ; CODE XREF: sub_1406218D0+1DDBD3↓j
                mov     r9, [rbp+1Fh+var_50]
                lea     rax, [rbp+1Fh+var_8E]
                mov     [rsp+110h+var_98], rax
                movzx   r8d, r15b
                lea     rax, [rbp+1Fh+var_8D]
                mov     [rsp+110h+var_A0], rax
                lea     rax, [rbp+1Fh+var_8C]
                mov     [rsp+110h+var_A8], rdx
                mov     [rsp+110h+var_B0], r14
                mov     [rsp+110h+var_B8], rax
                lea     rax, [rbp+1Fh+var_80]
                mov     [rsp+110h+var_C0], rax
                mov     rax, [rbp+1Fh+var_68]
                mov     [rsp+110h+var_C8], edx
                mov     [rsp+110h+var_D0], rdx
                movzx   edx, cl
                mov     [rsp+110h+var_D8], r11
                mov     rcx, rdi
                mov     [rsp+110h+var_E0], rax
                mov     rax, [rbp+1Fh+var_60]
                mov     [rsp+110h+var_E8], rax
                mov     rax, [rbp+1Fh+var_58]
                mov     [rsp+110h+var_F0], rax
                call    sub_140622E10
                test    al, al
                jz      loc_1407FF4C1
                cmp     [rbp+1Fh+var_8E], 0
                jnz     loc_140621CE3
                movzx   r10d, [rbp+1Fh+var_90]

loc_140621BF4:                          ; CODE XREF: sub_1406218D0+41A↓j
                mov     ecx, [rbp+1Fh+var_8C]
                mov     esi, ecx
                test    r10b, r10b
                jnz     loc_140621CAD
                test    ecx, ecx
                jz      loc_140621CAD
                movzx   r8d, [rbp+1Fh+var_8F]
                movzx   eax, r8b
                not     al
                and     [rbx+1], al
                mov     r9, [rbp+1Fh+var_80]
                mov     ecx, [rbp+1Fh+var_8C]

loc_140621C1F:                          ; CODE XREF: sub_1406218D0+3E6↓j
                test    r15b, r15b
                jnz     loc_140621D03

loc_140621C28:                          ; CODE XREF: sub_1406218D0+1DDBDA↓j
                test    r10b, r10b
                jnz     loc_140621CD2
                mov     r15, [rbp+1Fh+var_88]
                jmp     loc_140621AA5
; ---------------------------------------------------------------------------

loc_140621C3A:                          ; CODE XREF: sub_1406218D0+107↑j
                test    byte ptr [rdi+1], 10h
                jz      loc_1406219E6
                jmp     loc_140621AB0
; ---------------------------------------------------------------------------

loc_140621C49:                          ; CODE XREF: sub_1406218D0+EB↑j
                cmp     eax, 3
                jnz     loc_140621AB0
                xor     r8d, r8d
                lea     edx, [rax+0Eh]
                mov     rcx, r14
                call    RtlFindAceByType
                test    rax, rax
                jnz     loc_140621ADB
                movzx   r10d, [rbp+1Fh+var_90]
                lea     r8d, [rax+1]
                mov     r11, [rbp+1Fh+var_78]
                xor     edx, edx
                jmp     loc_1406219CA
; ---------------------------------------------------------------------------

loc_140621C7D:                          ; CODE XREF: sub_1406218D0+190↑j
                or      ecx, [rdx+0Ch]
                jmp     loc_140621A66
; ---------------------------------------------------------------------------

loc_140621C85:                          ; CODE XREF: sub_1406218D0+172↑j
                or      ecx, [rdx]
                mov     [rbx+4], ecx
                jmp     loc_140621A48
; ---------------------------------------------------------------------------

loc_140621C8F:                          ; CODE XREF: sub_1406218D0+186↑j
                mov     eax, [rdx+8]
                or      eax, ecx
                mov     ecx, eax
                mov     [rbx+4], eax
                jmp     loc_140621A5C
; ---------------------------------------------------------------------------

loc_140621C9E:                          ; CODE XREF: sub_1406218D0+17C↑j
                mov     eax, [rdx+4]
                or      eax, ecx
                mov     ecx, eax
                mov     [rbx+4], eax
                jmp     loc_140621A52
; ---------------------------------------------------------------------------

loc_140621CAD:                          ; CODE XREF: sub_1406218D0+32C↑j
                                        ; sub_1406218D0+334↑j
                mov     r9, [rbp+1Fh+var_80]

loc_140621CB1:                          ; CODE XREF: sub_1406218D0+28E↑j
                movzx   r8d, [rbp+1Fh+var_8F]
                jmp     loc_140621C1F
; ---------------------------------------------------------------------------

loc_140621CBB:                          ; CODE XREF: sub_1406218D0+283↑j
                test    al, 3
                jz      loc_140621B59
                mov     r15b, 1
                jmp     loc_140621B5C
; ---------------------------------------------------------------------------

loc_140621CCB:                          ; CODE XREF: sub_1406218D0+48D↓j
                mov     r10b, 1
                mov     [rbp+1Fh+var_90], r10b

loc_140621CD2:                          ; CODE XREF: sub_1406218D0+35B↑j
                                        ; sub_1406218D0+496↓j
                mov     r15, [rbp+1Fh+var_88]

loc_140621CD6:                          ; CODE XREF: sub_1406218D0+147↑j
                                        ; sub_1406218D0+4E1↓j
                movzx   ebx, word ptr [r14+2]
                add     rbx, r14
                jmp     loc_140621AAA
; ---------------------------------------------------------------------------

loc_140621CE3:                          ; CODE XREF: sub_1406218D0+319↑j
                mov     r10b, 1
                mov     [rbp+1Fh+var_90], r10b
                jmp     loc_140621BF4
; ---------------------------------------------------------------------------

loc_140621CEF:                          ; CODE XREF: sub_1406218D0+127↑j
                                        ; sub_1406218D0+13E↑j
                movzx   ebx, word ptr [r14+2]
                mov     r10b, 1
                mov     [rbp+1Fh+var_90], r10b
                add     rbx, r14
                jmp     loc_140621AAA
; ---------------------------------------------------------------------------

loc_140621D03:                          ; CODE XREF: sub_1406218D0+352↑j
                mov     edx, [rdi+0Ah]
                mov     [rbp+1Fh+var_40], 0
                mov     [rbp+1Fh+var_3C], 300h
                sub     edx, [rbp+1Fh+var_40]
                jnz     short loc_140621D22
                movzx   edx, word ptr [rdi+0Eh]
                movzx   eax, [rbp+1Fh+var_3C]
                sub     edx, eax

loc_140621D22:                          ; CODE XREF: sub_1406218D0+446↑j
                test    edx, edx
                setz    al
                test    ecx, ecx
                jnz     short loc_140621DA4

loc_140621D2B:                          ; CODE XREF: sub_1406218D0+4D8↓j
                cmp     byte ptr [rdi], 8
                ja      short loc_140621D3A
                cmp     dword ptr [rdi+4], 0
                jz      loc_1407FF4A8

loc_140621D3A:                          ; CODE XREF: sub_1406218D0+45E↑j
                                        ; sub_1406218D0+1DDBE0↓j
                movzx   eax, word ptr [rdi+2]
                add     esi, eax
                cmp     esi, 0FFFFh
                ja      loc_1407FF4C1
                mov     r8d, eax
                movzx   eax, word ptr [r14+2]
                sub     rax, r9
                add     rax, r14
                cmp     r8, rax
                jg      loc_140621CCB
                test    r10b, r10b
                jnz     loc_140621CD2
                mov     rdx, rdi
                mov     rcx, r9
                call    memmove
                mov     rax, [rbp+1Fh+var_80]
                mov     r15, [rbp+1Fh+var_88]
                or      byte ptr [rax+1], 8
                mov     rcx, [rbp+1Fh+var_80]
                movzx   eax, [rbp+1Fh+var_8F]
                not     al
                and     [rcx+1], al
                jmp     loc_140621A9B
; ---------------------------------------------------------------------------

loc_140621D95:                          ; CODE XREF: sub_1406218D0+15D↑j
                sub     al, 0Dh
                cmp     al, 1
                ja      loc_140621A92
                jmp     loc_140621A33
; ---------------------------------------------------------------------------

loc_140621DA4:                          ; CODE XREF: sub_1406218D0+459↑j
                cmp     [rbp+1Fh+var_8D], 0
                jnz     short loc_140621D2B
                mov     r15, [rbp+1Fh+var_88]
                test    r10b, r10b
                jnz     loc_140621CD6
                movzx   ecx, byte ptr [rdi+1]
                movzx   eax, r8b
                and     cl, 1Fh
                not     al
                or      cl, [rbx+1]
                and     cl, al
                mov     [rbx+1], cl
                jmp     loc_140621AA5
; } // starts at 140621B39
sub_1406218D0   endp

; ---------------------------------------------------------------------------
algn_140621DD1:                         ; DATA XREF: .pdata:00000001400FDBFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140621DE0   proc near               ; CODE XREF: sub_14061F5D0+744↑p
                                        ; sub_14069B688+FD↓p ...

var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = word ptr -2Ch
var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001407FF4D6 SIZE 00000028 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_28], rax
                mov     [rsp+58h+var_38], 0
                mov     rsi, r9
                mov     [rsp+58h+var_30], 0
                mov     r14d, r8d
                mov     [rsp+58h+var_2C], 1000h
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_1407FF4F4
                mov     rcx, r9
                call    RtlValidSid
                test    al, al
                jz      loc_1407FF4D6
                mov     eax, [rsi+2]
                sub     eax, [rsp+58h+var_30]
                jnz     short loc_140621E4F
                movzx   eax, word ptr [rsi+6]
                movzx   ecx, [rsp+58h+var_2C]
                sub     eax, ecx

loc_140621E4F:                          ; CODE XREF: sub_140621DE0+62↑j
                test    eax, eax
                jnz     loc_1407FF4EA
                movzx   edi, byte ptr [rbx]
                cmp     dil, 4
                ja      loc_1407FF4E0
                cmp     dil, 2
                ja      short loc_140621E6D
                mov     dil, 2

loc_140621E6D:                          ; CODE XREF: sub_140621DE0+88↑j
                test    r14d, 0FFFFFFE0h
                jnz     loc_1407FF4EA
                mov     ebp, [rsp+58h+arg_28]
                test    ebp, 0FFFFFFF8h
                jnz     loc_1407FF4EA
                mov     rcx, rbx
                call    RtlValidAcl
                test    al, al
                jz      loc_1407FF4F4
                lea     rdx, [rsp+58h+var_38]
                mov     rcx, rbx
                call    RtlFirstFreeAce
                test    al, al
                jz      loc_1407FF4F4
                movzx   edx, byte ptr [rsi+1]
                mov     r9, [rsp+58h+var_38]
                add     dx, 4
                shl     dx, 2
                test    r9, r9
                jz      short loc_140621F2E
                movzx   ecx, word ptr [rbx+2]
                movzx   eax, dx
                add     rcx, rbx
                add     rax, r9
                cmp     rax, rcx
                ja      short loc_140621F2E
                mov     [r9+2], dx
                lea     rcx, [r9+8]
                mov     [r9+1], r14b
                mov     rdx, rsi
                mov     byte ptr [r9], 11h
                mov     [r9+4], ebp
                movzx   r8d, byte ptr [rsi+1]
                lea     r8, ds:8[r8*4]
                call    memmove
                inc     word ptr [rbx+4]
                xor     eax, eax
                mov     [rbx], dil

loc_140621F0D:                          ; CODE XREF: sub_140621DE0+153↓j
                                        ; sub_140621DE0+1DD6FB↓j ...
                mov     rcx, [rsp+58h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140621F2E:                          ; CODE XREF: sub_140621DE0+E6↑j
                                        ; sub_140621DE0+F8↑j
                mov     eax, 0C0000099h
                jmp     short loc_140621F0D
; } // starts at 140621DE0
sub_140621DE0   endp

; ---------------------------------------------------------------------------
algn_140621F35:                         ; DATA XREF: .rdata:000000014004ECF4↑o
                                        ; .pdata:00000001400FDC08↑o
                align 20h
; Exported entry 2137. RtlFirstFreeAce

; =============== S U B R O U T I N E =======================================



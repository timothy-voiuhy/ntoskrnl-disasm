ExShareAddressSpaceWithDevice proc near ; DATA XREF: .pdata:00000001400FA134↑o

var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = dword ptr -0B8h
var_B0          = xmmword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_78          = qword ptr -78h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = dword ptr  28h

                mov     [rsp-8+arg_8], rdx
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0E8h
                xor     esi, esi
                mov     rdi, rdx
                mov     rbx, rcx
                mov     [rsp+120h+var_E0], rsi
                xor     edx, edx
                lea     rcx, [rbp+57h+var_90]
                lea     r8d, [rsi+50h]
                call    memset
                or      r12d, 0FFFFFFFFh
                mov     [rsp+120h+var_D8], rsi
                xor     eax, eax
                mov     [rdi], r12d
                cmp     cs:qword_140C166D0, rsi
                xorps   xmm0, xmm0
                movups  [rbp+57h+var_B0], xmm0
                mov     [rbp+57h+var_A0], rax
                mov     r15d, esi
                mov     r14d, esi
                jnz     short loc_1405B7590
                mov     eax, 0C00000BBh
                jmp     loc_1405B8171
; ---------------------------------------------------------------------------

loc_1405B7590:                          ; CODE XREF: ExShareAddressSpaceWithDevice+64↑j
                test    rbx, rbx
                jnz     short loc_1405B759F
                mov     eax, 0C00000EFh
                jmp     loc_1405B8171
; ---------------------------------------------------------------------------

loc_1405B759F:                          ; CODE XREF: ExShareAddressSpaceWithDevice+73↑j
                mov     rdi, gs:188h
                mov     [rbp+57h+var_98], rdi
                mov     r13, [rdi+0B8h]
                lea     rcx, [r13+458h]
                call    sub_14024C840
                test    al, al
                jnz     short loc_1405B75CD
                mov     eax, 0C000010Ah
                jmp     loc_1405B8171
; ---------------------------------------------------------------------------

loc_1405B75CD:                          ; CODE XREF: ExShareAddressSpaceWithDevice+A1↑j
                mov     ecx, 1
                lea     rax, [rbp+57h+var_90]
                mov     [rsp+120h+var_F0], rax
                lea     r8, qword_14000BC88
                mov     [rsp+120h+var_F8], rbx
                mov     edx, esi
                mov     word ptr [rsp+120h+var_100], cx
                lea     r9d, [rcx+4Fh]
                mov     rcx, rbx
                call    IoQueryInterface
                mov     ebx, eax
                mov     [rbp+57h+arg_10], eax
                or      rax, 0FFFFFFFFFFFFFFFFh
                test    ebx, ebx
                js      loc_1405B7FA9
                add     [rdi+1E6h], ax
                mov     rbx, gs:188h
                lea     rdi, [r13+890h]
                mov     [rbp+57h+var_C0], esi
                add     [rbx+1E6h], ax
                lea     r8d, [rax+2]
                add     [rbx+31Ah], r8b
                cmp     [rbx+31Ah], r8b
                jz      short loc_1405B765E
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rdi
                mov     rdx, rbx
                mov     [rsp+120h+var_100], rsi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B765E:                          ; CODE XREF: ExShareAddressSpaceWithDevice+11E↑j
                mov     cl, [rbx+318h]
                lea     r10, qword_140C4C740
                mov     [rbp+57h+var_C4], esi
                mov     r9, 0FFFF800000000000h
                test    cl, cl
                jnz     short loc_1405B7695
                cmp     [rbx+366h], sil
                jz      short loc_1405B76C6
                mov     eax, esi
                xchg    al, [rbx+366h]
                mov     cl, [rbx+318h]
                or      cl, al

loc_1405B7695:                          ; CODE XREF: ExShareAddressSpaceWithDevice+15A↑j
                movzx   edx, cl
                mov     eax, r8d
                bsf     ecx, edx
                shl     al, cl
                not     al
                mov     [rbp+57h+var_C4], ecx
                and     al, dl
                lea     rsi, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jnz     short loc_1405B76DF

loc_1405B76BE:                          ; CODE XREF: ExShareAddressSpaceWithDevice+1B0↓j
                                        ; ExShareAddressSpaceWithDevice+1BD↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     short loc_1405B7727
; ---------------------------------------------------------------------------

loc_1405B76C6:                          ; CODE XREF: ExShareAddressSpaceWithDevice+163↑j
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      short loc_1405B76BE
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1403F8778
                jmp     short loc_1405B76BE
; ---------------------------------------------------------------------------

loc_1405B76DF:                          ; CODE XREF: ExShareAddressSpaceWithDevice+19C↑j
                cmp     rdi, r9
                jb      short loc_1405B770D
                mov     rax, rdi
                shr     rax, 27h
                and     eax, 1FFh
                add     eax, 0FFFFFF00h
                cmp     [rax+r10+3108h], r8b
                jnz     short loc_1405B770D
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     short loc_1405B7710
; ---------------------------------------------------------------------------

loc_1405B770D:                          ; CODE XREF: ExShareAddressSpaceWithDevice+1C2↑j
                                        ; ExShareAddressSpaceWithDevice+1DD↑j
                mov     eax, r12d

loc_1405B7710:                          ; CODE XREF: ExShareAddressSpaceWithDevice+1EB↑j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1405B7727:                          ; CODE XREF: ExShareAddressSpaceWithDevice+1A4↑j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_C0]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     ecx, 1
                add     [rbx+1E6h], cx
                jnz     short loc_1405B775B
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B775B
                call    KiCheckForKernelApcDelivery

loc_1405B775B:                          ; CODE XREF: ExShareAddressSpaceWithDevice+228↑j
                                        ; ExShareAddressSpaceWithDevice+234↑j
                lock bts qword ptr [rdi], 0
                jnb     short loc_1405B7771
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5F10

loc_1405B7771:                          ; CODE XREF: ExShareAddressSpaceWithDevice+241↑j
                mov     edi, 1
                test    rsi, rsi
                jz      short loc_1405B777F
                or      [rsi+1Ah], dil

loc_1405B777F:                          ; CODE XREF: ExShareAddressSpaceWithDevice+259↑j
                mov     r12d, [r13+880h]
                mov     esi, 0Fh
                test    r12d, r12d
                jnz     loc_1405B78EB
                call    sub_1405B89AC
                mov     r12d, eax
                test    eax, eax
                jnz     loc_1405B78D6
                mov     ebx, 0C0000073h
                mov     [rbp+57h+arg_10], ebx

loc_1405B77AC:                          ; CODE XREF: ExShareAddressSpaceWithDevice+404↓j
                mov     esi, 1

loc_1405B77B1:                          ; CODE XREF: ExShareAddressSpaceWithDevice+884↓j
                mov     r14d, 0Fh

loc_1405B77B7:                          ; CODE XREF: ExShareAddressSpaceWithDevice+8B5↓j
                                        ; ExShareAddressSpaceWithDevice+A0C↓j ...
                mov     rcx, [rbp+57h+var_88]
                mov     rax, [rbp+57h+var_78]
                call    sub_1404079D0
                test    ebx, ebx
                jns     loc_1405B7F9A
                mov     rcx, [rsp+120h+var_D8]
                test    rcx, rcx
                jz      short loc_1405B77DB
                call    sub_1405B9114

loc_1405B77DB:                          ; CODE XREF: ExShareAddressSpaceWithDevice+2B4↑j
                test    r15, r15
                jz      loc_1405B7FA1
                mov     rbx, cr8
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1405B7830
                test    sil, al
                jz      short loc_1405B7830
                cmp     bl, r14b
                ja      short loc_1405B7830
                mov     rax, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                add     ecx, esi
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405B7830:                          ; CODE XREF: ExShareAddressSpaceWithDevice+2D8↑j
                                        ; ExShareAddressSpaceWithDevice+2DD↑j ...
                lea     rcx, [r13+898h]
                lea     rdx, [rbp+57h+var_B0]
                call    KeAcquireInStackQueuedSpinLockAtDpcLevel
                mov     rcx, [r15]
                mov     rax, [r15+8]
                cmp     [rcx+8], r15
                jnz     loc_1405B7F93
                cmp     [rax], r15
                jnz     loc_1405B7F93
                mov     [rax], rcx
                mov     [rcx+8], rax
                lea     rcx, [rbp+57h+var_B0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B78C0
                test    sil, al
                jz      short loc_1405B78C0
                mov     rax, cr8
                cmp     al, r14b
                ja      short loc_1405B78C0
                cmp     bl, r14b
                ja      short loc_1405B78C0
                cmp     al, 2
                jb      short loc_1405B78C0
                mov     r10, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                add     ecx, esi
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B78C0
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B78C0:                          ; CODE XREF: ExShareAddressSpaceWithDevice+352↑j
                                        ; ExShareAddressSpaceWithDevice+357↑j ...
                movzx   eax, bl
                mov     cr8, rax
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag
                jmp     loc_1405B7FA1
; ---------------------------------------------------------------------------

loc_1405B78D6:                          ; CODE XREF: ExShareAddressSpaceWithDevice+27E↑j
                mov     edx, eax
                mov     rcx, r13
                call    sub_140958264
                test    eax, eax
                jnz     short loc_1405B78EB
                mov     r12d, [r13+880h]

loc_1405B78EB:                          ; CODE XREF: ExShareAddressSpaceWithDevice+26E↑j
                                        ; ExShareAddressSpaceWithDevice+3C2↑j
                mov     rax, [r13+888h]
                dec     r12d
                mov     [rsp+120h+var_E0], rax
                test    rax, rax
                jnz     loc_1405B7A26
                mov     rax, cs:off_140C04F48
                lea     r8, [rsp+120h+var_E0]
                xor     edx, edx
                mov     ecx, r12d
                mov     rax, [rax+10h]
                call    sub_1404079D0
                mov     [rbp+57h+arg_10], eax
                mov     ebx, eax
                test    eax, eax
                js      loc_1405B77AC
                mov     rbx, cr8
                mov     cr8, rsi
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B7973
                test    dil, al
                jz      short loc_1405B7973
                cmp     bl, sil
                ja      short loc_1405B7973
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bl
                add     ecx, edi
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405B7973:                          ; CODE XREF: ExShareAddressSpaceWithDevice+41A↑j
                                        ; ExShareAddressSpaceWithDevice+41F↑j ...
                lea     rcx, [r13+898h]
                lea     rdx, [rbp+57h+var_B0]
                call    KeAcquireInStackQueuedSpinLockAtDpcLevel
                mov     rax, [r13+888h]
                test    rax, rax
                jz      short loc_1405B799B
                mov     r14, [rsp+120h+var_E0]
                mov     [rsp+120h+var_E0], rax
                jmp     short loc_1405B79A7
; ---------------------------------------------------------------------------

loc_1405B799B:                          ; CODE XREF: ExShareAddressSpaceWithDevice+46D↑j
                mov     rax, [rsp+120h+var_E0]
                mov     [r13+888h], rax

loc_1405B79A7:                          ; CODE XREF: ExShareAddressSpaceWithDevice+479↑j
                lea     rcx, [rbp+57h+var_B0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B7A07
                test    dil, al
                jz      short loc_1405B7A07
                mov     rax, cr8
                cmp     al, sil
                ja      short loc_1405B7A07
                cmp     bl, sil
                ja      short loc_1405B7A07
                cmp     al, 2
                jb      short loc_1405B7A07
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bl
                add     ecx, edi
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B7A07
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B7A07:                          ; CODE XREF: ExShareAddressSpaceWithDevice+498↑j
                                        ; ExShareAddressSpaceWithDevice+49D↑j ...
                movzx   eax, bl
                mov     cr8, rax
                test    r14, r14
                jz      short loc_1405B7A26
                mov     rax, cs:off_140C04F48
                mov     rcx, r14
                mov     rax, [rax+40h]
                call    sub_1404079D0

loc_1405B7A26:                          ; CODE XREF: ExShareAddressSpaceWithDevice+3DD↑j
                                        ; ExShareAddressSpaceWithDevice+4F1↑j
                mov     rbx, gs:188h
                or      rax, 0FFFFFFFFFFFFFFFFh
                and     [rbp+57h+var_B8], r15d
                add     [rbx+1E6h], ax
                add     [rbx+31Ah], dil
                cmp     [rbx+31Ah], dil
                jz      short loc_1405B7A70
                mov     rax, cr8
                and     [rsp+120h+var_100], r15
                lea     r8, qword_140C16708
                movzx   r9d, al
                mov     rdx, rbx
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B7A70:                          ; CODE XREF: ExShareAddressSpaceWithDevice+52C↑j
                and     [rbp+57h+var_BC], r15d
                lea     rdi, qword_140C16708
                mov     cl, [rbx+318h]
                test    cl, cl
                jnz     short loc_1405B7AA2
                cmp     [rbx+366h], r15b
                jz      loc_1405B7B19
                xor     eax, eax
                xchg    al, [rbx+366h]
                mov     cl, [rbx+318h]
                or      cl, al

loc_1405B7AA2:                          ; CODE XREF: ExShareAddressSpaceWithDevice+563↑j
                movzx   edx, cl
                mov     r14d, 1
                bsf     ecx, edx
                mov     eax, r14d
                shl     al, cl
                not     al
                mov     [rbp+57h+var_BC], ecx
                and     al, dl
                lea     rsi, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jz      short loc_1405B7B38
                lea     rdi, qword_140C16708
                mov     rax, 0FFFF800000000000h
                cmp     rdi, rax
                jb      short loc_1405B7B40
                mov     rcx, rdi
                lea     rax, qword_140C4C740
                shr     rcx, 27h
                and     ecx, 1FFh
                add     ecx, 0FFFFFF00h
                cmp     [rcx+rax+3108h], r14b
                jnz     short loc_1405B7B40
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     short loc_1405B7B43
; ---------------------------------------------------------------------------

loc_1405B7B19:                          ; CODE XREF: ExShareAddressSpaceWithDevice+56C↑j
                xor     esi, esi
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      short loc_1405B7B32
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1403F8778

loc_1405B7B32:                          ; CODE XREF: ExShareAddressSpaceWithDevice+605↑j
                mov     r14d, 1

loc_1405B7B38:                          ; CODE XREF: ExShareAddressSpaceWithDevice+5AF↑j
                lock bts dword ptr [rbx+78h], 10h
                jmp     short loc_1405B7B5A
; ---------------------------------------------------------------------------

loc_1405B7B40:                          ; CODE XREF: ExShareAddressSpaceWithDevice+5C5↑j
                                        ; ExShareAddressSpaceWithDevice+5E9↑j
                or      eax, 0FFFFFFFFh

loc_1405B7B43:                          ; CODE XREF: ExShareAddressSpaceWithDevice+5F7↑j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1405B7B5A:                          ; CODE XREF: ExShareAddressSpaceWithDevice+61E↑j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_B8]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r14w
                jnz     short loc_1405B7B8A
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B7B8A
                call    KiCheckForKernelApcDelivery

loc_1405B7B8A:                          ; CODE XREF: ExShareAddressSpaceWithDevice+657↑j
                                        ; ExShareAddressSpaceWithDevice+663↑j
                lock bts qword ptr [rdi], 0
                jnb     short loc_1405B7BA0
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5F10

loc_1405B7BA0:                          ; CODE XREF: ExShareAddressSpaceWithDevice+670↑j
                test    rsi, rsi
                jz      short loc_1405B7BA9
                or      [rsi+1Ah], r14b

loc_1405B7BA9:                          ; CODE XREF: ExShareAddressSpaceWithDevice+683↑j
                mov     rax, cs:qword_140C16710
                lea     r9, qword_140C16710
                cmp     rax, r9
                jz      short loc_1405B7BF7
                mov     r8, [rbp+57h+arg_0]

loc_1405B7BC0:                          ; CODE XREF: ExShareAddressSpaceWithDevice+6B7↓j
                mov     rdx, rax
                mov     rcx, rax
                mov     [rsp+120h+var_D8], rax
                cmp     [rax+10h], r8
                jz      short loc_1405B7BD9
                mov     rax, [rax]
                cmp     rax, r9
                jnz     short loc_1405B7BC0

loc_1405B7BD9:                          ; CODE XREF: ExShareAddressSpaceWithDevice+6AF↑j
                cmp     [rcx+10h], r8
                jz      short loc_1405B7BE8
                xor     ecx, ecx
                mov     [rsp+120h+var_D8], rcx
                xor     edx, edx

loc_1405B7BE8:                          ; CODE XREF: ExShareAddressSpaceWithDevice+6BD↑j
                test    rdx, rdx
                jz      short loc_1405B7BF7
                mov     esi, 1
                add     [rcx+18h], esi
                jmp     short loc_1405B7C16
; ---------------------------------------------------------------------------

loc_1405B7BF7:                          ; CODE XREF: ExShareAddressSpaceWithDevice+69A↑j
                                        ; ExShareAddressSpaceWithDevice+6CB↑j
                mov     rdx, [rsp+120h+var_E0]
                lea     r9, [rsp+120h+var_D8]
                mov     rcx, [rbp+57h+arg_0]
                lea     r8, [rbp+57h+var_90]
                call    sub_1405B8DD8
                mov     [rbp+57h+arg_10], eax
                mov     esi, 1

loc_1405B7C16:                          ; CODE XREF: ExShareAddressSpaceWithDevice+6D5↑j
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     rax, r14
                lock xadd cs:qword_140C16708, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405B7C34
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1405B7C34:                          ; CODE XREF: ExShareAddressSpaceWithDevice+70A↑j
                and     [rbp+57h+var_D0], r15d
                mov     rcx, rdi
                mov     rbx, gs:188h
                call    sub_140245330
                cmp     eax, esi
                jnz     short loc_1405B7C5D
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax
                jmp     short loc_1405B7C60
; ---------------------------------------------------------------------------

loc_1405B7C5D:                          ; CODE XREF: ExShareAddressSpaceWithDevice+72B↑j
                or      edx, 0FFFFFFFFh

loc_1405B7C60:                          ; CODE XREF: ExShareAddressSpaceWithDevice+73B↑j
                add     [rbx+1E6h], r14w
                add     [rbx+31Ah], sil
                movsx   eax, byte ptr [rbx+318h]
                mov     r9, rdi
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      r8d, eax
                and     r9, r10
                xor     r8d, 3Fh

loc_1405B7C9C:                          ; CODE XREF: ExShareAddressSpaceWithDevice+7D5↓j
                bsr     ecx, r8d
                mov     [rbp+57h+arg_18], ecx
                jz      loc_1405B7DE5
                mov     eax, esi
                lea     rsi, [rcx+rcx*2]
                shl     eax, cl
                mov     ecx, 1
                shl     rsi, 5
                not     eax
                add     rsi, [rbx+320h]
                and     r8d, eax
                test    [rsi+1Ah], cl
                jz      short loc_1405B7CF0
                mov     eax, [rsi+20h]
                test    cl, al
                jnz     short loc_1405B7CF0
                mov     rax, [rsi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1405B7CF0
                cmp     [rsi+28h], edx
                jnz     short loc_1405B7CF0
                and     byte ptr [rsi+1Ah], 0FEh
                mov     rax, [rsi+20h]
                test    rax, rax
                jnz     short loc_1405B7CF7

loc_1405B7CF0:                          ; CODE XREF: ExShareAddressSpaceWithDevice+7A9↑j
                                        ; ExShareAddressSpaceWithDevice+7B0↑j ...
                mov     esi, 1
                jmp     short loc_1405B7C9C
; ---------------------------------------------------------------------------

loc_1405B7CF7:                          ; CODE XREF: ExShareAddressSpaceWithDevice+7CE↑j
                test    rsi, rsi
                jz      loc_1405B7DE3
                mov     al, [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1405B7D1C
                mov     rcx, rsi
                call    sub_14031EC80

loc_1405B7D1C:                          ; CODE XREF: ExShareAddressSpaceWithDevice+7F2↑j
                mov     ecx, [rsi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rsi+19h], 0FEh
                mov     [rbp+57h+var_D0], eax
                mov     [rsi+58h], ecx
                mov     [rsi+20h], r15
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rsi, [rbx+320h]
                imul    rsi
                mov     esi, 1
                sar     rdx, 4
                mov     eax, esi
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rcx, rdx
                shl     al, cl
                cmp     r14b, sil
                jnz     short loc_1405B7DDA
                or      [rbx+318h], al

loc_1405B7D70:                          ; CODE XREF: ExShareAddressSpaceWithDevice+8C1↓j
                                        ; ExShareAddressSpaceWithDevice+8CC↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_D0]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], si
                jnz     short loc_1405B7D9F
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B7D9F
                call    KiCheckForKernelApcDelivery

loc_1405B7D9F:                          ; CODE XREF: ExShareAddressSpaceWithDevice+86C↑j
                                        ; ExShareAddressSpaceWithDevice+878↑j
                mov     ebx, [rbp+57h+arg_10]
                test    ebx, ebx
                js      loc_1405B77B1
                mov     edx, 18h
                mov     ecx, 200h
                mov     r8d, 64507845h
                call    ExAllocatePoolWithTag
                mov     r15, rax
                mov     r14d, 0Fh
                test    rax, rax
                jnz     short loc_1405B7E07
                mov     ebx, 0C000009Ah
                mov     [rbp+57h+arg_10], ebx
                jmp     loc_1405B77B7
; ---------------------------------------------------------------------------

loc_1405B7DDA:                          ; CODE XREF: ExShareAddressSpaceWithDevice+848↑j
                lock or [rbx+366h], al
                jmp     short loc_1405B7D70
; ---------------------------------------------------------------------------

loc_1405B7DE3:                          ; CODE XREF: ExShareAddressSpaceWithDevice+7DA↑j
                mov     esi, ecx

loc_1405B7DE5:                          ; CODE XREF: ExShareAddressSpaceWithDevice+783↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_1405B7D70
                and     [rsp+120h+var_100], r15
                mov     r8, rdi
                mov     r9d, edx
                mov     ecx, 162h
                mov     rdx, rbx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B7E07:                          ; CODE XREF: ExShareAddressSpaceWithDevice+8AB↑j
                mov     rax, [rsp+120h+var_D8]
                xor     dil, dil
                mov     [r15+10h], rax
                mov     rbx, cr8
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B7E5C
                test    sil, al
                jz      short loc_1405B7E5C
                cmp     bl, r14b
                ja      short loc_1405B7E5C
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bl
                add     ecx, esi
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405B7E5C:                          ; CODE XREF: ExShareAddressSpaceWithDevice+903↑j
                                        ; ExShareAddressSpaceWithDevice+908↑j ...
                lea     rcx, [r13+898h]
                lea     rdx, [rbp+57h+var_B0]
                call    KeAcquireInStackQueuedSpinLockAtDpcLevel
                lea     rcx, [r13+8A0h]
                mov     rdx, [rcx]
                cmp     rdx, rcx
                jz      short loc_1405B7E95
                mov     r8, [rbp+57h+arg_0]

loc_1405B7E7F:                          ; CODE XREF: ExShareAddressSpaceWithDevice+973↓j
                mov     rax, [rdx+10h]
                cmp     [rax+10h], r8
                jz      loc_1405B7F31
                mov     rdx, [rdx]
                cmp     rdx, rcx
                jnz     short loc_1405B7E7F

loc_1405B7E95:                          ; CODE XREF: ExShareAddressSpaceWithDevice+959↑j
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     loc_1405B7F93
                mov     [r15], rax
                mov     [r15+8], rcx
                mov     [rax+8], r15
                mov     [rcx], r15

loc_1405B7EB0:                          ; CODE XREF: ExShareAddressSpaceWithDevice+A14↓j
                lea     rcx, [rbp+57h+var_B0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B7F10
                test    sil, al
                jz      short loc_1405B7F10
                mov     rax, cr8
                cmp     al, r14b
                ja      short loc_1405B7F10
                cmp     bl, r14b
                ja      short loc_1405B7F10
                cmp     al, 2
                jb      short loc_1405B7F10
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bl
                add     ecx, esi
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B7F10
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B7F10:                          ; CODE XREF: ExShareAddressSpaceWithDevice+9A1↑j
                                        ; ExShareAddressSpaceWithDevice+9A6↑j ...
                movzx   eax, bl
                mov     cr8, rax
                test    dil, dil
                jz      short loc_1405B7F39
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag
                mov     ebx, [rbp+57h+arg_10]
                xor     r15d, r15d
                jmp     loc_1405B77B7
; ---------------------------------------------------------------------------

loc_1405B7F31:                          ; CODE XREF: ExShareAddressSpaceWithDevice+967↑j
                mov     dil, sil
                jmp     loc_1405B7EB0
; ---------------------------------------------------------------------------

loc_1405B7F39:                          ; CODE XREF: ExShareAddressSpaceWithDevice+9FA↑j
                call    sub_14052CE60
                mov     rax, cs:off_140C04F48
                mov     rdx, [rsp+120h+var_D8]
                mov     rcx, [rsp+120h+var_E0]
                mov     rax, [rax+20h]
                mov     rdx, [rdx+78h]
                call    sub_1404079D0
                mov     [rbp+57h+arg_10], eax
                mov     ebx, eax
                test    eax, eax
                js      loc_1405B77B7
                mov     rax, cs:off_140C04F48
                mov     rdx, [r13+28h]
                mov     rcx, [rsp+120h+var_E0]
                and     rdx, 0FFFFFFFFFFFFF000h
                mov     rax, [rax+28h]
                call    sub_1404079D0
                mov     ebx, eax
                mov     [rbp+57h+arg_10], eax
                jmp     loc_1405B77B7
; ---------------------------------------------------------------------------

loc_1405B7F93:                          ; CODE XREF: ExShareAddressSpaceWithDevice+32B↑j
                                        ; ExShareAddressSpaceWithDevice+334↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1405B7F9A:                          ; CODE XREF: ExShareAddressSpaceWithDevice+2A6↑j
                mov     rax, [rbp+57h+arg_8]
                mov     [rax], r12d

loc_1405B7FA1:                          ; CODE XREF: ExShareAddressSpaceWithDevice+2BE↑j
                                        ; ExShareAddressSpaceWithDevice+3B1↑j
                or      r12d, 0FFFFFFFFh
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1405B7FA9:                          ; CODE XREF: ExShareAddressSpaceWithDevice+E5↑j
                lea     rsi, [r13+890h]
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405B7FC3
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_1405B7FC3:                          ; CODE XREF: ExShareAddressSpaceWithDevice+A99↑j
                mov     rbx, gs:188h
                xor     r15d, r15d
                mov     rcx, rsi
                mov     [rbp+57h+var_C8], r15d
                call    sub_140245330
                lea     r9d, [r15+1]
                cmp     eax, r9d
                jnz     short loc_1405B7FF7
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r12d, eax
                lea     r9d, [r15+1]

loc_1405B7FF7:                          ; CODE XREF: ExShareAddressSpaceWithDevice+AC2↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [rbx+1E6h], ax
                add     [rbx+31Ah], r9b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rsi
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      edx, ecx
                and     r8, r10
                xor     edx, 3Fh
                jmp     short loc_1405B807A
; ---------------------------------------------------------------------------

loc_1405B8035:                          ; CODE XREF: ExShareAddressSpaceWithDevice+B60↓j
                lea     rdi, [rcx+rcx*2]
                mov     eax, r9d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rdi+1Ah], r9b
                jz      short loc_1405B807A
                mov     eax, [rdi+20h]
                test    r9b, al
                jnz     short loc_1405B807A
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     short loc_1405B807A
                cmp     [rdi+28h], r12d
                jnz     short loc_1405B807A
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jnz     short loc_1405B80A8

loc_1405B807A:                          ; CODE XREF: ExShareAddressSpaceWithDevice+B13↑j
                                        ; ExShareAddressSpaceWithDevice+B31↑j ...
                bsr     ecx, edx
                mov     [rbp+57h+var_CC], ecx
                jnz     short loc_1405B8035

loc_1405B8082:                          ; CODE XREF: ExShareAddressSpaceWithDevice+B8B↓j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1405B8125
                mov     r9d, r12d
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+120h+var_100], r15
                mov     ecx, 162h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B80A8:                          ; CODE XREF: ExShareAddressSpaceWithDevice+B58↑j
                test    rdi, rdi
                jz      short loc_1405B8082
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1405B80CF
                mov     rcx, rdi
                call    sub_14031EC80
                mov     r9d, 1

loc_1405B80CF:                          ; CODE XREF: ExShareAddressSpaceWithDevice+B9F↑j
                mov     edx, [rdi+58h]
                mov     ecx, edx
                and     ecx, 1FFFFh
                and     edx, 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rbp+57h+var_C8], ecx
                mov     [rdi+58h], edx
                mov     [rdi+20h], r15
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r9b
                jnz     short loc_1405B8186
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1405B8125:                          ; CODE XREF: ExShareAddressSpaceWithDevice+B69↑j
                                        ; ExShareAddressSpaceWithDevice+C74↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_C8]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     ecx, 1
                add     [rbx+1E6h], cx
                jnz     short loc_1405B8159
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B8159
                call    KiCheckForKernelApcDelivery

loc_1405B8159:                          ; CODE XREF: ExShareAddressSpaceWithDevice+C26↑j
                                        ; ExShareAddressSpaceWithDevice+C32↑j
                mov     rcx, [rbp+57h+var_98]
                call    sub_140245770
                lea     rcx, [r13+458h]
                call    sub_14024C380
                mov     eax, [rbp+57h+arg_10]

loc_1405B8171:                          ; CODE XREF: ExShareAddressSpaceWithDevice+6B↑j
                                        ; ExShareAddressSpaceWithDevice+7A↑j ...
                add     rsp, 0E8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405B8186:                          ; CODE XREF: ExShareAddressSpaceWithDevice+BF3↑j
                mov     ecx, edx
                mov     eax, r9d
                shl     al, cl
                lock or [rbx+366h], al
                jmp     short loc_1405B8125
ExShareAddressSpaceWithDevice endp

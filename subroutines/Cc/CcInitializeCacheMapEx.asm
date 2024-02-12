CcInitializeCacheMapEx proc near        ; CODE XREF: CcInitializeCacheMap+13↓p
                                        ; DATA XREF: .rdata:000000014005A9D8↑o ...

var_D0          = qword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = qword ptr -0B0h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
arg_0           = byte ptr  10h
arg_8           = dword ptr  18h
arg_10          = byte ptr  20h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h
arg_28          = dword ptr  38h

; FUNCTION CHUNK AT 0000000140439254 SIZE 00000D23 BYTES

                mov     [rsp-8+arg_18], r9
                mov     [rsp-8+arg_10], r8b
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-17h]
                sub     rsp, 0C0h
                mov     r12, gs:188h
                mov     rsi, rcx
                xor     ecx, ecx
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     [rbp+47h+var_88], ecx
                mov     r14d, ecx
                mov     [rbp+47h+var_78], rcx
                mov     rax, [r12+0B8h]
                mov     r13d, ecx
                mov     [rbp+47h+var_48], rax
                xor     eax, eax
                mov     [rbp+47h+var_B0], rax
                mov     [rbp+47h+var_98], rax
                mov     [rbp+47h+arg_0], al
                movzx   eax, cs:byte_140CF49D8
                mov     [rbp+47h+var_8C], ecx
                mov     [rbp+47h+var_90], ecx
                mov     [rbp+47h+var_70], ecx
                mov     [rbp+47h+var_80], rcx
                mov     [rbp+47h+arg_8], ecx
                mov     [rbp+47h+var_68], rcx
                movups  [rbp+47h+var_C0], xmm0
                movups  [rbp+47h+var_A8], xmm1
                test    al, al
                jnz     loc_140439254
                mov     ecx, [rbp+47h+arg_28]
                mov     [rbp+47h+var_84], ecx

loc_14025C90C:                          ; CODE XREF: CcInitializeCacheMapEx+1DC9DD↓j
                movups  xmm1, xmmword ptr [rdx]
                movsd   xmm0, qword ptr [rdx+10h]
                movq    rax, xmm1
                movsd   [rbp+47h+var_50], xmm0
                movups  [rbp+47h+var_60], xmm1
                mov     qword ptr [rbp+47h+var_60], rax
                test    rax, rax
                jz      loc_14025D073

loc_14025C92F:                          ; CODE XREF: CcInitializeCacheMapEx+7FE↓j
                mov     edi, [r12+74h]
                and     edi, 400h
                cmp     [rsi+4Bh], r13b
                jnz     loc_14025CFA4
                add     rax, 3FFFFh
                mov     qword ptr [rbp+47h+var_60], rax
                and     eax, 0FFFC0000h

loc_14025C953:                          ; CODE XREF: CcInitializeCacheMapEx+733↓j
                mov     r15, [rbp+47h+arg_20]
                mov     ecx, 228h
                mov     dword ptr [rbp+47h+var_60], eax
                mov     rax, [rsi+28h]

loc_14025C963:                          ; DATA XREF: .rdata:000000014005A9D8↑o
                                        ; .rdata:000000014005A9E8↑o ...
                mov     [rsp+0F0h+var_38], rbx
                cmp     [rax+8], r13
                jz      loc_14025CC6C

loc_14025C975:                          ; CODE XREF: CcInitializeCacheMapEx+572↓j
                lea     rdx, [rbp+47h+var_C0]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                cmp     qword ptr [rsi+30h], 0
                jnz     loc_14025D083
                mov     rbx, [rsi+28h]
                mov     rbx, [rbx+8]
                test    rbx, rbx
                jz      loc_14025CDF7
                mov     rcx, rbx
                call    sub_140265960
                xor     r8d, r8d
                mov     rcx, rsi
                mov     r13, rax
                lea     edx, [r8+8]
                call    sub_14021B460
                mov     rdx, rax
                test    rax, rax
                jnz     loc_1404392E1

loc_14025C9C7:                          ; CODE XREF: CcInitializeCacheMapEx+1DCA68↓j
                lea     rdx, [r13+80h]
                mov     qword ptr [rbp+47h+var_A8], r8
                lea     rcx, [rbp+47h+var_A8]
                mov     qword ptr [rbp+47h+var_A8+8], rdx
                call    sub_14024B3F0
                mov     eax, [rsi+50h]
                test    al, 20h
                jnz     short loc_14025C9ED
                and     dword ptr [rbx+98h], 0FFFFFFBFh

loc_14025C9ED:                          ; CODE XREF: CcInitializeCacheMapEx+164↑j
                mov     eax, [rbx+98h]
                bt      eax, 15h
                jnb     short loc_14025CA01
                test    edi, edi
                jnz     loc_14025D0B0

loc_14025CA01:                          ; CODE XREF: CcInitializeCacheMapEx+177↑j
                                        ; CcInitializeCacheMapEx+83A↓j
                mov     rax, [rbp+47h+var_48]
                mov     eax, [rax+5F4h]
                test    eax, eax
                jz      short loc_14025CA15
                mov     [rbx+200h], eax

loc_14025CA15:                          ; CODE XREF: CcInitializeCacheMapEx+18D↑j
                                        ; CcInitializeCacheMapEx+5EB↓j
                lea     rcx, [rbp+47h+var_A8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rbp+47h+var_A8]
                mov     r13, rax
                lea     r15, [rax+80h]
                mov     rcx, r15
                call    KeAcquireInStackQueuedSpinLock
                cmp     cs:KdDebuggerEnabled, 0
                jnz     loc_1404393C6

loc_14025CA49:                          ; CODE XREF: CcInitializeCacheMapEx+1DCB4D↓j
                                        ; CcInitializeCacheMapEx+1DCB5D↓j ...
                mov     eax, [rbx+98h]
                and     eax, 0FFFFFFEFh
                mov     ecx, eax
                mov     [rbx+98h], eax
                and     ecx, 100h
                cmp     qword ptr [rbx+58h], 0
                jz      loc_14025CE70
                test    ecx, ecx
                jnz     loc_1404396A5
                inc     dword ptr [rbx+4]
                lea     rcx, [rbp+47h+var_A8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+47h+var_98]
                test    eax, eax
                jnz     loc_140439904

loc_14025CA91:                          ; CODE XREF: CcInitializeCacheMapEx+1DD086↓j
                                        ; CcInitializeCacheMapEx+1DD092↓j ...
                mov     cr8, rdi
                lea     rcx, [rbp+47h+var_C0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+47h+var_B0]
                test    eax, eax
                jnz     loc_14043996E

loc_14025CAB0:                          ; CODE XREF: CcInitializeCacheMapEx+719↓j
                                        ; CcInitializeCacheMapEx+1DCD90↓j ...
                mov     cr8, rdi

loc_14025CAB4:                          ; CODE XREF: CcInitializeCacheMapEx+1DD05C↓j
                test    r14, r14
                jnz     loc_1404399D8

loc_14025CABD:                          ; CODE XREF: CcInitializeCacheMapEx+1DD16D↓j
                lea     rdi, [rbx+178h]
                cmp     word ptr [rdi], 0
                jnz     loc_14025D034

loc_14025CACE:                          ; CODE XREF: CcInitializeCacheMapEx+7D0↓j
                lea     rdx, [rbp+47h+var_C0]
                mov     r14d, 1
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                lea     rdx, [rbp+47h+var_A8]
                mov     rcx, r15
                call    KeAcquireInStackQueuedSpinLock
                cmp     qword ptr [rsi+30h], 0
                jnz     loc_140439AD6
                cmp     word ptr [rdi], 0
                jnz     loc_14025D05B
                mov     r15, [rbp+47h+var_80]

loc_14025CB09:                          ; CODE XREF: CcInitializeCacheMapEx+7EE↓j
                xor     edx, edx
                mov     rcx, rdi
                lea     r8d, [rdx+78h]
                call    memset
                mov     eax, 2FEh
                mov     [rdi+8], rsi
                mov     rcx, r12
                mov     [rdi], ax
                mov     dword ptr [rdi+4], 0FFFh
                call    sub_1402C4F00
                movzx   ecx, al
                lea     rax, [rdi+60h]
                shl     ecx, 12h
                xor     ecx, [rdi]
                and     ecx, 1C0000h
                mov     qword ptr [rdi+50h], 0
                xor     [rdi], ecx
                lea     rcx, [rbx+0E0h]
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_140439ACF
                mov     [rax], rcx
                mov     r12, 0FFFFFFFFFFFFFFFFh
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                mov     [rsi+30h], rdi

loc_14025CB7B:                          ; CODE XREF: CcInitializeCacheMapEx+1DD575↓j
                mov     edi, r14d
                mov     esi, r14d
                test    rbx, rbx
                jz      short loc_14025CBDB
                test    r14d, r14d
                jz      loc_140439DFA

loc_14025CB8F:                          ; CODE XREF: CcInitializeCacheMapEx+1DD590↓j
                test    r13, r13
                jz      short loc_14025CB9C
                test    edi, edi
                jz      loc_140439E15

loc_14025CB9C:                          ; CODE XREF: CcInitializeCacheMapEx+312↑j
                                        ; CcInitializeCacheMapEx+1DD5AA↓j
                cmp     [rbp+47h+var_70], 0
                jnz     short loc_14025CBB6
                cmp     dword ptr [rbx+70h], 0
                jnz     short loc_14025CBB6
                cmp     dword ptr [rbx+4], 0
                jz      short loc_14025CBB6
                mov     rcx, rbx
                call    sub_1402F53A8

loc_14025CBB6:                          ; CODE XREF: CcInitializeCacheMapEx+320↑j
                                        ; CcInitializeCacheMapEx+326↑j ...
                mov     rcx, [rbx+110h]
                test    rcx, rcx
                jnz     loc_140439E2F

loc_14025CBC6:                          ; CODE XREF: CcInitializeCacheMapEx+1DD5CC↓j
                and     dword ptr [rbx+98h], 0FFFEFFFFh
                mov     qword ptr [rbx+110h], 0

loc_14025CBDB:                          ; CODE XREF: CcInitializeCacheMapEx+304↑j
                test    esi, esi
                jz      short loc_14025CBFE

loc_14025CBDF:                          ; CODE XREF: CcInitializeCacheMapEx+1DD26E↓j
                lea     rcx, [rbp+47h+var_A8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+47h+var_98]
                test    eax, eax
                jnz     loc_140439E51

loc_14025CBFA:                          ; CODE XREF: CcInitializeCacheMapEx+1DD5D3↓j
                                        ; CcInitializeCacheMapEx+1DD5DF↓j ...
                mov     cr8, rbx

loc_14025CBFE:                          ; CODE XREF: CcInitializeCacheMapEx+35D↑j
                test    r14d, r14d
                jz      short loc_14025CC22
                lea     rcx, [rbp+47h+var_C0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+47h+var_B0]
                test    eax, eax
                jnz     loc_140439EB6

loc_14025CC1E:                          ; CODE XREF: CcInitializeCacheMapEx+1DD638↓j
                                        ; CcInitializeCacheMapEx+1DD644↓j ...
                mov     cr8, rbx

loc_14025CC22:                          ; CODE XREF: CcInitializeCacheMapEx+381↑j
                mov     edi, [rbp+47h+arg_8]
                mov     r14, [rbp+47h+var_78]

loc_14025CC29:                          ; CODE XREF: CcInitializeCacheMapEx+1DD49A↓j
                                        ; CcInitializeCacheMapEx+1DD56C↓j
                test    r14, r14
                jnz     loc_140439F18

loc_14025CC32:                          ; CODE XREF: CcInitializeCacheMapEx+1DD6A6↓j
                test    r15, r15
                jnz     loc_140439F2B

loc_14025CC3B:                          ; CODE XREF: CcInitializeCacheMapEx+1DD6B9↓j
                mov     rcx, [rbp+47h+var_68]
                test    rcx, rcx
                jnz     loc_140439F3E

loc_14025CC48:                          ; CODE XREF: CcInitializeCacheMapEx+1DD6C9↓j
                test    edi, edi
                js      loc_140439F4E

loc_14025CC50:                          ; CODE XREF: CcInitializeCacheMapEx+825↓j
                                        ; CcInitializeCacheMapEx+1DD325↓j
                mov     rbx, [rsp+0F0h+var_38]
                add     rsp, 0C0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
algn_14025CC6B:                         ; DATA XREF: .pdata:00000001400CD548↑o
                                        ; .pdata:00000001400CD554↑o
                align 4

loc_14025CC6C:                          ; CODE XREF: CcInitializeCacheMapEx+EF↑j
                                        ; CcInitializeCacheMapEx+1DCA5C↓j
                                        ; DATA XREF: ...
                mov     rdx, rcx
                mov     r8d, 63536343h
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140439F6C
                xor     edx, edx
                mov     r8d, 228h
                mov     rcx, rax
                call    memset
                test    byte ptr [rbp+47h+var_84], 1
                mov     r14, rbx
                mov     eax, [rbp+47h+var_88]
                mov     [rbp+47h+var_78], rbx
                jnz     loc_140439262

loc_14025CCAF:                          ; CODE XREF: CcInitializeCacheMapEx+1DC9E8↓j
                mov     rdx, qword ptr [rbp+47h+var_60]
                lea     rcx, [rbp+47h+var_68]
                mov     r9, rsi
                mov     r8d, eax
                call    sub_140701578
                mov     [rbp+47h+arg_8], eax
                cmp     eax, 0C000060Bh
                jz      loc_140439BE6
                test    eax, eax
                js      loc_140439BBE
                mov     rcx, [rbp+47h+var_68]
                call    ObDeleteCapturedInsertInfo
                mov     rax, [rsi+28h]
                mov     rcx, [rax]
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, word ptr [rcx+3Ch]
                and     ecx, 3FFh
                mov     rcx, [rax+rcx*8]
                mov     rcx, [rcx+0B0h]
                call    sub_14034DF30
                mov     r13, rax
                test    rax, rax
                jz      loc_140439BAA
                mov     rax, qword ptr [rbp+47h+var_60+8]
                lea     rdx, [rbx+1F8h]
                mov     dword ptr [rbx], 22802FFh
                mov     rcx, rsi
                mov     [rbx+60h], rsi
                mov     [rbx+8], rax
                mov     rax, [rbp+47h+var_50]
                mov     [rbx+28h], rax
                mov     [rbx+30h], rax
                mov     rax, [rbp+47h+var_48]
                mov     eax, [rax+5F4h]
                mov     [rbx+200h], eax
                mov     [rbx+210h], r13
                call    sub_140345FCC
                mov     [rbp+47h+arg_8], eax
                test    eax, eax
                js      loc_140439F6C
                mov     dword ptr [rbx+118h], 1
                lea     rax, [rbx+138h]
                xor     ecx, ecx
                mov     [rbx+120h], rcx
                mov     [rbx+128h], ecx
                mov     word ptr [rbx+130h], 1
                mov     byte ptr [rbx+132h], 6
                mov     [rbx+134h], ecx
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rbx+68h], rcx
                cmp     [rbp+47h+arg_10], cl
                jnz     loc_14025CFC4

loc_14025CDAE:                          ; CODE XREF: CcInitializeCacheMapEx+74B↓j
                mov     eax, [rsi+50h]
                test    al, 20h
                jnz     loc_14025CFB8

loc_14025CDB9:                          ; CODE XREF: CcInitializeCacheMapEx+73F↓j
                test    edi, edi
                jnz     short loc_14025CDC7
                or      dword ptr [rbx+98h], 200000h

loc_14025CDC7:                          ; CODE XREF: CcInitializeCacheMapEx+53B↑j
                lea     rax, [rbx+10h]
                mov     [rbx+0D8h], r15
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rax, [rbp+47h+arg_18]
                mov     [rbx+0D0h], rax
                add     rbx, 0E0h
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                jmp     loc_14025C975
; ---------------------------------------------------------------------------

loc_14025CDF7:                          ; CODE XREF: CcInitializeCacheMapEx+11B↑j
                test    r14, r14
                jz      loc_14043926D
                mov     rbx, r14
                lea     rcx, [rbp+47h+var_A8]
                xor     r14d, r14d
                mov     [rbp+47h+var_78], r14
                mov     rdi, [rbx+210h]
                mov     qword ptr [rbp+47h+var_A8], r14
                lea     rdx, [rdi+80h]
                mov     qword ptr [rbp+47h+var_A8+8], rdx
                call    sub_14024B3F0
                mov     rcx, [rdi+18h]
                lea     rax, [rbx+88h]
                add     rdi, 10h
                cmp     [rcx], rdi
                jnz     loc_140439ACF
                mov     [rax+8], rcx
                mov     edx, 746C6644h
                mov     [rax], rdi
                mov     [rcx], rax
                mov     rcx, rsi
                mov     [rdi+8], rax
                mov     rax, [rsi+28h]
                mov     [rbp+47h+var_70], 1
                mov     [rax+8], rbx
                call    ObfReferenceObjectWithTag
                jmp     loc_14025CA15
; ---------------------------------------------------------------------------

loc_14025CE70:                          ; CODE XREF: CcInitializeCacheMapEx+1E5↑j
                test    ecx, ecx
                jnz     loc_1404396A5
                inc     dword ptr [rbx+4]
                bts     eax, 8
                mov     [rbx+98h], eax
                mov     rax, [rbx+0B0h]
                test    rax, rax
                jnz     loc_1404393F5

loc_14025CE95:                          ; CODE XREF: CcInitializeCacheMapEx+1DCB90↓j
                lea     rcx, [rbp+47h+var_A8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+47h+var_98]
                test    eax, eax
                jnz     loc_140439415

loc_14025CEB0:                          ; CODE XREF: CcInitializeCacheMapEx+1DCB97↓j
                                        ; CcInitializeCacheMapEx+1DCBA3↓j ...
                mov     cr8, rdi
                lea     rcx, [rbp+47h+var_C0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+47h+var_B0]
                test    eax, eax
                jnz     loc_14043947F

loc_14025CECF:                          ; CODE XREF: CcInitializeCacheMapEx+1DCC01↓j
                                        ; CcInitializeCacheMapEx+1DCC0D↓j ...
                mov     cr8, rdi
                cmp     qword ptr [rbx+0A8h], 0
                mov     [rbp+47h+var_8C], 1
                jnz     loc_140439691
                mov     rcx, [rbp+47h+var_68]
                test    rcx, rcx
                jz      loc_14043966F
                mov     [rbx+0A8h], rcx
                xor     edi, edi
                mov     rax, [rsi+18h]
                mov     [rbp+47h+var_68], rdi
                test    byte ptr [rax+6], 1
                jnz     short loc_14025CF16
                cmp     [rsi+20h], rdi
                jz      loc_14025CFD0

loc_14025CF16:                          ; CODE XREF: CcInitializeCacheMapEx+68A↑j
                                        ; CcInitializeCacheMapEx+7AF↓j
                mov     rdx, qword ptr [rbp+47h+var_60]
                mov     rcx, rbx
                call    sub_1406FF070
                mov     [rbp+47h+arg_8], eax
                mov     edi, eax
                test    eax, eax
                js      loc_140439696
                test    byte ptr [rbp+47h+var_84], 1
                jnz     loc_140439553

loc_14025CF39:                          ; CODE XREF: CcInitializeCacheMapEx+1DCD79↓j
                lea     rdx, [rbp+47h+var_C0]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                mov     rdx, r15
                mov     qword ptr [rbp+47h+var_A8+8], r15
                lea     rcx, [rbp+47h+var_A8]
                mov     qword ptr [rbp+47h+var_A8], 0
                call    sub_14024B3F0
                mov     rcx, [rbx+0B0h]
                and     dword ptr [rbx+98h], 0FFFFFEFFh
                test    rcx, rcx
                jnz     loc_1404395FE

loc_14025CF7B:                          ; CODE XREF: CcInitializeCacheMapEx+1DCD89↓j
                lea     rcx, [rbp+47h+var_A8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                lea     rcx, [rbp+47h+var_C0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+47h+var_B0]
                test    eax, eax
                jz      loc_14025CAB0
                jmp     loc_14043960E
; ---------------------------------------------------------------------------

loc_14025CFA4:                          ; CODE XREF: CcInitializeCacheMapEx+BE↑j
                                        ; DATA XREF: .pdata:00000001400CD560↑o ...
                add     rax, 0FFFFFh
                mov     qword ptr [rbp+47h+var_60], rax
                and     eax, 0FFF00000h
                jmp     loc_14025C953
; ---------------------------------------------------------------------------

loc_14025CFB8:                          ; CODE XREF: CcInitializeCacheMapEx+533↑j
                                        ; DATA XREF: .pdata:00000001400CD56C↑o ...
                or      dword ptr [rbx+98h], 40h
                jmp     loc_14025CDB9
; ---------------------------------------------------------------------------

loc_14025CFC4:                          ; CODE XREF: CcInitializeCacheMapEx+528↑j
                or      dword ptr [rbx+98h], 4
                jmp     loc_14025CDAE
; ---------------------------------------------------------------------------

loc_14025CFD0:                          ; CODE XREF: CcInitializeCacheMapEx+690↑j
                mov     rcx, [rsi+28h]
                call    MmDisableModifiedWriteOfSection
                lea     rdx, [rbp+47h+var_C0]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                mov     rdx, r15
                mov     qword ptr [rbp+47h+var_A8+8], r15
                lea     rcx, [rbp+47h+var_A8]
                mov     qword ptr [rbp+47h+var_A8], rdi
                call    sub_14024B3F0
                or      dword ptr [rbx+98h], 200h
                lea     rcx, [rbp+47h+var_A8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                lea     rcx, [rbp+47h+var_C0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+47h+var_B0]
                test    eax, eax
                jnz     loc_1404394E9

loc_14025D02B:                          ; CODE XREF: CcInitializeCacheMapEx+1DCC6B↓j
                                        ; CcInitializeCacheMapEx+1DCC77↓j ...
                mov     cr8, rdi
                jmp     loc_14025CF16
; ---------------------------------------------------------------------------

loc_14025D034:                          ; CODE XREF: CcInitializeCacheMapEx+248↑j
                                        ; CcInitializeCacheMapEx+1DD24A↓j
                mov     edx, 78h ; 'x'
                mov     ecx, 200h
                mov     r8d, 63506343h
                call    ExAllocatePoolWithTag
                mov     [rbp+47h+var_80], rax
                test    rax, rax
                jnz     loc_14025CACE
                jmp     loc_140439B15
; ---------------------------------------------------------------------------

loc_14025D05B:                          ; CODE XREF: CcInitializeCacheMapEx+27F↑j
                mov     rax, [rbp+47h+var_80]
                test    rax, rax
                jz      loc_1404399F2
                mov     rdi, rax
                xor     r15d, r15d
                jmp     loc_14025CB09
; ---------------------------------------------------------------------------

loc_14025D073:                          ; CODE XREF: CcInitializeCacheMapEx+A9↑j
                                        ; DATA XREF: .pdata:00000001400CD578↑o ...
                mov     dword ptr [rbp+47h+var_60], 1
                mov     rax, qword ptr [rbp+47h+var_60]
                jmp     loc_14025C92F
; ---------------------------------------------------------------------------

loc_14025D083:                          ; CODE XREF: CcInitializeCacheMapEx+10A↑j
                                        ; DATA XREF: .pdata:00000001400CD584↑o ...
                lea     rcx, [rbp+47h+var_C0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+47h+var_B0]
                test    eax, eax
                jnz     loc_140439B2E

loc_14025D09E:                          ; CODE XREF: CcInitializeCacheMapEx+1DD2B0↓j
                                        ; CcInitializeCacheMapEx+1DD2BC↓j ...
                mov     cr8, rbx
                test    r14, r14
                jz      loc_14025CC50
                jmp     loc_140439B97
; ---------------------------------------------------------------------------

loc_14025D0B0:                          ; CODE XREF: CcInitializeCacheMapEx+17B↑j
                btr     eax, 15h
                mov     [rbx+98h], eax
                jmp     loc_14025CA01
CcInitializeCacheMapEx endp

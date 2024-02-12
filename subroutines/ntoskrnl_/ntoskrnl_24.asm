ntoskrnl_24     proc near               ; CODE XREF: sub_1407AA7C0+AD4E5↑p
                                        ; sub_1407AB09C+ACFAF↑p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     rdx, rcx
                mov     rcx, cs:qword_140C197A0
                test    rcx, rcx
                jz      short loc_14094ECC4
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                call    EtwWrite

loc_14094ECC4:                          ; CODE XREF: ntoskrnl_24+11↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_24     endp

algn_14094ECCA:                         ; DATA XREF: .pdata:0000000140124410↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_14094ECD0   proc near               ; DATA XREF: .pdata:000000014012441C↑o
                                        ; PAGE:0000000140984A78↓o

var_140         = dword ptr -140h
var_130         = xmmword ptr -130h
var_120         = xmmword ptr -120h
var_110         = xmmword ptr -110h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
arg_0           = dword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h

                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                xor     r14d, r14d
                xorps   xmm0, xmm0
                mov     r12d, r9d
                mov     r13, r8
                mov     rbx, rdx
                mov     rdi, rcx
                mov     [rbp+60h+arg_0], r14d
                lea     esi, [r14+1]
                movups  [rbp+60h+var_C8], xmm0
                movups  [rbp+60h+var_B8], xmm0
                movups  [rbp+60h+var_A8], xmm0
                cmp     [rcx], r14
                jnz     loc_14094EFB5
                cmp     [rcx+0B6F0h], r14
                jz      loc_14094EFB5
                lea     rsi, [rcx+0B7B0h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                mov     rbx, [rdi+0B7A8h]
                lea     eax, [r14+11h]
                test    rbx, rbx
                setz    r15b
                lock cmpxchg [rsi], r14
                jz      short loc_14094ED5F
                mov     rcx, rsi
                call    ExfReleasePushLockShared

loc_14094ED5F:                          ; CODE XREF: sub_14094ECD0+85↑j
                mov     rcx, rsi
                call    sub_140243660
                test    rbx, rbx
                jz      short loc_14094EDE6
                lea     rdx, [rbp+60h+var_C8]
                mov     rcx, rdi
                call    ntoskrnl_21
                test    eax, eax
                js      short loc_14094EDF4
                mov     rdx, qword ptr [rbp+60h+var_B8]
                test    rdx, rdx
                jz      short loc_14094EDF4
                mov     eax, [rdi+0B7B8h]
                mov     ecx, 0DBBA0h
                cmp     eax, ecx
                cmovb   ecx, eax
                mov     r14d, ecx
                add     r14, rdx
                cmp     r14, rdx
                jl      short loc_14094EDF1
                mov     rbx, 0FFFFF78000000320h
                mov     rbx, [rbx]
                call    KeQueryTimeIncrement
                mov     ecx, eax
                mov     rax, 346DC5D63886594Bh
                imul    rcx, rbx
                movzx   r15d, r15b
                imul    rcx
                sar     rdx, 0Bh
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     eax, 1
                cmp     r14, rdx
                cmovle  r15d, eax
                xor     r14d, r14d

loc_14094EDE6:                          ; CODE XREF: sub_14094ECD0+9A↑j
                test    r15b, r15b
                jz      loc_14094EFAC
                jmp     short loc_14094EDF4
; ---------------------------------------------------------------------------

loc_14094EDF1:                          ; CODE XREF: sub_14094ECD0+CE↑j
                xor     r14d, r14d

loc_14094EDF4:                          ; CODE XREF: sub_14094ECD0+AA↑j
                                        ; sub_14094ECD0+B3↑j ...
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  [rbp+60h+var_98], xmm0
                movups  [rbp+60h+var_88], xmm0
                movups  [rbp+60h+var_78], xmm0
                movups  [rsp+160h+var_F8], xmm1
                movups  [rsp+160h+var_E8], xmm1
                movups  [rbp+60h+var_D8], xmm1
                cmp     [rdi], r14
                jnz     loc_14094EFAC
                cmp     [rdi+0B6F0h], r14
                jz      loc_14094EFAC
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     rbx, [rdi+0B7A8h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14094EE52
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14094EE52:                          ; CODE XREF: sub_14094ECD0+178↑j
                mov     rcx, rsi
                call    sub_140243660
                test    rbx, rbx
                jnz     short loc_14094EE6F
                lea     edx, [rbx+5]
                mov     rcx, rdi
                call    sub_1405B3334
                jmp     loc_14094EFAC
; ---------------------------------------------------------------------------

loc_14094EE6F:                          ; CODE XREF: sub_14094ECD0+18D↑j
                mov     rcx, [rdi+0B6F0h]
                lea     r9, [rdi+18h]
                mov     edx, [rdi+0B6E8h]
                mov     esi, 4
                mov     dword ptr [rsp+160h+var_130+0Ch], r14d
                mov     dword ptr [rsp+160h+var_110+9], r14d
                mov     word ptr [rsp+160h+var_110+0Dh], r14w
                mov     byte ptr [rsp+160h+var_110+0Fh], r14b
                test    rcx, rcx
                jz      loc_14094EF34
                test    edx, edx
                jz      short loc_14094EEB0
                test    r9, r9
                jz      loc_14094EFAC

loc_14094EEB0:                          ; CODE XREF: sub_14094ECD0+1D5↑j
                mov     eax, 1
                mov     qword ptr [rsp+160h+var_130], r14
                add     rcx, 14h
                mov     byte ptr [rsp+160h+var_110+8], al
                lea     r8, [rsp+160h+var_130]
                mov     qword ptr [rsp+160h+var_120], r14
                mov     dword ptr [rsp+160h+var_130+8], esi
                mov     qword ptr [rsp+160h+var_120+8], r14
                mov     qword ptr [rsp+160h+var_110], r14
                call    sub_1405B30F8
                test    eax, eax
                jnz     short loc_14094EF09
                test    edx, edx
                jz      short loc_14094EF05
                mov     rax, rdx
                mov     ecx, 0FFFFFFFFh
                shl     rax, 4
                cmp     rax, rcx
                ja      short loc_14094EF09
                lea     r8, [rsp+160h+var_130]
                mov     rcx, r9
                call    sub_1405B30F8

loc_14094EF05:                          ; CODE XREF: sub_14094ECD0+215↑j
                test    eax, eax
                jz      short loc_14094EF12

loc_14094EF09:                          ; CODE XREF: sub_14094ECD0+211↑j
                                        ; sub_14094ECD0+226↑j
                mov     qword ptr [rsp+160h+var_130], r14
                mov     dword ptr [rsp+160h+var_130+8], esi

loc_14094EF12:                          ; CODE XREF: sub_14094ECD0+237↑j
                movups  xmm0, [rsp+160h+var_130]
                mov     eax, r14d
                movups  xmm1, [rsp+160h+var_120]
                movups  [rsp+160h+var_F8], xmm0
                movups  xmm0, [rsp+160h+var_110]
                movups  [rsp+160h+var_E8], xmm1
                movups  [rbp+60h+var_D8], xmm0
                jmp     short loc_14094EF39
; ---------------------------------------------------------------------------

loc_14094EF34:                          ; CODE XREF: sub_14094ECD0+1CD↑j
                mov     eax, 0C000000Dh

loc_14094EF39:                          ; CODE XREF: sub_14094ECD0+262↑j
                test    eax, eax
                jnz     short loc_14094EFAC
                lea     rdx, [rbp+60h+var_98]
                mov     rcx, rdi
                call    ntoskrnl_21
                test    eax, eax
                js      short loc_14094EFAC
                mov     rcx, qword ptr [rsp+160h+var_F8]
                cmp     qword ptr [rbp+60h+var_98], rcx
                jz      short loc_14094EF61
                mov     dword ptr [rsp+160h+var_F8+8], esi
                mov     esi, 6

loc_14094EF61:                          ; CODE XREF: sub_14094ECD0+286↑j
                mov     rax, 0FFFFF78000000320h
                mov     rbx, [rax]
                call    KeQueryTimeIncrement
                mov     ecx, eax
                xor     r9d, r9d
                imul    rcx, rbx
                mov     rax, 346DC5D63886594Bh
                mov     r8d, esi
                imul    rcx
                mov     rcx, rdi
                sar     rdx, 0Bh
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     qword ptr [rsp+160h+var_E8], rdx
                lea     rdx, [rsp+160h+var_F8]
                call    ntoskrnl_20

loc_14094EFAC:                          ; CODE XREF: sub_14094ECD0+119↑j
                                        ; sub_14094ECD0+147↑j ...
                mov     rbx, [rbp+60h+arg_8]
                mov     esi, 1

loc_14094EFB5:                          ; CODE XREF: sub_14094ECD0+4A↑j
                                        ; sub_14094ECD0+57↑j
                cmp     [rdi], r14
                jz      short loc_14094F00E
                mov     cl, sil
                call    sub_140212F34
                mov     rcx, rax
                mov     rax, 0D6BF94D5E57A42BDh
                mul     rcx
                shr     rdx, 17h
                cmp     rdx, 2A30h
                jbe     short loc_14094F00E
                mov     edx, 2
                mov     rcx, rdi
                call    sub_1405B3334
                xorps   xmm0, xmm0
                lea     rdx, [rbp+60h+var_68]
                xor     r9d, r9d
                mov     rcx, rdi
                movups  [rbp+60h+var_68], xmm0
                movups  [rbp+60h+var_58], xmm0
                lea     r8d, [r9+20h]
                movups  [rbp+60h+var_48], xmm0
                call    ntoskrnl_20

loc_14094F00E:                          ; CODE XREF: sub_14094ECD0+2E8↑j
                                        ; sub_14094ECD0+30D↑j
                lea     rdx, [rbp+60h+arg_0]
                mov     rcx, rdi
                call    sub_1405B2F98
                mov     rax, [rbp+60h+arg_28]
                cmp     [rbp+60h+arg_0], r14d
                jnz     short loc_14094F031
                mov     ecx, 0C0000034h
                mov     [rax], r14b
                jmp     short loc_14094F050
; ---------------------------------------------------------------------------

loc_14094F031:                          ; CODE XREF: sub_14094ECD0+355↑j
                mov     r9, [rbp+60h+arg_20]
                mov     r8d, r12d
                mov     rdx, r13
                mov     [rax], sil
                mov     rcx, rbx
                mov     [rsp+160h+var_140], r14d
                call    sub_14094EB2C
                mov     ecx, eax

loc_14094F050:                          ; CODE XREF: sub_14094ECD0+35F↑j
                mov     rbx, [rsp+160h+arg_10]
                mov     eax, ecx
                add     rsp, 130h
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
sub_14094ECD0   endp

algn_14094F06E:                         ; DATA XREF: .pdata:000000014012441C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14094F080   proc near               ; DATA XREF: .pdata:0000000140124428↑o
                                        ; PAGE:0000000140984A80↓o

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_40          = byte ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_20          = qword ptr  60h
arg_28          = qword ptr  68h

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     r12, [rbp+arg_28]
                mov     r13, rdx
                mov     rax, [rbp+arg_20]
                xor     edx, edx
                mov     r15d, r9d
                mov     [rbp+var_28], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_34], edx
                mov     [r12], dl
                mov     rsi, r8
                lea     r9d, [rdx+4]
                mov     ebx, edx
                mov     r14d, edx
                mov     [rbp+var_30], r9d
                mov     [rbp+var_38], edx
                movups  [rbp+var_20], xmm0
                mov     [rbp+var_3C], edx
                cmp     [rcx], rdx
                jz      short loc_14094F10D
                mov     r9, rax
                mov     dword ptr [rsp+80h+var_60], 2
                mov     r8d, r15d
                mov     rdx, rsi
                mov     rcx, r13
                call    sub_14094EB2C
                lea     edi, [r14+1]
                mov     ebx, eax
                mov     [r12], dil
                jmp     loc_14094F29D
; ---------------------------------------------------------------------------

loc_14094F10D:                          ; CODE XREF: sub_14094F080+63↑j
                mov     edi, 1
                test    rsi, rsi
                jz      short loc_14094F13B
                mov     eax, r15d
                sub     eax, edi
                jz      short loc_14094F132
                cmp     eax, edi
                jz      short loc_14094F12C
                cmp     [r8], edi
                jnz     short loc_14094F13B
                jmp     loc_14094F29D
; ---------------------------------------------------------------------------

loc_14094F12C:                          ; CODE XREF: sub_14094F080+A0↑j
                cmp     [r8], di
                jmp     short loc_14094F135
; ---------------------------------------------------------------------------

loc_14094F132:                          ; CODE XREF: sub_14094F080+9C↑j
                cmp     [r8], dil

loc_14094F135:                          ; CODE XREF: sub_14094F080+B0↑j
                jz      loc_14094F29D

loc_14094F13B:                          ; CODE XREF: sub_14094F080+95↑j
                                        ; sub_14094F080+A5↑j
                lea     rax, [rbp+var_30]
                lea     r8, [rbp+var_38]
                mov     [rsp+80h+var_60], rax
                lea     rcx, aJl        ; "JL"
                call    ZwQueryLicenseValue
                mov     ebx, eax
                test    eax, eax
                js      short loc_14094F163
                cmp     [rbp+var_38], edi
                jz      loc_14094F29D

loc_14094F163:                          ; CODE XREF: sub_14094F080+D8↑j
                mov     rax, cs:qword_140D2D418
                test    rax, rax
                jz      short loc_14094F17C
                lea     rcx, [rbp+var_34]
                call    sub_1404079D0
                mov     ebx, eax
                jmp     short loc_14094F181
; ---------------------------------------------------------------------------

loc_14094F17C:                          ; CODE XREF: sub_14094F080+ED↑j
                mov     ebx, 0C00000BBh

loc_14094F181:                          ; CODE XREF: sub_14094F080+FA↑j
                test    ebx, ebx
                js      loc_14094F29D
                cmp     cs:qword_140D2D3D8, r14
                jz      loc_14094F25F
                lea     rax, [rbp+var_40]
                xor     r9d, r9d
                mov     [rsp+80h+var_50], rax
                lea     rdx, qword_140985010
                lea     rax, [rbp+var_3C]
                xor     r8d, r8d
                mov     [rsp+80h+var_58], rax
                and     dword ptr [rsp+80h+var_60], r14d
                call    sub_1407CFEA4
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jnz     short loc_14094F216
                mov     ebx, [rbp+var_3C]
                mov     r8d, 20534C53h
                mov     edx, ebx
                mov     ecx, edi
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jnz     short loc_14094F1EC
                mov     ebx, 0C0000017h
                jmp     loc_14094F29D
; ---------------------------------------------------------------------------

loc_14094F1EC:                          ; CODE XREF: sub_14094F080+160↑j
                lea     rax, [rbp+var_40]
                mov     r9, r14
                mov     [rsp+80h+var_50], rax
                lea     rdx, qword_140985010
                lea     rax, [rbp+var_3C]
                xor     r8d, r8d
                mov     [rsp+80h+var_58], rax
                mov     dword ptr [rsp+80h+var_60], ebx
                call    sub_1407CFEA4
                mov     ebx, eax

loc_14094F216:                          ; CODE XREF: sub_14094F080+146↑j
                test    ebx, ebx
                js      short loc_14094F28E
                mov     rax, cs:qword_140D2D3D8
                lea     rcx, [rbp+var_20]
                mov     [rsp+80h+var_50], rcx
                xor     r9d, r9d
                and     dword ptr [rsp+80h+var_58], 0
                xor     r8d, r8d
                and     dword ptr [rsp+80h+var_60], 0
                mov     rdx, r14
                lea     ecx, [r9+3]
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14094F256
                test    byte ptr [rbp+var_20], 40h
                jz      short loc_14094F256

loc_14094F252:                          ; CODE XREF: sub_14094F080+1DD↓j
                xor     ebx, ebx
                jmp     short loc_14094F268
; ---------------------------------------------------------------------------

loc_14094F256:                          ; CODE XREF: sub_14094F080+1CA↑j
                                        ; sub_14094F080+1D0↑j
                cmp     eax, 0C0000272h
                jnz     short loc_14094F264
                jmp     short loc_14094F252
; ---------------------------------------------------------------------------

loc_14094F25F:                          ; CODE XREF: sub_14094F080+110↑j
                mov     ebx, 0C00000BBh

loc_14094F264:                          ; CODE XREF: sub_14094F080+1DB↑j
                test    ebx, ebx
                js      short loc_14094F28E

loc_14094F268:                          ; CODE XREF: sub_14094F080+1D4↑j
                cmp     [rbp+var_34], 0
                jnz     short loc_14094F28E
                mov     r9, [rbp+var_28]
                mov     r8d, r15d
                mov     rdx, rsi
                mov     dword ptr [rsp+80h+var_60], 2
                mov     rcx, r13
                call    sub_14094EB2C
                mov     ebx, eax
                mov     [r12], dil

loc_14094F28E:                          ; CODE XREF: sub_14094F080+198↑j
                                        ; sub_14094F080+1E6↑j ...
                test    r14, r14
                jz      short loc_14094F29D
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14094F29D:                          ; CODE XREF: sub_14094F080+88↑j
                                        ; sub_14094F080+A7↑j ...
                mov     eax, ebx
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_0]
                add     rsp, 80h
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
; } // starts at 14094F080
sub_14094F080   endp

algn_14094F2C7:                         ; DATA XREF: .pdata:0000000140124428↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14094F2D0   proc near               ; DATA XREF: .pdata:0000000140124434↑o
                                        ; PAGE:0000000140984B68↓o

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], r9d
                mov     r9, r8
                mov     r8, rdx
                lea     rdx, asc_140985868 ; "$&"
                call    sub_1407CFEA4
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F2D0   endp

algn_14094F305:                         ; DATA XREF: .pdata:0000000140124434↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14094F310   proc near               ; DATA XREF: .pdata:0000000140124440↑o
                                        ; PAGE:0000000140984B40↓o

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], r9d
                mov     r9, r8
                mov     r8, rdx
                lea     rdx, qword_140985010
                call    sub_1407CFEA4
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F310   endp

byte_14094F345  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140124440↑o

; =============== S U B R O U T I N E =======================================


sub_14094F34C   proc near               ; CODE XREF: sub_14094F950+ABD↓p
                                        ; DATA XREF: .pdata:000000014012444C↑o

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 50h
                mov     rdi, rcx
                xor     esi, esi
                mov     [rax+18h], esi
                mov     [rax+20h], rsi
                mov     [rax+10h], sil

loc_14094F36A:                          ; DATA XREF: .rdata:00000001400C4C7C↑o
;   __try { // __finally(loc_14094F455)
                mov     rax, gs:188h
                mov     [rsp+68h+var_28], rax
                dec     word ptr [rax+1E4h]
                lea     rbx, [rcx+0B6F8h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                cmp     [rdi+0B6F0h], rsi
                jz      short loc_14094F407
                mov     [rsp+68h+var_38], rsi
                mov     [rsp+68h+var_40], esi
                mov     [rsp+68h+var_48], rsi
                xor     r9d, r9d
                lea     r8, qword_140985FC0
                mov     edx, 20006h
                lea     rcx, [rsp+68h+arg_18]
                call    ZwCreateKey
                mov     [rsp+68h+arg_10], eax
                test    eax, eax
                js      short loc_14094F407
                mov     [rsp+68h+arg_8], 1
                mov     rcx, [rdi+0B6F0h]
                mov     eax, [rcx]
                mov     [rsp+68h+var_40], eax
                mov     [rsp+68h+var_48], rcx
                lea     r9d, [rsi+3]
                xor     r8d, r8d
                lea     rdx, qword_140985878
                mov     rcx, [rsp+68h+arg_18]
                call    ZwSetValueKey
                mov     [rsp+68h+arg_10], eax
;   } // starts at 14094F36A

loc_14094F407:                          ; CODE XREF: sub_14094F34C+4B↑j
                                        ; sub_14094F34C+80↑j
                                        ; DATA XREF: ...
                mov     eax, 11h
                lock cmpxchg [rbx], rsi
                jz      short loc_14094F41B
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_14094F41B:                          ; CODE XREF: sub_14094F34C+C5↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     [rsp+68h+arg_8], 1
                jnz     short loc_14094F445
                mov     rcx, [rsp+68h+arg_18]
                call    ZwClose

loc_14094F445:                          ; CODE XREF: sub_14094F34C+EA↑j
                mov     eax, [rsp+68h+arg_10]
                add     rsp, 50h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14094F34C
; ---------------------------------------------------------------------------

loc_14094F455:                          ; DATA XREF: .rdata:00000001400C4C7C↑o
                                        ; .pdata:000000014012444C↑o ...
;   __finally // owned by 14094F36A
                push    rbx
                push    rbp
                sub     rsp, 48h
                mov     rbp, rdx
                mov     rbx, [rbp+70h]
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx+0B6F8h], rcx
                jz      short loc_14094F480
                lea     rcx, [rbx+0B6F8h]
                call    ExfReleasePushLockShared
                nop

loc_14094F480:                          ; CODE XREF: sub_14094F34C+125↑j
                lea     rcx, [rbx+0B6F8h]
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                nop
                add     rsp, 48h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F34C   endp

algn_14094F4A3:                         ; DATA XREF: .pdata:0000000140124458↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14094F4B0   proc near               ; DATA XREF: .pdata:0000000140124464↑o
                                        ; PAGE:0000000140984A50↓o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, [rsp+arg_28]
                xor     r10d, r10d
                mov     byte ptr [rax], 1
                mov     rax, [rsp+arg_20]
                mov     dword ptr [rax], 10h
                cmp     r9d, 10h
                jnb     short loc_14094F4D4
                mov     r10d, 0C0000023h
                jmp     short loc_14094F4F0
; ---------------------------------------------------------------------------

loc_14094F4D4:                          ; CODE XREF: sub_14094F4B0+1A↑j
                test    rdx, rdx
                jz      short loc_14094F4DF
                mov     dword ptr [rdx], 3

loc_14094F4DF:                          ; CODE XREF: sub_14094F4B0+27↑j
                test    r8, r8
                jz      short loc_14094F4F0
                movups  xmm0, xmmword ptr [rcx+0B791h]
                movdqu  xmmword ptr [r8], xmm0

loc_14094F4F0:                          ; CODE XREF: sub_14094F4B0+22↑j
                                        ; sub_14094F4B0+32↑j
                mov     eax, r10d
                retn
sub_14094F4B0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14094F4F5:                         ; DATA XREF: .pdata:0000000140124464↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14094F500   proc near               ; DATA XREF: .pdata:0000000140124470↑o
                                        ; PAGE:0000000140984AC8↓o

var_28          = dword ptr -28h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 40h
                and     dword ptr [rax-18h], 0
                mov     rsi, rdx
                lea     rdx, [rax-18h]
                mov     ebx, r9d
                mov     rdi, r8
                call    sub_1405B2F98
                cmp     [rsp+48h+var_18], 0
                mov     rax, [rsp+48h+arg_28]
                jnz     short loc_14094F53C
                mov     ecx, 0C0000034h
                mov     byte ptr [rax], 0
                jmp     short loc_14094F559
; ---------------------------------------------------------------------------

loc_14094F53C:                          ; CODE XREF: sub_14094F500+30↑j
                and     [rsp+48h+var_28], 0
                mov     r8d, ebx
                mov     r9, [rsp+48h+arg_20]
                mov     rdx, rdi
                mov     rcx, rsi
                mov     byte ptr [rax], 1
                call    sub_14094EB2C
                mov     ecx, eax

loc_14094F559:                          ; CODE XREF: sub_14094F500+3A↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, ecx
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F500   endp

algn_14094F56C:                         ; DATA XREF: .pdata:0000000140124470↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14094F580   proc near               ; DATA XREF: .pdata:000000014012447C↑o
                                        ; PAGE:0000000140984AA0↓o

var_28          = dword ptr -28h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 40h
                and     dword ptr [rax-18h], 0
                mov     rsi, rdx
                lea     rdx, [rax-18h]
                mov     ebx, r9d
                mov     rdi, r8
                call    sub_1405B2F98
                cmp     [rsp+48h+var_18], 0
                mov     rax, [rsp+48h+arg_28]
                jnz     short loc_14094F5BC
                mov     ecx, 0C0000034h
                mov     byte ptr [rax], 0
                jmp     short loc_14094F5DC
; ---------------------------------------------------------------------------

loc_14094F5BC:                          ; CODE XREF: sub_14094F580+30↑j
                mov     r9, [rsp+48h+arg_20]
                mov     r8d, ebx
                mov     rdx, rdi
                mov     byte ptr [rax], 1
                mov     rcx, rsi
                mov     [rsp+48h+var_28], 4
                call    sub_14094EB2C
                mov     ecx, eax

loc_14094F5DC:                          ; CODE XREF: sub_14094F580+3A↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, ecx
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F580   endp

byte_14094F5EF  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014012447C↑o

; =============== S U B R O U T I N E =======================================


sub_14094F5F8   proc near               ; CODE XREF: sub_1407AAACC+AD3C1↑p
                                        ; DATA XREF: .pdata:0000000140124488↑o

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     [rsp+88h+var_40], rsp
                mov     r13, rdx
                mov     rsi, rcx
                xor     edi, edi
                mov     [rax-58h], edi
                mov     [rax-50h], rdi
                mov     r15d, edi
                mov     [rax+18h], edi
                cmp     [rcx+0B708h], dil
                jnz     loc_14094F778
                lea     rax, [rax+18h]
                mov     [rsp+88h+var_60], rax
                mov     [rsp+88h+var_68], edi
                xor     r9d, r9d
                xor     r8d, r8d
                lea     rdx, qword_140985380
                call    sub_1403B7FEC
                mov     [rsp+88h+var_58], eax
                cmp     eax, 0C0000023h
                jnz     loc_14094F6EA
                mov     r15d, [rsp+88h+arg_10]
                mov     edx, r15d
                lea     ecx, [rdi+1]
                mov     r8d, 20534C53h
                call    ExAllocatePoolWithTag
                mov     [rsp+88h+var_50], rax
                test    rax, rax
                jz      short loc_14094F6BC
                cmp     r15d, 82h
                ja      short loc_14094F6BC
                lea     rcx, [rsp+88h+arg_10]
                mov     [rsp+88h+var_60], rcx
                mov     [rsp+88h+var_68], r15d
                mov     r9, rax
                xor     r8d, r8d
                lea     rdx, qword_140985380
                mov     rcx, rsi
                call    sub_1403B7FEC
                mov     [rsp+88h+var_58], eax
                jmp     short loc_14094F6EA
; ---------------------------------------------------------------------------

loc_14094F6BC:                          ; CODE XREF: sub_14094F5F8+8C↑j
                                        ; sub_14094F5F8+95↑j
                mov     [rsp+88h+var_58], 0C00000E5h

loc_14094F6C4:                          ; CODE XREF: sub_14094F5F8+27D↓j
                                        ; DATA XREF: sub_14094F5F8+1E1↓o
                mov     rcx, [rsp+88h+var_50]
                test    rcx, rcx
                jz      short loc_14094F6D5
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14094F6D5:                          ; CODE XREF: sub_14094F5F8+D4↑j
                mov     eax, [rsp+88h+var_58]
                add     rsp, 50h
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

loc_14094F6EA:                          ; CODE XREF: sub_14094F5F8+65↑j
                                        ; sub_14094F5F8+C2↑j
                                        ; DATA XREF: ...
;   __try { // __finally(loc_14094F87A)
                mov     rax, gs:188h
                mov     [rsp+88h+arg_18], rax
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     r14, [rsi+0B6F8h]
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                cmp     [rsi+0B708h], dil
                jnz     short loc_14094F75B
                mov     r12d, [rsp+88h+var_58]
                test    r12d, r12d
                js      short loc_14094F73E
                mov     r8d, r15d
                lea     rcx, [rsi+0B70Ah]
                mov     rdx, [rsp+88h+var_50]
                call    memmove

loc_14094F73E:                          ; CODE XREF: sub_14094F5F8+130↑j
                mov     ecx, 80000000h
                lea     eax, [r12+rcx]
                test    ecx, eax
                jnz     short loc_14094F754
                cmp     r12d, 0C0000034h
                jnz     short loc_14094F75B

loc_14094F754:                          ; CODE XREF: sub_14094F5F8+151↑j
                mov     byte ptr [rsi+0B708h], 1
;   } // starts at 14094F6EA

loc_14094F75B:                          ; CODE XREF: sub_14094F5F8+126↑j
                                        ; sub_14094F5F8+15A↑j
                                        ; DATA XREF: ...
                lock xadd [r14], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14094F770
                mov     rcx, r14
                call    ExfTryToWakePushLock

loc_14094F770:                          ; CODE XREF: sub_14094F5F8+16E↑j
                mov     rcx, r14
                jmp     loc_14094F854
; ---------------------------------------------------------------------------

loc_14094F778:                          ; CODE XREF: sub_14094F5F8+37↑j
                                        ; DATA XREF: .rdata:00000001400C4BD0↑o
;   __try { // __finally(loc_14094F8CE)
                mov     rax, gs:188h
                mov     [rsp+88h+var_48], rax
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     rbx, [rcx+0B6F8h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                cmp     [rsi+0B708h], dil
                jz      loc_14094F83D
                mov     edx, 82h
                mov     ecx, 1
                mov     r8d, 20534C53h
                call    ExAllocatePoolWithTag
                mov     rcx, rax
                mov     [rsp+88h+var_50], rax
                test    rax, rax
                jnz     short loc_14094F7EA
                mov     [rsp+88h+var_58], 0C00000E5h
                lea     rdx, loc_14094F6C4
                mov     rcx, [rsp+88h+var_40]
                call    _local_unwind

loc_14094F7EA:                          ; CODE XREF: sub_14094F5F8+1D7↑j
                lea     rax, [rsi+0B70Ah]
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm0, xmmword ptr [rax+60h]
                movups  xmmword ptr [rcx+60h], xmm0
                mov     edx, 80h
                movups  xmm0, xmmword ptr [rax+70h]
                movups  xmmword ptr [rcx+rdx-10h], xmm0
                movzx   eax, word ptr [rax+rdx]
                mov     [rcx+rdx], ax
;   } // starts at 14094F778

loc_14094F83D:                          ; CODE XREF: sub_14094F5F8+1B1↑j
                                        ; DATA XREF: .rdata:00000001400C4BD0↑o
                mov     eax, 11h
                lock cmpxchg [rbx], rdi
                jz      short loc_14094F851
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_14094F851:                          ; CODE XREF: sub_14094F5F8+24F↑j
                mov     rcx, rbx

loc_14094F854:                          ; CODE XREF: sub_14094F5F8+17B↑j
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, [rsp+88h+var_50]
                mov     [r13+0], rax
                mov     [rsp+88h+var_50], rdi
                jmp     loc_14094F6C4
; } // starts at 14094F5F8
; ---------------------------------------------------------------------------

loc_14094F87A:                          ; DATA XREF: .rdata:00000001400C4BC0↑o
                                        ; .pdata:0000000140124488↑o ...
;   __finally // owned by 14094F6EA
                push    rbx
                push    rbp
                sub     rsp, 38h
                mov     rbp, rdx
                mov     rbx, [rbp+90h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx+0B6F8h], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14094F8AB
                lea     rcx, [rbx+0B6F8h]
                call    ExfTryToWakePushLock
                nop

loc_14094F8AB:                          ; CODE XREF: sub_14094F5F8+2A4↑j
                lea     rcx, [rbx+0B6F8h]
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                nop
                add     rsp, 38h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14094F8CE:                          ; DATA XREF: .rdata:00000001400C4BD0↑o
                                        ; .pdata:0000000140124494↑o ...
;   __finally // owned by 14094F778
                push    rbx
                push    rbp
                sub     rsp, 38h
                mov     rbp, rdx
                mov     rbx, [rbp+90h]
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx+0B6F8h], rcx
                jz      short loc_14094F8FC
                lea     rcx, [rbx+0B6F8h]
                call    ExfReleasePushLockShared
                nop

loc_14094F8FC:                          ; CODE XREF: sub_14094F5F8+2F5↑j
                lea     rcx, [rbx+0B6F8h]
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                nop
                add     rsp, 38h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F5F8   endp

byte_14094F91F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401244A0↑o

; =============== S U B R O U T I N E =======================================


sub_14094F928   proc near               ; CODE XREF: sub_14094F950+407↓p
                                        ; sub_14094F950+ADC↓p ...
                sub     rsp, 28h
                mov     rcx, [rcx+0B700h]
                test    rcx, rcx
                jz      short loc_14094F942
                xor     r8d, r8d
                xor     edx, edx
                call    ExNotifyCallback

loc_14094F942:                          ; CODE XREF: sub_14094F928+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F928   endp

algn_14094F948:                         ; DATA XREF: .pdata:00000001401244AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14094F950   proc near               ; CODE XREF: ExUpdateLicenseData:loc_140722E8D↑p
                                        ; sub_1407AA7C0:loc_140857CB0↑p
                                        ; DATA XREF: ...

var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1D8         = dword ptr -1D8h
var_1D4         = byte ptr -1D4h
var_1D3         = byte ptr -1D3h
var_1D2         = byte ptr -1D2h
var_1D0         = qword ptr -1D0h
var_1C8         = dword ptr -1C8h
var_1C4         = dword ptr -1C4h
var_1C0         = qword ptr -1C0h
var_1B8         = dword ptr -1B8h
var_1B4         = dword ptr -1B4h
var_1B0         = qword ptr -1B0h
var_1A8         = dword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = dword ptr -190h
var_18C         = dword ptr -18Ch
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_168         = xmmword ptr -168h
var_158         = xmmword ptr -158h
var_148         = xmmword ptr -148h
var_138         = xmmword ptr -138h
var_128         = xmmword ptr -128h
var_118         = xmmword ptr -118h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
arg_10          = byte ptr  18h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1E0h
                mov     rsi, r8
                mov     r8d, edx
                mov     r14, rcx
                xor     r10d, r10d
                mov     [rsp+218h+var_1D2], r10b
                mov     [rsp+218h+var_1D4], r10b
                mov     [rsp+218h+arg_10], r10b
                mov     [rax-188h], r10
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-0B8h], xmm0
                movups  xmmword ptr [rax-0A8h], xmm0
                movups  xmmword ptr [rax-98h], xmm0
                mov     [rax-190h], r10
                mov     [rsp+218h+var_1B0], r10
                mov     [rsp+218h+var_178], r10
                mov     [rax-198h], r10
                mov     r13d, r10d
                mov     [rsp+218h+var_1C0], r10
                mov     [rsp+218h+var_1C8], r10d
                mov     r12d, r10d
                mov     [rsp+218h+var_1D0], r10
                mov     [rsp+218h+var_1C4], r10d
                mov     [rsp+218h+var_1A8], r10d
                movups  xmmword ptr [rax-0E8h], xmm0
                movups  xmmword ptr [rax-0D8h], xmm0
                movups  xmmword ptr [rax-0C8h], xmm0
                test    rsi, rsi
                jz      loc_1409505E1
                lea     eax, [rdx-19h]
                cmp     eax, 13FE7h
                ja      loc_1409505E1
                test    sil, 3
                jnz     loc_1409505E1
                mov     ecx, [rsi]
                mov     eax, 14000h
                cmp     ecx, eax
                ja      loc_1409505C8
                mov     edx, [rsi+4]
                cmp     edx, eax
                ja      loc_1409505C8
                mov     r9d, [rsi+8]
                cmp     r9d, eax
                ja      loc_1409505C8
                lea     r12, [rsi+14h]
                lea     rdi, [rsi+14h]
                add     rdi, rdx
                mov     [rsp+218h+var_F8], rdi
                test    dil, 3
                jz      short loc_14094FA66
                mov     [rsp+218h+var_1D8], 0C000000Dh
                mov     r12d, r10d
                jmp     loc_1409505D0
; ---------------------------------------------------------------------------

loc_14094FA66:                          ; CODE XREF: sub_14094F950+104↑j
                lea     eax, [rdx+14h]
                add     eax, r9d
                mov     r15d, 1
                cmp     eax, ecx
                jz      short loc_14094FA86

loc_14094FA76:                          ; CODE XREF: sub_14094F950+139↓j
                                        ; sub_14094F950+13F↓j
                mov     [rsp+218h+var_1D8], 0C000000Dh
                mov     r12, r10
                jmp     loc_1409505D6
; ---------------------------------------------------------------------------

loc_14094FA86:                          ; CODE XREF: sub_14094F950+124↑j
                cmp     ecx, r8d
                jnz     short loc_14094FA76
                cmp     [rsi+10h], r15d
                jnz     short loc_14094FA76
                mov     [rsp+218h+var_1D8], r10d
                mov     [r14+0B708h], r10b

loc_14094FA9D:                          ; DATA XREF: .rdata:00000001400C4C24↑o
;   __try { // __finally(loc_140950635)
                mov     rax, gs:188h
                mov     [rsp+218h+var_88], rax
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     r13, [r14+0B6F8h]
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockSharedEx
                mov     rcx, [r14]
                mov     [rsp+218h+var_1A0], rcx
                movzx   eax, [rsp+218h+var_1D4]
                test    rcx, rcx
                cmovz   eax, r15d
                mov     [rsp+218h+var_1D4], al
                call    ntoskrnl_22
                xor     edx, edx
                mov     rcx, [rsp+218h+var_1A0]
                test    al, al
                jz      short loc_14094FB04
                test    rcx, rcx
                jnz     short loc_14094FB1E
                mov     [rsp+218h+var_1D8], 0C0000001h
                jmp     loc_14094FBB0
; ---------------------------------------------------------------------------

loc_14094FB04:                          ; CODE XREF: sub_14094F950+1A0↑j
                test    rcx, rcx
                jnz     short loc_14094FB1E
                mov     eax, [rsi+0Ch]
                test    r15b, al
                jz      short loc_14094FB1E
                mov     [rsp+218h+var_1D8], 0C000000Dh
                jmp     loc_14094FBB0
; ---------------------------------------------------------------------------

loc_14094FB1E:                          ; CODE XREF: sub_14094F950+1A5↑j
                                        ; sub_14094F950+1B7↑j ...
                mov     [rsp+218h+var_1D2], dl
                test    rcx, rcx
                jnz     loc_14094FBB0
                mov     rcx, [r14+0B6F0h]
                test    rcx, rcx
                jz      short loc_14094FBB0
                cmp     [r14+0B790h], dl
                jnz     short loc_14094FBB0
                mov     eax, [rcx]
                cmp     [rsi], eax
                jnz     short loc_14094FBB0
                mov     edx, [rsi+4]
                cmp     edx, [rcx+4]
                jnz     short loc_14094FBB0
                mov     eax, [rcx+8]
                cmp     [rsi+8], eax
                jnz     short loc_14094FBB0
                mov     eax, [rcx+0Ch]
                cmp     [rsi+0Ch], eax
                jnz     short loc_14094FBB0
                mov     eax, [rcx+10h]
                cmp     [rsi+10h], eax
                jnz     short loc_14094FBB0
                mov     r8d, edx
                add     rcx, 14h
                mov     rdx, r12
                call    RtlCompareMemory
                mov     ecx, [rsi+4]
                cmp     rax, rcx
                jnz     short loc_14094FBB0
                mov     rcx, [r14+0B6F0h]
                mov     r8d, [rsi+8]
                mov     eax, [rcx+4]
                add     rcx, 14h
                add     rcx, rax
                mov     rdx, rdi
                call    RtlCompareMemory
                mov     ecx, [rsi+8]
                xor     edi, edi
                movzx   edx, dil
                cmp     rax, rcx
                cmovz   edx, r15d
                mov     [rsp+218h+var_1D2], dl
                jmp     short loc_14094FBB2
; ---------------------------------------------------------------------------

loc_14094FBB0:                          ; CODE XREF: sub_14094F950+1AF↑j
                                        ; sub_14094F950+1C9↑j ...
                xor     edi, edi
;   } // starts at 14094FA9D

loc_14094FBB2:                          ; CODE XREF: sub_14094F950+25E↑j
                                        ; DATA XREF: .rdata:00000001400C4C24↑o
                mov     eax, 11h
                lock cmpxchg [r13+0], rdi
                jz      short loc_14094FBC7
                mov     rcx, r13
                call    ExfReleasePushLockShared

loc_14094FBC7:                          ; CODE XREF: sub_14094F950+26D↑j
                mov     rcx, r13
                call    sub_140243660
                call    KeLeaveCriticalRegion
                cmp     [rsp+218h+var_1D8], edi
                jl      loc_1409505BE
                cmp     [rsp+218h+var_1D2], r15b
                jnz     loc_14094FD6F
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockExclusiveEx
                lea     rdx, [rsp+218h+var_1C4]
                mov     rcx, r14
                call    sub_1405B2F98
                xor     esi, esi
                cmp     [rsp+218h+var_1C4], esi
                setnz   dil
                mov     edx, [r14+0B6E8h]
                lea     r9, [r14+18h]
                mov     dword ptr [rsp+218h+var_168+0Ch], esi
                mov     dword ptr [rsp+218h+var_148+9], esi
                mov     word ptr [rsp+218h+var_148+0Dh], si
                mov     byte ptr [rsp+218h+var_148+0Fh], sil
                test    edx, edx
                jz      short loc_14094FC50
                test    r9, r9
                jz      loc_14094FD2B

loc_14094FC50:                          ; CODE XREF: sub_14094F950+2F5↑j
                mov     qword ptr [rsp+218h+var_168], rsi
                mov     qword ptr [rsp+218h+var_158], rsi
                mov     dword ptr [rsp+218h+var_168+8], esi
                mov     qword ptr [rsp+218h+var_158+8], rsi
                mov     qword ptr [rsp+218h+var_148], 2A30h
                mov     byte ptr [rsp+218h+var_148+8], r15b
                lea     r8, [rsp+218h+var_168]
                mov     rcx, r12
                call    sub_1405B30F8
                mov     ecx, eax
                test    eax, eax
                jnz     short loc_14094FCCB
                test    edx, edx
                jz      short loc_14094FCCB
                mov     rax, rdx
                shl     rax, 4
                mov     edx, 0FFFFFFFFh
                cmp     rdx, rax
                sbb     ecx, ecx
                and     ecx, 0C0000095h
                cmp     rax, rdx
                ja      short loc_14094FCCB
                lea     r8, [rsp+218h+var_168]
                mov     rcx, r9
                call    sub_1405B30F8
                mov     ecx, eax

loc_14094FCCB:                          ; CODE XREF: sub_14094F950+347↑j
                                        ; sub_14094F950+34B↑j ...
                test    ecx, ecx
                jz      short loc_14094FCE2
                mov     qword ptr [rsp+218h+var_168], rsi
                mov     dword ptr [rsp+218h+var_168+8], 4

loc_14094FCE2:                          ; CODE XREF: sub_14094F950+37D↑j
                movups  xmm0, [rsp+218h+var_168]
                movups  [rsp+218h+var_E8], xmm0
                movups  xmm1, [rsp+218h+var_158]
                movups  [rsp+218h+var_D8], xmm1
                movups  xmm0, [rsp+218h+var_148]
                movups  [rsp+218h+var_C8], xmm0
                mov     r9d, r15d
                mov     r8d, 7
                lea     rdx, [rsp+218h+var_E8]
                mov     rcx, r14
                call    ntoskrnl_20

loc_14094FD2B:                          ; CODE XREF: sub_14094F950+2FA↑j
                mov     rax, rbx
                lock xadd [r13+0], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14094FD42
                mov     rcx, r13
                call    ExfTryToWakePushLock

loc_14094FD42:                          ; CODE XREF: sub_14094F950+3E8↑j
                mov     rcx, r13
                call    sub_140243660
                call    KeLeaveCriticalRegion
                test    dil, dil
                jz      short loc_14094FD5C
                mov     rcx, r14
                call    sub_14094F928

loc_14094FD5C:                          ; CODE XREF: sub_14094F950+402↑j
                mov     [rsp+218h+var_1D8], 40000000h

loc_14094FD64:                          ; CODE XREF: sub_14094F950+60A↓j
                mov     r12, rsi

loc_14094FD67:                          ; CODE XREF: sub_14094F950+63D↓j
                mov     r13, rsi
                jmp     loc_14095045C
; ---------------------------------------------------------------------------

loc_14094FD6F:                          ; CODE XREF: sub_14094F950+293↑j
                mov     [rsp+218h+var_B8], 30h ; '0'
                mov     [rsp+218h+var_B0], rdi
                mov     [rsp+218h+var_A0], 220h
                mov     [rsp+218h+var_A8], rdi
                xorps   xmm0, xmm0
                movdqu  [rsp+218h+var_98], xmm0
                mov     eax, [rsi]
                mov     [rsp+218h+var_190], eax
                mov     [rsp+218h+var_18C], edi
                mov     [rsp+218h+var_1E8], rdi
                mov     dword ptr [rsp+218h+var_1F0], 8000000h
                mov     dword ptr [rsp+218h+var_1F8], 4
                lea     r9, [rsp+218h+var_190]
                lea     r8, [rsp+218h+var_B8]
                mov     edx, 0F0007h
                lea     rcx, [rsp+218h+var_188]
                call    ZwCreateSection
                mov     [rsp+218h+var_1D8], eax
                test    eax, eax
                js      loc_1409505BE
                mov     [rsp+218h+var_180], rdi
                mov     [rsp+218h+var_1F0], rdi
                lea     rax, [rsp+218h+var_180]
                mov     [rsp+218h+var_1F8], rax
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [rsp+218h+var_188]
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     r12, [rsp+218h+var_180]
                mov     [rsp+218h+var_198], r12
                mov     [rsp+218h+var_1D8], eax
                mov     rcx, [rsp+218h+var_188]
                call    ZwClose
                xor     eax, eax
                test    edi, edi
                js      loc_1409505BE
                mov     [rsp+218h+var_100], rax
                lea     r8, [rsp+218h+var_100]
                lea     rdx, [rsp+218h+var_1B0]
                mov     rcx, r12
                call    MmMapViewInSystemSpace
                mov     [rsp+218h+var_1D8], eax
                test    eax, eax
                js      loc_1409505BE
                mov     rdi, [rsp+218h+var_1B0]
                movups  xmm0, xmmword ptr [rsi]
                movups  xmmword ptr [rdi], xmm0
                mov     eax, [rsi+10h]
                mov     [rdi+10h], eax
                mov     r8d, [rsi+4]
                lea     rcx, [rdi+14h]
                lea     rdx, [rsi+14h]
                call    memmove
                mov     r8d, [rsi+8]
                mov     eax, [rsi+4]
                lea     rcx, [rdi+14h]
                add     rcx, rax
                mov     rdx, [rsp+218h+var_F8]
                call    memmove
                mov     eax, [rdi+4]
                lea     rcx, [rdi+14h]
                add     rcx, rax
                xor     esi, esi
                cmp     dword ptr [rdi+8], 4
                jnz     loc_1409505A9
                test    rcx, rcx
                jz      loc_1409505A9
                cmp     dword ptr [rcx], 45h ; 'E'
                jnz     loc_1409505A9
                lea     rax, [rsp+218h+var_1C8]
                mov     [rsp+218h+var_1F8], rax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dl, r15b
                mov     rcx, rdi
                call    sub_1407AB344
                mov     [rsp+218h+var_1D8], eax
                cmp     eax, 0C0000023h
                jnz     loc_14094FFCD
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockSharedEx
                mov     eax, 0B6Dh
                cmp     eax, [rsp+218h+var_1C8]
                sbb     eax, eax
                and     eax, 0C000000Dh
                mov     [rsp+218h+var_1D8], eax
                lea     eax, [rsi+11h]
                lock cmpxchg [r13+0], rsi
                jz      short loc_14094FF49
                mov     rcx, r13
                call    ExfReleasePushLockShared

loc_14094FF49:                          ; CODE XREF: sub_14094F950+5EF↑j
                mov     rcx, r13
                call    sub_140243660
                call    KeLeaveCriticalRegion
                cmp     [rsp+218h+var_1D8], esi
                jl      loc_14094FD64
                mov     edi, [rsp+218h+var_1C8]
                mov     edx, edi
                shl     rdx, 4
                mov     r8d, 20534C53h
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     r12, rax
                mov     [rsp+218h+var_1D0], rax
                test    rax, rax
                jnz     short loc_14094FF92
                mov     [rsp+218h+var_1D8], 0C0000017h
                jmp     loc_14094FD67
; ---------------------------------------------------------------------------

loc_14094FF92:                          ; CODE XREF: sub_14094F950+633↑j
                mov     [rsp+218h+var_1F8], rsi
                mov     r9d, [rsp+218h+var_1C8]
                mov     r8, r12
                xor     edx, edx
                mov     rcx, [rsp+218h+var_1B0]
                call    sub_1407AB344
                mov     [rsp+218h+var_1D8], eax
                test    eax, eax
                js      short loc_14094FFD0
                lea     r9, sub_1407B1820
                mov     r8d, 10h
                mov     rdx, rdi
                mov     rcx, r12
                call    qsort
                jmp     short loc_14094FFD0
; ---------------------------------------------------------------------------

loc_14094FFCD:                          ; CODE XREF: sub_14094F950+5B2↑j
                mov     r12, rsi

loc_14094FFD0:                          ; CODE XREF: sub_14094F950+661↑j
                                        ; sub_14094F950+67B↑j
                mov     eax, [rsp+218h+var_1D8]
                test    eax, eax
                jns     short loc_14094FFF3
                mov     r13, rsi
                cmp     eax, 0C000003Eh
                jnz     loc_14095045C
                mov     [rsp+218h+var_1D8], 0C000000Dh
                jmp     loc_14095045C
; ---------------------------------------------------------------------------

loc_14094FFF3:                          ; CODE XREF: sub_14094F950+686↑j
                                        ; DATA XREF: .rdata:00000001400C4C34↑o
;   __try { // __finally(loc_14095067D)
                mov     [rsp+218h+var_1D3], sil
                mov     rax, gs:188h
                mov     [rsp+218h+var_80], rax
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockSharedEx
                cmp     [rsp+218h+var_1A0], rsi
                jnz     loc_140950140
                mov     r12d, esi
                mov     [rsp+218h+var_1B4], esi
                mov     eax, esi
                mov     [rsp+218h+var_1B8], eax

loc_140950032:                          ; CODE XREF: sub_14094F950+765↓j
                                        ; sub_14094F950+777↓j
                cmp     r12d, [rsp+218h+var_1C8]
                jnb     loc_140950140
                cmp     eax, [r14+0B6E8h]
                jnb     loc_14095010C
                mov     esi, eax
                mov     edi, r12d
                shl     rdi, 4
                add     rdi, [rsp+218h+var_1D0]
                shl     rax, 4
                lea     rdx, [r14+18h]
                add     rdx, rax
                mov     rcx, rdi
                call    sub_1407B1820
                mov     [rsp+218h+var_108], eax
                mov     r9, [rdi+8]
                mov     [rsp+218h+var_F0], r9
                lea     rcx, [rsi+2]
                add     rcx, rcx
                mov     rdx, [r14+rcx*8]
                mov     [rsp+218h+var_78], rdx
                xor     esi, esi
                test    eax, eax
                jns     short loc_1409500BA
                mov     eax, [r9+8]
                test    al, 2
                jz      short loc_1409500A9

loc_14095009F:                          ; CODE XREF: sub_14094F950+78D↓j
                                        ; sub_14094F950+7B0↓j ...
                mov     [rsp+218h+var_1D3], r15b
                jmp     loc_140950140
; ---------------------------------------------------------------------------

loc_1409500A9:                          ; CODE XREF: sub_14094F950+74D↑j
                add     r12d, r15d
                mov     [rsp+218h+var_1B4], r12d
                mov     eax, [rsp+218h+var_1B8]
                jmp     loc_140950032
; ---------------------------------------------------------------------------

loc_1409500BA:                          ; CODE XREF: sub_14094F950+745↑j
                jle     short loc_1409500CC

loc_1409500BC:                          ; CODE XREF: sub_14094F950+7BA↓j
                mov     eax, [rsp+218h+var_1B8]
                add     eax, r15d
                mov     [rsp+218h+var_1B8], eax
                jmp     loc_140950032
; ---------------------------------------------------------------------------

loc_1409500CC:                          ; CODE XREF: sub_14094F950:loc_1409500BA↑j
                mov     eax, [r9+8]
                test    al, 2
                jz      short loc_140950102
                movzx   eax, word ptr [rdx+6]
                cmp     [r9+6], ax
                jnz     short loc_14095009F
                mov     r8d, eax
                movzx   eax, word ptr [rdx+2]
                add     rax, 10h
                add     rdx, rax
                movzx   eax, word ptr [r9+2]
                lea     rcx, [r9+10h]
                add     rcx, rax
                call    memcmp
                test    eax, eax
                jnz     short loc_14095009F

loc_140950102:                          ; CODE XREF: sub_14094F950+782↑j
                add     r12d, r15d
                mov     [rsp+218h+var_1B4], r12d
                jmp     short loc_1409500BC
; ---------------------------------------------------------------------------

loc_14095010C:                          ; CODE XREF: sub_14094F950+6F4↑j
                                        ; sub_14094F950+7EE↓j
                cmp     r12d, [rsp+218h+var_1C8]
                jnb     short loc_140950140
                mov     eax, r12d
                add     rax, rax
                mov     rcx, [rsp+218h+var_1D0]
                mov     rcx, [rcx+rax*8+8]
                mov     [rsp+218h+var_F0], rcx
                mov     eax, [rcx+8]
                test    al, 2
                jnz     loc_14095009F
                add     r12d, r15d
                mov     [rsp+218h+var_1B4], r12d
                jmp     short loc_14095010C
;   } // starts at 14094FFF3
; ---------------------------------------------------------------------------

loc_140950140:                          ; CODE XREF: sub_14094F950+6CF↑j
                                        ; sub_14094F950+6E7↑j ...
                mov     eax, 11h
                lock cmpxchg [r13+0], rsi
                jz      short loc_140950155
                mov     rcx, r13
                call    ExfReleasePushLockShared

loc_140950155:                          ; CODE XREF: sub_14094F950+7FB↑j
                mov     rcx, r13
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     rcx, [rsp+218h+var_198]
                call    ObfReferenceObject
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockExclusiveEx
                mov     dword ptr [rsp+218h+var_138+0Ch], esi
                mov     dword ptr [rsp+218h+var_118+9], esi
                mov     word ptr [rsp+218h+var_118+0Dh], si
                mov     byte ptr [rsp+218h+var_118+0Fh], sil
                mov     r12, [rsp+218h+var_1B0]
                test    r12, r12
                jz      loc_140950291
                mov     edi, [rsp+218h+var_1C8]
                mov     r9, [rsp+218h+var_1D0]
                test    edi, edi
                jz      short loc_1409501CB
                test    r9, r9
                jz      loc_140950295

loc_1409501CB:                          ; CODE XREF: sub_14094F950+870↑j
                mov     qword ptr [rsp+218h+var_138], rsi
                mov     qword ptr [rsp+218h+var_128], rsi
                mov     dword ptr [rsp+218h+var_138+8], esi
                mov     qword ptr [rsp+218h+var_128+8], rsi
                mov     qword ptr [rsp+218h+var_118], 2A30h
                mov     byte ptr [rsp+218h+var_118+8], r15b
                lea     rcx, [r12+14h]
                lea     r8, [rsp+218h+var_138]
                call    sub_1405B30F8
                mov     ecx, eax
                test    eax, eax
                jnz     short loc_140950248
                test    edi, edi
                jz      short loc_140950248
                mov     rax, rdi
                shl     rax, 4
                mov     edx, 0FFFFFFFFh
                cmp     rdx, rax
                sbb     ecx, ecx
                and     ecx, 0C0000095h
                cmp     rax, rdx
                ja      short loc_140950248
                lea     r8, [rsp+218h+var_138]
                mov     rcx, r9
                call    sub_1405B30F8
                mov     ecx, eax

loc_140950248:                          ; CODE XREF: sub_14094F950+8C4↑j
                                        ; sub_14094F950+8C8↑j ...
                test    ecx, ecx
                jz      short loc_14095025F
                mov     qword ptr [rsp+218h+var_138], rsi
                mov     dword ptr [rsp+218h+var_138+8], 4

loc_14095025F:                          ; CODE XREF: sub_14094F950+8FA↑j
                movups  xmm0, [rsp+218h+var_138]
                movups  [rsp+218h+var_E8], xmm0
                movups  xmm1, [rsp+218h+var_128]
                movups  [rsp+218h+var_D8], xmm1
                movups  xmm0, [rsp+218h+var_118]
                movups  [rsp+218h+var_C8], xmm0
                jmp     short loc_14095029A
; ---------------------------------------------------------------------------

loc_140950291:                          ; CODE XREF: sub_14094F950+85F↑j
                mov     edi, [rsp+218h+var_1C8]

loc_140950295:                          ; CODE XREF: sub_14094F950+875↑j
                mov     esi, 0C000000Dh

loc_14095029A:                          ; CODE XREF: sub_14094F950+93F↑j
                mov     [rsp+218h+var_1D8], esi
                xor     edx, edx
                test    esi, esi
                js      loc_1409503D3
                mov     r9d, r15d
                lea     r8d, [rdx+7]
                lea     rdx, [rsp+218h+var_E8]
                mov     rcx, r14
                call    ntoskrnl_20
                mov     rax, [r14+10h]
                mov     [rsp+218h+var_1C0], rax
                mov     rax, [r14+0B6F0h]
                mov     [rsp+218h+var_178], rax
                mov     rax, [rsp+218h+var_198]
                mov     [r14+10h], rax
                mov     [r14+0B6F0h], r12
                xor     r12d, r12d
                mov     [rsp+218h+var_1B0], r12
                call    PsGetCurrentServerSilo
                mov     rcx, rax
                call    PsIsHostSilo
                test    al, al
                jnz     short loc_140950315
                mov     rcx, [r14]
                test    rcx, rcx
                jz      short loc_140950315
                mov     edx, 69534C53h
                call    ExFreePoolWithTag

loc_140950315:                          ; CODE XREF: sub_14094F950+9B1↑j
                                        ; sub_14094F950+9B9↑j
                mov     [r14], r12
                mov     al, [r14+0B790h]
                mov     [rsp+218h+arg_10], al
                mov     [r14+0B790h], r12b
                mov     r8d, [r14+0B6E8h]
                shl     r8, 4
                xor     edx, edx
                lea     rcx, [r14+18h]
                call    memset
                xor     edx, edx
                mov     [r14+0B6E8h], edx
                mov     rax, [rsp+218h+var_1D0]
                test    rax, rax
                jz      short loc_140950370
                mov     r8d, edi
                shl     r8, 4
                mov     rdx, rax
                lea     rcx, [r14+18h]
                call    memmove
                mov     [r14+0B6E8h], edi

loc_140950370:                          ; CODE XREF: sub_14094F950+A04↑j
                mov     [r14+0B6ECh], r15b
                lea     rdx, [rsp+218h+var_1A8]
                mov     rcx, r14
                call    sub_1405B2F98
                mov     rax, [r14+0B6F0h]
                mov     edx, [rax+0Ch]
                and     edx, r15d
                movzx   eax, [rsp+218h+var_1D4]
                cmovnz  eax, r15d
                mov     [rsp+218h+var_1D4], al
                add     edx, edx
                mov     rcx, r14
                call    sub_1405B3334
                lea     rdx, [rsp+218h+var_1C4]
                mov     rcx, r14
                call    sub_1405B2F98
                mov     eax, [rsp+218h+var_1A8]
                mov     ecx, [rsp+218h+var_1C4]
                cmp     eax, ecx
                jz      short loc_1409503CE
                test    eax, eax
                jz      short loc_1409503C9
                test    ecx, ecx
                jnz     short loc_1409503CE

loc_1409503C9:                          ; CODE XREF: sub_14094F950+A73↑j
                mov     dil, r15b
                jmp     short loc_1409503D6
; ---------------------------------------------------------------------------

loc_1409503CE:                          ; CODE XREF: sub_14094F950+A6F↑j
                                        ; sub_14094F950+A77↑j
                mov     dil, r12b
                jmp     short loc_1409503D6
; ---------------------------------------------------------------------------

loc_1409503D3:                          ; CODE XREF: sub_14094F950+952↑j
                mov     dil, dl

loc_1409503D6:                          ; CODE XREF: sub_14094F950+A7C↑j
                                        ; sub_14094F950+A81↑j
                mov     rax, rbx
                lock xadd [r13+0], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1409503ED
                mov     rcx, r13
                call    ExfTryToWakePushLock

loc_1409503ED:                          ; CODE XREF: sub_14094F950+A93↑j
                mov     rcx, r13
                call    sub_140243660
                call    KeLeaveCriticalRegion
                test    esi, esi
                js      short loc_140950450
                mov     rax, [rsp+218h+var_1A0]
                xor     esi, esi
                test    rax, rax
                jnz     short loc_14095041F
                mov     rcx, r14
                call    sub_14094F34C
                mov     [rsp+218h+var_1D8], eax
                test    eax, eax
                js      short loc_140950452
                mov     rax, [rsp+218h+var_1A0]

loc_14095041F:                          ; CODE XREF: sub_14094F950+AB8↑j
                test    dil, dil
                jnz     short loc_140950429
                test    rax, rax
                jnz     short loc_140950431

loc_140950429:                          ; CODE XREF: sub_14094F950+AD2↑j
                mov     rcx, r14
                call    sub_14094F928

loc_140950431:                          ; CODE XREF: sub_14094F950+AD7↑j
                mov     [rsp+218h+var_1D8], esi
                mov     r12, [rsp+218h+var_1D0]
                mov     r13, [rsp+218h+var_1C0]
                cmp     [rsp+218h+var_1D3], r15b
                jnz     short loc_14095045C
                mov     [rsp+218h+var_1D8], 107h
                jmp     short loc_14095045C
; ---------------------------------------------------------------------------

loc_140950450:                          ; CODE XREF: sub_14094F950+AAC↑j
                xor     esi, esi

loc_140950452:                          ; CODE XREF: sub_14094F950+AC8↑j
                mov     r13, [rsp+218h+var_1C0]
                mov     r12, [rsp+218h+var_1D0]

loc_14095045C:                          ; CODE XREF: sub_14094F950+41A↑j
                                        ; sub_14094F950+690↑j ...
                cmp     [rsp+218h+arg_10], sil
                jz      short loc_14095047B
                cmp     [r14+0B790h], sil
                jnz     short loc_14095047B
                lea     rcx, qword_14002FE10
                call    ntoskrnl_24

loc_14095047B:                          ; CODE XREF: sub_14094F950+B14↑j
                                        ; sub_14094F950+B1D↑j
                cmp     [rsp+218h+var_1D4], sil
                jz      short loc_1409504F8
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                lea     rdi, [r14+0B6F8h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                xorps   xmm0, xmm0
                movups  [rsp+218h+var_70], xmm0
                movups  [rsp+218h+var_60], xmm0
                movups  [rsp+218h+var_50], xmm0
                xor     r9d, r9d
                lea     r8d, [r9+20h]
                lea     rdx, [rsp+218h+var_70]
                mov     rcx, r14
                call    ntoskrnl_20
                mov     rax, rbx
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1409504EB
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1409504EB:                          ; CODE XREF: sub_14094F950+B91↑j
                mov     rcx, rdi
                call    sub_140243660
                call    KeLeaveCriticalRegion

loc_1409504F8:                          ; CODE XREF: sub_14094F950+B30↑j
                mov     rcx, [rsp+218h+var_198]
                test    rcx, rcx
                jz      short loc_14095050A
                call    PsDereferenceSiloContext

loc_14095050A:                          ; CODE XREF: sub_14094F950+BB3↑j
                test    r13, r13
                jz      short loc_140950517
                mov     rcx, r13
                call    PsDereferenceSiloContext

loc_140950517:                          ; CODE XREF: sub_14094F950+BBD↑j
                mov     rdi, [rsp+218h+var_1B0]
                test    rdi, rdi
                jz      short loc_140950529
                mov     rcx, rdi
                call    MmUnmapViewInSystemSpace

loc_140950529:                          ; CODE XREF: sub_14094F950+BCF↑j
                mov     rax, [rsp+218h+var_178]
                test    rax, rax
                jz      short loc_14095053E
                mov     rcx, rax
                call    MmUnmapViewInSystemSpace

loc_14095053E:                          ; CODE XREF: sub_14094F950+BE4↑j
                test    r12, r12
                jz      short loc_14095054D
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_14095054D:                          ; CODE XREF: sub_14094F950+BF1↑j
                mov     eax, [rsp+218h+var_1D8]
                cmp     eax, 0C000000Dh
                jz      short loc_140950566
                add     eax, 3FFFFFC1h
                cmp     eax, r15d
                ja      loc_14095061D

loc_140950566:                          ; CODE XREF: sub_14094F950+C06↑j
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                lea     rdi, [r14+0B6F8h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                lea     rdx, [rsp+218h+var_1C4]
                mov     rcx, r14
                call    sub_1405B2F98
                cmp     [rsp+218h+var_1C4], esi
                jnz     short loc_1409505EB
                mov     edx, 5
                mov     rcx, r14
                call    sub_1405B3334
                jmp     short loc_1409505EE
; ---------------------------------------------------------------------------

loc_1409505A9:                          ; CODE XREF: sub_14094F950+576↑j
                                        ; sub_14094F950+57F↑j ...
                mov     [rsp+218h+var_1D8], 0C000003Fh
                mov     r12, [rsp+218h+var_1D0]
                mov     r13, r12
                jmp     loc_14095045C
; ---------------------------------------------------------------------------

loc_1409505BE:                          ; CODE XREF: sub_14094F950+288↑j
                                        ; sub_14094F950+49E↑j ...
                mov     r12, [rsp+218h+var_1D0]
                mov     r13, r12
                jmp     short loc_1409505DA
; ---------------------------------------------------------------------------

loc_1409505C8:                          ; CODE XREF: sub_14094F950+CF↑j
                                        ; sub_14094F950+DA↑j ...
                mov     [rsp+218h+var_1D8], 0C0000040h

loc_1409505D0:                          ; CODE XREF: sub_14094F950+111↑j
                                        ; sub_14094F950+C99↓j
                mov     r15d, 1

loc_1409505D6:                          ; CODE XREF: sub_14094F950+131↑j
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_1409505DA:                          ; CODE XREF: sub_14094F950+C76↑j
                xor     esi, esi
                jmp     loc_14095045C
; ---------------------------------------------------------------------------

loc_1409505E1:                          ; CODE XREF: sub_14094F950+A8↑j
                                        ; sub_14094F950+B6↑j ...
                mov     [rsp+218h+var_1D8], 0C000000Dh
                jmp     short loc_1409505D0
; ---------------------------------------------------------------------------

loc_1409505EB:                          ; CODE XREF: sub_14094F950+C48↑j
                mov     r15b, sil

loc_1409505EE:                          ; CODE XREF: sub_14094F950+C57↑j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_140950603
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_140950603:                          ; CODE XREF: sub_14094F950+CA9↑j
                mov     rcx, rdi
                call    sub_140243660
                call    KeLeaveCriticalRegion
                test    r15b, r15b
                jz      short loc_14095061D
                mov     rcx, r14
                call    sub_14094F928

loc_14095061D:                          ; CODE XREF: sub_14094F950+C10↑j
                                        ; sub_14094F950+CC3↑j
                mov     eax, [rsp+218h+var_1D8]
                add     rsp, 1E0h
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
; } // starts at 14094F950
; ---------------------------------------------------------------------------

loc_140950635:                          ; DATA XREF: .rdata:00000001400C4C24↑o
                                        ; .pdata:00000001401244B8↑o ...
;   __finally // owned by 14094FA9D
                push    rbx
                push    rbp
                sub     rsp, 48h
                mov     rbp, rdx
                mov     rbx, [rbp+220h]
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx+0B6F8h], rcx
                jz      short loc_140950663
                lea     rcx, [rbx+0B6F8h]
                call    ExfReleasePushLockShared
                nop

loc_140950663:                          ; CODE XREF: sub_14094F950+D04↑j
                lea     rcx, [rbx+0B6F8h]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                nop
                add     rsp, 48h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14095067D:                          ; DATA XREF: .rdata:00000001400C4C34↑o
                                        ; .pdata:00000001401244C4↑o ...
;   __finally // owned by 14094FFF3
                push    rbx
                push    rbp
                sub     rsp, 48h
                mov     rbp, rdx
                mov     rbx, [rbp+220h]
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx+0B6F8h], rcx
                jz      short loc_1409506AB
                lea     rcx, [rbx+0B6F8h]
                call    ExfReleasePushLockShared
                nop

loc_1409506AB:                          ; CODE XREF: sub_14094F950+D4C↑j
                lea     rcx, [rbx+0B6F8h]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                nop
                add     rsp, 48h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14094F950   endp

byte_1409506C5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401244D0↑o

; =============== S U B R O U T I N E =======================================


sub_1409506CC   proc near               ; CODE XREF: IoUnregisterPriorityCallback+D0↑p
                                        ; KeDeregisterBoundCallback+98↑p ...
                sub     rsp, 28h
                call    ExWaitForRundownProtectionRelease
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409506CC   endp

byte_1409506DB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401244DC↑o

; =============== S U B R O U T I N E =======================================


sub_1409506E4   proc near               ; CODE XREF: sub_140570818+41C↑p
                                        ; DATA XREF: .pdata:00000001401244E8↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edx, edx
                lea     rcx, qword_1400052B0
                lea     r8d, [rdx+10h]

loc_1409506FB:                          ; CODE XREF: sub_1409506E4+24↓j
                movzx   eax, byte ptr [rcx]
                lea     rcx, [rcx+18h]
                add     edx, eax
                sub     r8, 1
                jnz     short loc_1409506FB
                mov     eax, edx
                mov     r8d, 69547845h
                shl     eax, 2
                mov     ecx, 200h
                mov     edx, eax
                mov     edi, eax
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14095075B
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xchg    rbx, cs:qword_140C192A8
                mov     rax, ds:0FFFFF78000000008h
                test    rbx, rbx
                jz      short loc_14095075B
                mov     edx, 69547845h
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14095075B:                          ; CODE XREF: sub_1409506E4+45↑j
                                        ; sub_1409506E4+68↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409506E4   endp

algn_140950767:                         ; DATA XREF: .pdata:00000001401244E8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140950770   proc near               ; CODE XREF: sub_140570818+4AB↑p
                                        ; DATA XREF: .pdata:00000001401244F4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     ebx, r15d
                xchg    rbx, cs:qword_140C192A8
                test    rbx, rbx
                jz      short loc_1409507F4
                mov     ebp, r15d
                lea     rdi, qword_1400052B0
                lea     r14d, [r15+10h]
                lea     r12d, [r15+1]

loc_1409507B1:                          ; CODE XREF: sub_140950770+75↓j
                movzx   esi, r15w
                cmp     [rdi], r15b
                jbe     short loc_1409507DE

loc_1409507BA:                          ; CODE XREF: sub_140950770+6C↓j
                mov     eax, ebp
                mov     ecx, [rbx+rax*4]
                test    ecx, ecx
                jz      short loc_1409507CF
                mov     r8, [rdi-10h]
                movzx   edx, si
                call    sub_14056FDEC

loc_1409507CF:                          ; CODE XREF: sub_140950770+51↑j
                movzx   eax, byte ptr [rdi]
                add     ebp, r12d
                add     si, r12w
                cmp     si, ax
                jb      short loc_1409507BA

loc_1409507DE:                          ; CODE XREF: sub_140950770+48↑j
                add     rdi, 18h
                sub     r14, r12
                jnz     short loc_1409507B1
                mov     edx, 69547845h
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1409507F4:                          ; CODE XREF: sub_140950770+2D↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140950770   endp

algn_140950814:                         ; DATA XREF: .pdata:00000001401244F4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140950820   proc near               ; DATA XREF: .pdata:0000000140124500↑o
                                        ; PAGE:000000014098C1F8↓o

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_18          = dword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                mov     r10, r8
                mov     r8d, edx
                mov     rbx, rcx
                and     [rsp+58h+var_18], 0
                mov     rax, gs:188h
                mov     dil, [rax+232h]
                test    dil, dil
                jz      short loc_140950869

loc_14095084E:                          ; DATA XREF: .rdata:00000001400C4EB0↑o
;   __try { // __except at loc_140950867
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovb   rdx, rcx
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_140950869
;   } // starts at 14095084E
; ---------------------------------------------------------------------------

loc_140950867:                          ; DATA XREF: .rdata:00000001400C4EB0↑o
;   __except(1) // owned by 14095084E
                jmp     short loc_1409508BC
; ---------------------------------------------------------------------------

loc_140950869:                          ; CODE XREF: sub_140950820+2C↑j
                                        ; sub_140950820+45↑j
                lea     rax, [rsp+58h+var_18]
                mov     [rsp+58h+var_28], rax
                and     [rsp+58h+var_30], 0
                mov     [rsp+58h+var_38], r8d
                xor     r9d, r9d
                mov     r8b, dil
                mov     rdx, cs:ExTimerObjectType
                mov     rcx, r10
                call    ObOpenObjectByName
                mov     edx, eax
                mov     [rsp+58h+arg_18], eax
                test    eax, eax
                js      short loc_1409508BA
                test    dil, dil
                jz      short loc_1409508B2

loc_1409508A2:                          ; DATA XREF: .rdata:00000001400C4EC0↑o
;   __try { // __except at loc_1409508AC
                mov     rcx, [rsp+58h+var_18]
                mov     [rbx], rcx
                jmp     short loc_1409508BA
;   } // starts at 1409508A2
; ---------------------------------------------------------------------------

loc_1409508AC:                          ; DATA XREF: .rdata:00000001400C4EC0↑o
;   __except(1) // owned by 1409508A2
                mov     edx, [rsp+58h+arg_18]
                jmp     short loc_1409508BA
; ---------------------------------------------------------------------------

loc_1409508B2:                          ; CODE XREF: sub_140950820+80↑j
                mov     rax, [rsp+58h+var_18]
                mov     [rbx], rax

loc_1409508BA:                          ; CODE XREF: sub_140950820+7B↑j
                                        ; sub_140950820+8A↑j ...
                mov     eax, edx

loc_1409508BC:                          ; CODE XREF: sub_140950820:loc_140950867↑j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140950820
sub_140950820   endp

algn_1409508C8:                         ; DATA XREF: .pdata:0000000140124500↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409508D0   proc near               ; DATA XREF: .pdata:000000014012450C↑o
                                        ; PAGE:000000014098BD78↓o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r14, r8
                mov     r10, rcx
                test    edx, edx
                jz      short loc_1409508FB
                mov     eax, 0C0000003h
                jmp     loc_140950A0E
; ---------------------------------------------------------------------------

loc_1409508FB:                          ; CODE XREF: sub_1409508D0+1F↑j
                cmp     r9d, 10h
                jz      short loc_14095090B
                mov     eax, 0C0000004h
                jmp     loc_140950A0E
; ---------------------------------------------------------------------------

loc_14095090B:                          ; CODE XREF: sub_1409508D0+2F↑j
                mov     rax, gs:188h
                mov     r13b, [rax+232h]
                test    r13b, r13b
                jz      short loc_140950969

loc_140950920:                          ; DATA XREF: .rdata:00000001400C4E78↑o
;   __try { // __except at loc_140950964
                test    r14b, 3
                jz      short loc_14095092C
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4

loc_14095092C:                          ; CODE XREF: sub_1409508D0+54↑j
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     r14, rdx
                cmovb   rcx, r14
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+0Fh]
                mov     [rcx+0Fh], al
                mov     rsi, [rsp+68h+arg_20]
                test    rsi, rsi
                jz      short loc_140950962
                cmp     rsi, rdx
                cmovb   rdx, rsi
                mov     eax, [rdx]
                mov     [rdx], eax

loc_140950962:                          ; CODE XREF: sub_1409508D0+85↑j
                jmp     short loc_140950971
;   } // starts at 140950920
; ---------------------------------------------------------------------------

loc_140950964:                          ; DATA XREF: .rdata:00000001400C4E78↑o
;   __except(1) // owned by 140950920
                jmp     loc_140950A0E
; ---------------------------------------------------------------------------

loc_140950969:                          ; CODE XREF: sub_1409508D0+4E↑j
                mov     rsi, [rsp+68h+arg_20]

loc_140950971:                          ; CODE XREF: sub_1409508D0:loc_140950962↑j
                mov     r8, cs:ExTimerObjectType
                and     [rsp+68h+var_38], 0
                and     [rsp+68h+var_40], 0
                lea     rax, [rsp+68h+var_38]
                mov     [rsp+68h+var_48], rax
                mov     r9b, r13b
                mov     edx, 1
                mov     rcx, r10
                call    ObReferenceObjectByHandle
                mov     r15d, eax
                mov     [rsp+68h+arg_8], eax
                test    eax, eax
                js      short loc_140950A0B
                mov     rcx, [rsp+68h+var_38]
                mov     r12d, [rcx+4]
                mov     rbx, 0FFFFF78000000008h
                mov     rbx, [rbx]
                mov     rcx, [rsp+68h+var_38]
                call    sub_140515F68
                mov     rdi, rax
                sub     rdi, rbx
                mov     rcx, [rsp+68h+var_38]
                call    PsDereferenceSiloContext
                test    r13b, r13b
                jz      short loc_1409509F9

loc_1409509DE:                          ; DATA XREF: .rdata:00000001400C4E88↑o
;   __try { // __except at loc_1409509F2
                mov     [r14+8], r12b
                mov     [r14], rdi
                test    rsi, rsi
                jz      short loc_1409509F0
                mov     dword ptr [rsi], 10h

loc_1409509F0:                          ; CODE XREF: sub_1409508D0+118↑j
                jmp     short loc_140950A0B
;   } // starts at 1409509DE
; ---------------------------------------------------------------------------

loc_1409509F2:                          ; DATA XREF: .rdata:00000001400C4E88↑o
;   __except(1) // owned by 1409509DE
                mov     r15d, [rsp+68h+arg_8]
                jmp     short loc_140950A0B
; ---------------------------------------------------------------------------

loc_1409509F9:                          ; CODE XREF: sub_1409508D0+10C↑j
                mov     [r14+8], r12b
                mov     [r14], rdi
                test    rsi, rsi
                jz      short loc_140950A0B
                mov     dword ptr [rsi], 10h

loc_140950A0B:                          ; CODE XREF: sub_1409508D0+D7↑j
                                        ; sub_1409508D0:loc_1409509F0↑j ...
                mov     eax, r15d

loc_140950A0E:                          ; CODE XREF: sub_1409508D0+26↑j
                                        ; sub_1409508D0+36↑j ...
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
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
; } // starts at 1409508D0
sub_1409508D0   endp

algn_140950A29:                         ; DATA XREF: .pdata:000000014012450C↑o
                align 10h
; Exported entry 1540. NtCreateCrossVmEvent

; =============== S U B R O U T I N E =======================================



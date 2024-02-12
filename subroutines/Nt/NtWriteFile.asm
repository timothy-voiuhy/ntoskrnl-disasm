NtWriteFile     proc near               ; CODE XREF: sub_14059DAF8:loc_14059DB4C↑p
                                        ; DATA XREF: .pdata:00000001400FD17C↑o ...

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_B8          = byte ptr -0B8h
var_B7          = byte ptr -0B7h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
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

; FUNCTION CHUNK AT 00000001407E55E0 SIZE 0000001D BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     rsi, r9
                mov     r15, rdx
                mov     rbx, rcx
                mov     eax, cs:dword_140C0F1DC
                cmp     eax, 1
                jz      loc_140609EA8
                test    eax, eax
                jz      short loc_14060962D
                call    sub_1405CD304
                movzx   eax, al
                test    eax, eax
                jnz     loc_140609EA8

loc_14060962D:                          ; CODE XREF: NtWriteFile+3B↑j
                xor     r14d, r14d
                mov     [rsp+118h+var_A8], r14
                mov     [rsp+118h+var_58], r14
                mov     [rsp+118h+var_A0], r14
                mov     [rsp+118h+var_98], r14d
                mov     [rsp+118h+var_B0], r14
                mov     rax, gs:188h
                mov     [rsp+118h+var_70], rax
                movzx   esi, byte ptr [rax+232h]
                mov     [rsp+118h+var_B8], sil
                lea     r9, [rsp+118h+var_58]
                lea     r8, [rsp+118h+var_A8]
                movzx   edx, sil
                mov     rcx, rbx
                call    sub_140609FB0
                mov     ebx, eax
                mov     rdi, [rsp+118h+var_A8]
                test    eax, eax
                js      short loc_1406096A0
                mov     rcx, rdi
                call    sub_140215848
                test    al, al
                jnz     loc_140609EFD

loc_1406096A0:                          ; CODE XREF: NtWriteFile+AE↑j
                test    ebx, ebx
                js      loc_140609A26
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     [rsp+118h+var_90], rax
                test    sil, sil
                jz      loc_14060989B
                mov     [rsp+118h+var_88], r14d

loc_1406096C9:                          ; DATA XREF: .rdata:000000014004AD00↑o
;   __try { // __except at loc_140609885
                mov     rcx, [rsp+118h+arg_20]
                mov     rbx, 7FFFFFFF0000h
                cmp     rcx, rbx
                cmovnb  rcx, rbx
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rdi, [rsp+118h+var_A8]
                lea     r15, [rdi+50h]
                movzx   r8d, byte ptr [r15]
                and     r8b, 2
                lea     rdx, [rsp+118h+arg_10]
                lea     rcx, [rsp+118h+arg_20]
                call    sub_140236180
                mov     r13d, [rsp+118h+arg_30]
                mov     r12, [rsp+118h+arg_28]
                test    r13d, r13d
                jz      short loc_14060973A
                lea     rcx, [r12+r13]
                cmp     rcx, rbx
                ja      short loc_14060972F
                cmp     rcx, r12
                jnb     short loc_14060973A

loc_14060972F:                          ; CODE XREF: NtWriteFile+148↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14060973A:                          ; CODE XREF: NtWriteFile+13F↑j
                                        ; NtWriteFile+14D↑j
                cmp     qword ptr [rdi+0B0h], 0
                jz      short loc_140609764
                test    [rsp+118h+arg_10], 0FFFFFFFFFFFFFFFEh
                jz      short loc_140609764
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609764:                          ; CODE XREF: NtWriteFile+162↑j
                                        ; NtWriteFile+170↑j
                mov     rsi, [rsp+118h+arg_38]
                test    rsi, rsi
                jz      short loc_140609795
                test    sil, 3
                jnz     loc_140609F8A
                mov     rax, rbx
                cmp     rsi, rbx
                cmovb   rax, rsi
                movzx   eax, byte ptr [rax]
                mov     rax, [rsi]
                mov     [rsp+118h+var_B0], rax
                mov     rdi, [rsp+118h+var_A8]

loc_140609795:                          ; CODE XREF: NtWriteFile+18F↑j
                mov     r10d, [r15]
                test    r10b, 8
                jz      loc_140609859
                mov     r11, [rsp+118h+var_90]
                movzx   r8d, word ptr [r11+130h]
                test    r8w, r8w
                jz      short loc_1406097CC
                mov     ecx, r8d
                mov     edx, r8d
                mov     r9d, r8d
                lea     eax, [r8-1]
                test    r13d, eax
                jnz     short loc_1406097E1
                jmp     short loc_1406097D2
; ---------------------------------------------------------------------------

loc_1406097CC:                          ; CODE XREF: NtWriteFile+1D6↑j
                mov     ecx, r14d
                mov     edx, r14d

loc_1406097D2:                          ; CODE XREF: NtWriteFile+1EA↑j
                mov     r9d, edx
                mov     eax, [r11+98h]
                test    r12, rax
                jz      short loc_140609811

loc_1406097E1:                          ; CODE XREF: NtWriteFile+1E8↑j
                test    r8w, r8w
                jz      short loc_1406097F3
                xor     edx, edx
                mov     eax, r13d
                div     r9d
                test    edx, edx
                jnz     short loc_1406097FF

loc_1406097F3:                          ; CODE XREF: NtWriteFile+205↑j
                mov     eax, [r11+98h]
                test    r12, rax
                jz      short loc_140609811

loc_1406097FF:                          ; CODE XREF: NtWriteFile+211↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609811:                          ; CODE XREF: NtWriteFile+1FF↑j
                                        ; NtWriteFile+21D↑j
                test    rsi, rsi
                jz      short loc_140609859
                cmp     dword ptr [rsp+118h+var_B0], 0FFFFFFFFh
                jnz     short loc_140609824
                cmp     dword ptr [rsp+118h+var_B0+4], 0FFFFFFFFh
                jz      short loc_140609859

loc_140609824:                          ; CODE XREF: NtWriteFile+23B↑j
                cmp     dword ptr [rsp+118h+var_B0], 0FFFFFFFEh
                jnz     short loc_140609838
                cmp     dword ptr [rsp+118h+var_B0+4], 0FFFFFFFFh
                jnz     short loc_140609838
                test    r10b, 2
                jnz     short loc_140609859

loc_140609838:                          ; CODE XREF: NtWriteFile+249↑j
                                        ; NtWriteFile+250↑j
                test    r8w, r8w
                jz      short loc_140609859
                lea     eax, [rcx-1]
                test    dword ptr [rsp+118h+var_B0], eax
                jz      short loc_140609859
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609859:                          ; CODE XREF: NtWriteFile+1BC↑j
                                        ; NtWriteFile+234↑j ...
                mov     rax, [rsp+118h+arg_40]
                test    rax, rax
                jz      short loc_14060987B
                cmp     rax, rbx
                cmovb   rbx, rax
                mov     eax, [rbx]
                mov     [rsp+118h+var_98], eax
                mov     rdi, [rsp+118h+var_A8]

loc_14060987B:                          ; CODE XREF: NtWriteFile+284↑j
                mov     r15, [rsp+118h+arg_8]
                jmp     short loc_1406098D6
;   } // starts at 1406096C9
; ---------------------------------------------------------------------------

loc_140609885:                          ; DATA XREF: .rdata:000000014004AD00↑o
                                        ; .rdata:000000014004AD40↑o
;   __except(loc_1407E55E0) // owned by 1406096C9
;   __except(loc_1407E55E0) // owned by 140609F8A
                mov     rcx, [rsp+118h+var_A8]
                call    PsDereferenceSiloContext
                mov     eax, [rsp+118h+var_88]
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_14060989B:                          ; CODE XREF: NtWriteFile+DB↑j
                mov     rsi, [rsp+118h+arg_38]
                test    rsi, rsi
                jz      short loc_1406098B0
                mov     rax, [rsi]
                mov     [rsp+118h+var_B0], rax

loc_1406098B0:                          ; CODE XREF: NtWriteFile+2C6↑j
                mov     rax, [rsp+118h+arg_40]
                mov     r13d, [rsp+118h+arg_30]
                mov     r12, [rsp+118h+arg_28]
                test    rax, rax
                jz      short loc_1406098D6
                mov     eax, [rax]
                mov     [rsp+118h+var_98], eax

loc_1406098D6:                          ; CODE XREF: NtWriteFile+2A3↑j
                                        ; NtWriteFile+2EB↑j
                mov     eax, dword ptr [rsp+118h+var_58+4]
                and     al, 6
                cmp     al, 4
                jnz     short loc_1406098EC
                mov     [rsp+118h+var_B0], 0FFFFFFFFFFFFFFFFh

loc_1406098EC:                          ; CODE XREF: NtWriteFile+301↑j
                test    r15, r15
                jz      short loc_140609953
                mov     r8, cs:ExEventObjectType
                mov     [rsp+118h+var_80], r14
                mov     [rsp+118h+var_F0], r14
                lea     rax, [rsp+118h+var_80]
                mov     [rsp+118h+var_F8], rax
                movzx   r9d, [rsp+118h+var_B8]
                mov     edx, 2
                mov     rcx, r15
                call    ObReferenceObjectByHandle
                mov     r15d, eax
                mov     rbx, [rsp+118h+var_80]
                mov     [rsp+118h+var_A0], rbx
                test    eax, eax
                jns     short loc_140609949
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, r15d
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609949:                          ; CODE XREF: NtWriteFile+357↑j
                mov     rcx, rbx
                call    KeResetEvent
                jmp     short loc_140609958
; ---------------------------------------------------------------------------

loc_140609953:                          ; CODE XREF: NtWriteFile+30F↑j
                mov     rbx, [rsp+118h+var_A0]

loc_140609958:                          ; CODE XREF: NtWriteFile+371↑j
                mov     rax, [rsp+118h+var_90]
                mov     rax, [rax+8]
                mov     rax, [rax+50h]
                mov     [rsp+118h+var_48], rax
                lea     rax, [rdi+50h]
                mov     [rsp+118h+var_40], rax
                mov     r15d, [rax]
                test    r15b, 2
                jz      loc_140609BDA
                shr     r15d, 2
                and     r15b, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+118h+var_A8]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+118h+var_B7], 0
                mov     ecx, 1
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_1406099E3
                test    rax, rax
                jz      short loc_1406099D1
                or      byte ptr [rax+1Ah], 1

loc_1406099D1:                          ; CODE XREF: NtWriteFile+3EB↑j
                mov     rdi, [rsp+118h+var_A8]
                mov     rcx, rdi
                call    ObfReferenceObject
                mov     ebx, r14d
                jmp     short loc_140609A08
; ---------------------------------------------------------------------------

loc_1406099E3:                          ; CODE XREF: NtWriteFile+3E6↑j
                lea     rcx, [rsp+118h+var_B7]
                mov     [rsp+118h+var_F8], rcx
                mov     r9, rax
                movzx   r8d, r15b
                movzx   edx, [rsp+118h+var_B8]
                mov     rdi, [rsp+118h+var_A8]
                mov     rcx, rdi
                call    sub_1406A0C70
                mov     ebx, eax

loc_140609A08:                          ; CODE XREF: NtWriteFile+401↑j
                cmp     [rsp+118h+var_B7], 0
                jz      short loc_140609A2D
                mov     rcx, [rsp+118h+var_A0]
                test    rcx, rcx
                jz      short loc_140609A1E
                call    PsDereferenceSiloContext

loc_140609A1E:                          ; CODE XREF: NtWriteFile+437↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_140609A26:                          ; CODE XREF: NtWriteFile+C2↑j
                                        ; NtWriteFile+930↓j
                mov     eax, ebx
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609A2D:                          ; CODE XREF: NtWriteFile+42D↑j
                mov     r15b, 1
                mov     [rsp+118h+var_B7], r15b
                test    rsi, rsi
                jnz     short loc_140609A40
                cmp     dword ptr [rsp+118h+var_B0], esi
                jz      short loc_140609A4E

loc_140609A40:                          ; CODE XREF: NtWriteFile+458↑j
                cmp     dword ptr [rsp+118h+var_B0], 0FFFFFFFEh
                jnz     short loc_140609A57
                cmp     dword ptr [rsp+118h+var_B0+4], 0FFFFFFFFh
                jnz     short loc_140609A57

loc_140609A4E:                          ; CODE XREF: NtWriteFile+45E↑j
                mov     rax, [rdi+68h]
                mov     [rsp+118h+var_B0], rax

loc_140609A57:                          ; CODE XREF: NtWriteFile+465↑j
                                        ; NtWriteFile+46C↑j
                cmp     qword ptr [rdi+30h], 0
                jz      loc_140609BD3
                xorps   xmm0, xmm0
                movups  [rsp+118h+var_68], xmm0
                mov     rsi, [rsp+118h+var_48]
                mov     rsi, [rsi+18h]
                mov     rax, [rsp+118h+var_B0]
                shr     rax, 20h
                test    eax, eax
                jns     short loc_140609ABB
                cmp     eax, 0FFFFFFFFh
                jnz     short loc_140609A92
                cmp     dword ptr [rsp+118h+var_B0], 0FFFFFFFFh
                jz      short loc_140609ABB

loc_140609A92:                          ; CODE XREF: NtWriteFile+4A9↑j
                mov     rcx, [rsp+118h+var_A0]
                test    rcx, rcx
                jz      short loc_140609AA1
                call    PsDereferenceSiloContext

loc_140609AA1:                          ; CODE XREF: NtWriteFile+4BA↑j
                                        ; NtWriteFile+659↓j
                mov     rcx, rdi
                call    sub_1402481D0

loc_140609AA9:                          ; CODE XREF: NtWriteFile+653↓j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609ABB:                          ; CODE XREF: NtWriteFile+4A4↑j
                                        ; NtWriteFile+4B0↑j
                mov     eax, cs:dword_140C2A6E0
                test    al, 10h
                jz      short loc_140609ACF
                call    sub_1409CBA9C
                mov     rbx, rax
                jmp     short loc_140609AD2
; ---------------------------------------------------------------------------

loc_140609ACF:                          ; CODE XREF: NtWriteFile+4E3↑j
                mov     rbx, r14

loc_140609AD2:                          ; CODE XREF: NtWriteFile+4ED↑j
                mov     rax, [rsp+118h+var_90]
                mov     [rsp+118h+var_E0], rax
                lea     rax, [rsp+118h+var_68]
                mov     [rsp+118h+var_E8], rax
                mov     [rsp+118h+var_F0], r12
                mov     eax, [rsp+118h+var_98]
                mov     dword ptr [rsp+118h+var_F8], eax
                movzx   r9d, r15b
                mov     r8d, r13d
                lea     rdx, [rsp+118h+var_B0]
                mov     rcx, rdi
                mov     rax, rsi
                call    sub_1404079D0
                movzx   r15d, al
                test    rbx, rbx
                jz      short loc_140609B27
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1409CB9C4

loc_140609B27:                          ; CODE XREF: NtWriteFile+53A↑j
                test    r15b, r15b
                jz      loc_140609BC9
                cmp     dword ptr [rsp+118h+var_68], 0
                jnz     loc_140609BC9
                call    sub_1402158B8
                xor     edx, edx
                mov     ecx, dword ptr [rsp+118h+var_68+8]
                call    sub_140215880
                nop

loc_140609B52:                          ; DATA XREF: .rdata:000000014004AD10↑o
;   __try { // __except at loc_140609B67
                mov     rax, [rsp+118h+arg_20]
                movups  xmm0, [rsp+118h+var_68]
                movups  xmmword ptr [rax], xmm0
                jmp     short loc_140609B7F
;   } // starts at 140609B52
; ---------------------------------------------------------------------------

loc_140609B67:                          ; DATA XREF: .rdata:000000014004AD10↑o
;   __except(1) // owned by 140609B52
                mov     dword ptr [rsp+118h+var_68], eax
                mov     qword ptr [rsp+118h+var_68+8], 0
                mov     rdi, [rsp+118h+var_A8]

loc_140609B7F:                          ; CODE XREF: NtWriteFile+585↑j
                cmp     [rsp+118h+arg_8], 0
                jz      short loc_140609BAD
                mov     rbx, [rsp+118h+var_A0]
                test    dword ptr [rdi+50h], 8000000h
                jnz     short loc_140609BA5
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    KeSetEvent

loc_140609BA5:                          ; CODE XREF: NtWriteFile+5B6↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_140609BAD:                          ; CODE XREF: NtWriteFile+5A8↑j
                mov     rcx, rdi
                call    sub_1402481D0
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, dword ptr [rsp+118h+var_68]
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609BC9:                          ; CODE XREF: NtWriteFile+54A↑j
                                        ; NtWriteFile+558↑j
                mov     rbx, [rsp+118h+var_A0]
                mov     r15b, 1
                jmp     short loc_140609C0F
; ---------------------------------------------------------------------------

loc_140609BD3:                          ; CODE XREF: NtWriteFile+47C↑j
                mov     rbx, [rsp+118h+var_A0]
                jmp     short loc_140609C0F
; ---------------------------------------------------------------------------

loc_140609BDA:                          ; CODE XREF: NtWriteFile+3A3↑j
                test    rsi, rsi
                jnz     short loc_140609C07
                test    r15d, 280h
                jnz     short loc_140609C07
                test    rbx, rbx
                jz      short loc_140609BF5
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_140609BF5:                          ; CODE XREF: NtWriteFile+60B↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609C07:                          ; CODE XREF: NtWriteFile+5FD↑j
                                        ; NtWriteFile+606↑j
                xor     r15b, r15b
                mov     [rsp+118h+var_B7], r15b

loc_140609C0F:                          ; CODE XREF: NtWriteFile+5F1↑j
                                        ; NtWriteFile+5F8↑j
                mov     eax, dword ptr [rsp+118h+var_B0+4]
                test    eax, eax
                jns     short loc_140609C3E
                cmp     eax, 0FFFFFFFFh
                jnz     short loc_140609C23
                cmp     dword ptr [rsp+118h+var_B0], 0FFFFFFFFh
                jz      short loc_140609C3E

loc_140609C23:                          ; CODE XREF: NtWriteFile+63A↑j
                test    rbx, rbx
                jz      short loc_140609C30
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_140609C30:                          ; CODE XREF: NtWriteFile+646↑j
                test    r15b, r15b
                jz      loc_140609AA9
                jmp     loc_140609AA1
; ---------------------------------------------------------------------------

loc_140609C3E:                          ; CODE XREF: NtWriteFile+635↑j
                                        ; NtWriteFile+641↑j
                mov     rcx, rdi
                call    sub_1402360C0
                mov     r9, [rsp+118h]
                movzx   r8d, r15b
                xor     r8b, 1
                mov     rax, [rsp+118h+var_90]
                movzx   edx, byte ptr [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rsi, rax
                mov     [rsp+118h+var_80], rax
                test    rax, rax
                jnz     short loc_140609C8F
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609C8F:                          ; CODE XREF: NtWriteFile+698↑j
                mov     [rax+0C0h], rdi
                mov     rax, [rsp+118h+var_70]
                mov     [rsi+98h], rax
                mov     [rsi+0A0h], r14
                movzx   eax, [rsp+118h+var_B8]
                mov     [rsi+40h], al
                mov     byte ptr [rsi+41h], 0
                mov     byte ptr [rsi+44h], 0
                mov     [rsi+68h], r14
                mov     [rsi+50h], rbx
                mov     rbx, [rsp+118h+arg_20]
                mov     [rsp+118h+var_70], rbx
                mov     [rsi+48h], rbx
                mov     rax, [rsp+118h+arg_10]
                mov     [rsi+58h], rax
                mov     rax, [rsp+118h+arg_18]
                mov     [rsi+60h], rax
                mov     r15, [rsi+0B8h]
                mov     dword ptr [r15-48h], 4
                mov     [r15-18h], rdi
                mov     rax, [rsp+118h+var_40]
                mov     eax, [rax]
                test    al, 10h
                jz      short loc_140609D16
                mov     byte ptr [r15-46h], 4

loc_140609D16:                          ; CODE XREF: NtWriteFile+72F↑j
                mov     [rsi+18h], r14
                mov     [rsi+8], r14
                mov     rax, [rsp+118h+var_90]
                mov     eax, [rax+30h]
                test    al, 4
                jz      short loc_140609DA4
                test    r13d, r13d
                jz      short loc_140609D97

loc_140609D32:                          ; DATA XREF: .rdata:000000014004AD20↑o
;   __try { // __except at loc_140609D67
                mov     edx, r13d
                mov     ecx, 204h
                call    sub_140348A98
                mov     [rsi+18h], rax
                mov     r8d, r13d
                mov     rdx, r12
                mov     rcx, rax
                call    memmove
                nop
;   } // starts at 140609D32

loc_140609D52:                          ; DATA XREF: .rdata:000000014004AD20↑o
                mov     eax, 30h ; '0'
                mov     rbx, [rsp+118h+var_70]
                mov     [rsi+10h], eax
                jmp     loc_140609E2D
; ---------------------------------------------------------------------------

loc_140609D67:                          ; DATA XREF: .rdata:000000014004AD20↑o
;   __except(1) // owned by 140609D32
                mov     ebx, eax
                mov     rcx, [rsp+118h+var_A8]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+118h+var_F8], dl
                xor     r9d, r9d
                mov     r8, [rsp+118h+var_A0]
                mov     rdx, [rsp+118h+var_80]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609D97:                          ; CODE XREF: NtWriteFile+750↑j
                mov     eax, 10h
                mov     [rsi+10h], eax
                jmp     loc_140609E2D
; ---------------------------------------------------------------------------

loc_140609DA4:                          ; CODE XREF: NtWriteFile+74B↑j
                and     eax, 10h
                mov     [rsi+10h], r14d
                jz      short loc_140609E29
                test    r13d, r13d
                jz      short loc_140609E2D

loc_140609DB2:                          ; DATA XREF: .rdata:000000014004AD30↑o
;   __try { // __except at loc_140609DF9
                mov     [rsp+118h+var_F8], rsi
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, r13d
                mov     rcx, r12
                call    IoAllocateMdl
                mov     rcx, rax
                test    rax, rax
                jz      loc_140609F90
                movzx   eax, byte ptr [r15-48h]
                mov     dword ptr [rsp+118h+var_F8], eax
                mov     r14, [rsp+118h+var_90]
                mov     r9, r14
                movzx   r12d, [rsp+118h+var_B8]
                movzx   edx, r12b
                call    sub_140355324
                jmp     short loc_140609E3B
;   } // starts at 140609DB2
; ---------------------------------------------------------------------------

loc_140609DF9:                          ; DATA XREF: .rdata:000000014004AD30↑o
                                        ; .rdata:000000014004AD50↑o
;   __except(1) // owned by 140609DB2
;   __except(1) // owned by 140609F90
                mov     ebx, eax
                mov     rcx, [rsp+118h+var_A8]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+118h+var_F8], dl
                xor     r9d, r9d
                mov     r8, [rsp+118h+var_A0]
                mov     rdx, [rsp+118h+var_80]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609E29:                          ; CODE XREF: NtWriteFile+7CB↑j
                mov     [rsi+70h], r12

loc_140609E2D:                          ; CODE XREF: NtWriteFile+782↑j
                                        ; NtWriteFile+7BF↑j ...
                mov     r14, [rsp+118h+var_90]
                movzx   r12d, [rsp+118h+var_B8]

loc_140609E3B:                          ; CODE XREF: NtWriteFile+817↑j
                mov     eax, [rdi+50h]
                and     eax, 8
                or      eax, 5000h
                shr     eax, 3
                or      [rsi+10h], eax
                mov     [r15-40h], r13d
                mov     eax, [rsp+118h+var_98]
                mov     [r15-38h], eax
                mov     rax, [rsp+118h+var_B0]
                mov     [r15-30h], rax
                mov     edx, 10h
                mov     rcx, rdi
                call    sub_14021592C
                test    al, al
                jz      short loc_140609E7C
                mov     eax, [rbx+8]
                mov     [r15-34h], eax

loc_140609E7C:                          ; CODE XREF: NtWriteFile+893↑j
                mov     dword ptr [rsp+118h+var_E8], 1
                movzx   eax, [rsp+118h+var_B7]
                mov     byte ptr [rsp+118h+var_F0], al
                mov     byte ptr [rsp+118h+var_F8], r12b
                mov     r9b, 1
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_140643F60
                jmp     loc_140609F76
; ---------------------------------------------------------------------------

loc_140609EA8:                          ; CODE XREF: NtWriteFile+33↑j
                                        ; NtWriteFile+47↑j
                xor     r14d, r14d
                mov     [rsp+118h+var_78], r14
                mov     [rsp+118h+var_50], r14
                mov     rax, gs:188h
                movzx   edx, byte ptr [rax+232h]
                lea     r9, [rsp+118h+var_50]
                lea     r8, [rsp+118h+var_78]
                mov     rcx, rbx
                call    sub_140609FB0
                mov     ebx, eax
                mov     rdi, [rsp+118h+var_78]
                test    eax, eax
                js      short loc_140609F0E
                mov     rcx, rdi
                call    sub_140215848
                test    al, al
                jz      short loc_140609F0E

loc_140609EFD:                          ; CODE XREF: NtWriteFile+BA↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     ebx, 0C0000910h
                mov     eax, ebx
                jmp     short loc_140609F76
; ---------------------------------------------------------------------------

loc_140609F0E:                          ; CODE XREF: NtWriteFile+90F↑j
                                        ; NtWriteFile+91B↑j
                test    ebx, ebx
                js      loc_140609A26
                mov     eax, dword ptr [rsp+118h+var_50+4]
                mov     [rsp+118h+var_D0], eax
                mov     rax, [rsp+118h+arg_40]
                mov     [rsp+118h+var_D8], rax
                mov     rax, [rsp+118h+arg_38]
                mov     [rsp+118h+var_E0], rax
                mov     eax, [rsp+118h+arg_30]
                mov     dword ptr [rsp+118h+var_E8], eax
                mov     rax, [rsp+118h+arg_28]
                mov     [rsp+118h+var_F0], rax
                mov     rax, [rsp+118h+arg_20]
                mov     [rsp+118h+var_F8], rax
                mov     r9, rsi
                mov     r8, [rsp+118h+arg_10]
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_1405CE13C

loc_140609F76:                          ; CODE XREF: NtWriteFile+17F↑j
                                        ; NtWriteFile+22C↑j ...
                add     rsp, 0E0h
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

loc_140609F8A:                          ; CODE XREF: NtWriteFile+195↑j
                                        ; DATA XREF: .rdata:000000014004AD40↑o
;   __try { // __except at loc_140609885
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 10h
;   } // starts at 140609F8A

loc_140609F90:                          ; CODE XREF: NtWriteFile+7EE↑j
                                        ; DATA XREF: .rdata:000000014004AD40↑o ...
;   __try { // __except at loc_140609DF9
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 140609F90
byte_140609F9B  db 0CCh                 ; DATA XREF: .rdata:000000014004AD50↑o
; } // starts at 1406095E0
NtWriteFile     endp

byte_140609F9C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400FD17C↑o

; =============== S U B R O U T I N E =======================================


sub_140609FB0   proc near               ; CODE XREF: NtCopyFileChunk+1A8↑p
                                        ; NtWriteFile+A0↑p ...

var_78          = dword ptr -78h
var_58          = dword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407FB9E0 SIZE 00000151 BYTES

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], dl
                push    rbx
                push    rbp
                push    rdi
                push    r12
                push    r13
                sub     rsp, 50h
                mov     rbp, gs:188h
                xor     edi, edi
                xorps   xmm0, xmm0
                mov     r13, r9
                mov     r12, rcx
                movups  [rsp+78h+var_48], xmm0
                test    ecx, ecx
                js      loc_14060A1CF
                mov     rax, [rbp+0B8h]
                mov     rbx, [rax+570h]
                mov     eax, [rax+464h]
                mov     [rsp+78h+arg_0], rbx
                bt      eax, 1Ah
                jnb     loc_14060A2B6

loc_14060A00B:                          ; CODE XREF: sub_140609FB0+251↓j
                dec     word ptr [rbp+1E4h]

loc_14060A012:                          ; DATA XREF: .rdata:000000014004AD90↑o
                                        ; .rdata:000000014004ADA0↑o ...
                mov     [rsp+78h+arg_18], rsi
                mov     [rsp+78h+var_30], r14
                mov     [rsp+78h+var_38], r15
                test    r12d, 3FCh
                jz      loc_14060A268
                mov     rdx, r12
                mov     rcx, rbx
                call    sub_140645680
                mov     r14, rax
                test    rax, rax
                jz      loc_14060A268
                prefetchw byte ptr [rax]
                mov     rax, [rax]
                mov     r15, [r14+8]
                mov     qword ptr [rsp+78h+var_48+8], r15
                mov     qword ptr [rsp+78h+var_48], rax
                mov     rsi, qword ptr [rsp+78h+var_48]
                test    rsi, 1FFFEh
                jz      loc_14060A206

loc_14060A06E:                          ; CODE XREF: sub_140609FB0+1F1A69↓j
                test    sil, 1
                jz      loc_1407FB9E0
                lea     rbx, [rsi-2]
                mov     rcx, r15
                mov     rax, rsi
                mov     rdx, r15
                lock cmpxchg16b xmmword ptr [r14]
                mov     rsi, rax
                mov     qword ptr [rsp+78h+var_48], rax
                mov     r15, rdx
                mov     qword ptr [rsp+78h+var_48+8], rdx
                jnz     loc_1407FBA0A
                mov     rdi, rax
                shr     rdi, 1
                cmp     di, 10h
                jz      loc_1407FBA24
                mov     rdi, rax
                sar     rdi, 10h
                and     rdi, 0FFFFFFFFFFFFFFF0h

loc_14060A0BB:                          ; CODE XREF: sub_140609FB0+2B3↓j
                                        ; sub_140609FB0+2CE↓j ...
                add     word ptr [rbp+1E4h], 1
                jnz     short loc_14060A0D5
                lea     rax, [rbp+98h]
                cmp     [rax], rax
                jnz     loc_14060A29E

loc_14060A0D5:                          ; CODE XREF: sub_140609FB0+113↑j
                                        ; sub_140609FB0+2F6↓j ...
                test    r14, r14
                jz      loc_14060A283
                cmp     cs:dword_140CFB010, 0
                jnz     loc_1407FBAC0

loc_14060A0EB:                          ; CODE XREF: sub_140609FB0+1F1B29↓j
                mov     rax, rdi
                lea     r9, cs:140000000h
                shr     rax, 8
                lea     rbx, [rdi+30h]
                movzx   ecx, al
                movzx   eax, byte ptr [rdi+18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                mov     rax, cs:IoFileObjectType
                cmp     ds:rva qword_140CFCE60[r9+rcx*8], rax
                jnz     loc_1407FBB1E
                mov     edx, [rdi+80h]
                and     r15d, 1FFFFFFh
                shr     edx, 5
                not     edx
                sar     rsi, 11h
                and     edx, 4
                mov     [r13+4], r15d
                and     esi, 7
                or      edx, 2
                mov     [r13+0], esi
                test    edx, r15d
                jz      loc_1407FBB17
                movzx   r8d, [rsp+78h+arg_8]
                test    r8b, r8b
                jz      short loc_14060A199
                movzx   eax, byte ptr [rdi+1Ah]
                test    al, 40h
                jz      short loc_14060A199
                and     eax, 7Fh
                mov     rcx, rdi
                movzx   eax, byte ptr [rax+r9+0C25E20h]
                sub     rcx, rax
                mov     rax, [rcx]
                cmp     byte ptr [rax+18h], 0
                jz      short loc_14060A199
                mov     rax, [rax+10h]
                cmp     rax, 1
                jz      loc_1407FBADE
                mov     esi, [r13+0]

loc_14060A199:                          ; CODE XREF: sub_140609FB0+1B2↑j
                                        ; sub_140609FB0+1BA↑j ...
                test    sil, 4
                jnz     loc_1407FBAE5

loc_14060A1A3:                          ; CODE XREF: sub_140609FB0+1F1B38↓j
                                        ; sub_140609FB0+1F1B5A↓j
                mov     rax, [rsp+78h+arg_10]
                mov     [rax], rbx
                xor     eax, eax

loc_14060A1B0:                          ; CODE XREF: sub_140609FB0+2E9↓j
                mov     r14, [rsp+78h+var_30]
                mov     rsi, [rsp+78h+arg_18]
                mov     r15, [rsp+78h+var_38]
                add     rsp, 50h
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14060A1CE  db 0CCh                 ; DATA XREF: .pdata:00000001400FD194↑o
                                        ; .pdata:00000001400FD1A0↑o
; ---------------------------------------------------------------------------

loc_14060A1CF:                          ; CODE XREF: sub_140609FB0+2F↑j
                test    dl, dl
                jnz     loc_14060A2B6
                cmp     r12, 0FFFFFFFFFFFFFFFFh
                jz      loc_14060A2B6
                cmp     r12, 0FFFFFFFFFFFFFFFEh
                jz      loc_14060A2B6
                mov     rbx, cs:qword_140C259A0
                xor     r12, 0FFFFFFFF80000000h
                mov     [rsp+78h+arg_0], rbx
                jmp     loc_14060A00B
; ---------------------------------------------------------------------------

loc_14060A206:                          ; CODE XREF: sub_140609FB0+B8↑j
                                        ; sub_140609FB0+1F1A6F↓j
                                        ; DATA XREF: ...
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_140243200
                test    al, al
                jz      short loc_14060A272
                mov     rdi, [r14]
                mov     rcx, r14
                movups  xmm0, xmmword ptr [r14]
                sar     rdi, 10h
                and     rdi, 0FFFFFFFFFFFFFFF0h
                movups  [rsp+78h+var_48], xmm0
                call    sub_1402431A0
                mov     rcx, rdi
                lea     edx, [rax+1]
                call    sub_14034E7A0
                mov     eax, 1
                lock xadd [r14], rax
                lea     rcx, [rbx+30h]
                lock or [rsp+78h+var_78], 0
                cmp     qword ptr [rcx], 0
                jnz     loc_1407FBA7F

loc_14060A259:                          ; CODE XREF: sub_140609FB0+1F1ABA↓j
                                        ; sub_140609FB0+1F1ACA↓j
                mov     r15, qword ptr [rsp+78h+var_48+8]
                mov     rsi, qword ptr [rsp+78h+var_48]
                jmp     loc_14060A0BB
; ---------------------------------------------------------------------------

loc_14060A268:                          ; CODE XREF: sub_140609FB0+7B↑j
                                        ; sub_140609FB0+92↑j
                mov     r15, qword ptr [rsp+78h+var_48+8]
                mov     rsi, qword ptr [rsp+78h+var_48]

loc_14060A272:                          ; CODE XREF: sub_140609FB0+263↑j
                test    r12, r12
                jnz     loc_1407FBA95

loc_14060A27B:                          ; CODE XREF: sub_140609FB0+1F1B0B↓j
                xor     r14d, r14d
                jmp     loc_14060A0BB
; ---------------------------------------------------------------------------

loc_14060A283:                          ; CODE XREF: sub_140609FB0+128↑j
                mov     edi, 0C0000008h

loc_14060A288:                          ; CODE XREF: sub_140609FB0+1F1B7C↓j
                mov     rax, [rsp+78h+arg_10]
                mov     qword ptr [rax], 0
                mov     eax, edi
                jmp     loc_14060A1B0
; ---------------------------------------------------------------------------

loc_14060A29E:                          ; CODE XREF: sub_140609FB0+11F↑j
                cmp     word ptr [rbp+1E6h], 0
                jnz     loc_14060A0D5
                call    KiCheckForKernelApcDelivery
                jmp     loc_14060A0D5
; ---------------------------------------------------------------------------

loc_14060A2B6:                          ; CODE XREF: sub_140609FB0+55↑j
                                        ; sub_140609FB0+221↑j ...
                mov     eax, 0C0000008h
                add     rsp, 50h
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140609FB0   endp

algn_14060A2C8:                         ; DATA XREF: .pdata:00000001400FD1B8↑o
                align 10h
; Exported entry 1035. IoUpdateLinkShareAccessEx

; =============== S U B R O U T I N E =======================================



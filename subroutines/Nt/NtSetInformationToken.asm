NtSetInformationToken proc near         ; DATA XREF: .rdata:0000000140045274↑o
                                        ; .pdata:00000001400FBE50↑o ...

var_108         = dword ptr -108h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = byte ptr -0ACh
var_AB          = byte ptr -0ABh
var_A8          = dword ptr -0A8h
var_A4          = byte ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = byte ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 00000001407F36BA SIZE 00000536 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0F0h
                mov     r14d, r9d
                mov     r12, r8
                movsxd  rbx, edx
                mov     r13, rcx
                xor     edi, edi
                mov     [rsp+108h+var_AC], dil
                mov     [rsp+108h+var_A8], edi
                mov     [rax-70h], edi
                mov     [rsp+108h+var_90], rdi
                mov     [rsp+108h+var_98], rdi
                mov     [rsp+108h+var_A0], rdi
                mov     [rax-58h], rdi
                mov     [rax-50h], rdi
                mov     [rax-60h], edi
                mov     rax, gs:188h
                mov     r15b, [rax+232h]
                mov     [rsp+108h+var_AB], r15b
                test    r15b, r15b
                jz      short loc_1405E39DA

loc_1405E399E:                          ; DATA XREF: .rdata:0000000140045160↑o
;   __try { // __except at loc_1405E39D5
                test    r9d, r9d
                jz      short loc_1405E39D3
                test    r12b, 3
                jnz     short loc_1405E39CE
                lea     rcx, [r8+r14]
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                ja      short loc_1405E39C1
                cmp     rcx, r8
                jnb     short loc_1405E39D3

loc_1405E39C1:                          ; CODE XREF: NtSetInformationToken+8A↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405E39D3
; ---------------------------------------------------------------------------

loc_1405E39CE:                          ; CODE XREF: NtSetInformationToken+77↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E39D3:                          ; CODE XREF: NtSetInformationToken+71↑j
                                        ; NtSetInformationToken+8F↑j ...
                jmp     short loc_1405E39DA
;   } // starts at 1405E399E
; ---------------------------------------------------------------------------

loc_1405E39D5:                          ; DATA XREF: .rdata:0000000140045160↑o
;   __except(1) // owned by 1405E399E
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E39DA:                          ; CODE XREF: NtSetInformationToken+6C↑j
                                        ; NtSetInformationToken:loc_1405E39D3↑j
                cmp     ebx, 2Dh ; '-'
                ja      loc_1407F3BE6
                mov     rcx, 24800F8B5070h
                bt      rcx, rbx
                jnb     loc_1407F3BE6
                mov     edx, 80h
                cmp     ebx, 0Ch
                jz      loc_1405E40BD
                lea     eax, [rdx+8]
                cmp     ebx, 13h
                cmovz   edx, eax

loc_1405E3A0E:                          ; CODE XREF: NtSetInformationToken+792↓j
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+108h+var_B8], rdi
                mov     [rsp+108h+var_E0], rdi
                lea     rax, [rsp+108h+var_B8]
                mov     [rsp+108h+var_E8], rax
                mov     r9b, r15b
                mov     rcx, r13
                call    ObReferenceObjectByHandle
                mov     rsi, [rsp+108h+var_B8]
                mov     [rsp+108h+var_88], rsi
                test    eax, eax
                js      loc_1405E3CDA
                cmp     ebx, 17h
                jle     loc_1405E3BCC
                sub     ebx, 18h
                jz      loc_1405E4391
                sub     ebx, 1
                jz      loc_1405E3E19
                sub     ebx, 1
                jz      loc_1405E467E
                sub     ebx, 1
                jz      loc_1405E3CFD
                sub     ebx, 0Ch
                jnz     loc_1407F3A2C
                mov     [rsp+108h+var_80], rdi
                test    r12, r12
                jz      loc_1407F36BA
                cmp     r14d, 10h
                jb      loc_1407F36BA
                lea     r8, [rsp+108h+var_80]
                mov     dl, r15b
                mov     rcx, r12
                call    sub_1405E3160
                mov     r14d, eax
                test    eax, eax
                js      loc_1407F3B73
                mov     dword ptr [rsp+108h+var_E0], edi
                lea     rax, dword_14000A77C
                mov     [rsp+108h+var_E8], rax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 0FC13FCh
                lea     rcx, unk_140CDB418
                call    sub_140206E14
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                mov     ebx, 0C0000061h
                test    al, al
                cmovz   r14d, ebx
                mov     [rsp+108h+var_B0], r14d
                test    r14d, r14d
                js      loc_1407F3B63
                mov     rbx, [rsp+108h+var_80]
                mov     rdx, [rbx]
                mov     rcx, [rbx+8]
                call    sub_1405E38C4
                movzx   esi, dil
                mov     r14d, 1
                test    al, al
                cmovnz  esi, r14d
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r13, [rsp+108h+var_B8]
                mov     dl, r14b
                mov     rcx, [r13+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     r8, [rsp+108h+var_80]
                mov     r8, [r8]
                mov     rdx, [rbx+8]
                mov     rbx, [rsp+108h+var_B8]
                mov     rcx, [rbx+308h]
                call    sub_140203548
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                jns     loc_1405E3E0B

loc_1405E3B7C:                          ; CODE XREF: NtSetInformationToken+4DE↓j
                                        ; NtSetInformationToken+210253↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rbx+38h], eax
                shr     rax, 20h
                mov     [rbx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [r13+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     dl, r15b
                mov     rcx, [rsp+108h+var_80]
                call    sub_1405E4750
                mov     ebx, [rsp+108h+var_B0]

loc_1405E3BC2:                          ; CODE XREF: NtSetInformationToken+A5C↓j
                                        ; NtSetInformationToken+E0C↓j
                mov     rsi, [rsp+108h+var_B8]
                jmp     loc_1405E3CD0
; ---------------------------------------------------------------------------

loc_1405E3BCC:                          ; CODE XREF: NtSetInformationToken+11C↑j
                jz      loc_1405E43C8
                sub     ebx, 4
                jz      loc_1405E44BA
                sub     ebx, 1
                jz      loc_1407F3853
                sub     ebx, 1
                jz      loc_1405E4117
                sub     ebx, 6
                jz      loc_1405E40C7
                sub     ebx, 2
                jz      loc_1405E3D5F
                sub     ebx, 2
                jnz     loc_1405E42C4
                mov     [rsp+108h+var_78], rdi
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+108h+var_B8]
                lea     r14d, [rbx+1]
                mov     dl, r14b
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceSharedLite
                mov     bl, [rsi+76h]
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                test    bl, bl
                jnz     loc_1407F37C2
                test    r12, r12
                jnz     loc_1407F36C4
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, r14b
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     [rsi+76h], r14b
                mov     rdx, [rsp+108h+var_B8]
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdx+38h], eax
                shr     rax, 20h
                mov     [rdx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rsi+30h]

loc_1405E3CBF:                          ; CODE XREF: NtSetInformationToken+4D6↓j
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rsi, [rsp+108h+var_B8]

loc_1405E3CCE:                          ; CODE XREF: NtSetInformationToken+A93↓j
                mov     ebx, edi

loc_1405E3CD0:                          ; CODE XREF: NtSetInformationToken+297↑j
                                        ; NtSetInformationToken+42A↓j ...
                mov     rcx, rsi

loc_1405E3CD3:                          ; CODE XREF: NtSetInformationToken+20FF73↓j
                call    PsDereferenceSiloContext

loc_1405E3CD8:                          ; CODE XREF: NtSetInformationToken+788↓j
                mov     eax, ebx

loc_1405E3CDA:                          ; CODE XREF: NtSetInformationToken:loc_1405E39D5↑j
                                        ; NtSetInformationToken+113↑j ...
                lea     r11, [rsp+108h+var_18]
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

loc_1405E3CFD:                          ; CODE XREF: NtSetInformationToken+140↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E3D07:                          ; DATA XREF: .rdata:0000000140045170↑o
;   __try { // __except at loc_1405E3D14
                mov     eax, [r12]
                mov     [rsp+108h+var_68], eax
                jmp     short loc_1405E3D24
;   } // starts at 1405E3D07
; ---------------------------------------------------------------------------

loc_1405E3D14:                          ; DATA XREF: .rdata:0000000140045170↑o
;   __except(1) // owned by 1405E3D07
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     short loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E3D24:                          ; CODE XREF: NtSetInformationToken+3E2↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                cmp     [rsi+0CCh], dil
                jnz     loc_1407F3B88
                lea     rdx, [rsp+108h+var_68]
                mov     rcx, rsi
                call    sub_1405E30C8

loc_1405E3D58:                          ; CODE XREF: NtSetInformationToken+541↓j
                                        ; NtSetInformationToken+7E2↓j ...
                mov     ebx, eax
                jmp     loc_1405E3CD0
; ---------------------------------------------------------------------------

loc_1405E3D5F:                          ; CODE XREF: NtSetInformationToken+2C9↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E3D69:                          ; DATA XREF: .rdata:0000000140045180↑o
;   __try { // __except at loc_1405E3D76
                mov     ebx, [r12]
                mov     [rsp+108h+var_40], ebx
                jmp     short loc_1405E3D89
;   } // starts at 1405E3D69
; ---------------------------------------------------------------------------

loc_1405E3D76:                          ; DATA XREF: .rdata:0000000140045180↑o
;   __except(1) // owned by 1405E3D69
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E3D89:                          ; CODE XREF: NtSetInformationToken+444↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                test    ebx, ebx
                jnz     loc_1407F37C2
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r15, [rsp+108h+var_B8]
                lea     edx, [rbx+1]
                mov     rcx, [r15+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rsi, [rsp+108h+var_B8]
                mov     eax, [rsi+0C8h]
                test    al, 20h
                jnz     short loc_1405E3DFE
                cmp     cs:dword_140D2D010, ebx
                jnz     loc_1407F37CC

loc_1405E3DE8:                          ; CODE XREF: NtSetInformationToken+20FEA5↓j
                mov     rcx, rsi
                call    sub_1405E3088
                mov     ebx, eax
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                js      loc_1405E3CD0

loc_1405E3DFE:                          ; CODE XREF: NtSetInformationToken+4AA↑j
                lock or [rsp+108h+var_108], edi
                mov     rcx, [r15+30h]
                jmp     loc_1405E3CBF
; ---------------------------------------------------------------------------

loc_1405E3E0B:                          ; CODE XREF: NtSetInformationToken+246↑j
                test    sil, sil
                jz      loc_1405E3B7C
                jmp     loc_1407F3B7B
; ---------------------------------------------------------------------------

loc_1405E3E19:                          ; CODE XREF: NtSetInformationToken+12E↑j
                cmp     r14d, 10h
                jb      loc_1407F36BA

loc_1405E3E23:                          ; DATA XREF: .rdata:0000000140045190↑o
;   __try { // __except at loc_1405E3E5C
                lea     rax, [rsp+108h+var_60]
                mov     [rsp+108h+var_C8], rax
                lea     rax, [rsp+108h+var_50]
                mov     [rsp+108h+var_D0], rax
                mov     dword ptr [rsp+108h+var_E8], edi
                xor     r9d, r9d
                mov     r8b, r15b
                lea     r14d, [r9+1]
                mov     edx, r14d
                mov     rcx, r12
                call    sub_1406B8460
                mov     [rsp+108h+var_B0], eax
                jmp     short loc_1405E3E6F
;   } // starts at 1405E3E23
; ---------------------------------------------------------------------------

loc_1405E3E5C:                          ; DATA XREF: .rdata:0000000140045190↑o
;   __except(1) // owned by 1405E3E23
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E3E6F:                          ; CODE XREF: NtSetInformationToken+52A↑j
                test    eax, eax
                js      loc_1405E3D58
                mov     r13, [rsp+108h+var_50]
                mov     rbx, [r13+0]
                mov     rcx, cs:qword_140C1D9C8
                mov     edx, [rbx+2]
                sub     edx, [rcx+2]
                jnz     short loc_1405E3E9C
                movzx   edx, word ptr [rbx+6]
                movzx   eax, word ptr [rcx+6]
                sub     edx, eax

loc_1405E3E9C:                          ; CODE XREF: NtSetInformationToken+560↑j
                test    edx, edx
                jnz     loc_1407F3B92
                mov     rcx, rbx
                call    RtlSubAuthorityCountSid
                movzx   ecx, byte ptr [rax]
                test    cl, cl
                jz      loc_1407F3BAF
                mov     edx, ecx
                sub     edx, r14d
                mov     rcx, rbx
                call    RtlSubAuthoritySid
                mov     r12d, [rax]
                cmp     r12d, 4000h
                ja      loc_1407F3B92

loc_1405E3ED4:                          ; CODE XREF: NtSetInformationToken+210282↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, [rsp+108h+var_B8]
                mov     [rsp+108h+var_48], rax
                mov     dl, r14b
                mov     rcx, [rax+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rbx, [rsp+108h+var_B8]
                mov     rcx, rbx
                call    sub_14021BD88
                mov     rsi, rax
                test    rax, rax
                jz      loc_1407F3BB7
                mov     r13, [rax]
                mov     rcx, r13
                call    RtlSubAuthorityCountSid
                movzx   ecx, byte ptr [rax]
                test    cl, cl
                jz      loc_1407F3BC1
                mov     edx, ecx
                sub     edx, r14d
                mov     rcx, r13
                call    RtlSubAuthoritySid
                mov     eax, [rax]

loc_1405E3F3F:                          ; CODE XREF: NtSetInformationToken+210293↓j
                cmp     r12d, eax
                jbe     short loc_1405E3F68
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F3BC8
                cmp     [rbx+0CCh], dil
                jnz     loc_1407F3BD2

loc_1405E3F68:                          ; CODE XREF: NtSetInformationToken+612↑j
                mov     rcx, [rsi]
                movzx   eax, byte ptr [rcx+1]
                test    al, al
                jz      loc_1407F3BDC
                mov     edx, eax
                sub     edx, r14d
                call    RtlSubAuthoritySid
                mov     [rax], r12d
                cmp     r12d, 3000h
                jnb     short loc_1405E3F9F
                mov     rax, 0FFFFFFEEDFE9F97Bh
                and     [rbx+48h], rax
                and     [rbx+50h], rax

loc_1405E3F9F:                          ; CODE XREF: NtSetInformationToken+65B↑j
                mov     esi, 2000h
                cmp     r12d, esi
                jb      loc_1405E4457
                test    dword ptr [rbx+0C8h], 4000h
                jz      loc_1405E405C
                mov     rdx, [rbx+310h]
                mov     rcx, rbx
                call    sub_140201F54
                btr     dword ptr [rbx+0C8h], 0Eh
                mov     rcx, [rbx+310h]
                test    rcx, rcx
                jz      short loc_1405E3FEE
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rbx+310h], rdi

loc_1405E3FEE:                          ; CODE XREF: NtSetInformationToken+6AE↑j
                mov     rcx, [rbx+318h]
                test    rcx, rcx
                jz      short loc_1405E4022
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rbx+318h], rdi
                mov     [rbx+320h], edi
                lea     rcx, [rbx+328h]
                xor     edx, edx
                mov     r8d, 110h
                call    memset

loc_1405E4022:                          ; CODE XREF: NtSetInformationToken+6C8↑j
                mov     rdx, [rbx+438h]
                test    rdx, rdx
                jz      short loc_1405E403D
                mov     ecx, [rbx+78h]
                call    sub_1406A0F7C
                mov     [rbx+438h], rdi

loc_1405E403D:                          ; CODE XREF: NtSetInformationToken+6FC↑j
                mov     rdx, [rbx+440h]
                test    rdx, rdx
                jz      short loc_1405E405C
                mov     rcx, [rbx+0D8h]
                call    sub_1406A10C0
                mov     [rbx+440h], rdi

loc_1405E405C:                          ; CODE XREF: NtSetInformationToken+687↑j
                                        ; NtSetInformationToken+717↑j
                or      [rbx+0C8h], esi

loc_1405E4062:                          ; CODE XREF: NtSetInformationToken+B41↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rbx+38h], eax
                shr     rax, 20h
                mov     [rbx+3Ch], eax
                mov     ebx, edi

loc_1405E4084:                          ; CODE XREF: NtSetInformationToken+21028C↓j
                                        ; NtSetInformationToken+21029D↓j ...
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rsp+108h+var_48]
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     dl, r15b
                mov     rcx, [rsp+108h+var_50]
                call    sub_140629F38
                jmp     loc_1405E3CD8
; ---------------------------------------------------------------------------

loc_1405E40BD:                          ; CODE XREF: NtSetInformationToken+CF↑j
                mov     edx, 180h
                jmp     loc_1405E3A0E
; ---------------------------------------------------------------------------

loc_1405E40C7:                          ; CODE XREF: NtSetInformationToken+2C0↑j
                cmp     r14d, 4
                jnz     loc_1407F39CD

loc_1405E40D1:                          ; DATA XREF: .rdata:00000001400451A0↑o
;   __try { // __except at loc_1405E40DE
                mov     ebx, [r12]
                mov     [rsp+108h+var_3C], ebx
                jmp     short loc_1405E40F1
;   } // starts at 1405E40D1
; ---------------------------------------------------------------------------

loc_1405E40DE:                          ; DATA XREF: .rdata:00000001400451A0↑o
;   __except(1) // owned by 1405E40D1
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E40F1:                          ; CODE XREF: NtSetInformationToken+7AC↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     edx, ebx
                mov     rcx, rsi
                call    sub_1405E283C
                jmp     loc_1405E3D58
; ---------------------------------------------------------------------------

loc_1405E4117:                          ; CODE XREF: NtSetInformationToken+2B7↑j
                cmp     r14d, 8
                jb      loc_1407F39CD

loc_1405E4121:                          ; DATA XREF: .rdata:00000001400451B0↑o
;   __try { // __except at loc_1405E416A
                mov     rcx, [r12]
                mov     [rsp+108h+var_A0], rcx
                mov     r14d, 1
                test    rcx, rcx
                jz      short loc_1405E415E
                lea     rax, [rsp+108h+var_A8]
                mov     [rsp+108h+var_D0], rax
                lea     rax, [rsp+108h+var_A0]
                mov     [rsp+108h+var_D8], rax
                mov     dword ptr [rsp+108h+var_E8], r14d
                mov     dl, r15b
                call    sub_1405E2930
                mov     ebx, eax
                mov     [rsp+108h+var_B0], eax
                jmp     short loc_1405E4168
; ---------------------------------------------------------------------------

loc_1405E415E:                          ; CODE XREF: NtSetInformationToken+803↑j
                mov     [rsp+108h+var_A8], edi
                mov     ebx, edi
                mov     [rsp+108h+var_B0], ebx

loc_1405E4168:                          ; CODE XREF: NtSetInformationToken+82C↑j
                jmp     short loc_1405E417D
;   } // starts at 1405E4121
; ---------------------------------------------------------------------------

loc_1405E416A:                          ; DATA XREF: .rdata:00000001400451B0↑o
;   __except(1) // owned by 1405E4121
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E417D:                          ; CODE XREF: NtSetInformationToken:loc_1405E4168↑j
                test    ebx, ebx
                js      loc_1405E3CD0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+108h+var_B8]
                mov     dl, r14b
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rbx, [rsp+108h+var_B8]
                mov     rax, [rbx+0A8h]
                movzx   edx, byte ptr [rax+1]
                mov     eax, [rsp+108h+var_A8]
                add     eax, 8
                lea     edx, [rax+rdx*4]
                mov     [rsp+108h+var_A8], edx
                cmp     edx, [rbx+88h]
                ja      loc_1407F37E4
                mov     rcx, rbx
                call    sub_1405E2384
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                js      loc_1407F381C
                mov     rcx, [rbx+0B8h]
                test    rcx, rcx
                jz      short loc_1405E4226
                lea     rax, [rsp+108h+var_70]
                mov     [rsp+108h+var_D0], rax
                lea     rax, [rsp+108h+var_58]
                mov     [rsp+108h+var_D8], rax
                mov     dword ptr [rsp+108h+var_E8], r14d
                xor     edx, edx
                call    sub_1405E2930
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                js      loc_1407F381C

loc_1405E4226:                          ; CODE XREF: NtSetInformationToken+8C2↑j
                mov     rcx, rbx
                call    sub_1405E246C
                mov     r14, [rsp+108h+var_A0]
                test    r14, r14
                jz      short loc_1405E4243
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1405E24B8

loc_1405E4243:                          ; CODE XREF: NtSetInformationToken+906↑j
                mov     [rsp+108h+var_E8], r14
                mov     r9, [rsp+108h+var_58]
                mov     r8, r13
                mov     rdx, rbx
                call    sub_1405E2518
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rbx+38h], eax
                shr     rax, 20h
                mov     [rbx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+108h+var_A0]
                test    rcx, rcx
                jz      short loc_1405E42A9
                mov     dl, r15b
                call    sub_1405E2A6C

loc_1405E42A9:                          ; CODE XREF: NtSetInformationToken+96F↑j
                mov     rcx, [rsp+108h+var_58]
                test    rcx, rcx
                jz      short loc_1405E42BD
                xor     edx, edx
                call    sub_1405E2A6C

loc_1405E42BD:                          ; CODE XREF: NtSetInformationToken+984↑j
                                        ; NtSetInformationToken+20FE8D↓j ...
                xor     eax, eax
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E42C4:                          ; CODE XREF: NtSetInformationToken+2D2↑j
                sub     ebx, 1
                jnz     loc_1405E4476
                cmp     r14d, 8
                jnz     loc_1407F36BA

loc_1405E42D7:                          ; DATA XREF: .rdata:00000001400451C0↑o
;   __try { // __except at loc_1405E42E5
                mov     rax, [r12]
                mov     [rsp+108h+var_28], rax
                jmp     short loc_1405E42F8
;   } // starts at 1405E42D7
; ---------------------------------------------------------------------------

loc_1405E42E5:                          ; DATA XREF: .rdata:00000001400451C0↑o
;   __except(1) // owned by 1405E42D7
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E42F8:                          ; CODE XREF: NtSetInformationToken+9B3↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_B8]
                mov     edx, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rdx, [rsp+108h+var_B8]
                mov     eax, [rdx+0E4h]
                or      eax, [rdx+0E0h]
                jnz     short loc_1405E4358
                mov     rax, [rsp+108h+var_28]
                mov     [rdx+0E0h], rax

loc_1405E4358:                          ; CODE XREF: NtSetInformationToken+A17↑j
                                        ; NtSetInformationToken+B22↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdx+38h], eax
                shr     rax, 20h
                mov     [rdx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                xor     ebx, ebx
                jmp     loc_1405E3BC2
; ---------------------------------------------------------------------------

loc_1405E4391:                          ; CODE XREF: NtSetInformationToken+125↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E439B:                          ; DATA XREF: .rdata:00000001400451D0↑o
;   __try { // __except at loc_1405E43A8
                mov     edx, [r12]
                mov     [rsp+108h+var_30], edx
                jmp     short loc_1405E43BB
;   } // starts at 1405E439B
; ---------------------------------------------------------------------------

loc_1405E43A8:                          ; DATA XREF: .rdata:00000001400451D0↑o
;   __except(1) // owned by 1405E439B
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E43BB:                          ; CODE XREF: NtSetInformationToken+A76↑j
                mov     rcx, rsi
                call    sub_14071E06C
                jmp     loc_1405E3CCE
; ---------------------------------------------------------------------------

loc_1405E43C8:                          ; CODE XREF: NtSetInformationToken:loc_1405E3BCC↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E43D2:                          ; DATA XREF: .rdata:00000001400451E0↑o
;   __try { // __except at loc_1405E43DF
                mov     eax, [r12]
                mov     [rsp+108h+var_6C], eax
                jmp     short loc_1405E43F2
;   } // starts at 1405E43D2
; ---------------------------------------------------------------------------

loc_1405E43DF:                          ; DATA XREF: .rdata:00000001400451E0↑o
;   __except(1) // owned by 1405E43D2
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E43F2:                          ; CODE XREF: NtSetInformationToken+AAD↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E7A8
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_B8]
                mov     edx, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rdx, [rsp+108h+var_B8]
                mov     eax, [rdx+0C8h]
                cmp     [rsp+108h+var_6C], edi
                jz      loc_1407F3A23
                bts     eax, 9

loc_1405E444C:                          ; CODE XREF: NtSetInformationToken+2100F7↓j
                mov     [rdx+0C8h], eax
                jmp     loc_1405E4358
; ---------------------------------------------------------------------------

loc_1405E4457:                          ; CODE XREF: NtSetInformationToken+677↑j
                mov     rax, 202800000h
                and     [rbx+48h], rax
                and     [rbx+50h], rax
                btr     dword ptr [rbx+0C8h], 0Dh
                jmp     loc_1405E4062
; ---------------------------------------------------------------------------

loc_1405E4476:                          ; CODE XREF: NtSetInformationToken+997↑j
                cmp     ebx, 2
                jnz     loc_1407F3B08
                cmp     r14d, 8
                jnz     loc_1407F36BA

loc_1405E4489:                          ; DATA XREF: .rdata:00000001400451F0↑o
;   __try { // __except at loc_1405E4497
                mov     rdx, [r12]
                mov     [rsp+108h+var_20], rdx
                jmp     short loc_1405E44AA
;   } // starts at 1405E4489
; ---------------------------------------------------------------------------

loc_1405E4497:                          ; DATA XREF: .rdata:00000001400451F0↑o
;   __except(1) // owned by 1405E4489
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E44AA:                          ; CODE XREF: NtSetInformationToken+B65↑j
                mov     r8b, r15b
                mov     rcx, rsi
                call    sub_140363AB4
                jmp     loc_1405E3D58
; ---------------------------------------------------------------------------

loc_1405E44BA:                          ; CODE XREF: NtSetInformationToken+2A5↑j
                cmp     r14d, 8
                jb      loc_1407F39CD

loc_1405E44C4:                          ; DATA XREF: .rdata:0000000140045200↑o
;   __try { // __except at loc_1405E44F2
                mov     rcx, [r12]
                mov     [rsp+108h+var_90], rcx
                lea     rax, [rsp+108h+var_90]
                mov     [rsp+108h+var_D8], rax
                mov     r14d, 1
                mov     byte ptr [rsp+108h+var_E0], r14b
                mov     dl, r15b
                call    sub_1406B967C
                mov     ebx, eax
                mov     [rsp+108h+var_B0], eax
                jmp     short loc_1405E4505
;   } // starts at 1405E44C4
; ---------------------------------------------------------------------------

loc_1405E44F2:                          ; DATA XREF: .rdata:0000000140045200↑o
;   __except(1) // owned by 1405E44C4
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E4505:                          ; CODE XREF: NtSetInformationToken+BC0↑j
                test    ebx, ebx
                js      loc_1405E3CD0
                mov     ebx, edi
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, r14b
                mov     rcx, [rsp+108h+var_B8]
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rsi, [rsp+108h+var_88]

loc_1405E453C:                          ; CODE XREF: NtSetInformationToken+2100B2↓j
                cmp     ebx, [rsi+7Ch]
                jnb     loc_1407F39E7

loc_1405E4545:                          ; DATA XREF: .rdata:0000000140045210↑o
;   __try { // __except at loc_1405E4610
                mov     eax, ebx
                add     rax, rax
                mov     rdx, [rsi+98h]
                mov     rdx, [rdx+rax*8]
                mov     rcx, [rsp+108h+var_90]
                call    RtlEqualSid
                mov     [rsp+108h+var_A4], al
                test    al, al
                jz      loc_1405E460B
                mov     edx, ebx
                mov     rcx, rsi
                call    sub_14070176C
                test    al, al
                jz      loc_1405E45FD
                mov     [rsi+90h], ebx
                mov     al, r14b
                mov     [rsp+108h+var_AC], al
                mov     [rsp+108h+var_B0], edi

loc_1405E458E:                          ; CODE XREF: NtSetInformationToken+CD9↓j
                test    al, al
                jz      short loc_1405E45C2
                mov     [rsp+108h+var_48], rdi
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rsp+108h+var_48], rax
                mov     [rsi+38h], eax
                shr     rax, 20h
                mov     [rsi+3Ch], eax

loc_1405E45C2:                          ; CODE XREF: NtSetInformationToken+C60↑j
                lock or [rsp+108h+var_108], edi
                mov     rbx, [rsp+108h+var_88]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     r8b, r14b
                mov     dl, r15b
                mov     rcx, [rsp+108h+var_90]
                call    sub_1406B9780
                mov     eax, [rsp+108h+var_B0]
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E45FD:                          ; CODE XREF: NtSetInformationToken+C47↑j
                mov     [rsp+108h+var_B0], 0C000005Ah
                mov     al, [rsp+108h+var_AC]
                jmp     short loc_1405E458E
; ---------------------------------------------------------------------------

loc_1405E460B:                          ; CODE XREF: NtSetInformationToken+C35↑j
                jmp     loc_1407F39DF
;   } // starts at 1405E4545
; ---------------------------------------------------------------------------

loc_1405E4610:                          ; DATA XREF: .rdata:0000000140045210↑o
;   __except(1) // owned by 1405E4545
                mov     edi, eax
                cmp     [rsp+108h+var_AC], 0
                jz      short loc_1405E4643
                mov     r8, [rsp+108h+var_88]
                mov     rdx, cs:qword_14003AFE0
                mov     rcx, rdx
                lock xadd cs:qword_140C12E38, rcx
                add     rcx, rdx
                mov     [r8+38h], ecx
                shr     rcx, 20h
                mov     [r8+3Ch], ecx

loc_1405E4643:                          ; CODE XREF: NtSetInformationToken+CE7↑j
                lock or [rsp+108h+var_108], 0
                mov     rbx, [rsp+108h+var_88]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     r8b, 1
                mov     dl, [rsp+108h+var_AB]
                mov     rcx, [rsp+108h+var_90]
                call    sub_1406B9780
                mov     eax, edi
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E467E:                          ; CODE XREF: NtSetInformationToken+137↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E4688:                          ; DATA XREF: .rdata:0000000140045220↑o
;   __try { // __except at loc_1405E4695
                mov     eax, [r12]
                mov     [rsp+108h+var_64], eax
                jmp     short loc_1405E46A8
;   } // starts at 1405E4688
; ---------------------------------------------------------------------------

loc_1405E4695:                          ; DATA XREF: .rdata:0000000140045220↑o
;   __except(1) // owned by 1405E4688
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E46A8:                          ; CODE XREF: NtSetInformationToken+D63↑j
                test    eax, eax
                jz      short loc_1405E46C3
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA

loc_1405E46C3:                          ; CODE XREF: NtSetInformationToken+D7A↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_B8]
                mov     edx, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rdx, [rsp+108h+var_B8]
                mov     eax, [rdx+0C8h]
                cmp     [rsp+108h+var_64], edi
                jz      short loc_1405E4741
                bts     eax, 0Ch

loc_1405E4702:                          ; CODE XREF: NtSetInformationToken+E15↓j
                mov     [rdx+0C8h], eax
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdx+38h], eax
                shr     rax, 20h
                mov     [rdx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     ebx, edi
                jmp     loc_1405E3BC2
; ---------------------------------------------------------------------------

loc_1405E4741:                          ; CODE XREF: NtSetInformationToken+DCC↑j
                btr     eax, 0Ch
                jmp     short loc_1405E4702
; } // starts at 1405E3930
NtSetInformationToken endp

NtQueryVolumeInformationFile proc near  ; CODE XREF: sub_1405DAA5C+131↑p
                                        ; sub_1405DAA5C+1D8↑p ...

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_78          = byte ptr -78h
var_77          = byte ptr -77h
var_76          = byte ptr -76h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_18], r9d
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     r13, r8
                mov     r12, rdx
                mov     r14, rcx
                xor     esi, esi
                mov     [rsp+0B8h+var_70], rsi
                mov     [rsp+0B8h+var_68], rsi
                mov     r8, gs:188h
                mov     [rsp+0B8h+var_48], r8
                movzx   edi, byte ptr [r8+232h]
                mov     [rsp+0B8h+var_77], dil
                test    dil, dil
                jz      loc_14060D42D
                movsxd  r15, [rsp+0B8h+arg_20]
                cmp     r15d, 0Fh
                jnb     loc_14060D423
                lea     rbx, cs:140000000h
                movzx   eax, byte ptr [r15+rbx+985070h]
                test    al, al
                jz      loc_14060D423
                cmp     r9d, eax
                jnb     short loc_14060D3B1
                mov     eax, 0C0000004h
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D3B1:                          ; CODE XREF: NtQueryVolumeInformationFile+85↑j
                                        ; DATA XREF: .rdata:000000014004B488↑o
;   __try { // __except at loc_14060D41E
                mov     rcx, 7FFFFFFF0000h
                cmp     r12, rcx
                cmovb   rcx, r12
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [r8+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_14060D3F5
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_14060D3F1
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_14060D3F5

loc_14060D3F1:                          ; CODE XREF: NtQueryVolumeInformationFile+C5↑j
                mov     al, 1
                jmp     short loc_14060D3F7
; ---------------------------------------------------------------------------

loc_14060D3F5:                          ; CODE XREF: NtQueryVolumeInformationFile+B7↑j
                                        ; NtQueryVolumeInformationFile+CF↑j
                xor     al, al

loc_14060D3F7:                          ; CODE XREF: NtQueryVolumeInformationFile+D3↑j
                mov     [rsp+0B8h+var_76], al
                mov     ecx, r9d
                test    al, al
                mov     r8d, 4
                jnz     short loc_14060D411
                movzx   r8d, byte ptr [r15+rbx+985470h]

loc_14060D411:                          ; CODE XREF: NtQueryVolumeInformationFile+E6↑j
                mov     rdx, rcx
                mov     rcx, r13
                call    ProbeForWrite
                jmp     short loc_14060D43C
;   } // starts at 14060D3B1
; ---------------------------------------------------------------------------

loc_14060D41E:                          ; DATA XREF: .rdata:000000014004B488↑o
;   __except(1) // owned by 14060D3B1
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D423:                          ; CODE XREF: NtQueryVolumeInformationFile+64↑j
                                        ; NtQueryVolumeInformationFile+7C↑j
                mov     eax, 0C0000003h
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D42D:                          ; CODE XREF: NtQueryVolumeInformationFile+52↑j
                lea     rbx, cs:140000000h
                mov     r15d, [rsp+0B8h+arg_20]

loc_14060D43C:                          ; CODE XREF: NtQueryVolumeInformationFile+FC↑j
                movsxd  rax, r15d
                mov     [rsp+0B8h+var_98], rsi
                lea     r9, [rsp+0B8h+var_70]
                movzx   r8d, dil
                mov     edx, ds:rva dword_140986680[rbx+rax*4]
                mov     rcx, r14
                call    sub_1402433F0
                mov     [rsp+0B8h+var_74], eax
                test    eax, eax
                js      loc_14060D844
                mov     rdi, [rsp+0B8h+var_70]
                lea     rbx, [rdi+50h]
                mov     [rsp+0B8h+var_58], rbx
                mov     r14d, [rbx]
                mov     eax, r14d
                and     eax, 800h
                jz      short loc_14060D49B
                cmp     r15d, 4
                jz      short loc_14060D4A5
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C0000010h
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D49B:                          ; CODE XREF: NtQueryVolumeInformationFile+161↑j
                cmp     r15d, 4
                jnz     loc_14060D52F

loc_14060D4A5:                          ; CODE XREF: NtQueryVolumeInformationFile+167↑j
                test    eax, eax
                jnz     short loc_14060D4B3
                mov     rax, [rdi+8]
                cmp     dword ptr [rax+48h], 14h
                jz      short loc_14060D52F

loc_14060D4B3:                          ; CODE XREF: NtQueryVolumeInformationFile+187↑j
                xor     cl, cl
                mov     rbx, [rdi+8]
                cmp     qword ptr [rbx+38h], 0
                jz      short loc_14060D4CB
                mov     rcx, rbx
                call    sub_1402162A0
                movzx   ecx, al

loc_14060D4CB:                          ; CODE XREF: NtQueryVolumeInformationFile+19E↑j
                cmp     [rsp+0B8h+arg_18], 8
                jnb     short loc_14060D4E9
                mov     esi, 0C0000004h
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, esi
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D4E9:                          ; CODE XREF: NtQueryVolumeInformationFile+1B3↑j
                                        ; DATA XREF: .rdata:000000014004B498↑o
;   __try { // __except at loc_14060D515
                mov     eax, [rbx+48h]
                mov     [r13+0], eax
                mov     eax, [rbx+34h]
                mov     [r13+4], eax
                test    cl, cl
                jz      short loc_14060D502
                or      eax, 20h
                mov     [r13+4], eax

loc_14060D502:                          ; CODE XREF: NtQueryVolumeInformationFile+1D9↑j
                mov     [r12], esi
                mov     qword ptr [r12+8], 8
                mov     [rsp+0B8h+var_74], esi
                jmp     short loc_14060D520
;   } // starts at 14060D4E9
; ---------------------------------------------------------------------------

loc_14060D515:                          ; DATA XREF: .rdata:000000014004B498↑o
;   __except(1) // owned by 14060D4E9
                mov     esi, eax
                mov     [rsp+0B8h+var_74], eax
                mov     rdi, [rsp+0B8h+var_70]

loc_14060D520:                          ; CODE XREF: NtQueryVolumeInformationFile+1F3↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, esi
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D52F:                          ; CODE XREF: NtQueryVolumeInformationFile+17F↑j
                                        ; NtQueryVolumeInformationFile+191↑j
                test    r14b, 2
                jz      loc_14060D5CE
                shr     r14d, 2
                and     r14b, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+0B8h+var_70]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+0B8h+var_78], 0
                mov     ecx, 1
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_14060D592
                test    rax, rax
                jz      short loc_14060D581
                or      byte ptr [rax+1Ah], 1

loc_14060D581:                          ; CODE XREF: NtQueryVolumeInformationFile+25B↑j
                mov     rdi, [rsp+0B8h+var_70]
                mov     rcx, rdi
                call    ObfReferenceObject
                mov     ebx, esi
                jmp     short loc_14060D5B7
; ---------------------------------------------------------------------------

loc_14060D592:                          ; CODE XREF: NtQueryVolumeInformationFile+256↑j
                lea     rcx, [rsp+0B8h+var_78]
                mov     [rsp+0B8h+var_98], rcx
                mov     r9, rax
                movzx   r8d, r14b
                movzx   edx, [rsp+0B8h+var_77]
                mov     rdi, [rsp+0B8h+var_70]
                mov     rcx, rdi
                call    sub_1406A0C70
                mov     ebx, eax

loc_14060D5B7:                          ; CODE XREF: NtQueryVolumeInformationFile+270↑j
                cmp     [rsp+0B8h+var_78], 0
                jnz     loc_14060D669
                mov     [rsp+0B8h+var_78], 1
                mov     rbx, [rsp+0B8h+var_58]
                jmp     short loc_14060D5D3
; ---------------------------------------------------------------------------

loc_14060D5CE:                          ; CODE XREF: NtQueryVolumeInformationFile+213↑j
                mov     [rsp+0B8h+var_78], 0

loc_14060D5D3:                          ; CODE XREF: NtQueryVolumeInformationFile+2AC↑j
                cmp     r15d, 9
                jnz     loc_14060D678
                mov     [rsp+0B8h+var_60], rsi

loc_14060D5E2:                          ; DATA XREF: .rdata:000000014004B4A8↑o
;   __try { // __except at loc_14060D63B
                mov     r15d, [rsp+0B8h+arg_18]
                mov     edx, r15d
                call    sub_1402159F0
                mov     r14, rax
                mov     [rsp+0B8h+var_60], rax
                mov     r8d, r15d
                mov     rdx, r13
                mov     rcx, rax
                call    memmove
                mov     r8d, r15d
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_140500CA8
                mov     ebx, eax
                mov     [rsp+0B8h+var_74], eax
                test    eax, eax
                js      loc_14060D862
                movzx   eax, byte ptr [r14]
                mov     [r13+0], al
                mov     [r12], esi
                mov     qword ptr [r12+8], 0Ch
                jmp     short loc_14060D64B
;   } // starts at 14060D5E2
; ---------------------------------------------------------------------------

loc_14060D63B:                          ; DATA XREF: .rdata:000000014004B4A8↑o
                                        ; .rdata:000000014004B4C8↑o
;   __except(1) // owned by 14060D5E2
;   __except(1) // owned by 14060D862
                mov     ebx, eax
                mov     [rsp+0B8h+var_74], eax
                mov     rdi, [rsp+0B8h+var_70]
                mov     r14, [rsp+0B8h+var_60]

loc_14060D64B:                          ; CODE XREF: NtQueryVolumeInformationFile+319↑j
                test    r14, r14
                jz      short loc_14060D65A
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14060D65A:                          ; CODE XREF: NtQueryVolumeInformationFile+32E↑j
                mov     eax, [rdi+50h]
                test    al, 2
                jz      short loc_14060D669
                mov     rcx, rdi
                call    sub_1402481D0

loc_14060D669:                          ; CODE XREF: NtQueryVolumeInformationFile+29C↑j
                                        ; NtQueryVolumeInformationFile+33F↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D678:                          ; CODE XREF: NtQueryVolumeInformationFile+2B7↑j
                mov     rcx, rdi
                call    sub_1402360C0
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     [rsp+0B8h+var_50], rax
                mov     ecx, [rbx]
                test    cl, 2
                jnz     short loc_14060D6C9
                call    sub_140359720
                mov     r14, rax
                mov     [rsp+0B8h+var_68], rax
                test    rax, rax
                jnz     short loc_14060D6B3
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                jmp     loc_14060D83F
; ---------------------------------------------------------------------------

loc_14060D6B3:                          ; CODE XREF: NtQueryVolumeInformationFile+384↑j
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rax
                call    KeInitializeEvent
                mov     rax, [rsp+0B8h+var_50]
                jmp     short loc_14060D6CC
; ---------------------------------------------------------------------------

loc_14060D6C9:                          ; CODE XREF: NtQueryVolumeInformationFile+372↑j
                mov     r14, rsi

loc_14060D6CC:                          ; CODE XREF: NtQueryVolumeInformationFile+3A7↑j
                mov     r9, [rsp+0B8h]
                xor     r8d, r8d
                movzx   edx, byte ptr [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rbx, rax
                mov     [rsp+0B8h+var_40], rax
                test    rax, rax
                jnz     short loc_14060D714
                mov     rax, [rsp+0B8h+var_58]
                mov     eax, [rax]
                test    al, 2
                jnz     short loc_14060D705
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14060D705:                          ; CODE XREF: NtQueryVolumeInformationFile+3D9↑j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1408925D4
                jmp     loc_14060D83F
; ---------------------------------------------------------------------------

loc_14060D714:                          ; CODE XREF: NtQueryVolumeInformationFile+3CE↑j
                mov     [rax+0C0h], rdi
                mov     rax, [rsp+0B8h+var_48]
                mov     [rbx+98h], rax
                movzx   eax, [rsp+0B8h+var_77]
                mov     [rbx+40h], al
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_38], xmm0
                cmp     [rsp+0B8h+var_78], 0
                jz      short loc_14060D749
                mov     rax, r12
                mov     r14, rsi
                jmp     short loc_14060D758
; ---------------------------------------------------------------------------

loc_14060D749:                          ; CODE XREF: NtQueryVolumeInformationFile+41F↑j
                mov     dword ptr [rbx+10h], 4
                lea     rax, [rsp+0B8h+var_38]

loc_14060D758:                          ; CODE XREF: NtQueryVolumeInformationFile+427↑j
                mov     [rbx+50h], r14
                mov     [rbx+48h], rax
                mov     [rbx+58h], rsi
                mov     r14, [rbx+0B8h]
                mov     byte ptr [r14-48h], 0Ah
                mov     [r14-18h], rdi
                mov     [rbx+70h], r13
                mov     [rbx+18h], rsi
                mov     [rbx+8], rsi

loc_14060D780:                          ; DATA XREF: .rdata:000000014004B4B8↑o
;   __try { // __except at loc_14060D815
                mov     r13d, [rsp+0B8h+arg_18]
                mov     edx, r13d
                call    sub_1402159F0
                mov     [rbx+18h], rax
;   } // starts at 14060D780

loc_14060D794:                          ; DATA XREF: .rdata:000000014004B4B8↑o
                cmp     cs:dword_140CF4A5C, 0
                jnz     short loc_14060D7AA
                mov     r8, r13
                xor     edx, edx
                mov     rcx, rax
                call    memset

loc_14060D7AA:                          ; CODE XREF: NtQueryVolumeInformationFile+47B↑j
                or      dword ptr [rbx+10h], 870h
                mov     [r14-40h], r13d
                mov     [r14-38h], r15d
                mov     [rsp+0B8h+var_88], 2
                movzx   esi, [rsp+0B8h+var_78]
                mov     byte ptr [rsp+0B8h+var_90], sil
                movzx   r14d, [rsp+0B8h+var_77]
                mov     byte ptr [rsp+0B8h+var_98], r14b
                mov     r9b, 1
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, [rsp+0B8h+var_50]
                call    sub_140643F60
                test    sil, sil
                jnz     short loc_14060D844
                mov     [rsp+0B8h+var_90], r12
                lea     rcx, [rsp+0B8h+var_38]
                mov     [rsp+0B8h+var_98], rcx
                movzx   r9d, r14b
                mov     r8, rbx
                mov     rdx, [rsp+0B8h+var_68]
                mov     ecx, eax
                call    sub_1406FC85C
                jmp     short loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D815:                          ; DATA XREF: .rdata:000000014004B4B8↑o
;   __except(1) // owned by 14060D780
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_70]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0B8h+var_98], dl
                mov     r9, [rsp+0B8h+var_68]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+var_40]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     short loc_14060D844
; ---------------------------------------------------------------------------

loc_14060D83F:                          ; CODE XREF: NtQueryVolumeInformationFile+38E↑j
                                        ; NtQueryVolumeInformationFile+3EF↑j
                mov     eax, 0C000009Ah

loc_14060D844:                          ; CODE XREF: NtQueryVolumeInformationFile+8C↑j
                                        ; NtQueryVolumeInformationFile:loc_14060D41E↑j ...
                lea     r11, [rsp+0B8h+var_28]
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
                align 2

loc_14060D862:                          ; CODE XREF: NtQueryVolumeInformationFile+2FE↑j
                                        ; DATA XREF: .rdata:000000014004B4C8↑o
;   __try { // __except at loc_14060D63B
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 14060D862
byte_14060D86A  db 0CCh                 ; DATA XREF: .rdata:000000014004B4C8↑o
; } // starts at 14060D320
NtQueryVolumeInformationFile endp

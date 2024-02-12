NtAdjustPrivilegesToken proc near       ; CODE XREF: sub_140917668+A8↓p
                                        ; DATA XREF: .rdata:000000014004F8A0↑o ...

var_A8          = dword ptr -0A8h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = byte ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = byte ptr -34h
var_30          = dword ptr -30h
var_28          = byte ptr -28h
arg_8           = byte ptr  10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408007D0 SIZE 00000065 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r13d, r9d
                mov     rdi, r8
                mov     r15b, dl
                mov     r12, rcx
                xor     esi, esi
                mov     [rax-54h], esi
                mov     [rax-40h], rsi
                mov     [rax-34h], esi
                mov     [rax-48h], esi
                mov     [rax-44h], esi
                mov     [rax+10h], sil
                test    dl, dl
                jnz     short loc_140626FDA
                test    r8, r8
                jz      loc_1408007D0

loc_140626FDA:                          ; CODE XREF: NtAdjustPrivilegesToken+3F↑j
                mov     rax, gs:188h
                mov     r14b, [rax+232h]
                mov     [rsp+0A8h+var_58], r14b
                test    r14b, r14b
                jz      loc_14062733E

loc_140626FF8:                          ; DATA XREF: .rdata:000000014004F85C↑o
;   __try { // __except at loc_14062709B
                test    r15b, r15b
                jnz     loc_14062708D
                test    dil, 3
                jnz     short loc_14062707A
                mov     rsi, 7FFFFFFF0000h
                mov     rax, rsi
                cmp     rdi, rsi
                cmovb   rax, rdi
                mov     al, [rax]
                mov     eax, [r8]
                mov     [rsp+0A8h+var_54], eax
                dec     eax
                lea     ecx, [rax+rax*2]
                lea     ecx, ds:10h[rcx*4]
                mov     [rsp+0A8h+var_30], ecx
                test    ecx, ecx
                jz      short loc_140627045
                add     rcx, rdi
                cmp     rcx, rsi
                ja      short loc_140627080
                cmp     rcx, rdi
                jb      short loc_140627080

loc_140627045:                          ; CODE XREF: NtAdjustPrivilegesToken+A6↑j
                                        ; NtAdjustPrivilegesToken+FB↓j ...
                mov     rbx, [rsp+0A8h+arg_20]
                test    rbx, rbx
                jz      short loc_140627099
                mov     rdx, r13
                mov     r8d, 4
                mov     rcx, rbx
                call    ProbeForWrite
                cmp     [rsp+0A8h+arg_28], rsi
                cmovb   rsi, [rsp+0A8h+arg_28]
                mov     eax, [rsi]
                mov     [rsi], eax
                jmp     short loc_140627099
; ---------------------------------------------------------------------------

loc_14062707A:                          ; CODE XREF: NtAdjustPrivilegesToken+75↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 20h

loc_140627080:                          ; CODE XREF: NtAdjustPrivilegesToken+AE↑j
                                        ; NtAdjustPrivilegesToken+B3↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140627045
; ---------------------------------------------------------------------------

loc_14062708D:                          ; CODE XREF: NtAdjustPrivilegesToken+6B↑j
                mov     rsi, 7FFFFFFF0000h
                jmp     short loc_140627045
; ---------------------------------------------------------------------------

loc_140627099:                          ; CODE XREF: NtAdjustPrivilegesToken+C0↑j
                                        ; NtAdjustPrivilegesToken+E8↑j
                jmp     short loc_1406270A0
;   } // starts at 140626FF8
; ---------------------------------------------------------------------------

loc_14062709B:                          ; DATA XREF: .rdata:000000014004F85C↑o
;   __except(1) // owned by 140626FF8
                jmp     loc_140627320
; ---------------------------------------------------------------------------

loc_1406270A0:                          ; CODE XREF: NtAdjustPrivilegesToken:loc_140627099↑j
                xor     esi, esi

loc_1406270A2:                          ; CODE XREF: NtAdjustPrivilegesToken+3C6↓j
                test    r15b, r15b
                jnz     short loc_1406270DE

loc_1406270A7:                          ; DATA XREF: .rdata:000000014004F86C↑o
;   __try { // __except at loc_1406270D1
                lea     rcx, [rdi+4]
                lea     rax, [rsp+0A8h+var_34]
                mov     [rsp+0A8h+var_68], rax
                lea     rax, [rsp+0A8h+var_40]
                mov     [rsp+0A8h+var_70], rax
                mov     r8b, r14b
                mov     edx, [rsp+0A8h+var_54]
                call    sub_140629E54
                mov     [rsp+0A8h+var_38], eax
                jmp     short loc_1406270D6
;   } // starts at 1406270A7
; ---------------------------------------------------------------------------

loc_1406270D1:                          ; DATA XREF: .rdata:000000014004F86C↑o
;   __except(1) // owned by 1406270A7
                jmp     loc_140627320
; ---------------------------------------------------------------------------

loc_1406270D6:                          ; CODE XREF: NtAdjustPrivilegesToken+13F↑j
                test    eax, eax
                js      loc_140627320

loc_1406270DE:                          ; CODE XREF: NtAdjustPrivilegesToken+115↑j
                                        ; NtAdjustPrivilegesToken+3B9↓j
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+0A8h+var_50], rsi
                mov     rax, rbx
                neg     rax
                sbb     edx, edx
                and     edx, 8
                add     edx, 20h ; ' '
                mov     [rsp+0A8h+var_80], rsi
                lea     rax, [rsp+0A8h+var_50]
                mov     [rsp+0A8h+var_88], rax
                mov     r9b, r14b
                mov     rcx, r12
                call    ObReferenceObjectByHandle
                mov     edi, eax
                test    eax, eax
                js      loc_1408007DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+0A8h+var_50]
                mov     dl, 1
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+0A8h+var_A8], 0
                lea     rax, [rsp+0A8h+arg_8]
                mov     [rsp+0A8h+var_68], rax
                lea     rax, [rsp+0A8h+var_44]
                mov     [rsp+0A8h+var_70], rax
                lea     rax, [rsp+0A8h+var_48]
                mov     [rsp+0A8h+var_78], rax
                mov     [rsp+0A8h+var_80], rbx
                mov     r12, [rsp+0A8h+var_40]
                mov     [rsp+0A8h+var_88], r12
                mov     r9d, [rsp+0A8h+var_54]
                mov     r8b, r15b
                xor     edx, edx
                mov     rdi, [rsp+0A8h+var_50]
                mov     rcx, rdi
                call    sub_140626B40
                test    rbx, rbx
                jz      short loc_1406271F4

loc_14062718D:                          ; DATA XREF: .rdata:000000014004F87C↑o
;   __try { // __except at loc_14062719D
                mov     rcx, [rsp+0A8h+arg_28]
                mov     eax, [rsp+0A8h+var_48]
                mov     [rcx], eax
                jmp     short loc_1406271E4
;   } // starts at 14062718D
; ---------------------------------------------------------------------------

loc_14062719D:                          ; DATA XREF: .rdata:000000014004F87C↑o
;   __except(1) // owned by 14062718D
                mov     ebx, eax
                lock or [rsp+0A8h+var_A8], 0
                mov     rcx, [rsp+0A8h+var_50]
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rsp+0A8h+var_50]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0A8h+var_40]
                test    rcx, rcx
                jz      short loc_1406271DD
                mov     dl, [rsp+0A8h+var_58]
                call    sub_140629F38

loc_1406271DD:                          ; CODE XREF: NtAdjustPrivilegesToken+242↑j
                mov     eax, ebx
                jmp     loc_140627320
; ---------------------------------------------------------------------------

loc_1406271E4:                          ; CODE XREF: NtAdjustPrivilegesToken+20B↑j
                test    rbx, rbx
                jz      short loc_1406271F4
                cmp     [rsp+0A8h+var_48], r13d
                ja      loc_1408007F3

loc_1406271F4:                          ; CODE XREF: NtAdjustPrivilegesToken+1FB↑j
                                        ; NtAdjustPrivilegesToken+257↑j
                                        ; DATA XREF: ...
;   __try { // __except at loc_14062724F
                lea     rax, [rsp+0A8h+arg_8]
                mov     [rsp+0A8h+var_68], rax
                lea     rax, [rsp+0A8h+var_44]
                mov     [rsp+0A8h+var_70], rax
                lea     rax, [rsp+0A8h+var_48]
                mov     [rsp+0A8h+var_78], rax
                mov     [rsp+0A8h+var_80], rbx
                mov     [rsp+0A8h+var_88], r12
                mov     r9d, [rsp+0A8h+var_54]
                mov     r8b, r15b
                mov     dl, 1
                mov     rcx, rdi
                call    sub_140626B40
                mov     [rsp+0A8h+var_38], eax
                test    rbx, rbx
                jz      short loc_14062724D
                mov     eax, [rsp+0A8h+var_44]
                mov     [rbx], eax
                test    eax, eax
                jnz     short loc_14062724D
                xor     eax, eax
                mov     [rbx+4], rax
                mov     [rbx+0Ch], eax

loc_14062724D:                          ; CODE XREF: NtAdjustPrivilegesToken+2A8↑j
                                        ; NtAdjustPrivilegesToken+2B2↑j
                jmp     short loc_1406272BA
;   } // starts at 1406271F4
; ---------------------------------------------------------------------------

loc_14062724F:                          ; DATA XREF: .rdata:000000014004F88C↑o
;   __except(1) // owned by 1406271F4
                mov     ebx, eax
                mov     r8, [rsp+0A8h+var_50]
                mov     rdx, cs:qword_14003AFE0
                mov     rcx, rdx
                lock xadd cs:qword_140C12E38, rcx
                add     rcx, rdx
                mov     [r8+38h], ecx
                shr     rcx, 20h
                mov     [r8+3Ch], ecx
                lock or [rsp+0A8h+var_A8], 0
                mov     rcx, [rsp+0A8h+var_50]
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rsp+0A8h+var_50]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0A8h+var_40]
                test    rcx, rcx
                jz      short loc_1406272B6
                mov     dl, [rsp+0A8h+var_58]
                call    sub_140629F38

loc_1406272B6:                          ; CODE XREF: NtAdjustPrivilegesToken+31B↑j
                mov     eax, ebx
                jmp     short loc_140627320
; ---------------------------------------------------------------------------

loc_1406272BA:                          ; CODE XREF: NtAdjustPrivilegesToken:loc_14062724D↑j
                cmp     [rsp+0A8h+arg_8], 0
                jz      short loc_1406272E4
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdi+38h], eax
                shr     rax, 20h
                mov     [rdi+3Ch], eax

loc_1406272E4:                          ; CODE XREF: NtAdjustPrivilegesToken+332↑j
                lock or [rsp+0A8h+var_A8], 0
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rsp+0A8h+var_50]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+0A8h+var_40]
                test    rcx, rcx
                jz      short loc_14062731C
                mov     dl, r14b
                call    sub_140629F38

loc_14062731C:                          ; CODE XREF: NtAdjustPrivilegesToken+382↑j
                mov     eax, [rsp+0A8h+var_38]

loc_140627320:                          ; CODE XREF: NtAdjustPrivilegesToken:loc_14062709B↑j
                                        ; NtAdjustPrivilegesToken:loc_1406270D1↑j ...
                lea     r11, [rsp+0A8h+var_28]
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
                align 2

loc_14062733E:                          ; CODE XREF: NtAdjustPrivilegesToken+62↑j
                mov     rbx, [rsp+0A8h+arg_20]
                test    r15b, r15b
                jnz     loc_1406270DE
                mov     eax, [r8]
                mov     [rsp+0A8h+var_54], eax
                jmp     loc_1406270A2
; } // starts at 140626F90
NtAdjustPrivilegesToken endp

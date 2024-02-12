NtMapViewOfSection proc near            ; DATA XREF: .rdata:000000014005BB94↑o
                                        ; .pdata:00000001400FF93C↑o ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = byte ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = byte ptr -0E8h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = dword ptr -0B0h
var_A8          = byte ptr -0A8h
var_90          = qword ptr -90h
var_60          = byte ptr -60h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h
arg_48          = dword ptr  50h

; FUNCTION CHUNK AT 0000000140808804 SIZE 00000016 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_18], r9
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rsi, r8
                mov     r15, rdx
                mov     r12, rcx
                xor     edx, edx
                mov     r8d, 80h
                lea     rcx, [rsp+138h+var_A8]
                call    memset
                xorps   xmm0, xmm0
                movups  [rsp+138h+var_E0], xmm0
                movups  [rsp+138h+var_D0], xmm0
                movups  [rsp+138h+var_C0], xmm0
                lea     rcx, [rsp+138h+arg_18]
                call    sub_14065807C
                test    eax, eax
                js      loc_140657DB3
                mov     rax, gs:188h
                movzx   eax, byte ptr [rax+232h]
                mov     [rsp+138h+var_E8], al
                lea     rcx, [rsp+138h+var_E0]
                mov     [rsp+138h+var_F0], rcx
                mov     [rsp+138h+var_F8], al
                mov     rbx, [rsp+138h+arg_18]
                mov     [rsp+138h+var_100], rbx
                mov     r13d, [rsp+138h+arg_48]
                mov     [rsp+138h+var_108], r13d
                mov     rdi, [rsp+138h+arg_28]
                mov     [rsp+138h+var_110], rdi
                mov     r14, [rsp+138h+arg_30]
                mov     [rsp+138h+var_118], r14
                mov     r9, rsi
                xor     r8d, r8d
                mov     rdx, r12
                mov     rcx, r15
                call    sub_140657E50
                test    eax, eax
                js      loc_140657E38
                mov     [rsp+138h+var_100], rbx
                mov     [rsp+138h+var_108], r13d
                mov     r15d, [rsp+138h+arg_40]
                mov     dword ptr [rsp+138h+var_110], r15d
                mov     rax, qword ptr [rsp+138h+var_E0+8]
                mov     [rsp+138h+var_118], rax
                mov     r9, qword ptr [rsp+138h+var_E0]
                mov     r8, qword ptr [rsp+138h+var_C0+8]
                mov     rdx, qword ptr [rsp+138h+var_C0]
                lea     rcx, [rsp+138h+var_A8]
                call    sub_140658650
                mov     ebx, eax
                test    eax, eax
                js      loc_140808804
                xor     r12d, r12d
                mov     [rsp+138h+var_108], r12d
                mov     eax, [rsp+138h+arg_38]
                mov     dword ptr [rsp+138h+var_110], eax
                lea     rax, [rsp+138h+var_D0]
                mov     [rsp+138h+var_118], rax
                mov     r9, [rsp+138h+arg_20]
                lea     r8, [rsp+138h+var_E0]
                lea     rdx, [rsp+138h+var_A8]
                mov     rcx, qword ptr [rsp+138h+var_C0]
                call    sub_1406580D0
                mov     ebx, eax
                mov     [rsp+138h+var_B0], eax
                test    eax, eax
                js      loc_140657E22
                test    [rsp+138h+var_60], 4
                jnz     short loc_140657DD1

loc_140657D54:                          ; CODE XREF: NtMapViewOfSection+212↓j
                mov     rax, qword ptr [rsp+138h+var_C0]
                mov     ecx, [rax+38h]
                test    cl, 20h
                jnz     short loc_140657D6C
                test    byte ptr [rsp+138h+var_D0+8], 2
                jnz     loc_140657DF7

loc_140657D6C:                          ; CODE XREF: NtMapViewOfSection+17F↑j
                                        ; NtMapViewOfSection+23D↓j
                                        ; DATA XREF: ...
;   __try { // __except at loc_140657D8E
                mov     rax, [rsp+138h+var_90]
                mov     [r14], rax
                mov     rax, qword ptr [rsp+138h+var_E0]
                mov     [rsi], rax
                test    rdi, rdi
                jz      short loc_140657D8C
                mov     rax, qword ptr [rsp+138h+var_D0]
                mov     [rdi], rax

loc_140657D8C:                          ; CODE XREF: NtMapViewOfSection+1A2↑j
                jmp     short loc_140657D95
;   } // starts at 140657D6C
; ---------------------------------------------------------------------------

loc_140657D8E:                          ; DATA XREF: .rdata:000000014005BB80↑o
;   __except(1) // owned by 140657D6C
                mov     ebx, [rsp+138h+var_B0]

loc_140657D95:                          ; CODE XREF: NtMapViewOfSection:loc_140657D8C↑j
                                        ; NtMapViewOfSection+253↓j ...
                mov     rcx, qword ptr [rsp+138h+var_C0]
                call    PsDereferenceSiloContext
                mov     edx, 77566D4Dh
                mov     rcx, qword ptr [rsp+138h+var_C0+8]
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx

loc_140657DB3:                          ; CODE XREF: NtMapViewOfSection+5E↑j
                                        ; NtMapViewOfSection+25E↓j
                lea     r11, [rsp+138h+var_28]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140657DD1:                          ; CODE XREF: NtMapViewOfSection+172↑j
                mov     [rsp+138h+var_108], r12d
                mov     dword ptr [rsp+138h+var_110], r12d
                mov     r8, qword ptr [rsp+138h+var_E0]
                mov     rdx, qword ptr [rsp+138h+var_C0]
                mov     rcx, qword ptr [rsp+138h+var_C0+8]
                call    sub_14067D0A4
                jmp     loc_140657D54
; ---------------------------------------------------------------------------

loc_140657DF7:                          ; CODE XREF: NtMapViewOfSection+186↑j
                mov     dword ptr [rsp+138h+var_110], r13d
                mov     dword ptr [rsp+138h+var_118], r15d
                mov     r9, qword ptr [rsp+138h+var_E0+8]
                mov     r8, qword ptr [rsp+138h+var_E0]
                movzx   edx, [rsp+138h+var_E8]
                mov     rcx, qword ptr [rsp+138h+var_C0+8]
                call    sub_1406ABB14
                jmp     loc_140657D6C
; ---------------------------------------------------------------------------

loc_140657E22:                          ; CODE XREF: NtMapViewOfSection+164↑j
                cmp     qword ptr [rsp+138h+var_E0], r12

loc_140657E27:                          ; CODE XREF: NtMapViewOfSection+1B0C2A↓j
                jz      loc_14080880F
                inc     cs:dword_140C4E664
                jmp     loc_140657D95
; ---------------------------------------------------------------------------

loc_140657E38:                          ; CODE XREF: NtMapViewOfSection+CD↑j
                inc     cs:dword_140C4E660
                jmp     loc_140657DB3
; } // starts at 140657BE0
NtMapViewOfSection endp

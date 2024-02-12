NtReadFile      proc near               ; CODE XREF: sub_14059DAF8+4D↑p
                                        ; sub_140698D38+20A↓p
                                        ; DATA XREF: ...

var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = byte ptr -0A8h
var_A7          = byte ptr -0A7h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407E5610 SIZE 0000001D BYTES

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
                sub     rsp, 0D0h
                mov     rdi, r9
                mov     r12, rdx
                mov     rbx, rcx
                mov     eax, cs:dword_140C0F1DC
                cmp     eax, 1
                jz      loc_14060AB6E
                test    eax, eax
                jz      short loc_14060A3AD
                call    sub_1405CD304
                movzx   eax, al
                test    eax, eax
                jnz     loc_14060AB6E

loc_14060A3AD:                          ; CODE XREF: NtReadFile+3B↑j
                xor     esi, esi
                mov     [rsp+108h+var_A0], rsi
                mov     [rsp+108h+var_88], rsi
                mov     [rsp+108h+var_90], esi
                mov     [rsp+108h+var_98], rsi
                mov     rax, gs:188h
                mov     [rsp+108h+var_48], rax
                movzx   r14d, byte ptr [rax+232h]
                mov     [rsp+108h+var_A8], r14b
                mov     [rsp+108h+var_E8], rsi
                lea     r9, [rsp+108h+var_A0]
                movzx   r8d, r14b
                lea     edx, [rsi+1]
                mov     rcx, rbx
                call    sub_1402433F0
                test    eax, eax
                js      loc_14060AC08
                mov     rbx, [rsp+108h+var_A0]
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                mov     [rsp+108h+var_80], rax
                test    r14b, r14b
                jz      loc_14060A5CE
                mov     [rsp+108h+var_78], esi

loc_14060A429:                          ; DATA XREF: .rdata:000000014004AE38↑o
;   __try { // __except at loc_14060A5B8
                mov     rcx, [rsp+108h+arg_20]
                mov     r14, 7FFFFFFF0000h
                cmp     rcx, r14
                cmovnb  rcx, r14
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rbx, [rsp+108h+var_A0]
                lea     r15, [rbx+50h]
                movzx   r8d, byte ptr [r15]
                and     r8b, 2
                lea     rdx, [rsp+108h+arg_10]
                lea     rcx, [rsp+108h+arg_20]
                call    sub_140236180
                mov     r13d, [rsp+108h+arg_30]
                mov     edx, r13d
                lea     r8d, [rsi+1]
                mov     rcx, [rsp+108h+arg_28]
                call    ProbeForWrite
                cmp     [rbx+0B0h], rsi
                jz      short loc_14060A4B1
                test    [rsp+108h+arg_10], 0FFFFFFFFFFFFFFFEh
                jz      short loc_14060A4B1
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A4B1:                          ; CODE XREF: NtReadFile+12F↑j
                                        ; NtReadFile+13D↑j
                mov     rdi, [rsp+108h+arg_38]
                test    rdi, rdi
                jz      short loc_14060A4E2
                test    dil, 3
                jnz     loc_14060AC1C
                mov     rax, r14
                cmp     rdi, r14
                cmovb   rax, rdi
                movzx   eax, byte ptr [rax]
                mov     rax, [rdi]
                mov     [rsp+108h+var_98], rax
                mov     rbx, [rsp+108h+var_A0]

loc_14060A4E2:                          ; CODE XREF: NtReadFile+15C↑j
                mov     eax, [r15]
                test    al, 8
                jz      loc_14060A590
                mov     r11, [rsp+108h+var_80]
                movzx   r8d, word ptr [r11+130h]
                test    r8w, r8w
                jz      short loc_14060A514
                mov     ecx, r8d
                mov     r9d, r8d
                lea     eax, [r8-1]
                test    r13d, eax
                jnz     short loc_14060A52F
                jmp     short loc_14060A516
; ---------------------------------------------------------------------------

loc_14060A514:                          ; CODE XREF: NtReadFile+1A1↑j
                mov     ecx, esi

loc_14060A516:                          ; CODE XREF: NtReadFile+1B2↑j
                mov     r9d, ecx
                mov     eax, [r11+98h]
                mov     r10, [rsp+108h+arg_28]
                test    r10, rax
                jz      short loc_14060A56A
                jmp     short loc_14060A537
; ---------------------------------------------------------------------------

loc_14060A52F:                          ; CODE XREF: NtReadFile+1B0↑j
                mov     r10, [rsp+108h+arg_28]

loc_14060A537:                          ; CODE XREF: NtReadFile+1CD↑j
                test    r8w, r8w
                jz      short loc_14060A549
                xor     edx, edx
                mov     eax, r13d
                div     r9d
                test    edx, edx
                jnz     short loc_14060A558

loc_14060A549:                          ; CODE XREF: NtReadFile+1DB↑j
                mov     ecx, r9d
                mov     eax, [r11+98h]
                test    r10, rax
                jz      short loc_14060A56A

loc_14060A558:                          ; CODE XREF: NtReadFile+1E7↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A56A:                          ; CODE XREF: NtReadFile+1CB↑j
                                        ; NtReadFile+1F6↑j
                test    rdi, rdi
                jz      short loc_14060A590
                test    r8w, r8w
                jz      short loc_14060A590
                lea     eax, [rcx-1]
                test    dword ptr [rsp+108h+var_98], eax
                jz      short loc_14060A590
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A590:                          ; CODE XREF: NtReadFile+187↑j
                                        ; NtReadFile+20D↑j ...
                mov     rax, [rsp+108h+arg_40]
                test    rax, rax
                jz      short loc_14060A5B0
                cmp     rax, r14
                cmovb   r14, rax
                mov     eax, [r14]
                mov     [rsp+108h+var_90], eax
                mov     rbx, [rsp+108h+var_A0]

loc_14060A5B0:                          ; CODE XREF: NtReadFile+23B↑j
                movzx   r14d, [rsp+108h+var_A8]
                jmp     short loc_14060A5FE
;   } // starts at 14060A429
; ---------------------------------------------------------------------------

loc_14060A5B8:                          ; DATA XREF: .rdata:000000014004AE38↑o
                                        ; .rdata:000000014004AE78↑o
;   __except(loc_1407E5610) // owned by 14060A429
;   __except(loc_1407E5610) // owned by 14060AC1C
                mov     rcx, [rsp+108h+var_A0]
                call    PsDereferenceSiloContext
                mov     eax, [rsp+108h+var_78]
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A5CE:                          ; CODE XREF: NtReadFile+BC↑j
                mov     rdi, [rsp+108h+arg_38]
                test    rdi, rdi
                jz      short loc_14060A5E3
                mov     rax, [rdi]
                mov     [rsp+108h+var_98], rax

loc_14060A5E3:                          ; CODE XREF: NtReadFile+279↑j
                mov     rax, [rsp+108h+arg_40]
                mov     r13d, [rsp+108h+arg_30]
                test    rax, rax
                jz      short loc_14060A5FE
                mov     eax, [rax]
                mov     [rsp+108h+var_90], eax

loc_14060A5FE:                          ; CODE XREF: NtReadFile+256↑j
                                        ; NtReadFile+296↑j
                test    r12, r12
                jz      short loc_14060A666
                mov     r8, cs:ExEventObjectType
                mov     [rsp+108h+var_70], rsi
                mov     [rsp+108h+var_E0], rsi
                lea     rax, [rsp+108h+var_70]
                mov     [rsp+108h+var_E8], rax
                movzx   r9d, r14b
                mov     edx, 2
                mov     rcx, r12
                call    ObReferenceObjectByHandle
                mov     r15d, eax
                mov     r14, [rsp+108h+var_70]
                mov     [rsp+108h+var_88], r14
                test    eax, eax
                jns     short loc_14060A65C
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, r15d
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A65C:                          ; CODE XREF: NtReadFile+2EA↑j
                mov     rcx, r14
                call    KeResetEvent
                jmp     short loc_14060A66E
; ---------------------------------------------------------------------------

loc_14060A666:                          ; CODE XREF: NtReadFile+2A1↑j
                mov     r14, [rsp+108h+var_88]

loc_14060A66E:                          ; CODE XREF: NtReadFile+304↑j
                mov     rax, [rsp+108h+var_80]
                mov     rax, [rax+8]
                mov     rax, [rax+50h]
                mov     [rsp+108h+var_50], rax
                mov     r15d, [rbx+50h]
                test    r15b, 2
                jz      loc_14060A8E7
                shr     r15d, 2
                and     r15b, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_A0]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+108h+var_A7], 0
                mov     ecx, 1
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_14060A6EE
                test    rax, rax
                jz      short loc_14060A6DC
                or      byte ptr [rax+1Ah], 1

loc_14060A6DC:                          ; CODE XREF: NtReadFile+376↑j
                mov     rbx, [rsp+108h+var_A0]
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     r14d, esi
                jmp     short loc_14060A714
; ---------------------------------------------------------------------------

loc_14060A6EE:                          ; CODE XREF: NtReadFile+371↑j
                lea     rcx, [rsp+108h+var_A7]
                mov     [rsp+108h+var_E8], rcx
                mov     r9, rax
                movzx   r8d, r15b
                movzx   edx, [rsp+108h+var_A8]
                mov     rbx, [rsp+108h+var_A0]
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     r14d, eax

loc_14060A714:                          ; CODE XREF: NtReadFile+38C↑j
                cmp     [rsp+108h+var_A7], 0
                jz      short loc_14060A73D
                mov     rcx, [rsp+108h+var_88]
                test    rcx, rcx
                jz      short loc_14060A72D
                call    PsDereferenceSiloContext

loc_14060A72D:                          ; CODE XREF: NtReadFile+3C6↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, r14d
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A73D:                          ; CODE XREF: NtReadFile+3B9↑j
                test    rdi, rdi
                jz      short loc_14060A750
                cmp     dword ptr [rsp+108h+var_98], 0FFFFFFFEh
                jnz     short loc_14060A759
                cmp     dword ptr [rsp+108h+var_98+4], 0FFFFFFFFh
                jnz     short loc_14060A759

loc_14060A750:                          ; CODE XREF: NtReadFile+3E0↑j
                mov     rax, [rbx+68h]
                mov     [rsp+108h+var_98], rax

loc_14060A759:                          ; CODE XREF: NtReadFile+3E7↑j
                                        ; NtReadFile+3EE↑j
                cmp     qword ptr [rbx+30h], 0
                jz      loc_14060A8DA
                xorps   xmm0, xmm0
                movups  [rsp+108h+var_68], xmm0
                mov     r14, [rsp+108h+var_50]
                mov     r14, [r14+10h]
                mov     rax, [rsp+108h+var_98]
                shr     rax, 20h
                test    eax, eax
                jns     short loc_14060A7B4
                mov     rcx, [rsp+108h+var_88]
                test    rcx, rcx
                jz      short loc_14060A79A
                call    PsDereferenceSiloContext

loc_14060A79A:                          ; CODE XREF: NtReadFile+433↑j
                                        ; NtReadFile+5D4↓j
                mov     rcx, rbx
                call    sub_1402481D0

loc_14060A7A2:                          ; CODE XREF: NtReadFile+5CE↓j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A7B4:                          ; CODE XREF: NtReadFile+426↑j
                mov     eax, cs:dword_140C2A6E0
                test    al, 10h
                jz      short loc_14060A7C8
                call    sub_1409CBA9C
                mov     rdi, rax
                jmp     short loc_14060A7CB
; ---------------------------------------------------------------------------

loc_14060A7C8:                          ; CODE XREF: NtReadFile+45C↑j
                mov     rdi, rsi

loc_14060A7CB:                          ; CODE XREF: NtReadFile+466↑j
                mov     rax, [rsp+108h+var_80]
                mov     [rsp+108h+var_D0], rax
                lea     rax, [rsp+108h+var_68]
                mov     [rsp+108h+var_D8], rax
                mov     rax, [rsp+108h+arg_28]
                mov     [rsp+108h+var_E0], rax
                mov     eax, [rsp+108h+var_90]
                mov     dword ptr [rsp+108h+var_E8], eax
                mov     r9b, 1
                mov     r8d, r13d
                lea     rdx, [rsp+108h+var_98]
                mov     rcx, rbx
                mov     rax, r14
                call    sub_1404079D0
                movzx   r15d, al
                test    rdi, rdi
                jz      short loc_14060A824
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1409CB9C4

loc_14060A824:                          ; CODE XREF: NtReadFile+4B7↑j
                test    r15b, r15b
                jz      loc_14060A8DA
                mov     eax, dword ptr [rsp+108h+var_68]
                test    eax, eax
                jz      short loc_14060A84A
                cmp     eax, 80000005h
                jz      short loc_14060A84A
                cmp     eax, 0C0000011h
                jnz     loc_14060A8DA

loc_14060A84A:                          ; CODE XREF: NtReadFile+4D6↑j
                                        ; NtReadFile+4DD↑j
                call    sub_14021590C
                xor     edx, edx
                mov     ecx, dword ptr [rsp+108h+var_68+8]
                call    sub_1402158E0
                nop

loc_14060A85E:                          ; DATA XREF: .rdata:000000014004AE48↑o
;   __try { // __except at loc_14060A873
                mov     rax, [rsp+108h+arg_20]
                movups  xmm0, [rsp+108h+var_68]
                movups  xmmword ptr [rax], xmm0
                jmp     short loc_14060A893
;   } // starts at 14060A85E
; ---------------------------------------------------------------------------

loc_14060A873:                          ; DATA XREF: .rdata:000000014004AE48↑o
;   __except(1) // owned by 14060A85E
                mov     dword ptr [rsp+108h+var_68], eax
                mov     qword ptr [rsp+108h+var_68+8], 0
                mov     r12, [rsp+108h+arg_8]
                mov     rbx, [rsp+108h+var_A0]

loc_14060A893:                          ; CODE XREF: NtReadFile+511↑j
                test    r12, r12
                jz      short loc_14060A8BE
                mov     rdi, [rsp+108h+var_88]
                test    dword ptr [rbx+50h], 8000000h
                jnz     short loc_14060A8B6
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    KeSetEvent

loc_14060A8B6:                          ; CODE XREF: NtReadFile+547↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14060A8BE:                          ; CODE XREF: NtReadFile+536↑j
                mov     rcx, rbx
                call    sub_1402481D0
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, dword ptr [rsp+108h+var_68]
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A8DA:                          ; CODE XREF: NtReadFile+3FE↑j
                                        ; NtReadFile+4C7↑j ...
                mov     r15b, 1
                mov     r14, [rsp+108h+var_88]
                jmp     short loc_14060A917
; ---------------------------------------------------------------------------

loc_14060A8E7:                          ; CODE XREF: NtReadFile+32E↑j
                test    rdi, rdi
                jnz     short loc_14060A914
                test    r15d, 280h
                jnz     short loc_14060A914
                test    r14, r14
                jz      short loc_14060A902
                mov     rcx, r14
                call    PsDereferenceSiloContext

loc_14060A902:                          ; CODE XREF: NtReadFile+598↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000000Dh
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A914:                          ; CODE XREF: NtReadFile+58A↑j
                                        ; NtReadFile+593↑j
                xor     r15b, r15b

loc_14060A917:                          ; CODE XREF: NtReadFile+585↑j
                cmp     dword ptr [rsp+108h+var_98+4], 0
                jge     short loc_14060A939
                test    r14, r14
                jz      short loc_14060A92B
                mov     rcx, r14
                call    PsDereferenceSiloContext

loc_14060A92B:                          ; CODE XREF: NtReadFile+5C1↑j
                test    r15b, r15b
                jz      loc_14060A7A2
                jmp     loc_14060A79A
; ---------------------------------------------------------------------------

loc_14060A939:                          ; CODE XREF: NtReadFile+5BC↑j
                mov     rcx, rbx
                call    sub_1402360C0
                mov     r9, [rsp+108h]
                movzx   r8d, r15b
                xor     r8b, 1
                mov     rax, [rsp+108h+var_80]
                movzx   edx, byte ptr [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rdi, rax
                mov     [rsp+108h+var_70], rax
                test    rax, rax
                jnz     short loc_14060A98A
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060A98A:                          ; CODE XREF: NtReadFile+613↑j
                mov     [rax+0C0h], rbx
                mov     rax, [rsp+108h+var_48]
                mov     [rdi+98h], rax
                mov     [rdi+0A0h], rsi
                movzx   eax, [rsp+108h+var_A8]
                mov     [rdi+40h], al
                mov     byte ptr [rdi+41h], 0
                mov     byte ptr [rdi+44h], 0
                mov     [rdi+68h], rsi
                mov     [rdi+50h], r14
                mov     r12, [rsp+108h+arg_20]
                mov     [rdi+48h], r12
                mov     rax, [rsp+108h+arg_10]
                mov     [rdi+58h], rax
                mov     rax, [rsp+108h+arg_18]
                mov     [rdi+60h], rax
                mov     r14, [rdi+0B8h]
                mov     dword ptr [r14-48h], 3
                mov     [r14-18h], rbx
                mov     [rdi+18h], rsi
                mov     [rdi+8], rsi
                mov     rax, [rsp+108h+var_80]
                mov     eax, [rax+30h]
                test    al, 4
                jz      short loc_14060AA7C
                test    r13d, r13d
                jz      short loc_14060AA6F

loc_14060AA12:                          ; DATA XREF: .rdata:000000014004AE58↑o
;   __try { // __except at loc_14060AA3C
                mov     edx, r13d
                mov     ecx, 204h
                call    sub_140348A98
                mov     [rdi+18h], rax
;   } // starts at 14060AA12

loc_14060AA23:                          ; DATA XREF: .rdata:000000014004AE58↑o
                mov     rax, [rsp+108h+arg_28]
                mov     [rdi+70h], rax
                mov     eax, 70h ; 'p'
                mov     [rdi+10h], eax
                jmp     loc_14060AB01
; ---------------------------------------------------------------------------

loc_14060AA3C:                          ; DATA XREF: .rdata:000000014004AE58↑o
;   __except(1) // owned by 14060AA12
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_A0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+108h+var_E8], dl
                xor     r9d, r9d
                mov     r8, [rsp+108h+var_88]
                mov     rdx, [rsp+108h+var_70]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060AA6F:                          ; CODE XREF: NtReadFile+6B0↑j
                mov     eax, 50h ; 'P'
                mov     [rdi+10h], eax
                jmp     loc_14060AB01
; ---------------------------------------------------------------------------

loc_14060AA7C:                          ; CODE XREF: NtReadFile+6AB↑j
                and     eax, 10h
                mov     [rdi+10h], esi
                jz      short loc_14060AAF5
                test    r13d, r13d
                jz      short loc_14060AB01

loc_14060AA89:                          ; DATA XREF: .rdata:000000014004AE68↑o
;   __try { // __except at loc_14060AAC2
                mov     [rsp+108h+var_E8], rdi
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, r13d
                mov     rcx, [rsp+108h+arg_28]
                call    IoAllocateMdl
                test    rax, rax
                jz      loc_14060AC22
                mov     r8d, 1
                movzx   edx, [rsp+108h+var_A8]
                mov     rcx, rax
                call    MmProbeAndLockPages
                jmp     short loc_14060AB01
;   } // starts at 14060AA89
; ---------------------------------------------------------------------------

loc_14060AAC2:                          ; DATA XREF: .rdata:000000014004AE68↑o
                                        ; .rdata:000000014004AE88↑o
;   __except(1) // owned by 14060AA89
;   __except(1) // owned by 14060AC22
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_A0]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+108h+var_E8], dl
                xor     r9d, r9d
                mov     r8, [rsp+108h+var_88]
                mov     rdx, [rsp+108h+var_70]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060AAF5:                          ; CODE XREF: NtReadFile+722↑j
                mov     rax, [rsp+108h+arg_28]
                mov     [rdi+70h], rax

loc_14060AB01:                          ; CODE XREF: NtReadFile+6D7↑j
                                        ; NtReadFile+717↑j ...
                mov     eax, [rbx+50h]
                and     eax, 8
                or      eax, 4800h
                shr     eax, 3
                or      [rdi+10h], eax
                mov     [r14-40h], r13d
                mov     eax, [rsp+108h+var_90]
                mov     [r14-38h], eax
                mov     rax, [rsp+108h+var_98]
                mov     [r14-30h], rax
                mov     edx, 10h
                mov     rcx, rbx
                call    sub_14021592C
                test    al, al
                jz      short loc_14060AB41
                mov     eax, [r12+8]
                mov     [r14-34h], eax

loc_14060AB41:                          ; CODE XREF: NtReadFile+7D6↑j
                mov     dword ptr [rsp+108h+var_D8], esi
                mov     byte ptr [rsp+108h+var_E0], r15b
                movzx   eax, [rsp+108h+var_A8]
                mov     byte ptr [rsp+108h+var_E8], al
                mov     r9b, 1
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, [rsp+108h+var_80]
                call    sub_140643F60
                jmp     loc_14060AC08
; ---------------------------------------------------------------------------

loc_14060AB6E:                          ; CODE XREF: NtReadFile+33↑j
                                        ; NtReadFile+47↑j
                xor     esi, esi
                mov     [rsp+108h+var_58], rsi
                mov     rax, gs:188h
                movzx   r8d, byte ptr [rax+232h]
                mov     [rsp+108h+var_E8], rsi
                lea     r9, [rsp+108h+var_58]
                lea     edx, [rsi+1]
                mov     rcx, rbx
                call    sub_1402433F0
                test    eax, eax
                js      short loc_14060AC08
                mov     [rsp+108h+var_B8], rsi
                mov     [rsp+108h+var_C0], esi
                mov     rax, [rsp+108h+arg_40]
                mov     [rsp+108h+var_C8], rax
                mov     rax, [rsp+108h+arg_38]
                mov     [rsp+108h+var_D0], rax
                mov     eax, [rsp+108h+arg_30]
                mov     dword ptr [rsp+108h+var_D8], eax
                mov     rax, [rsp+108h+arg_28]
                mov     [rsp+108h+var_E0], rax
                mov     rax, [rsp+108h+arg_20]
                mov     [rsp+108h+var_E8], rax
                mov     r9, rdi
                mov     r8, [rsp+108h+arg_10]
                mov     rdx, r12
                mov     rcx, [rsp+108h+var_58]
                call    sub_1405CD8DC

loc_14060AC08:                          ; CODE XREF: NtReadFile+9E↑j
                                        ; NtReadFile+14C↑j ...
                add     rsp, 0D0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14060AC1C:                          ; CODE XREF: NtReadFile+162↑j
                                        ; DATA XREF: .rdata:000000014004AE78↑o
;   __try { // __except at loc_14060A5B8
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 14060AC1C

loc_14060AC22:                          ; CODE XREF: NtReadFile+747↑j
                                        ; DATA XREF: .rdata:000000014004AE78↑o ...
;   __try { // __except at loc_14060AAC2
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 14060AC22
byte_14060AC2D  db 0CCh                 ; DATA XREF: .rdata:000000014004AE88↑o
; } // starts at 14060A360
NtReadFile      endp

algn_14060AC2E:                         ; DATA XREF: .pdata:00000001400FD1D0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14060AC40   proc near               ; DATA XREF: .rdata:000000014004AEEC↑o
                                        ; .pdata:00000001400FD1DC↑o ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = byte ptr  48h

; FUNCTION CHUNK AT 00000001407FBB32 SIZE 00000169 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                mov     [rsp+arg_10], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r13, r9
                mov     r15, r8
                mov     esi, edx
                mov     [rsp+98h+var_58], 0
                movzx   eax, word ptr [rcx]
                cmp     ax, 3
                jz      loc_14060AEF3
                mov     r14, [rcx+8]

loc_14060AC7E:                          ; CODE XREF: sub_14060AC40+2B6↓j
                xor     ebx, ebx
                cmp     ax, 3
                cmovnz  rbx, rcx
                test    rbx, rbx
                jz      loc_14060AEFB
                cmp     word ptr [rbx+58h], 0
                jz      loc_1407FBB32

loc_14060AC9C:                          ; CODE XREF: sub_14060AC40+1F0EFD↓j
                test    dword ptr [rbx+50h], 800h
                jnz     loc_14060AEFB
                cmp     esi, 2
                jz      loc_1407FBC94
                xorps   xmm0, xmm0
                movups  [rsp+98h+var_50], xmm0
                xorps   xmm1, xmm1
                xor     eax, eax
                movups  [rsp+98h+var_40], xmm1
                mov     [rsp+98h+var_30], rax
                mov     r14, gs:188h
                movzx   edi, byte ptr [r14+232h]
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     eax, [rbx+50h]
                test    al, 2
                jz      loc_14060AEAB
                test    al, 4
                jnz     loc_1407FBB42
                xor     r15b, r15b

loc_14060ACF8:                          ; CODE XREF: sub_14060AC40+1F0F05↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     r9, rax
                mov     [rsp+98h+arg_0], 0
                mov     eax, 1
                xchg    eax, [rbx+74h]
                test    eax, eax
                jnz     loc_14060B0A2
                test    r9, r9
                jz      short loc_14060AD3E
                or      byte ptr [r9+1Ah], 1

loc_14060AD3E:                          ; CODE XREF: sub_14060AC40+F7↑j
                mov     rcx, rbx
                call    ObfReferenceObject
                xor     edi, edi

loc_14060AD48:                          ; CODE XREF: sub_14060AC40+481↓j
                cmp     [rsp+98h+arg_0], 0
                jnz     loc_14060B095
                mov     r12b, 1

loc_14060AD59:                          ; CODE XREF: sub_14060AC40+27F↓j
                test    dword ptr [rbx+50h], 4000000h
                jnz     short loc_14060AD6E
                lea     rcx, [rbx+98h]
                call    KeResetEvent

loc_14060AD6E:                          ; CODE XREF: sub_14060AC40+120↑j
                mov     rcx, rbx
                call    IoGetRelatedDeviceObject
                mov     r15, rax
                mov     r9, [rsp+98h]
                movzx   r8d, r12b
                xor     r8b, 1
                movzx   edx, byte ptr [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rdi, rax
                test    rax, rax
                jz      loc_1407FBB4A
                mov     [rax+0C0h], rbx
                mov     [rax+98h], r14
                movzx   eax, [rsp+98h+arg_40]
                mov     [rdi+40h], al
                mov     eax, [rbx+50h]
                test    al, 2
                jz      loc_14060AEC4
                or      byte ptr [rdi+47h], 2
                xor     eax, eax

loc_14060ADCB:                          ; CODE XREF: sub_14060AC40+290↓j
                mov     [rdi+50h], rax
                lea     rax, [rsp+98h+var_50]
                mov     [rdi+48h], rax
                mov     qword ptr [rdi+58h], 0
                mov     rcx, [rdi+0B8h]
                mov     rax, [rsp+98h+arg_10]
                mov     r14, [rsp+98h+arg_20]
                cmp     esi, 1
                jnz     loc_14060AEE1
                mov     byte ptr [rcx-48h], 14h
                mov     eax, [rax]
                mov     [rcx-40h], eax
                mov     eax, [r14]
                mov     [rcx-38h], eax
                mov     [rdi+70h], r13

loc_14060AE13:                          ; CODE XREF: sub_14060AC40+2AE↓j
                mov     [rcx-18h], rbx
                mov     rcx, rdi
                call    sub_140245C90
                mov     rax, gs:188h
                inc     qword ptr [rax+390h]
                inc     dword ptr gs:2EE4h
                mov     rdx, rdi
                mov     rcx, r15
                call    IofCallDriver
                mov     edi, eax
                mov     [rsp+98h+var_68], eax
                test    r12b, r12b
                jz      loc_14060AED5
                cmp     eax, 103h
                jz      loc_1407FBB5E

loc_14060AE5C:                          ; CODE XREF: sub_14060AC40+1F0F42↓j
                mov     rcx, rbx
                call    sub_1402481D0

loc_14060AE64:                          ; CODE XREF: sub_14060AC40+29A↓j
                                        ; sub_14060AC40+1F0F6A↓j
                cmp     edi, 0C0000010h
                jz      loc_1407FBBAF
                cmp     esi, 1
                jnz     short loc_14060AE8E
                mov     eax, 0C0000023h
                cmp     edi, 80000005h
                cmovz   edi, eax

loc_14060AE83:                          ; DATA XREF: .rdata:000000014004AEC8↑o
;   __try { // __except at loc_14060AE8C
                mov     eax, dword ptr [rsp+98h+var_50+8]
                mov     [r14], eax
                jmp     short loc_14060AE8E
;   } // starts at 14060AE83
; ---------------------------------------------------------------------------

loc_14060AE8C:                          ; DATA XREF: .rdata:000000014004AEC8↑o
;   __except(1) // owned by 14060AE83
                mov     edi, eax

loc_14060AE8E:                          ; CODE XREF: sub_14060AC40+233↑j
                                        ; sub_14060AC40+24A↑j ...
                mov     eax, edi

loc_14060AE90:                          ; CODE XREF: sub_14060AC40+1F0F19↓j
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
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

loc_14060AEAB:                          ; CODE XREF: sub_14060AC40+A7↑j
                xor     r8d, r8d
                lea     edx, [r8+1]
                lea     rcx, [rsp+98h+var_40]
                call    KeInitializeEvent
                xor     r12b, r12b
                jmp     loc_14060AD59
; ---------------------------------------------------------------------------

loc_14060AEC4:                          ; CODE XREF: sub_14060AC40+17F↑j
                mov     dword ptr [rdi+10h], 4
                lea     rax, [rsp+98h+var_40]
                jmp     loc_14060ADCB
; ---------------------------------------------------------------------------

loc_14060AED5:                          ; CODE XREF: sub_14060AC40+20B↑j
                cmp     eax, 103h
                jnz     short loc_14060AE64
                jmp     loc_1407FBB87
; ---------------------------------------------------------------------------

loc_14060AEE1:                          ; CODE XREF: sub_14060AC40+1BA↑j
                mov     byte ptr [rcx-48h], 15h
                mov     eax, [rax]
                mov     [rcx-40h], eax
                mov     [rcx-38h], r13
                jmp     loc_14060AE13
; ---------------------------------------------------------------------------

loc_14060AEF3:                          ; CODE XREF: sub_14060AC40+34↑j
                mov     r14, rcx
                jmp     loc_14060AC7E
; ---------------------------------------------------------------------------

loc_14060AEFB:                          ; CODE XREF: sub_14060AC40+4B↑j
                                        ; sub_14060AC40+63↑j ...
                cmp     esi, 3
                jnz     loc_14060AF8F
                xor     edi, edi
                test    rbx, rbx
                jnz     loc_1407FBC6F

loc_14060AF0F:                          ; CODE XREF: sub_14060AC40+1F103C↓j
                mov     r8d, 1
                lea     rdx, [rsp+98h+var_58]
                mov     rcx, r13
                call    ObLogSecurityDescriptor
                mov     edi, eax
                mov     [rsp+98h+var_68], eax
                test    eax, eax
                js      loc_14060AE8E
                xor     edx, edx
                mov     rcx, r13
                call    ExFreePoolWithTag
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C45920
                call    ExAcquireResourceExclusiveLite
                cmp     qword ptr [r14+110h], 0
                jnz     loc_1407FBC81

loc_14060AF66:                          ; CODE XREF: sub_14060AC40+1F104F↓j
                mov     rax, [rsp+98h+var_58]
                mov     [r14+110h], rax
                lea     rcx, unk_140C45920
                call    ExReleaseResourceLite
                mov     rcx, rbx
                call    sub_14021E1F0
                mov     edi, [rsp+98h+var_68]
                jmp     loc_14060AE8E
; ---------------------------------------------------------------------------

loc_14060AF8F:                          ; CODE XREF: sub_14060AC40+2BE↑j
                test    esi, esi
                jz      loc_14060B033
                cmp     esi, 1
                jnz     loc_1407FBC94
                mov     rdi, gs:188h
                dec     word ptr [rdi+1E4h]
                movzx   edx, sil
                lea     rcx, unk_140C45920
                call    ExAcquireResourceSharedLite
                mov     rbx, [r14+110h]
                mov     [rsp+98h+var_60], rbx
                test    rbx, rbx
                jz      short loc_14060AFE8
                mov     eax, 1
                lock xadd [rbx-18h], rax
                test    rax, rax
                jg      short loc_14060AFE8
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14060AFE8:                          ; CODE XREF: sub_14060AC40+38F↑j
                                        ; sub_14060AC40+39F↑j
                lea     rcx, unk_140C45920
                call    ExReleaseResourceLite
                mov     rcx, rdi
                call    sub_14021E1F0
                mov     r8, [rsp+98h+arg_20]
                mov     rcx, r15

loc_14060B007:                          ; CODE XREF: sub_14060AC40+1F0FE9↓j
                mov     rdx, r13
                lea     r9, [rsp+98h+var_60]
                call    SeQuerySecurityDescriptorInfo
                mov     edi, eax
                test    rbx, rbx
                jz      loc_14060AE8E
                mov     edx, 1
                mov     rcx, [rsp+98h+var_60]
                call    ObDereferenceSecurityDescriptor
                jmp     loc_14060AE8E
; ---------------------------------------------------------------------------

loc_14060B033:                          ; CODE XREF: sub_14060AC40+351↑j
                mov     rcx, r14
                call    sub_140349AB8
                mov     rbx, rax
                mov     rcx, r14
                test    rax, rax
                jnz     short loc_14060B06D
                mov     rax, [rsp+98h+arg_38]
                mov     [rsp+98h+var_78], rax
                mov     r9d, [rsp+98h+arg_30]
                mov     r8, r13
                mov     rdx, r15
                call    sub_14076986C
                mov     edi, eax
                jmp     loc_14060AE8E
; ---------------------------------------------------------------------------

loc_14060B06D:                          ; CODE XREF: sub_14060AC40+404↑j
                mov     rdx, [rsp+98h+arg_38]
                mov     [rsp+98h+var_70], rdx
                mov     edx, [rsp+98h+arg_30]
                mov     dword ptr [rsp+98h+var_78], edx
                mov     r9, r13
                mov     r8, r15
                mov     rdx, rbx
                call    sub_14077F270
                mov     edi, eax

loc_14060B095:                          ; CODE XREF: sub_14060AC40+110↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                jmp     loc_14060AE8E
; ---------------------------------------------------------------------------

loc_14060B0A2:                          ; CODE XREF: sub_14060AC40+EE↑j
                lea     rax, [rsp+98h+arg_0]
                mov     [rsp+98h+var_78], rax
                movzx   r8d, r15b
                movzx   edx, dil
                mov     rcx, rbx
                call    sub_1406A0C70
                mov     edi, eax
                jmp     loc_14060AD48
; } // starts at 14060AC40
sub_14060AC40   endp

; ---------------------------------------------------------------------------
algn_14060B0C6:                         ; DATA XREF: .rdata:000000014004AEEC↑o
                                        ; .pdata:00000001400FD1DC↑o
                align 10h
; Exported entry 1585. NtQueryDirectoryFileEx

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=27h


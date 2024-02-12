NtQueryInformationThread proc near      ; DATA XREF: .rdata:000000014004DBD4↑o
                                        ; .pdata:00000001400FD770↑o ...

var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_248         = qword ptr -248h
var_240         = byte ptr -240h
var_23F         = byte ptr -23Fh
var_23E         = byte ptr -23Eh
var_23C         = dword ptr -23Ch
var_234         = dword ptr -234h
var_230         = word ptr -230h
var_228         = qword ptr -228h
var_220         = dword ptr -220h
var_21C         = dword ptr -21Ch
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = xmmword ptr -200h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = xmmword ptr -1E0h
var_1D0         = xmmword ptr -1D0h
var_1C0         = xmmword ptr -1C0h
var_1B0         = xmmword ptr -1B0h
var_1A0         = dword ptr -1A0h
var_19C         = dword ptr -19Ch
var_198         = dword ptr -198h
var_188         = qword ptr -188h
var_170         = qword ptr -170h
var_168         = xmmword ptr -168h
var_158         = xmmword ptr -158h
var_148         = xmmword ptr -148h
var_138         = xmmword ptr -138h
var_128         = xmmword ptr -128h
var_118         = dword ptr -118h
var_110         = xmmword ptr -110h
var_F8          = byte ptr -0F8h
var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407E6280 SIZE 000000F1 BYTES
; FUNCTION CHUNK AT 00000001407FD044 SIZE 00000CE6 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 250h
                movaps  [rsp+288h+var_48], xmm6
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+288h+var_58], rax
                mov     esi, r9d
                mov     r14, r8
                mov     r12, rcx
                mov     [rsp+288h+var_228], rcx
                mov     r15, [rsp+288h+arg_20]
                mov     [rsp+288h+var_1F0], r15
                xor     ebx, ebx
                mov     [rsp+288h+var_170], rbx
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+288h+var_128], xmm0
                mov     [rsp+288h+var_118], eax
                movups  [rsp+288h+var_1E0], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+288h+var_110], xmm1
                mov     [rsp+288h+var_248], rbx
                mov     [rsp+288h+var_208], rbx
                movups  [rsp+288h+var_168], xmm0
                movups  [rsp+288h+var_158], xmm0
                mov     r13, gs:188h
                mov     [rsp+288h+var_1E8], r13
                mov     [rsp+288h+var_210], r13
                movzx   r9d, byte ptr [r13+232h]
                mov     [rsp+288h+var_23E], r9b
                test    r9b, r9b
                jz      loc_14061A942

loc_14061A545:                          ; DATA XREF: .rdata:000000014004D96C↑o
;   __try { // __except at loc_14061A5C2
                lea     edi, [rbx+1]
                cmp     edx, 26h ; '&'
                jz      short loc_14061A596
                cmp     esi, 4
                jb      short loc_14061A592
                mov     eax, 4

loc_14061A557:                          ; CODE XREF: NtQueryInformationThread+114↓j
                                        ; NtQueryInformationThread+11B↓j
                mov     [rsp+288h+var_220], eax
                test    esi, esi
                jz      short loc_14061A5AF
                lea     ecx, [rax-1]
                test    r14, rcx
                jnz     short loc_14061A59D
                lea     rcx, [r8+rsi]
                mov     r8, 7FFFFFFF0000h
                cmp     rcx, r8
                ja      short loc_14061A5A2
                cmp     rcx, r14
                jb      short loc_14061A5A2

loc_14061A57F:                          ; CODE XREF: NtQueryInformationThread+12D↓j
                                        ; NtQueryInformationThread+139↓j
                test    r15, r15
                jz      short loc_14061A5C0
                mov     rcx, r15
                cmp     r15, r8
                jnb     short loc_14061A5BB

loc_14061A58C:                          ; CODE XREF: NtQueryInformationThread+13E↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                jmp     short loc_14061A5C0
; ---------------------------------------------------------------------------

loc_14061A592:                          ; CODE XREF: NtQueryInformationThread+D0↑j
                mov     eax, edi
                jmp     short loc_14061A557
; ---------------------------------------------------------------------------

loc_14061A596:                          ; CODE XREF: NtQueryInformationThread+CB↑j
                mov     eax, 8
                jmp     short loc_14061A557
; ---------------------------------------------------------------------------

loc_14061A59D:                          ; CODE XREF: NtQueryInformationThread+E5↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14061A5A2:                          ; CODE XREF: NtQueryInformationThread+F8↑j
                                        ; NtQueryInformationThread+FD↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14061A57F
; ---------------------------------------------------------------------------

loc_14061A5AF:                          ; CODE XREF: NtQueryInformationThread+DD↑j
                mov     r8, 7FFFFFFF0000h
                jmp     short loc_14061A57F
; ---------------------------------------------------------------------------

loc_14061A5BB:                          ; CODE XREF: NtQueryInformationThread+10A↑j
                mov     rcx, r8
                jmp     short loc_14061A58C
; ---------------------------------------------------------------------------

loc_14061A5C0:                          ; CODE XREF: NtQueryInformationThread+102↑j
                                        ; NtQueryInformationThread+110↑j
                jmp     short loc_14061A5C7
;   } // starts at 14061A545
; ---------------------------------------------------------------------------

loc_14061A5C2:                          ; DATA XREF: .rdata:000000014004D96C↑o
;   __except(1) // owned by 14061A545
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061A5C7:                          ; CODE XREF: NtQueryInformationThread:loc_14061A5C0↑j
                                        ; NtQueryInformationThread+4C7↓j
                mov     dword ptr [rsp+288h+var_1D0+4], ebx
                movdqu  [rsp+288h+var_1C0], xmm0
                mov     qword ptr [rsp+288h+var_1B0], rbx
                mov     qword ptr [rsp+288h+var_1B0+8], rbx
                cmp     edx, 17h
                jz      loc_14061A69F
                cmp     edx, 19h
                jz      loc_14061A6FF
                cmp     edx, 1
                jz      loc_14061A78B
                test    edx, edx
                jz      loc_14061A853
                add     edx, 0FFFFFFFAh ; switch 40 cases
                cmp     edx, 27h
                ja      def_14061A62A   ; jumptable 000000014061A62A default case, cases 7,8,10,13,15,19,23,25,27,28
                movsxd  rax, edx
                lea     rdx, cs:140000000h
                mov     ecx, ds:(jpt_14061A62A - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                align 10h

loc_14061A630:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 4          ; jumptable 000000014061A62A case 24
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_14061A75F

loc_14061A66E:                          ; DATA XREF: .rdata:000000014004D97C↑o
;   __try { // __except at loc_14061A68C
                mov     rcx, [rsp+288h+var_248]
                mov     eax, [rcx+510h]
                shr     eax, 0Ch
                and     eax, 7
                mov     [r14], eax
                test    r15, r15
                jz      short loc_14061A68A
                mov     [r15], esi

loc_14061A68A:                          ; CODE XREF: NtQueryInformationThread+205↑j
                jmp     short loc_14061A693
;   } // starts at 14061A66E
; ---------------------------------------------------------------------------

loc_14061A68C:                          ; DATA XREF: .rdata:000000014004D97C↑o
;   __except(1) // owned by 14061A66E
                mov     ebx, eax
                mov     rcx, [rsp+288h+var_248]

loc_14061A693:                          ; CODE XREF: NtQueryInformationThread:loc_14061A68A↑j
                                        ; NtQueryInformationThread:loc_14061AA9F↓j ...
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                jmp     short loc_14061A6FB
; ---------------------------------------------------------------------------

loc_14061A69F:                          ; CODE XREF: NtQueryInformationThread+16A↑j
                cmp     esi, 10h
                jnz     loc_1407FDCD9
                cmp     r12, 0FFFFFFFFFFFFFFFEh
                jnz     loc_1407FDCE3
                mov     [rsp+288h+var_248], r13

loc_14061A6B7:                          ; CODE XREF: NtQueryInformationThread+1E389D↓j
                lea     rdx, [rsp+288h+var_208]
                mov     rcx, r13
                call    KeQueryTotalCycleTimeThread
                nop

loc_14061A6C8:                          ; DATA XREF: .rdata:000000014004D98C↑o
;   __try { // __except at loc_14061A6E5
                mov     [r14], rax
                mov     rax, [rsp+288h+var_208]
                mov     [r14+8], rax
                test    r15, r15
                jz      short loc_14061A6E3
                mov     dword ptr [r15], 10h

loc_14061A6E3:                          ; CODE XREF: NtQueryInformationThread+25A↑j
                jmp     short loc_14061A6F1
;   } // starts at 14061A6C8
; ---------------------------------------------------------------------------

loc_14061A6E5:                          ; DATA XREF: .rdata:000000014004D98C↑o
;   __except(1) // owned by 14061A6C8
                mov     ebx, eax
                mov     r13, [rsp+288h+var_248]
                mov     r12, [rsp+288h+var_228]

loc_14061A6F1:                          ; CODE XREF: NtQueryInformationThread:loc_14061A6E3↑j
                cmp     r12, 0FFFFFFFFFFFFFFFEh
                jnz     loc_1407FDD22

loc_14061A6FB:                          ; CODE XREF: NtQueryInformationThread+21D↑j
                                        ; NtQueryInformationThread+865↓j ...
                mov     eax, ebx
                jmp     short loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061A6FF:                          ; CODE XREF: NtQueryInformationThread+173↑j
                cmp     esi, 4
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      short loc_14061A75F
                mov     rcx, [rsp+288h+var_248]
                movsx   ebx, byte ptr [rcx+233h]
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_14061A74E:                          ; DATA XREF: .rdata:000000014004D99C↑o
;   __try { // __except at loc_14061A75B
                mov     [r14], ebx
                test    r15, r15
                jz      short loc_14061A759
                mov     [r15], esi

loc_14061A759:                          ; CODE XREF: NtQueryInformationThread+2D4↑j
                jmp     short loc_14061A75D
;   } // starts at 14061A74E
; ---------------------------------------------------------------------------

loc_14061A75B:                          ; DATA XREF: .rdata:000000014004D99C↑o
;   __except(1) // owned by 14061A74E
                jmp     short loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061A75D:                          ; CODE XREF: NtQueryInformationThread:loc_14061A759↑j
                                        ; NtQueryInformationThread:loc_14061A849↓j ...
                xor     eax, eax

loc_14061A75F:                          ; CODE XREF: NtQueryInformationThread:loc_14061A5C2↑j
                                        ; NtQueryInformationThread+1E8↑j ...
                mov     rcx, [rsp+288h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                movaps  xmm6, [rsp+288h+var_48]
                add     rsp, 250h
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

loc_14061A78B:                          ; CODE XREF: NtQueryInformationThread+17C↑j
                cmp     esi, 20h ; ' '
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      short loc_14061A75F
                mov     ecx, cs:dword_140CFC418
                mov     r8, [rsp+288h+var_248]
                mov     eax, [r8+28Ch]
                imul    rax, rcx
                mov     qword ptr [rsp+288h+var_138], rax
                mov     eax, [r8+2DCh]
                imul    rax, rcx
                mov     qword ptr [rsp+288h+var_138+8], rax
                mov     rax, [r8+430h]
                mov     qword ptr [rsp+288h+var_148], rax
                cmp     byte ptr [r8+4], 0
                jnz     loc_1407FDCC5
                mov     qword ptr [rsp+288h+var_148+8], rbx

loc_14061A816:                          ; CODE XREF: NtQueryInformationThread+1E3854↓j
                mov     edx, 79517350h
                mov     rcx, r8
                call    ObfDereferenceObjectWithTag
                nop

loc_14061A824:                          ; DATA XREF: .rdata:000000014004D9AC↑o
;   __try { // __except at loc_14061A84E
                movups  xmm0, [rsp+288h+var_148]
                movups  xmmword ptr [r14], xmm0
                movups  xmm1, [rsp+288h+var_138]
                movups  xmmword ptr [r14+10h], xmm1
                test    r15, r15
                jz      short loc_14061A849
                mov     dword ptr [r15], 20h ; ' '

loc_14061A849:                          ; CODE XREF: NtQueryInformationThread+3C0↑j
                jmp     loc_14061A75D
;   } // starts at 14061A824
; ---------------------------------------------------------------------------

loc_14061A84E:                          ; DATA XREF: .rdata:000000014004D9AC↑o
;   __except(1) // owned by 14061A824
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061A853:                          ; CODE XREF: NtQueryInformationThread+184↑j
                cmp     esi, 30h ; '0'
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14061A75F
                mov     rbx, [rsp+288h+var_248]
                cmp     byte ptr [rbx+4], 0
                jnz     loc_14061ABE7
                mov     dword ptr [rsp+288h+var_1D0], 103h

loc_14061A8A9:                          ; CODE XREF: NtQueryInformationThread+776↓j
                mov     rax, [rbx+0F0h]
                mov     qword ptr [rsp+288h+var_1D0+8], rax
                mov     rcx, rbx
                call    PsGetThreadProcess
                test    byte ptr [rax+3E0h], 1
                jnz     loc_1407FDCAF

loc_14061A8CD:                          ; CODE XREF: NtQueryInformationThread+1E3840↓j
                movups  xmm6, xmmword ptr [rbx+478h]
                mov     rax, [rbx+228h]
                mov     qword ptr [rsp+288h+var_1B0], rax
                movsx   eax, byte ptr [rbx+0C3h]
                mov     dword ptr [rsp+288h+var_1B0+8], eax
                mov     rcx, rbx
                call    sub_14021A224
                mov     dword ptr [rsp+288h+var_1B0+0Ch], eax
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                nop

loc_14061A90E:                          ; DATA XREF: .rdata:000000014004D9BC↑o
;   __try { // __except at loc_14061A93D
                movups  xmm0, [rsp+288h+var_1D0]
                movups  xmmword ptr [r14], xmm0
                movups  xmmword ptr [r14+10h], xmm6
                movups  xmm0, [rsp+288h+var_1B0]
                movups  xmmword ptr [r14+20h], xmm0
                test    r15, r15
                jz      short loc_14061A938
                mov     dword ptr [r15], 30h ; '0'

loc_14061A938:                          ; CODE XREF: NtQueryInformationThread+4AF↑j
                jmp     loc_14061A75D
;   } // starts at 14061A90E
; ---------------------------------------------------------------------------

loc_14061A93D:                          ; DATA XREF: .rdata:000000014004D9BC↑o
;   __except(1) // owned by 14061A90E
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061A942:                          ; CODE XREF: NtQueryInformationThread+BF↑j
                mov     edi, 1
                jmp     loc_14061A5C7
; ---------------------------------------------------------------------------

loc_14061A94C:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                mov     [rsp+288h+var_21C], ebx ; jumptable 000000014061A62A case 44
                cmp     esi, 10h
                jnz     loc_1407FDCD9
                cmp     r12, 0FFFFFFFFFFFFFFFEh
                jnz     loc_1407FD4EB
                movups  [rsp+288h+var_200], xmm0
                lea     rdx, [rsp+288h+var_21C]
                mov     rcx, r13
                call    sub_140219BBC
                mov     rcx, rax
                lea     rdx, [rsp+288h+var_200]
                test    rax, rax
                jnz     loc_14061AAE6
                mov     rcx, r13
                call    sub_140219C64
                or      dword ptr [rsp+288h+var_200+8], 1

loc_14061A99C:                          ; CODE XREF: NtQueryInformationThread+670↓j
                                        ; NtQueryInformationThread+1E37B2↓j
                                        ; DATA XREF: ...
;   __try { // __except at loc_14061A9B9
                movups  xmm0, [rsp+288h+var_200]
                movups  xmmword ptr [r14], xmm0
                test    r15, r15
                jz      short loc_14061A9B4
                mov     dword ptr [r15], 10h

loc_14061A9B4:                          ; CODE XREF: NtQueryInformationThread+52B↑j
                jmp     loc_14061A75D
;   } // starts at 14061A99C
; ---------------------------------------------------------------------------

loc_14061A9B9:                          ; DATA XREF: .rdata:000000014004D9CC↑o
;   __except(loc_1407E6335) // owned by 14061A99C
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061A9BE:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 4          ; jumptable 000000014061A62A case 42
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_14061A75F

loc_14061A9FC:                          ; DATA XREF: .rdata:000000014004D9DC↑o
;   __try { // __except at loc_14061AA29
                mov     rcx, [rsp+288h+var_248]
                test    dword ptr [rcx+510h], 40000h
                jnz     short loc_14061AA1E
                mov     [r14], ebx

loc_14061AA10:                          ; CODE XREF: NtQueryInformationThread+5A5↓j
                test    r15, r15
                jz      short loc_14061AA27
                mov     dword ptr [r15], 4
                jmp     short loc_14061AA27
; ---------------------------------------------------------------------------

loc_14061AA1E:                          ; CODE XREF: NtQueryInformationThread+58B↑j
                mov     dword ptr [r14], 1
                jmp     short loc_14061AA10
; ---------------------------------------------------------------------------

loc_14061AA27:                          ; CODE XREF: NtQueryInformationThread+593↑j
                                        ; NtQueryInformationThread+59C↑j
                jmp     short loc_14061AA30
;   } // starts at 14061A9FC
; ---------------------------------------------------------------------------

loc_14061AA29:                          ; DATA XREF: .rdata:000000014004D9DC↑o
;   __except(1) // owned by 14061A9FC
                mov     edi, eax
                mov     rcx, [rsp+288h+var_248]

loc_14061AA30:                          ; CODE XREF: NtQueryInformationThread:loc_14061AA27↑j
                                        ; NtQueryInformationThread:loc_1407FDC94↓j ...
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061AA41:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 4          ; jumptable 000000014061A62A case 22
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                mov     [rsp+288h+var_23C], eax
                test    eax, eax
                js      loc_14061A75F

loc_14061AA83:                          ; DATA XREF: .rdata:000000014004D9EC↑o
;   __try { // __except at loc_14061AAA4
                mov     rcx, [rsp+288h+var_248]
                mov     eax, [rcx+510h]
                shr     eax, 9
                and     eax, 7
                mov     [r14], eax
                test    r15, r15
                jz      short loc_14061AA9F
                mov     [r15], esi

loc_14061AA9F:                          ; CODE XREF: NtQueryInformationThread+61A↑j
                jmp     loc_14061A693
;   } // starts at 14061AA83
; ---------------------------------------------------------------------------

loc_14061AAA4:                          ; DATA XREF: .rdata:000000014004D9EC↑o
;   __except(1) // owned by 14061AA83
                mov     ebx, eax
                mov     rcx, [rsp+288h+var_248]
                jmp     loc_14061A693
; ---------------------------------------------------------------------------

loc_14061AAB0:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 4          ; jumptable 000000014061A62A case 12
                jnz     loc_1407FDCD9
                mov     rax, [r13+220h]
                mov     ecx, [rax+5F0h]
                cmp     ecx, 1
                jz      short loc_14061AACD
                mov     edi, ebx

loc_14061AACD:                          ; CODE XREF: NtQueryInformationThread+649↑j
                                        ; DATA XREF: .rdata:000000014004D9FC↑o
;   __try { // __except at loc_14061AAE1
                mov     [r14], edi
                test    r15, r15
                jz      short loc_14061AADC
                mov     dword ptr [r15], 4

loc_14061AADC:                          ; CODE XREF: NtQueryInformationThread+653↑j
                jmp     loc_14061A75D
;   } // starts at 14061AACD
; ---------------------------------------------------------------------------

loc_14061AAE1:                          ; DATA XREF: .rdata:000000014004D9FC↑o
;   __except(1) // owned by 14061AACD
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061AAE6:                          ; CODE XREF: NtQueryInformationThread+506↑j
                call    sub_140219C64
                cmp     [rsp+288h+var_21C], 0
                jz      loc_14061A99C
                jmp     loc_1407FDC2C
; ---------------------------------------------------------------------------

loc_14061AAFB:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 4          ; jumptable 000000014061A62A case 20
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14061A75F
                mov     rax, [rsp+288h+var_248]
                mov     ecx, [rax+510h]
                test    cl, 1
                jnz     short loc_14061AB49
                mov     edi, ebx

loc_14061AB49:                          ; CODE XREF: NtQueryInformationThread+6C5↑j
                mov     edx, 79517350h
                mov     rcx, [rsp+288h+var_248]
                call    ObfDereferenceObjectWithTag
                nop

loc_14061AB59:                          ; DATA XREF: .rdata:000000014004DA0C↑o
;   __try { // __except at loc_14061AB6D
                mov     [r14], edi
                test    r15, r15
                jz      short loc_14061AB68
                mov     dword ptr [r15], 4

loc_14061AB68:                          ; CODE XREF: NtQueryInformationThread+6DF↑j
                jmp     loc_14061A75D
;   } // starts at 14061AB59
; ---------------------------------------------------------------------------

loc_14061AB6D:                          ; DATA XREF: .rdata:000000014004DA0C↑o
;   __except(1) // owned by 14061AB59
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061AB72:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                mov     [rsp+288h+var_258], rbx ; jumptable 000000014061A62A case 29
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 8
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14061A75F
                movzx   r9d, [rsp+288h+var_23E]
                mov     r8d, esi
                mov     rdx, r14
                mov     rcx, [rsp+288h+var_248]
                call    sub_1406AA318
                mov     edi, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+288h+var_248]
                call    ObfDereferenceObjectWithTag
                test    edi, edi
                js      short loc_14061ABE0

loc_14061ABD0:                          ; DATA XREF: .rdata:000000014004DA1C↑o
;   __try { // __except at loc_14061ABDE
                test    r15, r15
                jz      short loc_14061ABDC
                mov     dword ptr [r15], 2CCh

loc_14061ABDC:                          ; CODE XREF: NtQueryInformationThread+753↑j
                jmp     short loc_14061ABE0
;   } // starts at 14061ABD0
; ---------------------------------------------------------------------------

loc_14061ABDE:                          ; DATA XREF: .rdata:000000014004DA1C↑o
;   __except(1) // owned by 14061ABD0
                mov     edi, eax

loc_14061ABE0:                          ; CODE XREF: NtQueryInformationThread+74E↑j
                                        ; NtQueryInformationThread:loc_14061ABDC↑j ...
                mov     eax, edi
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061ABE7:                          ; CODE XREF: NtQueryInformationThread+418↑j
                mov     rcx, rbx
                call    PsGetThreadExitStatus
                mov     dword ptr [rsp+288h+var_1D0], eax
                jmp     loc_14061A8A9
; ---------------------------------------------------------------------------

loc_14061ABFB:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 4          ; jumptable 000000014061A62A case 16
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                lea     edx, [rsi+3Ch]
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14061A75F
                mov     rcx, [rsp+288h+var_248]
                lea     rax, [rcx+4B0h]
                cmp     [rax], rax
                setnz   bl
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                nop

loc_14061AC52:                          ; DATA XREF: .rdata:000000014004DA2C↑o
;   __try { // __except at loc_14061AC62
                mov     [r14], ebx
                test    r15, r15
                jz      short loc_14061AC5D
                mov     [r15], esi

loc_14061AC5D:                          ; CODE XREF: NtQueryInformationThread+7D8↑j
                jmp     loc_14061A75D
;   } // starts at 14061AC52
; ---------------------------------------------------------------------------

loc_14061AC62:                          ; DATA XREF: .rdata:000000014004DA2C↑o
;   __except(1) // owned by 14061AC52
                jmp     loc_14061A75F
; ---------------------------------------------------------------------------

loc_14061AC67:                          ; CODE XREF: NtQueryInformationThread+1AA↑j
                                        ; DATA XREF: NtQueryInformationThread:jpt_14061A62A↓o
                cmp     esi, 10h        ; jumptable 000000014061A62A case 30
                jnz     loc_1407FDCD9
                mov     [rsp+288h+var_258], rbx
                lea     rax, [rsp+288h+var_248]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], 79517350h
                mov     r8, cs:PsThreadType
                mov     edx, 800h
                mov     rcx, r12
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      loc_14061A75F
                lea     rdx, [rsp+288h+var_1E0]
                mov     rdi, [rsp+288h+var_248]
                mov     rcx, rdi
                call    sub_140362A70
                nop

loc_14061ACBB:                          ; DATA XREF: .rdata:000000014004DA3C↑o
;   __try { // __except at loc_14061ACD1
                movups  xmm0, [rsp+288h+var_1E0]
                movups  xmmword ptr [r14], xmm0
                test    r15, r15
                jz      short loc_14061ACCF
                mov     [r15], esi

loc_14061ACCF:                          ; CODE XREF: NtQueryInformationThread+84A↑j
                jmp     short loc_14061ACD8
;   } // starts at 14061ACBB
; ---------------------------------------------------------------------------

loc_14061ACD1:                          ; DATA XREF: .rdata:000000014004DA3C↑o
;   __except(1) // owned by 14061ACBB
                mov     ebx, eax
                mov     rdi, [rsp+288h+var_248]

loc_14061ACD8:                          ; CODE XREF: NtQueryInformationThread:loc_14061ACCF↑j
                                        ; NtQueryInformationThread:loc_1407FDA6B↓j ...
                mov     rcx, rdi
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                jmp     loc_14061A6FB
; ---------------------------------------------------------------------------
                align 4
jpt_14061A62A   dd offset loc_1407FD044 - 140000000h
                                        ; DATA XREF: NtQueryInformationThread+1A0↑r
                dd offset def_14061A62A - 140000000h ; jump table for switch statement
                dd offset def_14061A62A - 140000000h
                dd offset loc_1407FD088 - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_1407FD0F0 - 140000000h
                dd offset loc_14061AAB0 - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_1407FD151 - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_14061ABFB - 140000000h
                dd offset loc_1407FD228 - 140000000h
                dd offset loc_1407FD1BD - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_14061AAFB - 140000000h
                dd offset loc_1407FD291 - 140000000h
                dd offset loc_14061AA41 - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_14061A630 - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_1407FD2E3 - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset def_14061A62A - 140000000h
                dd offset loc_14061AB72 - 140000000h
                dd offset loc_14061AC67 - 140000000h
                dd offset loc_1407FD601 - 140000000h
                dd offset loc_1407FD4F5 - 140000000h
                dd offset loc_1407FD580 - 140000000h
                dd offset loc_1407FD69A - 140000000h
                dd offset loc_1407FD704 - 140000000h
                dd offset loc_1407FD777 - 140000000h
                dd offset loc_1407FD7ED - 140000000h
                dd offset loc_1407FDA7C - 140000000h
                dd offset loc_1407FD839 - 140000000h
                dd offset loc_1407FD8E5 - 140000000h
                dd offset loc_1407FDA03 - 140000000h
                dd offset loc_14061A9BE - 140000000h
                dd offset loc_1407FDBC0 - 140000000h
                dd offset loc_14061A94C - 140000000h
                dd offset loc_1407FDC37 - 140000000h
; } // starts at 14061A480
NtQueryInformationThread endp

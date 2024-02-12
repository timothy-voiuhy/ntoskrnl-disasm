NtQueryInformationToken proc near       ; CODE XREF: RtlGetAppContainerNamedObjectPath+D7↑p
                                        ; RtlGetAppContainerNamedObjectPath+130↑p ...

var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = byte ptr -140h
var_138         = qword ptr -138h
var_128         = byte ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = byte ptr -110h
var_108         = dword ptr -108h
var_104         = dword ptr -104h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = dword ptr -0F8h
var_F4          = dword ptr -0F4h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = dword ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = dword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = byte ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = xmmword ptr -48h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407FC236 SIZE 000005F6 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 180h
                mov     r15d, r9d
                mov     rsi, r8
                mov     r14d, edx
                mov     r10, rcx
                xor     edi, edi
                mov     [rax-120h], rdi
                mov     [rax-108h], edi
                mov     [rax-0D4h], edi
                mov     [rax-0DCh], edi
                mov     [rax-80h], rdi
                mov     [rax-0D0h], edi
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-78h], xmm0
                mov     [rax-110h], rdi
                mov     [rax-0F8h], edi
                movups  xmmword ptr [rax-38h], xmm0
                xorps   xmm1, xmm1
                movups  xmmword ptr [rax-0B0h], xmm1
                movups  xmmword ptr [rax-0A0h], xmm1
                movups  xmmword ptr [rax-90h], xmm1
                mov     [rax-128h], dil
                mov     [rax-118h], rdi
                mov     rax, gs:188h
                movzx   r12d, byte ptr [rax+232h]
                test    r12b, r12b
                jz      loc_140611C0E

loc_1406119C8:                          ; DATA XREF: .rdata:000000014004C53C↑o
;   __try { // __except at loc_140611A02
                mov     edx, r15d
                lea     r8d, [rdi+4]
                mov     rcx, rsi
                call    ProbeForWrite
                mov     rbx, [rsp+1A8h+arg_20]
                mov     rcx, rbx
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                jb      short loc_1406119F4
                mov     rcx, rax

loc_1406119F4:                          ; CODE XREF: NtQueryInformationToken+CF↑j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     r10, [rsp+1A8h+arg_0]
                jmp     short loc_140611A07
;   } // starts at 1406119C8
; ---------------------------------------------------------------------------

loc_140611A02:                          ; DATA XREF: .rdata:000000014004C53C↑o
;   __except(1) // owned by 1406119C8
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611A07:                          ; CODE XREF: NtQueryInformationToken+E0↑j
                                        ; NtQueryInformationToken+2F6↓j
                cmp     r14d, 1
                jz      loc_140611AE7
                cmp     r14d, 8
                jz      loc_140611C1B
                lea     eax, [r14-2]    ; switch 47 cases
                cmp     eax, 2Eh
                ja      def_140611A3B   ; jumptable 0000000140611A3B default case, cases 8,14,35,36,38,45,46
                cdqe
                lea     rdx, cs:140000000h
                mov     ecx, ds:(jpt_140611A3B - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_140611A41:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 12
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140611A7C:                          ; DATA XREF: .rdata:000000014004C54C↑o
;   __try { // __except at loc_140611A84
                mov     dword ptr [rbx], 4
                jmp     short loc_140611A9A
;   } // starts at 140611A7C
; ---------------------------------------------------------------------------

loc_140611A84:                          ; DATA XREF: .rdata:000000014004C54C↑o
;   __except(1) // owned by 140611A7C
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611A9A:                          ; CODE XREF: NtQueryInformationToken+162↑j
                cmp     r15d, 4
                jb      loc_1406132C8
                lea     rdx, [rsp+1A8h+var_F8]
                mov     rdi, [rsp+1A8h+var_120]
                mov     rcx, rdi
                call    SeQuerySessionIdToken
                nop

loc_140611ABD:                          ; DATA XREF: .rdata:000000014004C55C↑o
;   __try { // __except at loc_140611AD1
                mov     eax, [rsp+1A8h+var_F8]
                mov     [rsi], eax
                mov     dword ptr [rbx], 4
                jmp     loc_140611BFE
;   } // starts at 140611ABD
; ---------------------------------------------------------------------------

loc_140611AD1:                          ; DATA XREF: .rdata:000000014004C55C↑o
;   __except(1) // owned by 140611ABD
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611AE7:                          ; CODE XREF: NtQueryInformationToken+EB↑j
                lea     rax, [rsp+1A8h+var_118]
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     rax, [rdi+98h]
                mov     rcx, [rax]
                movzx   eax, byte ptr [rcx+1]
                lea     r8d, ds:18h[rax*4]

loc_140611B5B:                          ; DATA XREF: .rdata:000000014004C56C↑o
;   __try { // __except at loc_140611B60
                mov     [rbx], r8d
                jmp     short loc_140611B87
;   } // starts at 140611B5B
; ---------------------------------------------------------------------------

loc_140611B60:                          ; DATA XREF: .rdata:000000014004C56C↑o
;   __except(1) // owned by 140611B5B
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611B87:                          ; CODE XREF: NtQueryInformationToken+23E↑j
                cmp     r15d, r8d
                jb      loc_140611F93

loc_140611B90:                          ; DATA XREF: .rdata:000000014004C57C↑o
;   __try { // __except at loc_140611BC9
                lea     rax, [rsi+10h]
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rcx
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rcx
                mov     [rsp+1A8h+var_188], rax
                mov     r9, rsi
                mov     rdx, [rdi+98h]
                mov     ecx, 1
                call    RtlCopySidAndAttributesArray
                jmp     short loc_140611BF0
;   } // starts at 140611B90
; ---------------------------------------------------------------------------

loc_140611BC9:                          ; DATA XREF: .rdata:000000014004C57C↑o
;   __except(1) // owned by 140611B90
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611BF0:                          ; CODE XREF: NtQueryInformationToken+2A7↑j
                                        ; NtQueryInformationToken:loc_140611E0A↓j ...
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_140611BFE:                          ; CODE XREF: NtQueryInformationToken+1AC↑j
                mov     rcx, rdi

loc_140611C01:                          ; CODE XREF: NtQueryInformationToken+36E↓j
                                        ; NtQueryInformationToken+405↓j ...
                call    PsDereferenceSiloContext

loc_140611C06:                          ; CODE XREF: NtQueryInformationToken+213B↓j
                xor     eax, eax
                jmp     loc_140613C30
; ---------------------------------------------------------------------------
                align 2

loc_140611C0E:                          ; CODE XREF: NtQueryInformationToken+A2↑j
                mov     rbx, [rsp+1A8h+arg_20]
                jmp     loc_140611A07
; ---------------------------------------------------------------------------

loc_140611C1B:                          ; CODE XREF: NtQueryInformationToken+F5↑j
                lea     rax, [rsp+1A8h+var_118]
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140611C56:                          ; DATA XREF: .rdata:000000014004C58C↑o
;   __try { // __except at loc_140611C5E
                mov     dword ptr [rbx], 4
                jmp     short loc_140611C74
;   } // starts at 140611C56
; ---------------------------------------------------------------------------

loc_140611C5E:                          ; DATA XREF: .rdata:000000014004C58C↑o
;   __except(1) // owned by 140611C56
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611C74:                          ; CODE XREF: NtQueryInformationToken+33C↑j
                cmp     r15d, 4
                jb      loc_1406132C8

loc_140611C7E:                          ; DATA XREF: .rdata:000000014004C59C↑o
;   __try { // __except at loc_140611C93
                mov     rcx, [rsp+1A8h+var_120]
                mov     eax, [rcx+0C0h]
                mov     [rsi], eax
                jmp     loc_140611C01
;   } // starts at 140611C7E
; ---------------------------------------------------------------------------

loc_140611C93:                          ; DATA XREF: .rdata:000000014004C59C↑o
;   __except(1) // owned by 140611C7E
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611CA9:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 29
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140611CE4:                          ; DATA XREF: .rdata:000000014004C5AC↑o
;   __try { // __except at loc_140611CEC
                mov     dword ptr [rbx], 4
                jmp     short loc_140611D02
;   } // starts at 140611CE4
; ---------------------------------------------------------------------------

loc_140611CEC:                          ; DATA XREF: .rdata:000000014004C5AC↑o
;   __except(1) // owned by 140611CE4
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611D02:                          ; CODE XREF: NtQueryInformationToken+3CA↑j
                mov     rcx, [rsp+1A8h+var_120]
                cmp     r15d, 4
                jb      loc_140611FA4
                mov     eax, [rcx+0C8h]
                and     eax, 4000h

loc_140611D1F:                          ; DATA XREF: .rdata:000000014004C5BC↑o
;   __try { // __except at loc_140611D2A
                setnz   dil
                mov     [rsi], edi
                jmp     loc_140611C01
;   } // starts at 140611D1F
; ---------------------------------------------------------------------------

loc_140611D2A:                          ; DATA XREF: .rdata:000000014004C5BC↑o
;   __except(1) // owned by 140611D1F
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611D40:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 31
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     r13d, 8
                mov     edx, r13d
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     rcx, [rdi+310h]
                test    rcx, rcx
                jnz     loc_140612B10

loc_140611DB2:                          ; CODE XREF: NtQueryInformationToken+11FC↓j
                                        ; DATA XREF: .rdata:000000014004C5CC↑o
;   __try { // __except at loc_140611DB7
                mov     [rbx], r13d
                jmp     short loc_140611DDE
;   } // starts at 140611DB2
; ---------------------------------------------------------------------------

loc_140611DB7:                          ; DATA XREF: .rdata:000000014004C5CC↑o
;   __except(1) // owned by 140611DB2
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611DDE:                          ; CODE XREF: NtQueryInformationToken+495↑j
                cmp     r15d, r13d
                jb      loc_140611F93

loc_140611DE7:                          ; DATA XREF: .rdata:000000014004C5DC↑o
;   __try { // __except at loc_140611E0F
                lea     rdx, [rsi+8]
                test    rcx, rcx
                cmovz   rdx, rcx
                mov     [rsi], rdx
                test    rdx, rdx
                jz      short loc_140611E0A
                lea     ecx, [r13-8]
                mov     r8, [rdi+310h]
                call    RtlCopySid

loc_140611E0A:                          ; CODE XREF: NtQueryInformationToken+4D8↑j
                jmp     loc_140611BF0
;   } // starts at 140611DE7
; ---------------------------------------------------------------------------

loc_140611E0F:                          ; DATA XREF: .rdata:000000014004C5DC↑o
;   __except(1) // owned by 140611DE7
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611E36:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 10
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140611E71:                          ; DATA XREF: .rdata:000000014004C5EC↑o
;   __try { // __except at loc_140611E79
                mov     dword ptr [rbx], 38h ; '8'
                jmp     short loc_140611E8F
;   } // starts at 140611E71
; ---------------------------------------------------------------------------

loc_140611E79:                          ; DATA XREF: .rdata:000000014004C5EC↑o
;   __except(1) // owned by 140611E71
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611E8F:                          ; CODE XREF: NtQueryInformationToken+557↑j
                cmp     r15d, 38h ; '8'
                jb      loc_1406132C8
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceSharedLite
                nop

loc_140611EBD:                          ; DATA XREF: .rdata:000000014004C5FC↑o
;   __try { // __except at loc_140611F4F
                mov     [rsp+1A8h+var_FC], edi
                mov     rax, [rbx+10h]
                mov     [rsi], rax
                mov     rax, [rbx+18h]
                mov     [rsi+8], rax
                mov     rax, [rbx+28h]
                mov     [rsi+10h], rax
                mov     eax, [rbx+0C0h]
                mov     [rsi+18h], eax
                mov     eax, [rbx+0C4h]
                mov     [rsi+1Ch], eax
                mov     eax, [rbx+88h]
                mov     [rsi+20h], eax
                mov     rax, [rbx+0A8h]
                movzx   ecx, byte ptr [rax+1]
                shl     ecx, 2
                mov     edx, [rbx+88h]
                sub     edx, ecx
                sub     edx, 8
                mov     [rsp+1A8h+var_FC], edx
                mov     rax, [rbx+0B8h]
                test    rax, rax
                jz      short loc_140611F2F
                movzx   eax, word ptr [rax+2]
                sub     edx, eax
                mov     [rsp+1A8h+var_FC], edx

loc_140611F2F:                          ; CODE XREF: NtQueryInformationToken+600↑j
                mov     [rsi+24h], edx
                mov     eax, [rbx+7Ch]
                dec     eax
                mov     [rsi+28h], eax
                mov     rcx, rbx
                call    sub_14030E1F0
                mov     [rsi+2Ch], eax
                mov     rax, [rbx+38h]
                mov     [rsi+30h], rax
                jmp     short loc_140611F76
;   } // starts at 140611EBD
; ---------------------------------------------------------------------------

loc_140611F4F:                          ; DATA XREF: .rdata:000000014004C5FC↑o
;   __except(1) // owned by 140611EBD
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611F76:                          ; CODE XREF: NtQueryInformationToken+62D↑j
                                        ; NtQueryInformationToken+1EAA78↓j
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_140611F84:                          ; CODE XREF: NtQueryInformationToken:loc_140612756↓j
                                        ; NtQueryInformationToken+102F↓j ...
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                xor     eax, eax
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611F93:                          ; CODE XREF: NtQueryInformationToken+26A↑j
                                        ; NtQueryInformationToken+4C1↑j ...
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rdi

loc_140611FA4:                          ; CODE XREF: NtQueryInformationToken+3EE↑j
                                        ; NtQueryInformationToken+B4B↓j
                call    PsDereferenceSiloContext

loc_140611FA9:                          ; CODE XREF: NtQueryInformationToken+1A0B↓j
                                        ; NtQueryInformationToken+2124↓j
                mov     eax, 0C0000023h
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140611FB3:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 5
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     rax, [rdi+0A8h]
                movzx   ecx, byte ptr [rax+1]
                lea     ecx, ds:10h[rcx*4]

loc_140612023:                          ; DATA XREF: .rdata:000000014004C60C↑o
;   __try { // __except at loc_140612027
                mov     [rbx], ecx
                jmp     short loc_14061204E
;   } // starts at 140612023
; ---------------------------------------------------------------------------

loc_140612027:                          ; DATA XREF: .rdata:000000014004C60C↑o
;   __except(1) // owned by 140612023
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061204E:                          ; CODE XREF: NtQueryInformationToken+705↑j
                cmp     r15d, ecx
                jb      loc_140611F93
                lea     rdx, [rsi+8]

loc_14061205B:                          ; DATA XREF: .rdata:000000014004C61C↑o
;   __try { // __except at loc_140612072
                mov     [rsi], rdx
                add     ecx, 0FFFFFFF8h
                mov     r8, [rdi+0A8h]
                call    RtlCopySid
                jmp     loc_140611BF0
;   } // starts at 14061205B
; ---------------------------------------------------------------------------

loc_140612072:                          ; DATA XREF: .rdata:000000014004C61C↑o
;   __except(1) // owned by 14061205B
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612099:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 6
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     r13d, 8
                mov     edx, r13d
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     [rsp+1A8h+var_108], r13d
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r14, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r14+30h]
                call    ExAcquireResourceSharedLite
                mov     rax, [r14+0B8h]
                test    rax, rax
                jz      loc_1407FC236
                movzx   eax, word ptr [rax+2]
                add     eax, r13d

loc_14061211A:                          ; CODE XREF: NtQueryInformationToken+1EA91D↓j
                                        ; DATA XREF: .rdata:000000014004C62C↑o
;   __try { // __except at loc_14061211E
                mov     [rbx], eax
                jmp     short loc_140612145
;   } // starts at 14061211A
; ---------------------------------------------------------------------------

loc_14061211E:                          ; DATA XREF: .rdata:000000014004C62C↑o
;   __except(1) // owned by 14061211A
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612145:                          ; CODE XREF: NtQueryInformationToken+7FC↑j
                cmp     r15d, eax
                jb      loc_14061296A
                lea     rcx, [rsi+8]

loc_140612152:                          ; DATA XREF: .rdata:000000014004C63C↑o
;   __try { // __except at loc_140612177
                cmp     qword ptr [r14+0B8h], 0
                jz      short loc_140612172
                mov     [rsi], rcx
                mov     rdx, [r14+0B8h]
                movzx   r8d, word ptr [rdx+2]
                call    memmove
                jmp     short loc_140612175
; ---------------------------------------------------------------------------

loc_140612172:                          ; CODE XREF: NtQueryInformationToken+83A↑j
                mov     [rsi], rdi

loc_140612175:                          ; CODE XREF: NtQueryInformationToken+850↑j
                jmp     short loc_14061219E
;   } // starts at 140612152
; ---------------------------------------------------------------------------

loc_140612177:                          ; DATA XREF: .rdata:000000014004C63C↑o
;   __except(1) // owned by 140612152
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061219E:                          ; CODE XREF: NtQueryInformationToken:loc_140612175↑j
                                        ; NtQueryInformationToken:loc_140612D16↓j ...
                mov     rcx, [r14+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_1406121AC:                          ; CODE XREF: NtQueryInformationToken+1F73↓j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                xor     eax, eax
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406121BB:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 25
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                lea     rdx, [rsp+1A8h+var_78]
                mov     rcx, rdi
                call    sub_14021C07C
                mov     rdx, [rsp+1A8h+var_78]
                movzx   eax, byte ptr [rdx+1]
                lea     eax, ds:18h[rax*4]

loc_14061223C:                          ; DATA XREF: .rdata:000000014004C64C↑o
;   __try { // __except at loc_140612240
                mov     [rbx], eax
                jmp     short loc_140612267
;   } // starts at 14061223C
; ---------------------------------------------------------------------------

loc_140612240:                          ; DATA XREF: .rdata:000000014004C64C↑o
;   __except(1) // owned by 14061223C
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612267:                          ; CODE XREF: NtQueryInformationToken+91E↑j
                cmp     r15d, eax
                jb      loc_140611F93

loc_140612270:                          ; DATA XREF: .rdata:000000014004C65C↑o
;   __try { // __except at loc_1406122BA
                lea     rax, [rsi+10h]
                movzx   r8d, byte ptr [rdx+1]
                lea     r8d, ds:8[r8*4]
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rcx
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rcx
                mov     [rsp+1A8h+var_188], rax
                mov     r9, rsi
                lea     rdx, [rsp+1A8h+var_78]
                mov     ecx, 1
                call    RtlCopySidAndAttributesArray
                jmp     loc_140611BF0
;   } // starts at 140612270
; ---------------------------------------------------------------------------

loc_1406122BA:                          ; DATA XREF: .rdata:000000014004C65C↑o
;   __except(1) // owned by 140612270
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406122E1:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 41
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     r13d, 8
                mov     edx, r13d
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                movzx   r8d, [rsp+1A8h+var_128]
                mov     r9, [rsp+1A8h+var_118]
                test    r8b, r8b
                jnz     loc_1407FC715
                mov     rcx, [rdi+450h]

loc_140612364:                          ; CODE XREF: NtQueryInformationToken+1EADF8↓j
                test    rcx, rcx
                jnz     loc_140613168

loc_14061236D:                          ; CODE XREF: NtQueryInformationToken+1854↓j
                                        ; DATA XREF: .rdata:000000014004C66C↑o
;   __try { // __except at loc_140612372
                mov     [rbx], r13d
                jmp     short loc_140612399
;   } // starts at 14061236D
; ---------------------------------------------------------------------------

loc_140612372:                          ; DATA XREF: .rdata:000000014004C66C↑o
;   __except(1) // owned by 14061236D
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612399:                          ; CODE XREF: NtQueryInformationToken+A50↑j
                cmp     r15d, r13d
                jb      loc_140611F93

loc_1406123A2:                          ; DATA XREF: .rdata:000000014004C67C↑o
;   __try { // __except at loc_1406123D2
                lea     rdx, [rsi+8]
                test    rcx, rcx
                cmovz   rdx, rcx
                mov     [rsi], rdx
                test    rdx, rdx
                jz      short loc_1406123CD
                test    r8b, r8b
                jnz     short loc_1406123C1
                mov     r9, [rdi+450h]

loc_1406123C1:                          ; CODE XREF: NtQueryInformationToken+A98↑j
                lea     ecx, [r13-8]
                mov     r8, r9
                call    RtlCopySid

loc_1406123CD:                          ; CODE XREF: NtQueryInformationToken+A93↑j
                jmp     loc_140611BF0
;   } // starts at 1406123A2
; ---------------------------------------------------------------------------

loc_1406123D2:                          ; DATA XREF: .rdata:000000014004C67C↑o
;   __except(1) // owned by 1406123A2
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406123F9:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 9
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rcx, [rsp+1A8h+var_120]
                cmp     dword ptr [rcx+0C0h], 2
                jnz     loc_140613A96

loc_140612449:                          ; DATA XREF: .rdata:000000014004C68C↑o
;   __try { // __except at loc_140612451
                mov     dword ptr [rbx], 4
                jmp     short loc_140612467
;   } // starts at 140612449
; ---------------------------------------------------------------------------

loc_140612451:                          ; DATA XREF: .rdata:000000014004C68C↑o
;   __except(1) // owned by 140612449
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612467:                          ; CODE XREF: NtQueryInformationToken+B2F↑j
                cmp     r15d, 4
                jb      loc_140611FA4

loc_140612471:                          ; DATA XREF: .rdata:000000014004C69C↑o
;   __try { // __except at loc_14061247E
                mov     eax, [rcx+0C4h]
                mov     [rsi], eax
                jmp     loc_140611C01
;   } // starts at 140612471
; ---------------------------------------------------------------------------

loc_14061247E:                          ; DATA XREF: .rdata:000000014004C69C↑o
;   __except(1) // owned by 140612471
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612494:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 11
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     eax, [rdi+80h]
                mov     r8d, eax
                shl     r8d, 4
                add     r8d, 8
                test    eax, eax
                jnz     loc_140613AA5

loc_14061250B:                          ; CODE XREF: NtQueryInformationToken+21A9↓j
                                        ; DATA XREF: .rdata:000000014004C6AC↑o
;   __try { // __except at loc_140612510
                mov     [rbx], r8d
                jmp     short loc_140612537
;   } // starts at 14061250B
; ---------------------------------------------------------------------------

loc_140612510:                          ; DATA XREF: .rdata:000000014004C6AC↑o
;   __except(1) // owned by 14061250B
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612537:                          ; CODE XREF: NtQueryInformationToken+BEE↑j
                cmp     r15d, r8d
                jb      loc_140611F93

loc_140612540:                          ; DATA XREF: .rdata:000000014004C6BC↑o
;   __try { // __except at loc_14061258E
                mov     eax, [rdi+80h]
                mov     [rsi], eax
                mov     ecx, [rdi+80h]
                mov     eax, ecx
                shl     eax, 4
                lea     rdx, [rsi+8]
                add     rdx, rax
                lea     r9, [rsi+8]
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rax
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rax
                mov     [rsp+1A8h+var_188], rdx
                mov     rdx, [rdi+0A0h]
                call    RtlCopySidAndAttributesArray
                jmp     loc_140611BF0
;   } // starts at 140612540
; ---------------------------------------------------------------------------

loc_14061258E:                          ; DATA XREF: .rdata:000000014004C6BC↑o
;   __except(1) // owned by 140612540
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406125B5:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 4
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     ecx, [rdi+90h]
                add     rcx, rcx
                mov     rax, [rdi+98h]
                mov     rcx, [rax+rcx*8]
                movzx   eax, byte ptr [rcx+1]
                lea     ecx, ds:10h[rax*4]

loc_140612632:                          ; DATA XREF: .rdata:000000014004C6CC↑o
;   __try { // __except at loc_140612636
                mov     [rbx], ecx
                jmp     short loc_14061265D
;   } // starts at 140612632
; ---------------------------------------------------------------------------

loc_140612636:                          ; DATA XREF: .rdata:000000014004C6CC↑o
;   __except(1) // owned by 140612632
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061265D:                          ; CODE XREF: NtQueryInformationToken+D14↑j
                cmp     r15d, ecx
                jb      loc_140611F93
                lea     rdx, [rsi+8]

loc_14061266A:                          ; DATA XREF: .rdata:000000014004C6DC↑o
;   __try { // __except at loc_14061268E
                mov     [rsi], rdx
                mov     eax, [rdi+90h]
                add     rax, rax
                mov     r8, [rdi+98h]
                add     ecx, 0FFFFFFF8h
                mov     r8, [r8+rax*8]
                call    RtlCopySid
                jmp     loc_140611BF0
;   } // starts at 14061266A
; ---------------------------------------------------------------------------

loc_14061268E:                          ; DATA XREF: .rdata:000000014004C6DC↑o
;   __except(1) // owned by 14061266A
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406126B5:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 18
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_1406126F0:                          ; DATA XREF: .rdata:000000014004C6EC↑o
;   __try { // __except at loc_1406126F8
                mov     dword ptr [rbx], 4
                jmp     short loc_14061270E
;   } // starts at 1406126F0
; ---------------------------------------------------------------------------

loc_1406126F8:                          ; DATA XREF: .rdata:000000014004C6EC↑o
;   __except(1) // owned by 1406126F0
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061270E:                          ; CODE XREF: NtQueryInformationToken+DD6↑j
                cmp     r15d, 4
                jb      loc_1406132C8

loc_140612718:                          ; DATA XREF: .rdata:000000014004C6FC↑o
;   __try { // __except at loc_14061275B
                mov     rbx, [rsp+1A8h+var_120]
                mov     rax, [rbx+0D8h]
                mov     ecx, [rax+20h]
                test    cl, 4
                jnz     short loc_14061273C
                test    cl, 2
                setnz   dil
                inc     edi
                mov     [rsi], edi
                jmp     short loc_140612756
; ---------------------------------------------------------------------------

loc_14061273C:                          ; CODE XREF: NtQueryInformationToken+E0D↑j
                call    sub_140206DA0
                test    al, al
                jnz     short loc_14061274D
                mov     dword ptr [rsi], 3
                jmp     short loc_140612756
; ---------------------------------------------------------------------------

loc_14061274D:                          ; CODE XREF: NtQueryInformationToken+E23↑j
                mov     r10d, 1
                mov     [rsi], r10d

loc_140612756:                          ; CODE XREF: NtQueryInformationToken+E1A↑j
                                        ; NtQueryInformationToken+E2B↑j
                jmp     loc_140611F84
;   } // starts at 140612718
; ---------------------------------------------------------------------------

loc_14061275B:                          ; DATA XREF: .rdata:000000014004C6FC↑o
;   __except(1) // owned by 140612718
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612771:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B cases 33,34
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r13, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r13+30h]
                call    ExAcquireResourceSharedLite
                mov     rax, [r13+448h]
                test    rax, rax
                jnz     loc_1407FC673

loc_1406127DF:                          ; CODE XREF: NtQueryInformationToken+1EAD63↓j
                                        ; NtQueryInformationToken+1EAD79↓j
                mov     r14d, 10h
                lea     rax, [rsp+1A8h+var_A8]
                mov     [rsp+1A8h+var_A0], rax
                lea     rax, [rsp+1A8h+var_A8]
                mov     [rsp+1A8h+var_A8], rax
                mov     [rsp+1A8h+var_98], edi
                lea     rax, [rsp+1A8h+var_90]
                mov     [rsp+1A8h+var_88], rax
                lea     rax, [rsp+1A8h+var_90]
                mov     [rsp+1A8h+var_90], rax
                lea     r12, [rsp+1A8h+var_B0]

loc_140612834:                          ; CODE XREF: NtQueryInformationToken+1EADA4↓j
                                        ; DATA XREF: .rdata:000000014004C70C↑o
;   __try { // __except at loc_140612839
                mov     [rbx], r14d
                jmp     short loc_140612860
;   } // starts at 140612834
; ---------------------------------------------------------------------------

loc_140612839:                          ; DATA XREF: .rdata:000000014004C70C↑o
;   __except(1) // owned by 140612834
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612860:                          ; CODE XREF: NtQueryInformationToken+F17↑j
                cmp     r15d, r14d
                jnb     loc_140612AAB

loc_140612869:                          ; CODE XREF: NtQueryInformationToken+112D↓j
                                        ; NtQueryInformationToken+17C9↓j
                mov     rcx, [r13+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, r13
                call    PsDereferenceSiloContext
                mov     eax, 0C0000023h
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612889:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: .rdata:000000014004C71C↑o ...
;   __try { // __except at loc_140612891 ; jumptable 0000000140611A3B case 20
                mov     dword ptr [rbx], 4
                jmp     short loc_140612896
;   } // starts at 140612889
; ---------------------------------------------------------------------------

loc_140612891:                          ; DATA XREF: .rdata:000000014004C71C↑o
;   __except(1) // owned by 140612889
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612896:                          ; CODE XREF: NtQueryInformationToken+F6F↑j
                cmp     r15d, 4
                jnz     loc_1407FC462
                lea     rax, [rsp+1A8h+var_118]
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                lea     edx, [r15+4]
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceSharedLite
                mov     rcx, 1120160684h
                test    [rbx+40h], rcx
                setnz   r14b
                mov     r15d, [rbx+7Ch]
                test    r15d, r15d
                jz      short loc_14061293A

loc_140612918:                          ; CODE XREF: NtQueryInformationToken+1018↓j
                test    r14b, r14b
                jnz     short loc_14061293A
                mov     ecx, edi
                shl     rcx, 4
                add     rcx, [rbx+98h]
                call    RtlIsElevatedRid
                movzx   r14d, al
                inc     edi
                cmp     edi, r15d
                jb      short loc_140612918

loc_14061293A:                          ; CODE XREF: NtQueryInformationToken+FF6↑j
                                        ; NtQueryInformationToken+FFB↑j
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                nop

loc_140612949:                          ; DATA XREF: .rdata:000000014004C72C↑o
;   __try { // __except at loc_140612954
                movzx   eax, r14b
                mov     [rsi], eax
                jmp     loc_140611F84
;   } // starts at 140612949
; ---------------------------------------------------------------------------

loc_140612954:                          ; DATA XREF: .rdata:000000014004C72C↑o
;   __except(1) // owned by 140612949
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061296A:                          ; CODE XREF: NtQueryInformationToken+828↑j
                                        ; NtQueryInformationToken+1396↓j ...
                mov     rcx, [r14+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, 0C0000023h
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061298A:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 39
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r13, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r13+30h]
                call    ExAcquireResourceSharedLite
                mov     rcx, [r13+308h]
                test    rcx, rcx
                jz      loc_1407FC70A
                lea     rax, [rsp+1A8h+var_108]
                mov     [rsp+1A8h+var_180], rax
                mov     dword ptr [rsp+1A8h+var_188], edi
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140205AA0
                mov     r14d, [rsp+1A8h+var_108]

loc_140612A1E:                          ; CODE XREF: NtQueryInformationToken+1EADF0↓j
                                        ; DATA XREF: .rdata:000000014004C73C↑o
;   __try { // __except at loc_140612A23
                mov     [rbx], r14d
                jmp     short loc_140612A4A
;   } // starts at 140612A1E
; ---------------------------------------------------------------------------

loc_140612A23:                          ; DATA XREF: .rdata:000000014004C73C↑o
;   __except(1) // owned by 140612A1E
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612A4A:                          ; CODE XREF: NtQueryInformationToken+1101↑j
                cmp     r15d, r14d
                jb      loc_140612869

loc_140612A53:                          ; DATA XREF: .rdata:000000014004C74C↑o
;   __try { // __except at loc_140612A84
                lea     rax, [rsp+1A8h+var_108]
                mov     [rsp+1A8h+var_180], rax
                mov     dword ptr [rsp+1A8h+var_188], r15d
                mov     r9, rsi
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [r13+308h]
                call    sub_140205AA0
                mov     ebx, eax
                mov     [rsp+1A8h+var_100], eax
                jmp     short loc_140612AF3
;   } // starts at 140612A53
; ---------------------------------------------------------------------------

loc_140612A84:                          ; DATA XREF: .rdata:000000014004C74C↑o
;   __except(1) // owned by 140612A53
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612AAB:                          ; CODE XREF: NtQueryInformationToken+F43↑j
                                        ; DATA XREF: .rdata:000000014004C75C↑o
;   __try { // __except at loc_140612ACC
                lea     r9, [rsp+1A8h+var_108]
                mov     r8d, r15d
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_140706730
                mov     ebx, eax
                mov     [rsp+1A8h+var_100], eax
                jmp     short loc_140612AF3
;   } // starts at 140612AAB
; ---------------------------------------------------------------------------

loc_140612ACC:                          ; DATA XREF: .rdata:000000014004C75C↑o
;   __except(1) // owned by 140612AAB
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612AF3:                          ; CODE XREF: NtQueryInformationToken+1162↑j
                                        ; NtQueryInformationToken+11AA↑j
                mov     rcx, [r13+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, r13
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612B10:                          ; CODE XREF: NtQueryInformationToken+48C↑j
                movzx   eax, byte ptr [rcx+1]
                lea     r13d, ds:10h[rax*4]
                jmp     loc_140611DB2
; ---------------------------------------------------------------------------

loc_140612B21:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 3
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     rcx, rdi
                call    sub_14030E1F0
                cmp     eax, 1
                jbe     loc_1406137BC
                lea     eax, [rax+rax*2]
                lea     r14d, ds:4[rax*4]

loc_140612B9B:                          ; CODE XREF: NtQueryInformationToken+1EA2↓j
                                        ; DATA XREF: .rdata:000000014004C76C↑o
;   __try { // __except at loc_140612BA0
                mov     [rbx], r14d
                jmp     short loc_140612BC7
;   } // starts at 140612B9B
; ---------------------------------------------------------------------------

loc_140612BA0:                          ; DATA XREF: .rdata:000000014004C76C↑o
;   __except(1) // owned by 140612B9B
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612BC7:                          ; CODE XREF: NtQueryInformationToken+127E↑j
                cmp     r15d, r14d
                jb      loc_140611F93

loc_140612BD0:                          ; DATA XREF: .rdata:000000014004C77C↑o
;   __try { // __except at loc_140612BE0
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140356BF4
                jmp     loc_140611BF0
;   } // starts at 140612BD0
; ---------------------------------------------------------------------------

loc_140612BE0:                          ; DATA XREF: .rdata:000000014004C77C↑o
;   __except(1) // owned by 140612BD0
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612C07:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 37
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r14, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r14+30h]
                call    ExAcquireResourceSharedLite
                mov     rax, [r14+448h]
                test    rax, rax
                jnz     loc_1407FC6C9

loc_140612C75:                          ; CODE XREF: NtQueryInformationToken+1EADAF↓j
                mov     r11d, edi
                mov     r8d, 18h

loc_140612C7E:                          ; CODE XREF: NtQueryInformationToken+1EADC0↓j
                test    r11d, r11d
                jnz     loc_1407FC6E5

loc_140612C87:                          ; CODE XREF: NtQueryInformationToken+1EADE5↓j
                                        ; DATA XREF: .rdata:000000014004C78C↑o
;   __try { // __except at loc_140612C8C
                mov     [rbx], r8d
                jmp     short loc_140612CB3
;   } // starts at 140612C87
; ---------------------------------------------------------------------------

loc_140612C8C:                          ; DATA XREF: .rdata:000000014004C78C↑o
;   __except(1) // owned by 140612C87
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612CB3:                          ; CODE XREF: NtQueryInformationToken+136A↑j
                cmp     r15d, r8d
                jb      loc_14061296A

loc_140612CBC:                          ; DATA XREF: .rdata:000000014004C79C↑o
;   __try { // __except at loc_140612D1B
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rsi], xmm0
                mov     [rsi+10h], rax
                mov     [rsi], r11d
                test    r11d, r11d
                jz      short loc_140612D16
                mov     eax, r11d
                shl     eax, 4
                sub     eax, 10h
                lea     r10, [rsi+18h]
                add     r10, rax
                lea     r9, [rsi+8]
                mov     rdx, [r14+448h]
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rax
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rax
                mov     [rsp+1A8h+var_188], r10
                mov     rdx, [rdx+8]
                mov     ecx, r11d
                call    RtlCopySidAndAttributesArray

loc_140612D16:                          ; CODE XREF: NtQueryInformationToken+13AE↑j
                jmp     loc_14061219E
;   } // starts at 140612CBC
; ---------------------------------------------------------------------------

loc_140612D1B:                          ; DATA XREF: .rdata:000000014004C79C↑o
;   __except(1) // owned by 140612CBC
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612D42:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B cases 23,24,26,40,42
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140612D7D:                          ; DATA XREF: .rdata:000000014004C7AC↑o
;   __try { // __except at loc_140612D85
                mov     dword ptr [rbx], 4
                jmp     short loc_140612D9B
;   } // starts at 140612D7D
; ---------------------------------------------------------------------------

loc_140612D85:                          ; DATA XREF: .rdata:000000014004C7AC↑o
;   __except(1) // owned by 140612D7D
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612D9B:                          ; CODE XREF: NtQueryInformationToken+1463↑j
                cmp     r15d, 4
                jb      loc_1406132C8
                mov     rcx, [rsp+1A8h+var_120]
                cmp     r14d, 17h
                jz      loc_1407FC554
                cmp     r14d, 18h
                jz      loc_1407FC565
                cmp     r14d, 1Ah
                jz      loc_14061336C
                cmp     r14d, 28h ; '('
                jz      loc_1407FC576
                test    dword ptr [rcx+0C8h], 10000h
                jnz     loc_1407FC588

loc_140612DE5:                          ; CODE XREF: NtQueryInformationToken+1A58↓j
                                        ; NtQueryInformationToken+1EAC40↓j ...
;   __try { // __except at loc_140612DEC
                mov     [rsi], edi
                jmp     loc_140611C01
;   } // starts at 140612DE5
; ---------------------------------------------------------------------------

loc_140612DEC:                          ; DATA XREF: .rdata:000000014004C7BC↑o
;   __except(1) // owned by 140612DE5
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612E02:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 13
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r14, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r14+30h]
                call    ExAcquireResourceSharedLite
                mov     rcx, r14
                call    sub_14030E1F0
                mov     [rsp+1A8h+var_104], eax
                lea     r10d, [rax+rax*2]
                shl     r10d, 2
                mov     ecx, [r14+7Ch]
                mov     r11d, ecx
                shl     r11d, 4
                mov     r8d, r11d
                test    ecx, ecx
                jz      short loc_140612EBE
                mov     rdx, [r14+98h]
                mov     r9d, ecx
                xchg    ax, ax
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140612EA0:                          ; CODE XREF: NtQueryInformationToken+159C↓j
                mov     rax, [rdx]
                movzx   ecx, byte ptr [rax+1]
                lea     ecx, ds:0Fh[rcx*4]
                and     ecx, 0FFFFFFF8h
                add     r8d, ecx
                lea     rdx, [rdx+10h]
                sub     r9, 1
                jnz     short loc_140612EA0

loc_140612EBE:                          ; CODE XREF: NtQueryInformationToken+1567↑j
                mov     eax, [r14+80h]
                mov     r12d, eax
                shl     r12d, 4
                mov     r13d, r12d
                mov     ecx, r12d
                test    eax, eax
                jnz     loc_140613A65

loc_140612EDA:                          ; CODE XREF: NtQueryInformationToken+2171↓j
                lea     eax, [rcx+r10]
                lea     ecx, [r8+38h]
                add     ecx, eax

loc_140612EE4:                          ; DATA XREF: .rdata:000000014004C7CC↑o
;   __try { // __except at loc_140612EE8
                mov     [rbx], ecx
                jmp     short loc_140612F0F
;   } // starts at 140612EE4
; ---------------------------------------------------------------------------

loc_140612EE8:                          ; DATA XREF: .rdata:000000014004C7CC↑o
;   __except(1) // owned by 140612EE4
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140612F0F:                          ; CODE XREF: NtQueryInformationToken+15C6↑j
                cmp     r15d, ecx
                jb      loc_14061296A

loc_140612F18:                          ; DATA XREF: .rdata:000000014004C7DC↑o
;   __try { // __except at loc_14061301F
                mov     rax, [r14+18h]
                mov     [rsi+30h], rax
                mov     [rsi+4], r8d
                mov     eax, [r14+7Ch]
                mov     [rsi], eax
                lea     r9, [rsi+38h]
                mov     [rsi+8], r9
                mov     [rsi+14h], r13d
                mov     eax, [r14+80h]
                mov     [rsi+10h], eax
                cmp     dword ptr [r14+80h], 0
                jnz     loc_140612FF8
                mov     [rsi+18h], rdi
                mov     rdi, [rsp+1A8h+var_80]

loc_140612F5A:                          ; CODE XREF: NtQueryInformationToken+16EA↓j
                mov     [rsi+24h], r10d
                mov     eax, [rsp+1A8h+var_104]
                mov     [rsi+20h], eax
                mov     eax, r13d
                mov     ebx, r8d
                add     rax, r9
                add     rbx, rax
                mov     [rsi+28h], rbx
                mov     eax, r11d
                add     rax, r9
                sub     r8d, r11d
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rcx
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rcx
                mov     [rsp+1A8h+var_188], rax
                mov     rdx, [r14+98h]
                mov     ecx, [r14+7Ch]
                call    RtlCopySidAndAttributesArray
                mov     eax, r12d
                add     rax, rdi
                test    rdi, rdi
                jz      short loc_14061300F
                sub     r13d, r12d
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rcx
                lea     rcx, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rcx
                mov     [rsp+1A8h+var_188], rax
                mov     r9, rdi
                mov     r8d, r13d
                mov     rdx, [r14+0A0h]
                mov     ecx, [r14+80h]
                call    RtlCopySidAndAttributesArray
                jmp     short loc_14061300F
; ---------------------------------------------------------------------------

loc_140612FF8:                          ; CODE XREF: NtQueryInformationToken+1628↑j
                mov     edi, r8d
                add     rdi, 7
                and     rdi, 0FFFFFFFFFFFFFFF8h
                add     rdi, r9
                mov     [rsi+18h], rdi
                jmp     loc_140612F5A
; ---------------------------------------------------------------------------

loc_14061300F:                          ; CODE XREF: NtQueryInformationToken+1699↑j
                                        ; NtQueryInformationToken+16D6↑j
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_14021C390
                jmp     loc_14061219E
;   } // starts at 140612F18
; ---------------------------------------------------------------------------

loc_14061301F:                          ; DATA XREF: .rdata:000000014004C7DC↑o
;   __except(1) // owned by 140612F18
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613046:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 44
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r13, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r13+30h]
                call    ExAcquireResourceSharedLite
                mov     r14d, 10h
                mov     rax, [r13+480h]
                test    rax, rax
                jnz     loc_1407FC81E

loc_1406130BA:                          ; CODE XREF: NtQueryInformationToken+1EAF07↓j
                                        ; DATA XREF: .rdata:000000014004C7EC↑o
;   __try { // __except at loc_1406130BF
                mov     [rbx], r14d
                jmp     short loc_1406130E6
;   } // starts at 1406130BA
; ---------------------------------------------------------------------------

loc_1406130BF:                          ; DATA XREF: .rdata:000000014004C7EC↑o
;   __except(1) // owned by 1406130BA
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406130E6:                          ; CODE XREF: NtQueryInformationToken+179D↑j
                cmp     r15d, r14d
                jb      loc_140612869

loc_1406130EF:                          ; DATA XREF: .rdata:000000014004C7FC↑o
;   __try { // __except at loc_140613124
                cmp     qword ptr [r13+480h], 0
                jnz     short loc_140613102
                mov     byte ptr [rsi+8], 0
                mov     [rsi], rdi
                jmp     short loc_140613122
; ---------------------------------------------------------------------------

loc_140613102:                          ; CODE XREF: NtQueryInformationToken+17D7↑j
                mov     byte ptr [rsi+8], 1
                lea     rcx, [rsi+10h]
                mov     [rsi], rcx
                mov     rdx, [r13+480h]
                movzx   r8d, word ptr [rdx+2Ah]
                mov     rdx, [rdx+30h]
                call    memmove

loc_140613122:                          ; CODE XREF: NtQueryInformationToken+17E0↑j
                jmp     short loc_14061314B
;   } // starts at 1406130EF
; ---------------------------------------------------------------------------

loc_140613124:                          ; DATA XREF: .rdata:000000014004C7FC↑o
;   __except(1) // owned by 1406130EF
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061314B:                          ; CODE XREF: NtQueryInformationToken:loc_140613122↑j
                mov     rcx, [r13+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, r13
                call    PsDereferenceSiloContext
                xor     eax, eax
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613168:                          ; CODE XREF: NtQueryInformationToken+A47↑j
                movzx   eax, byte ptr [rcx+1]
                lea     r13d, ds:10h[rax*4]
                jmp     loc_14061236D
; ---------------------------------------------------------------------------

loc_140613179:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 2
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     eax, [rdi+7Ch]
                mov     r8d, eax
                shl     r8d, 4
                sub     r8d, 8
                cmp     eax, 1
                jbe     short loc_140613219
                mov     rdx, [rdi+98h]
                add     rdx, 10h
                lea     r9d, [rax-1]
                nop     dword ptr [rax+00000000h]

loc_140613200:                          ; CODE XREF: NtQueryInformationToken+18F7↓j
                mov     rax, [rdx]
                movzx   ecx, byte ptr [rax+1]
                lea     r8d, [r8+rcx*4]
                add     r8d, 8
                lea     rdx, [rdx+10h]
                sub     r9, 1
                jnz     short loc_140613200

loc_140613219:                          ; CODE XREF: NtQueryInformationToken+18C8↑j
                                        ; DATA XREF: .rdata:000000014004C80C↑o
;   __try { // __except at loc_14061321E
                mov     [rbx], r8d
                jmp     short loc_140613245
;   } // starts at 140613219
; ---------------------------------------------------------------------------

loc_14061321E:                          ; DATA XREF: .rdata:000000014004C80C↑o
;   __except(1) // owned by 140613219
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613245:                          ; CODE XREF: NtQueryInformationToken+18FC↑j
                cmp     r15d, r8d
                jb      loc_140611F93

loc_14061324E:                          ; DATA XREF: .rdata:000000014004C81C↑o
;   __try { // __except at loc_1406132A1
                mov     eax, [rdi+7Ch]
                dec     eax
                mov     [rsi], eax
                mov     ecx, [rdi+7Ch]
                mov     eax, ecx
                shl     eax, 4
                sub     eax, 20h ; ' '
                lea     r10, [rsi+18h]
                add     r10, rax
                lea     r9, [rsi+8]
                mov     rdx, [rdi+98h]
                add     rdx, 10h
                dec     ecx
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rax
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rax
                mov     [rsp+1A8h+var_188], r10
                call    RtlCopySidAndAttributesArray
                jmp     loc_140611BF0
;   } // starts at 14061324E
; ---------------------------------------------------------------------------

loc_1406132A1:                          ; DATA XREF: .rdata:000000014004C81C↑o
;   __except(1) // owned by 14061324E
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406132C8:                          ; CODE XREF: NtQueryInformationToken+17E↑j
                                        ; NtQueryInformationToken+358↑j ...
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, 0C0000023h
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406132DF:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 15
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_14061331A:                          ; DATA XREF: .rdata:000000014004C82C↑o
;   __try { // __except at loc_140613322
                mov     dword ptr [rbx], 4
                jmp     short loc_140613327
;   } // starts at 14061331A
; ---------------------------------------------------------------------------

loc_140613322:                          ; DATA XREF: .rdata:000000014004C82C↑o
;   __except(1) // owned by 14061331A
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613327:                          ; CODE XREF: NtQueryInformationToken+1A00↑j
                cmp     r15d, 4
                jb      loc_140611FA9

loc_140613331:                          ; DATA XREF: .rdata:000000014004C83C↑o
;   __try { // __except at loc_140613356
                mov     rcx, [rsp+1A8h+var_120]
                mov     eax, [rcx+0C8h]
                test    al, 40h
                jnz     short loc_140613348
                mov     r10d, edi
                jmp     short loc_14061334E
; ---------------------------------------------------------------------------

loc_140613348:                          ; CODE XREF: NtQueryInformationToken+1A21↑j
                mov     r10d, 1

loc_14061334E:                          ; CODE XREF: NtQueryInformationToken+1A26↑j
                mov     [rsi], r10d
                jmp     loc_140611C01
;   } // starts at 140613331
; ---------------------------------------------------------------------------

loc_140613356:                          ; DATA XREF: .rdata:000000014004C83C↑o
;   __except(1) // owned by 140613331
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061336C:                          ; CODE XREF: NtQueryInformationToken+14A5↑j
                mov     edi, [rcx+0C8h]
                shr     edi, 0Ch
                and     edi, 1
                jmp     loc_140612DE5
; ---------------------------------------------------------------------------

loc_14061337D:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                mov     [rsp+1A8h+var_D8], edi ; jumptable 0000000140611A3B case 22
                mov     [rsp+1A8h+var_E0], edi
                mov     [rsp+1A8h+var_E4], edi
                mov     [rsp+1A8h+var_E8], edi
                mov     [rsp+1A8h+var_EC], edi
                mov     [rsp+1A8h+var_F0], edi
                mov     [rsp+1A8h+var_F4], edi
                lea     rax, [rsp+1A8h+var_118]
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                lea     rax, [rsp+1A8h+var_F4]
                mov     [rsp+1A8h+var_148], rax
                lea     rax, [rsp+1A8h+var_F0]
                mov     [rsp+1A8h+var_150], rax
                lea     rax, [rsp+1A8h+var_EC]
                mov     [rsp+1A8h+var_158], rax
                lea     rax, [rsp+1A8h+var_E8]
                mov     [rsp+1A8h+var_160], rax
                lea     rax, [rsp+1A8h+var_E4]
                mov     [rsp+1A8h+var_168], rax
                lea     rax, [rsp+1A8h+var_E0]
                mov     [rsp+1A8h+var_170], rax
                lea     rax, [rsp+1A8h+var_DC]
                mov     [rsp+1A8h+var_178], rax
                lea     rax, [rsp+1A8h+var_D8]
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_D4]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_D0]
                mov     r14, [rsp+1A8h+var_118]
                mov     r8, r14
                movzx   r12d, [rsp+1A8h+var_128]
                movzx   edx, r12b
                mov     rcx, rdi
                call    sub_1406B70B8
                nop

loc_1406134AA:                          ; DATA XREF: .rdata:000000014004C84C↑o
;   __try { // __except at loc_1406134AE
                mov     [rbx], eax
                jmp     short loc_1406134D5
;   } // starts at 1406134AA
; ---------------------------------------------------------------------------

loc_1406134AE:                          ; DATA XREF: .rdata:000000014004C84C↑o
;   __except(1) // owned by 1406134AA
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406134D5:                          ; CODE XREF: NtQueryInformationToken+1B8C↑j
                cmp     r15d, eax
                jb      loc_140611F93

loc_1406134DE:                          ; DATA XREF: .rdata:000000014004C85C↑o
;   __try { // __except at loc_140613566
                mov     [rsp+1A8h+var_138], r14
                mov     [rsp+1A8h+var_140], r12b
                mov     eax, [rsp+1A8h+var_F4]
                mov     dword ptr [rsp+1A8h+var_148], eax
                mov     eax, [rsp+1A8h+var_F0]
                mov     dword ptr [rsp+1A8h+var_150], eax
                mov     eax, [rsp+1A8h+var_EC]
                mov     dword ptr [rsp+1A8h+var_158], eax
                mov     eax, [rsp+1A8h+var_E8]
                mov     dword ptr [rsp+1A8h+var_160], eax
                mov     eax, [rsp+1A8h+var_E4]
                mov     dword ptr [rsp+1A8h+var_168], eax
                mov     eax, [rsp+1A8h+var_E0]
                mov     dword ptr [rsp+1A8h+var_170], eax
                mov     eax, [rsp+1A8h+var_DC]
                mov     dword ptr [rsp+1A8h+var_178], eax
                mov     eax, [rsp+1A8h+var_D8]
                mov     dword ptr [rsp+1A8h+var_180], eax
                mov     eax, [rsp+1A8h+var_D4]
                mov     dword ptr [rsp+1A8h+var_188], eax
                mov     r9d, [rsp+1A8h+var_D0]
                mov     r8d, r15d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1406B6D30
                jmp     loc_140611BF0
;   } // starts at 1406134DE
; ---------------------------------------------------------------------------

loc_140613566:                          ; DATA XREF: .rdata:000000014004C85C↑o
;   __except(1) // owned by 1406134DE
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_14061358D:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 30
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                mov     eax, [rdi+320h]
                mov     r8d, eax
                shl     r8d, 4
                add     r8d, 8
                test    eax, eax
                jz      short loc_140613629
                mov     rdx, [rdi+318h]
                mov     r9d, eax
                nop     word ptr [rax+rax+00h]

loc_140613610:                          ; CODE XREF: NtQueryInformationToken+1D07↓j
                mov     rax, [rdx]
                movzx   ecx, byte ptr [rax+1]
                lea     r8d, [r8+rcx*4]
                add     r8d, 8
                lea     rdx, [rdx+10h]
                sub     r9, 1
                jnz     short loc_140613610

loc_140613629:                          ; CODE XREF: NtQueryInformationToken+1CDE↑j
                                        ; DATA XREF: .rdata:000000014004C86C↑o
;   __try { // __except at loc_14061362E
                mov     [rbx], r8d
                jmp     short loc_140613655
;   } // starts at 140613629
; ---------------------------------------------------------------------------

loc_14061362E:                          ; DATA XREF: .rdata:000000014004C86C↑o
;   __except(1) // owned by 140613629
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613655:                          ; CODE XREF: NtQueryInformationToken+1D0C↑j
                cmp     r15d, r8d
                jb      loc_140611F93

loc_14061365E:                          ; DATA XREF: .rdata:000000014004C87C↑o
;   __try { // __except at loc_1406136AC
                mov     eax, [rdi+320h]
                mov     [rsi], eax
                mov     ecx, [rdi+320h]
                mov     eax, ecx
                shl     eax, 4
                lea     rdx, [rsi+8]
                add     rdx, rax
                lea     r9, [rsi+8]
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rax
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rax
                mov     [rsp+1A8h+var_188], rdx
                mov     rdx, [rdi+318h]
                call    RtlCopySidAndAttributesArray
                jmp     loc_140611BF0
;   } // starts at 14061365E
; ---------------------------------------------------------------------------

loc_1406136AC:                          ; DATA XREF: .rdata:000000014004C87C↑o
;   __except(1) // owned by 14061365E
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406136D3:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                mov     [rsp+1A8h+var_C0], rdi ; jumptable 0000000140611A3B case 19
                mov     [rsp+1A8h+var_C8], rdi
                mov     [rsp+1A8h+var_B8], rdi
                mov     [rsp+1A8h+var_64], edi
                mov     [rsp+1A8h+var_4C], edi
                lea     rax, [rsp+1A8h+var_118]
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     r13d, 8
                mov     edx, r13d
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140613738:                          ; DATA XREF: .rdata:000000014004C88C↑o
;   __try { // __except at loc_14061373D
                mov     [rbx], r13d
                jmp     short loc_140613753
;   } // starts at 140613738
; ---------------------------------------------------------------------------

loc_14061373D:                          ; DATA XREF: .rdata:000000014004C88C↑o
;   __except(1) // owned by 140613738
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613753:                          ; CODE XREF: NtQueryInformationToken+1E1B↑j
                cmp     r15d, 8
                jnz     loc_1407FC455
                movzx   edx, r12b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                neg     al
                sbb     ebx, ebx
                call    sub_140206DA0
                test    al, al
                jnz     loc_1407FC46C
                mov     r14, [rsp+1A8h+var_120]
                mov     rdx, [r14+0D8h]
                lea     rcx, [rdx+10h]
                lea     r8, [rsp+1A8h+var_C0]
                mov     rdx, [rdx+0A0h]
                call    sub_1406B772C
                mov     r15d, eax
                test    eax, eax
                jns     short loc_1406137C7

loc_1406137AC:                          ; CODE XREF: NtQueryInformationToken+1F2E↓j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, r15d
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406137BC:                          ; CODE XREF: NtQueryInformationToken+126A↑j
                mov     r14d, 10h
                jmp     loc_140612B9B
; ---------------------------------------------------------------------------

loc_1406137C7:                          ; CODE XREF: NtQueryInformationToken+1E8A↑j
                mov     [rsp+1A8h+var_68], 30h ; '0'
                mov     [rsp+1A8h+var_60], rdi
                test    r12b, r12b
                jz      loc_1407FC4AD
                mov     [rsp+1A8h+var_50], edi

loc_1406137EA:                          ; CODE XREF: NtQueryInformationToken+1EAB98↓j
                mov     [rsp+1A8h+var_58], rdi
                xorps   xmm0, xmm0
                movdqu  [rsp+1A8h+var_48], xmm0
                lea     rax, [rsp+1A8h+var_B8]
                mov     [rsp+1A8h+var_170], rax
                mov     byte ptr [rsp+1A8h+var_178], 0
                mov     byte ptr [rsp+1A8h+var_180], 0
                mov     r10d, 1
                mov     dword ptr [rsp+1A8h+var_188], r10d
                lea     r9d, [rbx+2]
                xor     r8d, r8d
                lea     rdx, [rsp+1A8h+var_68]
                mov     rbx, [rsp+1A8h+var_C0]
                mov     rcx, [rbx+30h]
                call    sub_14061E3A0
                mov     r15d, eax
                mov     rcx, rbx
                call    sub_14020203C
                test    r15d, r15d
                js      loc_1406137AC
                lea     rax, [rsp+1A8h+var_C8]
                mov     [rsp+1A8h+var_180], rax
                mov     [rsp+1A8h+var_188], rdi
                xor     r9d, r9d
                xor     edx, edx
                mov     r8d, 0F01FFh
                mov     rcx, [rsp+1A8h+var_B8]
                call    ObInsertObject
                mov     ebx, eax
                test    eax, eax
                js      loc_140613B62

loc_140613888:                          ; DATA XREF: .rdata:000000014004C89C↑o
;   __try { // __except at loc_140613898
                mov     rax, [rsp+1A8h+var_C8]
                mov     [rsi], rax
                jmp     loc_1406121AC
;   } // starts at 140613888
; ---------------------------------------------------------------------------

loc_140613898:                          ; DATA XREF: .rdata:000000014004C89C↑o
;   __except(1) // owned by 140613888
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+1A8h+var_C8]
                call    NtClose
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406138BB:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 28
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r14, [rsp+1A8h+var_120]
                mov     dl, 1
                mov     rcx, [r14+30h]
                call    ExAcquireResourceSharedLite
                mov     edx, edi
                mov     r9d, [r14+7Ch]
                test    r9d, r9d
                jz      short loc_14061395B
                mov     r10, [r14+98h]
                nop     dword ptr [rax+rax+00h]

loc_140613930:                          ; CODE XREF: NtQueryInformationToken+2030↓j
                mov     r8d, edx
                mov     eax, edx
                add     rax, rax
                mov     ecx, [r10+rax*8+8]
                and     ecx, 0C0000000h
                cmp     ecx, 0C0000000h
                jz      short loc_140613954
                inc     edx
                cmp     edx, r9d
                jb      short loc_140613930
                jmp     short loc_14061395B
; ---------------------------------------------------------------------------

loc_140613954:                          ; CODE XREF: NtQueryInformationToken+2029↑j
                add     r8, r8
                mov     rdi, [r10+r8*8]

loc_14061395B:                          ; CODE XREF: NtQueryInformationToken+2002↑j
                                        ; NtQueryInformationToken+2032↑j
                test    rdi, rdi
                jz      loc_1407FC653
                mov     r8d, edx
                shl     r8, 4
                mov     rax, [r14+98h]
                mov     rcx, [r8+rax]
                movzx   eax, byte ptr [rcx+1]
                lea     eax, ds:20h[rax*4]

loc_140613981:                          ; DATA XREF: .rdata:000000014004C8AC↑o
;   __try { // __except at loc_140613985
                mov     [rbx], eax
                jmp     short loc_1406139AC
;   } // starts at 140613981
; ---------------------------------------------------------------------------

loc_140613985:                          ; DATA XREF: .rdata:000000014004C8AC↑o
;   __except(1) // owned by 140613981
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_1406139AC:                          ; CODE XREF: NtQueryInformationToken+2063↑j
                cmp     r15d, eax
                jb      loc_14061296A

loc_1406139B5:                          ; DATA XREF: .rdata:000000014004C8BC↑o
;   __try { // __except at loc_140613A0C
                mov     r10d, 1
                mov     [rsi], r10d
                lea     rcx, [rsi+18h]
                mov     rdx, [r14+98h]
                add     rdx, r8
                lea     r9, [rsi+8]
                mov     rax, [rdx]
                movzx   r8d, byte ptr [rax+1]
                lea     r8d, ds:8[r8*4]
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_178], rax
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_180], rax
                mov     [rsp+1A8h+var_188], rcx
                mov     ecx, r10d
                call    RtlCopySidAndAttributesArray
                jmp     loc_14061219E
;   } // starts at 1406139B5
; ---------------------------------------------------------------------------

loc_140613A0C:                          ; DATA XREF: .rdata:000000014004C8BC↑o
;   __except(1) // owned by 1406139B5
                mov     edi, eax
                mov     rbx, [rsp+1A8h+var_120]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613A33:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: .rdata:000000014004C8CC↑o ...
;   __try { // __except at loc_140613A3B ; jumptable 0000000140611A3B case 47
                mov     dword ptr [rbx], 4
                jmp     short loc_140613A40
;   } // starts at 140613A33
; ---------------------------------------------------------------------------

loc_140613A3B:                          ; DATA XREF: .rdata:000000014004C8CC↑o
;   __except(1) // owned by 140613A33
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613A40:                          ; CODE XREF: NtQueryInformationToken+2119↑j
                cmp     r15d, 4
                jb      loc_140611FA9

loc_140613A4A:                          ; DATA XREF: .rdata:000000014004C8DC↑o
;   __try { // __except at loc_140613A60
                movzx   edx, r12b
                mov     rcx, r10
                call    sub_140363940
                movzx   eax, al
                mov     [rsi], eax
                jmp     loc_140611C06
;   } // starts at 140613A4A
; ---------------------------------------------------------------------------

loc_140613A60:                          ; DATA XREF: .rdata:000000014004C8DC↑o
;   __except(1) // owned by 140613A4A
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613A65:                          ; CODE XREF: NtQueryInformationToken+15B4↑j
                mov     rdx, [r14+0A0h]
                mov     r9, rax
                nop

loc_140613A70:                          ; CODE XREF: NtQueryInformationToken+216F↓j
                mov     rax, [rdx]
                movzx   ecx, byte ptr [rax+1]
                lea     ecx, ds:0Fh[rcx*4]
                and     ecx, 0FFFFFFF8h
                add     r13d, ecx
                mov     ecx, r13d
                lea     rdx, [rdx+10h]
                sub     r9, 1
                jnz     short loc_140613A70
                jmp     loc_140612EDA
; ---------------------------------------------------------------------------

loc_140613A96:                          ; CODE XREF: NtQueryInformationToken+B23↑j
                call    PsDereferenceSiloContext

def_140611A3B:                          ; CODE XREF: NtQueryInformationToken+102↑j
                                        ; NtQueryInformationToken+11B↑j
                                        ; DATA XREF: ...
                mov     eax, 0C0000003h ; jumptable 0000000140611A3B default case, cases 8,14,35,36,38,45,46
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613AA5:                          ; CODE XREF: NtQueryInformationToken+BE5↑j
                mov     rdx, [rdi+0A0h]
                mov     r9, rax
                nop

loc_140613AB0:                          ; CODE XREF: NtQueryInformationToken+21A7↓j
                mov     rax, [rdx]
                movzx   ecx, byte ptr [rax+1]
                lea     r8d, [r8+rcx*4]
                add     r8d, 8
                lea     rdx, [rdx+10h]
                sub     r9, 1
                jnz     short loc_140613AB0
                jmp     loc_14061250B
; ---------------------------------------------------------------------------

loc_140613ACE:                          ; CODE XREF: NtQueryInformationToken+11B↑j
                                        ; DATA XREF: NtQueryInformationToken:jpt_140611A3B↓o
                lea     rax, [rsp+1A8h+var_118] ; jumptable 0000000140611A3B case 27
                mov     [rsp+1A8h+var_180], rax
                lea     rax, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_188], rax
                lea     r9, [rsp+1A8h+var_120]
                movzx   r8d, r12b
                mov     edx, 8
                mov     rcx, r10
                call    sub_1402164D0
                test    eax, eax
                js      loc_140613C30

loc_140613B09:                          ; DATA XREF: .rdata:000000014004C8EC↑o
;   __try { // __except at loc_140613B11
                mov     dword ptr [rbx], 4
                jmp     short loc_140613B27
;   } // starts at 140613B09
; ---------------------------------------------------------------------------

loc_140613B11:                          ; DATA XREF: .rdata:000000014004C8EC↑o
;   __except(1) // owned by 140613B09
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613B27:                          ; CODE XREF: NtQueryInformationToken+21EF↑j
                cmp     r15d, 4
                jb      loc_1406132C8

loc_140613B31:                          ; DATA XREF: .rdata:000000014004C8FC↑o
;   __try { // __except at loc_140613B4C
                mov     rdx, rsi
                mov     rcx, [rsp+1A8h+var_120]
                call    sub_14030E368
                mov     ebx, eax
                mov     [rsp+1A8h+var_100], eax
                jmp     short loc_140613B65
;   } // starts at 140613B31
; ---------------------------------------------------------------------------

loc_140613B4C:                          ; DATA XREF: .rdata:000000014004C8FC↑o
;   __except(1) // owned by 140613B31
                mov     ebx, eax
                mov     rcx, [rsp+1A8h+var_120]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------

loc_140613B62:                          ; CODE XREF: NtQueryInformationToken+1F62↑j
                mov     rcx, r14

loc_140613B65:                          ; CODE XREF: NtQueryInformationToken+222A↑j
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140613C30
; ---------------------------------------------------------------------------
                align 4
jpt_140611A3B   dd offset loc_140613179 - 140000000h
                                        ; DATA XREF: NtQueryInformationToken+111↑r
                dd offset loc_140612B21 - 140000000h ; jump table for switch statement
                dd offset loc_1406125B5 - 140000000h
                dd offset loc_140611FB3 - 140000000h
                dd offset loc_140612099 - 140000000h
                dd offset loc_1407FC242 - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset loc_1406123F9 - 140000000h
                dd offset loc_140611E36 - 140000000h
                dd offset loc_140612494 - 140000000h
                dd offset loc_140611A41 - 140000000h
                dd offset loc_140612E02 - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset loc_1406132DF - 140000000h
                dd offset loc_1407FC2CF - 140000000h
                dd offset loc_1407FC3C4 - 140000000h
                dd offset loc_1406126B5 - 140000000h
                dd offset loc_1406136D3 - 140000000h
                dd offset loc_140612889 - 140000000h
                dd offset loc_1407FC4BD - 140000000h
                dd offset loc_14061337D - 140000000h
                dd offset loc_140612D42 - 140000000h
                dd offset loc_140612D42 - 140000000h
                dd offset loc_1406121BB - 140000000h
                dd offset loc_140612D42 - 140000000h
                dd offset loc_140613ACE - 140000000h
                dd offset loc_1406138BB - 140000000h
                dd offset loc_140611CA9 - 140000000h
                dd offset loc_14061358D - 140000000h
                dd offset loc_140611D40 - 140000000h
                dd offset loc_1407FC592 - 140000000h
                dd offset loc_140612771 - 140000000h
                dd offset loc_140612771 - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset loc_140612C07 - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset loc_14061298A - 140000000h
                dd offset loc_140612D42 - 140000000h
                dd offset loc_1406122E1 - 140000000h
                dd offset loc_140612D42 - 140000000h
                dd offset loc_1407FC74E - 140000000h
                dd offset loc_140613046 - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset def_140611A3B - 140000000h
                dd offset loc_140613A33 - 140000000h
                dd offset loc_1407FC71D - 140000000h
; ---------------------------------------------------------------------------

loc_140613C30:                          ; CODE XREF: NtQueryInformationToken:loc_140611A02↑j
                                        ; NtQueryInformationToken+156↑j ...
                lea     r11, [rsp+1A8h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; } // starts at 140611920
NtQueryInformationToken endp

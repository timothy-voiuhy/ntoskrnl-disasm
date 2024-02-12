NtSetInformationThread proc near        ; DATA XREF: .rdata:0000000140054A1C↑o
                                        ; .pdata:00000001400FEF7C↑o ...

var_258         = dword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_238         = qword ptr -238h
var_230         = dword ptr -230h
var_22C         = byte ptr -22Ch
var_22B         = byte ptr -22Bh
var_22A         = byte ptr -22Ah
var_224         = dword ptr -224h
var_220         = byte ptr -220h
var_21C         = dword ptr -21Ch
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = dword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = dword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = xmmword ptr -1E0h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = xmmword ptr -1A8h
var_198         = dword ptr -198h
var_194         = dword ptr -194h
var_190         = dword ptr -190h
var_18C         = dword ptr -18Ch
var_188         = dword ptr -188h
var_184         = dword ptr -184h
var_180         = dword ptr -180h
var_17C         = dword ptr -17Ch
var_178         = dword ptr -178h
var_170         = qword ptr -170h
var_158         = qword ptr -158h
var_148         = xmmword ptr -148h
var_138         = dword ptr -138h
var_130         = xmmword ptr -130h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = xmmword ptr -100h
var_E8          = byte ptr -0E8h
var_48          = qword ptr -48h

; FUNCTION CHUNK AT 00000001407E67B0 SIZE 000000E3 BYTES
; FUNCTION CHUNK AT 00000001408059AE SIZE 0000094E BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 240h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+278h+var_48], rax
                mov     esi, r9d
                mov     rdi, r8
                mov     r10, rcx
                mov     [rsp+278h+var_210], rcx
                xor     ebx, ebx
                mov     [rsp+278h+var_238], rbx
                xorps   xmm0, xmm0
                movups  [rsp+278h+var_100], xmm0
                mov     [rsp+278h+var_200], ebx
                mov     [rsp+278h+var_1F0], ebx
                mov     [rsp+278h+var_218], rbx
                mov     [rsp+278h+var_170], rbx
                xor     eax, eax
                movups  [rsp+278h+var_1E0], xmm0
                mov     [rsp+278h+var_1D0], rax
                mov     [rsp+278h+var_224], ebx
                mov     [rsp+278h+var_1C8], rbx
                movups  [rsp+278h+var_1A8], xmm0
                mov     [rsp+278h+var_1B8], rbx
                xorps   xmm1, xmm1
                movups  [rsp+278h+var_130], xmm1
                mov     [rsp+278h+var_120], rax
                mov     r13, gs:188h
                mov     [rsp+278h+var_1F8], r13
                movzx   r12d, byte ptr [r13+232h]
                test    r12b, r12b
                jz      loc_140642A11

loc_140642120:                          ; DATA XREF: .rdata:0000000140054804↑o
;   __try { // __except at loc_1406421C5
                cmp     edx, 27h ; '''
                jl      short loc_140642169
                cmp     edx, 30h ; '0'
                jge     short loc_140642169

def_140642198:                          ; CODE XREF: NtSetInformationThread+111↓j
                                        ; NtSetInformationThread+119↓j
                lea     r8, cs:140000000h ; jumptable 0000000140642198 default case

loc_140642131:                          ; CODE XREF: NtSetInformationThread+138↓j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642198↓o
                mov     r14d, 3         ; jumptable 0000000140642198 cases 2,3,5,6,8-29,33,35-37,39-47,49
                mov     eax, r14d

loc_14064213A:                          ; CODE XREF: NtSetInformationThread+147↓j
                                        ; NtSetInformationThread+152↓j
                test    r9d, r9d
                jz      short loc_1406421B9
                test    rax, rdi
                jnz     short loc_1406421B4
                lea     rcx, [rdi+rsi]
                mov     r15, 7FFFFFFF0000h
                cmp     rcx, r15
                ja      short loc_14064215C
                cmp     rcx, rdi
                jnb     short loc_1406421C3

loc_14064215C:                          ; CODE XREF: NtSetInformationThread+F5↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406421C3
; ---------------------------------------------------------------------------

loc_140642169:                          ; CODE XREF: NtSetInformationThread+C3↑j
                                        ; NtSetInformationThread+C8↑j
                cmp     edx, 7
                jge     short loc_140642173
                cmp     edx, 5
                jge     short def_140642198 ; jumptable 0000000140642198 default case

loc_140642173:                          ; CODE XREF: NtSetInformationThread+10C↑j
                lea     eax, [rdx-2]    ; switch 48 cases
                cmp     eax, 2Fh
                ja      short def_140642198 ; jumptable 0000000140642198 default case
                cdqe
                lea     r8, cs:140000000h
                movzx   eax, ds:(byte_140643084 - 140000000h)[r8+rax]
                mov     ecx, ds:(jpt_140642198 - 140000000h)[r8+rax*4]
                add     rcx, r8
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14064219E:                          ; CODE XREF: NtSetInformationThread+138↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642198↓o
                mov     eax, 7          ; jumptable 0000000140642198 cases 4,30,31,34,38,48
                lea     r14d, [rax-4]
                jmp     short loc_14064213A
; ---------------------------------------------------------------------------

loc_1406421A9:                          ; CODE XREF: NtSetInformationThread+138↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642198↓o
                mov     rax, rbx        ; jumptable 0000000140642198 cases 7,32
                mov     r14d, 3
                jmp     short loc_14064213A
; ---------------------------------------------------------------------------

loc_1406421B4:                          ; CODE XREF: NtSetInformationThread+E2↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406421B9:                          ; CODE XREF: NtSetInformationThread+DD↑j
                mov     r15, 7FFFFFFF0000h

loc_1406421C3:                          ; CODE XREF: NtSetInformationThread+FA↑j
                                        ; NtSetInformationThread+107↑j
                jmp     short loc_1406421CA
;   } // starts at 140642120
; ---------------------------------------------------------------------------

loc_1406421C5:                          ; DATA XREF: .rdata:0000000140054804↑o
;   __except(1) // owned by 140642120
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_1406421CA:                          ; CODE XREF: NtSetInformationThread:loc_1406421C3↑j
                                        ; NtSetInformationThread+9C8↓j
                cmp     edx, 2Ch ; ','
                jz      loc_140642253
                cmp     edx, 5
                jnz     loc_14064233A
                cmp     esi, 8
                jnz     loc_1408062F2

loc_1406421E5:                          ; DATA XREF: .rdata:0000000140054814↑o
;   __try { // __except at loc_1406421F2
                mov     rdi, [rdi]
                mov     [rsp+278h+var_108], rdi
                jmp     short loc_1406421F7
;   } // starts at 1406421E5
; ---------------------------------------------------------------------------

loc_1406421F2:                          ; DATA XREF: .rdata:0000000140054814↑o
;   __except(1) // owned by 1406421E5
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_1406421F7:                          ; CODE XREF: NtSetInformationThread+190↑j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 80h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     rdx, rdi
                mov     rcx, [rsp+278h+var_238]
                call    PsAssignImpersonationToken

loc_14064223B:                          ; CODE XREF: NtSetInformationThread+1C3F83↓j
                mov     ebx, eax
                mov     edx, 79517350h
                mov     rcx, [rsp+278h+var_238]
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642253:                          ; CODE XREF: NtSetInformationThread+16D↑j
                cmp     r10, 0FFFFFFFFFFFFFFFEh
                jnz     loc_140806264   ; jumptable 0000000140642354 case 9
                cmp     esi, 8
                jnz     loc_1408062F2

loc_140642266:                          ; DATA XREF: .rdata:0000000140054824↑o
;   __try { // __except at loc_140642273
                mov     rdi, [rdi]
                mov     [rsp+278h+var_1B8], rdi
                jmp     short loc_140642278
;   } // starts at 140642266
; ---------------------------------------------------------------------------

loc_140642273:                          ; DATA XREF: .rdata:0000000140054824↑o
;   __except(1) // owned by 140642266
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642278:                          ; CODE XREF: NtSetInformationThread+211↑j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, 0FFFFFFFFFFFFFFFEh
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      short loc_14064230A
                mov     [rsp+278h+var_1B0], rbx
                test    rdi, rdi
                jz      short loc_140642330
                lea     rdx, [rsp+278h+var_1B0]
                lea     rcx, [rsp+278h+var_1B8]
                call    sub_1406C7FB0
                mov     esi, eax
                test    eax, eax
                js      short loc_1406422FB
                mov     rcx, r13
                call    sub_140234C00
                mov     rcx, [rsp+278h+var_1B0]
                call    sub_140233220
                mov     rcx, [rsp+278h+var_1B0]
                call    PsDereferenceSiloContext

loc_1406422FB:                          ; CODE XREF: NtSetInformationThread+277↑j
                                        ; NtSetInformationThread+2D8↓j ...
                mov     rcx, [rsp+278h+var_238]

loc_140642300:                          ; CODE XREF: NtSetInformationThread+3A1↓j
                                        ; NtSetInformationThread+4C2↓j ...
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag

loc_14064230A:                          ; CODE XREF: NtSetInformationThread+24F↑j
                                        ; NtSetInformationThread+78E↓j ...
                mov     eax, esi

loc_14064230C:                          ; CODE XREF: NtSetInformationThread:loc_1406421C5↑j
                                        ; NtSetInformationThread:loc_1406421F2↑j ...
                mov     rcx, [rsp+278h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 240h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140642330:                          ; CODE XREF: NtSetInformationThread+25C↑j
                mov     rcx, r13
                call    sub_140234C00
                jmp     short loc_1406422FB
; ---------------------------------------------------------------------------

loc_14064233A:                          ; CODE XREF: NtSetInformationThread+176↑j
                add     edx, 0FFFFFFFEh ; switch 49 cases
                cmp     edx, 30h
                ja      def_140642354   ; jumptable 0000000140642354 default case, cases 5,6,8,11,12,16,20,21,23,26-28,35,37,40,41,44,45
                movsxd  rax, edx
                mov     ecx, ds:(jpt_140642354 - 140000000h)[r8+rax*4]
                add     rcx, r8
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14064235A:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 3
                jnz     loc_1408062F2

loc_140642363:                          ; DATA XREF: .rdata:0000000140054834↑o
;   __try { // __except at loc_14064236B
                mov     edi, [rdi]
                mov     [rsp+278h+var_21C], edi
                jmp     short loc_14064236D
;   } // starts at 140642363
; ---------------------------------------------------------------------------

loc_14064236B:                          ; DATA XREF: .rdata:0000000140054834↑o
;   __except(1) // owned by 140642363
                jmp     short loc_14064230C
; ---------------------------------------------------------------------------

loc_14064236D:                          ; CODE XREF: NtSetInformationThread+309↑j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                mov     [rsp+278h+var_230], eax
                test    eax, eax
                js      loc_14064230C
                mov     rbx, [rsp+278h+var_238]
                mov     r8, [rbx+220h]
                lea     eax, [rdi+10h]
                cmp     eax, 20h ; ' '
                ja      loc_140642E2A
                mov     rcx, 10007C001h
                bt      rcx, rax
                jnb     loc_140642E2A

loc_1406423D4:                          ; CODE XREF: NtSetInformationThread+DDF↓j
                                        ; NtSetInformationThread+DED↓j
                mov     rax, [r8+510h]
                mov     [rsp+278h+var_218], rax
                test    rax, rax
                jnz     loc_140642492

loc_1406423E9:                          ; CODE XREF: NtSetInformationThread+43A↓j
                                        ; NtSetInformationThread+1C3981↓j
                mov     edx, [rsp+278h+var_21C]

loc_1406423ED:                          ; CODE XREF: NtSetInformationThread+1C398D↓j
                mov     rbx, [rsp+278h+var_238]
                mov     rcx, rbx
                call    KeSetBasePriorityThread

loc_1406423FA:                          ; CODE XREF: NtSetInformationThread+1C3998↓j
                mov     esi, [rsp+278h+var_230]

loc_1406423FE:                          ; CODE XREF: NtSetInformationThread+D4A↓j
                                        ; NtSetInformationThread+D63↓j ...
                mov     rcx, rbx
                jmp     loc_140642300
; ---------------------------------------------------------------------------

loc_140642406:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 24
                jnz     loc_1408062F2

loc_14064240F:                          ; DATA XREF: .rdata:0000000140054844↑o
;   __try { // __except at loc_14064241A
                mov     edi, [rdi]
                mov     [rsp+278h+var_138], edi
                jmp     short loc_14064241F
;   } // starts at 14064240F
; ---------------------------------------------------------------------------

loc_14064241A:                          ; DATA XREF: .rdata:0000000140054844↑o
;   __except(1) // owned by 14064240F
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_14064241F:                          ; CODE XREF: NtSetInformationThread+3B8↑j
                call    ?do_max_length@?$codecvt@_WDH@std@@MEBAHXZ ; std::codecvt<wchar_t,char,int>::do_max_length(void)
                cmp     edi, eax
                ja      loc_140806264   ; jumptable 0000000140642354 case 9
                call    sub_14026CE60
                cmp     edi, eax
                jb      loc_140806264   ; jumptable 0000000140642354 case 9
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     edx, edi
                mov     rcx, [rsp+278h+var_238]
                call    sub_1402FA864

loc_14064247C:                          ; CODE XREF: NtSetInformationThread+A3E↓j
                                        ; NtSetInformationThread+F01↓j ...
                mov     rcx, [rsp+278h+var_238]

loc_140642481:                          ; CODE XREF: NtSetInformationThread+1C3B5A↓j
                mov     edx, 79517350h

loc_140642486:                          ; CODE XREF: NtSetInformationThread+1C4195↓j
                call    ObfDereferenceObjectWithTag

loc_14064248B:                          ; CODE XREF: NtSetInformationThread+1C3E8B↓j
                                        ; NtSetInformationThread+1C3FD3↓j ...
                xor     eax, eax
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642492:                          ; CODE XREF: NtSetInformationThread+383↑j
                mov     eax, [rax+350h]
                test    al, 20h
                jz      loc_1406423E9
                jmp     loc_1408059D9
; ---------------------------------------------------------------------------

loc_1406424A5:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 25
                jnz     loc_1408062F2

loc_1406424AE:                          ; DATA XREF: .rdata:0000000140054854↑o
;   __try { // __except at loc_1406424B6
                mov     edi, [rdi]
                mov     [rsp+278h+var_21C], edi
                jmp     short loc_1406424BB
;   } // starts at 1406424AE
; ---------------------------------------------------------------------------

loc_1406424B6:                          ; DATA XREF: .rdata:0000000140054854↑o
;   __except(1) // owned by 1406424AE
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_1406424BB:                          ; CODE XREF: NtSetInformationThread+454↑j
                lea     eax, [rdi-1]
                cmp     eax, 1Eh
                ja      loc_140806264   ; jumptable 0000000140642354 case 9
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                test    eax, eax
                js      loc_14064230C
                mov     rbx, [rsp+278h+var_238]
                mov     rax, [rbx+220h]
                cmp     edi, 10h
                jge     loc_140642E00

loc_140642515:                          ; CODE XREF: NtSetInformationThread+DA7↓j
                                        ; NtSetInformationThread+DBF↓j
                mov     edx, edi
                mov     rcx, rbx
                call    KeSetActualBasePriorityThread
                mov     rcx, rbx
                jmp     loc_140642300
; ---------------------------------------------------------------------------

loc_140642527:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                lea     eax, [rsi-4]    ; jumptable 0000000140642354 case 22
                test    eax, 0FFFFFFFBh
                jnz     loc_1408062F2
                cmp     esi, 4
                jnz     loc_140805BBF

loc_14064253E:                          ; DATA XREF: .rdata:0000000140054864↑o
;   __try { // __except at loc_140642549
                mov     edi, [rdi]
                mov     [rsp+278h+var_18C], edi
                jmp     short loc_14064254E
;   } // starts at 14064253E
; ---------------------------------------------------------------------------

loc_140642549:                          ; DATA XREF: .rdata:0000000140054864↑o
;   __except(1) // owned by 14064253E
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_14064254E:                          ; CODE XREF: NtSetInformationThread+4E7↑j
                xor     sil, sil

loc_140642551:                          ; CODE XREF: NtSetInformationThread+1C3B78↓j
                cmp     edi, 4
                jnb     loc_140806264   ; jumptable 0000000140642354 case 9
                cmp     edi, 3
                jnb     loc_140805BDD

loc_140642563:                          ; CODE XREF: NtSetInformationThread+1C3BA3↓j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     rbx, [rsp+278h+var_238]
                cmp     sil, 1
                jz      loc_140805C08

loc_1406425A9:                          ; CODE XREF: NtSetInformationThread+1C3BB6↓j
                                        ; NtSetInformationThread+1C3BCA↓j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1402FA570
                mov     rcx, rbx
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                xor     eax, eax
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_1406425C7:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                mov     [rsp+278h+var_22B], 0 ; jumptable 0000000140642354 case 38
                mov     r14, rbx
                mov     [rsp+278h+var_208], rbx
                mov     [rsp+278h+var_1E8], rbx
                mov     [rsp+278h+var_22C], r14b

loc_1406425E1:                          ; DATA XREF: .rdata:0000000140054894↑o
;   __try { // __finally(loc_1407E6828)
                cmp     esi, 10h
                jnz     loc_140642793
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                mov     esi, eax
                mov     [rsp+278h+var_230], eax
                test    eax, eax
                js      loc_1406427AA
                mov     [rsp+278h+var_22B], 1
                test    r12b, r12b
                jz      loc_140642783

loc_140642635:                          ; DATA XREF: .rdata:0000000140054874↑o
;     __try { // __except at loc_1406426A8
                xorps   xmm0, xmm0
                movups  [rsp+278h+var_148], xmm0
                cmp     rdi, r15
                jnb     short loc_140642693

loc_140642645:                          ; CODE XREF: NtSetInformationThread+636↓j
                mov     eax, [rdi]
                mov     dword ptr [rsp+278h+var_148], eax
                mov     rcx, [rdi+8]
                mov     qword ptr [rsp+278h+var_148+8], rcx
                movaps  xmm0, [rsp+278h+var_148]
                movdqa  [rsp+278h+var_1A8], xmm0
                test    ax, ax
                jz      short loc_14064269D
                test    cl, 1
                jnz     short loc_140642698
                movzx   eax, ax
                lea     rdx, [rax+rcx]
                cmp     rdx, r15
                ja      short loc_140642686
                cmp     rdx, rcx
                jnb     short loc_14064269D

loc_140642686:                          ; CODE XREF: NtSetInformationThread+61F↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14064269D
; ---------------------------------------------------------------------------

loc_140642693:                          ; CODE XREF: NtSetInformationThread+5E3↑j
                mov     rdi, r15
                jmp     short loc_140642645
; ---------------------------------------------------------------------------

loc_140642698:                          ; CODE XREF: NtSetInformationThread+613↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14064269D:                          ; CODE XREF: NtSetInformationThread+60E↑j
                                        ; NtSetInformationThread+624↑j ...
                mov     esi, [rsp+278h+var_230]
                mov     r14, [rsp+278h+var_208]
                jmp     short loc_1406426C0
;     } // starts at 140642635
; ---------------------------------------------------------------------------

loc_1406426A8:                          ; DATA XREF: .rdata:0000000140054874↑o
;   __except(1) // owned by 140642635
                mov     esi, eax
                mov     [rsp+278h+var_230], eax
                mov     r13, [rsp+278h+var_1F8]
                mov     r14, [rsp+278h+var_208]
                jmp     loc_1406427AA
; ---------------------------------------------------------------------------

loc_1406426C0:                          ; CODE XREF: NtSetInformationThread+646↑j
                                        ; NtSetInformationThread+72E↓j
                mov     rdi, qword ptr [rsp+278h+var_1A8]
                test    dil, 1
                jnz     loc_1406427A1
                mov     rax, rdi
                shr     rax, 10h
                cmp     di, ax
                ja      loc_1406427A1
                movzx   r15d, di
                lea     rdx, [r15+10h]
                mov     ecx, 200h
                mov     r8d, 6D4E6854h
                call    ExAllocatePoolWithTag
                mov     r14, rax
                mov     [rsp+278h+var_208], rax
                test    rax, rax
                jz      loc_14064279A
                lea     rax, [rax+10h]
                mov     [r14+8], rax
                mov     [r14], di
                mov     [r14+2], di

loc_14064271C:                          ; DATA XREF: .rdata:0000000140054884↑o
;     __try { // __except at loc_140642731
                mov     r8d, r15d
                mov     rdx, qword ptr [rsp+278h+var_1A8+8]
                mov     rcx, rax
                call    memmove
                jmp     short loc_140642746
;     } // starts at 14064271C
; ---------------------------------------------------------------------------

loc_140642731:                          ; DATA XREF: .rdata:0000000140054884↑o
;   __except(loc_1407E67EC) // owned by 14064271C
                mov     esi, eax
                mov     [rsp+278h+var_230], eax
                mov     r13, [rsp+278h+var_1F8]
                mov     r14, [rsp+278h+var_208]
                jmp     short loc_1406427AA
; ---------------------------------------------------------------------------

loc_140642746:                          ; CODE XREF: NtSetInformationThread+6CF↑j
                mov     rdx, r13
                mov     rdi, [rsp+278h+var_238]
                mov     rcx, rdi
                call    sub_140353FB4
                mov     [rsp+278h+var_22C], 1
                mov     rax, [rdi+610h]
                mov     [rsp+278h+var_1E8], rax
                mov     [rdi+610h], r14
                mov     r14, rbx
                mov     [rsp+278h+var_208], rbx
                mov     rcx, rdi
                call    sub_140682470
                jmp     short loc_1406427AA
; ---------------------------------------------------------------------------

loc_140642783:                          ; CODE XREF: NtSetInformationThread+5CF↑j
                movups  xmm0, xmmword ptr [rdi]
                movups  [rsp+278h+var_1A8], xmm0
                jmp     loc_1406426C0
; ---------------------------------------------------------------------------

loc_140642793:                          ; CODE XREF: NtSetInformationThread+584↑j
                mov     esi, 0C0000004h
                jmp     short loc_1406427A6
; ---------------------------------------------------------------------------

loc_14064279A:                          ; CODE XREF: NtSetInformationThread+6A5↑j
                mov     esi, 0C000009Ah
                jmp     short loc_1406427A6
; ---------------------------------------------------------------------------

loc_1406427A1:                          ; CODE XREF: NtSetInformationThread+66C↑j
                                        ; NtSetInformationThread+67C↑j
                mov     esi, 0C000000Dh

loc_1406427A6:                          ; CODE XREF: NtSetInformationThread+738↑j
                                        ; NtSetInformationThread+73F↑j
                mov     [rsp+278h+var_230], esi
;   } // starts at 1406425E1

loc_1406427AA:                          ; CODE XREF: NtSetInformationThread+5C1↑j
                                        ; NtSetInformationThread+65B↑j ...
                cmp     [rsp+278h+var_22C], 0
                jz      short loc_1406427BE
                mov     rdx, r13
                mov     rcx, [rsp+278h+var_238]
                call    sub_14034F758

loc_1406427BE:                          ; CODE XREF: NtSetInformationThread+74F↑j
                cmp     [rsp+278h+var_22B], 0
                jz      short loc_1406427D4
                mov     edx, 79517350h
                mov     rcx, [rsp+278h+var_238]
                call    ObfDereferenceObjectWithTag

loc_1406427D4:                          ; CODE XREF: NtSetInformationThread+763↑j
                mov     rcx, [rsp+278h+var_1E8]
                test    rcx, rcx
                jz      short loc_1406427EB
                mov     edx, 6D4E6854h
                call    ExFreePoolWithTag

loc_1406427EB:                          ; CODE XREF: NtSetInformationThread+77F↑j
                test    r14, r14
                jz      loc_14064230A
                jmp     loc_140806051
; ---------------------------------------------------------------------------

loc_1406427F9:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 10
                jnz     loc_1408062F2

loc_140642802:                          ; DATA XREF: .rdata:00000001400548A4↑o
;   __try { // __except at loc_14064280C
                mov     r14d, [rdi]
                mov     [rsp+278h+var_200], r14d
                jmp     short loc_140642811
;   } // starts at 140642802
; ---------------------------------------------------------------------------

loc_14064280C:                          ; DATA XREF: .rdata:00000001400548A4↑o
;   __except(1) // owned by 140642802
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642811:                          ; CODE XREF: NtSetInformationThread+7AA↑j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                mov     r12d, eax
                mov     [rsp+278h+var_230], eax
                test    eax, eax
                js      loc_14064230C
                mov     edx, 79517350h
                mov     rdi, [rsp+278h+var_238]
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                cmp     rdi, r13
                jnz     loc_140806264   ; jumptable 0000000140642354 case 9
                mov     rsi, [rdi+220h]
                mov     [rsp+278h+var_1F8], rsi
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1406A2900
                mov     r13d, 14Ch

loc_140642889:                          ; CODE XREF: NtSetInformationThread+855↓j
                mov     [rsp+278h+var_238], rax
                mov     rdi, rax
                test    rax, rax
                jz      loc_140642A09
                lea     rcx, [rax+4F8h]
                call    sub_14024C840
                test    al, al
                jnz     short loc_1406428B7

loc_1406428AA:                          ; CODE XREF: NtSetInformationThread+9A4↓j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406A2900
                jmp     short loc_140642889
; ---------------------------------------------------------------------------

loc_1406428B7:                          ; CODE XREF: NtSetInformationThread+848↑j
                mov     rcx, [rdi+0F0h]
                test    rcx, rcx
                jz      loc_1406429F8

loc_1406428C7:                          ; DATA XREF: .rdata:00000001400548B4↑o
;   __try { // __except at loc_1406429CD
                mov     rdx, [rsi+580h]
                test    rdx, rdx
                jnz     loc_140642983

loc_1406428D7:                          ; CODE XREF: NtSetInformationThread+93E↓j
                xor     al, al

loc_1406428D9:                          ; CODE XREF: NtSetInformationThread+92F↓j
                mov     [rsp+278h+var_22A], al
                lea     r8, [rcx+2000h]
                test    al, al
                cmovz   r8, rbx
                cmp     r14d, 40h ; '@'
                jnb     short loc_140642905
                test    rdx, rdx
                jnz     short loc_140642944

loc_1406428F5:                          ; CODE XREF: NtSetInformationThread+963↓j
                mov     eax, r14d
                mov     [rcx+rax*8+1480h], rbx
                jmp     loc_1406429CB
; ---------------------------------------------------------------------------

loc_140642905:                          ; CODE XREF: NtSetInformationThread+88E↑j
                cmp     r14d, 440h
                jnb     loc_1406429CB
                test    rdx, rdx
                jnz     short loc_140642960

loc_140642917:                          ; CODE XREF: NtSetInformationThread+94E↓j
                mov     rdx, [rcx+1780h]
                mov     [rsp+278h+var_118], rdx
                test    rdx, rdx
                jz      loc_1406429CB
                lea     eax, [r14-40h]
                lea     rax, [rdx+rax*8]
                cmp     rax, r15
                jnb     short loc_1406429B6

loc_14064293C:                          ; CODE XREF: NtSetInformationThread+959↓j
                mov     [rax], rbx
                jmp     loc_1406429CB
; ---------------------------------------------------------------------------

loc_140642944:                          ; CODE XREF: NtSetInformationThread+893↑j
                movzx   eax, word ptr [rdx+8]
                cmp     ax, r13w
                jnz     short loc_1406429BB

loc_14064294E:                          ; CODE XREF: NtSetInformationThread+969↓j
                test    r8, r8
                jz      short loc_1406429CB
                mov     eax, r14d
                mov     [r8+rax*4+0E10h], ebx
                jmp     short loc_1406429CB
; ---------------------------------------------------------------------------

loc_140642960:                          ; CODE XREF: NtSetInformationThread+8B5↑j
                movzx   eax, word ptr [rdx+8]
                cmp     ax, r13w
                jnz     short loc_1406429A6

loc_14064296A:                          ; CODE XREF: NtSetInformationThread+954↓j
                test    r8, r8
                jz      short loc_1406429CB
                mov     edx, [r8+0F94h]
                test    edx, edx
                jz      short loc_1406429CB
                lea     eax, [r14-40h]
                mov     [rdx+rax*4], ebx
                jmp     short loc_1406429CB
; ---------------------------------------------------------------------------

loc_140642983:                          ; CODE XREF: NtSetInformationThread+871↑j
                movzx   eax, word ptr [rdx+8]
                cmp     ax, r13w
                jnz     short loc_140642994

loc_14064298D:                          ; CODE XREF: NtSetInformationThread+944↓j
                mov     al, 1
                jmp     loc_1406428D9
; ---------------------------------------------------------------------------

loc_140642994:                          ; CODE XREF: NtSetInformationThread+92B↑j
                mov     r8d, 1C4h
                cmp     ax, r8w
                jnz     loc_1406428D7
                jmp     short loc_14064298D
; ---------------------------------------------------------------------------

loc_1406429A6:                          ; CODE XREF: NtSetInformationThread+908↑j
                mov     edx, 1C4h
                cmp     ax, dx
                jnz     loc_140642917
                jmp     short loc_14064296A
; ---------------------------------------------------------------------------

loc_1406429B6:                          ; CODE XREF: NtSetInformationThread+8DA↑j
                mov     rax, r15
                jmp     short loc_14064293C
; ---------------------------------------------------------------------------

loc_1406429BB:                          ; CODE XREF: NtSetInformationThread+8EC↑j
                mov     edx, 1C4h
                cmp     ax, dx
                jnz     loc_1406428F5
                jmp     short loc_14064294E
; ---------------------------------------------------------------------------

loc_1406429CB:                          ; CODE XREF: NtSetInformationThread+8A0↑j
                                        ; NtSetInformationThread+8AC↑j ...
                jmp     short loc_1406429F8
;   } // starts at 1406428C7
; ---------------------------------------------------------------------------

loc_1406429CD:                          ; DATA XREF: .rdata:00000001400548B4↑o
;   __except(1) // owned by 1406428C7
                mov     r12d, eax
                mov     [rsp+278h+var_230], eax
                xor     ebx, ebx
                mov     r15, 7FFFFFFF0000h
                mov     r13d, 14Ch
                mov     rdi, [rsp+278h+var_238]
                mov     rsi, [rsp+278h+var_1F8]
                mov     r14d, [rsp+278h+var_200]

loc_1406429F8:                          ; CODE XREF: NtSetInformationThread+861↑j
                                        ; NtSetInformationThread:loc_1406429CB↑j
                lea     rcx, [rdi+4F8h]
                call    sub_14024C380
                jmp     loc_1406428AA
; ---------------------------------------------------------------------------

loc_140642A09:                          ; CODE XREF: NtSetInformationThread+834↑j
                mov     eax, r12d
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642A11:                          ; CODE XREF: NtSetInformationThread+BA↑j
                lea     r8, cs:140000000h
                mov     r14d, 3
                mov     r15, 7FFFFFFF0000h
                jmp     loc_1406421CA
; ---------------------------------------------------------------------------

loc_140642A2D:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 2
                jnz     loc_1408062F2

loc_140642A36:                          ; DATA XREF: .rdata:00000001400548C4↑o
;   __try { // __except at loc_140642A41
                mov     edi, [rdi]
                mov     [rsp+278h+var_198], edi
                jmp     short loc_140642A46
;   } // starts at 140642A36
; ---------------------------------------------------------------------------

loc_140642A41:                          ; DATA XREF: .rdata:00000001400548C4↑o
;   __except(1) // owned by 140642A36
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642A46:                          ; CODE XREF: NtSetInformationThread+9DF↑j
                lea     eax, [rdi-1]
                cmp     eax, 1Eh
                ja      loc_140806264   ; jumptable 0000000140642354 case 9
                cmp     edi, 10h
                jge     loc_1408059AE

loc_140642A5B:                          ; CODE XREF: NtSetInformationThread+1C3974↓j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     edx, edi
                mov     rcx, [rsp+278h+var_238]
                call    KeSetPriorityThread
                jmp     loc_14064247C
; ---------------------------------------------------------------------------

loc_140642AA3:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 13
                jnz     loc_1408062F2

loc_140642AAC:                          ; DATA XREF: .rdata:00000001400548D4↑o
;   __try { // __except at loc_140642AB7
                mov     edi, [rdi]
                mov     [rsp+278h+var_1F0], edi
                jmp     short loc_140642ABC
;   } // starts at 140642AAC
; ---------------------------------------------------------------------------

loc_140642AB7:                          ; DATA XREF: .rdata:00000001400548D4↑o
;   __except(1) // owned by 140642AAC
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642ABC:                          ; CODE XREF: NtSetInformationThread+A55↑j
                cmp     edi, 40h ; '@'
                ja      loc_140806264   ; jumptable 0000000140642354 case 9
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                movzx   edx, dil
                mov     rbx, [rsp+278h+var_238]
                mov     rcx, rbx
                call    KeSetIdealProcessorThread
                movzx   edi, al
                test    dword ptr [rbx+74h], 400h
                jnz     short loc_140642B24
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_14066468C

loc_140642B24:                          ; CODE XREF: NtSetInformationThread+AB7↑j
                mov     edx, 79517350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642B38:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                mov     [rsp+278h+var_248], rbx ; jumptable 0000000140642354 case 29
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 10h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     r14, [rsp+278h+var_238]
                lea     rcx, [r14+4F8h]
                call    sub_14024C840
                mov     rcx, r14
                test    al, al
                jz      loc_140805D36
                movzx   r9d, r12b
                mov     r8d, esi
                mov     rdx, rdi
                call    sub_1406A9F6C
                mov     ebx, eax
                lea     rcx, [r14+4F8h]
                call    sub_14024C380
                mov     edx, 79517350h
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642BBC:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 8          ; jumptable 0000000140642354 case 4
                jnz     loc_1408062F2

loc_140642BC5:                          ; DATA XREF: .rdata:00000001400548E4↑o
;   __try { // __except at loc_140642BD2
                mov     rdi, [rdi]
                mov     qword ptr [rsp+278h+var_100], rdi
                jmp     short loc_140642BD7
;   } // starts at 140642BC5
; ---------------------------------------------------------------------------

loc_140642BD2:                          ; DATA XREF: .rdata:00000001400548E4↑o
;   __except(1) // owned by 140642BC5
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642BD7:                          ; CODE XREF: NtSetInformationThread+B70↑j
                test    rdi, rdi
                jz      loc_140806264   ; jumptable 0000000140642354 case 9
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     r14, [rsp+278h+var_238]
                mov     r15, [r14+220h]
                lea     rcx, [r15+458h]
                call    sub_14024C840
                test    al, al
                jz      loc_140805A84
                mov     rdx, rdi
                mov     rcx, r14
                call    KeSetAffinityThread
                test    rax, rax
                jz      loc_140805A7A

loc_140642C4B:                          ; CODE XREF: NtSetInformationThread+1C3A1F↓j
                lea     rcx, [r15+458h]
                call    sub_14024C380

loc_140642C57:                          ; CODE XREF: NtSetInformationThread+1C3A29↓j
                mov     edx, 79517350h
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642C6B:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 10h        ; jumptable 0000000140642354 case 30
                jnz     loc_1408062F2

loc_140642C74:                          ; DATA XREF: .rdata:00000001400548F4↑o
;   __try { // __except at loc_140642C81
                movups  xmm0, xmmword ptr [rdi]
                movups  [rsp+278h+var_100], xmm0
                jmp     short loc_140642C86
;   } // starts at 140642C74
; ---------------------------------------------------------------------------

loc_140642C81:                          ; DATA XREF: .rdata:00000001400548F4↑o
;   __except(1) // owned by 140642C74
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642C86:                          ; CODE XREF: NtSetInformationThread+C1F↑j
                mov     dl, 1
                lea     rcx, [rsp+278h+var_100]
                call    sub_140378284
                test    al, al
                jz      loc_140806264   ; jumptable 0000000140642354 case 9
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, [rsp+278h+var_210]
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     rax, [rsp+278h+var_238]
                mov     r14, [rax+220h]
                mov     rdx, r13
                mov     rcx, r14
                call    sub_140399E30
                mov     rax, [r14+510h]
                mov     [rsp+278h+var_218], rax
                mov     rdi, rax
                test    rax, rax
                jnz     loc_140642DD4

loc_140642D05:                          ; CODE XREF: NtSetInformationThread+D87↓j
                                        ; NtSetInformationThread+1C3A53↓j
                lea     rdx, [rsp+278h+var_100]
                mov     rsi, [rsp+278h+var_238]
                mov     rcx, rsi
                call    sub_1403993AC

loc_140642D1A:                          ; CODE XREF: NtSetInformationThread+1C3A63↓j
                test    rdi, rdi
                jnz     loc_140642DF2

loc_140642D23:                          ; CODE XREF: NtSetInformationThread+D9B↓j
                mov     rdx, r13
                mov     rcx, r14
                call    sub_140399720
                mov     edx, 79517350h
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642D42:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 33
                jnz     loc_1408062F2

loc_140642D4B:                          ; DATA XREF: .rdata:0000000140054904↑o
;   __try { // __except at loc_140642D53
                mov     eax, [rdi]
                mov     [rsp+278h+var_224], eax
                jmp     short loc_140642D58
;   } // starts at 140642D4B
; ---------------------------------------------------------------------------

loc_140642D53:                          ; DATA XREF: .rdata:0000000140054904↑o
;   __except(1) // owned by 140642D4B
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642D58:                          ; CODE XREF: NtSetInformationThread+CF1↑j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                lea     r8, [rsp+278h+var_224]
                lea     rdx, [rsp+278h+var_224]
                mov     rbx, [rsp+278h+var_238]
                mov     rcx, rbx
                call    sub_14037ABD4
                mov     esi, eax
                test    eax, eax
                js      loc_1406423FE
                test    dword ptr [rbx+74h], 400h
                jz      loc_140805D25

loc_140642DBD:                          ; CODE XREF: NtSetInformationThread+1C3CD1↓j
                                        ; DATA XREF: .rdata:0000000140054914↑o
;   __try { // __except at loc_140642DC8
                mov     eax, [rsp+278h+var_224]
                mov     [rdi], eax
                jmp     loc_1406423FE
;   } // starts at 140642DBD
; ---------------------------------------------------------------------------

loc_140642DC8:                          ; DATA XREF: .rdata:0000000140054914↑o
;   __except(1) // owned by 140642DBD
                mov     esi, eax
                mov     rbx, [rsp+278h+var_238]
                jmp     loc_1406423FE
; ---------------------------------------------------------------------------

loc_140642DD4:                          ; CODE XREF: NtSetInformationThread+C9F↑j
                lea     rcx, [rdi+38h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     eax, [rdi+350h]
                test    al, 10h
                jz      loc_140642D05
                jmp     loc_140805A8E
; ---------------------------------------------------------------------------

loc_140642DF2:                          ; CODE XREF: NtSetInformationThread+CBD↑j
                lea     rcx, [rdi+38h]
                call    ExReleaseResourceLite
                jmp     loc_140642D23
; ---------------------------------------------------------------------------

loc_140642E00:                          ; CODE XREF: NtSetInformationThread+4AF↑j
                cmp     byte ptr [rax+5B7h], 4
                jz      loc_140642515
                movzx   edx, r12b
                mov     rcx, cs:qword_140D2E6F0
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     loc_140642515
                jmp     loc_1408059FD
; ---------------------------------------------------------------------------

loc_140642E2A:                          ; CODE XREF: NtSetInformationThread+35A↑j
                                        ; NtSetInformationThread+36E↑j
                mov     rdx, [r13+0B8h]
                xor     ecx, ecx
                call    sub_140206CF0
                cmp     rdx, [rax+370h]
                jz      loc_1406423D4
                cmp     byte ptr [r8+5B7h], 4
                jz      loc_1406423D4
                mov     esi, 0C000000Dh
                mov     rcx, rbx
                jmp     loc_140642300
; ---------------------------------------------------------------------------

loc_140642E60:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 14
                jnz     loc_1408062F2

loc_140642E69:                          ; DATA XREF: .rdata:0000000140054924↑o
;   __try { // __except at loc_140642E74
                mov     esi, [rdi]
                mov     [rsp+278h+var_194], esi
                jmp     short loc_140642E79
;   } // starts at 140642E69
; ---------------------------------------------------------------------------

loc_140642E74:                          ; DATA XREF: .rdata:0000000140054924↑o
;   __except(1) // owned by 140642E69
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642E79:                          ; CODE XREF: NtSetInformationThread+E12↑j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 400h
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                test    eax, eax
                js      loc_14064230C
                test    esi, esi
                jz      loc_140805AC8
                mov     r14d, 1

loc_140642EC0:                          ; CODE XREF: NtSetInformationThread+1C3A6B↓j
                mov     edx, r14d
                mov     rcx, [rsp+278h+var_238]
                call    sub_14077182C
                mov     edx, 79517350h
                call    ObfDereferenceObjectWithTag
                mov     eax, edi
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642EDE:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 4          ; jumptable 0000000140642354 case 18
                jnz     loc_1408062F2

loc_140642EE7:                          ; DATA XREF: .rdata:0000000140054934↑o
;   __try { // __except at loc_140642EF2
                mov     edi, [rdi]
                mov     [rsp+278h+var_190], edi
                jmp     short loc_140642EF7
;   } // starts at 140642EE7
; ---------------------------------------------------------------------------

loc_140642EF2:                          ; DATA XREF: .rdata:0000000140054934↑o
;   __except(1) // owned by 140642EE7
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642EF7:                          ; CODE XREF: NtSetInformationThread+E90↑j
                movzx   edx, r12b
                mov     rcx, cs:qword_140D2E698
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_14080610C
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, [rsp+278h+var_210]
                call    ObReferenceObjectByHandleWithTag
                mov     [rsp+278h+var_230], eax
                test    eax, eax
                js      loc_14064230C
                mov     rax, [rsp+278h+var_238]
                test    edi, edi
                jz      loc_140805B50
                lock or dword ptr [rax+510h], 20h
                jmp     loc_14064247C
; ---------------------------------------------------------------------------

loc_140642F66:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     esi, 0Ch        ; jumptable 0000000140642354 case 49
                jnz     loc_1408062F2

loc_140642F6F:                          ; DATA XREF: .rdata:0000000140054944↑o
;   __try { // __except at loc_140642F81
                movsd   xmm0, qword ptr [rdi]
                movsd   [rsp+278h+var_158], xmm0
                mov     edx, [rdi+8]
                jmp     short loc_140642F86
;   } // starts at 140642F6F
; ---------------------------------------------------------------------------

loc_140642F81:                          ; DATA XREF: .rdata:0000000140054944↑o
;   __except(1) // owned by 140642F6F
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140642F86:                          ; CODE XREF: NtSetInformationThread+F1F↑j
                cmp     dword ptr [rsp+278h+var_158], 1
                jnz     loc_140806264   ; jumptable 0000000140642354 case 9
                mov     rcx, [rsp+278h+var_158]
                shr     rcx, 20h
                test    ecx, 0FFFFFFFEh
                jnz     loc_140806264   ; jumptable 0000000140642354 case 9
                mov     eax, ecx
                not     eax
                test    edx, eax
                jnz     loc_140806264   ; jumptable 0000000140642354 case 9
                test    cl, 1
                jz      loc_1408062D6
                test    dl, 1
                jz      short loc_140642FCC
                mov     r14d, 1

loc_140642FCC:                          ; CODE XREF: NtSetInformationThread+F64↑j
                                        ; NtSetInformationThread+1C4279↓j
                mov     [rsp+278h+var_248], rbx
                lea     rax, [rsp+278h+var_238]
                mov     [rsp+278h+var_250], rax
                mov     [rsp+278h+var_258], 79517350h
                movzx   r9d, r12b
                mov     r8, cs:PsThreadType
                mov     edx, 20h ; ' '
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14064230C
                mov     edx, r14d
                mov     rcx, [rsp+278h+var_238]
                call    sub_1407729C0
                jmp     loc_14064247C
; ---------------------------------------------------------------------------

loc_140643015:                          ; CODE XREF: NtSetInformationThread+2F4↑j
                                        ; DATA XREF: NtSetInformationThread:jpt_140642354↓o
                cmp     r10, 0FFFFFFFFFFFFFFFEh ; jumptable 0000000140642354 case 50
                jnz     loc_1408062DE
                test    r12b, r12b
                jnz     loc_1408062DE
                cmp     esi, 4
                jnz     loc_1408062F2

loc_140643031:                          ; DATA XREF: .rdata:0000000140054954↑o
;   __try { // __except at loc_14064303C
                mov     eax, [rdi]
                mov     [rsp+278h+var_180], eax
                jmp     short loc_140643041
;   } // starts at 140643031
; ---------------------------------------------------------------------------

loc_14064303C:                          ; DATA XREF: .rdata:0000000140054954↑o
;   __except(1) // owned by 140643031
                jmp     loc_14064230C
; ---------------------------------------------------------------------------

loc_140643041:                          ; CODE XREF: NtSetInformationThread+FDA↑j
                cmp     eax, 2
                jnb     loc_140806264   ; jumptable 0000000140642354 case 9
                mov     rcx, gs:188h
                shl     eax, 0Bh
                xor     eax, [rcx+514h]
                and     eax, 800h
                xor     [rcx+514h], eax
                call    sub_1403C605C
                xor     eax, eax
                jmp     loc_14064230C
; ---------------------------------------------------------------------------
                align 4
jpt_140642198   dd offset loc_140642131 - 140000000h
                                        ; DATA XREF: NtSetInformationThread+12D↑r
                dd offset loc_14064219E - 140000000h ; jump table for switch statement
                dd offset loc_1406421A9 - 140000000h
                dd offset loc_140642131 - 140000000h
byte_140643084  db      0,     3,     1,     3
                                        ; DATA XREF: NtSetInformationThread+124↑r
                db      3,     2,     3,     3 ; indirect table for switch statement
                db      3,     3,     3,     3
                db      3,     3,     3,     3
                db      3,     3,     3,     3
                db      0,     3,     0,     3
                db      3,     3,     3,     3
                db      1,     1,     2,     3
                db      1,     3,     3,     3
                db      1,     3,     3,     3
                db      3,     3,     3,     3
                db      3,     3,     1,     0
jpt_140642354   dd offset loc_140642A2D - 140000000h
                                        ; DATA XREF: NtSetInformationThread+2E9↑r
                dd offset loc_14064235A - 140000000h ; jump table for switch statement
                dd offset loc_140642BBC - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140805A07 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140806264 - 140000000h
                dd offset loc_1406427F9 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140642AA3 - 140000000h
                dd offset loc_140642E60 - 140000000h
                dd offset loc_140805AD0 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140805ADA - 140000000h
                dd offset loc_140642EDE - 140000000h
                dd offset loc_140805B5D - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140642527 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140642406 - 140000000h
                dd offset loc_1406424A5 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140642B38 - 140000000h
                dd offset loc_140642C6B - 140000000h
                dd offset loc_140805D4A - 140000000h
                dd offset loc_140805C2F - 140000000h
                dd offset loc_140642D42 - 140000000h
                dd offset loc_140805E10 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140805EF0 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_1406425C7 - 140000000h
                dd offset loc_140805F62 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140805FE8 - 140000000h
                dd offset loc_140806064 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset def_140642354 - 140000000h
                dd offset loc_140806126 - 140000000h
                dd offset loc_140806197 - 140000000h
                dd offset loc_1408062CC - 140000000h
                dd offset loc_140642F66 - 140000000h
                dd offset loc_140643015 - 140000000h
; } // starts at 140642060
NtSetInformationThread endp

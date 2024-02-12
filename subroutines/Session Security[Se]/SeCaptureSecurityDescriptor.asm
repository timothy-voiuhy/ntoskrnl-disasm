SeCaptureSecurityDescriptor proc near   ; CODE XREF: sub_140218580+4E2↑p
                                        ; sub_1405ED4D0+B5↑p ...

var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_60          = xmmword ptr -60h
var_50          = dword ptr -50h
arg_0           = word ptr  8
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407FF510 SIZE 00000052 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+18h], r8d
                mov     [rsp+arg_8], dl
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                movzx   r10d, dl
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+0F8h+var_98], xmm0
                movups  [rsp+0F8h+var_88], xmm0
                mov     [r11-78h], rax
                xorps   xmm1, xmm1
                movups  xmmword ptr [r11-60h], xmm1
                movups  xmmword ptr [r11-50h], xmm1
                mov     [r11-40h], rax
                xor     r11d, r11d
                mov     [rsp+0F8h+var_C0], r11d
                mov     [rsp+0F8h+var_BC], r11d
                mov     [rsp+0F8h+var_C8], eax
                mov     [rsp+0F8h+var_B8], eax
                mov     ebx, r11d
                mov     [rsp+0F8h+var_D4], ebx
                mov     [rsp+0F8h+var_D0], ebx
                mov     [rsp+0F8h+var_C4], ebx
                mov     dword ptr [rsp+0F8h+var_B0], ebx
                mov     [rsp+0F8h+var_D8], r11d
                mov     [rsp+0F8h+var_CC], r11d
                test    rcx, rcx
                jz      loc_1407FF510
                test    dl, dl
                jz      loc_140622A20

loc_1406222A8:                          ; CODE XREF: SeCaptureSecurityDescriptor+80C↓j
                                        ; DATA XREF: .rdata:000000014004ED54↑o
;   __try { // __except at loc_140622324
                mov     rax, rcx
                test    cl, 3
                jnz     short loc_1406222F4
                mov     rsi, 7FFFFFFF0000h
                cmp     rcx, rsi
                jnb     short loc_1406222FA

loc_1406222BF:                          ; CODE XREF: SeCaptureSecurityDescriptor+DD↓j
                movzx   eax, byte ptr [rax]
                movups  xmm0, xmmword ptr [rcx]
                movups  [rsp+0F8h+var_60], xmm0
                mov     r9d, [rcx+10h]
                mov     [rsp+0F8h+var_50], r9d
                movq    rdx, xmm0
                mov     rax, rdx
                shr     rax, 10h
                test    ax, ax
                js      short loc_1406222FF
                test    cl, 7
                jz      short loc_1406222FF
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406222F4:                          ; CODE XREF: SeCaptureSecurityDescriptor+8E↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_1406222FA:                          ; CODE XREF: SeCaptureSecurityDescriptor+9D↑j
                mov     rax, rsi
                jmp     short loc_1406222BF
; ---------------------------------------------------------------------------

loc_1406222FF:                          ; CODE XREF: SeCaptureSecurityDescriptor+C8↑j
                                        ; SeCaptureSecurityDescriptor+CD↑j
                mov     eax, [rsp+0F8h+var_B8]
                mov     [rsp+0F8h+var_C8], eax
                mov     ebx, [rsp+0F8h+var_D0]
                mov     [rsp+0F8h+var_D4], ebx
                mov     ebx, dword ptr [rsp+0F8h+var_B0]
                mov     [rsp+0F8h+var_C4], ebx
                mov     edi, [rsp+0F8h+var_CC]
                mov     [rsp+0F8h+var_D8], edi
                mov     rdi, rsi
                jmp     short loc_140622329
;   } // starts at 1406222A8
; ---------------------------------------------------------------------------

loc_140622324:                          ; DATA XREF: .rdata:000000014004ED54↑o
;   __except(1) // owned by 1406222A8
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_140622329:                          ; CODE XREF: SeCaptureSecurityDescriptor+102↑j
                                        ; SeCaptureSecurityDescriptor+83B↓j
                cmp     byte ptr [rsp+0F8h+var_60], 1
                jnz     loc_1407FF530

loc_140622337:                          ; DATA XREF: .rdata:000000014004ED64↑o
;   __try { // __except at loc_14062242A
                mov     byte ptr [rsp+0F8h+var_98], 1
                mov     rax, rdx
                shr     rax, 8
                mov     byte ptr [rsp+0F8h+var_98+1], al
                mov     rax, rdx
                shr     rax, 10h
                movzx   r14d, ax
                mov     r8d, 7FFFh
                and     r14w, r8w
                mov     word ptr [rsp+0F8h+var_98+2], r14w
                test    ax, ax
                js      loc_140622405
                mov     rdx, [rcx+8]

loc_14062236F:                          ; CODE XREF: SeCaptureSecurityDescriptor+1F0↓j
                                        ; SeCaptureSecurityDescriptor+1F8↓j
                mov     [rsp+0F8h+var_A8], rdx
                mov     qword ptr [rsp+0F8h+var_98+8], rdx
                test    ax, ax
                jns     short loc_140622390
                mov     r8d, dword ptr [rsp+0F8h+var_60+8]
                test    r8d, r8d
                jz      short loc_1406223E6
                add     r8, rcx
                jmp     short loc_140622394
; ---------------------------------------------------------------------------

loc_140622390:                          ; CODE XREF: SeCaptureSecurityDescriptor+15C↑j
                mov     r8, [rcx+10h]

loc_140622394:                          ; CODE XREF: SeCaptureSecurityDescriptor+16E↑j
                mov     [rsp+0F8h+var_A0], r8

loc_140622399:                          ; CODE XREF: SeCaptureSecurityDescriptor+1CE↓j
                mov     qword ptr [rsp+0F8h+var_88], r8
                test    al, 10h
                jnz     short loc_1406223C6
                mov     r12, r11

loc_1406223A5:                          ; CODE XREF: SeCaptureSecurityDescriptor+1C4↓j
                                        ; SeCaptureSecurityDescriptor+1D8↓j ...
                mov     qword ptr [rsp+0F8h+var_88+8], r12
                test    al, 4
                jz      short loc_140622400
                test    ax, ax
                jns     short loc_1406223C0
                test    r9d, r9d
                jz      short loc_14062241D
                mov     esi, r9d
                add     rsi, rcx
                jmp     short loc_140622420
; ---------------------------------------------------------------------------

loc_1406223C0:                          ; CODE XREF: SeCaptureSecurityDescriptor+191↑j
                mov     rsi, [rcx+20h]
                jmp     short loc_140622420
; ---------------------------------------------------------------------------

loc_1406223C6:                          ; CODE XREF: SeCaptureSecurityDescriptor+180↑j
                test    ax, ax
                jns     short loc_1406223FA
                mov     rdx, qword ptr [rsp+0F8h+var_60+8]
                shr     rdx, 20h
                test    edx, edx
                jz      short loc_1406223F0
                lea     r12, [rcx+rdx]
                mov     rdx, [rsp+0F8h+var_A8]
                jmp     short loc_1406223A5
; ---------------------------------------------------------------------------

loc_1406223E6:                          ; CODE XREF: SeCaptureSecurityDescriptor+169↑j
                mov     r8, r11
                mov     [rsp+0F8h+var_A0], r11
                jmp     short loc_140622399
; ---------------------------------------------------------------------------

loc_1406223F0:                          ; CODE XREF: SeCaptureSecurityDescriptor+1B9↑j
                mov     r12, r11
                mov     rdx, [rsp+0F8h+var_A8]
                jmp     short loc_1406223A5
; ---------------------------------------------------------------------------

loc_1406223FA:                          ; CODE XREF: SeCaptureSecurityDescriptor+1A9↑j
                mov     r12, [rcx+18h]
                jmp     short loc_1406223A5
; ---------------------------------------------------------------------------

loc_140622400:                          ; CODE XREF: SeCaptureSecurityDescriptor+18C↑j
                mov     rsi, r11
                jmp     short loc_140622420
; ---------------------------------------------------------------------------

loc_140622405:                          ; CODE XREF: SeCaptureSecurityDescriptor+145↑j
                shr     rdx, 20h
                test    edx, edx
                jz      short loc_140622415
                add     rdx, rcx
                jmp     loc_14062236F
; ---------------------------------------------------------------------------

loc_140622415:                          ; CODE XREF: SeCaptureSecurityDescriptor+1EB↑j
                mov     rdx, r11
                jmp     loc_14062236F
; ---------------------------------------------------------------------------

loc_14062241D:                          ; CODE XREF: SeCaptureSecurityDescriptor+196↑j
                mov     rsi, r11

loc_140622420:                          ; CODE XREF: SeCaptureSecurityDescriptor+19E↑j
                                        ; SeCaptureSecurityDescriptor+1A4↑j ...
                mov     [rsp+0F8h+var_78], rsi
                jmp     short loc_14062242F
;   } // starts at 140622337
; ---------------------------------------------------------------------------

loc_14062242A:                          ; DATA XREF: .rdata:000000014004ED64↑o
;   __except(1) // owned by 140622337
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_14062242F:                          ; CODE XREF: SeCaptureSecurityDescriptor+208↑j
                mov     r13d, r11d
                mov     [rsp+0F8h+var_C0], r11d
                mov     r15d, r11d
                mov     [rsp+0F8h+var_BC], r11d
                mov     [rsp+0F8h+var_70], r11d
                xor     ecx, ecx
                mov     [rsp+0F8h+var_6C], ecx
                xor     r9d, r9d
                xor     ebx, ebx
                mov     [rsp+0F8h+var_68], ebx
                movzx   eax, r14w
                and     ax, 10h
                mov     [rsp+0F8h+arg_0], ax
                jnz     loc_1406228D0

loc_140622472:                          ; CODE XREF: SeCaptureSecurityDescriptor+6B3↓j
                xor     r12d, r12d
                mov     qword ptr [rsp+0F8h+var_88+8], r12

loc_14062247A:                          ; CODE XREF: SeCaptureSecurityDescriptor+778↓j
                and     r14w, 4
                jz      loc_140622ABF
                test    rsi, rsi
                jz      loc_140622ABF
                test    r10b, r10b
                jz      loc_140622A60

loc_140622497:                          ; DATA XREF: .rdata:000000014004ED74↑o
;   __try { // __except at loc_1406224EF
                add     rsi, 2
                cmp     rsi, rdi
                jnb     short loc_1406224DB

loc_1406224A0:                          ; CODE XREF: SeCaptureSecurityDescriptor+2BE↓j
                movzx   eax, word ptr [rsi]
                mov     r15d, eax
                mov     [rsp+0F8h+var_BC], eax
                test    eax, eax
                jz      short loc_1406224E5
                test    byte ptr [rsp+0F8h+var_78], 3
                jnz     short loc_1406224E0
                mov     rsi, [rsp+0F8h+var_78]
                lea     rcx, [rsi+rax]
                cmp     rcx, rdi
                ja      short loc_1406224CE
                cmp     rcx, rsi
                jnb     short loc_1406224ED

loc_1406224CE:                          ; CODE XREF: SeCaptureSecurityDescriptor+2A7↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406224ED
; ---------------------------------------------------------------------------

loc_1406224DB:                          ; CODE XREF: SeCaptureSecurityDescriptor+27E↑j
                mov     rsi, rdi
                jmp     short loc_1406224A0
; ---------------------------------------------------------------------------

loc_1406224E0:                          ; CODE XREF: SeCaptureSecurityDescriptor+296↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406224E5:                          ; CODE XREF: SeCaptureSecurityDescriptor+28C↑j
                mov     rsi, [rsp+0F8h+var_78]

loc_1406224ED:                          ; CODE XREF: SeCaptureSecurityDescriptor+2AC↑j
                                        ; SeCaptureSecurityDescriptor+2B9↑j
                jmp     short loc_1406224F4
;   } // starts at 140622497
; ---------------------------------------------------------------------------

loc_1406224EF:                          ; DATA XREF: .rdata:000000014004ED74↑o
;   __except(1) // owned by 140622497
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_1406224F4:                          ; CODE XREF: SeCaptureSecurityDescriptor:loc_1406224ED↑j
                mov     r12, qword ptr [rsp+0F8h+var_88+8]
                mov     r8, qword ptr [rsp+0F8h+var_88]
                mov     [rsp+0F8h+var_A0], r8
                mov     rdx, qword ptr [rsp+0F8h+var_98+8]
                mov     [rsp+0F8h+var_A8], rdx
                mov     r13d, [rsp+0F8h+var_C0]
                mov     eax, [rsp+0F8h+var_B8]
                mov     [rsp+0F8h+var_C8], eax
                mov     eax, [rsp+0F8h+var_D0]
                mov     [rsp+0F8h+var_D4], eax
                mov     eax, dword ptr [rsp+0F8h+var_B0]
                mov     [rsp+0F8h+var_C4], eax
                mov     eax, [rsp+0F8h+var_CC]
                mov     [rsp+0F8h+var_D8], eax

loc_140622532:                          ; CODE XREF: SeCaptureSecurityDescriptor+84A↓j
                lea     ecx, [r15+3]
                and     ecx, 0FFFFFFFCh
                mov     [rsp+0F8h+var_6C], ecx
                lea     eax, [rcx-8]
                cmp     eax, 0FFF7h
                ja      loc_1407FF53A

loc_14062254E:                          ; CODE XREF: SeCaptureSecurityDescriptor+8A9↓j
                test    rdx, rdx
                jz      loc_14062260D
                test    r10b, r10b
                jz      loc_140622A6F

loc_140622560:                          ; DATA XREF: .rdata:000000014004ED84↑o
;   __try { // __except at loc_1406225CA
                inc     rdx
                cmp     rdx, rdi
                jnb     short loc_1406225B4

loc_140622568:                          ; CODE XREF: SeCaptureSecurityDescriptor+397↓j
                movzx   eax, byte ptr [rdx]
                mov     [rsp+0F8h+var_C8], eax
                mov     [rsp+0F8h+var_B8], eax
                lea     ebx, ds:8[rax*4]
                mov     [rsp+0F8h+var_D4], ebx
                mov     [rsp+0F8h+var_D0], ebx
                test    ebx, ebx
                jz      short loc_1406225BE
                test    byte ptr [rsp+0F8h+var_98+8], 3
                jnz     short loc_1406225B9
                mov     r8d, ebx
                mov     rdx, qword ptr [rsp+0F8h+var_98+8]
                mov     [rsp+0F8h+var_A8], rdx
                add     r8, rdx
                cmp     r8, rdi
                ja      short loc_1406225A7
                cmp     r8, rdx
                jnb     short loc_1406225C8

loc_1406225A7:                          ; CODE XREF: SeCaptureSecurityDescriptor+380↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406225C8
; ---------------------------------------------------------------------------

loc_1406225B4:                          ; CODE XREF: SeCaptureSecurityDescriptor+346↑j
                mov     rdx, rdi
                jmp     short loc_140622568
; ---------------------------------------------------------------------------

loc_1406225B9:                          ; CODE XREF: SeCaptureSecurityDescriptor+36B↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406225BE:                          ; CODE XREF: SeCaptureSecurityDescriptor+364↑j
                mov     rax, qword ptr [rsp+0F8h+var_98+8]
                mov     [rsp+0F8h+var_A8], rax

loc_1406225C8:                          ; CODE XREF: SeCaptureSecurityDescriptor+385↑j
                                        ; SeCaptureSecurityDescriptor+392↑j
                jmp     short loc_1406225CF
;   } // starts at 140622560
; ---------------------------------------------------------------------------

loc_1406225CA:                          ; DATA XREF: .rdata:000000014004ED84↑o
;   __except(1) // owned by 140622560
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_1406225CF:                          ; CODE XREF: SeCaptureSecurityDescriptor:loc_1406225C8↑j
                mov     rsi, [rsp+0F8h+var_78]
                mov     r12, qword ptr [rsp+0F8h+var_88+8]
                mov     r8, qword ptr [rsp+0F8h+var_88]
                mov     [rsp+0F8h+var_A0], r8
                mov     r13d, [rsp+0F8h+var_C0]
                mov     r15d, [rsp+0F8h+var_BC]
                mov     eax, dword ptr [rsp+0F8h+var_B0]
                mov     [rsp+0F8h+var_C4], eax
                mov     eax, [rsp+0F8h+var_CC]
                mov     [rsp+0F8h+var_D8], eax

loc_140622600:                          ; CODE XREF: SeCaptureSecurityDescriptor+872↓j
                add     ebx, 3
                and     ebx, 0FFFFFFFCh
                mov     [rsp+0F8h+var_68], ebx

loc_14062260D:                          ; CODE XREF: SeCaptureSecurityDescriptor+331↑j
                test    r8, r8
                jz      loc_1406226CC
                test    r10b, r10b
                jz      loc_140622A97

loc_14062261F:                          ; DATA XREF: .rdata:000000014004ED94↑o
;   __try { // __except at loc_140622689
                inc     r8
                cmp     r8, rdi
                jnb     short loc_140622673

loc_140622627:                          ; CODE XREF: SeCaptureSecurityDescriptor+456↓j
                movzx   eax, byte ptr [r8]
                mov     [rsp+0F8h+var_C4], eax
                mov     dword ptr [rsp+0F8h+var_B0], eax
                lea     eax, ds:8[rax*4]
                mov     [rsp+0F8h+var_D8], eax
                mov     [rsp+0F8h+var_CC], eax
                test    eax, eax
                jz      short loc_14062267D
                test    byte ptr [rsp+0F8h+var_88], 3
                jnz     short loc_140622678
                mov     edx, eax
                mov     r8, qword ptr [rsp+0F8h+var_88]
                mov     [rsp+0F8h+var_A0], r8
                add     rdx, r8
                cmp     rdx, rdi
                ja      short loc_140622666
                cmp     rdx, r8
                jnb     short loc_140622687

loc_140622666:                          ; CODE XREF: SeCaptureSecurityDescriptor+43F↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140622687
; ---------------------------------------------------------------------------

loc_140622673:                          ; CODE XREF: SeCaptureSecurityDescriptor+405↑j
                mov     r8, rdi
                jmp     short loc_140622627
; ---------------------------------------------------------------------------

loc_140622678:                          ; CODE XREF: SeCaptureSecurityDescriptor+42B↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14062267D:                          ; CODE XREF: SeCaptureSecurityDescriptor+424↑j
                mov     rax, qword ptr [rsp+0F8h+var_88]
                mov     [rsp+0F8h+var_A0], rax

loc_140622687:                          ; CODE XREF: SeCaptureSecurityDescriptor+444↑j
                                        ; SeCaptureSecurityDescriptor+451↑j
                jmp     short loc_14062268E
;   } // starts at 14062261F
; ---------------------------------------------------------------------------

loc_140622689:                          ; DATA XREF: .rdata:000000014004ED94↑o
;   __except(1) // owned by 14062261F
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_14062268E:                          ; CODE XREF: SeCaptureSecurityDescriptor:loc_140622687↑j
                mov     rsi, [rsp+0F8h+var_78]
                mov     r12, qword ptr [rsp+0F8h+var_88+8]
                mov     rax, qword ptr [rsp+0F8h+var_98+8]
                mov     [rsp+0F8h+var_A8], rax
                mov     r13d, [rsp+0F8h+var_C0]
                mov     r15d, [rsp+0F8h+var_BC]
                mov     eax, [rsp+0F8h+var_B8]
                mov     [rsp+0F8h+var_C8], eax
                mov     eax, [rsp+0F8h+var_D0]
                mov     [rsp+0F8h+var_D4], eax
                mov     r9d, [rsp+0F8h+var_D8]

loc_1406226C4:                          ; CODE XREF: SeCaptureSecurityDescriptor+89A↓j
                add     r9d, 3
                and     r9d, 0FFFFFFFCh

loc_1406226CC:                          ; CODE XREF: SeCaptureSecurityDescriptor+3F0↑j
                lea     eax, [r9+rbx]
                add     eax, ecx
                add     r11d, 14h
                add     eax, r11d
                mov     ebx, eax
                mov     r8d, 63536553h
                mov     edx, eax
                mov     ecx, [rsp+0F8h+arg_10]
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     [rsp+0F8h+var_B0], rax
                test    rax, rax
                jz      loc_1407FF544
                mov     r8d, ebx
                xor     edx, edx
                mov     rcx, rax
                call    memset
                movups  xmm0, [rsp+0F8h+var_98]
                movups  xmmword ptr [rdi], xmm0
                mov     eax, dword ptr [rsp+0F8h+var_88]
                mov     [rdi+10h], eax
                lea     rbx, [rdi+14h]
                mov     eax, 8000h
                or      [rdi+2], ax
                cmp     [rsp+0F8h+arg_0], 0
                jnz     loc_1406229A3

loc_140622738:                          ; CODE XREF: SeCaptureSecurityDescriptor+786↓j
                mov     dword ptr [rdi+0Ch], 0
                movzx   r12d, [rsp+0F8h+arg_8]

loc_140622748:                          ; CODE XREF: SeCaptureSecurityDescriptor+7FB↓j
                test    r14w, r14w
                jz      loc_140622ACE
                test    rsi, rsi
                jz      loc_140622ACE

loc_14062275B:                          ; DATA XREF: .rdata:000000014004EDA4↑o
;   __try { // __except at loc_14062276B
                mov     r8d, r15d
                mov     rdx, rsi
                mov     rcx, rbx
                call    memmove
                jmp     short loc_140622780
;   } // starts at 14062275B
; ---------------------------------------------------------------------------

loc_14062276B:                          ; DATA XREF: .rdata:000000014004EDA4↑o
;   __except(1) // owned by 14062275B
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, [rsp+0F8h+var_B0]
                call    ExFreePoolWithTag
                mov     eax, ebx
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_140622780:                          ; CODE XREF: SeCaptureSecurityDescriptor+549↑j
                test    r12b, r12b
                jz      short loc_1406227AC
                cmp     r15d, 8
                jb      loc_1407FF54E
                movzx   eax, word ptr [rbx+2]
                cmp     r15d, eax
                jnz     loc_1407FF54E
                mov     rcx, rbx
                call    RtlValidAcl
                test    al, al
                jz      loc_1407FF54E

loc_1406227AC:                          ; CODE XREF: SeCaptureSecurityDescriptor+563↑j
                mov     eax, ebx
                sub     eax, edi
                mov     [rdi+10h], eax
                mov     eax, [rsp+0F8h+var_6C]
                mov     [rbx+2], ax
                add     rbx, rax

loc_1406227C1:                          ; CODE XREF: SeCaptureSecurityDescriptor+8B5↓j
                mov     rax, [rsp+0F8h+var_A8]
                test    rax, rax
                jz      loc_1406228BF

loc_1406227CF:                          ; DATA XREF: .rdata:000000014004EDB4↑o
;   __try { // __except at loc_1406227E8
                mov     r8d, [rsp+0F8h+var_D4]
                mov     rdx, rax
                mov     rcx, rbx
                call    memmove
                mov     ecx, [rsp+0F8h+var_C8]
                mov     [rbx+1], cl
                jmp     short loc_1406227FD
;   } // starts at 1406227CF
; ---------------------------------------------------------------------------

loc_1406227E8:                          ; DATA XREF: .rdata:000000014004EDB4↑o
;   __except(1) // owned by 1406227CF
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, [rsp+0F8h+var_B0]
                call    ExFreePoolWithTag
                mov     eax, ebx
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_1406227FD:                          ; CODE XREF: SeCaptureSecurityDescriptor+5C6↑j
                mov     rsi, 7FFFFFFF0000h
                test    r12b, r12b
                jz      short loc_14062282B
                cmp     rbx, rsi
                jbe     loc_140622AEA
                movzx   eax, byte ptr [rbx]
                and     al, 0Fh
                cmp     cl, 0Fh
                ja      loc_140622AEA
                cmp     al, 1
                jnz     loc_140622AEA

loc_14062282B:                          ; CODE XREF: SeCaptureSecurityDescriptor+5EA↑j
                mov     ecx, ebx
                sub     ecx, edi
                mov     eax, [rsp+0F8h+var_68]
                add     rbx, rax

loc_140622839:                          ; CODE XREF: SeCaptureSecurityDescriptor+6AB↓j
                mov     [rdi+4], ecx
                mov     rax, [rsp+0F8h+var_A0]
                test    rax, rax
                jz      short loc_1406228BB

loc_140622846:                          ; DATA XREF: .rdata:000000014004EDC4↑o
;   __try { // __except at loc_14062285F
                mov     r8d, [rsp+0F8h+var_D8]
                mov     rdx, rax
                mov     rcx, rbx
                call    memmove
                mov     ecx, [rsp+0F8h+var_C4]
                mov     [rbx+1], cl
                jmp     short loc_140622871
;   } // starts at 140622846
; ---------------------------------------------------------------------------

loc_14062285F:                          ; DATA XREF: .rdata:000000014004EDC4↑o
;   __except(1) // owned by 140622846
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, [rsp+0F8h+var_B0]
                call    ExFreePoolWithTag
                mov     eax, ebx
                jmp     short loc_1406228A7
; ---------------------------------------------------------------------------

loc_140622871:                          ; CODE XREF: SeCaptureSecurityDescriptor+63D↑j
                test    r12b, r12b
                jz      short loc_140622895
                cmp     rbx, rsi
                jbe     loc_140622AEA
                movzx   eax, byte ptr [rbx]
                and     al, 0Fh
                cmp     cl, 0Fh
                ja      loc_140622AEA
                cmp     al, 1
                jnz     loc_140622AEA

loc_140622895:                          ; CODE XREF: SeCaptureSecurityDescriptor+654↑j
                sub     ebx, edi

loc_140622897:                          ; CODE XREF: SeCaptureSecurityDescriptor+69D↓j
                mov     [rdi+8], ebx
                mov     rax, [rsp+0F8h+arg_20]
                mov     [rax], rdi

loc_1406228A5:                          ; CODE XREF: SeCaptureSecurityDescriptor+1DD2FB↓j
                                        ; SeCaptureSecurityDescriptor+1DD30B↓j
                xor     eax, eax

loc_1406228A7:                          ; CODE XREF: SeCaptureSecurityDescriptor:loc_140622324↑j
                                        ; SeCaptureSecurityDescriptor:loc_14062242A↑j ...
                add     rsp, 0C0h
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

loc_1406228BB:                          ; CODE XREF: SeCaptureSecurityDescriptor+624↑j
                xor     ebx, ebx
                jmp     short loc_140622897
; ---------------------------------------------------------------------------

loc_1406228BF:                          ; CODE XREF: SeCaptureSecurityDescriptor+5A9↑j
                xor     ecx, ecx
                mov     rsi, 7FFFFFFF0000h
                jmp     loc_140622839
; ---------------------------------------------------------------------------

loc_1406228D0:                          ; CODE XREF: SeCaptureSecurityDescriptor+24C↑j
                test    r12, r12
                jz      loc_140622472
                test    r10b, r10b
                jz      loc_140622ADA

loc_1406228E2:                          ; DATA XREF: .rdata:000000014004EDD4↑o
;   __try { // __except at loc_140622933
                add     r12, 2
                cmp     r12, rdi
                jnb     short loc_140622922

loc_1406228EB:                          ; CODE XREF: SeCaptureSecurityDescriptor+705↓j
                movzx   eax, word ptr [r12]
                mov     r13d, eax
                mov     [rsp+0F8h+var_C0], eax
                test    eax, eax
                jz      short loc_14062292C
                test    byte ptr [rsp+0F8h+var_88+8], 3
                jnz     short loc_140622927
                mov     r12, qword ptr [rsp+0F8h+var_88+8]
                lea     rdx, [r12+rax]
                cmp     rdx, rdi
                ja      short loc_140622915
                cmp     rdx, r12
                jnb     short loc_140622931

loc_140622915:                          ; CODE XREF: SeCaptureSecurityDescriptor+6EE↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140622931
; ---------------------------------------------------------------------------

loc_140622922:                          ; CODE XREF: SeCaptureSecurityDescriptor+6C9↑j
                mov     r12, rdi
                jmp     short loc_1406228EB
; ---------------------------------------------------------------------------

loc_140622927:                          ; CODE XREF: SeCaptureSecurityDescriptor+6E0↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14062292C:                          ; CODE XREF: SeCaptureSecurityDescriptor+6D9↑j
                mov     r12, qword ptr [rsp+0F8h+var_88+8]

loc_140622931:                          ; CODE XREF: SeCaptureSecurityDescriptor+6F3↑j
                                        ; SeCaptureSecurityDescriptor+700↑j
                jmp     short loc_140622938
;   } // starts at 1406228E2
; ---------------------------------------------------------------------------

loc_140622933:                          ; DATA XREF: .rdata:000000014004EDD4↑o
;   __except(1) // owned by 1406228E2
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_140622938:                          ; CODE XREF: SeCaptureSecurityDescriptor:loc_140622931↑j
                mov     rsi, [rsp+0F8h+var_78]
                mov     r8, qword ptr [rsp+0F8h+var_88]
                mov     [rsp+0F8h+var_A0], r8
                mov     rdx, qword ptr [rsp+0F8h+var_98+8]
                mov     [rsp+0F8h+var_A8], rdx
                movzx   r14d, word ptr [rsp+0F8h+var_98+2]
                mov     r15d, [rsp+0F8h+var_BC]
                mov     eax, [rsp+0F8h+var_B8]
                mov     [rsp+0F8h+var_C8], eax
                mov     eax, [rsp+0F8h+var_D0]
                mov     [rsp+0F8h+var_D4], eax
                mov     eax, dword ptr [rsp+0F8h+var_B0]
                mov     [rsp+0F8h+var_C4], eax
                mov     eax, [rsp+0F8h+var_CC]
                mov     [rsp+0F8h+var_D8], eax

loc_14062297F:                          ; CODE XREF: SeCaptureSecurityDescriptor+8C5↓j
                lea     r11d, [r13+3]
                and     r11d, 0FFFFFFFCh
                mov     [rsp+0F8h+var_70], r11d
                lea     eax, [r11-8]
                cmp     eax, 0FFF7h
                jbe     loc_14062247A
                jmp     loc_1407FF53A
; ---------------------------------------------------------------------------

loc_1406229A3:                          ; CODE XREF: SeCaptureSecurityDescriptor+512↑j
                test    r12, r12
                jz      loc_140622738

loc_1406229AC:                          ; DATA XREF: .rdata:000000014004EDE4↑o
;   __try { // __except at loc_1406229BC
                mov     r8d, r13d
                mov     rdx, r12
                mov     rcx, rbx
                call    memmove
                jmp     short loc_1406229D1
;   } // starts at 1406229AC
; ---------------------------------------------------------------------------

loc_1406229BC:                          ; DATA XREF: .rdata:000000014004EDE4↑o
;   __except(1) // owned by 1406229AC
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, [rsp+0F8h+var_B0]
                call    ExFreePoolWithTag
                mov     eax, ebx
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_1406229D1:                          ; CODE XREF: SeCaptureSecurityDescriptor+79A↑j
                movzx   r12d, [rsp+0F8h+arg_8]
                test    r12b, r12b
                jz      short loc_140622A06
                cmp     r13d, 8
                jb      loc_1407FF54E
                movzx   eax, word ptr [rbx+2]
                cmp     r13d, eax
                jnz     loc_1407FF54E
                mov     rcx, rbx
                call    RtlValidAcl
                test    al, al
                jz      loc_1407FF54E

loc_140622A06:                          ; CODE XREF: SeCaptureSecurityDescriptor+7BD↑j
                mov     eax, ebx
                sub     eax, edi
                mov     [rdi+0Ch], eax
                mov     eax, [rsp+0F8h+var_70]
                mov     [rbx+2], ax
                add     rbx, rax
                jmp     loc_140622748
; ---------------------------------------------------------------------------

loc_140622A20:                          ; CODE XREF: SeCaptureSecurityDescriptor+82↑j
                test    r9b, r9b
                jz      loc_1407FF520
                test    r10b, r10b
                jnz     loc_1406222A8
                movups  xmm0, xmmword ptr [rcx]
                movups  [rsp+0F8h+var_60], xmm0
                mov     r9d, [rcx+10h]
                mov     [rsp+0F8h+var_50], r9d
                mov     rdi, 7FFFFFFF0000h
                mov     rdx, qword ptr [rsp+0F8h+var_60]
                jmp     loc_140622329
; ---------------------------------------------------------------------------

loc_140622A60:                          ; CODE XREF: SeCaptureSecurityDescriptor+271↑j
                movzx   r15d, word ptr [rsi+2]
                mov     [rsp+0F8h+var_BC], r15d
                jmp     loc_140622532
; ---------------------------------------------------------------------------

loc_140622A6F:                          ; CODE XREF: SeCaptureSecurityDescriptor+33A↑j
                movzx   edx, byte ptr [rdx+1]
                mov     [rsp+0F8h+var_C8], edx
                mov     [rsp+0F8h+var_B8], edx
                cmp     edx, 3FFFFFF7h
                ja      short loc_140622AFE
                lea     ebx, ds:8[rdx*4]

loc_140622A8A:                          ; CODE XREF: SeCaptureSecurityDescriptor+8E3↓j
                mov     [rsp+0F8h+var_D0], ebx
                mov     [rsp+0F8h+var_D4], ebx
                jmp     loc_140622600
; ---------------------------------------------------------------------------

loc_140622A97:                          ; CODE XREF: SeCaptureSecurityDescriptor+3F9↑j
                movzx   edx, byte ptr [r8+1]
                mov     [rsp+0F8h+var_C4], edx
                cmp     edx, 3FFFFFF7h
                ja      short loc_140622B05
                lea     r9d, ds:8[rdx*4]

loc_140622AB0:                          ; CODE XREF: SeCaptureSecurityDescriptor+8EB↓j
                mov     [rsp+0F8h+var_CC], r9d
                mov     [rsp+0F8h+var_D8], r9d
                jmp     loc_1406226C4
; ---------------------------------------------------------------------------

loc_140622ABF:                          ; CODE XREF: SeCaptureSecurityDescriptor+25F↑j
                                        ; SeCaptureSecurityDescriptor+268↑j
                xor     esi, esi
                mov     [rsp+0F8h+var_78], rsi
                jmp     loc_14062254E
; ---------------------------------------------------------------------------

loc_140622ACE:                          ; CODE XREF: SeCaptureSecurityDescriptor+52C↑j
                                        ; SeCaptureSecurityDescriptor+535↑j
                mov     dword ptr [rdi+10h], 0
                jmp     loc_1406227C1
; ---------------------------------------------------------------------------

loc_140622ADA:                          ; CODE XREF: SeCaptureSecurityDescriptor+6BC↑j
                movzx   r13d, word ptr [r12+2]
                mov     [rsp+0F8h+var_C0], r13d
                jmp     loc_14062297F
; ---------------------------------------------------------------------------

loc_140622AEA:                          ; CODE XREF: SeCaptureSecurityDescriptor+5EF↑j
                                        ; SeCaptureSecurityDescriptor+5FD↑j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     eax, 0C0000078h
                jmp     loc_1406228A7
; ---------------------------------------------------------------------------

loc_140622AFE:                          ; CODE XREF: SeCaptureSecurityDescriptor+861↑j
                mov     ebx, 0FFFFFFFFh
                jmp     short loc_140622A8A
; ---------------------------------------------------------------------------

loc_140622B05:                          ; CODE XREF: SeCaptureSecurityDescriptor+886↑j
                mov     r9d, 0FFFFFFFFh
                jmp     short loc_140622AB0
; } // starts at 140622220
SeCaptureSecurityDescriptor endp

KeSetTracepoint proc near               ; DATA XREF: .rdata:0000000140008D30↑o
                                        ; .pdata:000000014011DF60↑o

var_D8          = dword ptr -0D8h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_48          = qword ptr -48h
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_48], rax
                and     [rsp+0D8h+var_88], 0
                xor     r15d, r15d
                mov     rax, [rsp+0D8h+arg_40]
                mov     rsi, rcx
                mov     [rsp+0D8h+var_98], rcx
                mov     dil, dl
                mov     edx, cs:dword_140CFC52C
                mov     r12d, r9d
                mov     ecx, edx
                mov     [rsp+0D8h+var_90], r9d
                mov     [rsp+0D8h+var_80], rax
                lea     r9d, [r15+1]
                mov     rbp, r8
                and     ecx, 2
                jnz     short loc_1408BDACE
                test    dil, dil
                jz      short loc_1408BDAC4
                mov     eax, edx
                and     eax, r9d
                test    al, al
                jnz     short loc_1408BDACE

loc_1408BDAC4:                          ; CODE XREF: KeSetTracepoint+69↑j
                                        ; KeSetTracepoint+D5↓j ...
                mov     edi, 0C0000022h
                jmp     loc_1408BDBA4
; ---------------------------------------------------------------------------

loc_1408BDACE:                          ; CODE XREF: KeSetTracepoint+64↑j
                                        ; KeSetTracepoint+72↑j
                test    rsi, rsi
                jnz     short loc_1408BDADC
                test    dil, dil
                jnz     loc_1408BDB9F

loc_1408BDADC:                          ; CODE XREF: KeSetTracepoint+81↑j
                mov     rax, 7FFFFFFEFFFFh
                cmp     rbp, rax
                jbe     short loc_1408BDAF4
                cmp     dil, r9b
                jz      loc_1408BDB9F

loc_1408BDAF4:                          ; CODE XREF: KeSetTracepoint+99↑j
                mov     rax, 0FFFF800000000000h
                cmp     rbp, rax
                jnb     short loc_1408BDB0C
                test    dil, dil
                jz      loc_1408BDB9F

loc_1408BDB0C:                          ; CODE XREF: KeSetTracepoint+B1↑j
                test    rsi, rsi
                jz      short loc_1408BDB2B
                mov     rax, [rsi+3E0h]
                test    r9b, al
                jnz     short loc_1408BDB22
                test    rax, rax
                jz      short loc_1408BDB2B

loc_1408BDB22:                          ; CODE XREF: KeSetTracepoint+CB↑j
                test    dil, dil
                jnz     short loc_1408BDAC4
                test    ecx, ecx
                jz      short loc_1408BDAC4

loc_1408BDB2B:                          ; CODE XREF: KeSetTracepoint+BF↑j
                                        ; KeSetTracepoint+D0↑j
                mov     r13, [rsp+0D8h+arg_20]
                lea     eax, [r12-1]
                xor     r14d, r14d
                cmp     eax, r9d
                lea     eax, [r12-2]
                setbe   r14b
                xor     r8d, r8d
                cmp     eax, r9d
                mov     [rsp+0D8h+var_8C], r14d
                lea     eax, [r12-4]
                setbe   r8b
                xor     ecx, ecx
                cmp     eax, r9d
                mov     [rsp+0D8h+var_A8], r8d
                lea     eax, [r12-5]
                setbe   cl
                mov     [rsp+0D8h+var_A4], ecx
                xor     ecx, ecx
                cmp     eax, r9d
                setbe   cl
                mov     [rsp+0D8h+var_A0], ecx
                test    r8d, r8d
                jz      loc_1408BDCA9
                lea     rcx, qword_140CFCB90
                test    r13, r13
                jnz     short loc_1408BDBD2
                mov     rsi, [rsp+0D8h+arg_30]
                test    rsi, rsi
                jnz     short loc_1408BDC16

loc_1408BDB9F:                          ; CODE XREF: KeSetTracepoint+86↑j
                                        ; KeSetTracepoint+9E↑j ...
                mov     edi, 0C000000Dh

loc_1408BDBA4:                          ; CODE XREF: KeSetTracepoint+79↑j
                                        ; KeSetTracepoint+254↓j ...
                mov     eax, edi
                mov     rcx, [rsp+0D8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D8h+arg_8]
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1408BDBD2:                          ; CODE XREF: KeSetTracepoint+140↑j
                mov     ebx, 20h ; ' '
                test    dil, dil
                lea     eax, [rbx+10h]
                cmovnz  ebx, eax
                and     edx, 4
                add     rbx, rcx
                test    dl, dl
                jz      short loc_1408BDC05
                cmp     r13, [rbx]
                jz      short loc_1408BDC0E
                lea     rcx, aDtraceNtOverri_0 ; "DTrace/NT: Overriding pre-callback in D"...
                call    DbgPrint
                lea     rcx, qword_140CFCB90
                mov     [rbx], r13

loc_1408BDC05:                          ; CODE XREF: KeSetTracepoint+198↑j
                cmp     r13, [rbx]
                jnz     loc_1408BDAC4

loc_1408BDC0E:                          ; CODE XREF: KeSetTracepoint+19D↑j
                mov     rsi, [rsp+0D8h+arg_30]

loc_1408BDC16:                          ; CODE XREF: KeSetTracepoint+14D↑j
                test    rsi, rsi
                jz      short loc_1408BDC56
                mov     ebx, 28h ; '('
                test    dil, dil
                lea     eax, [rbx+10h]
                cmovnz  ebx, eax
                mov     eax, cs:dword_140CFC52C
                and     eax, 4
                add     rbx, rcx
                test    al, al
                jz      short loc_1408BDC4D
                cmp     rsi, [rbx]
                jz      short loc_1408BDC56
                lea     rcx, aDtraceNtOverri ; "DTrace/NT: Overriding post-callback in "...
                call    DbgPrint
                mov     [rbx], r13

loc_1408BDC4D:                          ; CODE XREF: KeSetTracepoint+1E7↑j
                cmp     rsi, [rbx]
                jnz     loc_1408BDAC4

loc_1408BDC56:                          ; CODE XREF: KeSetTracepoint+1C9↑j
                                        ; KeSetTracepoint+1EC↑j
                mov     rsi, [rsp+0D8h+var_98]

loc_1408BDC5B:                          ; CODE XREF: KeSetTracepoint+270↓j
                test    r14d, r14d
                jnz     short loc_1408BDC69
                test    r12d, r12d
                jnz     loc_1408BDD09

loc_1408BDC69:                          ; CODE XREF: KeSetTracepoint+20E↑j
                mov     rax, 0FFFF800000000000h
                cmp     rbp, rax
                jb      short loc_1408BDCC2
                lea     rdx, [rsp+0D8h+var_88]
                mov     rcx, rbp
                call    RtlPcToFileHeader
                test    rax, rax
                jz      loc_1408BDB9F
                mov     rcx, [rsp+0D8h+var_88]
                mov     rdx, rbp
                call    sub_1408BE1EC
                test    eax, eax
                jnz     short loc_1408BDCC2
                mov     edi, 0C00000BBh
                jmp     loc_1408BDBA4
; ---------------------------------------------------------------------------

loc_1408BDCA9:                          ; CODE XREF: KeSetTracepoint+130↑j
                test    r13, r13
                jnz     loc_1408BDB9F
                cmp     [rsp+0D8h+arg_30], r15
                jnz     loc_1408BDB9F
                jmp     short loc_1408BDC5B
; ---------------------------------------------------------------------------

loc_1408BDCC2:                          ; CODE XREF: KeSetTracepoint+226↑j
                                        ; KeSetTracepoint+24D↑j
                test    r14d, r14d
                jz      short loc_1408BDD09
                mov     ebx, 5Ch ; '\'
                mov     r8d, 70727446h
                mov     edx, ebx
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jnz     short loc_1408BDCF0
                mov     edi, 0C000009Ah
                jmp     loc_1408BDBA4
; ---------------------------------------------------------------------------

loc_1408BDCF0:                          ; CODE XREF: KeSetTracepoint+294↑j
                mov     r8, rbx
                xor     edx, edx
                mov     rcx, r15
                call    memset
                mov     [r15+10h], rsi
                mov     [r15+32h], dil
                mov     [r15+8], rbp

loc_1408BDD09:                          ; CODE XREF: KeSetTracepoint+213↑j
                                        ; KeSetTracepoint+275↑j
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                xor     edx, edx
                lea     rcx, qword_140C2B1A0
                call    ExAcquirePushLockExclusiveEx
                mov     r14, cs:qword_140C2B190
                xor     r8d, r8d
                test    r14, r14
                jnz     short loc_1408BDD7A
                mov     esi, 20000h
                mov     r8d, 70727446h
                mov     edx, esi
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jnz     short loc_1408BDD63
                mov     edi, 0C000009Ah
                jmp     loc_1408BDFF0
; ---------------------------------------------------------------------------

loc_1408BDD63:                          ; CODE XREF: KeSetTracepoint+307↑j
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, r14
                call    memset
                xor     r8d, r8d
                mov     cs:qword_140C2B190, r14

loc_1408BDD7A:                          ; CODE XREF: KeSetTracepoint+2E8↑j
                mov     r10, [rsp+0D8h+var_98]
                mov     r12, rbp
                shr     r12, 4
                mov     rsi, r8
                and     r12d, 3FFFh
                lea     r14, [r14+r12*8]
                mov     rcx, [r14]
                test    rcx, rcx
                jz      short loc_1408BDDB6

loc_1408BDD9C:                          ; CODE XREF: KeSetTracepoint+364↓j
                cmp     [rcx+8], rbp
                jnz     short loc_1408BDDA8
                cmp     [rcx+10h], r10
                jz      short loc_1408BDDED

loc_1408BDDA8:                          ; CODE XREF: KeSetTracepoint+350↑j
                mov     rax, [rcx]
                mov     r14, rcx
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1408BDD9C

loc_1408BDDB6:                          ; CODE XREF: KeSetTracepoint+34A↑j
                                        ; KeSetTracepoint+3A4↓j
                cmp     [rsp+0D8h+var_90], r8d
                jnz     short loc_1408BDE00
                test    rsi, rsi
                jnz     loc_1408BDFDE
                lea     rax, [rsp+0D8h+var_78]
                xor     r9d, r9d
                mov     [rsp+0D8h+var_B0], rax
                mov     dl, dil
                mov     [rsp+0D8h+var_B8], r8d
                mov     rcx, r10
                mov     r8, rbp
                call    sub_1408BEA50
                mov     edi, eax
                jmp     loc_1408BDFF0
; ---------------------------------------------------------------------------

loc_1408BDDED:                          ; CODE XREF: KeSetTracepoint+356↑j
                mov     rsi, rcx
                cmp     [rcx+32h], dil
                jz      short loc_1408BDDB6
                mov     edi, 0C000000Dh
                jmp     loc_1408BDFF0
; ---------------------------------------------------------------------------

loc_1408BDE00:                          ; CODE XREF: KeSetTracepoint+36B↑j
                mov     edx, [rsp+0D8h+var_8C]
                test    edx, edx
                jz      loc_1408BDE97
                test    rsi, rsi
                jz      short loc_1408BDE20
                cmp     [rsi+18h], r8b
                jnz     short loc_1408BDE20
                mov     al, [rsi+19h]
                neg     al
                sbb     ecx, ecx
                and     edx, ecx

loc_1408BDE20:                          ; CODE XREF: KeSetTracepoint+3BF↑j
                                        ; KeSetTracepoint+3C5↑j
                test    edx, edx
                jz      short loc_1408BDE97
                test    rsi, rsi
                jz      short loc_1408BDE33
                mov     edi, 0C0000718h
                jmp     loc_1408BDFF0
; ---------------------------------------------------------------------------

loc_1408BDE33:                          ; CODE XREF: KeSetTracepoint+3D7↑j
                mov     r8, [r15+8]
                lea     rax, [r15+34h]
                mov     [rsp+0D8h+var_B0], rax
                lea     r9, [r15+33h]
                mov     ebp, 1
                mov     dl, dil
                mov     rcx, r10
                mov     [rsp+0D8h+var_B8], ebp
                call    sub_1408BEA50
                xor     r8d, r8d
                mov     edi, eax
                test    eax, eax
                js      loc_1408BDFF0
                mov     rax, cs:qword_140C2B190
                add     cs:dword_140C2B180, ebp
                lea     r14, [rax+r12*8]
                mov     rax, [r14]
                mov     [r15], rax
                mov     [r14], r15
                lock or [rsp+0D8h+var_D8], r8d
                mov     edx, [rsp+0D8h+var_A8]
                mov     rsi, r15
                mov     eax, edx
                neg     eax
                sbb     rcx, rcx
                and     r15, rcx
                jmp     short loc_1408BDEAF
; ---------------------------------------------------------------------------

loc_1408BDE97:                          ; CODE XREF: KeSetTracepoint+3B6↑j
                                        ; KeSetTracepoint+3D2↑j
                test    rsi, rsi
                jnz     short loc_1408BDEA6
                mov     edi, 0C0000225h
                jmp     loc_1408BDFF0
; ---------------------------------------------------------------------------

loc_1408BDEA6:                          ; CODE XREF: KeSetTracepoint+44A↑j
                mov     edx, [rsp+0D8h+var_A8]
                mov     ebp, 1

loc_1408BDEAF:                          ; CODE XREF: KeSetTracepoint+445↑j
                test    edx, edx
                jz      loc_1408BDF58
                cmp     [rsi+30h], r8b
                jnz     short loc_1408BDF21
                mov     eax, cs:dword_140C2B184
                add     eax, ebp
                mov     cs:dword_140C2B184, eax
                cmp     eax, ebp
                jnz     short loc_1408BDED7
                lock or cs:dword_140CFC600, 2

loc_1408BDED7:                          ; CODE XREF: KeSetTracepoint+47D↑j
                mov     dl, bpl
                mov     rcx, rsi
                call    sub_14051D658
                xor     r8d, r8d
                mov     edi, eax
                test    eax, eax
                jns     short loc_1408BDF1D
                or      ebp, 0FFFFFFFFh
                cmp     rsi, r15
                jnz     short loc_1408BDF04
                mov     rax, [rsi]
                mov     [r14], rax
                lock or [rsp+0D8h+var_D8], r8d
                add     cs:dword_140C2B180, ebp

loc_1408BDF04:                          ; CODE XREF: KeSetTracepoint+4A1↑j
                add     cs:dword_140C2B184, ebp
                jnz     loc_1408BDFF0
                lock and cs:dword_140CFC600, 0FFFFFFFDh
                jmp     loc_1408BDFF0
; ---------------------------------------------------------------------------

loc_1408BDF1D:                          ; CODE XREF: KeSetTracepoint+499↑j
                mov     [rsi+30h], bpl

loc_1408BDF21:                          ; CODE XREF: KeSetTracepoint+46B↑j
                mov     rax, [rsp+0D8h+arg_28]
                mov     [rsi+20h], rax
                mov     rax, [rsp+0D8h+arg_38]
                mov     [rsi+28h], rax
                lock or [rsp+0D8h+var_D8], r8d
                test    r13, r13
                mov     r15, r8
                setnz   al
                cmp     [rsp+0D8h+arg_30], r8
                mov     [rsi+18h], al
                setnz   al
                mov     [rsi+19h], al

loc_1408BDF58:                          ; CODE XREF: KeSetTracepoint+461↑j
                mov     ecx, [rsp+0D8h+var_A0]
                mov     eax, [rsp+0D8h+var_A4]
                test    ecx, ecx
                jz      short loc_1408BDF6B
                cmp     [rsi+30h], r8b
                cmovnz  eax, ebp

loc_1408BDF6B:                          ; CODE XREF: KeSetTracepoint+512↑j
                or      ebp, 0FFFFFFFFh
                test    eax, eax
                jz      short loc_1408BDFC6
                cmp     [rsi+30h], r8b
                jz      short loc_1408BDFA6
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14051D658
                xor     r8d, r8d
                test    eax, eax
                jns     short loc_1408BDF8E
                mov     ecx, r8d
                jmp     short loc_1408BDFA6
; ---------------------------------------------------------------------------

loc_1408BDF8E:                          ; CODE XREF: KeSetTracepoint+537↑j
                add     cs:dword_140C2B184, ebp
                jnz     short loc_1408BDF9E
                lock and cs:dword_140CFC600, 0FFFFFFFDh

loc_1408BDF9E:                          ; CODE XREF: KeSetTracepoint+544↑j
                mov     ecx, [rsp+0D8h+var_A0]
                mov     [rsi+30h], r8b

loc_1408BDFA6:                          ; CODE XREF: KeSetTracepoint+526↑j
                                        ; KeSetTracepoint+53C↑j
                and     word ptr [rsi+18h], 0
                lock or [rsp+0D8h+var_D8], r8d

loc_1408BDFB0:                          ; CODE XREF: KeSetTracepoint+56C↓j
                mov     eax, cs:dword_140C2B188
                test    eax, eax
                jz      short loc_1408BDFBE
                pause
                jmp     short loc_1408BDFB0
; ---------------------------------------------------------------------------

loc_1408BDFBE:                          ; CODE XREF: KeSetTracepoint+568↑j
                mov     [rsi+20h], r8
                mov     [rsi+28h], r8

loc_1408BDFC6:                          ; CODE XREF: KeSetTracepoint+520↑j
                test    ecx, ecx
                jz      short loc_1408BDFDE
                mov     rax, [rsi]
                mov     [r14], rax
                lock or [rsp+0D8h+var_D8], r8d
                add     cs:dword_140C2B180, ebp
                mov     r15, rsi

loc_1408BDFDE:                          ; CODE XREF: KeSetTracepoint+370↑j
                                        ; KeSetTracepoint+578↑j
                mov     rcx, [rsp+0D8h+var_80]
                test    rcx, rcx
                jz      short loc_1408BDFED
                mov     al, [rsi+33h]
                mov     [rcx], al

loc_1408BDFED:                          ; CODE XREF: KeSetTracepoint+596↑j
                mov     edi, r8d

loc_1408BDFF0:                          ; CODE XREF: KeSetTracepoint+30E↑j
                                        ; KeSetTracepoint+398↑j ...
                test    r15, r15
                jz      short loc_1408BE010

loc_1408BDFF5:                          ; CODE XREF: KeSetTracepoint+5B1↓j
                mov     eax, cs:dword_140C2B188
                test    eax, eax
                jz      short loc_1408BE003
                pause
                jmp     short loc_1408BDFF5
; ---------------------------------------------------------------------------

loc_1408BE003:                          ; CODE XREF: KeSetTracepoint+5AD↑j
                mov     edx, 70727446h
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_1408BE010:                          ; CODE XREF: KeSetTracepoint+5A3↑j
                lock xadd cs:qword_140C2B1A0, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1408BE02D
                lea     rcx, qword_140C2B1A0
                call    ExfTryToWakePushLock

loc_1408BE02D:                          ; CODE XREF: KeSetTracepoint+5CF↑j
                lea     rcx, qword_140C2B1A0
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_1408BDBA4
; } // starts at 1408BDA50
KeSetTracepoint endp

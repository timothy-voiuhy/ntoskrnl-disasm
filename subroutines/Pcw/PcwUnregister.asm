PcwUnregister   proc near               ; CODE XREF: sub_1407CAD10+95FF2↑p
                                        ; sub_1407CAD10+9600A↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, cs:qword_140D2D098
                call    sub_140309D44
                test    rax, rax
                jz      short loc_1409583D2
                mov     rax, [rax+8]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rcx, cs:qword_140D2D098
                call    sub_140309D28

loc_1409583D2:                          ; CODE XREF: PcwUnregister+18↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PcwUnregister   endp

algn_1409583D9:                         ; DATA XREF: .pdata:00000001401249C8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409583E0   proc near               ; DATA XREF: .pdata:00000001401249D4↑o
                                        ; PAGE:000000014098B148↓o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                and     [rsp+48h+arg_18], 0
                cmp     cs:qword_140C15FC8, 0
                jnz     short loc_140958406
                mov     eax, 0C0000024h
                jmp     loc_14095849A
; ---------------------------------------------------------------------------

loc_140958406:                          ; CODE XREF: sub_1409583E0+1A↑j
                mov     rax, gs:188h
                mov     dil, [rax+232h]
                mov     rbx, [rsp+48h+arg_8]
                test    rbx, rbx
                jz      short loc_14095844C
                test    dil, dil
                jz      short loc_14095844C

loc_140958425:                          ; DATA XREF: .rdata:00000001400C5834↑o
;   __try { // __except at loc_14095844A
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                cmovb   rax, rbx
                mov     rax, [rax]
                mov     [rsp+48h+arg_18], rax
                lea     rbx, [rsp+48h+arg_18]
                mov     [rsp+48h+arg_8], rbx
                jmp     short loc_14095844C
;   } // starts at 140958425
; ---------------------------------------------------------------------------

loc_14095844A:                          ; DATA XREF: .rdata:00000001400C5834↑o
;   __except(1) // owned by 140958425
                jmp     short loc_14095849A
; ---------------------------------------------------------------------------

loc_14095844C:                          ; CODE XREF: sub_1409583E0+3E↑j
                                        ; sub_1409583E0+43↑j ...
                mov     r8, cs:qword_140C15FC8
                and     [rsp+48h+arg_10], 0
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_10]
                mov     [rsp+48h+var_28], rax
                mov     r9b, dil
                mov     edx, 100000h
                call    ObReferenceObjectByHandle
                mov     esi, eax
                test    eax, eax
                js      short loc_140958498
                mov     r8b, dil
                mov     rdx, rbx
                mov     rcx, [rsp+48h+arg_10]
                call    sub_14095D9AC
                mov     esi, eax
                mov     rcx, [rsp+48h+arg_10]
                call    PsDereferenceSiloContext

loc_140958498:                          ; CODE XREF: sub_1409583E0+9A↑j
                mov     eax, esi

loc_14095849A:                          ; CODE XREF: sub_1409583E0+21↑j
                                        ; sub_1409583E0:loc_14095844A↑j
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409583E0
sub_1409583E0   endp

algn_1409584A3:                         ; DATA XREF: .pdata:00000001401249D4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409584B0   proc near               ; DATA XREF: .pdata:00000001401249E0↑o
                                        ; PAGE:000000014098BBF8↓o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                mov     r10d, edx
                mov     rbx, rcx
                and     [rsp+58h+var_10], 0
                mov     rax, gs:188h
                mov     dil, [rax+232h]
                test    dil, dil
                jz      short loc_1409584F6

loc_1409584DB:                          ; DATA XREF: .rdata:00000001400C585C↑o
;   __try { // __except at loc_1409584F4
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovb   rdx, rcx
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_1409584F6
;   } // starts at 1409584DB
; ---------------------------------------------------------------------------

loc_1409584F4:                          ; DATA XREF: .rdata:00000001400C585C↑o
;   __except(1) // owned by 1409584DB
                jmp     short loc_14095854B
; ---------------------------------------------------------------------------

loc_1409584F6:                          ; CODE XREF: sub_1409584B0+29↑j
                                        ; sub_1409584B0+42↑j
                mov     [rsp+58h+var_28], dil
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                mov     edx, r10d
                lea     rcx, [rsp+58h+var_10]
                call    sub_14095DADC
                mov     edx, eax
                mov     [rsp+58h+var_18], eax
                test    eax, eax
                js      short loc_140958549
                test    dil, dil
                jz      short loc_140958541

loc_140958531:                          ; DATA XREF: .rdata:00000001400C586C↑o
;   __try { // __except at loc_14095853B
                mov     rcx, [rsp+58h+var_10]
                mov     [rbx], rcx
                jmp     short loc_140958549
;   } // starts at 140958531
; ---------------------------------------------------------------------------

loc_14095853B:                          ; DATA XREF: .rdata:00000001400C586C↑o
;   __except(1) // owned by 140958531
                mov     edx, [rsp+58h+var_18]
                jmp     short loc_140958549
; ---------------------------------------------------------------------------

loc_140958541:                          ; CODE XREF: sub_1409584B0+7F↑j
                mov     rax, [rsp+58h+var_10]
                mov     [rbx], rax

loc_140958549:                          ; CODE XREF: sub_1409584B0+7A↑j
                                        ; sub_1409584B0+89↑j ...
                mov     eax, edx

loc_14095854B:                          ; CODE XREF: sub_1409584B0:loc_1409584F4↑j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409584B0
sub_1409584B0   endp

algn_140958557:                         ; DATA XREF: .pdata:00000001401249E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140958560   proc near               ; DATA XREF: .pdata:00000001401249EC↑o
                                        ; PAGE:000000014098C078↓o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rdi, r8
                mov     r15d, edx
                mov     rsi, rcx
                xorps   xmm0, xmm0
                movups  [rsp+68h+var_30], xmm0
                test    edx, edx
                jnz     short loc_140958590
                cmp     r9d, 8
                jnz     short loc_1409585A0
                jmp     short loc_1409585AA
; ---------------------------------------------------------------------------

loc_140958590:                          ; CODE XREF: sub_140958560+26↑j
                cmp     r15d, 1
                jnz     loc_1409586E8
                cmp     r9d, 10h
                jz      short loc_1409585AA

loc_1409585A0:                          ; CODE XREF: sub_140958560+2C↑j
                mov     eax, 0C0000004h
                jmp     loc_1409586ED
; ---------------------------------------------------------------------------

loc_1409585AA:                          ; CODE XREF: sub_140958560+2E↑j
                                        ; sub_140958560+3E↑j
                mov     rax, gs:188h
                mov     r14b, [rax+232h]
                test    r14b, r14b
                jz      short loc_1409585F9

loc_1409585BF:                          ; DATA XREF: .rdata:00000001400C589C↑o
;   __try { // __except at loc_1409585F4
                mov     edx, r9d
                mov     r8d, 4
                mov     rcx, rdi
                call    ProbeForWrite
                mov     rbx, [rsp+68h+arg_20]
                test    rbx, rbx
                jz      short loc_1409585F2
                mov     rcx, 7FFFFFFF0000h
                cmp     rbx, rcx
                cmovb   rcx, rbx
                mov     eax, [rcx]
                mov     [rcx], eax

loc_1409585F2:                          ; CODE XREF: sub_140958560+7B↑j
                jmp     short loc_140958601
;   } // starts at 1409585BF
; ---------------------------------------------------------------------------

loc_1409585F4:                          ; DATA XREF: .rdata:00000001400C589C↑o
;   __except(1) // owned by 1409585BF
                jmp     loc_1409586ED
; ---------------------------------------------------------------------------

loc_1409585F9:                          ; CODE XREF: sub_140958560+5D↑j
                mov     rbx, [rsp+68h+arg_20]

loc_140958601:                          ; CODE XREF: sub_140958560:loc_1409585F2↑j
                mov     r8, cs:qword_140CFB250
                and     [rsp+68h+var_38], 0
                and     [rsp+68h+var_40], 0
                lea     rax, [rsp+68h+var_38]
                mov     [rsp+68h+var_48], rax
                mov     r9b, r14b
                mov     edx, 1
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                mov     esi, eax
                mov     [rsp+68h+arg_8], eax
                test    eax, eax
                js      loc_1409586E4
                mov     rcx, [rsp+68h+var_38]
                test    r15d, r15d
                jnz     short loc_14095869B
                mov     r8d, [rcx+4]
                mov     al, [rcx+30h]
                and     al, 1
                mov     rdx, gs:188h
                mov     rcx, [rsp+68h+var_38]
                cmp     [rcx+28h], rdx
                setz    cl
                test    r14b, r14b
                jz      short loc_140958685

loc_140958669:                          ; DATA XREF: .rdata:00000001400C58AC↑o
;   __try { // __except at loc_14095867F
                mov     [rdi], r8d
                mov     [rdi+4], cl
                mov     [rdi+5], al
                test    rbx, rbx
                jz      short loc_14095867D
                mov     dword ptr [rbx], 8

loc_14095867D:                          ; CODE XREF: sub_140958560+115↑j
                jmp     short loc_1409586DA
;   } // starts at 140958669
; ---------------------------------------------------------------------------

loc_14095867F:                          ; DATA XREF: .rdata:00000001400C58AC↑o
;   __except(1) // owned by 140958669
                mov     esi, [rsp+68h+arg_8]
                jmp     short loc_1409586DA
; ---------------------------------------------------------------------------

loc_140958685:                          ; CODE XREF: sub_140958560+107↑j
                mov     [rdi], r8d
                mov     [rdi+4], cl
                mov     [rdi+5], al
                test    rbx, rbx
                jz      short loc_1409586DA
                mov     dword ptr [rbx], 8
                jmp     short loc_1409586DA
; ---------------------------------------------------------------------------

loc_14095869B:                          ; CODE XREF: sub_140958560+E4↑j
                lea     rdx, [rsp+68h+var_30]
                call    sub_14051AFC0
                test    r14b, r14b
                jz      short loc_1409586C6

loc_1409586AA:                          ; DATA XREF: .rdata:00000001400C58BC↑o
;   __try { // __except at loc_1409586C0
                movups  xmm0, [rsp+68h+var_30]
                movdqu  xmmword ptr [rdi], xmm0
                test    rbx, rbx
                jz      short loc_1409586BE
                mov     dword ptr [rbx], 10h

loc_1409586BE:                          ; CODE XREF: sub_140958560+156↑j
                jmp     short loc_1409586DA
;   } // starts at 1409586AA
; ---------------------------------------------------------------------------

loc_1409586C0:                          ; DATA XREF: .rdata:00000001400C58BC↑o
;   __except(1) // owned by 1409586AA
                mov     esi, [rsp+68h+arg_8]
                jmp     short loc_1409586DA
; ---------------------------------------------------------------------------

loc_1409586C6:                          ; CODE XREF: sub_140958560+148↑j
                movups  xmm0, [rsp+68h+var_30]
                movdqu  xmmword ptr [rdi], xmm0
                test    rbx, rbx
                jz      short loc_1409586DA
                mov     dword ptr [rbx], 10h

loc_1409586DA:                          ; CODE XREF: sub_140958560:loc_14095867D↑j
                                        ; sub_140958560+123↑j ...
                mov     rcx, [rsp+68h+var_38]
                call    PsDereferenceSiloContext

loc_1409586E4:                          ; CODE XREF: sub_140958560+D6↑j
                mov     eax, esi
                jmp     short loc_1409586ED
; ---------------------------------------------------------------------------

loc_1409586E8:                          ; CODE XREF: sub_140958560+34↑j
                mov     eax, 0C0000003h

loc_1409586ED:                          ; CODE XREF: sub_140958560+45↑j
                                        ; sub_140958560:loc_1409585F4↑j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140958560
sub_140958560   endp

byte_140958704  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401249EC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14095870C   proc near               ; CODE XREF: sub_140772368+D7A5E↑p
                                        ; DATA XREF: .pdata:00000001401249F8↑o

var_30          = qword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

                mov     [rsp-18h+arg_0], rbx
                mov     [rsp-18h+arg_8], rsi
                mov     [rsp-18h+arg_10], rdi
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                lea     rsi, [rcx+48h]
                mov     rbx, rcx
                mov     rcx, [rcx+80h]
                lea     r8, [rbp+var_20]
                xor     r15d, r15d
                mov     rdx, rsi
                mov     [rbp+var_20], r15
                mov     [rbp+var_18], r15
                call    sub_14095945C
                test    eax, eax
                jns     short loc_14095876A
                xor     edx, edx
                lea     r9, [rbx+58h]
                lea     r8, aCovAllocationF ; "COV: Allocation failure. Data for %wZ m"...
                lea     ecx, [rdx+7Eh]
                call    DbgPrintEx
                jmp     loc_14095896E
; ---------------------------------------------------------------------------

loc_14095876A:                          ; CODE XREF: sub_14095870C+42↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C160B8
                call    ExfAcquirePushLockExclusive
                mov     ecx, cs:dword_140CF9FD8
                lea     eax, [rcx+40h]
                cmp     eax, ecx
                jb      loc_140958936
                movzx   edx, word ptr [rbp+var_20]
                add     eax, edx
                cmp     eax, ecx
                jb      loc_140958936
                or      ecx, 0FFFFFFFFh
                cmp     eax, ecx
                jz      loc_140958936
                lea     edi, [rdx+rax]
                cmp     edi, eax
                jb      loc_140958931
                add     edi, [rbx+7Ch]
                cmp     edi, eax
                jb      loc_140958931
                cmp     edi, ecx
                jz      loc_140958931
                mov     r9d, cs:dword_140C12050
                cmp     edi, r9d
                jbe     short loc_1409587F8
                mov     edx, 2
                mov     [rsp+50h+var_30], rsi
                lea     r8, aCovMaxPagedPoo ; "COV: Max paged pool size (%u) reached, "...
                lea     ecx, [rdx+7Ch]
                call    DbgPrintEx
                jmp     loc_14095894E
; ---------------------------------------------------------------------------

loc_1409587F8:                          ; CODE XREF: sub_14095870C+CC↑j
                mov     r14d, 40h ; '@'
                mov     r8d, 72766F43h
                mov     edx, r14d
                lea     ecx, [r14-3Fh]
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140958912
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     r8, [rsi+20h]
                lea     rdx, [rbp+var_20]
                lea     ecx, [r14-3Fh]
                call    RtlDuplicateUnicodeString
                test    eax, eax
                js      loc_140958912
                cmp     [rbp+var_18], r15
                jz      short loc_140958851
                lea     rcx, [rbp+var_20]
                call    RtlFreeUnicodeString

loc_140958851:                          ; CODE XREF: sub_14095870C+13A↑j
                mov     rcx, [rbx+80h]
                lea     r8, [rbp+var_20]
                lea     rdx, [rbx+58h]
                call    sub_14095945C
                test    eax, eax
                js      loc_140958912
                lea     r8, [rsi+10h]
                mov     ecx, 1
                lea     rdx, [rbp+var_20]
                call    RtlDuplicateUnicodeString
                test    eax, eax
                js      loc_140958912
                mov     eax, [rbx+7Ch]
                mov     ecx, 1
                mov     [rsi+30h], eax
                mov     r8d, 72766F43h
                mov     edx, [rbx+7Ch]
                call    ExAllocatePoolWithTag
                mov     [rsi+38h], rax
                test    rax, rax
                jz      short loc_140958912
                mov     r8d, [rbx+7Ch]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r8d, [rbx+7Ch]
                mov     rdx, [rbx+80h]
                mov     rcx, [rsi+38h]
                call    memmove
                mov     rax, cs:qword_140C160C8
                lea     rcx, qword_140C160C0
                cmp     [rax], rcx
                jz      short loc_1409588E5
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1409588E5:                          ; CODE XREF: sub_14095870C+1D0↑j
                mov     [rsi], rcx
                lea     r9, [rbp+var_10]
                mov     [rsi+8], rax
                lea     r8, aCovEntryCreate ; "COV: Entry created for %wZ in ExpCovUnl"...
                mov     [rax], rsi
                mov     cs:qword_140C160C8, rsi
                movups  xmm0, xmmword ptr [rbx+58h]
                mov     cs:dword_140CF9FD8, edi
                movdqu  [rbp+var_10], xmm0
                jmp     short loc_140958941
; ---------------------------------------------------------------------------

loc_140958912:                          ; CODE XREF: sub_14095870C+10A↑j
                                        ; sub_14095870C+130↑j ...
                xor     edx, edx
                lea     r9, [rbx+58h]
                lea     r8, aCovAllocationF ; "COV: Allocation failure. Data for %wZ m"...
                lea     ecx, [rdx+7Eh]
                call    DbgPrintEx
                mov     rcx, rsi
                call    sub_140958A0C
                jmp     short loc_14095894E
; ---------------------------------------------------------------------------

loc_140958931:                          ; CODE XREF: sub_14095870C+A9↑j
                                        ; sub_14095870C+B4↑j ...
                mov     r9, rsi
                jmp     short loc_14095893A
; ---------------------------------------------------------------------------

loc_140958936:                          ; CODE XREF: sub_14095870C+85↑j
                                        ; sub_14095870C+93↑j ...
                lea     r9, [rbx+58h]

loc_14095893A:                          ; CODE XREF: sub_14095870C+228↑j
                lea     r8, aCovOverflowWhe ; "COV: Overflow when calculating paged po"...

loc_140958941:                          ; CODE XREF: sub_14095870C+204↑j
                mov     edx, 2
                lea     ecx, [rdx+7Ch]
                call    DbgPrintEx

loc_14095894E:                          ; CODE XREF: sub_14095870C+E7↑j
                                        ; sub_14095870C+223↑j
                lea     rcx, qword_140C160B8
                call    ExfReleasePushLock
                call    KeLeaveCriticalRegion
                cmp     [rbp+var_18], r15
                jz      short loc_14095896E
                lea     rcx, [rbp+var_20]
                call    RtlFreeUnicodeString

loc_14095896E:                          ; CODE XREF: sub_14095870C+59↑j
                                        ; sub_14095870C+257↑j
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095870C   endp

algn_140958989:                         ; DATA XREF: .pdata:00000001401249F8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140958990   proc near               ; CODE XREF: sub_140772368+D79B7↑p
                                        ; sub_140772368+D7A05↑p ...
                push    rbx
                sub     rsp, 20h
                test    rcx, rcx
                jnz     short loc_1409589A7
                mov     eax, 0C000000Dh

loc_1409589A0:                          ; CODE XREF: sub_140958990+6A↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409589A7:                          ; CODE XREF: sub_140958990+9↑j
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_1409589FC
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     short loc_1409589FC
                mov     [rdx], rax
                or      r8d, 0FFFFFFFFh
                mov     [rax+8], rdx
                movzx   edx, word ptr [rcx+10h]
                add     edx, 40h ; '@'
                cmp     edx, 40h ; '@'
                jnb     short loc_1409589D5
                mov     edx, r8d
                jmp     short loc_1409589E2
; ---------------------------------------------------------------------------

loc_1409589D5:                          ; CODE XREF: sub_140958990+3E↑j
                movzx   eax, word ptr [rcx+20h]
                add     edx, eax
                cmp     edx, 40h ; '@'
                cmovb   edx, r8d

loc_1409589E2:                          ; CODE XREF: sub_140958990+43↑j
                mov     ebx, [rcx+30h]
                add     ebx, edx
                cmp     ebx, edx
                cmovb   ebx, r8d
                call    sub_140958A0C
                sub     cs:dword_140CF9FD8, ebx
                xor     eax, eax
                jmp     short loc_1409589A0
; ---------------------------------------------------------------------------

loc_1409589FC:                          ; CODE XREF: sub_140958990+1E↑j
                                        ; sub_140958990+27↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140958990   endp

; ---------------------------------------------------------------------------
byte_140958A03  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A04↑o

; =============== S U B R O U T I N E =======================================


sub_140958A0C   proc near               ; CODE XREF: sub_14095870C+21E↑p
                                        ; sub_140958990+5D↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_140958A58
                cmp     qword ptr [rcx+18h], 0
                jz      short loc_140958A2A
                add     rcx, 10h
                call    RtlFreeUnicodeString

loc_140958A2A:                          ; CODE XREF: sub_140958A0C+13↑j
                cmp     qword ptr [rbx+28h], 0
                jz      short loc_140958A3A
                lea     rcx, [rbx+20h]
                call    RtlFreeUnicodeString

loc_140958A3A:                          ; CODE XREF: sub_140958A0C+23↑j
                mov     rcx, [rbx+38h]
                test    rcx, rcx
                jz      short loc_140958A4A
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140958A4A:                          ; CODE XREF: sub_140958A0C+35↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                xor     eax, eax
                jmp     short loc_140958A5D
; ---------------------------------------------------------------------------

loc_140958A58:                          ; CODE XREF: sub_140958A0C+C↑j
                mov     eax, 0C000000Dh

loc_140958A5D:                          ; CODE XREF: sub_140958A0C+4A↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140958A0C   endp

byte_140958A64  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A10↑o

; =============== S U B R O U T I N E =======================================


sub_140958A6C   proc near               ; CODE XREF: sub_140958D60+27↓p
                                        ; sub_140959630+14↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     eax, edx
                mov     rdx, [rcx+80h]
                test    rdx, rdx
                jnz     short loc_140958A82
                xor     al, al
                jmp     short loc_140958A96
; ---------------------------------------------------------------------------

loc_140958A82:                          ; CODE XREF: sub_140958A6C+10↑j
                mov     [rsp+38h+var_18], r9
                add     rcx, 58h ; 'X'
                mov     r9, r8
                mov     r8d, eax
                call    sub_140958AA4

loc_140958A96:                          ; CODE XREF: sub_140958A6C+14↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140958A6C   endp

byte_140958A9C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A1C↑o

; =============== S U B R O U T I N E =======================================


sub_140958AA4   proc near               ; CODE XREF: sub_140958A6C+25↑p
                                        ; sub_140958B4C+22↓p
                                        ; DATA XREF: ...

var_18          = byte ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 30h
                xor     esi, esi
                mov     rdi, r9
                mov     [rax-18h], rsi
                mov     r10, rdx
                mov     [rax-10h], rsi
                mov     bl, sil
                test    r8d, r8d
                jz      short loc_140958AFF
                sub     r8d, 1
                jz      short loc_140958B25
                cmp     r8d, 1
                jnz     short loc_140958B12
                mov     rdx, rcx
                lea     r8, [rax-18h]
                mov     rcx, r10
                call    sub_14095945C
                test    eax, eax
                js      short loc_140958B01
                mov     r8b, 1
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rdi
                call    RtlCompareUnicodeString
                test    eax, eax
                jnz     short loc_140958B01

loc_140958AFF:                          ; CODE XREF: sub_140958AA4+26↑j
                mov     bl, 1

loc_140958B01:                          ; CODE XREF: sub_140958AA4+45↑j
                                        ; sub_140958AA4+59↑j
                cmp     [rsp+38h+var_10], rsi
                jz      short loc_140958B12
                lea     rcx, [rsp+38h+var_18]
                call    RtlFreeUnicodeString

loc_140958B12:                          ; CODE XREF: sub_140958AA4+32↑j
                                        ; sub_140958AA4+62↑j ...
                mov     rsi, [rsp+38h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140958B25:                          ; CODE XREF: sub_140958AA4+2C↑j
                mov     rcx, [rsp+38h+arg_20]
                add     rdx, 8
                mov     r8d, 10h
                call    RtlCompareMemory
                cmp     rax, 10h
                jnz     short loc_140958B12
                mov     bl, 1
                jmp     short loc_140958B12
sub_140958AA4   endp

; ---------------------------------------------------------------------------
byte_140958B43  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A28↑o

; =============== S U B R O U T I N E =======================================


sub_140958B4C   proc near               ; CODE XREF: sub_140958DEC+323↓p
                                        ; sub_140959674+167↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     eax, edx
                mov     rdx, [rcx+38h]
                test    rdx, rdx
                jnz     short loc_140958B5F
                xor     al, al
                jmp     short loc_140958B73
; ---------------------------------------------------------------------------

loc_140958B5F:                          ; CODE XREF: sub_140958B4C+D↑j
                mov     [rsp+38h+var_18], r9
                add     rcx, 10h
                mov     r9, r8
                mov     r8d, eax
                call    sub_140958AA4

loc_140958B73:                          ; CODE XREF: sub_140958B4C+11↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140958B4C   endp

algn_140958B79:                         ; DATA XREF: .pdata:0000000140124A34↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140958B80   proc near               ; CODE XREF: sub_140958DEC+1D4↓p
                                        ; DATA XREF: .pdata:0000000140124A40↑o

var_10          = xmmword ptr -10h
arg_0           = qword ptr  40h
arg_8           = dword ptr  48h
arg_10          = dword ptr  50h
arg_18          = dword ptr  58h

                mov     [rsp-38h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 30h
                xor     eax, eax
                xorps   xmm0, xmm0
                cmp     cs:byte_140CFC40A, al
                mov     rdi, rcx
                mov     [rbp+arg_10], eax
                mov     esi, eax
                movups  [rbp+var_10], xmm0
                mov     [rbp+arg_8], eax
                jz      loc_140958D3D
                lea     ebx, [rax+40h]
                mov     r8d, 72766F43h
                mov     edx, ebx
                lea     ecx, [rax+1]
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_140958D3D
                mov     r8d, ebx
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     r9, [rbp+arg_10]
                mov     rcx, r14
                lea     r8, [rbp+arg_8]
                call    sub_1404F1AA0
                test    al, al
                jz      loc_140958D24
                mov     rdx, r14
                lea     rcx, [rbp+var_10]
                call    RtlInitUnicodeString
                mov     r12b, [rdi+0Ch]
                mov     edx, [rdi+8]
                mov     eax, [rdi+30h]
                mov     r13, [rdi]
                mov     [rbp+arg_18], edx
                test    r12b, r12b
                jnz     short loc_140958C29
                test    eax, eax
                jnz     loc_140958D24
                mov     ebx, [rbp+arg_8]
                jmp     short loc_140958C5A
; ---------------------------------------------------------------------------

loc_140958C29:                          ; CODE XREF: sub_140958B80+9A↑j
                cmp     r12b, 1
                jnz     loc_140958D24
                cmp     eax, 2
                jnz     loc_140958D24
                mov     ebx, [rbp+arg_10]
                lea     rcx, [rdi+10h]
                mov     r8b, r12b
                lea     rdx, [rbp+var_10]
                call    RtlCompareUnicodeString
                test    eax, eax
                jnz     loc_140958D24
                mov     edx, [rbp+arg_18]

loc_140958C5A:                          ; CODE XREF: sub_140958B80+A7↑j
                lea     ecx, [rbx+20h]
                or      r15d, 0FFFFFFFFh
                cmp     ecx, 20h ; ' '
                jb      short loc_140958C76
                movzx   eax, word ptr [rbp+var_10]
                add     ecx, eax
                cmp     ecx, 20h ; ' '
                cmovb   ecx, r15d
                mov     r15d, ecx

loc_140958C76:                          ; CODE XREF: sub_140958B80+E4↑j
                mov     eax, [rdi+38h]
                lea     ecx, [rax+r15]
                cmp     ecx, eax
                jb      loc_140958D24
                mov     [rdi+38h], ecx
                cmp     edx, ecx
                jnb     short loc_140958C94
                inc     dword ptr [rdi+34h]
                jmp     loc_140958D24
; ---------------------------------------------------------------------------

loc_140958C94:                          ; CODE XREF: sub_140958B80+10A↑j
                mov     eax, 1000h
                mov     ecx, 200h
                cmp     ebx, eax
                mov     r8d, 72766F43h
                cmova   eax, ebx
                mov     edx, eax
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140958D24
                mov     r8, rax
                mov     edx, ebx
                mov     cl, r12b
                call    sub_1404F1948
                test    al, al
                jz      short loc_140958D24
                lea     rcx, [r13+1Ch]
                mov     dword ptr [r13+4], 1
                mov     r8, rbx
                mov     [r13+0], r15d
                mov     rdx, rsi
                mov     [r13+18h], ebx
                call    memmove
                movzx   edx, word ptr [rbp+var_10]
                lea     rcx, [r13+20h]
                movzx   eax, word ptr [rbp+var_10+2]
                add     rcx, rbx
                mov     [r13+8], dx
                mov     r8d, edx
                mov     rdx, qword ptr [rbp+var_10+8]
                mov     [r13+10h], rcx
                mov     [r13+0Ah], ax
                call    memmove
                inc     dword ptr [rdi+34h]
                mov     eax, r15d
                add     [rdi], rax
                test    r12b, r12b
                jz      short loc_140958D24
                call    sub_1404F1E7C

loc_140958D24:                          ; CODE XREF: sub_140958B80+75↑j
                                        ; sub_140958B80+9E↑j ...
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                test    rsi, rsi
                jz      short loc_140958D3D
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_140958D3D:                          ; CODE XREF: sub_140958B80+31↑j
                                        ; sub_140958B80+50↑j ...
                mov     rbx, [rsp+30h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140958B80   endp

algn_140958D53:                         ; DATA XREF: .pdata:0000000140124A40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140958D60   proc near               ; DATA XREF: .pdata:0000000140124A4C↑o
                                        ; sub_140958DEC+1AA↓o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+arg_8], 0
                lea     r9, [rdx+20h]
                mov     rbx, rdx
                lea     r8, [rdx+10h]
                mov     edx, [rdx+30h]
                mov     rsi, rcx
                xor     edi, edi
                call    sub_140958A6C
                cmp     al, 1
                jnz     short loc_140958DD2
                mov     r9, [rbx]
                lea     rcx, [rsp+38h+arg_8]
                mov     r8d, [rbx+8]
                lea     rax, [rbx+38h]
                mov     dl, [rbx+0Ch]
                mov     [rsp+38h+var_10], rcx
                mov     rcx, rsi
                mov     [rsp+38h+var_18], rax
                call    sub_1409592EC
                mov     edi, eax
                test    eax, eax
                jz      short loc_140958DC2
                cmp     eax, 0C0000004h
                jnz     short loc_140958DD2

loc_140958DC2:                          ; CODE XREF: sub_140958D60+59↑j
                inc     dword ptr [rbx+34h]
                test    eax, eax
                jnz     short loc_140958DD0
                mov     eax, [rsp+38h+arg_8]
                add     [rbx], rax

loc_140958DD0:                          ; CODE XREF: sub_140958D60+67↑j
                xor     edi, edi

loc_140958DD2:                          ; CODE XREF: sub_140958D60+2E↑j
                                        ; sub_140958D60+60↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140958D60   endp

byte_140958DE5  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A4C↑o

; =============== S U B R O U T I N E =======================================


sub_140958DEC   proc near               ; CODE XREF: sub_14060DA00+2233↑p
                                        ; DATA XREF: .pdata:0000000140124A58↑o

var_128         = dword ptr -128h
var_124         = dword ptr -124h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = xmmword ptr -0F8h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = byte ptr -0CCh
var_C8          = byte ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+148h+var_48], rax
                mov     r15, r8
                mov     [rsp+148h+var_110], r8
                mov     edi, edx
                mov     [rsp+148h+var_108], edi
                mov     rbx, rcx
                mov     [rsp+148h+var_E0], rcx
                mov     r14d, 40h ; '@'
                mov     r8d, r14d
                xor     edx, edx
                lea     rcx, [rsp+148h+var_D8]
                call    memset
                xorps   xmm0, xmm0
                movups  [rsp+148h+var_F8], xmm0
                and     [rsp+148h+var_128], 0
                and     [rsp+148h+var_120], 0
                xor     esi, esi
                mov     [rsp+148h+var_118], rsi
                mov     [rsp+148h+var_A0], r14d
                mov     [rsp+148h+var_D0], edi
                cmp     cs:dword_140C12050, esi
                jnz     short loc_140958E74
                mov     eax, 0C0000022h
                jmp     loc_1409592C0
; ---------------------------------------------------------------------------

loc_140958E74:                          ; CODE XREF: sub_140958DEC+7C↑j
                test    r15, r15
                jz      short loc_140958E7C
                mov     [r15], r14d

loc_140958E7C:                          ; CODE XREF: sub_140958DEC+8B↑j
                cmp     edi, r14d
                jnb     short loc_140958E8B
                mov     eax, 0C0000004h
                jmp     loc_1409592C0
; ---------------------------------------------------------------------------

loc_140958E8B:                          ; CODE XREF: sub_140958DEC+93↑j
                lea     rax, [rbx+20h]
                mov     [rsp+148h+var_120], rax

loc_140958E94:                          ; DATA XREF: .rdata:00000001400C5984↑o
;   __try { // __except at loc_14095927B
                mov     rax, rbx
                mov     rcx, 7FFFFFFF0000h
                cmp     rbx, rcx
                cmovnb  rax, rcx
                movups  xmm0, xmmword ptr [rax]
                movaps  [rsp+148h+var_98], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movaps  [rsp+148h+var_88], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movaps  [rsp+148h+var_78], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movaps  [rsp+148h+var_68], xmm1
;   } // starts at 140958E94

loc_140958ED7:                          ; DATA XREF: .rdata:00000001400C5984↑o
                cmp     dword ptr [rsp+148h+var_98], 1
                setz    [rsp+148h+var_CC]
                lea     r9, [rsp+148h+var_128]
                lea     r8, [rsp+148h+var_58]
                lea     rdx, [rsp+148h+var_F8]
                lea     rcx, [rsp+148h+var_98+8]
                call    sub_1409594EC
                mov     ebx, eax
                test    eax, eax
                js      loc_140959282
                mov     eax, [rsp+148h+var_128]
                mov     [rsp+148h+var_A8], eax
                movups  xmm0, [rsp+148h+var_58]
                movdqu  [rsp+148h+var_B8], xmm0
                cmp     qword ptr [rsp+148h+var_F8+8], 0
                jz      short loc_140958F52
                lea     r8, [rsp+148h+var_C8]
                lea     rdx, [rsp+148h+var_F8]
                mov     ecx, 1
                call    RtlDuplicateUnicodeString
                mov     ebx, eax
                test    eax, eax
                js      loc_140959282

loc_140958F52:                          ; CODE XREF: sub_140958DEC+143↑j
                mov     rdx, rdi
                mov     ecx, 200h
                mov     r8d, 72766F43h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     [rsp+148h+var_118], rax
                mov     [rsp+148h+var_D8], rax
                test    rax, rax
                jnz     short loc_140958F81
                mov     ebx, 0C000009Ah
                jmp     loc_140959282
; ---------------------------------------------------------------------------

loc_140958F81:                          ; CODE XREF: sub_140958DEC+189↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rdx, [rsp+148h+var_D8]
                lea     rcx, sub_140958D60
                call    sub_1407932A0
                mov     ebx, eax
                test    eax, eax
                jns     short loc_140958FBB
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_140959282
; ---------------------------------------------------------------------------

loc_140958FBB:                          ; CODE XREF: sub_140958DEC+1BA↑j
                lea     rcx, [rsp+148h+var_D8]
                call    sub_140958B80
                mov     r13d, [rsp+148h+var_A0]
                mov     ecx, [rsp+148h+var_A4]
                mov     [rsp+148h+var_124], ecx
                cmp     edi, r13d
                jb      loc_14095909D
                mov     rax, [rsp+148h+var_D8]
                sub     rax, rsi
                sar     rax, 5
                test    eax, eax
                jz      loc_14095909D
                mov     rdi, rsi
                mov     eax, ecx
                mov     r14, [rsp+148h+var_120]

loc_140958FFF:                          ; CODE XREF: sub_140958DEC+28D↓j
                test    eax, eax
                jz      loc_140959095
                mov     eax, [rdi+18h]
                lea     r12, [r14+20h]
                add     r12, rax

loc_140959011:                          ; DATA XREF: .rdata:00000001400C5994↑o
;   __try { // __except at loc_14095907B
                mov     eax, [rdi]
                mov     [r14], eax
                mov     eax, [rdi+4]
                mov     [r14+4], eax
                mov     eax, [rdi+18h]
                mov     [r14+18h], eax
                mov     r8d, [rdi+18h]
                lea     rdx, [rdi+1Ch]
                lea     rcx, [r14+1Ch]
                call    memmove
                movzx   eax, word ptr [rdi+8]
                mov     [r14+8], ax
                movzx   eax, word ptr [rdi+0Ah]
                mov     [r14+0Ah], ax
                mov     [r14+10h], r12
                movzx   r8d, word ptr [rdi+8]
                mov     rdx, [rdi+10h]
                mov     rcx, r12
                call    memmove
                mov     eax, [rdi]
                add     r14, rax
                mov     [rsp+148h+var_120], r14
;   } // starts at 140959011

loc_140959066:                          ; DATA XREF: .rdata:00000001400C5994↑o
                add     rdi, rax
                mov     eax, [rsp+148h+var_A4]
                dec     eax
                mov     [rsp+148h+var_A4], eax
                jmp     short loc_140958FFF
; ---------------------------------------------------------------------------

loc_14095907B:                          ; DATA XREF: .rdata:00000001400C5994↑o
;   __except(1) // owned by 140959011
                mov     ebx, eax
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rsi, [rsp+148h+var_118]
                jmp     loc_140959282
; ---------------------------------------------------------------------------

loc_140959095:                          ; CODE XREF: sub_140958DEC+215↑j
                mov     r12d, 0C0000004h
                jmp     short loc_1409590AF
; ---------------------------------------------------------------------------

loc_14095909D:                          ; CODE XREF: sub_140958DEC+1EF↑j
                                        ; sub_140958DEC+203↑j
                mov     r12d, 0C0000004h
                cmp     edi, r13d
                cmovb   ebx, r12d
                mov     r14, [rsp+148h+var_120]

loc_1409590AF:                          ; CODE XREF: sub_140958DEC+2AF↑j
                lea     rcx, qword_140C160B8
                cmp     dword ptr [rsp+148h+var_98], 1
                jnz     short loc_1409590C7
                call    ExfAcquirePushLockExclusive
                jmp     short loc_1409590CC
; ---------------------------------------------------------------------------

loc_1409590C7:                          ; CODE XREF: sub_140958DEC+2D2↑j
                call    ExfAcquirePushLockShared

loc_1409590CC:                          ; CODE XREF: sub_140958DEC+2D9↑j
                mov     rdi, cs:qword_140C160C0

loc_1409590D3:                          ; CODE XREF: sub_140958DEC+30D↓j
                                        ; sub_140958DEC+38E↓j
                lea     rax, qword_140C160C0
                cmp     rdi, rax
                jz      loc_140959242
                mov     [rsp+148h+var_E8], rdi
                mov     rax, [rdi+38h]
                mov     [rsp+148h+var_100], rax
                test    rax, rax
                jnz     short loc_1409590FB

loc_1409590F6:                          ; CODE XREF: sub_140958DEC+32A↓j
                                        ; sub_140958DEC+42E↓j
                mov     rdi, [rdi]
                jmp     short loc_1409590D3
; ---------------------------------------------------------------------------

loc_1409590FB:                          ; CODE XREF: sub_140958DEC+308↑j
                lea     r9, [rsp+148h+var_58]
                lea     r8, [rsp+148h+var_F8]
                mov     edx, [rsp+148h+var_128]
                mov     rcx, rdi
                call    sub_140958B4C
                test    al, al
                jz      short loc_1409590F6
                mov     ecx, [rdi+30h]
                cmp     dword ptr [rsp+148h+var_98], 1
                jz      short loc_14095912D
                mov     rax, [rsp+148h+var_100]
                sub     ecx, [rax+1Ch]

loc_14095912D:                          ; CODE XREF: sub_140958DEC+337↑j
                lea     r15d, [rcx+20h]
                cmp     r15d, 20h ; ' '
                jnb     short loc_14095913D
                or      r15d, 0FFFFFFFFh
                jmp     short loc_140959151
; ---------------------------------------------------------------------------

loc_14095913D:                          ; CODE XREF: sub_140958DEC+349↑j
                movzx   eax, word ptr [rdi+20h]
                add     r15d, eax
                cmp     r15d, 20h ; ' '
                mov     eax, 0FFFFFFFFh
                cmovb   r15d, eax

loc_140959151:                          ; CODE XREF: sub_140958DEC+34F↑j
                lea     eax, [r15+r13]
                cmp     eax, r13d
                jnb     short loc_14095917F
                lea     r9, [rdi+20h]
                lea     r8, aCovOverflowWhe_0 ; "COV: Overflow when calculating total re"...
                mov     edx, 2
                lea     ecx, [rdx+7Ch]
                call    DbgPrintEx
                mov     rdi, [rdi]
                mov     r15, [rsp+148h+var_110]
                jmp     loc_1409590D3
; ---------------------------------------------------------------------------

loc_14095917F:                          ; CODE XREF: sub_140958DEC+36C↑j
                mov     r13d, eax
                cmp     [rsp+148h+var_108], eax
                jnb     short loc_14095919A
                mov     r15, [rsp+148h+var_110]
                test    r15, r15
                jz      short loc_140959195
                mov     [r15], eax

loc_140959195:                          ; CODE XREF: sub_140958DEC+3A4↑j
                mov     ebx, r12d
                jmp     short loc_140959216
; ---------------------------------------------------------------------------

loc_14095919A:                          ; CODE XREF: sub_140958DEC+39A↑j
                mov     r8d, ecx
                lea     rax, [r14+20h]
                add     rax, r8
                mov     [rsp+148h+var_100], rax

loc_1409591A9:                          ; DATA XREF: .rdata:00000001400C59A4↑o
;   __try { // __except at loc_14095921F
                mov     [r14], r15d
                and     dword ptr [r14+4], 0
                mov     [r14+18h], ecx
                lea     rcx, [r14+1Ch]
                mov     rdx, [rdi+38h]
                call    memmove
                movzx   eax, word ptr [rdi+20h]
                mov     [r14+8], ax
                movzx   eax, word ptr [rdi+20h]
                mov     [r14+0Ah], ax
                mov     rax, [rsp+148h+var_100]
                mov     [r14+10h], rax
                movzx   r8d, word ptr [rdi+20h]
                mov     rdx, [rdi+28h]
                mov     rcx, rax
                call    memmove
                mov     eax, r15d
                add     r14, rax
                mov     [rsp+148h+var_120], r14
;   } // starts at 1409591A9

loc_1409591F9:                          ; DATA XREF: .rdata:00000001400C59A4↑o
                cmp     dword ptr [rsp+148h+var_98], 1
                jnz     short loc_140959211
                mov     rdi, [rdi+8]
                mov     rcx, [rsp+148h+var_E8]
                call    sub_140958990

loc_140959211:                          ; CODE XREF: sub_140958DEC+415↑j
                mov     r15, [rsp+148h+var_110]

loc_140959216:                          ; CODE XREF: sub_140958DEC+3AC↑j
                inc     [rsp+148h+var_124]
                jmp     loc_1409590F6
; ---------------------------------------------------------------------------

loc_14095921F:                          ; DATA XREF: .rdata:00000001400C59A4↑o
;   __except(1) // owned by 1409591A9
                mov     ebx, eax
                lea     rcx, qword_140C160B8
                call    ExfReleasePushLock
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rsi, [rsp+148h+var_118]
                jmp     short loc_140959282
; ---------------------------------------------------------------------------

loc_140959242:                          ; CODE XREF: sub_140958DEC+2F1↑j
                lea     rcx, qword_140C160B8
                call    ExfReleasePushLock
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    r15, r15
                jz      short loc_140959264
                mov     [r15], r13d

loc_140959264:                          ; CODE XREF: sub_140958DEC+473↑j
                                        ; DATA XREF: .rdata:00000001400C59B4↑o
;   __try { // __except at loc_140959272
                mov     eax, [rsp+148h+var_124]
                mov     rcx, [rsp+148h+var_E0]
                mov     [rcx+4], eax
                jmp     short loc_140959282
;   } // starts at 140959264
; ---------------------------------------------------------------------------

loc_140959272:                          ; DATA XREF: .rdata:00000001400C59B4↑o
;   __except(1) // owned by 140959264
                mov     ebx, eax
                mov     rsi, [rsp+148h+var_118]
                jmp     short loc_140959282
; ---------------------------------------------------------------------------

loc_14095927B:                          ; DATA XREF: .rdata:00000001400C5984↑o
;   __except(1) // owned by 140958E94
                mov     ebx, eax
                mov     rsi, [rsp+148h+var_118]

loc_140959282:                          ; CODE XREF: sub_140958DEC+11B↑j
                                        ; sub_140958DEC+160↑j ...
                cmp     qword ptr [rsp+148h+var_F8+8], 0
                jz      short loc_140959294
                lea     rcx, [rsp+148h+var_F8]
                call    RtlFreeUnicodeString

loc_140959294:                          ; CODE XREF: sub_140958DEC+49C↑j
                cmp     [rsp+148h+var_C0], 0
                jz      short loc_1409592AC
                lea     rcx, [rsp+148h+var_C8]
                call    RtlFreeUnicodeString

loc_1409592AC:                          ; CODE XREF: sub_140958DEC+4B1↑j
                test    rsi, rsi
                jz      short loc_1409592BE
                mov     edx, 72766F43h
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1409592BE:                          ; CODE XREF: sub_140958DEC+4C3↑j
                mov     eax, ebx

loc_1409592C0:                          ; CODE XREF: sub_140958DEC+83↑j
                                        ; sub_140958DEC+9A↑j
                mov     rcx, [rsp+148h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 110h
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
; } // starts at 140958DEC
sub_140958DEC   endp

byte_1409592E4  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A58↑o

; =============== S U B R O U T I N E =======================================


sub_1409592EC   proc near               ; CODE XREF: sub_140958D60+50↑p
                                        ; DATA XREF: .pdata:0000000140124A64↑o

var_38          = word ptr -38h
var_36          = word ptr -36h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], r8d
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, [rcx+80h]
                lea     rbx, [rcx+48h]
                xor     eax, eax
                lea     r8, [r11-38h]
                mov     r13b, dl
                mov     [r11-38h], rax
                mov     r15, rcx
                mov     [r11-30h], rax
                mov     rdx, rbx
                mov     rcx, rsi
                mov     r14, r9
                call    sub_14095945C
                mov     edi, eax
                test    eax, eax
                js      loc_140959428
                mov     edx, [r15+7Ch]
                test    r13b, r13b
                jnz     short loc_14095934A
                sub     edx, [rsi+1Ch]

loc_14095934A:                          ; CODE XREF: sub_1409592EC+59↑j
                movzx   ebp, [rsp+58h+var_38]
                lea     ecx, [rdx+20h]
                or      r8d, 0FFFFFFFFh
                cmp     ecx, 20h ; ' '
                jnb     short loc_140959360
                mov     ecx, r8d
                jmp     short loc_140959369
; ---------------------------------------------------------------------------

loc_140959360:                          ; CODE XREF: sub_1409592EC+6D↑j
                add     ecx, ebp
                cmp     ecx, 20h ; ' '
                cmovb   ecx, r8d

loc_140959369:                          ; CODE XREF: sub_1409592EC+72↑j
                mov     rax, [rsp+58h+arg_28]
                mov     [rax], ecx
                cmp     ecx, r8d
                jnz     short loc_140959399
                lea     r8, aCovOverflowWhe_1 ; "COV: Overflow when calculating Required"...

loc_14095937F:                          ; CODE XREF: sub_1409592EC+C8↓j
                mov     edx, 2
                mov     r9, rbx
                lea     ecx, [rdx+7Ch]
                call    DbgPrintEx
                mov     edi, 0C0000095h
                jmp     loc_140959428
; ---------------------------------------------------------------------------

loc_140959399:                          ; CODE XREF: sub_1409592EC+8A↑j
                mov     r9, [rsp+58h+arg_20]
                mov     eax, [r9]
                lea     r8d, [rax+rcx]
                cmp     r8d, eax
                jnb     short loc_1409593B6
                lea     r8, aCovOverflowWhe_0 ; "COV: Overflow when calculating total re"...
                jmp     short loc_14095937F
; ---------------------------------------------------------------------------

loc_1409593B6:                          ; CODE XREF: sub_1409592EC+BF↑j
                mov     [r9], r8d
                cmp     [rsp+58h+arg_10], r8d
                jnb     short loc_1409593C7
                mov     edi, 0C0000004h
                jmp     short loc_140959428
; ---------------------------------------------------------------------------

loc_1409593C7:                          ; CODE XREF: sub_1409592EC+D2↑j
                mov     [r14], ecx
                lea     rcx, [r14+1Ch]
                mov     dword ptr [r14+4], 1
                mov     [r14+18h], edx
                mov     ebx, edx
                mov     r8d, edx
                mov     rdx, [r15+80h]
                call    memmove
                movzx   eax, [rsp+58h+var_36]
                lea     rcx, [r14+20h]
                mov     rdx, [rsp+58h+var_30]
                add     rcx, rbx
                mov     r8, rbp
                mov     [r14+10h], rcx
                mov     [r14+8], bp
                mov     [r14+0Ah], ax
                call    memmove
                test    r13b, r13b
                jz      short loc_140959428
                mov     ecx, [rsi+20h]
                xor     edx, edx
                mov     r8d, [rsi+1Ch]
                add     rcx, rsi
                call    memset

loc_140959428:                          ; CODE XREF: sub_1409592EC+4C↑j
                                        ; sub_1409592EC+A8↑j ...
                cmp     [rsp+58h+var_30], 0
                jz      short loc_14095943A
                lea     rcx, [rsp+58h+var_38]
                call    RtlFreeUnicodeString

loc_14095943A:                          ; CODE XREF: sub_1409592EC+142↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409592EC   endp

byte_140959454  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A64↑o

; =============== S U B R O U T I N E =======================================


sub_14095945C   proc near               ; CODE XREF: sub_140772368+D78D0↑p
                                        ; sub_14095870C+3B↑p ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 40h
                mov     eax, [rcx+24h]
                mov     rbx, r8
                and     qword ptr [r11-18h], 0
                mov     rdi, rdx
                and     qword ptr [r11-10h], 0
                mov     r9d, [rax+rcx]
                cmp     r9d, 50000h
                jz      short loc_1409594B2
                mov     [r11-28h], rdx
                lea     r8, aCovInstrumenta ; "COV: Instrumentation Version %ul is not"...
                mov     edx, 2
                lea     ecx, [rdx+7Ch]
                call    DbgPrintEx
                mov     r8, rbx
                mov     rdx, rdi
                mov     ecx, 1
                call    RtlDuplicateUnicodeString
                jmp     short loc_1409594D7
; ---------------------------------------------------------------------------

loc_1409594B2:                          ; CODE XREF: sub_14095945C+2A↑j
                mov     edx, [rax+rcx+0Ch]
                add     rdx, rcx
                lea     rcx, [rsp+48h+var_18]
                call    RtlInitAnsiStringEx
                test    eax, eax
                js      short loc_1409594D7
                mov     r8b, 1
                lea     rdx, [rsp+48h+var_18]
                mov     rcx, rbx
                call    RtlAnsiStringToUnicodeString

loc_1409594D7:                          ; CODE XREF: sub_14095945C+54↑j
                                        ; sub_14095945C+69↑j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095945C   endp

byte_1409594E3  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A70↑o

; =============== S U B R O U T I N E =======================================


sub_1409594EC   proc near               ; CODE XREF: sub_140958DEC+112↑p
                                        ; sub_140959674+A8↓p
                                        ; DATA XREF: ...

var_18          = byte ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 30h
                mov     r15, rdx
                xor     ebx, ebx
                mov     r10d, [rcx]
                mov     [r9], r10d
                test    r10d, r10d
                jz      loc_140959609
                sub     r10d, 1
                jz      loc_140959600
                cmp     r10d, 1
                jnz     loc_1409595F9
                movups  xmm0, xmmword ptr [rcx+8]
                movups  xmmword ptr [rax-18h], xmm0
                movd    eax, xmm0
                test    ax, ax
                jz      loc_1409595F9
                test    r10b, al
                jnz     loc_1409595F9
                mov     rsi, [rsp+38h+var_10]

loc_140959550:                          ; DATA XREF: .rdata:00000001400C58F0↑o
;   __try { // __except at loc_1409595F5
                test    r10b, sil
                jz      short loc_14095955A
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14095955A:                          ; CODE XREF: sub_1409594EC+67↑j
                movzx   r14d, ax
                lea     rax, [r14+rsi]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      short loc_140959576
                cmp     rax, rsi
                jnb     short loc_140959581

loc_140959576:                          ; CODE XREF: sub_1409594EC+83↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
;   } // starts at 140959550

loc_140959581:                          ; CODE XREF: sub_1409594EC+88↑j
                                        ; DATA XREF: .rdata:00000001400C58F0↑o
                mov     r8d, 72766F43h
                mov     rdx, r14
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     [rsp+38h+var_10], rax
                test    rax, rax
                jz      short loc_1409595EE
                mov     r8, r14
                xor     edx, edx
                mov     rcx, rax
                call    memset
                nop

loc_1409595AF:                          ; DATA XREF: .rdata:00000001400C5900↑o
;   __try { // __except at loc_1409595DE
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, rdi
                call    memmove
                nop
;   } // starts at 1409595AF

loc_1409595BE:                          ; DATA XREF: .rdata:00000001400C5900↑o
                mov     r8, r15
                lea     rdx, [rsp+38h+var_18]
                mov     ecx, 1
                call    RtlDuplicateUnicodeString
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     short loc_140959609
; ---------------------------------------------------------------------------

loc_1409595DE:                          ; DATA XREF: .rdata:00000001400C5900↑o
;   __except(1) // owned by 1409595AF
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, [rsp+38h+var_10]
                call    ExFreePoolWithTag
                jmp     short loc_140959609
; ---------------------------------------------------------------------------

loc_1409595EE:                          ; CODE XREF: sub_1409594EC+B3↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_140959609
; ---------------------------------------------------------------------------

loc_1409595F5:                          ; DATA XREF: .rdata:00000001400C58F0↑o
;   __except(1) // owned by 140959550
                mov     ebx, eax
                jmp     short loc_140959609
; ---------------------------------------------------------------------------

loc_1409595F9:                          ; CODE XREF: sub_1409594EC+3B↑j
                                        ; sub_1409594EC+50↑j ...
                mov     ebx, 0C000000Dh
                jmp     short loc_140959609
; ---------------------------------------------------------------------------

loc_140959600:                          ; CODE XREF: sub_1409594EC+31↑j
                movups  xmm0, xmmword ptr [rcx+8]
                movdqu  xmmword ptr [r8], xmm0

loc_140959609:                          ; CODE XREF: sub_1409594EC+27↑j
                                        ; sub_1409594EC+F0↑j ...
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_10]
                mov     r14, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409594EC
sub_1409594EC   endp

algn_140959627:                         ; DATA XREF: .pdata:0000000140124A7C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140959630   proc near               ; DATA XREF: .pdata:0000000140124A88↑o
                                        ; sub_140959674+10B↓o
                push    rbx
                sub     rsp, 20h
                lea     r9, [rdx+20h]
                mov     rbx, rcx
                lea     r8, [rdx+10h]
                mov     edx, [rdx+30h]
                call    sub_140958A6C
                cmp     al, 1
                jnz     short loc_140959665
                mov     rax, [rbx+80h]
                xor     edx, edx
                mov     ecx, [rax+20h]
                mov     r8d, [rax+1Ch]
                add     rcx, rax
                call    memset

loc_140959665:                          ; CODE XREF: sub_140959630+1B↑j
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140959630   endp

byte_14095966E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140124A88↑o

; =============== S U B R O U T I N E =======================================


sub_140959674   proc near               ; CODE XREF: sub_140687200+C00↑p
                                        ; DATA XREF: .pdata:0000000140124A94↑o

var_98          = dword ptr -98h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = dword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_8           = byte ptr -8

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                mov     [r11+20h], r14
                push    r15
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_18], rax
                mov     esi, edx
                mov     rbx, rcx
                xor     edx, edx
                lea     r8d, [rdx+40h]
                lea     rcx, [r11-68h]
                call    memset
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_90], xmm0
                and     [rsp+0B8h+var_98], 0
                cmp     cs:dword_140C12050, 0
                jnz     short loc_1409596D2
                mov     eax, 0C0000022h
                jmp     loc_14095982E
; ---------------------------------------------------------------------------

loc_1409596D2:                          ; CODE XREF: sub_140959674+52↑j
                cmp     esi, 18h
                jnb     short loc_1409596E1
                mov     eax, 0C0000004h
                jmp     loc_14095982E
; ---------------------------------------------------------------------------

loc_1409596E1:                          ; CODE XREF: sub_140959674+61↑j
                                        ; DATA XREF: .rdata:00000001400C59EC↑o
;   __try { // __except at loc_140959806
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                cmovnb  rbx, rax
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+0B8h+var_80], xmm0
                movsd   xmm1, qword ptr [rbx+10h]
                movsd   [rsp+0B8h+var_70], xmm1
;   } // starts at 1409596E1

loc_140959705:                          ; DATA XREF: .rdata:00000001400C59EC↑o
                lea     r9, [rsp+0B8h+var_98]
                lea     r8, [rsp+0B8h+var_28]
                lea     rdx, [rsp+0B8h+var_90]
                lea     rcx, [rsp+0B8h+var_80]
                call    sub_1409594EC
                mov     esi, eax
                test    eax, eax
                js      loc_140959808
                mov     eax, [rsp+0B8h+var_98]
                mov     [rsp+0B8h+var_38], eax
                movups  xmm0, [rsp+0B8h+var_28]
                movdqu  [rsp+0B8h+var_48], xmm0
                cmp     qword ptr [rsp+0B8h+var_90+8], 0
                jz      short loc_14095976A
                lea     r8, [rsp+0B8h+var_58]
                lea     rdx, [rsp+0B8h+var_90]
                mov     ecx, 1
                call    RtlDuplicateUnicodeString
                mov     esi, eax
                test    eax, eax
                js      loc_140959808

loc_14095976A:                          ; CODE XREF: sub_140959674+D6↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rdx, [rsp+0B8h+var_68]
                lea     rcx, sub_140959630
                call    sub_1407932A0
                mov     esi, eax
                test    eax, eax
                jns     short loc_1409597A1

loc_140959791:                          ; CODE XREF: sub_140959674+190↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     short loc_140959808
; ---------------------------------------------------------------------------

loc_1409597A1:                          ; CODE XREF: sub_140959674+11B↑j
                lea     rcx, qword_140C160B8
                call    ExfAcquirePushLockExclusive
                mov     rbx, cs:qword_140C160C0
                lea     r15, qword_140C160C0
                jmp     short loc_1409597F3
; ---------------------------------------------------------------------------

loc_1409597BD:                          ; CODE XREF: sub_140959674+182↓j
                mov     r14, rbx
                cmp     qword ptr [rbx+38h], 0
                jz      short loc_1409597F0
                lea     r9, [rsp+0B8h+var_28]
                lea     r8, [rsp+0B8h+var_90]
                mov     edx, [rsp+0B8h+var_98]
                mov     rcx, rbx
                call    sub_140958B4C
                cmp     al, 1
                jnz     short loc_1409597F0
                mov     rbx, [rbx+8]
                mov     rcx, r14
                call    sub_140958990

loc_1409597F0:                          ; CODE XREF: sub_140959674+151↑j
                                        ; sub_140959674+16E↑j
                mov     rbx, [rbx]

loc_1409597F3:                          ; CODE XREF: sub_140959674+147↑j
                cmp     rbx, r15
                jnz     short loc_1409597BD
                lea     rcx, qword_140C160B8
                call    ExfReleasePushLock
                jmp     short loc_140959791
; ---------------------------------------------------------------------------

loc_140959806:                          ; DATA XREF: .rdata:00000001400C59EC↑o
;   __except(1) // owned by 1409596E1
                mov     esi, eax

loc_140959808:                          ; CODE XREF: sub_140959674+B1↑j
                                        ; sub_140959674+F0↑j ...
                cmp     qword ptr [rsp+0B8h+var_90+8], 0
                jz      short loc_14095981A
                lea     rcx, [rsp+0B8h+var_90]
                call    RtlFreeUnicodeString

loc_14095981A:                          ; CODE XREF: sub_140959674+19A↑j
                cmp     [rsp+0B8h+var_50], 0
                jz      short loc_14095982C
                lea     rcx, [rsp+0B8h+var_58]
                call    RtlFreeUnicodeString

loc_14095982C:                          ; CODE XREF: sub_140959674+1AC↑j
                mov     eax, esi

loc_14095982E:                          ; CODE XREF: sub_140959674+59↑j
                                        ; sub_140959674+68↑j
                mov     rcx, [rsp+0B8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B8h+var_8]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140959674
sub_140959674   endp

algn_140959859:                         ; DATA XREF: .pdata:0000000140124A94↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140959860   proc near               ; CODE XREF: sub_1405CA8F0+B↑p
                                        ; DATA XREF: .pdata:0000000140124AA0↑o
                sub     rsp, 28h
                movsxd  rdx, edx
                mov     ecx, 1
                mov     r8d, 636D6650h
                call    ExAllocatePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140959860   endp

byte_14095987D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140124AA0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=150h

sub_140959884   proc near               ; CODE XREF: sub_14095B130+1BF↓p
                                        ; sub_14095B130+7CD↓p
                                        ; DATA XREF: ...

var_230         = dword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = byte ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = dword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = dword ptr -1F0h
var_1E8         = dword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D0         = dword ptr -1D0h
var_1CC         = dword ptr -1CCh
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1B0         = byte ptr -1B0h
var_190         = byte ptr -190h
var_110         = byte ptr -110h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-130h]
                sub     rsp, 230h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+150h+var_30], rax
                mov     r15b, r8b
                mov     [rsp+250h+var_1F0], edx
                mov     rbx, rcx
                xor     edx, edx
                mov     r8d, 0A0h
                lea     rcx, [rbp+150h+var_1B0]
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+150h+var_110]
                mov     r8d, 0E0h
                call    memset
                and     [rsp+250h+var_1E0], 0
                test    rbx, rbx
                jnz     short loc_1409598F7
                mov     ebx, 0C000000Dh
                jmp     loc_140959A9E
; ---------------------------------------------------------------------------

loc_1409598F7:                          ; CODE XREF: sub_140959884+67↑j
                lea     rax, [rbx-30h]
                shr     rax, 8
                lea     rsi, qword_140CFCE60
                movzx   edx, al
                lea     rcx, [rsp+250h+var_1F0]
                movzx   eax, byte ptr [rbx-18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     rsi, [rsi+rdx*8]
                add     rsi, 4Ch ; 'L'
                mov     rdx, rsi
                call    RtlMapGenericMask
                cmp     cs:qword_140CFA000, 0
                mov     r13d, 0C0000000h
                jnz     short loc_140959980
                and     [rsp+250h+var_1F8], 0
                lea     rcx, [rsp+250h+var_1F8]
                mov     rdx, rsi
                call    sub_140959AD4
                mov     ecx, eax
                mov     ebx, eax
                and     ecx, r13d
                cmp     ecx, r13d
                jz      loc_140959A9E
                mov     rcx, [rsp+250h+var_1F8]
                xor     eax, eax
                lock cmpxchg cs:qword_140CFA000, rcx
                jz      short loc_140959980
                mov     rcx, [rsp+250h+var_1F8]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140959980:                          ; CODE XREF: sub_140959884+B9↑j
                                        ; sub_140959884+EE↑j
                mov     edi, [rsp+250h+var_1F0]
                lea     rdx, [rbp+150h+var_110]
                mov     r8d, edi
                lea     rcx, [rbp+150h+var_1B0]
                mov     r9, rsi
                call    SeCreateAccessState
                mov     ebx, eax
                and     eax, r13d
                cmp     eax, r13d
                jz      loc_140959A9E
                lea     rcx, [rbp+150h+var_190]
                call    SeLockSubjectContext
                and     dword ptr [rsp+250h+var_1F8+4], 0
                lea     rdx, [rbp+150h+var_190]
                and     [rbp+150h+var_1CC], 0
                lea     rcx, [rbp+150h+var_1D0]
                and     [rbp+150h+var_1C0], 0
                mov     r8b, r15b
                mov     dword ptr [rsp+250h+var_1F8], 12h
                mov     rax, [rsp+250h+var_1F8]
                mov     [rbp+150h+var_1C8], rax
                mov     [rbp+150h+var_1D0], 1
                call    SePrivilegeCheck
                and     [rsp+250h+var_1E8], 0
                mov     r14b, al
                and     [rsp+250h+var_200], 0
                test    al, al
                jnz     short loc_140959A59
                mov     rcx, cs:qword_140CFA000
                lea     rax, [rsp+250h+var_1E8]
                mov     [rsp+250h+var_208], rax
                lea     rdx, [rbp+150h+var_190]
                lea     rax, [rsp+250h+var_200]
                mov     r9d, edi
                mov     [rsp+250h+var_210], rax
                mov     r8b, 1
                mov     [rsp+250h+var_218], r15b
                lea     rax, [rsp+250h+var_1E0]
                mov     [rsp+250h+var_220], rsi
                mov     [rsp+250h+var_228], rax
                and     [rsp+250h+var_230], 0
                call    SeAccessCheck
                mov     rdx, [rsp+250h+var_1E0]
                mov     r14b, al
                test    rdx, rdx
                jz      short loc_140959A5D
                lea     rcx, [rbp+150h+var_1B0]
                call    SeAppendPrivileges
                mov     rcx, [rsp+250h+var_1E0]
                call    SeFreePrivileges
                jmp     short loc_140959A5D
; ---------------------------------------------------------------------------

loc_140959A59:                          ; CODE XREF: sub_140959884+16E↑j
                mov     [rsp+250h+var_200], edi

loc_140959A5D:                          ; CODE XREF: sub_140959884+1BE↑j
                                        ; sub_140959884+1D3↑j
                lea     rcx, [rbp+150h+var_190]
                call    SeUnlockSubjectContext
                mov     ebx, [rsp+250h+var_1E8]
                mov     eax, ebx
                and     eax, r13d
                cmp     eax, r13d
                jz      short loc_140959A8C
                test    r14b, r14b
                jz      short loc_140959A87
                mov     eax, [rsp+250h+var_200]
                not     eax
                test    edi, eax
                jnz     short loc_140959A87
                xor     ebx, ebx
                jmp     short loc_140959A8C
; ---------------------------------------------------------------------------

loc_140959A87:                          ; CODE XREF: sub_140959884+1F3↑j
                                        ; sub_140959884+1FD↑j
                mov     ebx, 0C0000022h

loc_140959A8C:                          ; CODE XREF: sub_140959884+1EE↑j
                                        ; sub_140959884+201↑j
                lea     rcx, [rbp+150h+var_1B0]
                call    sub_14024C4F0
                lea     rcx, [rbp+150h+var_190]
                call    SeReleaseSubjectContext

loc_140959A9E:                          ; CODE XREF: sub_140959884+6E↑j
                                        ; sub_140959884+D8↑j ...
                mov     eax, ebx
                mov     rcx, [rbp+150h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+250h+var_20]
                mov     rbx, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140959884
sub_140959884   endp

byte_140959ACC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124AAC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140959AD4   proc near               ; CODE XREF: sub_140959884+C9↑p
                                        ; sub_14095A9E0+348↓p
                                        ; DATA XREF: ...

var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = dword ptr -40h
var_3C          = word ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = dword ptr  50h
arg_14          = word ptr  54h
arg_18          = dword ptr  58h
arg_1C          = word ptr  5Ch

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                xor     r13d, r13d
                mov     [rbp+var_3C], 500h
                mov     rax, rcx
                mov     [rbp+var_40], r13d
                xor     ecx, ecx
                mov     [rbp+arg_10], r13d
                mov     [rbp+var_8], rcx
                xorps   xmm0, xmm0
                mov     [rbp+arg_14], 100h
                mov     rdi, rdx
                mov     [rbp+arg_18], r13d
                mov     r14d, r13d
                mov     [rbp+arg_1C], 0F00h
                mov     r12d, r13d
                mov     esi, r13d
                mov     r15d, r13d
                movups  [rbp+var_28], xmm0
                movups  [rbp+var_18], xmm0
                test    rax, rax
                jnz     short loc_140959B43
                mov     ebx, 0C000000Dh
                jmp     loc_14095A09E
; ---------------------------------------------------------------------------

loc_140959B43:                          ; CODE XREF: sub_140959AD4+63↑j
                mov     edx, 1
                mov     [rax], r13
                lea     rcx, [rbp+var_28]
                call    RtlCreateSecurityDescriptor
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_14095A084
                mov     edx, 0Ch
                mov     r8d, 636D6650h
                lea     ecx, [rdx-0Bh]
                call    ExAllocatePoolWithTag
                mov     [rbp+var_38], rax
                mov     r13, rax
                test    rax, rax
                jnz     short loc_140959B92
                mov     rdi, [rbp+arg_0]
                mov     ebx, 0C0000017h
                jmp     loc_14095A08C
; ---------------------------------------------------------------------------

loc_140959B92:                          ; CODE XREF: sub_140959AD4+AE↑j
                mov     r8b, 1
                lea     rdx, [rbp+arg_10]
                mov     rcx, r13
                call    RtlInitializeSid
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_140959BDF
                xor     edx, edx
                mov     rcx, r13
                call    RtlSubAuthoritySid
                mov     edx, 20h ; ' '
                mov     r8d, 636D6650h
                and     [rax], esi
                movzx   ebx, byte ptr [r13+1]
                lea     ecx, [rdx-1Fh]
                call    ExAllocatePoolWithTag
                mov     r12, rax
                test    rax, rax
                jnz     short loc_140959C35

loc_140959BDA:                          ; CODE XREF: sub_140959AD4+1FE↓j
                                        ; sub_140959AD4+265↓j ...
                mov     ebx, 0C0000017h

loc_140959BDF:                          ; CODE XREF: sub_140959AD4+D8↑j
                                        ; sub_140959AD4+21E↓j ...
                mov     rdi, [rbp+arg_0]

loc_140959BE3:                          ; CODE XREF: sub_140959AD4+50B↓j
                xor     edx, edx
                mov     rcx, r13
                call    ExFreePoolWithTag
                xor     r13d, r13d
                test    r12, r12
                jz      short loc_140959BFF
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_140959BFF:                          ; CODE XREF: sub_140959AD4+11F↑j
                test    rsi, rsi
                jz      short loc_140959C0E
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_140959C0E:                          ; CODE XREF: sub_140959AD4+12E↑j
                test    r15, r15
                jz      short loc_140959C1D
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_140959C1D:                          ; CODE XREF: sub_140959AD4+13D↑j
                test    r14, r14
                jz      loc_14095A088
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_14095A088
; ---------------------------------------------------------------------------

loc_140959C35:                          ; CODE XREF: sub_140959AD4+104↑j
                mov     r8b, 6
                lea     rdx, [rbp+var_40]
                mov     rcx, r12
                call    RtlInitializeSid
                xor     edx, edx
                mov     rcx, r12
                call    RtlSubAuthoritySid
                mov     esi, 1
                mov     rcx, r12
                mov     edx, esi
                mov     dword ptr [rax], 50h ; 'P'
                call    RtlSubAuthoritySid
                lea     edx, [rsi+1]
                mov     rcx, r12
                mov     dword ptr [rax], 38FB89B5h
                call    RtlSubAuthoritySid
                lea     edx, [rsi+2]
                mov     rcx, r12
                mov     dword ptr [rax], 0CBC28419h
                call    RtlSubAuthoritySid
                lea     edx, [rsi+3]
                mov     rcx, r12
                mov     dword ptr [rax], 6D236C5Ch
                call    RtlSubAuthoritySid
                lea     edx, [rsi+4]
                mov     rcx, r12
                mov     dword ptr [rax], 6E770057h
                call    RtlSubAuthoritySid
                lea     edx, [rsi+0Fh]
                mov     r8d, 636D6650h
                mov     ecx, esi
                mov     dword ptr [rax], 876402C0h
                movzx   eax, byte ptr [r12+1]
                add     eax, ebx
                mov     [rbp+arg_10], eax
                call    ExAllocatePoolWithTag
                mov     [rbp+var_30], rax
                mov     rsi, rax
                test    rax, rax
                jz      loc_140959BDA
                mov     r8b, 2
                lea     rdx, [rbp+arg_18]
                mov     rcx, rax
                call    RtlInitializeSid
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959BDF
                xor     edx, edx
                mov     rcx, rsi
                call    RtlSubAuthoritySid
                mov     ebx, 1
                mov     rcx, rsi
                mov     edx, ebx
                mov     dword ptr [rax], 2
                call    RtlSubAuthoritySid
                lea     edx, [rbx+0Fh]
                mov     r8d, 636D6650h
                mov     ecx, ebx
                mov     [rax], ebx
                movzx   eax, byte ptr [rsi+1]
                add     eax, [rbp+arg_10]
                mov     [rbp+arg_10], eax
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jz      loc_140959BDA
                mov     r8b, 2
                lea     rdx, [rbp+arg_18]
                mov     rcx, rax
                call    RtlInitializeSid
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959BDF
                xor     edx, edx
                mov     rcx, r15
                call    RtlSubAuthoritySid
                mov     r14d, 2
                mov     rcx, r15
                mov     [rax], r14d
                lea     ebx, [r14-1]
                mov     edx, ebx
                call    RtlSubAuthoritySid
                lea     edx, [rbx+0Fh]
                mov     r8d, 636D6650h
                mov     ecx, ebx
                mov     [rax], r14d
                movzx   eax, byte ptr [r15+1]
                add     eax, [rbp+arg_10]
                mov     [rbp+arg_10], eax
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_140959BDA
                mov     r8b, 2
                lea     rdx, [rbp+var_40]
                mov     rcx, rax
                call    RtlInitializeSid
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959BDF
                xor     edx, edx
                mov     rcx, r14
                call    RtlSubAuthoritySid
                mov     esi, 1
                mov     rcx, r14
                mov     edx, esi
                mov     dword ptr [rax], 20h ; ' '
                call    RtlSubAuthoritySid
                mov     r8d, 636D6650h
                mov     ecx, esi
                mov     dword ptr [rax], 220h
                movzx   eax, byte ptr [r14+1]
                add     eax, [rbp+arg_10]
                lea     ebx, ds:6Ch[rax*4]
                mov     edx, ebx
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_140959E23
                mov     rsi, [rbp+var_30]
                mov     ebx, 0C0000017h
                jmp     loc_140959BDF
; ---------------------------------------------------------------------------

loc_140959E23:                          ; CODE XREF: sub_140959AD4+33F↑j
                mov     r8d, 2
                mov     edx, ebx
                mov     rcx, rsi
                call    RtlCreateAcl
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959FCD
                mov     r13d, 10000000h
                mov     [rbp+arg_10], r13d
                mov     r9d, r13d
                test    rdi, rdi
                jz      short loc_140959E66
                mov     rdx, rdi
                lea     rcx, [rbp+arg_10]
                call    RtlMapGenericMask
                mov     r9d, [rbp+arg_10]

loc_140959E66:                          ; CODE XREF: sub_140959AD4+380↑j
                mov     edx, 2
                mov     [rsp+70h+var_48], 0
                mov     rcx, rsi
                mov     [rsp+70h+var_50], r12
                lea     r8d, [rdx+1]
                call    sub_140622B20
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959FC9
                mov     [rbp+arg_10], r13d
                test    rdi, rdi
                jz      short loc_140959EAB
                mov     rdx, rdi
                lea     rcx, [rbp+arg_10]
                call    RtlMapGenericMask
                mov     r13d, [rbp+arg_10]

loc_140959EAB:                          ; CODE XREF: sub_140959AD4+3C5↑j
                mov     edx, 2
                mov     [rsp+70h+var_48], 0
                mov     r9d, r13d
                mov     [rsp+70h+var_50], r14
                mov     rcx, rsi
                lea     r8d, [rdx+1]
                call    sub_140622B20
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959FC9
                mov     r13d, 80000000h
                mov     [rbp+arg_10], r13d
                mov     r9d, r13d
                test    rdi, rdi
                jz      short loc_140959EFC
                mov     rdx, rdi
                lea     rcx, [rbp+arg_10]
                call    RtlMapGenericMask
                mov     r9d, [rbp+arg_10]

loc_140959EFC:                          ; CODE XREF: sub_140959AD4+416↑j
                mov     rax, [rbp+var_38]
                mov     edx, 2
                mov     [rsp+70h+var_48], 0
                mov     rcx, rsi
                mov     [rsp+70h+var_50], rax
                lea     r8d, [rdx+1]
                call    sub_140622B20
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140959FC9
                mov     [rbp+arg_10], r13d
                mov     r9d, r13d
                test    rdi, rdi
                jz      short loc_140959F48
                mov     rdx, rdi
                lea     rcx, [rbp+arg_10]
                call    RtlMapGenericMask
                mov     r9d, [rbp+arg_10]

loc_140959F48:                          ; CODE XREF: sub_140959AD4+462↑j
                mov     rax, [rbp+var_30]
                mov     edx, 2
                mov     [rsp+70h+var_48], 0
                mov     rcx, rsi
                mov     [rsp+70h+var_50], rax
                lea     r8d, [rdx+1]
                call    sub_140622B20
                mov     ecx, 0C0000000h
                mov     ebx, eax
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_140959FC9
                mov     [rbp+arg_10], r13d
                test    rdi, rdi
                jz      short loc_140959F8D
                mov     rdx, rdi
                lea     rcx, [rbp+arg_10]
                call    RtlMapGenericMask
                mov     r13d, [rbp+arg_10]

loc_140959F8D:                          ; CODE XREF: sub_140959AD4+4A7↑j
                mov     edx, 2
                mov     [rsp+70h+var_48], 0
                mov     r9d, r13d
                mov     [rsp+70h+var_50], r15
                mov     rcx, rsi
                lea     r8d, [rdx+1]
                call    sub_140622B20
                mov     edi, 0C0000000h
                mov     ebx, eax
                and     eax, edi
                cmp     eax, edi
                jz      short loc_140959FC9
                mov     rcx, rsi
                call    RtlValidAcl
                test    al, al
                jnz     short loc_140959FE4
                mov     ebx, 0C0000077h

loc_140959FC9:                          ; CODE XREF: sub_140959AD4+3B8↑j
                                        ; sub_140959AD4+400↑j ...
                mov     r13, [rbp+var_38]

loc_140959FCD:                          ; CODE XREF: sub_140959AD4+36A↑j
                mov     rdi, [rbp+arg_0]

loc_140959FD1:                          ; CODE XREF: sub_140959AD4+597↓j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     rsi, [rbp+var_30]
                jmp     loc_140959BE3
; ---------------------------------------------------------------------------

loc_140959FE4:                          ; CODE XREF: sub_140959AD4+4EE↑j
                xor     r9d, r9d
                lea     rcx, [rbp+var_28]
                mov     r8, rsi
                mov     dl, 1
                call    RtlSetDaclSecurityDescriptor
                mov     ebx, eax
                and     eax, edi
                cmp     eax, edi
                jz      short loc_140959FC9
                xor     r8d, r8d
                lea     rcx, [rbp+var_28]
                mov     rdx, r12
                call    RtlSetOwnerSecurityDescriptor
                mov     ebx, eax
                and     eax, edi
                cmp     eax, edi
                jz      short loc_140959FC9
                lea     rcx, [rbp+var_28]
                call    RtlValidSecurityDescriptor
                test    al, al
                jnz     short loc_14095A028
                mov     ebx, 0C0000079h
                jmp     short loc_140959FC9
; ---------------------------------------------------------------------------

loc_14095A028:                          ; CODE XREF: sub_140959AD4+54B↑j
                and     [rbp+arg_10], 0
                lea     r8, [rbp+arg_10]
                xor     edx, edx
                lea     rcx, [rbp+var_28]
                call    RtlAbsoluteToSelfRelativeSD
                mov     ebx, eax
                mov     eax, [rbp+arg_10]
                test    eax, eax
                jz      short loc_140959FC9
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 636D6650h
                call    ExAllocatePoolWithTag
                mov     rdi, [rbp+arg_0]
                mov     [rdi], rax
                test    rax, rax
                jnz     short loc_14095A070
                mov     ebx, 0C0000017h

loc_14095A067:                          ; CODE XREF: sub_140959AD4+5AE↓j
                mov     r13, [rbp+var_38]
                jmp     loc_140959FD1
; ---------------------------------------------------------------------------

loc_14095A070:                          ; CODE XREF: sub_140959AD4+58C↑j
                lea     r8, [rbp+arg_10]
                mov     rdx, rax
                lea     rcx, [rbp+var_28]
                call    RtlAbsoluteToSelfRelativeSD
                mov     ebx, eax
                jmp     short loc_14095A067
; ---------------------------------------------------------------------------

loc_14095A084:                          ; CODE XREF: sub_140959AD4+8B↑j
                mov     rdi, [rbp+arg_0]

loc_14095A088:                          ; CODE XREF: sub_140959AD4+14C↑j
                                        ; sub_140959AD4+15C↑j
                test    ebx, ebx
                jns     short loc_14095A09E

loc_14095A08C:                          ; CODE XREF: sub_140959AD4+B9↑j
                mov     rcx, [rdi]
                test    rcx, rcx
                jz      short loc_14095A09E
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rdi], r13

loc_14095A09E:                          ; CODE XREF: sub_140959AD4+6A↑j
                                        ; sub_140959AD4+5B6↑j ...
                mov     eax, ebx
                mov     rbx, [rsp+70h+arg_8]
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140959AD4   endp

algn_14095A0B9:                         ; DATA XREF: .pdata:0000000140124AB8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095A0C0   proc near               ; CODE XREF: sub_14095B130+8AF↓p
                                        ; DATA XREF: .pdata:0000000140124AC4↑o

var_2E8         = qword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D8         = dword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = dword ptr -2A8h
var_2A4         = dword ptr -2A4h
var_2A0         = qword ptr -2A0h
var_298         = xmmword ptr -298h
var_288         = xmmword ptr -288h
var_278         = xmmword ptr -278h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = xmmword ptr -258h
var_248         = xmmword ptr -248h
var_238         = byte ptr -238h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 2F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+308h+var_28], rax
                mov     r15, rdx
                mov     r14, rcx
                and     [rsp+308h+var_2B8], 0
                xorps   xmm0, xmm0
                movups  [rsp+308h+var_258], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+308h+var_298], xmm1
                movups  [rsp+308h+var_288], xmm1
                movups  [rsp+308h+var_278], xmm1
                movups  [rsp+308h+var_248], xmm0
                and     [rsp+308h+var_2B0], 0
                and     [rsp+308h+var_260], 0
                xor     esi, esi
                test    rcx, rcx
                jnz     short loc_14095A140
                mov     eax, 0C000000Dh
                jmp     loc_14095A39D
; ---------------------------------------------------------------------------

loc_14095A140:                          ; CODE XREF: sub_14095A0C0+74↑j
                mov     eax, cs:dword_140CF9FDC
                and     eax, 8
                test    al, al
                jnz     short loc_14095A18F
                mov     [rsp+308h+var_2A0], r14
                mov     [rsp+308h+var_268], r15
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                lea     r9, [rsp+308h+var_258]
                lea     r8, [rsp+308h+var_268]
                lea     rdx, [rsp+308h+var_2A0]
                call    sub_1406E8E64
                cmp     eax, 0C0000088h
                jnz     loc_14095A39D

loc_14095A18F:                          ; CODE XREF: sub_14095A0C0+8B↑j
                mov     eax, cs:dword_140C12E40
                mov     dword ptr [rsp+308h+var_2E8], eax
                lea     r9, aSystemrootResc ; "\\SystemRoot\\Rescache"
                lea     r8, aSRc04uRescache ; "%s\\rc%04u\\rescache.hit"
                mov     edx, 104h
                lea     rcx, [rsp+308h+var_238]
                call    sub_140311280
                mov     edi, eax
                test    eax, eax
                js      loc_14095A36E
                lea     rdx, [rsp+308h+var_238]
                lea     rcx, [rsp+308h+var_248]
                call    RtlInitUnicodeString
                mov     dword ptr [rsp+308h+var_298], 30h ; '0'
                and     qword ptr [rsp+308h+var_298+8], rsi
                mov     dword ptr [rsp+308h+var_288+8], 240h
                lea     rax, [rsp+308h+var_248]
                mov     qword ptr [rsp+308h+var_288], rax
                xorps   xmm0, xmm0
                movdqu  [rsp+308h+var_278], xmm0
                and     dword ptr [rsp+308h+var_2E0], esi
                mov     dword ptr [rsp+308h+var_2E8], 7
                lea     r9, [rsp+308h+var_258]
                lea     r8, [rsp+308h+var_298]
                mov     r12d, 0C0000000h
                mov     edx, r12d
                lea     rcx, [rsp+308h+var_2B8]
                call    ZwOpenFile
                mov     edi, eax
                and     eax, r12d
                cmp     eax, r12d
                jnz     short loc_14095A24C
                and     [rsp+308h+var_2B8], rsi
                jmp     loc_14095A36E
; ---------------------------------------------------------------------------

loc_14095A24C:                          ; CODE XREF: sub_14095A0C0+180↑j
                mov     dword ptr [rsp+308h+var_298], 30h ; '0'
                and     qword ptr [rsp+308h+var_298+8], rsi
                mov     dword ptr [rsp+308h+var_288+8], 200h
                and     qword ptr [rsp+308h+var_288], rsi
                xorps   xmm0, xmm0
                movdqu  [rsp+308h+var_278], xmm0
                mov     byte ptr [rsp+308h+var_2E8], sil
                mov     r9d, 1
                lea     r8, [rsp+308h+var_298]
                mov     edx, 1F0003h
                lea     rcx, [rsp+308h+var_2B0]
                call    ZwCreateEvent
                mov     edi, eax
                and     eax, r12d
                cmp     eax, r12d
                jz      loc_14095A36E
                and     [rsp+308h+var_2A8], esi
                and     [rsp+308h+var_2A4], esi
                lea     rdx, [rsp+308h+var_2A8]
                mov     rcx, [rsp+308h+var_2B8]
                call    sub_14095A3D0
                mov     edi, eax
                and     eax, r12d
                cmp     eax, r12d
                jz      loc_14095A36E
                mov     edi, [rsp+308h+var_2A8]
                cmp     r15, rdi
                cmovb   edi, r15d
                mov     r15d, edi
                mov     r8d, 636D6650h
                mov     edx, edi
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     [rsp+308h+var_2A0], rax
                test    rax, rax
                jnz     short loc_14095A2FE
                mov     edi, 0C0000017h
                jmp     short loc_14095A36E
; ---------------------------------------------------------------------------

loc_14095A2FE:                          ; CODE XREF: sub_14095A0C0+235↑j
                                        ; DATA XREF: .rdata:00000001400C5A48↑o
;   __try { // __except at loc_14095A367
                mov     r8, r15
                mov     rdx, r14
                mov     rcx, rsi
                call    memmove
                nop
;   } // starts at 14095A2FE

loc_14095A30D:                          ; DATA XREF: .rdata:00000001400C5A48↑o
                and     [rsp+308h+var_2C8], 0
                lea     rax, [rsp+308h+var_260]
                mov     [rsp+308h+var_2D0], rax
                mov     [rsp+308h+var_2D8], edi
                mov     [rsp+308h+var_2E0], rsi
                lea     rax, [rsp+308h+var_258]
                mov     [rsp+308h+var_2E8], rax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+308h+var_2B0]
                mov     rcx, [rsp+308h+var_2B8]
                call    ZwWriteFile
                mov     edi, eax
                cmp     eax, 103h
                jnz     short loc_14095A36E
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [rsp+308h+var_2B0]
                call    ZwWaitForSingleObject
                mov     edi, eax
                jmp     short loc_14095A36E
; ---------------------------------------------------------------------------

loc_14095A367:                          ; DATA XREF: .rdata:00000001400C5A48↑o
;   __except(1) // owned by 14095A2FE
                mov     edi, eax
                mov     rsi, [rsp+308h+var_2A0]

loc_14095A36E:                          ; CODE XREF: sub_14095A0C0+FD↑j
                                        ; sub_14095A0C0+187↑j ...
                test    rsi, rsi
                jz      short loc_14095A37D
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_14095A37D:                          ; CODE XREF: sub_14095A0C0+2B1↑j
                mov     rcx, [rsp+308h+var_2B0]
                test    rcx, rcx
                jz      short loc_14095A38C
                call    ZwClose

loc_14095A38C:                          ; CODE XREF: sub_14095A0C0+2C5↑j
                mov     rcx, [rsp+308h+var_2B8]
                test    rcx, rcx
                jz      short loc_14095A39B
                call    ZwClose

loc_14095A39B:                          ; CODE XREF: sub_14095A0C0+2D4↑j
                mov     eax, edi

loc_14095A39D:                          ; CODE XREF: sub_14095A0C0+7B↑j
                                        ; sub_14095A0C0+C9↑j
                mov     rcx, [rsp+308h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+308h+var_18]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095A0C0
sub_14095A0C0   endp

algn_14095A3C8:                         ; DATA XREF: .pdata:0000000140124AC4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095A3D0   proc near               ; CODE XREF: sub_14095A0C0+1F7↑p
                                        ; sub_14095A9E0+2F0↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_10], rax
                xor     eax, eax
                mov     [rsp+68h+var_48], 5
                xorps   xmm0, xmm0
                mov     [rsp+68h+var_18], rax
                mov     rbx, rdx
                lea     r8, [rsp+68h+var_28]
                lea     rdx, [rsp+68h+var_38]
                lea     r9d, [rax+18h]
                movups  [rsp+68h+var_28], xmm0
                movups  [rsp+68h+var_38], xmm0
                call    ZwQueryInformationFile
                mov     edx, 0C0000000h
                mov     ecx, eax
                and     ecx, edx
                cmp     ecx, edx
                jz      short loc_14095A42E
                mov     rax, qword ptr [rsp+68h+var_28+8]
                mov     [rbx], rax
                xor     eax, eax

loc_14095A42E:                          ; CODE XREF: sub_14095A3D0+52↑j
                mov     rcx, [rsp+68h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095A3D0
sub_14095A3D0   endp

algn_14095A442:                         ; DATA XREF: .pdata:0000000140124AD0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14095A448   proc near               ; CODE XREF: sub_14095A9E0+312↓p
                                        ; DATA XREF: .pdata:0000000140124ADC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     rax, 0FFFFF78000000244h
                xor     r8d, r8d
                mov     r10, rdx
                mov     rbx, rcx
                mov     r9d, [rax]
                shr     r9, 0Ch
                test    r9, r9
                jnz     short loc_14095A474
                mov     r8d, 0C00000BBh
                jmp     short loc_14095A4EE
; ---------------------------------------------------------------------------

loc_14095A474:                          ; CODE XREF: sub_14095A448+22↑j
                mov     r11, [rcx]
                mov     rcx, r8
                test    r11, 0FFFh
                mov     rax, r11
                setnz   cl
                shr     rax, 0Ch
                add     rcx, rax
                xor     edx, edx
                mov     eax, ecx
                div     r9
                test    rdx, rdx
                jnz     short loc_14095A49F
                mov     [r10], r11
                jmp     short loc_14095A4EE
; ---------------------------------------------------------------------------

loc_14095A49F:                          ; CODE XREF: sub_14095A448+50↑j
                shl     rdx, 0Ch
                mov     rax, r9
                shl     rax, 0Ch
                add     rax, 0FFFFFFFFFFFFF001h
                shl     rcx, 0Ch
                sub     rcx, rdx
                add     rcx, rax
                mov     rax, r8
                test    rcx, 0FFFh
                mov     [r10], rcx
                setnz   al
                shr     rcx, 0Ch
                add     rax, rcx
                xor     edx, edx
                div     r9
                test    rdx, rdx
                jnz     short loc_14095A4E8
                cmp     [r10+4], r8d
                jnz     short loc_14095A4E8
                mov     eax, [rbx]
                cmp     [r10], eax
                jnb     short loc_14095A4EE

loc_14095A4E8:                          ; CODE XREF: sub_14095A448+91↑j
                                        ; sub_14095A448+97↑j
                mov     r8d, 0C0000001h

loc_14095A4EE:                          ; CODE XREF: sub_14095A448+2A↑j
                                        ; sub_14095A448+55↑j ...
                mov     rbx, [rsp+arg_0]
                mov     eax, r8d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095A448   endp

algn_14095A4F8:                         ; DATA XREF: .pdata:0000000140124ADC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14095A500   proc near               ; CODE XREF: sub_14095A9E0+55D↓p
                                        ; DATA XREF: .pdata:0000000140124AE8↑o

var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_20          = byte ptr -20h
arg_0           = dword ptr  10h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                and     [rbp+57h+var_60], 0
                xorps   xmm0, xmm0
                and     [rbp+57h+var_70], 0
                xor     r14d, r14d
                and     [rbp+57h+var_68], 0
                mov     rdi, r9
                and     [rbp+57h+var_80], 0
                mov     r12d, r8d
                mov     rsi, rdx
                mov     rbx, rcx
                movups  [rbp+57h+var_58], xmm0
                movups  [rbp+57h+var_48], xmm0
                movups  [rbp+57h+var_38], xmm0
                test    rcx, rcx
                jz      loc_14095A73A
                test    r9, r9
                jz      loc_14095A73A
                test    rdx, rdx
                jz      loc_14095A73A
                cmp     dword ptr [r9+54h], 400h
                jbe     short loc_14095A584
                mov     ebx, 0C000000Dh
                jmp     loc_14095A76C
; ---------------------------------------------------------------------------

loc_14095A584:                          ; CODE XREF: sub_14095A500+78↑j
                call    sub_1405CA8F0
                mov     r14, rax
                test    rax, rax
                jnz     short loc_14095A59B
                mov     ebx, 0C0000017h
                jmp     loc_14095A73F
; ---------------------------------------------------------------------------

loc_14095A59B:                          ; CODE XREF: sub_14095A500+8F↑j
                and     qword ptr [rbp+57h+var_58+8], 0
                lea     r8, [rbp+57h+var_58]
                and     qword ptr [rbp+57h+var_48], 0
                lea     rcx, [rbp+57h+var_70]
                mov     r15d, 2
                mov     qword ptr [rsp+0D0h+var_A0], rbx
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+0D0h+var_A8], 8000000h
                xor     r9d, r9d
                mov     dword ptr [rbp+57h+var_58], 30h ; '0'
                mov     dword ptr [rbp+57h+var_48+8], 240h
                lea     edx, [r15+2]
                mov     dword ptr [rsp+0D0h+var_B0], r15d
                movdqu  [rbp+57h+var_38], xmm0
                call    ZwCreateSection
                mov     ebx, eax
                test    eax, eax
                js      loc_14095A73F
                mov     rcx, [rbp+57h+var_70]
                lea     rax, [rbp+57h+var_68]
                mov     [rsp+0D0h+var_88], r15d
                lea     r8, [rbp+57h+var_80]
                mov     [rsp+0D0h+var_90], 400000h
                xor     r9d, r9d
                mov     [rsp+0D0h+var_98], r15d
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     qword ptr [rsp+0D0h+var_A0], rax
                lea     rax, [rbp+57h+var_60]
                mov     [rsp+0D0h+var_A8], rax
                and     [rsp+0D0h+var_B0], 0
                call    ZwMapViewOfSection
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14095A63F
                and     [rbp+57h+var_80], 0
                jmp     loc_14095A751
; ---------------------------------------------------------------------------

loc_14095A63F:                          ; CODE XREF: sub_14095A500+133↑j
                mov     rbx, [rbp+57h+var_68]
                mov     r8d, 1060h
                cmp     rbx, r8
                jnb     short loc_14095A658

loc_14095A64E:                          ; CODE XREF: sub_14095A500+15B↓j
                                        ; sub_14095A500+1C1↓j ...
                mov     ebx, 0C0000206h
                jmp     loc_14095A73F
; ---------------------------------------------------------------------------

loc_14095A658:                          ; CODE XREF: sub_14095A500+14C↑j
                cmp     r12d, r8d
                jb      short loc_14095A64E
                mov     rdx, rdi
                mov     rcx, rsi
                call    memmove
                mov     r13, [rbp+57h+var_80]
                lea     rcx, [rsi+1060h]
                mov     eax, [rdi+54h]
                lea     r8d, [rbx-1060h]
                mov     esi, [rdi+50h]
                add     r13, 1060h
                add     r12d, 0FFFFEFA0h
                mov     [rbp+57h+arg_0], r8d
                xor     r15d, r15d
                mov     [rbp+57h+var_78], rcx
                test    eax, eax
                jz      loc_14095A72F

loc_14095A6A1:                          ; CODE XREF: sub_14095A500+229↓j
                dec     eax
                cmp     r15d, eax
                jnz     short loc_14095A6AD
                mov     ebx, [rdi+58h]
                jmp     short loc_14095A6BE
; ---------------------------------------------------------------------------

loc_14095A6AD:                          ; CODE XREF: sub_14095A500+1A6↑j
                mov     rcx, [rbp+57h+var_78]
                lea     eax, [r15+1]
                mov     ebx, [rdi+rax*4+5Ch]
                sub     ebx, [rdi+r15*4+5Ch]

loc_14095A6BE:                          ; CODE XREF: sub_14095A500+1AB↑j
                cmp     ebx, r8d
                ja      short loc_14095A64E
                test    r12d, r12d
                jz      short loc_14095A64E
                cmp     esi, r12d
                mov     eax, r12d
                cmovbe  eax, esi
                mov     esi, eax
                cmp     ebx, eax
                jnz     short loc_14095A6E4
                mov     r8d, esi
                mov     rdx, r13
                call    memmove
                jmp     short loc_14095A702
; ---------------------------------------------------------------------------

loc_14095A6E4:                          ; CODE XREF: sub_14095A500+1D5↑j
                mov     rdx, rcx
                mov     dword ptr [rsp+0D0h+var_A8], ebx
                mov     rcx, r14
                mov     [rsp+0D0h+var_B0], r13
                mov     r9d, esi
                mov     r8d, esi
                call    sub_1405CA798
                cmp     eax, esi
                jnz     short loc_14095A733

loc_14095A702:                          ; CODE XREF: sub_14095A500+1E2↑j
                mov     r8d, [rbp+57h+arg_0]
                sub     r12d, esi
                mov     rcx, [rbp+57h+var_78]
                sub     r8d, ebx
                mov     eax, ebx
                add     rcx, rsi
                add     r13, rax
                mov     [rbp+57h+arg_0], r8d
                mov     eax, [rdi+54h]
                inc     r15d
                mov     [rbp+57h+var_78], rcx
                cmp     r15d, eax
                jb      loc_14095A6A1

loc_14095A72F:                          ; CODE XREF: sub_14095A500+19B↑j
                xor     ebx, ebx
                jmp     short loc_14095A73F
; ---------------------------------------------------------------------------

loc_14095A733:                          ; CODE XREF: sub_14095A500+200↑j
                mov     ebx, 0C000025Fh
                jmp     short loc_14095A73F
; ---------------------------------------------------------------------------

loc_14095A73A:                          ; CODE XREF: sub_14095A500+58↑j
                                        ; sub_14095A500+61↑j ...
                mov     ebx, 0C000000Dh

loc_14095A73F:                          ; CODE XREF: sub_14095A500+96↑j
                                        ; sub_14095A500+EB↑j ...
                mov     rdx, [rbp+57h+var_80]
                test    rdx, rdx
                jz      short loc_14095A751
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwUnmapViewOfSection

loc_14095A751:                          ; CODE XREF: sub_14095A500+13A↑j
                                        ; sub_14095A500+246↑j
                mov     rcx, [rbp+57h+var_70]
                test    rcx, rcx
                jz      short loc_14095A75F
                call    ZwClose

loc_14095A75F:                          ; CODE XREF: sub_14095A500+258↑j
                test    r14, r14
                jz      short loc_14095A76C
                mov     rcx, r14
                call    sub_1405CA8C4

loc_14095A76C:                          ; CODE XREF: sub_14095A500+7F↑j
                                        ; sub_14095A500+262↑j
                lea     r11, [rsp+0D0h+var_20]
                mov     eax, ebx
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095A500   endp

byte_14095A790  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124AE8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14095A798   proc near               ; CODE XREF: sub_14095B130+29F↓p
                                        ; sub_14095B130+42A↓p ...

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = xmmword ptr -0A0h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
var_24          = dword ptr -24h
var_1C          = byte ptr -1Ch
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                and     [rbp+57h+var_54], 0
                lea     rdx, aRegistryMachin_120 ; "\\REGISTRY\\MACHINE\\SYSTEM\\CurrentCon"...
                and     [rbp+57h+var_3C], 0
                xorps   xmm0, xmm0
                and     [rbp+57h+var_B0], 0
                xorps   xmm1, xmm1
                and     [rbp+57h+var_A8], 0
                movzx   ebx, cx
                lea     rcx, [rbp+57h+var_88]
                movups  [rbp+57h+var_88], xmm0
                movups  [rbp+57h+var_A0], xmm1
                call    RtlInitUnicodeString
                and     [rsp+0F0h+var_C0], 0
                lea     rax, [rbp+57h+var_88]
                and     dword ptr [rsp+0F0h+var_C8], 0
                lea     r8, [rbp+57h+var_58]
                and     [rbp+57h+var_50], 0
                lea     rcx, [rbp+57h+var_B0]
                and     [rsp+0F0h+var_D0], 0
                xorps   xmm0, xmm0
                xor     r9d, r9d
                mov     [rbp+57h+var_48], rax
                mov     edx, 2001Fh
                mov     [rbp+57h+var_58], 30h ; '0'
                movdqu  [rbp+57h+var_38], xmm0
                mov     [rbp+57h+var_40], 240h
                call    ZwCreateKey
                test    eax, eax
                js      loc_14095A9B3
                mov     ecx, ebx
                mov     rax, 0FFFFF78000000014h
                mov     ebx, 0Bh
                mov     rax, [rax]
                mov     [rbp+57h+var_90], rax
                sub     ecx, 1
                jz      short loc_14095A88A
                sub     ecx, 1
                jz      short loc_14095A875
                cmp     ecx, 2
                jz      short loc_14095A86C
                mov     eax, 0C000000Dh
                jmp     loc_14095A9B3
; ---------------------------------------------------------------------------

loc_14095A86C:                          ; CODE XREF: sub_14095A798+C8↑j
                lea     rdx, aCmfstoptime ; "CMFStopTime"
                jmp     short loc_14095A87C
; ---------------------------------------------------------------------------

loc_14095A875:                          ; CODE XREF: sub_14095A798+C3↑j
                lea     rdx, aCmfstarttime ; "CMFStartTime"

loc_14095A87C:                          ; CODE XREF: sub_14095A798+DB↑j
                lea     rcx, [rbp+57h+var_A0]
                call    RtlInitUnicodeString
                jmp     loc_14095A982
; ---------------------------------------------------------------------------

loc_14095A88A:                          ; CODE XREF: sub_14095A798+BE↑j
                lea     rdx, aCmfstarttime ; "CMFStartTime"
                lea     rcx, [rbp+57h+var_A0]
                call    RtlInitUnicodeString
                mov     rcx, [rbp+57h+var_B0]
                lea     rax, [rbp+57h+var_A8]
                mov     [rsp+0F0h+var_C8], rax
                lea     r9, [rbp+57h+var_28]
                mov     r8d, 2
                mov     dword ptr [rsp+0F0h+var_D0], 14h
                lea     rdx, [rbp+57h+var_A0]
                call    ZwQueryValueKey
                test    eax, eax
                js      short loc_14095A906
                cmp     [rbp+57h+var_24], ebx
                jnz     short loc_14095A906
                xorps   xmm0, xmm0
                lea     rdx, aCmflaststartti ; "CMFLastStartTime"
                lea     rcx, [rbp+57h+var_78]
                movups  [rbp+57h+var_78], xmm0
                call    RtlInitUnicodeString
                mov     rcx, [rbp+57h+var_B0]
                lea     rax, [rbp+57h+var_1C]
                mov     dword ptr [rsp+0F0h+var_C8], 8
                lea     rdx, [rbp+57h+var_78]
                mov     r9d, ebx
                mov     [rsp+0F0h+var_D0], rax
                xor     r8d, r8d
                call    ZwSetValueKey

loc_14095A906:                          ; CODE XREF: sub_14095A798+12C↑j
                                        ; sub_14095A798+131↑j
                lea     rdx, aSystemstarttim ; "SystemStartTime"
                lea     rcx, [rbp+57h+var_A0]
                call    RtlInitUnicodeString
                mov     rcx, [rbp+57h+var_B0]
                lea     rax, [rbp+57h+var_A8]
                mov     [rsp+0F0h+var_C8], rax
                lea     r9, [rbp+57h+var_28]
                mov     r8d, 2
                mov     dword ptr [rsp+0F0h+var_D0], 14h
                lea     rdx, [rbp+57h+var_A0]
                call    ZwQueryValueKey
                test    eax, eax
                js      short loc_14095A982
                cmp     [rbp+57h+var_24], ebx
                jnz     short loc_14095A982
                xorps   xmm0, xmm0
                lea     rdx, aSystemlaststar ; "SystemLastStartTime"
                lea     rcx, [rbp+57h+var_68]
                movups  [rbp+57h+var_68], xmm0
                call    RtlInitUnicodeString
                mov     rcx, [rbp+57h+var_B0]
                lea     rax, [rbp+57h+var_1C]
                mov     dword ptr [rsp+0F0h+var_C8], 8
                lea     rdx, [rbp+57h+var_68]
                mov     r9d, ebx
                mov     [rsp+0F0h+var_D0], rax
                xor     r8d, r8d
                call    ZwSetValueKey

loc_14095A982:                          ; CODE XREF: sub_14095A798+ED↑j
                                        ; sub_14095A798+1A8↑j ...
                mov     rcx, [rbp+57h+var_B0]
                lea     rax, [rbp+57h+var_90]
                mov     dword ptr [rsp+0F0h+var_C8], 8
                lea     rdx, [rbp+57h+var_A0]
                mov     r9d, ebx
                mov     [rsp+0F0h+var_D0], rax
                xor     r8d, r8d
                call    ZwSetValueKey
                mov     rcx, [rbp+57h+var_B0]
                mov     ebx, eax
                call    ZwClose
                mov     eax, ebx

loc_14095A9B3:                          ; CODE XREF: sub_14095A798+9D↑j
                                        ; sub_14095A798+CF↑j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F0h+arg_0]
                add     rsp, 0F0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095A798
sub_14095A798   endp

algn_14095A9D1:                         ; DATA XREF: .pdata:0000000140124AF4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=240h

sub_14095A9E0   proc near               ; DATA XREF: .pdata:0000000140124B00↑o
                                        ; sub_14095B130+6CA↓o

var_320         = qword ptr -320h
var_318         = qword ptr -318h
var_310         = qword ptr -310h
var_308         = qword ptr -308h
var_300         = dword ptr -300h
var_2F8         = byte ptr -2F8h
var_2F0         = qword ptr -2F0h
var_2E8         = qword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D8         = qword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = qword ptr -2A8h
var_2A0         = xmmword ptr -2A0h
var_290         = xmmword ptr -290h
var_280         = xmmword ptr -280h
var_270         = qword ptr -270h
var_268         = xmmword ptr -268h
var_258         = xmmword ptr -258h
var_248         = qword ptr -248h
var_240         = byte ptr -240h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-248h]
                sub     rsp, 320h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+240h+var_30], rax
                and     [rbp+240h+var_270], 0
                xorps   xmm0, xmm0
                and     [rsp+340h+var_2E8], 0
                xor     r12d, r12d
                and     [rbp+240h+var_2B8], r12
                xor     r15d, r15d
                and     [rbp+240h+var_2C0], r15
                xor     r13d, r13d
                and     [rsp+340h+var_2D0], r15
                mov     rdi, rcx
                and     [rsp+340h+var_2D8], r12
                and     [rbp+240h+var_2A8], 0
                and     [rbp+240h+var_248], 0
                mov     byte ptr [rsp+340h+var_2F0], 0
                mov     [rsp+340h+var_2E0], r12
                mov     [rbp+240h+var_2B0], r13
                movups  [rbp+240h+var_268], xmm0
                movups  [rbp+240h+var_2A0], xmm0
                movups  [rbp+240h+var_290], xmm0
                movups  [rbp+240h+var_280], xmm0
                movups  [rbp+240h+var_258], xmm0
                test    rcx, rcx
                jz      loc_14095B01A
                mov     eax, [rcx+30h]
                cmp     eax, 10h
                jnz     short loc_14095AA93
                lea     rax, aRescdir   ; "RESCDIR"
                lea     r8, aSRc04uRescache_0 ; "%s\\rc%04u\\rescache.dir"
                jmp     loc_14095AB15
; ---------------------------------------------------------------------------

loc_14095AA93:                          ; CODE XREF: sub_14095A9E0+9E↑j
                cmp     eax, 20h ; ' '
                jnz     short loc_14095AAFC
                mov     r14d, 1060h
                lea     ecx, [rax-1Fh]
                mov     edx, r14d
                mov     r8d, 636D6650h
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jnz     short loc_14095AAC1
                mov     ebx, 0C0000017h
                jmp     loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095AAC1:                          ; CODE XREF: sub_14095A9E0+D5↑j
                lea     rax, aRescseg   ; "RESCSEG"
                mov     edx, 104h
                mov     [rsp+340h+var_2C8], rax
                lea     r9, aSystemrootResc ; "\\SystemRoot\\Rescache"
                mov     eax, [rdi+1Ch]
                lea     r8, aSRc04uSegmentU ; "%s\\rc%04u\\segment%u.cmf"
                mov     dword ptr [rsp+340h+var_318], eax
                lea     rcx, [rbp+240h+var_240]
                mov     eax, [rdi+4]
                mov     r12, r15
                mov     dword ptr [rsp+340h+var_320], eax
                call    sub_140311280
                jmp     short loc_14095AB40
; ---------------------------------------------------------------------------

loc_14095AAFC:                          ; CODE XREF: sub_14095A9E0+B6↑j
                cmp     eax, 100h
                jnz     loc_14095AF94
                lea     rax, aReschit   ; "RESCHIT"
                lea     r8, aSRc04uRescache ; "%s\\rc%04u\\rescache.hit"

loc_14095AB15:                          ; CODE XREF: sub_14095A9E0+AE↑j
                mov     [rsp+340h+var_2C8], rax
                lea     r9, aSystemrootResc ; "\\SystemRoot\\Rescache"
                mov     eax, [rcx+4]
                lea     r12, [rbp+240h+var_248]
                lea     rcx, [rbp+240h+var_240]
                mov     dword ptr [rsp+340h+var_320], eax
                mov     edx, 104h
                mov     r14d, 8
                call    sub_140311280

loc_14095AB40:                          ; CODE XREF: sub_14095A9E0+11A↑j
                mov     esi, 0C0000000h
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jz      short loc_14095ABAA
                lea     rdx, [rbp+240h+var_240]
                lea     rcx, [rbp+240h+var_258]
                call    RtlInitUnicodeString
                and     dword ptr [rsp+340h+var_318], r13d
                lea     rax, [rbp+240h+var_258]
                and     qword ptr [rbp+240h+var_2A0+8], r13
                lea     r9, [rbp+240h+var_268]
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+240h+var_290], rax
                lea     r8, [rbp+240h+var_2A0]
                mov     dword ptr [rbp+240h+var_2A0], 30h ; '0'
                mov     edx, esi
                mov     dword ptr [rbp+240h+var_290+8], 240h
                lea     rcx, [rsp+340h+var_2D0]
                mov     dword ptr [rsp+340h+var_320], 7
                movdqu  [rbp+240h+var_280], xmm0
                call    ZwOpenFile
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jnz     short loc_14095ABB2
                and     [rsp+340h+var_2D0], r13

loc_14095ABAA:                          ; CODE XREF: sub_14095A9E0+16B↑j
                                        ; sub_14095A9E0+212↓j ...
                mov     r12, r13
                jmp     loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095ABB2:                          ; CODE XREF: sub_14095A9E0+1C3↑j
                xor     eax, eax
                mov     dword ptr [rbp+240h+var_2A0], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+240h+var_2A0+8], rax
                lea     r8, [rbp+240h+var_2A0]
                mov     dword ptr [rbp+240h+var_290+8], 200h
                mov     edx, 1F0003h
                mov     qword ptr [rbp+240h+var_290], rax
                lea     r9d, [rax+1]
                mov     byte ptr [rsp+340h+var_320], al
                lea     rcx, [rbp+240h+var_2C0]
                movdqu  [rbp+240h+var_280], xmm0
                call    ZwCreateEvent
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jz      short loc_14095ABAA
                and     qword ptr [rsp+340h+var_300], r13
                lea     rax, [rsp+340h+var_2E8]
                mov     rdx, [rbp+240h+var_2C0]
                xor     r9d, r9d
                mov     rcx, [rsp+340h+var_2D0]
                xor     r8d, r8d
                mov     [rsp+340h+var_308], rax
                lea     rax, [rbp+240h+var_268]
                mov     dword ptr [rsp+340h+var_310], r14d
                mov     [rsp+340h+var_318], r12
                mov     [rsp+340h+var_320], rax
                call    ZwReadFile
                mov     ebx, eax
                test    eax, eax
                js      loc_14095ABAA
                mov     rcx, [rbp+240h+var_2C0]
                xor     r8d, r8d
                xor     edx, edx
                call    ZwWaitForSingleObject
                mov     ebx, eax
                test    eax, eax
                jz      short loc_14095AC5B
                mov     r12, r13

loc_14095AC4B:                          ; CODE XREF: sub_14095A9E0+544↓j
                js      loc_14095AF99
                mov     ebx, 0C0000001h
                jmp     loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095AC5B:                          ; CODE XREF: sub_14095A9E0+266↑j
                mov     rax, [rsp+340h+var_2C8]
                mov     rax, [rax]
                cmp     [r12], rax
                jz      short loc_14095AC73
                mov     ebx, 0C000A000h
                jmp     loc_14095ABAA
; ---------------------------------------------------------------------------

loc_14095AC73:                          ; CODE XREF: sub_14095A9E0+287↑j
                mov     ebx, [rdi+30h]
                cmp     ebx, 20h ; ' '
                jnz     short loc_14095AC8E
                cmp     [r15+4Ch], r13d
                jz      short loc_14095AC8E
                or      dword ptr [rdi+18h], 4
                mov     byte ptr [rsp+340h+var_2F0], 1
                mov     byte ptr [rdi+0Ch], 1

loc_14095AC8E:                          ; CODE XREF: sub_14095A9E0+299↑j
                                        ; sub_14095A9E0+29F↑j
                mov     rcx, [rsp+340h+var_2D0]
                xor     r14d, r14d
                xor     r12d, r12d
                mov     [rsp+340h+var_2C8], rcx
                cmp     [rdi+0Ch], r12b
                jz      short loc_14095AD1A
                and     [rsp+340h+var_2C8], r12
                and     dword ptr [rsp+340h+var_2E8], r12d
                and     dword ptr [rsp+340h+var_2E8+4], r12d
                cmp     ebx, 10h
                jz      short loc_14095ACCB
                cmp     ebx, 100h
                jz      short loc_14095ACCB
                mov     r14d, [r15+20h]
                mov     dword ptr [rsp+340h+var_2E8], r14d
                jmp     short loc_14095ACE9
; ---------------------------------------------------------------------------

loc_14095ACCB:                          ; CODE XREF: sub_14095A9E0+2D6↑j
                                        ; sub_14095A9E0+2DE↑j
                lea     rdx, [rsp+340h+var_2E8]
                call    sub_14095A3D0
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jz      loc_14095ABAA
                mov     r14d, dword ptr [rsp+340h+var_2E8]
                mov     ebx, [rdi+30h]

loc_14095ACE9:                          ; CODE XREF: sub_14095A9E0+2E9↑j
                lea     rdx, [rbp+240h+var_270]
                lea     rcx, [rsp+340h+var_2E8]
                call    sub_14095A448
                test    eax, eax
                js      short loc_14095AD0D
                cmp     [rdi], r12d
                jge     short loc_14095AD0D
                mov     eax, dword ptr [rbp+240h+var_270]
                lea     r12, [rbp+240h+var_270]
                mov     [rbp+240h+var_2A8], rax
                jmp     short loc_14095AD1A
; ---------------------------------------------------------------------------

loc_14095AD0D:                          ; CODE XREF: sub_14095A9E0+319↑j
                                        ; sub_14095A9E0+31E↑j
                btr     dword ptr [rdi], 1Fh
                lea     r12, [rsp+340h+var_2E8]
                mov     [rbp+240h+var_2A8], r14

loc_14095AD1A:                          ; CODE XREF: sub_14095A9E0+2C2↑j
                                        ; sub_14095A9E0+32B↑j
                cmp     ebx, 100h
                jz      short loc_14095AD3D
                xor     edx, edx
                lea     rcx, [rbp+240h+var_2B0]
                call    sub_140959AD4
                mov     r13, [rbp+240h+var_2B0]
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jz      loc_14095AE47

loc_14095AD3D:                          ; CODE XREF: sub_14095A9E0+340↑j
                xor     eax, eax
                mov     dword ptr [rbp+240h+var_2A0], 30h ; '0'
                mov     qword ptr [rbp+240h+var_2A0+8], rax
                lea     r8, [rbp+240h+var_2A0]
                mov     qword ptr [rbp+240h+var_290], rax
                lea     rcx, [rbp+240h+var_2B8]
                mov     qword ptr [rbp+240h+var_280+8], rax
                mov     r9, r12
                mov     rax, [rsp+340h+var_2C8]
                mov     edx, 6
                mov     [rsp+340h+var_310], rax
                mov     eax, [rdi]
                mov     dword ptr [rsp+340h+var_318], eax
                mov     dword ptr [rsp+340h+var_320], 4
                mov     dword ptr [rbp+240h+var_290+8], 240h
                mov     qword ptr [rbp+240h+var_280], r13
                call    ZwCreateSection
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14095AE02
                mov     r12, [rsp+340h+var_2C8]

loc_14095AD95:                          ; CODE XREF: sub_14095A9E0+420↓j
                cmp     byte ptr [rdi+0Ch], 0
                jz      loc_14095AE42
                mov     eax, [rdi]
                test    eax, eax
                jns     loc_14095AE42
                and     qword ptr [rbp+240h+var_2A0+8], 0
                lea     r9, [rsp+340h+var_2E8]
                and     qword ptr [rbp+240h+var_290], 0
                lea     r8, [rbp+240h+var_2A0]
                and     qword ptr [rbp+240h+var_280+8], 0
                lea     rcx, [rbp+240h+var_2B8]
                btr     eax, 1Fh
                mov     [rsp+340h+var_310], r12
                mov     dword ptr [rsp+340h+var_318], eax
                mov     edx, 6
                mov     dword ptr [rsp+340h+var_320], 4
                mov     [rdi], eax
                mov     [rbp+240h+var_2A8], r14
                mov     dword ptr [rbp+240h+var_2A0], 30h ; '0'
                mov     dword ptr [rbp+240h+var_290+8], 240h
                mov     qword ptr [rbp+240h+var_280], r13
                call    ZwCreateSection
                mov     ebx, eax
                test    eax, eax
                js      short loc_14095AD95

loc_14095AE02:                          ; CODE XREF: sub_14095A9E0+3AE↑j
                mov     r8, cs:MmSectionObjectType
                lea     rax, [rbp+240h+var_2B0]
                and     [rsp+340h+var_318], 0
                xor     r9d, r9d
                mov     rcx, [rbp+240h+var_2B8]
                mov     edx, 0F001Fh
                and     [rbp+240h+var_2B0], 0
                mov     [rsp+340h+var_320], rax
                call    ObReferenceObjectByHandle
                mov     r12, [rbp+240h+var_2B0]
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jnz     short loc_14095AE51
                xor     r12d, r12d
                jmp     loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095AE42:                          ; CODE XREF: sub_14095A9E0+3B9↑j
                                        ; sub_14095A9E0+3C3↑j
                and     [rbp+240h+var_2B8], 0

loc_14095AE47:                          ; CODE XREF: sub_14095A9E0+357↑j
                mov     r12, [rsp+340h+var_2E0]
                jmp     loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095AE51:                          ; CODE XREF: sub_14095A9E0+458↑j
                cmp     byte ptr [rdi+0Ch], 0
                jz      loc_14095AF5C
                mov     rcx, [rbp+240h+var_2B8]
                lea     rax, [rbp+240h+var_2A8]
                and     dword ptr [rsp+340h+var_2E8], 0
                lea     r8, [rsp+340h+var_2D8]
                and     dword ptr [rsp+340h+var_2E8+4], 0
                xor     r9d, r9d
                mov     dword ptr [rsp+340h+var_2F8], 4
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+340h+var_300], 400000h
                mov     dword ptr [rsp+340h+var_308], 2
                mov     [rsp+340h+var_310], rax
                lea     rax, [rsp+340h+var_2E8]
                mov     [rsp+340h+var_318], rax
                and     [rsp+340h+var_320], 0
                call    ZwMapViewOfSection
                mov     ebx, eax
                and     eax, esi
                cmp     eax, esi
                jnz     short loc_14095AEBE
                and     [rsp+340h+var_2D8], 0
                jmp     loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095AEBE:                          ; CODE XREF: sub_14095A9E0+4D1↑j
                xor     eax, eax
                cmp     byte ptr [rsp+340h+var_2F0], al
                jnz     short loc_14095AF29
                mov     rdx, [rbp+240h+var_2C0]
                xor     r9d, r9d
                mov     rcx, [rsp+340h+var_2D0]
                xor     r8d, r8d
                mov     qword ptr [rsp+340h+var_300], rax
                mov     [rsp+340h+var_2E8], rax
                lea     rax, [rsp+340h+var_2E8]
                mov     [rsp+340h+var_308], rax
                mov     rax, [rsp+340h+var_2D8]
                mov     dword ptr [rsp+340h+var_310], r14d
                mov     [rsp+340h+var_318], rax
                lea     rax, [rbp+240h+var_268]
                mov     [rsp+340h+var_320], rax
                call    ZwReadFile
                mov     ebx, eax
                test    eax, eax
                js      loc_14095AF99
                mov     rcx, [rbp+240h+var_2C0]
                xor     r8d, r8d
                xor     edx, edx
                call    ZwWaitForSingleObject
                mov     ebx, eax
                test    eax, eax
                jz      short loc_14095AF48
                jmp     loc_14095AC4B
; ---------------------------------------------------------------------------

loc_14095AF29:                          ; CODE XREF: sub_14095A9E0+4E4↑j
                mov     [r15+4Ch], eax
                mov     r9, r15
                mov     rdx, [rsp+340h+var_2D8]
                mov     r8d, r14d
                mov     rcx, [rsp+340h+var_2D0]
                call    sub_14095A500
                mov     ebx, eax
                test    eax, eax
                js      short loc_14095AF99

loc_14095AF48:                          ; CODE XREF: sub_14095A9E0+542↑j
                mov     rdx, [rsp+340h+var_2D8]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwUnmapViewOfSection
                and     [rsp+340h+var_2D8], 0

loc_14095AF5C:                          ; CODE XREF: sub_14095A9E0+475↑j
                mov     rax, [rdi+28h]
                test    rax, rax
                jz      short loc_14095AF99
                mov     [rax], r12
                xor     r12d, r12d
                cmp     dword ptr [rdi+30h], 10h
                jnz     short loc_14095AF99
                cmp     cs:dword_140C12E40, 2710h
                jnz     short loc_14095AF99
                mov     eax, [rdi+18h]
                and     eax, 0Fh
                or      cs:dword_140CF9FDC, eax
                mov     eax, [rdi+4]
                mov     cs:dword_140C12E40, eax
                jmp     short loc_14095AF99
; ---------------------------------------------------------------------------

loc_14095AF94:                          ; CODE XREF: sub_14095A9E0+121↑j
                mov     ebx, 0C000000Dh

loc_14095AF99:                          ; CODE XREF: sub_14095A9E0+DC↑j
                                        ; sub_14095A9E0+1CD↑j ...
                mov     rcx, [rbp+240h+var_2C0]
                test    rcx, rcx
                jz      short loc_14095AFA7
                call    ZwClose

loc_14095AFA7:                          ; CODE XREF: sub_14095A9E0+5C0↑j
                mov     rdx, [rsp+340h+var_2D8]
                test    rdx, rdx
                jz      short loc_14095AFBA
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwUnmapViewOfSection

loc_14095AFBA:                          ; CODE XREF: sub_14095A9E0+5CF↑j
                mov     rcx, [rbp+240h+var_2B8]
                test    rcx, rcx
                jz      short loc_14095AFC8
                call    ZwClose

loc_14095AFC8:                          ; CODE XREF: sub_14095A9E0+5E1↑j
                mov     rcx, [rsp+340h+var_2D0]
                test    rcx, rcx
                jz      short loc_14095AFD7
                call    ZwClose

loc_14095AFD7:                          ; CODE XREF: sub_14095A9E0+5F0↑j
                test    r13, r13
                jz      short loc_14095AFE6
                xor     edx, edx
                mov     rcx, r13
                call    ExFreePoolWithTag

loc_14095AFE6:                          ; CODE XREF: sub_14095A9E0+5FA↑j
                test    r12, r12
                jz      short loc_14095AFF3
                mov     rcx, r12
                call    PsDereferenceSiloContext

loc_14095AFF3:                          ; CODE XREF: sub_14095A9E0+609↑j
                test    r15, r15
                jz      short loc_14095B002
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_14095B002:                          ; CODE XREF: sub_14095A9E0+616↑j
                mov     rcx, [rdi+10h]
                mov     [rdi+24h], ebx
                test    rcx, rcx
                jz      short loc_14095B01A
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    KeSetEvent

loc_14095B01A:                          ; CODE XREF: sub_14095A9E0+92↑j
                                        ; sub_14095A9E0+62C↑j
                mov     rcx, [rbp+240h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+340h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095A9E0
sub_14095A9E0   endp

byte_14095B04B  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140124B00↑o

; =============== S U B R O U T I N E =======================================


sub_14095B054   proc near               ; CODE XREF: sub_14095B130+295↓p
                                        ; DATA XREF: .pdata:0000000140124B0C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                xor     r14d, r14d
                mov     esi, ecx
                test    cl, 20h
                jz      short loc_14095B0B8
                mov     rdi, cs:qword_140CF9FF8
                mov     eax, r14d
                xchg    rax, cs:qword_140CF9FF8
                test    rdi, rdi
                jz      short loc_14095B0B8
                mov     rbx, rdi
                lea     ebp, [r14+1Eh]

loc_14095B094:                          ; CODE XREF: sub_14095B054+58↓j
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_14095B0A4
                call    PsDereferenceSiloContext
                mov     [rbx], r14

loc_14095B0A4:                          ; CODE XREF: sub_14095B054+46↑j
                add     rbx, 8
                sub     rbp, 1
                jnz     short loc_14095B094
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14095B0B8:                          ; CODE XREF: sub_14095B054+21↑j
                                        ; sub_14095B054+37↑j
                test    sil, 10h
                jz      short loc_14095B0E0
                mov     rcx, cs:qword_140CF9FF0
                test    rcx, rcx
                jz      short loc_14095B0E0
                mov     rax, rcx
                lock cmpxchg cs:qword_140CF9FF0, r14
                cmp     rcx, rax
                jnz     short loc_14095B0E0
                call    PsDereferenceSiloContext

loc_14095B0E0:                          ; CODE XREF: sub_14095B054+68↑j
                                        ; sub_14095B054+74↑j ...
                bt      esi, 8
                jnb     short loc_14095B108
                mov     rcx, cs:qword_140CF9FE8
                test    rcx, rcx
                jz      short loc_14095B108
                mov     rax, rcx
                lock cmpxchg cs:qword_140CF9FE8, r14
                cmp     rcx, rax
                jnz     short loc_14095B108
                call    PsDereferenceSiloContext

loc_14095B108:                          ; CODE XREF: sub_14095B054+90↑j
                                        ; sub_14095B054+9C↑j ...
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095B054   endp

algn_14095B126:                         ; DATA XREF: .pdata:0000000140124B0C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095B130   proc near               ; DATA XREF: .pdata:0000000140124B18↑o
                                        ; PAGE:000000014098A5D8↓o

var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_128         = dword ptr -128h
var_124         = byte ptr -124h
var_120         = dword ptr -120h
var_118         = qword ptr -118h
var_110         = byte ptr -110h
var_10C         = dword ptr -10Ch
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], edx
                mov     [rax+8], ecx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 140h
                mov     r15, r9
                mov     r12, r8
                mov     esi, edx
                xor     edi, edi
                mov     [rsp+178h+var_120], edi
                mov     [rsp+178h+var_10C], edi
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-80h], xmm0
                movups  xmmword ptr [rax-70h], xmm0
                movups  xmmword ptr [rax-60h], xmm0
                mov     [rax-0F0h], rdi
                xor     eax, eax
                movups  [rsp+178h+var_98], xmm0
                mov     [rsp+178h+var_88], rax
                mov     [rsp+178h+var_D8], rdi
                movups  [rsp+178h+var_D0], xmm0
                movups  [rsp+178h+var_C0], xmm0
                movups  [rsp+178h+var_B0], xmm0
                mov     [rsp+178h+var_A0], rax
                mov     [rsp+178h+var_118], rdi
                mov     [rsp+178h+var_100], rdi
                mov     [rsp+178h+var_120], edi
                mov     [rsp+178h+var_10C], edi
                mov     rax, gs:188h
                mov     r13b, [rax+232h]
                mov     [rsp+178h+var_110], r13b
                test    r13b, r13b
                jnz     short loc_14095B1EF

loc_14095B1E1:                          ; CODE XREF: sub_14095B130+C5↓j
                mov     edx, 0C0000001h

loc_14095B1E6:                          ; CODE XREF: sub_14095B130+DB↓j
                                        ; sub_14095B130+140↓j
                mov     [rsp+178h+var_128], edx
                jmp     loc_14095BACE
; ---------------------------------------------------------------------------

loc_14095B1EF:                          ; CODE XREF: sub_14095B130+AF↑j
                cmp     cs:InitSafeBootMode, edi
                jnz     short loc_14095B1E1
                mov     ebx, [rsp+178h+arg_0]
                test    ebx, 0FFE0FE81h
                jz      short loc_14095B20D

loc_14095B206:                          ; CODE XREF: sub_14095B130+121↓j
                                        ; sub_14095B130+126↓j
                mov     edx, 0C000000Dh
                jmp     short loc_14095B1E6
; ---------------------------------------------------------------------------

loc_14095B20D:                          ; CODE XREF: sub_14095B130+D4↑j
                lea     rcx, qword_140CFA008
                call    sub_1407CE46C
                mov     edx, eax
                mov     [rsp+178h+var_128], eax
                mov     ecx, eax
                mov     eax, 0C0000000h
                and     ecx, eax
                cmp     ecx, eax
                jz      loc_14095BACE
                bt      ebx, 11h
                jnb     loc_14095B3FB
                mov     r8d, ebx
                mov     edx, 180000h
                and     r8d, edx
                setnz   cl
                bt      ebx, 12h
                setb    al
                test    al, cl
                jnz     short loc_14095B206
                cmp     r8d, edx
                jz      short loc_14095B206
                mov     r15d, 1C0000h
                and     ebx, r15d
                mov     eax, cs:dword_140CF9FDC
                and     eax, r15d
                cmp     ebx, eax
                jnz     short loc_14095B275

loc_14095B26E:                          ; CODE XREF: sub_14095B130:loc_14095BAC1↓j
                mov     edx, edi
                jmp     loc_14095B1E6
; ---------------------------------------------------------------------------

loc_14095B275:                          ; CODE XREF: sub_14095B130+13C↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     edx, 1
                mov     rcx, cs:qword_140CFA008
                call    ExAcquireResourceExclusiveLite
                nop

loc_14095B297:                          ; DATA XREF: .rdata:00000001400C5AC4↑o
;   __try { // __finally(loc_14095BB0F)
                mov     ecx, cs:dword_140CF9FDC
                and     ecx, r15d
                cmp     ebx, ecx
                jz      loc_14095B3D4
                mov     r9, cs:qword_140CF9FF0
                test    r9, r9
                jz      short loc_14095B302
                test    ebx, ebx
                jnz     short loc_14095B2C5
                mov     [rsp+178h+var_128], 0C00000BBh
                jmp     loc_14095B3D8
; ---------------------------------------------------------------------------

loc_14095B2C5:                          ; CODE XREF: sub_14095B130+186↑j
                test    r9, r9
                jz      short loc_14095B302
                mov     eax, 80000000h
                mov     [rsp+178h+var_E0], eax
                test    ecx, ecx
                mov     esi, 0C0000000h
                cmovnz  eax, esi
                mov     [rsp+178h+var_E0], eax
                mov     r8b, r13b
                mov     edx, eax
                mov     rcx, r9
                call    sub_140959884
                mov     [rsp+178h+var_128], eax
                and     eax, esi
                cmp     eax, esi
                jz      loc_14095B3D8

loc_14095B302:                          ; CODE XREF: sub_14095B130+182↑j
                                        ; sub_14095B130+198↑j
                mov     eax, cs:dword_140CF9FDC
                mov     r14d, 0FFE3FFFFh
                and     eax, r14d
                mov     cs:dword_140CF9FDC, eax
                or      eax, ebx
                mov     cs:dword_140CF9FDC, eax
                mov     rcx, cs:qword_140CF9FF0
                test    rcx, rcx
                jz      loc_14095B3D4
                mov     r15d, 80000h
                mov     esi, 100000h
                test    r15d, eax
                jnz     short loc_14095B347
                test    esi, eax
                jz      loc_14095B3D4

loc_14095B347:                          ; CODE XREF: sub_14095B130+20D↑j
                mov     [rsp+178h+var_118], rdi
                mov     [rsp+178h+var_100], 68h ; 'h'
                mov     [rsp+178h+var_F0], rdi
                lea     r8, [rsp+178h+var_100]
                lea     rdx, [rsp+178h+var_118]
                call    MmMapViewInSystemSpace
                test    eax, eax
                js      short loc_14095B3B0
                mov     rcx, [rsp+178h+var_118]
                test    rcx, rcx
                jz      short loc_14095B3B0
                cmp     [rsp+178h+var_100], 68h ; 'h'
                jb      short loc_14095B3A6
                and     [rcx+30h], r14d
                mov     eax, cs:dword_140CF9FDC
                and     eax, r15d
                neg     eax
                sbb     edx, edx
                and     edx, 0FFF80000h
                add     edx, esi
                or      edx, [rcx+30h]
                mov     [rcx+30h], edx
                mov     rcx, [rsp+178h+var_118]

loc_14095B3A6:                          ; CODE XREF: sub_14095B130+250↑j
                call    MmUnmapViewInSystemSpace
                mov     [rsp+178h+var_118], rdi

loc_14095B3B0:                          ; CODE XREF: sub_14095B130+23E↑j
                                        ; sub_14095B130+248↑j
                mov     eax, cs:dword_140CF9FDC
                and     eax, esi
                neg     eax
                sbb     ecx, ecx
                and     ecx, 110h
                add     ecx, 20h ; ' '
                call    sub_14095B054
                mov     ecx, 4
                call    sub_14095A798

loc_14095B3D4:                          ; CODE XREF: sub_14095B130+172↑j
                                        ; sub_14095B130+1F9↑j ...
                mov     [rsp+178h+var_128], edi
;   } // starts at 14095B297

loc_14095B3D8:                          ; CODE XREF: sub_14095B130+190↑j
                                        ; sub_14095B130+1CC↑j
                                        ; DATA XREF: ...
                mov     rcx, cs:qword_140CFA008
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     edx, [rsp+178h+var_128]
                jmp     loc_14095BACE
; ---------------------------------------------------------------------------

loc_14095B3FB:                          ; CODE XREF: sub_14095B130+104↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r14d, 1
                mov     dl, r14b
                mov     rcx, cs:qword_140CFA008
                call    ExAcquireResourceSharedLite
                nop

loc_14095B421:                          ; DATA XREF: .rdata:00000001400C5AD4↑o
;   __try { // __finally(loc_14095BB3A)
                mov     eax, cs:dword_140CF9FDC
                mov     ebx, [rsp+178h+arg_0]
                test    eax, eax
                jz      loc_14095B4CB
                mov     ecx, eax
                and     ecx, 0Fh
                jz      short loc_14095B44B
                and     ebx, 0FFFFFFF0h
                mov     [rsp+178h+arg_0], ebx
                or      ebx, ecx
                jmp     short loc_14095B44E
; ---------------------------------------------------------------------------

loc_14095B44B:                          ; CODE XREF: sub_14095B130+30B↑j
                or      ebx, r14d

loc_14095B44E:                          ; CODE XREF: sub_14095B130+319↑j
                mov     [rsp+178h+arg_0], ebx
                mov     esi, 100000h
                test    esi, eax
                jz      short loc_14095B47B
                bt      ebx, 10h
                jb      short loc_14095B477
                mov     [rsp+178h+var_128], 0C0000098h
                mov     r13d, 0C0000000h
                jmp     loc_14095BA0C
; ---------------------------------------------------------------------------

loc_14095B477:                          ; CODE XREF: sub_14095B130+332↑j
                or      ebx, esi
                jmp     short loc_14095B4BB
; ---------------------------------------------------------------------------

loc_14095B47B:                          ; CODE XREF: sub_14095B130+32C↑j
                mov     r15d, 80000h
                test    r15d, eax
                jz      short loc_14095B4B0
                mov     eax, ebx
                and     eax, 130h
                cmp     eax, 20h ; ' '
                jnz     short loc_14095B4AB
                bt      ebx, 10h
                jb      short loc_14095B4AB
                mov     [rsp+178h+var_128], 0C0000098h
                mov     r13d, 0C0000000h
                jmp     loc_14095BA04
; ---------------------------------------------------------------------------

loc_14095B4AB:                          ; CODE XREF: sub_14095B130+360↑j
                                        ; sub_14095B130+366↑j
                or      ebx, r15d
                jmp     short loc_14095B4BB
; ---------------------------------------------------------------------------

loc_14095B4B0:                          ; CODE XREF: sub_14095B130+354↑j
                mov     ecx, 40000h
                test    ecx, eax
                jz      short loc_14095B4C2
                or      ebx, ecx

loc_14095B4BB:                          ; CODE XREF: sub_14095B130+349↑j
                                        ; sub_14095B130+37E↑j
                mov     [rsp+178h+arg_0], ebx

loc_14095B4C2:                          ; CODE XREF: sub_14095B130+387↑j
                mov     esi, [rsp+178h+arg_8]
                jmp     short loc_14095B4D5
; ---------------------------------------------------------------------------

loc_14095B4CB:                          ; CODE XREF: sub_14095B130+300↑j
                or      ebx, r14d
                mov     [rsp+178h+arg_0], ebx

loc_14095B4D5:                          ; CODE XREF: sub_14095B130+399↑j
                mov     r12d, ebx
                and     r12d, 0FFFFFECFh
                mov     [rsp+178h+var_10C], r12d
                and     ebx, 130h
                mov     [rsp+178h+arg_0], ebx
                mov     ecx, r12d
                and     ecx, 40h
                mov     eax, ecx
                neg     eax
                sbb     eax, eax
                and     eax, 2
                add     eax, 2
                mov     [rsp+178h+var_108], eax
                neg     ecx
                sbb     r15d, r15d
                and     r15d, 40000000h
                mov     eax, 80000000h
                add     r15d, eax
                mov     [rsp+178h+var_F8], r15d
                mov     edx, 2710h
                mov     [rsp+178h+var_120], edx
                movzx   ecx, dil
                mov     [rsp+178h+var_124], cl
                cmp     ebx, 10h
                jnz     short loc_14095B594
                mov     eax, cs:dword_140C12E40
                cmp     eax, edx
                jnb     short loc_14095B549
                mov     [rsp+178h+var_120], eax
                jmp     short loc_14095B578
; ---------------------------------------------------------------------------

loc_14095B549:                          ; CODE XREF: sub_14095B130+411↑j
                cmp     esi, edx
                jb      short loc_14095B574
                mov     al, cs:byte_140C12E44
                test    al, al
                jz      short loc_14095B566
                mov     ecx, r14d
                call    sub_14095A798
                mov     cs:byte_140C12E44, dil

loc_14095B566:                          ; CODE XREF: sub_14095B130+425↑j
                                        ; sub_14095B130+470↓j ...
                mov     edx, 0C000000Dh

loc_14095B56B:                          ; CODE XREF: sub_14095B130+5E8↓j
                mov     [rsp+178h+var_128], edx
                jmp     loc_14095B9F6
; ---------------------------------------------------------------------------

loc_14095B574:                          ; CODE XREF: sub_14095B130+41B↑j
                mov     [rsp+178h+var_120], esi

loc_14095B578:                          ; CODE XREF: sub_14095B130+417↑j
                test    r12b, 2
                mov     r13d, ecx
                cmovnz  r13d, r14d
                mov     [rsp+178h+var_124], r13b
                lea     rsi, qword_140CF9FF0
                jmp     loc_14095B64D
; ---------------------------------------------------------------------------

loc_14095B594:                          ; CODE XREF: sub_14095B130+407↑j
                cmp     ebx, 20h ; ' '
                jnz     loc_14095B65A
                cmp     esi, 1Eh
                jnb     short loc_14095B566
                mov     eax, cs:dword_140C12E40
                cmp     eax, edx
                jz      short loc_14095B566
                mov     [rsp+178h+var_120], eax
                cmp     cs:qword_140CF9FF8, 0
                jnz     short loc_14095B62E
                mov     ebx, 0F0h
                mov     r8d, 636D6650h
                mov     edx, ebx
                mov     ecx, r14d
                call    ExAllocatePoolWithTag
                mov     [rsp+178h+var_118], rax
                test    rax, rax
                jnz     short loc_14095B5E6
                mov     [rsp+178h+var_128], 0C0000017h
                jmp     loc_14095B9F6
; ---------------------------------------------------------------------------

loc_14095B5E6:                          ; CODE XREF: sub_14095B130+4A7↑j
                mov     r8, rbx
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rcx, [rsp+178h+var_118]
                xor     eax, eax
                lock cmpxchg cs:qword_140CF9FF8, rcx
                mov     [rsp+178h+var_50], rax
                jz      short loc_14095B619
                xor     edx, edx
                mov     rcx, [rsp+178h+var_118]
                call    ExFreePoolWithTag

loc_14095B619:                          ; CODE XREF: sub_14095B130+4DB↑j
                mov     [rsp+178h+var_118], rdi
                mov     ebx, [rsp+178h+arg_0]
                mov     cl, [rsp+178h+var_124]
                mov     r12d, [rsp+178h+var_10C]

loc_14095B62E:                          ; CODE XREF: sub_14095B130+488↑j
                test    r12b, 4
                movzx   eax, cl
                cmovnz  eax, r14d
                mov     r13b, al
                mov     [rsp+178h+var_124], al
                mov     ecx, esi
                mov     rax, cs:qword_140CF9FF8
                lea     rsi, [rax+rcx*8]

loc_14095B64D:                          ; CODE XREF: sub_14095B130+45F↑j
                mov     [rsp+178h+var_E8], rsi
                mov     rax, [rsi]
                jmp     short loc_14095B6D0
; ---------------------------------------------------------------------------

loc_14095B65A:                          ; CODE XREF: sub_14095B130+467↑j
                cmp     ebx, 100h
                jnz     loc_14095B566
                mov     eax, cs:dword_140C12E40
                mov     [rsp+178h+var_120], eax
                test    r12b, 8
                mov     eax, ecx
                cmovnz  eax, r14d
                mov     r13b, al
                mov     [rsp+178h+var_124], al
                lea     rsi, qword_140CF9FE8
                mov     [rsp+178h+var_E8], rsi
                mov     rax, cs:qword_140CF9FE8
                test    rax, rax
                jnz     loc_14095B8C5
                mov     rcx, 0FFFFF78000000014h
                mov     rax, [rcx]
                mov     cs:qword_140CF9FE0, rax
                mov     rax, [rsi]
                mov     ebx, [rsp+178h+arg_0]
                mov     r13b, [rsp+178h+var_124]
                mov     r12d, [rsp+178h+var_10C]
                mov     rsi, [rsp+178h+var_E8]

loc_14095B6D0:                          ; CODE XREF: sub_14095B130+528↑j
                test    rax, rax
                jnz     loc_14095B8C5
                mov     rcx, cs:qword_140CFA008
                call    ExReleaseResourceLite
                mov     dl, r14b
                mov     rcx, cs:qword_140CFA008
                call    ExAcquireResourceExclusiveLite
                mov     ecx, cs:dword_140CF9FDC
                mov     eax, ecx
                xor     eax, r12d
                mov     r15d, 1C0000h
                test    r15d, eax
                jz      short loc_14095B71D
                mov     edx, 180000h
                test    edx, ecx
                jz      short loc_14095B71D
                mov     edx, 0C0000001h
                jmp     loc_14095B56B
; ---------------------------------------------------------------------------

loc_14095B71D:                          ; CODE XREF: sub_14095B130+5D8↑j
                                        ; sub_14095B130+5E1↑j
                mov     r15d, [rsp+178h+var_F8]
                cmp     [rsi], rdi
                jnz     loc_14095B8B2
                mov     dword ptr [rsp+178h+var_D0], 8000000h
                mov     eax, [rsp+178h+var_120]
                mov     dword ptr [rsp+178h+var_D0+4], eax
                mov     dword ptr [rsp+178h+var_D0+8], r15d
                mov     byte ptr [rsp+178h+var_D0+0Ch], r13b
                mov     qword ptr [rsp+178h+var_C0], rdi
                mov     dword ptr [rsp+178h+var_C0+8], r12d
                mov     eax, [rsp+178h+arg_8]
                mov     dword ptr [rsp+178h+var_C0+0Ch], eax
                mov     r12d, [rsp+178h+var_108]
                mov     dword ptr [rsp+178h+var_B0], r12d
                mov     qword ptr [rsp+178h+var_B0+8], rsi
                mov     dword ptr [rsp+178h+var_A0], ebx
                xor     r8d, r8d
                mov     edx, r14d
                lea     rcx, [rsp+178h+var_98]
                call    KeInitializeEvent
                lea     rax, [rsp+178h+var_98]
                mov     qword ptr [rsp+178h+var_C0], rax
                mov     [rsp+178h+var_80], 30h ; '0'
                mov     [rsp+178h+var_78], rdi
                mov     [rsp+178h+var_68], 200h
                mov     [rsp+178h+var_70], rdi
                xorps   xmm0, xmm0
                movdqu  [rsp+178h+var_60], xmm0
                mov     [rsp+178h+var_138], rdi
                mov     [rsp+178h+var_140], rdi
                lea     rax, [rsp+178h+var_D0]
                mov     [rsp+178h+var_148], rax
                lea     rax, sub_14095A9E0
                mov     [rsp+178h+var_150], rax
                mov     [rsp+178h+var_158], rdi
                xor     r9d, r9d
                lea     r8, [rsp+178h+var_80]
                mov     edx, 1FFFFFh
                lea     rcx, [rsp+178h+var_D8]
                call    PsCreateSystemThreadEx
                mov     [rsp+178h+var_128], eax
                mov     r13d, 0C0000000h
                and     eax, r13d
                cmp     eax, r13d
                jz      loc_14095B9FC
                mov     rcx, [rsp+178h+var_D8]
                call    ZwClose
                mov     [rsp+178h+var_158], rdi
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+178h+var_98]
                call    KeWaitForSingleObject
                mov     [rsp+178h+var_128], eax
                test    eax, eax
                jz      short loc_14095B881
                js      loc_14095B9FC
                mov     edx, 0C0000001h
                mov     [rsp+178h+var_128], edx
                jmp     loc_14095B9FC
; ---------------------------------------------------------------------------

loc_14095B881:                          ; CODE XREF: sub_14095B130+73B↑j
                mov     eax, dword ptr [rsp+178h+var_C0+8]
                mov     [rsp+178h+var_10C], eax
                mov     eax, dword ptr [rsp+178h+var_B0+4]
                mov     [rsp+178h+var_128], eax
                and     eax, r13d
                cmp     eax, r13d
                jz      loc_14095B9FC
                cmp     ebx, 10h
                jnz     short loc_14095B8B7
                lea     ecx, [rbx-0Eh]
                call    sub_14095A798
                jmp     short loc_14095B8B7
; ---------------------------------------------------------------------------

loc_14095B8B2:                          ; CODE XREF: sub_14095B130+5F8↑j
                mov     r12d, [rsp+178h+var_108]

loc_14095B8B7:                          ; CODE XREF: sub_14095B130+776↑j
                                        ; sub_14095B130+780↑j
                mov     rcx, cs:qword_140CFA008
                call    ExConvertExclusiveToSharedLite
                jmp     short loc_14095B8CA
; ---------------------------------------------------------------------------

loc_14095B8C5:                          ; CODE XREF: sub_14095B130+56A↑j
                                        ; sub_14095B130+5A3↑j
                mov     r12d, [rsp+178h+var_108]

loc_14095B8CA:                          ; CODE XREF: sub_14095B130+793↑j
                mov     [rsp+178h+var_118], rdi
                mov     [rsp+178h+var_100], rdi
                mov     [rsp+178h+var_F0], rdi
                cmp     [rsp+178h+arg_28], rdi
                jz      loc_14095B9F6
                cmp     ebx, 100h
                jz      short loc_14095B91A
                mov     r8b, [rsp+178h+var_110]
                mov     edx, r15d
                mov     rcx, [rsi]
                call    sub_140959884
                mov     [rsp+178h+var_128], eax
                mov     r13d, 0C0000000h
                and     eax, r13d
                cmp     eax, r13d
                jz      loc_14095B9FC
                jmp     short loc_14095B920
; ---------------------------------------------------------------------------

loc_14095B91A:                          ; CODE XREF: sub_14095B130+7C0↑j
                mov     r13d, 0C0000000h

loc_14095B920:                          ; CODE XREF: sub_14095B130+7E8↑j
                mov     rax, gs:188h
                mov     [rsp+178h+var_48], rax
                mov     rdx, [rax+0B8h]
                mov     [rsp+178h+var_130], r12d
                mov     dword ptr [rsp+178h+var_138], 400000h
                mov     dword ptr [rsp+178h+var_140], r14d
                lea     rax, [rsp+178h+var_100]
                mov     [rsp+178h+var_148], rax
                lea     rax, [rsp+178h+var_F0]
                mov     [rsp+178h+var_150], rax
                mov     [rsp+178h+var_158], rdi
                xor     r9d, r9d
                lea     r8, [rsp+178h+var_118]
                mov     rcx, [rsp+178h+var_E8]
                mov     rcx, [rcx]
                call    MmMapViewOfSection
                mov     [rsp+178h+var_128], eax
                and     eax, r13d
                cmp     eax, r13d
                jnz     short loc_14095B991
                mov     [rsp+178h+var_118], rdi
                jmp     short loc_14095B9FC
; ---------------------------------------------------------------------------

loc_14095B991:                          ; CODE XREF: sub_14095B130+858↑j
                cmp     [rsp+178h+arg_0], 100h
                jnz     short loc_14095B9FC
                mov     rsi, cs:qword_140CF9FE0
                mov     rbx, 0FFFFF78000000014h
                mov     rbx, [rbx]
                mov     rax, 861C46800h
                add     rax, rsi
                cmp     rbx, rax
                jle     short loc_14095B9FC
                mov     rax, rsi
                lock cmpxchg cs:qword_140CF9FE0, rbx
                cmp     rsi, rax
                jnz     short loc_14095B9FC
                mov     rdx, [rsp+178h+var_100]
                mov     rcx, [rsp+178h+var_118]
                call    sub_14095A0C0
                test    eax, eax
                jns     short loc_14095B9FC
                mov     rax, rbx
                lock cmpxchg cs:qword_140CF9FE0, rsi
                jmp     short loc_14095B9FC
; ---------------------------------------------------------------------------

loc_14095B9F6:                          ; CODE XREF: sub_14095B130+43F↑j
                                        ; sub_14095B130+4B1↑j ...
                mov     r13d, 0C0000000h

loc_14095B9FC:                          ; CODE XREF: sub_14095B130+708↑j
                                        ; sub_14095B130+73D↑j ...
                mov     r12, [rsp+178h+arg_10]

loc_14095BA04:                          ; CODE XREF: sub_14095B130+376↑j
                mov     r15, [rsp+178h+arg_18]
;   } // starts at 14095B421

loc_14095BA0C:                          ; CODE XREF: sub_14095B130+342↑j
                                        ; DATA XREF: .rdata:00000001400C5AD4↑o
                mov     rcx, cs:qword_140CFA008
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     edx, [rsp+178h+var_128]
                mov     eax, edx
                and     eax, r13d
                cmp     eax, r13d
                jz      loc_14095BACE

loc_14095BA38:                          ; DATA XREF: .rdata:00000001400C5AE4↑o
;   __try { // __except at loc_14095BAC6
                mov     r8, [rsp+178h+arg_28]
                mov     rdx, 7FFFFFFF0000h
                test    r8, r8
                jz      short loc_14095BA6C
                mov     rcx, rdx
                cmp     r8, rdx
                cmovb   rcx, r8
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     rax, [rsp+178h+var_118]
                mov     [r8], rax
                mov     [rsp+178h+var_118], rdi

loc_14095BA6C:                          ; CODE XREF: sub_14095B130+91D↑j
                mov     r8, [rsp+178h+arg_20]
                test    r8, r8
                jz      short loc_14095BA8F
                mov     rcx, rdx
                cmp     r8, rdx
                cmovb   rcx, r8
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [rsp+178h+var_100]
                mov     [r8], eax

loc_14095BA8F:                          ; CODE XREF: sub_14095B130+947↑j
                test    r12, r12
                jz      short loc_14095BAAA
                mov     rcx, rdx
                cmp     r12, rdx
                cmovb   rcx, r12
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     eax, [rsp+178h+var_120]
                mov     [r12], eax

loc_14095BAAA:                          ; CODE XREF: sub_14095B130+962↑j
                test    r15, r15
                jz      short loc_14095BAC1
                cmp     r15, rdx
                cmovb   rdx, r15
                mov     eax, [rdx]
                mov     [rdx], eax
                mov     eax, [rsp+178h+var_10C]
                mov     [r15], eax

loc_14095BAC1:                          ; CODE XREF: sub_14095B130+97D↑j
                jmp     loc_14095B26E
;   } // starts at 14095BA38
; ---------------------------------------------------------------------------

loc_14095BAC6:                          ; DATA XREF: .rdata:00000001400C5AE4↑o
;   __except(1) // owned by 14095BA38
                mov     edx, eax
                mov     [rsp+178h+var_128], eax
                xor     edi, edi

loc_14095BACE:                          ; CODE XREF: sub_14095B130+BA↑j
                                        ; sub_14095B130+FA↑j ...
                cmp     [rsp+178h+var_118], rdi
                jz      short loc_14095BAF9
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+178h+var_118]
                call    sub_14068EDD0
                mov     edx, [rsp+178h+var_128]

loc_14095BAF9:                          ; CODE XREF: sub_14095B130+9A3↑j
                mov     eax, edx
                add     rsp, 140h
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
; } // starts at 14095B130
; ---------------------------------------------------------------------------

loc_14095BB0F:                          ; DATA XREF: .rdata:00000001400C5AC4↑o
                                        ; .pdata:0000000140124B18↑o ...
;   __finally // owned by 14095B297
                push    rbp
                sub     rsp, 50h
                mov     rbp, rdx
                mov     rcx, cs:qword_140CFA008
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                nop
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14095BB3A:                          ; DATA XREF: .rdata:00000001400C5AD4↑o
                                        ; .pdata:0000000140124B24↑o ...
;   __finally // owned by 14095B421
                push    rbp
                sub     rsp, 50h
                mov     rbp, rdx
                mov     rcx, cs:qword_140CFA008
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                nop
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095B130   endp

byte_14095BB65  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140124B30↑o

; =============== S U B R O U T I N E =======================================


sub_14095BB6C   proc near               ; CODE XREF: sub_14095C220+AE↓p
                                        ; sub_14095C300+51↓p
                                        ; DATA XREF: ...

var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = dword ptr -190h
var_188         = qword ptr -188h
var_174         = dword ptr -174h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = xmmword ptr -148h
var_130         = xmmword ptr -130h
var_120         = qword ptr -120h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = dword ptr -0E8h
var_E4          = byte ptr -0E4h
var_E0          = qword ptr -0E0h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = word ptr  48h
arg_48          = qword ptr  50h
arg_50          = byte ptr  58h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1C8h+var_38], rax
                mov     r15, r9
                mov     r12, r8
                mov     r13, rdx
                mov     r14, rcx
                mov     [rsp+1C8h+var_150], rcx
                mov     rax, [rsp+1C8h+arg_28]
                mov     [rsp+1C8h+var_168], rax
                mov     rbx, [rsp+1C8h+arg_48]
                xor     edx, edx
                mov     r8d, 0A0h
                lea     rcx, [rsp+1C8h+var_E0]
                call    memset
                xorps   xmm0, xmm0
                movups  [rsp+1C8h+var_148], xmm0
                xor     edi, edi
                mov     [rsp+1C8h+var_158], rdi
                movups  [rsp+1C8h+var_118], xmm0
                movups  [rsp+1C8h+var_108], xmm0
                movups  [rsp+1C8h+var_F8], xmm0
                mov     [rsp+1C8h+var_170], rdi
                mov     [rsp+1C8h+var_160], rdi
                xor     eax, eax
                movups  [rsp+1C8h+var_130], xmm0
                mov     [rsp+1C8h+var_120], rax
                mov     edx, [rsp+1C8h+arg_30]
                test    edx, edx
                jnz     short loc_14095BC2E
                mov     eax, 0C00000F5h
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BC2E:                          ; CODE XREF: sub_14095BB6C+B6↑j
                mov     ecx, [rsp+1C8h+arg_20]
                lea     eax, [rcx-2]
                cmp     eax, 1Dh
                ja      loc_14095C01C
                mov     r9, r15
                shr     r9, cl
                mov     rsi, rdx
                mov     r10d, 1
                mov     r8d, r10d
                shl     r8, cl
                xor     edx, edx
                mov     rax, r15
                div     r8
                lea     rcx, [r9+1]
                test    rdx, rdx
                cmovz   rcx, r9
                mov     rax, rsi
                shr     rax, 2
                cmp     rcx, rax
                jbe     short loc_14095BC7F
                mov     eax, 0C0000023h
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BC7F:                          ; CODE XREF: sub_14095BB6C+107↑j
                lea     rax, [r12+r15]
                cmp     rax, r15
                jnb     short loc_14095BC92
                mov     eax, 80000005h
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BC92:                          ; CODE XREF: sub_14095BB6C+11A↑j
                mov     eax, [rsp+1C8h+arg_38]
                mov     dword ptr [rsp+1C8h+var_130], eax
                mov     [rsp+1C8h+var_174], edi
                mov     rax, cs:off_140C00A68
                lea     r9, [rsp+1C8h+var_174]
                lea     r8, [rsp+1C8h+var_130]
                mov     edx, 18h
                mov     ecx, r10d
                call    sub_1404079D0
                test    eax, eax
                js      loc_14095C015
                cmp     [rsp+1C8h+var_174], 18h
                jnz     loc_14095C015
                cmp     byte ptr [rsp+1C8h+var_130+4], dil
                jz      loc_14095C015
                mov     rax, gs:188h
                mov     dil, [rax+232h]
                test    dil, dil
                jz      short loc_14095BD6F

loc_14095BCFB:                          ; DATA XREF: .rdata:00000001400C5B34↑o
;   __try { // __except at loc_14095BD6A
                mov     rcx, r14
                mov     r14, 7FFFFFFF0000h
                cmp     rcx, r14
                cmovnb  rcx, r14
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     r8d, 4
                mov     rdx, rsi
                mov     rcx, [rsp+1C8h+var_168]
                call    ProbeForWrite
                xor     esi, esi
                cmp     [rsp+1C8h+arg_50], sil
                jnz     short loc_14095BD68
                movzx   eax, [rsp+1C8h+arg_40]
                shl     rax, 4
                test    rax, rax
                jz      short loc_14095BD68
                test    bl, 3
                jz      short loc_14095BD4F
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14095BD4F:                          ; CODE XREF: sub_14095BB6C+1DC↑j
                lea     rcx, [rax+rbx]
                cmp     rcx, r14
                ja      short loc_14095BD5D
                cmp     rcx, rbx
                jnb     short loc_14095BD68

loc_14095BD5D:                          ; CODE XREF: sub_14095BB6C+1EA↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14095BD68:                          ; CODE XREF: sub_14095BB6C+1C6↑j
                                        ; sub_14095BB6C+1D7↑j ...
                jmp     short loc_14095BD7B
;   } // starts at 14095BCFB
; ---------------------------------------------------------------------------

loc_14095BD6A:                          ; DATA XREF: .rdata:00000001400C5B34↑o
;   __except(1) // owned by 14095BCFB
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BD6F:                          ; CODE XREF: sub_14095BB6C+18D↑j
                xor     esi, esi
                mov     r14, 7FFFFFFF0000h

loc_14095BD7B:                          ; CODE XREF: sub_14095BB6C:loc_14095BD68↑j
                mov     [rsp+1C8h+var_E8], 140001h
                xor     edx, edx
                mov     r8d, 0A4h
                lea     rcx, [rsp+1C8h+var_E4]
                call    memset

loc_14095BD9B:                          ; CODE XREF: sub_14095BB6C+2C4↓j
                cmp     [rsp+1C8h+arg_40], si
                jbe     loc_14095BE35
                test    dil, dil
                jz      short loc_14095BDCB
                cmp     [rsp+1C8h+arg_50], sil
                jnz     short loc_14095BDCB

loc_14095BDB8:                          ; DATA XREF: .rdata:00000001400C5B44↑o
;   __try { // __except at loc_14095BDC6
                movups  xmm0, xmmword ptr [rbx]
                movdqu  [rsp+1C8h+var_148], xmm0
                jmp     short loc_14095BDD7
;   } // starts at 14095BDB8
; ---------------------------------------------------------------------------

loc_14095BDC6:                          ; DATA XREF: .rdata:00000001400C5B44↑o
;   __except(1) // owned by 14095BDB8
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BDCB:                          ; CODE XREF: sub_14095BB6C+240↑j
                                        ; sub_14095BB6C+24A↑j
                movups  xmm0, xmmword ptr [rbx]
                movdqu  [rsp+1C8h+var_148], xmm0

loc_14095BDD7:                          ; CODE XREF: sub_14095BB6C+258↑j
                xor     edx, edx
                lea     rcx, [rsp+1C8h+var_148]
                call    sub_140378284
                test    al, al
                jz      loc_14095C01C
                movzx   ecx, word ptr [rsp+1C8h+var_148+8]
                cmp     word ptr [rsp+1C8h+var_E8], cx
                ja      short loc_14095BE0F
                mov     eax, 1
                add     eax, ecx
                mov     word ptr [rsp+1C8h+var_E8], ax

loc_14095BE0F:                          ; CODE XREF: sub_14095BB6C+292↑j
                mov     rax, qword ptr [rsp+1C8h+var_148]
                or      [rsp+rcx*8+1C8h+var_E0], rax
                mov     eax, 0FFFFh
                add     [rsp+1C8h+arg_40], ax
                add     rbx, 10h
                jmp     loc_14095BD9B
; ---------------------------------------------------------------------------

loc_14095BE35:                          ; CODE XREF: sub_14095BB6C+237↑j
                test    r13, r13
                jnz     short loc_14095BE72
                mov     rax, 7FFFFFFEFFFFh
                cmp     r12, rax
                ja      short loc_14095BE6B
                test    dil, dil
                jz      short loc_14095BE6B
                mov     dl, dil
                mov     rcx, cs:qword_140D2E7A0
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_14095BE6B
                mov     eax, 0C0000061h
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BE6B:                          ; CODE XREF: sub_14095BB6C+2DB↑j
                                        ; sub_14095BB6C+2E0↑j ...
                mov     [rsp+1C8h+var_170], rsi
                jmp     short loc_14095BEA8
; ---------------------------------------------------------------------------

loc_14095BE72:                          ; CODE XREF: sub_14095BB6C+2CC↑j
                mov     [rsp+1C8h+var_198], rsi
                lea     rax, [rsp+1C8h+var_170]
                mov     [rsp+1C8h+var_1A0], rax
                mov     dword ptr [rsp+1C8h+var_1A8], 66507845h
                mov     r9b, dil
                mov     r8, cs:PsProcessType
                mov     edx, 400h
                mov     rcx, r13
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_14095C021

loc_14095BEA8:                          ; CODE XREF: sub_14095BB6C+304↑j
                mov     cl, dil
                call    sub_1407050C8
                test    eax, eax
                jz      short loc_14095BEF2

loc_14095BEB4:                          ; DATA XREF: .rdata:00000001400C5B54↑o
;   __try { // __except at loc_14095BED4
                test    r15, r15
                jz      short loc_14095BED2
                lea     rax, [r12+r15]
                cmp     rax, r14
                ja      short loc_14095BEC7
                cmp     rax, r12
                jnb     short loc_14095BED2

loc_14095BEC7:                          ; CODE XREF: sub_14095BB6C+354↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14095BED2:                          ; CODE XREF: sub_14095BB6C+34B↑j
                                        ; sub_14095BB6C+359↑j
                jmp     short loc_14095BEF2
;   } // starts at 14095BEB4
; ---------------------------------------------------------------------------

loc_14095BED4:                          ; DATA XREF: .rdata:00000001400C5B54↑o
;   __except(1) // owned by 14095BEB4
                mov     rcx, [rsp+1C8h+var_170]
                test    rcx, rcx
                jz      short loc_14095BEE8
                mov     edx, 66507845h
                call    ObfDereferenceObjectWithTag

loc_14095BEE8:                          ; CODE XREF: sub_14095BB6C+370↑j
                mov     eax, 0C0000022h
                jmp     loc_14095C021
; ---------------------------------------------------------------------------

loc_14095BEF2:                          ; CODE XREF: sub_14095BB6C+346↑j
                                        ; sub_14095BB6C:loc_14095BED2↑j
                mov     dword ptr [rsp+1C8h+var_118], 30h ; '0'
                mov     qword ptr [rsp+1C8h+var_118+8], rsi
                mov     dword ptr [rsp+1C8h+var_108+8], 20h ; ' '
                mov     qword ptr [rsp+1C8h+var_108], rsi
                xorps   xmm0, xmm0
                movdqu  [rsp+1C8h+var_F8], xmm0
                lea     rax, [rsp+1C8h+var_160]
                mov     [rsp+1C8h+var_188], rax
                mov     [rsp+1C8h+var_190], 1E8h
                mov     dword ptr [rsp+1C8h+var_198], esi
                mov     dword ptr [rsp+1C8h+var_1A0], 0F0h
                mov     [rsp+1C8h+var_1A8], rsi
                mov     r9b, dil
                lea     r8, [rsp+1C8h+var_118]
                mov     rdx, cs:qword_140CFB2D0
                xor     ecx, ecx
                call    ObCreateObject
                mov     ebx, eax
                test    eax, eax
                js      loc_14095BFFD
                mov     rbx, [rsp+1C8h+var_160]
                mov     rax, [rsp+1C8h+var_170]
                mov     [rbx], rax
                mov     [rbx+8], r12
                mov     [rbx+10h], r15
                mov     rax, [rsp+1C8h+var_168]
                mov     [rbx+18h], rax
                mov     eax, [rsp+1C8h+arg_30]
                mov     [rbx+20h], eax
                mov     eax, [rsp+1C8h+arg_20]
                mov     [rbx+24h], eax
                mov     [rbx+30h], rsi
                mov     [rbx+40h], esi
                mov     eax, [rsp+1C8h+arg_38]
                mov     [rbx+44h], eax
                lea     rcx, [rbx+48h]
                lea     rdx, [rsp+1C8h+var_E8]
                call    KeCopyAffinityEx
                lea     rax, [rsp+1C8h+var_158]
                mov     [rsp+1C8h+var_1A0], rax
                mov     [rsp+1C8h+var_1A8], rsi
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                mov     rcx, rbx
                call    ObInsertObject
                mov     ebx, eax
                mov     dword ptr [rsp+1C8h+var_168], eax
                test    eax, eax
                js      short loc_14095C011

loc_14095BFE8:                          ; DATA XREF: .rdata:00000001400C5B64↑o
;   __try { // __except at loc_14095BFF7
                mov     rax, [rsp+1C8h+var_158]
                mov     rdx, [rsp+1C8h+var_150]
                mov     [rdx], rax
                jmp     short loc_14095C011
;   } // starts at 14095BFE8
; ---------------------------------------------------------------------------

loc_14095BFF7:                          ; DATA XREF: .rdata:00000001400C5B64↑o
;   __except(loc_14095C04F) // owned by 14095BFE8
                mov     ebx, dword ptr [rsp+1C8h+var_168]
                jmp     short loc_14095C011
; ---------------------------------------------------------------------------

loc_14095BFFD:                          ; CODE XREF: sub_14095BB6C+3F8↑j
                mov     rcx, [rsp+1C8h+var_170]
                test    rcx, rcx
                jz      short loc_14095C011
                mov     edx, 66507845h
                call    ObfDereferenceObjectWithTag

loc_14095C011:                          ; CODE XREF: sub_14095BB6C+47A↑j
                                        ; sub_14095BB6C+489↑j ...
                mov     eax, ebx
                jmp     short loc_14095C021
; ---------------------------------------------------------------------------

loc_14095C015:                          ; CODE XREF: sub_14095BB6C+15B↑j
                                        ; sub_14095BB6C+166↑j ...
                mov     eax, 0C00000BBh
                jmp     short loc_14095C021
; ---------------------------------------------------------------------------

loc_14095C01C:                          ; CODE XREF: sub_14095BB6C+CF↑j
                                        ; sub_14095BB6C+27C↑j
                mov     eax, 0C000000Dh

loc_14095C021:                          ; CODE XREF: sub_14095BB6C+BD↑j
                                        ; sub_14095BB6C+10E↑j ...
                mov     rcx, [rsp+1C8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1C8h+var_28]
                mov     rbx, [r11+40h]
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
; } // starts at 14095BB6C
; ---------------------------------------------------------------------------

loc_14095C04F:                          ; DATA XREF: .rdata:00000001400C5B64↑o
                                        ; .pdata:0000000140124B3C↑o ...
;   __except filter // owned by 14095BFE8
                push    rbp
                sub     rsp, 50h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+90h], rax
                mov     rax, [rbp+90h]
                mov     cl, [rax+232h]
                mov     [rbp+50h], cl
                mov     cl, [rbp+50h]
                xor     eax, eax
                test    cl, cl
                setnz   al
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095BB6C   endp

algn_14095C089:                         ; DATA XREF: .pdata:0000000140124B48↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095C090   proc near               ; DATA XREF: .pdata:0000000140124B54↑o
                                        ; sub_140A74E94+57↓o
                push    rbx
                sub     rsp, 20h
                cmp     qword ptr [rcx+30h], 0
                mov     rbx, rcx
                jz      short loc_14095C0CA
                mov     rcx, [rcx+28h]
                call    sub_14051BED0
                mov     rdx, [rbx+38h]
                mov     rcx, [rbx+30h]
                call    MmUnmapLockedPages
                mov     rcx, [rbx+38h]
                call    MmUnlockPages
                mov     rcx, [rbx+28h]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14095C0CA:                          ; CODE XREF: sub_14095C090+E↑j
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_14095C0DC
                mov     edx, 66507845h
                call    ObfDereferenceObjectWithTag

loc_14095C0DC:                          ; CODE XREF: sub_14095C090+40↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095C090   endp

algn_14095C0E3:                         ; DATA XREF: .pdata:0000000140124B54↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095C0F0   proc near               ; DATA XREF: .pdata:0000000140124B60↑o
                                        ; PAGE:000000014098AF08↓o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 40h
                mov     rbx, r9
                mov     rdi, r8
                mov     sil, cl
                and     qword ptr [rax-20h], 0
                and     qword ptr [rax-28h], 0
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      loc_14095C1D3

loc_14095C12E:                          ; DATA XREF: .rdata:00000001400C5C08↑o
;   __try { // __except at loc_14095C1D1
                test    dl, 3
                jz      short loc_14095C138
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14095C138:                          ; CODE XREF: sub_14095C0F0+41↑j
                lea     rax, [rdx+8]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      short loc_14095C150
                cmp     rax, rdx
                jnb     short loc_14095C15B

loc_14095C150:                          ; CODE XREF: sub_14095C0F0+59↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14095C15B:                          ; CODE XREF: sub_14095C0F0+5E↑j
                mov     r14, [rdx]
                mov     [rsp+48h+var_18], r14
                mov     edx, 8
                lea     r8d, [rdx-4]
                mov     rcx, rdi
                call    ProbeForWrite
                test    rbx, rbx
                jz      short loc_14095C18B
                mov     edx, 8
                lea     r8d, [rdx-4]
                mov     rcx, rbx
                call    ProbeForWrite
                nop
;   } // starts at 14095C12E

loc_14095C18B:                          ; CODE XREF: sub_14095C0F0+87↑j
                                        ; DATA XREF: .rdata:00000001400C5C08↑o
                lea     r8, [rsp+48h+var_20]
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, r14
                test    sil, sil
                mov     rax, cs:off_140C00928
                jnz     short loc_14095C1AB
                mov     rax, cs:off_140C00920

loc_14095C1AB:                          ; CODE XREF: sub_14095C0F0+B2↑j
                call    sub_1404079D0
                mov     ecx, eax
                test    eax, eax
                js      short loc_14095C1F6

loc_14095C1B6:                          ; DATA XREF: .rdata:00000001400C5C18↑o
;   __try { // __except at loc_14095C1CD
                mov     rax, [rsp+48h+var_28]
                mov     [rdi], rax
                test    rbx, rbx
                jz      short loc_14095C1CB
                mov     rax, [rsp+48h+var_20]
                mov     [rbx], rax

loc_14095C1CB:                          ; CODE XREF: sub_14095C0F0+D1↑j
                jmp     short loc_14095C1F6
;   } // starts at 14095C1B6
; ---------------------------------------------------------------------------

loc_14095C1CD:                          ; DATA XREF: .rdata:00000001400C5C18↑o
;   __except(1) // owned by 14095C1B6
                mov     ecx, eax
                jmp     short loc_14095C1F6
; ---------------------------------------------------------------------------

loc_14095C1D1:                          ; DATA XREF: .rdata:00000001400C5C08↑o
;   __except(1) // owned by 14095C12E
                jmp     short loc_14095C1F8
; ---------------------------------------------------------------------------

loc_14095C1D3:                          ; CODE XREF: sub_14095C0F0+38↑j
                mov     rcx, [rdx]
                mov     r8, rbx
                mov     rdx, rdi
                test    sil, sil
                mov     rax, cs:off_140C00928
                jnz     short loc_14095C1EF
                mov     rax, cs:off_140C00920

loc_14095C1EF:                          ; CODE XREF: sub_14095C0F0+F6↑j
                call    sub_1404079D0
                mov     ecx, eax

loc_14095C1F6:                          ; CODE XREF: sub_14095C0F0+C4↑j
                                        ; sub_14095C0F0:loc_14095C1CB↑j ...
                mov     eax, ecx

loc_14095C1F8:                          ; CODE XREF: sub_14095C0F0:loc_14095C1D1↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095C0F0
sub_14095C0F0   endp

algn_14095C20F:                         ; DATA XREF: .pdata:0000000140124B60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095C220   proc near               ; DATA XREF: .pdata:0000000140124B6C↑o
                                        ; PAGE:000000014098B668↓o

var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = dword ptr -70h
var_68          = word ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_38], rax
                mov     rax, gs:20h
                mov     rbx, rcx
                and     [rsp+0A8h+var_40], 0
                mov     rbp, r9
                mov     r14, [rsp+0A8h+arg_28]
                mov     rsi, r8
                mov     rdi, rdx
                movzx   ecx, byte ptr [rax+0D0h]
                mov     rax, [rsp+0A8h+arg_40]
                mov     word ptr [rsp+0A8h+var_40], cx
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14095C27F
                call    KeQueryGroupAffinity

loc_14095C27F:                          ; CODE XREF: sub_14095C220+58↑j
                mov     [rsp+0A8h+var_48], rax
                mov     ecx, 1
                mov     [rsp+0A8h+var_58], cl
                lea     rax, [rsp+0A8h+var_48]
                mov     [rsp+0A8h+var_60], rax
                mov     r9, rbp
                mov     eax, [rsp+0A8h+arg_38]
                mov     r8, rsi
                mov     [rsp+0A8h+var_68], cx
                mov     rdx, rdi
                mov     [rsp+0A8h+var_70], eax
                mov     rcx, rbx
                mov     eax, [rsp+0A8h+arg_30]
                mov     [rsp+0A8h+var_78], eax
                mov     eax, [rsp+0A8h+arg_20]
                mov     [rsp+0A8h+var_80], r14
                mov     [rsp+0A8h+var_88], eax
                call    sub_14095BB6C
                mov     rcx, [rsp+0A8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 80h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095C220
sub_14095C220   endp

algn_14095C2EF:                         ; DATA XREF: .pdata:0000000140124B6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095C300   proc near               ; DATA XREF: .pdata:0000000140124B78↑o
                                        ; PAGE:000000014098B518↓o

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = word ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = word ptr  48h
arg_48          = qword ptr  50h

                sub     rsp, 68h
                mov     rax, [rsp+68h+arg_48]
                mov     [rsp+68h+var_18], 0
                mov     [rsp+68h+var_20], rax
                movzx   eax, [rsp+68h+arg_40]
                mov     [rsp+68h+var_28], ax
                mov     eax, [rsp+68h+arg_38]
                mov     [rsp+68h+var_30], eax
                mov     eax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_38], eax
                mov     rax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_40], rax
                mov     eax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_48], eax
                call    sub_14095BB6C
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095C300   endp

byte_14095C35C  db 14h dup(0CCh)        ; DATA XREF: .pdata:0000000140124B78↑o

; =============== S U B R O U T I N E =======================================


sub_14095C370   proc near               ; DATA XREF: .pdata:0000000140124B84↑o
                                        ; PAGE:000000014098AE58↓o

arg_8           = qword ptr  10h

; __unwind { // __C_specific_handler
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                and     [rsp+28h+arg_8], 0
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      short loc_14095C3C3

loc_14095C391:                          ; DATA XREF: .rdata:00000001400C5BC8↑o
;   __try { // __except at loc_14095C3C1
                mov     edx, 8
                lea     r8d, [rdx-4]
                call    ProbeForWrite
                nop
;   } // starts at 14095C391

loc_14095C3A0:                          ; DATA XREF: .rdata:00000001400C5BC8↑o
                mov     rax, cs:off_140C00930
                lea     rcx, [rsp+28h+arg_8]
                call    sub_1404079D0
                test    eax, eax
                js      short loc_14095C3CF

loc_14095C3B5:                          ; DATA XREF: .rdata:00000001400C5BD8↑o
;   __try { // __except at loc_14095C3BF
                mov     rcx, [rsp+28h+arg_8]
                mov     [rbx], rcx
                jmp     short loc_14095C3CF
;   } // starts at 14095C3B5
; ---------------------------------------------------------------------------

loc_14095C3BF:                          ; DATA XREF: .rdata:00000001400C5BD8↑o
;   __except(1) // owned by 14095C3B5
                jmp     short loc_14095C3CF
; ---------------------------------------------------------------------------

loc_14095C3C1:                          ; DATA XREF: .rdata:00000001400C5BC8↑o
;   __except(1) // owned by 14095C391
                jmp     short loc_14095C3CF
; ---------------------------------------------------------------------------

loc_14095C3C3:                          ; CODE XREF: sub_14095C370+1F↑j
                mov     rax, cs:off_140C00930
                call    sub_1404079D0

loc_14095C3CF:                          ; CODE XREF: sub_14095C370+43↑j
                                        ; sub_14095C370+4D↑j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095C370
sub_14095C370   endp

algn_14095C3D6:                         ; DATA XREF: .pdata:0000000140124B84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095C3E0   proc near               ; DATA XREF: .pdata:0000000140124B90↑o
                                        ; PAGE:000000014098A8A8↓o

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, gs:188h
                mov     r14b, [rax+232h]
                mov     r8, cs:qword_140CFB2D0
                xor     r15d, r15d
                mov     [r11+10h], r15
                mov     [r11-40h], r15
                lea     rax, [r11+10h]
                mov     [r11-48h], rax
                mov     r9b, r14b
                lea     edx, [r15+1]
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_14095C626
                mov     [rsp+68h+var_48], r15
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, unk_140C16080
                call    KeWaitForSingleObject
                mov     rbx, [rsp+68h+arg_8]
                cmp     [rbx+30h], r15
                jz      short loc_14095C45D
                mov     edi, 0C00000B8h
                jmp     short loc_14095C4B1
; ---------------------------------------------------------------------------

loc_14095C45D:                          ; CODE XREF: sub_14095C3E0+74↑j
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                shl     eax, 0Dh
                cmp     cs:dword_140CFA010, eax
                jnz     short loc_14095C479
                mov     edi, 0C00000D3h
                jmp     short loc_14095C4B1
; ---------------------------------------------------------------------------

loc_14095C479:                          ; CODE XREF: sub_14095C3E0+90↑j
                mov     edx, [rbx+20h]
                mov     rcx, [rbx+18h]
                call    MmSizeOfMdl
                lea     rdx, [rax+0F8h]
                mov     ecx, 200h
                mov     r8d, 666F7250h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     [rsp+68h+arg_10], rax
                test    rax, rax
                jnz     short loc_14095C4CE
                mov     edi, 0C000009Ah

loc_14095C4B1:                          ; CODE XREF: sub_14095C3E0+7B↑j
                                        ; sub_14095C3E0+97↑j
                xor     edx, edx
                lea     rcx, unk_140C16080
                call    KeReleaseMutex
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi
                jmp     loc_14095C626
; ---------------------------------------------------------------------------

loc_14095C4CE:                          ; CODE XREF: sub_14095C3E0+CA↑j
                lea     rsi, [rax+0F8h]
                mov     [rbx+38h], rsi
                mov     [rbx+28h], rdi
                mov     r10d, [rbx+20h]
                mov     r8, [rbx+18h]
                mov     [rsi], r15
                mov     r9d, r8d
                mov     eax, r9d
                mov     edx, 0FFFh
                and     rax, rdx
                lea     rcx, [r10+0FFFh]
                add     rcx, rax
                shr     rcx, 0Ch
                add     cx, 6
                shl     cx, 3
                mov     [rsi+8], cx
                mov     [rsi+0Ah], r15w
                and     r8, 0FFFFFFFFFFFFF000h
                mov     [rsi+20h], r8
                and     r9d, edx
                mov     [rsi+2Ch], r9d
                mov     [rsi+28h], r10d

loc_14095C52B:                          ; DATA XREF: .rdata:00000001400C5BA4↑o
;   __try { // __except at loc_14095C5FB
                mov     r8d, 1
                mov     dl, r14b
                mov     rcx, rsi
                call    MmProbeAndLockPages
                nop
;   } // starts at 14095C52B

loc_14095C53D:                          ; DATA XREF: .rdata:00000001400C5BA4↑o
                mov     [rsp+68h+var_40], 40000010h
                mov     dword ptr [rsp+68h+var_48], r15d
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                mov     rcx, [rbx+38h]
                call    MmMapLockedPagesSpecifyCache
                mov     r14, rax
                test    rax, rax
                jnz     short loc_14095C596
                xor     edx, edx
                lea     rcx, unk_140C16080
                call    KeReleaseMutex
                mov     rcx, rsi
                call    MmUnlockPages
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, 0C000009Ah
                jmp     loc_14095C626
; ---------------------------------------------------------------------------

loc_14095C596:                          ; CODE XREF: sub_14095C3E0+182↑j
                lea     rax, [rbx+48h]
                mov     [rsp+68h+var_28], rax
                mov     eax, [rbx+44h]
                mov     [rsp+68h+var_30], eax
                mov     eax, [rbx+40h]
                mov     [rsp+68h+var_38], eax
                mov     eax, [rbx+24h]
                mov     [rsp+68h+var_40], eax
                mov     rax, [rbx+10h]
                mov     [rsp+68h+var_48], rax
                mov     r9, [rbx+8]
                mov     r8, r14
                mov     rdx, [rbx]
                mov     rcx, rdi
                call    sub_1408BD78C
                mov     rcx, rdi
                call    sub_14051BDBC
                mov     [rbx+30h], r14
                inc     cs:dword_140CFA010
                xor     edx, edx
                lea     rcx, unk_140C16080
                call    KeReleaseMutex
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                xor     eax, eax
                jmp     short loc_14095C626
; ---------------------------------------------------------------------------

loc_14095C5FB:                          ; DATA XREF: .rdata:00000001400C5BA4↑o
;   __except(1) // owned by 14095C52B
                mov     ebx, eax
                xor     edx, edx
                lea     rcx, unk_140C16080
                call    KeReleaseMutex
                xor     edx, edx
                mov     rcx, [rsp+68h+arg_10]
                call    ExFreePoolWithTag
                mov     rcx, [rsp+68h+arg_8]
                call    PsDereferenceSiloContext
                mov     eax, ebx

loc_14095C626:                          ; CODE XREF: sub_14095C3E0+4C↑j
                                        ; sub_14095C3E0+E9↑j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095C3E0
sub_14095C3E0   endp

byte_14095C63D  db 13h dup(0CCh)        ; DATA XREF: .pdata:0000000140124B90↑o

; =============== S U B R O U T I N E =======================================


sub_14095C650   proc near               ; DATA XREF: .pdata:0000000140124B9C↑o
                                        ; PAGE:000000014098BE48↓o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     rax, gs:188h
                xor     ebp, ebp
                mov     r8, cs:qword_140CFB2D0
                mov     [r11-20h], rbp
                mov     [r11+10h], rbp
                mov     r9b, [rax+232h]
                lea     edx, [rbp+1]
                lea     rax, [r11+10h]
                mov     [r11-28h], rax
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_14095C729
                xor     r9d, r9d
                mov     [rsp+48h+var_28], rbp
                xor     r8d, r8d
                lea     rcx, unk_140C16080
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     r14, [rsp+48h+arg_8]
                cmp     [r14+30h], rbp
                jnz     short loc_14095C6D5
                xor     edx, edx
                lea     rcx, unk_140C16080
                call    KeReleaseMutex
                mov     ebp, 0C00000B7h
                jmp     short loc_14095C71F
; ---------------------------------------------------------------------------

loc_14095C6D5:                          ; CODE XREF: sub_14095C650+6E↑j
                mov     rcx, [r14+28h]
                call    sub_14051BED0
                mov     rbx, [r14+30h]
                lea     rcx, unk_140C16080
                mov     rdi, [r14+38h]
                xor     edx, edx
                mov     rsi, [r14+28h]
                dec     cs:dword_140CFA010
                mov     [r14+30h], rbp
                call    KeReleaseMutex
                mov     rdx, rdi
                mov     rcx, rbx
                call    MmUnmapLockedPages
                mov     rcx, rdi
                call    MmUnlockPages
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_14095C71F:                          ; CODE XREF: sub_14095C650+83↑j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, ebp

loc_14095C729:                          ; CODE XREF: sub_14095C650+46↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095C650   endp

byte_14095C73D  db 13h dup(0CCh)        ; DATA XREF: .pdata:0000000140124B9C↑o

; =============== S U B R O U T I N E =======================================


sub_14095C750   proc near               ; DATA XREF: .pdata:0000000140124BA8↑o
                                        ; PAGE:000000014098B788↓o

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                push    rbx
                sub     rsp, 60h
                mov     r10, r8
                mov     rbx, rcx
                and     qword ptr [rax+20h], 0
                mov     rax, gs:188h
                mov     r8b, [rax+232h]

loc_14095C773:                          ; DATA XREF: .rdata:00000001400C5C3C↑o
;   __try { // __except at loc_14095C7D6
                test    r8b, r8b
                jz      short loc_14095C796
                test    bl, 7
                jz      short loc_14095C783
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14095C783:                          ; CODE XREF: sub_14095C750+2B↑j
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                cmovb   rax, rbx
                mov     al, [rax]

loc_14095C796:                          ; CODE XREF: sub_14095C750+26↑j
                and     qword ptr [rcx], 0
;   } // starts at 14095C773

loc_14095C79A:                          ; DATA XREF: .rdata:00000001400C5C3C↑o
                lea     rax, [rsp+68h+arg_18]
                mov     [rsp+68h+var_38], rax
                and     [rsp+68h+var_40], 0
                mov     [rsp+68h+var_48], edx
                xor     r9d, r9d
                mov     rdx, cs:qword_140CFB248
                mov     rcx, r10
                call    ObOpenObjectByName
                test    eax, eax
                js      short loc_14095C7D4

loc_14095C7C7:                          ; DATA XREF: .rdata:00000001400C5C4C↑o
;   __try { // __except at loc_14095C7D4
                mov     rcx, [rsp+68h+arg_18]
                mov     [rbx], rcx
                jmp     short $+2
;   } // starts at 14095C7C7
; ---------------------------------------------------------------------------

loc_14095C7D4:                          ; CODE XREF: sub_14095C750+75↑j
                                        ; sub_14095C750+82↑j
                                        ; DATA XREF: ...
;   __except(loc_14095C811) // owned by 14095C7C7
                jmp     short $+2
; ---------------------------------------------------------------------------

loc_14095C7D6:                          ; CODE XREF: sub_14095C750:loc_14095C7D4↑j
                                        ; DATA XREF: .rdata:00000001400C5C3C↑o
;   __except(loc_14095C7DD) // owned by 14095C773
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14095C750
; ---------------------------------------------------------------------------

loc_14095C7DD:                          ; DATA XREF: .rdata:00000001400C5C3C↑o
                                        ; .pdata:0000000140124BA8↑o ...
;   __except filter // owned by 14095C773
                push    rbp
                sub     rsp, 40h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+50h], rax
                mov     rax, [rbp+50h]
                mov     cl, [rax+232h]
                mov     [rbp+41h], cl
                mov     cl, [rbp+41h]
                xor     eax, eax
                test    cl, cl
                setnz   al
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14095C811:                          ; DATA XREF: .rdata:00000001400C5C4C↑o
                                        ; .pdata:0000000140124BB4↑o ...
;   __except filter // owned by 14095C7C7
                push    rbp
                sub     rsp, 40h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+48h], rax
                mov     rax, [rbp+48h]
                mov     cl, [rax+232h]
                mov     [rbp+40h], cl
                mov     cl, [rbp+40h]
                xor     eax, eax
                test    cl, cl
                setnz   al
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095C750   endp

algn_14095C845:                         ; DATA XREF: .pdata:0000000140124BC0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095C850   proc near               ; DATA XREF: .pdata:0000000140124BCC↑o
                                        ; PAGE:000000014098BC28↓o

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8b
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rbx, rdx
                mov     r10, rcx
                xor     esi, esi
                mov     r12d, esi
                mov     [rax-70h], rsi
                mov     [rsp+0A8h+var_60], rsi
                lea     r15d, [rsi+1]
                test    r15b, dl
                jz      short loc_14095C8A5
                mov     eax, 0C00000EFh

loc_14095C894:                          ; CODE XREF: sub_14095C850:loc_14095C907↓j
                                        ; sub_14095C850+106↓j ...
                add     rsp, 70h
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

loc_14095C8A5:                          ; CODE XREF: sub_14095C850+3D↑j
                mov     rdi, gs:188h
                mov     al, [rdi+232h]
                mov     [rsp+0A8h+var_78], al
                mov     rcx, [rsp+0A8h+arg_18]
                test    rcx, rcx
                jz      short loc_14095C909

loc_14095C8C5:                          ; DATA XREF: .rdata:00000001400C5CD0↑o
;   __try { // __except at loc_14095C907
                test    al, al
                jz      short loc_14095C8EC
                lea     rax, [rcx+8]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_14095C8E1
                cmp     rax, rcx
                jnb     short loc_14095C8EC

loc_14095C8E1:                          ; CODE XREF: sub_14095C850+8A↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14095C8EC:                          ; CODE XREF: sub_14095C850+77↑j
                                        ; sub_14095C850+8F↑j
                mov     rax, [rcx]
                mov     [rsp+0A8h+var_70], rax
                lea     rax, [rsp+0A8h+var_70]
                mov     [rsp+0A8h+arg_18], rax
                mov     al, [rsp+0A8h+var_78]
                jmp     short loc_14095C909
;   } // starts at 14095C8C5
; ---------------------------------------------------------------------------

loc_14095C907:                          ; DATA XREF: .rdata:00000001400C5CD0↑o
;   __except(loc_14095CBCD) // owned by 14095C8C5
                jmp     short loc_14095C894
; ---------------------------------------------------------------------------

loc_14095C909:                          ; CODE XREF: sub_14095C850+73↑j
                                        ; sub_14095C850+B5↑j
                test    r10, r10
                jnz     short loc_14095C91C
                mov     rcx, cs:qword_140C16060
                mov     [rsp+0A8h+var_58], rcx
                jmp     short loc_14095C95C
; ---------------------------------------------------------------------------

loc_14095C91C:                          ; CODE XREF: sub_14095C850+BC↑j
                mov     r8, cs:qword_140CFB248
                mov     [rsp+0A8h+var_68], rsi
                mov     [rsp+0A8h+var_80], rsi
                lea     rcx, [rsp+0A8h+var_68]
                mov     [rsp+0A8h+var_88], rcx
                mov     r9b, al
                mov     edx, 2
                mov     rcx, r10
                call    ObReferenceObjectByHandle
                mov     r12d, eax
                mov     rcx, [rsp+0A8h+var_68]
                mov     [rsp+0A8h+var_58], rcx
                test    eax, eax
                js      loc_14095C894

loc_14095C95C:                          ; CODE XREF: sub_14095C850+CA↑j
                or      dword ptr [rdi+514h], 20h
                mov     rax, [rdi+0B8h]
                mov     [rsp+0A8h+var_48], rax
                mov     rax, rbx
                shr     rax, 5
                and     eax, 3Fh
                lea     rax, [rax+rax*2]
                lea     rsi, [rcx+rax*8]
                lea     r14, [rsi+8]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rdi+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140244C10
                mov     r13, rax
                lock bts qword ptr [rsi], 0
                jnb     short loc_14095C9B6
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1402F5F10

loc_14095C9B6:                          ; CODE XREF: sub_14095C850+156↑j
                test    r13, r13
                jz      short loc_14095C9BF
                or      [r13+1Ah], r15b

loc_14095C9BF:                          ; CODE XREF: sub_14095C850+169↑j
                mov     rax, [r14]
                mov     rcx, [rsp+0A8h+arg_8]
                cmp     rax, r14
                jz      short loc_14095C9F9
                mov     rdx, [rsp+0A8h+var_48]

loc_14095C9D4:                          ; CODE XREF: sub_14095C850+1A7↓j
                lea     r13, [rax-438h]
                cmp     [r13+458h], rcx
                jnz     short loc_14095C9F1
                cmp     [r13+220h], rdx
                jz      loc_14095CA79

loc_14095C9F1:                          ; CODE XREF: sub_14095C850+192↑j
                mov     rax, [rax]
                cmp     rax, r14
                jnz     short loc_14095C9D4

loc_14095C9F9:                          ; CODE XREF: sub_14095C850+17D↑j
                mov     rax, [rdi+458h]
                mov     [rsp+0A8h+var_60], rax
                or      rcx, r15
                mov     [rdi+458h], rcx
                lea     rax, [rdi+438h]
                mov     rcx, [r14]
                cmp     [rcx+8], r14
                jnz     loc_14095CBC6
                mov     [rax], rcx
                mov     [rax+8], r14
                mov     [rcx+8], rax
                mov     [r14], rax
                xor     r13d, r13d

loc_14095CA34:                          ; CODE XREF: sub_14095C850+251↓j
                mov     rax, rbx
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14095CA4A
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14095CA4A:                          ; CODE XREF: sub_14095C850+1F0↑j
                mov     rcx, rsi
                call    sub_140243660
                test    r13, r13
                jz      short loc_14095CAA3
                lea     rcx, [r13+488h]
                xor     r9d, r9d
                mov     r8d, r15d
                mov     edx, r15d
                call    KeReleaseSemaphore
                mov     rcx, rdi
                call    sub_14021E1F0
                jmp     loc_14095CBA2
; ---------------------------------------------------------------------------

loc_14095CA79:                          ; CODE XREF: sub_14095C850+19B↑j
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14095CBC6
                cmp     [rcx], rax
                jnz     loc_14095CBC6
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                jmp     short loc_14095CA34
; ---------------------------------------------------------------------------

loc_14095CAA3:                          ; CODE XREF: sub_14095C850+205↑j
                mov     rcx, rdi
                call    sub_14021E1F0
                lea     r13, [rdi+488h]
                mov     rax, [rsp+0A8h+arg_18]
                mov     [rsp+0A8h+var_88], rax
                mov     r9b, [rsp+0A8h+arg_10]
                mov     r8b, [rsp+0A8h+var_78]
                mov     edx, 15h
                mov     rcx, r13
                call    KeWaitForSingleObject
                mov     r12d, eax
                test    eax, eax
                jz      loc_14095CB96
                add     [rdi+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140244C10
                mov     r14, rax
                lock bts qword ptr [rsi], 0
                jnb     short loc_14095CB11
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1402F5F10

loc_14095CB11:                          ; CODE XREF: sub_14095C850+2B1↑j
                test    r14, r14
                jz      short loc_14095CB1A
                or      [r14+1Ah], r15b

loc_14095CB1A:                          ; CODE XREF: sub_14095C850+2C4↑j
                lea     rax, [rdi+438h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_14095CB51
                mov     rdx, [rax+8]
                cmp     [rcx+8], rax
                jnz     loc_14095CBC6
                cmp     [rdx], rax
                jnz     loc_14095CBC6
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                mov     [rax+8], rax
                mov     [rax], rax
                xor     r15b, r15b

loc_14095CB51:                          ; CODE XREF: sub_14095C850+2D7↑j
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14095CB66
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14095CB66:                          ; CODE XREF: sub_14095C850+30C↑j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, rdi
                call    sub_14021E1F0
                test    r15b, r15b
                jz      short loc_14095CB96
                and     [rsp+0A8h+var_88], 0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+15h]
                mov     rcx, r13
                call    KeWaitForSingleObject
                mov     r12d, eax

loc_14095CB96:                          ; CODE XREF: sub_14095C850+28E↑j
                                        ; sub_14095C850+329↑j
                mov     rax, [rsp+0A8h+var_60]
                mov     [rdi+458h], rax

loc_14095CBA2:                          ; CODE XREF: sub_14095C850+224↑j
                and     dword ptr [rdi+514h], 0FFFFFFDFh
                cmp     [rsp+0A8h+arg_0], 0
                jz      short loc_14095CBBE
                mov     rcx, [rsp+0A8h+var_58]
                call    PsDereferenceSiloContext

loc_14095CBBE:                          ; CODE XREF: sub_14095C850+362↑j
                mov     eax, r12d
                jmp     loc_14095C894
; ---------------------------------------------------------------------------

loc_14095CBC6:                          ; CODE XREF: sub_14095C850+1CD↑j
                                        ; sub_14095C850+234↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 14095C850
; ---------------------------------------------------------------------------

loc_14095CBCD:                          ; DATA XREF: .rdata:00000001400C5CD0↑o
                                        ; .pdata:0000000140124BCC↑o ...
;   __except filter // owned by 14095C8C5
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+58h], rax
                mov     rax, [rbp+58h]
                mov     cl, [rax+232h]
                mov     [rbp+31h], cl
                mov     al, [rbp+31h]
                xor     ecx, ecx
                test    al, al
                setnz   cl
                mov     eax, ecx
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095C850   endp

algn_14095CC03:                         ; DATA XREF: .pdata:0000000140124BD8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095CC10   proc near               ; DATA XREF: .pdata:0000000140124BE4↑o
                                        ; PAGE:000000014098BA98↓o

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8b
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rbx, rdx
                mov     r10, rcx
                and     [rsp+0A8h+var_74], 0
                and     qword ptr [rax-70h], 0
                and     [rsp+0A8h+var_60], 0
                mov     r14d, 1
                test    r14b, dl
                jz      short loc_14095CC69
                mov     eax, 0C00000EFh

loc_14095CC58:                          ; CODE XREF: sub_14095CC10:loc_14095CCCB↓j
                                        ; sub_14095CC10+10B↓j ...
                add     rsp, 70h
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

loc_14095CC69:                          ; CODE XREF: sub_14095CC10+41↑j
                mov     rdi, gs:188h
                mov     al, [rdi+232h]
                mov     [rsp+0A8h+var_78], al
                mov     rcx, [rsp+0A8h+arg_18]
                test    rcx, rcx
                jz      short loc_14095CCCD

loc_14095CC89:                          ; DATA XREF: .rdata:00000001400C5C94↑o
;   __try { // __except at loc_14095CCCB
                test    al, al
                jz      short loc_14095CCB0
                lea     rax, [rcx+8]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_14095CCA5
                cmp     rax, rcx
                jnb     short loc_14095CCB0

loc_14095CCA5:                          ; CODE XREF: sub_14095CC10+8E↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14095CCB0:                          ; CODE XREF: sub_14095CC10+7B↑j
                                        ; sub_14095CC10+93↑j
                mov     rax, [rcx]
                mov     [rsp+0A8h+var_70], rax
                lea     rax, [rsp+0A8h+var_70]
                mov     [rsp+0A8h+arg_18], rax
                mov     al, [rsp+0A8h+var_78]
                jmp     short loc_14095CCCD
;   } // starts at 14095CC89
; ---------------------------------------------------------------------------

loc_14095CCCB:                          ; DATA XREF: .rdata:00000001400C5C94↑o
;   __except(loc_14095CFA0) // owned by 14095CC89
                jmp     short loc_14095CC58
; ---------------------------------------------------------------------------

loc_14095CCCD:                          ; CODE XREF: sub_14095CC10+77↑j
                                        ; sub_14095CC10+B9↑j
                test    r10, r10
                jnz     short loc_14095CCE0
                mov     rcx, cs:qword_140C16060
                mov     [rsp+0A8h+var_58], rcx
                jmp     short loc_14095CD21
; ---------------------------------------------------------------------------

loc_14095CCE0:                          ; CODE XREF: sub_14095CC10+C0↑j
                mov     r8, cs:qword_140CFB248
                and     [rsp+0A8h+var_68], 0
                and     [rsp+0A8h+var_80], 0
                lea     rcx, [rsp+0A8h+var_68]
                mov     [rsp+0A8h+var_88], rcx
                mov     r9b, al
                mov     edx, r14d
                mov     rcx, r10
                call    ObReferenceObjectByHandle
                mov     [rsp+0A8h+var_74], eax
                mov     rcx, [rsp+0A8h+var_68]
                mov     [rsp+0A8h+var_58], rcx
                test    eax, eax
                js      loc_14095CC58

loc_14095CD21:                          ; CODE XREF: sub_14095CC10+CE↑j
                or      dword ptr [rdi+514h], 20h
                mov     rax, [rdi+0B8h]
                mov     [rsp+0A8h+var_48], rax
                mov     rax, rbx
                shr     rax, 5
                and     eax, 3Fh
                lea     rax, [rax+rax*2]
                lea     rsi, [rcx+rax*8]
                lea     r15, [rsi+8]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rdi+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140244C10
                mov     r12, rax
                lock bts qword ptr [rsi], 0
                jnb     short loc_14095CD7B
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1402F5F10

loc_14095CD7B:                          ; CODE XREF: sub_14095CC10+15B↑j
                test    r12, r12
                jz      short loc_14095CD85
                or      [r12+1Ah], r14b

loc_14095CD85:                          ; CODE XREF: sub_14095CC10+16E↑j
                mov     rcx, [r15]
                mov     r8, [rsp+0A8h+arg_8]
                cmp     rcx, r15
                jz      short loc_14095CDCD
                mov     r9, [rsp+0A8h+var_48]

loc_14095CD9A:                          ; CODE XREF: sub_14095CC10+1BB↓j
                lea     r13, [rcx-438h]
                mov     rdx, [r13+458h]
                test    r14b, dl
                jz      short loc_14095CDCD
                mov     rax, r8
                or      rax, r14
                cmp     rdx, rax
                jnz     short loc_14095CDC5
                cmp     [r13+220h], r9
                jz      loc_14095CF32

loc_14095CDC5:                          ; CODE XREF: sub_14095CC10+1A6↑j
                mov     rcx, [rcx]
                cmp     rcx, r15
                jnz     short loc_14095CD9A

loc_14095CDCD:                          ; CODE XREF: sub_14095CC10+183↑j
                                        ; sub_14095CC10+19B↑j
                mov     rax, [rdi+458h]
                mov     [rsp+0A8h+var_60], rax
                mov     [rdi+458h], r8
                lea     rax, [rdi+438h]
                mov     rcx, [r15+8]
                cmp     [rcx], r15
                jnz     loc_14095CF99
                mov     [rax], r15
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [r15+8], rax
                xor     r13d, r13d

loc_14095CE05:                          ; CODE XREF: sub_14095CC10+342↓j
                mov     rax, rbx
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14095CE1B
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14095CE1B:                          ; CODE XREF: sub_14095CC10+201↑j
                mov     rcx, rsi
                call    sub_140243660
                test    r13, r13
                jnz     loc_14095CF57
                mov     rcx, rdi
                call    sub_14021E1F0
                lea     r12, [rdi+488h]
                mov     rax, [rsp+0A8h+arg_18]
                mov     [rsp+0A8h+var_88], rax
                mov     r9b, [rsp+0A8h+arg_10]
                mov     r8b, [rsp+0A8h+var_78]
                mov     r13d, 15h
                mov     edx, r13d
                mov     rcx, r12
                call    KeWaitForSingleObject
                mov     [rsp+0A8h+var_74], eax
                test    eax, eax
                jz      loc_14095CF24
                add     [rdi+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140244C10
                mov     r15, rax
                lock bts qword ptr [rsi], 0
                jnb     short loc_14095CE9F
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1402F5F10

loc_14095CE9F:                          ; CODE XREF: sub_14095CC10+27F↑j
                test    r15, r15
                jz      short loc_14095CEA8
                or      [r15+1Ah], r14b

loc_14095CEA8:                          ; CODE XREF: sub_14095CC10+292↑j
                lea     rax, [rdi+438h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_14095CEDF
                mov     rdx, [rax+8]
                cmp     [rcx+8], rax
                jnz     loc_14095CF99
                cmp     [rdx], rax
                jnz     loc_14095CF99
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                mov     [rax+8], rax
                mov     [rax], rax
                xor     r14b, r14b

loc_14095CEDF:                          ; CODE XREF: sub_14095CC10+2A5↑j
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14095CEF4
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14095CEF4:                          ; CODE XREF: sub_14095CC10+2DA↑j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, rdi
                call    sub_14021E1F0
                test    r14b, r14b
                jz      short loc_14095CF24
                and     [rsp+0A8h+var_88], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r13d
                mov     rcx, r12
                call    KeWaitForSingleObject
                mov     [rsp+0A8h+var_74], eax

loc_14095CF24:                          ; CODE XREF: sub_14095CC10+25C↑j
                                        ; sub_14095CC10+2F7↑j
                mov     rax, [rsp+0A8h+var_60]
                mov     [rdi+458h], rax
                jmp     short loc_14095CF74
; ---------------------------------------------------------------------------

loc_14095CF32:                          ; CODE XREF: sub_14095CC10+1AF↑j
                mov     rdx, [rcx]
                mov     rax, [rcx+8]
                cmp     [rdx+8], rcx
                jnz     short loc_14095CF99
                cmp     [rax], rcx
                jnz     short loc_14095CF99
                mov     [rax], rdx
                mov     [rdx+8], rax
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                jmp     loc_14095CE05
; ---------------------------------------------------------------------------

loc_14095CF57:                          ; CODE XREF: sub_14095CC10+216↑j
                lea     rcx, [r13+488h]
                xor     r9d, r9d
                mov     r8d, r14d
                mov     edx, r14d
                call    KeReleaseSemaphore
                mov     rcx, rdi
                call    sub_14021E1F0

loc_14095CF74:                          ; CODE XREF: sub_14095CC10+320↑j
                and     dword ptr [rdi+514h], 0FFFFFFDFh
                cmp     [rsp+0A8h+arg_0], 0
                jz      short loc_14095CF90
                mov     rcx, [rsp+0A8h+var_58]
                call    PsDereferenceSiloContext

loc_14095CF90:                          ; CODE XREF: sub_14095CC10+374↑j
                mov     eax, [rsp+0A8h+var_74]
                jmp     loc_14095CC58
; ---------------------------------------------------------------------------

loc_14095CF99:                          ; CODE XREF: sub_14095CC10+1DE↑j
                                        ; sub_14095CC10+2AF↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 14095CC10
; ---------------------------------------------------------------------------

loc_14095CFA0:                          ; DATA XREF: .rdata:00000001400C5C94↑o
                                        ; .pdata:0000000140124BE4↑o ...
;   __except filter // owned by 14095CC89
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+58h], rax
                mov     rax, [rbp+58h]
                mov     cl, [rax+232h]
                mov     [rbp+31h], cl
                mov     al, [rbp+31h]
                xor     ecx, ecx
                test    al, al
                setnz   cl
                mov     eax, ecx
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095CC10   endp

byte_14095CFD6  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140124BF0↑o

; =============== S U B R O U T I N E =======================================


sub_14095CFDC   proc near               ; CODE XREF: sub_1407CE500+941C9↑p
                                        ; DATA XREF: .pdata:0000000140124BFC↑o

var_A4          = dword ptr -0A4h
var_A0          = xmmword ptr -0A0h
var_90          = dword ptr -90h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_58          = qword ptr -58h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_38], rax
                xorps   xmm0, xmm0
                movups  [rsp+0C8h+var_A0], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+0C8h+var_78], xmm1
                movups  [rsp+0C8h+var_88], xmm0
                mov     rax, gs:188h
                mov     dl, [rax+232h]

loc_14095D02C:                          ; DATA XREF: .rdata:00000001400C5D14↑o
;   __try { // __except at loc_14095D4B4
                movups  xmm0, xmmword ptr [rcx]
                movdqu  [rsp+0C8h+var_88], xmm0
                cmp     dl, 1
                jnz     short loc_14095D06D
                test    byte ptr [rsp+0C8h+var_88+8], dl
                jz      short loc_14095D045
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14095D045:                          ; CODE XREF: sub_14095CFDC+62↑j
                mov     rax, qword ptr [rsp+0C8h+var_88+8]
                lea     rcx, [rax+2]
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                ja      short loc_14095D062
                cmp     rcx, rax
                jnb     short loc_14095D06D

loc_14095D062:                          ; CODE XREF: sub_14095CFDC+7F↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14095D06D:                          ; CODE XREF: sub_14095CFDC+5C↑j
                                        ; sub_14095CFDC+84↑j
                movzx   ebx, word ptr [rsp+0C8h+var_88]
                xor     r14d, r14d
                test    bx, bx
                jz      loc_14095D4AD
                test    bl, 1
                jnz     loc_14095D4AD
                test    byte ptr [rsp+0C8h+var_88+2], 1
                jnz     loc_14095D4AD
                cmp     word ptr [rsp+0C8h+var_88+2], bx
                jb      loc_14095D4AD
;   } // starts at 14095D02C

loc_14095D09D:                          ; DATA XREF: .rdata:00000001400C5D14↑o
                mov     esi, 46644B55h
                mov     r8d, esi
                mov     rdx, rbx
                mov     r15d, 200h
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     qword ptr [rsp+0C8h+var_A0+8], rax
                test    rax, rax
                jnz     short loc_14095D0CA
                mov     eax, 0C000009Ah
                jmp     loc_14095D4B4
; ---------------------------------------------------------------------------

loc_14095D0CA:                          ; CODE XREF: sub_14095CFDC+E2↑j
                mov     word ptr [rsp+0C8h+var_A0], bx
                mov     word ptr [rsp+0C8h+var_A0+2], bx

loc_14095D0D4:                          ; DATA XREF: .rdata:00000001400C5D24↑o
;   __try { // __except at loc_14095D49B
                mov     r8, rbx
                mov     rdx, qword ptr [rsp+0C8h+var_88+8]
                mov     rcx, rax
                call    memmove
                nop
;   } // starts at 14095D0D4

loc_14095D0E5:                          ; DATA XREF: .rdata:00000001400C5D24↑o
                movzx   edx, word ptr [rsp+0C8h+var_A0]
                mov     r8d, esi
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     qword ptr [rsp+0C8h+var_78+8], rax
                test    rax, rax
                jnz     short loc_14095D109
                mov     edi, 0C000009Ah
                jmp     loc_14095D246
; ---------------------------------------------------------------------------

loc_14095D109:                          ; CODE XREF: sub_14095CFDC+121↑j
                movzx   eax, word ptr [rsp+0C8h+var_A0]
                mov     word ptr [rsp+0C8h+var_78], ax
                movzx   eax, word ptr [rsp+0C8h+var_A0+2]
                mov     word ptr [rsp+0C8h+var_78+2], ax
                xor     r8d, r8d
                lea     rdx, [rsp+0C8h+var_A0]
                lea     rcx, [rsp+0C8h+var_78]
                call    RtlDowncaseUnicodeString
                movzx   edx, word ptr [rsp+0C8h+var_78]
                lea     r8, [rsp+0C8h+var_58]
                mov     rcx, qword ptr [rsp+0C8h+var_78+8]
                call    sub_140399770
                xor     edx, edx
                mov     rcx, qword ptr [rsp+0C8h+var_78+8]
                call    ExFreePoolWithTag
                or      rbx, 0FFFFFFFFFFFFFFFFh
                lea     r15, qword_140C192B8
                cmp     cs:qword_140C192B0, 0
                jz      loc_14095D259
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r15
                call    sub_140244C10
                mov     rdi, rax
                lea     ecx, [rbx+12h]
                xor     eax, eax
                lock cmpxchg cs:qword_140C192B8, rcx
                jz      short loc_14095D1A6
                mov     r8, r15
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_1402F6140

loc_14095D1A6:                          ; CODE XREF: sub_14095CFDC+1BA↑j
                test    rdi, rdi
                jz      short loc_14095D1AF
                or      byte ptr [rdi+1Ah], 1

loc_14095D1AF:                          ; CODE XREF: sub_14095CFDC+1CD↑j
                mov     r13d, r14d
                mov     r14, cs:qword_140C192B0
                xor     eax, eax
                test    r14, r14
                jz      short loc_14095D20B
                mov     r12d, eax
                mov     edi, [r14]
                sub     edi, 1
                js      short loc_14095D20B

loc_14095D1CB:                          ; CODE XREF: sub_14095CFDC+225↓j
                lea     esi, [r12+rdi]
                sar     esi, 1
                movsxd  rax, esi
                inc     rax
                lea     rdx, [r14+rax*8]
                mov     r8d, 8
                lea     rcx, [rsp+0C8h+var_58]
                call    memcmp
                test    eax, eax
                jns     short loc_14095D1F8
                test    esi, esi
                jz      short loc_14095D20B
                lea     edi, [rsi-1]
                jmp     short loc_14095D1FE
; ---------------------------------------------------------------------------

loc_14095D1F8:                          ; CODE XREF: sub_14095CFDC+211↑j
                jle     short loc_14095D205
                lea     r12d, [rsi+1]

loc_14095D1FE:                          ; CODE XREF: sub_14095CFDC+21A↑j
                cmp     edi, r12d
                jge     short loc_14095D1CB
                jmp     short loc_14095D20B
; ---------------------------------------------------------------------------

loc_14095D205:                          ; CODE XREF: sub_14095CFDC:loc_14095D1F8↑j
                mov     r13d, 1

loc_14095D20B:                          ; CODE XREF: sub_14095CFDC+1E2↑j
                                        ; sub_14095CFDC+1ED↑j ...
                mov     eax, 11h
                xor     r14d, r14d
                lock cmpxchg cs:qword_140C192B8, r14
                jz      short loc_14095D226
                mov     rcx, r15
                call    ExfReleasePushLockShared

loc_14095D226:                          ; CODE XREF: sub_14095CFDC+240↑j
                mov     rcx, r15
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    r13d, r13d
                jz      short loc_14095D259
                mov     edi, 0FFh

loc_14095D246:                          ; CODE XREF: sub_14095CFDC+128↑j
                                        ; sub_14095CFDC+4BA↓j
                xor     edx, edx
                mov     rcx, qword ptr [rsp+0C8h+var_A0+8]
                call    ExFreePoolWithTag
                mov     eax, edi
                jmp     loc_14095D4B4
; ---------------------------------------------------------------------------

loc_14095D259:                          ; CODE XREF: sub_14095CFDC+186↑j
                                        ; sub_14095CFDC+263↑j
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r15
                call    sub_140244C10
                mov     rdi, rax
                lock bts qword ptr [r15], 0
                jnb     short loc_14095D28F
                mov     r8, r15
                mov     rdx, rax
                mov     rcx, r15
                call    sub_1402F5F10

loc_14095D28F:                          ; CODE XREF: sub_14095CFDC+2A3↑j
                test    rdi, rdi
                jz      short loc_14095D298
                or      byte ptr [rdi+1Ah], 1

loc_14095D298:                          ; CODE XREF: sub_14095CFDC+2B6↑j
                mov     rsi, rbx
                mov     rax, cs:qword_140C192B0
                test    rax, rax
                jnz     short loc_14095D2AE
                mov     edx, 4010h
                jmp     short loc_14095D2CB
; ---------------------------------------------------------------------------

loc_14095D2AE:                          ; CODE XREF: sub_14095CFDC+2C9↑j
                mov     ecx, [rax]
                cmp     ecx, 1FFFFFFFh
                jge     loc_14095D462
                movsxd  rdx, dword ptr [rax+4]
                cmp     ecx, edx
                jnz     short loc_14095D2DE
                inc     rdx
                shl     rdx, 4

loc_14095D2CB:                          ; CODE XREF: sub_14095CFDC+2D0↑j
                mov     r8d, 66644B55h
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, rax

loc_14095D2DE:                          ; CODE XREF: sub_14095CFDC+2E6↑j
                test    rsi, rsi
                jz      loc_14095D462
                cmp     rsi, rbx
                jz      short loc_14095D333
                mov     [rsi], r14d
                mov     dword ptr [rsi+4], 800h
                mov     rdi, cs:qword_140C192B0
                test    rdi, rdi
                jz      short loc_14095D32A
                movsxd  r8, dword ptr [rdi]
                lea     r8, ds:10h[r8*8]
                mov     rdx, rdi
                mov     rcx, rsi
                call    memmove
                mov     eax, [rdi+4]
                add     eax, eax
                mov     [rsi+4], eax
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14095D32A:                          ; CODE XREF: sub_14095CFDC+324↑j
                mov     cs:qword_140C192B0, rsi
                jmp     short loc_14095D33A
; ---------------------------------------------------------------------------

loc_14095D333:                          ; CODE XREF: sub_14095CFDC+30E↑j
                mov     rsi, cs:qword_140C192B0

loc_14095D33A:                          ; CODE XREF: sub_14095CFDC+355↑j
                mov     r12d, r14d
                mov     eax, [rsi]
                mov     [rsp+0C8h+var_A4], eax
                lea     ecx, [rax-1]
                mov     [rsp+0C8h+var_90], ecx
                mov     edi, ecx
                mov     r13d, r14d
                test    ecx, ecx
                js      short loc_14095D3A1

loc_14095D353:                          ; CODE XREF: sub_14095CFDC+3B0↓j
                lea     r14d, [r12+rdi]
                sar     r14d, 1
                movsxd  rax, r14d
                inc     rax
                lea     rdx, [rsi+rax*8]
                mov     r8d, 8
                lea     rcx, [rsp+0C8h+var_58]
                call    memcmp
                test    eax, eax
                jns     short loc_14095D383
                test    r14d, r14d
                jz      short loc_14095D396
                lea     edi, [r14-1]
                jmp     short loc_14095D389
; ---------------------------------------------------------------------------

loc_14095D383:                          ; CODE XREF: sub_14095CFDC+39A↑j
                jle     short loc_14095D390
                lea     r12d, [r14+1]

loc_14095D389:                          ; CODE XREF: sub_14095CFDC+3A5↑j
                cmp     edi, r12d
                jge     short loc_14095D353
                jmp     short loc_14095D396
; ---------------------------------------------------------------------------

loc_14095D390:                          ; CODE XREF: sub_14095CFDC:loc_14095D383↑j
                mov     r13d, 1

loc_14095D396:                          ; CODE XREF: sub_14095CFDC+39F↑j
                                        ; sub_14095CFDC+3B2↑j
                mov     eax, [rsp+0C8h+var_A4]
                mov     ecx, [rsp+0C8h+var_90]
                xor     r14d, r14d

loc_14095D3A1:                          ; CODE XREF: sub_14095CFDC+375↑j
                test    r13d, r13d
                jz      short loc_14095D3B0
                mov     edi, 0FFh
                jmp     loc_14095D467
; ---------------------------------------------------------------------------

loc_14095D3B0:                          ; CODE XREF: sub_14095CFDC+3C8↑j
                cmp     edi, r12d
                jge     short loc_14095D3CC
                mov     r12d, r14d
                mov     edi, ecx
                test    eax, eax
                jnz     short loc_14095D3CC
                mov     rax, [rsp+0C8h+var_58]
                mov     [rsi+8], rax
                inc     dword ptr [rsi]
                mov     rsi, r14

loc_14095D3CC:                          ; CODE XREF: sub_14095CFDC+3D7↑j
                                        ; sub_14095CFDC+3E0↑j
                test    rsi, rsi
                jz      short loc_14095D437
                test    r12d, r12d
                cmovns  r14d, r12d
                inc     edi
                jmp     short loc_14095D3FD
; ---------------------------------------------------------------------------

loc_14095D3DC:                          ; CODE XREF: sub_14095CFDC+424↓j
                movsxd  rax, r14d
                inc     rax
                lea     rdx, [rsi+rax*8]
                mov     r8d, 8
                lea     rcx, [rsp+0C8h+var_58]
                call    memcmp
                test    eax, eax
                js      short loc_14095D402
                inc     r14d

loc_14095D3FD:                          ; CODE XREF: sub_14095CFDC+3FE↑j
                cmp     r14d, edi
                jl      short loc_14095D3DC

loc_14095D402:                          ; CODE XREF: sub_14095CFDC+41C↑j
                movsxd  rax, r14d
                lea     rdi, [rsi+rax*8]
                mov     eax, [rsi]
                sub     eax, r14d
                movsxd  r8, eax
                shl     r8, 3
                lea     eax, [r14+1]
                movsxd  rcx, eax
                inc     rcx
                lea     rcx, [rsi+rcx*8]
                lea     rdx, [rdi+8]
                call    memmove
                inc     dword ptr [rsi]
                mov     rax, [rsp+0C8h+var_58]
                mov     [rdi+8], rax

loc_14095D437:                          ; CODE XREF: sub_14095CFDC+3F3↑j
                lea     rcx, [rsp+0C8h+var_A0]
                call    sub_1409B8724
                mov     edi, eax
                test    eax, eax
                js      short loc_14095D467
                lea     r9, [rsp+0C8h+var_A0]
                lea     r8, aExpkdpullremot ; "ExpKdPullRemoteFileForUser: Pulled %wZ "...
                mov     edx, 2
                lea     ecx, [rdx+64h]
                call    DbgPrintEx
                jmp     short loc_14095D467
; ---------------------------------------------------------------------------

loc_14095D462:                          ; CODE XREF: sub_14095CFDC+2DA↑j
                                        ; sub_14095CFDC+305↑j
                mov     edi, 0C000009Ah

loc_14095D467:                          ; CODE XREF: sub_14095CFDC+3CF↑j
                                        ; sub_14095CFDC+469↑j ...
                lock xadd cs:qword_140C192B8, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14095D480
                mov     rcx, r15
                call    ExfTryToWakePushLock

loc_14095D480:                          ; CODE XREF: sub_14095CFDC+49A↑j
                mov     rcx, r15
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_14095D246
; ---------------------------------------------------------------------------

loc_14095D49B:                          ; DATA XREF: .rdata:00000001400C5D24↑o
;   __except(loc_14095D516) // owned by 14095D0D4
                mov     ebx, eax
                xor     edx, edx
                mov     rcx, qword ptr [rsp+0C8h+var_A0+8]
                call    ExFreePoolWithTag
                mov     eax, ebx
                jmp     short loc_14095D4B4
; ---------------------------------------------------------------------------

loc_14095D4AD:                          ; CODE XREF: sub_14095CFDC+9C↑j
                                        ; sub_14095CFDC+A5↑j ...
;   __try { // __except at loc_14095D4B4
                mov     eax, 0C000000Dh
                jmp     short $+2
;   } // starts at 14095D4AD
; ---------------------------------------------------------------------------

loc_14095D4B4:                          ; CODE XREF: sub_14095CFDC+E9↑j
                                        ; sub_14095CFDC+278↑j ...
;   __except(loc_14095D4E2) // owned by 14095D02C
;   __except(loc_14095D4E2) // owned by 14095D4AD
                mov     rcx, [rsp+0C8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C8h+var_28]
                mov     rbx, [r11+38h]
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
; } // starts at 14095CFDC

loc_14095D4E2:                          ; DATA XREF: .rdata:00000001400C5D14↑o
                                        ; .rdata:00000001400C5D34↑o ...
;   __except filter // owned by 14095D02C
;   __except filter // owned by 14095D4AD
                push    rbp
                sub     rsp, 20h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+68h], rax
                mov     rax, [rbp+68h]
                mov     cl, [rax+232h]
                mov     [rbp+21h], cl
                mov     cl, [rbp+21h]
                xor     eax, eax
                test    cl, cl
                setnz   al
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14095D516:                          ; DATA XREF: .rdata:00000001400C5D24↑o
                                        ; .pdata:0000000140124C08↑o ...
;   __except filter // owned by 14095D0D4
                push    rbp
                sub     rsp, 20h
                mov     rbp, rdx
                mov     rax, gs:188h
                mov     [rbp+60h], rax
                mov     rax, [rbp+60h]
                mov     cl, [rax+232h]
                mov     [rbp+20h], cl
                mov     cl, [rbp+20h]
                xor     eax, eax
                test    cl, cl
                setnz   al
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095CFDC   endp

algn_14095D54A:                         ; DATA XREF: .pdata:0000000140124C14↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095D550   proc near               ; DATA XREF: .pdata:0000000140124C20↑o
                                        ; PAGE:000000014098AC88↓o

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = dword ptr -0F8h
var_F4          = byte ptr -0F4h
var_F0          = qword ptr -0F0h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_40], rax
                mov     r10, r9
                mov     [rsp+138h+var_C8], r9
                mov     r14, r8
                mov     [rsp+138h+var_E0], rdx
                mov     [rsp+138h+var_D0], rcx
                mov     [rsp+138h+var_98], rcx
                mov     [rsp+138h+var_90], rdx
                mov     [rsp+138h+var_88], r8
                mov     [rsp+138h+var_80], r9
                mov     r12, [rsp+138h+arg_20]
                mov     [rsp+138h+var_F0], r12
                xor     esi, esi
                mov     [r11-0B8h], rsi
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-70h], xmm0
                movups  xmmword ptr [r11-60h], xmm0
                movups  xmmword ptr [r11-50h], xmm0
                mov     [r11-0B0h], rsi
                mov     [rsp+138h+var_D8], rsi
                mov     ebx, esi
                mov     r15d, esi
                mov     edi, esi
                mov     [rsp+138h+var_F8], esi
                cmp     r9, 10h
                jnb     short loc_14095D5FB
                mov     eax, 0C0000004h
                jmp     loc_14095D982
; ---------------------------------------------------------------------------

loc_14095D5FB:                          ; CODE XREF: sub_14095D550+9F↑j
                mov     rax, gs:188h
                mov     [rsp+138h+var_78], rax
                mov     r13b, [rax+232h]
                mov     [rsp+138h+var_F4], r13b
                test    r13b, r13b
                jz      loc_14095D6BC
                movups  [rsp+138h+var_A8], xmm0

loc_14095D629:                          ; DATA XREF: .rdata:00000001400C5D84↑o
;   __try { // __except at loc_14095D672
                mov     r8d, 8
                mov     rdx, r9
                mov     rcx, r14
                call    ProbeForWrite
                test    r12, r12
                jz      short loc_14095D659
                mov     rcx, r12
                mov     r8, 7FFFFFFF0000h
                cmp     r12, r8
                cmovnb  rcx, r8
                mov     rax, [rcx]
                mov     [rcx], rax

loc_14095D659:                          ; CODE XREF: sub_14095D550+ED↑j
                movups  xmm0, xmmword ptr [r14]
                movdqu  [rsp+138h+var_A8], xmm0
                mov     rdx, [rsp+138h+var_E0]
                mov     r10, [rsp+138h+var_C8]
                jmp     short loc_14095D6B3
;   } // starts at 14095D629
; ---------------------------------------------------------------------------

loc_14095D672:                          ; DATA XREF: .rdata:00000001400C5D84↑o
;   __except(1) // owned by 14095D629
                mov     edi, eax
                mov     [rsp+138h+var_F8], eax
                xor     esi, esi
                mov     r13b, [rsp+138h+var_F4]
                mov     r15d, esi
                mov     ebx, esi
                mov     rax, [rsp+138h+var_98]
                mov     [rsp+138h+var_D0], rax
                mov     rdx, [rsp+138h+var_90]
                mov     [rsp+138h+var_E0], rdx
                mov     r14, [rsp+138h+var_88]
                mov     r10, [rsp+138h+var_80]
                mov     [rsp+138h+var_C8], r10

loc_14095D6B3:                          ; CODE XREF: sub_14095D550+120↑j
                test    edi, edi
                jns     short loc_14095D6C9
                jmp     loc_14095D980
; ---------------------------------------------------------------------------

loc_14095D6BC:                          ; CODE XREF: sub_14095D550+CB↑j
                movups  xmm0, xmmword ptr [r8]
                movdqu  [rsp+138h+var_A8], xmm0

loc_14095D6C9:                          ; CODE XREF: sub_14095D550+165↑j
                cmp     dword ptr [rsp+138h+var_A8], esi
                jnz     short loc_14095D6DC
                mov     edi, 0C000000Dh
                jmp     loc_14095D93E
; ---------------------------------------------------------------------------

loc_14095D6DC:                          ; CODE XREF: sub_14095D550+180↑j
                test    dword ptr [rsp+138h+var_A8], 0FFFFFFFCh
                jz      short loc_14095D6F3
                mov     edi, 0C00000BBh
                jmp     loc_14095D93E
; ---------------------------------------------------------------------------

loc_14095D6F3:                          ; CODE XREF: sub_14095D550+197↑j
                mov     rax, 7FFFFFFEFFFFh
                cmp     rdx, rax
                jbe     short loc_14095D70C
                mov     edi, 0C0000141h
                jmp     loc_14095D93E
; ---------------------------------------------------------------------------

loc_14095D70C:                          ; CODE XREF: sub_14095D550+1B0↑j
                test    r13b, r13b
                jz      loc_14095D7AA
                mov     [rsp+138h+var_118], rsi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r10d
                mov     rcx, r14
                call    IoAllocateMdl
                mov     r15, rax
                mov     [rsp+138h+var_C0], rax
                test    rax, rax
                jnz     short loc_14095D742

loc_14095D738:                          ; CODE XREF: sub_14095D550+237↓j
                mov     edi, 0C000009Ah
                jmp     loc_14095D93E
; ---------------------------------------------------------------------------

loc_14095D742:                          ; CODE XREF: sub_14095D550+1E6↑j
                                        ; DATA XREF: .rdata:00000001400C5D94↑o
;   __try { // __except at loc_14095D789
                mov     r12d, 1
                mov     r8d, r12d
                xor     edx, edx
                mov     rcx, r15
                call    MmProbeAndLockPages
                nop
;   } // starts at 14095D742

loc_14095D756:                          ; DATA XREF: .rdata:00000001400C5D94↑o
                test    byte ptr [r15+0Ah], 5
                jz      short loc_14095D763
                mov     r14, [r15+18h]
                jmp     short loc_14095D782
; ---------------------------------------------------------------------------

loc_14095D763:                          ; CODE XREF: sub_14095D550+20B↑j
                mov     dword ptr [rsp+138h+var_110], 40000010h
                mov     dword ptr [rsp+138h+var_118], esi
                xor     r9d, r9d
                mov     r8d, r12d
                xor     edx, edx
                mov     rcx, r15
                call    MmMapLockedPagesSpecifyCache
                mov     r14, rax

loc_14095D782:                          ; CODE XREF: sub_14095D550+211↑j
                test    r14, r14
                jnz     short loc_14095D7B3
                jmp     short loc_14095D738
; ---------------------------------------------------------------------------

loc_14095D789:                          ; DATA XREF: .rdata:00000001400C5D94↑o
;   __except(1) // owned by 14095D742
                mov     edi, eax
                mov     r15, [rsp+138h+var_C0]
                mov     rcx, r15
                call    IoFreeMdl
                mov     [rsp+138h+var_F8], edi
                xor     esi, esi
                mov     ebx, esi
                mov     r14, [rsp+138h+var_F0]
                jmp     loc_14095D947
; ---------------------------------------------------------------------------

loc_14095D7AA:                          ; CODE XREF: sub_14095D550+1BF↑j
                mov     r15, rsi
                mov     r12d, 1

loc_14095D7B3:                          ; CODE XREF: sub_14095D550+235↑j
                mov     rax, [rsp+138h+var_D0]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14095D835
                mov     [rsp+138h+var_108], rsi
                lea     rcx, [rsp+138h+var_B8]
                mov     [rsp+138h+var_110], rcx
                mov     dword ptr [rsp+138h+var_118], 41737350h
                mov     r9b, r13b
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, rax
                call    ObReferenceObjectByHandleWithTag
                mov     edi, eax
                mov     [rsp+138h+var_F8], eax
                test    eax, eax
                js      loc_14095D942
                mov     rcx, [rsp+138h+var_B8]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14095D825
                mov     edx, 41737350h
                call    ObfDereferenceObjectWithTag
                mov     edi, 0C0000022h
                jmp     loc_14095D93E
; ---------------------------------------------------------------------------

loc_14095D825:                          ; CODE XREF: sub_14095D550+2BF↑j
                lea     rdx, [rsp+138h+var_70]
                call    KeStackAttachProcess
                mov     ebx, r12d

loc_14095D835:                          ; CODE XREF: sub_14095D550+26C↑j
                test    r13b, r13b
                jz      short loc_14095D865
                lea     rax, [rsp+138h+var_D8]
                mov     [rsp+138h+var_118], rax
                mov     r9, [rsp+138h+var_C8]
                mov     r8, r14
                mov     rdx, [rsp+138h+var_E0]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    sub_1403FC380
                mov     edi, eax
                mov     [rsp+138h+var_F8], eax
                jmp     loc_14095D942
; ---------------------------------------------------------------------------

loc_14095D865:                          ; CODE XREF: sub_14095D550+2E8↑j
                mov     [r14+4], esi
                mov     [rsp+138h+var_D8], 10h
                mov     rax, [rsp+138h+var_C8]
                add     rax, 0FFFFFFFFFFFFFFF0h
                mov     [rsp+138h+var_D0], rax
                lea     r13, [r14+10h]
                cmp     rax, 30h ; '0'
                jb      loc_14095D924

loc_14095D88E:                          ; CODE XREF: sub_14095D550+3BC↓j
                mov     rax, [rsp+138h+var_78]
                mov     eax, [rax+510h]
                test    r12b, al
                jnz     short loc_14095D91D
                lea     rax, [rsp+138h+var_B0]
                mov     [rsp+138h+var_110], rax
                mov     [rsp+138h+var_118], 30h ; '0'
                mov     r9, r13
                xor     r8d, r8d
                mov     rdx, [rsp+138h+var_E0]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    sub_1406587A0
                mov     edi, eax
                mov     [rsp+138h+var_F8], eax
                test    eax, eax
                js      short loc_14095D910
                mov     rax, [rsp+138h+var_B0]
                mov     rcx, [rsp+138h+var_D0]
                sub     rcx, rax
                mov     [rsp+138h+var_D0], rcx
                add     [rsp+138h+var_D8], rax
                mov     rax, [r13+18h]
                add     rax, [r13+0]
                mov     [rsp+138h+var_E0], rax
                add     r13, 30h ; '0'
                add     [r14+4], r12d
                mov     [r14+8], rax
                cmp     rcx, 30h ; '0'
                jnb     short loc_14095D88E
                jmp     short loc_14095D924
; ---------------------------------------------------------------------------

loc_14095D910:                          ; CODE XREF: sub_14095D550+383↑j
                cmp     [r14+4], esi
                cmova   edi, esi
                mov     [rsp+138h+var_F8], edi
                jmp     short loc_14095D924
; ---------------------------------------------------------------------------

loc_14095D91D:                          ; CODE XREF: sub_14095D550+34F↑j
                mov     edi, 0C000004Bh
                jmp     short loc_14095D93E
; ---------------------------------------------------------------------------

loc_14095D924:                          ; CODE XREF: sub_14095D550+338↑j
                                        ; sub_14095D550+3BE↑j ...
                test    edi, edi
                js      short loc_14095D942
                mov     ecx, 105h
                mov     rax, 7FFFFFFF0000h
                cmp     [r14+8], rax
                cmovnz  edi, ecx

loc_14095D93E:                          ; CODE XREF: sub_14095D550+187↑j
                                        ; sub_14095D550+19E↑j ...
                mov     [rsp+138h+var_F8], edi

loc_14095D942:                          ; CODE XREF: sub_14095D550+2A7↑j
                                        ; sub_14095D550+310↑j ...
                mov     r14, [rsp+138h+var_F0]

loc_14095D947:                          ; CODE XREF: sub_14095D550+255↑j
                test    ebx, ebx
                jz      short loc_14095D958
                lea     rcx, [rsp+138h+var_70]
                call    KeUnstackDetachProcess

loc_14095D958:                          ; CODE XREF: sub_14095D550+3F9↑j
                test    r15, r15
                jz      short loc_14095D96D
                mov     rcx, r15
                call    MmUnlockPages
                mov     rcx, r15
                call    IoFreeMdl

loc_14095D96D:                          ; CODE XREF: sub_14095D550+40B↑j
                test    r14, r14
                jz      short loc_14095D980

loc_14095D972:                          ; DATA XREF: .rdata:00000001400C5DA4↑o
;   __try { // __except at loc_14095D97C
                mov     rax, [rsp+138h+var_D8]
                mov     [r14], rax
                jmp     short loc_14095D980
;   } // starts at 14095D972
; ---------------------------------------------------------------------------

loc_14095D97C:                          ; DATA XREF: .rdata:00000001400C5DA4↑o
;   __except(1) // owned by 14095D972
                mov     edi, [rsp+138h+var_F8]

loc_14095D980:                          ; CODE XREF: sub_14095D550+167↑j
                                        ; sub_14095D550+420↑j ...
                mov     eax, edi

loc_14095D982:                          ; CODE XREF: sub_14095D550+A6↑j
                mov     rcx, [rsp+138h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
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
; } // starts at 14095D550
sub_14095D550   endp

byte_14095D9A6  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140124C20↑o

; =============== S U B R O U T I N E =======================================


sub_14095D9AC   proc near               ; CODE XREF: sub_1409583E0+A7↑p
                                        ; DATA XREF: .pdata:0000000140124C2C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+20h], 0
                mov     rdi, rdx
                lea     rdx, [rax+20h]
                mov     bl, r8b
                mov     rsi, rcx
                call    sub_14095DD00
                test    rax, rax
                jnz     short loc_14095D9DF
                mov     ebx, 0C0000002h
                jmp     short loc_14095D9FD
; ---------------------------------------------------------------------------

loc_14095D9DF:                          ; CODE XREF: sub_14095D9AC+2A↑j
                mov     rax, [rax+50h]
                mov     r8b, bl
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, [rsp+28h+arg_18]
                call    sub_140309D28

loc_14095D9FD:                          ; CODE XREF: sub_14095D9AC+31↑j
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095D9AC   endp

byte_14095DA10  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124C2C↑o

; =============== S U B R O U T I N E =======================================


sub_14095DA18   proc near               ; CODE XREF: NtCreateCrossVmEvent+6D↑p
                                        ; DATA XREF: .pdata:0000000140124C38↑o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = byte ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                and     qword ptr [rax-28h], 0
                mov     rsi, rcx
                mov     rdi, cs:qword_140C15FD8
                mov     ebp, r9d
                mov     rbx, [rsp+68h+arg_28]
                mov     r14, r8
                test    rbx, rbx
                mov     r15d, edx
                cmovz   rdi, cs:qword_140C15FD0
                mov     rcx, rdi
                call    sub_140309D44
                test    rax, rax
                jnz     short loc_14095DA6F
                mov     ebx, 0C0000002h
                jmp     short loc_14095DAB9
; ---------------------------------------------------------------------------

loc_14095DA6F:                          ; CODE XREF: sub_14095DA18+4E↑j
                mov     cl, [rsp+68h+arg_30]
                mov     r9d, ebp
                mov     rax, [rax+8]
                mov     r8, r14
                mov     [rsp+68h+var_38], cl
                mov     edx, r15d
                mov     rcx, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], rbx
                mov     [rsp+68h+var_48], rcx
                lea     rcx, [rsp+68h+var_28]
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14095DAB1
                mov     rdx, [rsp+68h+var_28]
                mov     [rsi], rdx

loc_14095DAB1:                          ; CODE XREF: sub_14095DA18+8F↑j
                mov     rcx, rdi
                call    sub_140309D28

loc_14095DAB9:                          ; CODE XREF: sub_14095DA18+55↑j
                lea     r11, [rsp+68h+var_18]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DA18   endp

byte_14095DAD6  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140124C38↑o

; =============== S U B R O U T I N E =======================================


sub_14095DADC   proc near               ; CODE XREF: sub_1409584B0+6D↑p
                                        ; DATA XREF: .pdata:0000000140124C44↑o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = byte ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                and     qword ptr [rax-28h], 0
                mov     rsi, rcx
                mov     rdi, cs:qword_140C15FD8
                mov     ebp, r9d
                mov     rbx, [rsp+68h+arg_28]
                mov     r14, r8
                test    rbx, rbx
                mov     r15d, edx
                cmovz   rdi, cs:qword_140C15FD0
                mov     rcx, rdi
                call    sub_140309D44
                test    rax, rax
                jnz     short loc_14095DB33
                mov     ebx, 0C0000002h
                jmp     short loc_14095DB7D
; ---------------------------------------------------------------------------

loc_14095DB33:                          ; CODE XREF: sub_14095DADC+4E↑j
                mov     cl, [rsp+68h+arg_30]
                mov     r9d, ebp
                mov     rax, [rax+48h]
                mov     r8, r14
                mov     [rsp+68h+var_38], cl
                mov     edx, r15d
                mov     rcx, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], rbx
                mov     [rsp+68h+var_48], rcx
                lea     rcx, [rsp+68h+var_28]
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14095DB75
                mov     rdx, [rsp+68h+var_28]
                mov     [rsi], rdx

loc_14095DB75:                          ; CODE XREF: sub_14095DADC+8F↑j
                mov     rcx, rdi
                call    sub_140309D28

loc_14095DB7D:                          ; CODE XREF: sub_14095DADC+55↑j
                lea     r11, [rsp+68h+var_18]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DADC   endp

algn_14095DB9A:                         ; DATA XREF: .pdata:0000000140124C44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095DBA0   proc near               ; DATA XREF: .pdata:0000000140124C50↑o
                                        ; sub_140A3E42C+3F16E↓o

arg_0           = qword ptr  8

                cmp     ecx, 1
                jnz     locret_14095DC68
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rdx]
                mov     rcx, rbx
                call    sub_140309D44
                mov     rdi, rax
                test    rax, rax
                jz      loc_14095DC5E
                mov     rax, [rax]
                lea     r8, qword_140C15FE0
                lea     rdx, sub_14095DE30
                lea     rcx, sub_14095DD50
                call    sub_1404079D0
                test    eax, eax
                js      short loc_14095DC56
                mov     rax, [rdi+40h]
                lea     r8, qword_140C15FC8
                lea     rdx, sub_14095DE80
                lea     rcx, sub_14095DDC0
                call    sub_1404079D0
                test    eax, eax
                js      short loc_14095DC56
                cmp     rbx, cs:qword_140C15FD0
                jnz     short loc_14095DC30
                mov     rax, [rdi+80h]
                test    rax, rax
                jz      short loc_14095DC30
                xor     edx, edx
                lea     rcx, sub_140957360
                call    sub_1404079D0

loc_14095DC30:                          ; CODE XREF: sub_14095DBA0+74↑j
                                        ; sub_14095DBA0+80↑j
                cmp     rbx, cs:qword_140C15FD8
                jnz     short loc_14095DC56
                mov     rax, [rdi+80h]
                test    rax, rax
                jz      short loc_14095DC56
                mov     edx, 1
                lea     rcx, sub_140957360
                call    sub_1404079D0

loc_14095DC56:                          ; CODE XREF: sub_14095DBA0+49↑j
                                        ; sub_14095DBA0+6B↑j ...
                mov     rcx, rbx
                call    sub_140309D28

loc_14095DC5E:                          ; CODE XREF: sub_14095DBA0+24↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi

locret_14095DC68:                       ; CODE XREF: sub_14095DBA0+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DBA0   endp

algn_14095DC6A:                         ; DATA XREF: .pdata:0000000140124C50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095DC70   proc near               ; CODE XREF: sub_1405EE3DC+207389↑p
                                        ; sub_1405EE3DC+20742B↑p ...

var_28          = qword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rdi, cs:qword_140C15FD8
                test    edx, edx
                mov     esi, r9d
                mov     rbp, r8
                cmovnz  rdi, cs:qword_140C15FD0
                mov     ebx, edx
                mov     rcx, rdi
                call    sub_140309D44
                test    rax, rax
                jnz     short loc_14095DCB1
                mov     ebx, 0C0000002h
                jmp     short loc_14095DCE0
; ---------------------------------------------------------------------------

loc_14095DCB1:                          ; CODE XREF: sub_14095DC70+38↑j
                mov     edx, [rsp+48h+arg_28]
                mov     r9d, esi
                mov     rax, [rax+70h]
                mov     r8, rbp
                mov     [rsp+48h+var_20], edx
                xor     ecx, ecx
                mov     rdx, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rdx
                mov     edx, ebx
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, rdi
                call    sub_140309D28

loc_14095DCE0:                          ; CODE XREF: sub_14095DC70+3F↑j
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DC70   endp

algn_14095DCF8:                         ; DATA XREF: .pdata:0000000140124C5C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095DD00   proc near               ; CODE XREF: sub_14095D9AC+22↑p
                                        ; sub_14095DD50+29↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rcx, cs:qword_140C15FD8
                mov     rbx, rdx
                call    sub_140309D44
                test    rax, rax
                jz      short loc_14095DD26
                mov     rcx, cs:qword_140C15FD8

loc_14095DD21:                          ; CODE XREF: sub_14095DD00+3E↓j
                mov     [rbx], rcx
                jmp     short loc_14095DD40
; ---------------------------------------------------------------------------

loc_14095DD26:                          ; CODE XREF: sub_14095DD00+18↑j
                mov     rcx, cs:qword_140C15FD0
                call    sub_140309D44
                test    rax, rax
                jz      short loc_14095DD40
                mov     rcx, cs:qword_140C15FD0
                jmp     short loc_14095DD21
; ---------------------------------------------------------------------------

loc_14095DD40:                          ; CODE XREF: sub_14095DD00+24↑j
                                        ; sub_14095DD00+35↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DD00   endp

algn_14095DD47:                         ; DATA XREF: .pdata:0000000140124C68↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095DD50   proc near               ; DATA XREF: .pdata:0000000140124C74↑o
                                        ; sub_14095DBA0+3B↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax-18h], 0
                mov     rsi, rdx
                lea     rdx, [rax-18h]
                mov     rbx, r9
                mov     rdi, r8
                mov     rbp, rcx
                call    sub_14095DD00
                test    rax, rax
                jz      short loc_14095DDA2
                mov     rax, [rax+30h]
                mov     r9, rbx
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1404079D0
                mov     rcx, [rsp+48h+var_18]
                call    sub_140309D28

loc_14095DDA2:                          ; CODE XREF: sub_14095DD50+31↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DD50   endp

algn_14095DDB8:                         ; DATA XREF: .pdata:0000000140124C74↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095DDC0   proc near               ; DATA XREF: .pdata:0000000140124C80↑o
                                        ; sub_14095DBA0+5D↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax-18h], 0
                mov     rsi, rdx
                lea     rdx, [rax-18h]
                mov     rbx, r9
                mov     rdi, r8
                mov     rbp, rcx
                call    sub_14095DD00
                test    rax, rax
                jz      short loc_14095DE12
                mov     rax, [rax+60h]
                mov     r9, rbx
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1404079D0
                mov     rcx, [rsp+48h+var_18]
                call    sub_140309D28

loc_14095DE12:                          ; CODE XREF: sub_14095DDC0+31↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DDC0   endp

algn_14095DE28:                         ; DATA XREF: .pdata:0000000140124C80↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095DE30   proc near               ; DATA XREF: .pdata:0000000140124C8C↑o
                                        ; sub_14095DBA0+34↑o

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                lea     rdx, [rsp+28h+arg_8]
                mov     rbx, rcx
                call    sub_14095DD00
                test    rax, rax
                jz      short loc_14095DE64
                mov     rax, [rax+38h]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rcx, [rsp+28h+arg_8]
                call    sub_140309D28

loc_14095DE64:                          ; CODE XREF: sub_14095DE30+1C↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DE30   endp

algn_14095DE6B:                         ; DATA XREF: .pdata:0000000140124C8C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095DE80   proc near               ; DATA XREF: .pdata:0000000140124C98↑o
                                        ; sub_14095DBA0+56↑o

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                lea     rdx, [rsp+28h+arg_8]
                mov     rbx, rcx
                call    sub_14095DD00
                test    rax, rax
                jz      short loc_14095DEB4
                mov     rax, [rax+68h]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rcx, [rsp+28h+arg_8]
                call    sub_140309D28

loc_14095DEB4:                          ; CODE XREF: sub_14095DE80+1C↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DE80   endp

byte_14095DEBB  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140124C98↑o

; =============== S U B R O U T I N E =======================================


sub_14095DEC4   proc near               ; CODE XREF: sub_1406ED8B0+13702B↑p
                                        ; DATA XREF: .pdata:0000000140124CA4↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rbx, rdx
                lea     rdx, [rsp+28h+arg_10]
                mov     rdi, rcx
                call    sub_14095DD00
                test    rax, rax
                jnz     short loc_14095DEF0
                mov     ebx, 0C0000002h
                jmp     short loc_14095DF0B
; ---------------------------------------------------------------------------

loc_14095DEF0:                          ; CODE XREF: sub_14095DEC4+23↑j
                mov     rax, [rax+28h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, [rsp+28h+arg_10]
                call    sub_140309D28

loc_14095DF0B:                          ; CODE XREF: sub_14095DEC4+2A↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DEC4   endp

algn_14095DF19:                         ; DATA XREF: .pdata:0000000140124CA4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095DF20   proc near               ; CODE XREF: sub_140710200+11AFA7↑p
                                        ; DATA XREF: .pdata:0000000140124CB0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+20h], 0
                mov     rdi, rdx
                lea     rdx, [rax+20h]
                mov     rbx, r8
                mov     rsi, rcx
                call    sub_14095DD00
                test    rax, rax
                jnz     short loc_14095DF53
                mov     ebx, 0C0000002h
                jmp     short loc_14095DF71
; ---------------------------------------------------------------------------

loc_14095DF53:                          ; CODE XREF: sub_14095DF20+2A↑j
                mov     rax, [rax+10h]
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, [rsp+28h+arg_18]
                call    sub_140309D28

loc_14095DF71:                          ; CODE XREF: sub_14095DF20+31↑j
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DF20   endp

byte_14095DF84  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124CB0↑o

; =============== S U B R O U T I N E =======================================


sub_14095DF8C   proc near               ; CODE XREF: sub_1406E72A0+13C6EC↑p
                                        ; DATA XREF: .pdata:0000000140124CBC↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rbx, rdx
                lea     rdx, [rsp+28h+arg_10]
                mov     rdi, rcx
                call    sub_14095DD00
                test    rax, rax
                jnz     short loc_14095DFB8
                mov     ebx, 0C0000002h
                jmp     short loc_14095DFD3
; ---------------------------------------------------------------------------

loc_14095DFB8:                          ; CODE XREF: sub_14095DF8C+23↑j
                mov     rax, [rax+58h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, [rsp+28h+arg_10]
                call    sub_140309D28

loc_14095DFD3:                          ; CODE XREF: sub_14095DF8C+2A↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DF8C   endp

algn_14095DFE1:                         ; DATA XREF: .pdata:0000000140124CBC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14095DFE8   proc near               ; CODE XREF: sub_1405DE090+20DC3E↑p
                                        ; sub_1406EBE40+138867↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rbx, rdx
                lea     rdx, [rsp+28h+arg_10]
                mov     rdi, rcx
                call    sub_14095DD00
                test    rax, rax
                jnz     short loc_14095E014
                mov     ebx, 0C0000002h
                jmp     short loc_14095E02F
; ---------------------------------------------------------------------------

loc_14095E014:                          ; CODE XREF: sub_14095DFE8+23↑j
                mov     rax, [rax+20h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, [rsp+28h+arg_10]
                call    sub_140309D28

loc_14095E02F:                          ; CODE XREF: sub_14095DFE8+2A↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095DFE8   endp

byte_14095E03D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140124CC8↑o

; =============== S U B R O U T I N E =======================================


sub_14095E044   proc near               ; CODE XREF: NtSetEvent+13CC68↑p
                                        ; DATA XREF: .pdata:0000000140124CD4↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rbx, rdx
                lea     rdx, [rsp+28h+arg_10]
                mov     rdi, rcx
                call    sub_14095DD00
                test    rax, rax
                jnz     short loc_14095E070
                mov     ebx, 0C0000002h
                jmp     short loc_14095E08B
; ---------------------------------------------------------------------------

loc_14095E070:                          ; CODE XREF: sub_14095E044+23↑j
                mov     rax, [rax+18h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                mov     ebx, eax
                mov     rcx, [rsp+28h+arg_10]
                call    sub_140309D28

loc_14095E08B:                          ; CODE XREF: sub_14095E044+2A↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095E044   endp

algn_14095E099:                         ; DATA XREF: .pdata:0000000140124CD4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095E0A0   proc near               ; CODE XREF: sub_14090799C+34↑p
                                        ; DATA XREF: .pdata:0000000140124CE0↑o
                push    rbx
                sub     rsp, 20h
                cmp     qword ptr [rcx], 0
                mov     rbx, rcx
                jz      short loc_14095E0F1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx]
                mov     edx, 2
                call    sub_14095E20C
                mov     rcx, [rbx]
                xor     edx, edx
                call    sub_14095E20C
                mov     rcx, [rbx]
                mov     edx, 20666E57h
                call    ExFreePoolWithTag
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14095E0F1:                          ; CODE XREF: sub_14095E0A0+D↑j
                mov     rax, [rbx+8]
                test    rax, rax
                jz      short loc_14095E103
                mov     rcx, [rbx+8]
                call    ZwClose

loc_14095E103:                          ; CODE XREF: sub_14095E0A0+58↑j
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      short loc_14095E115
                mov     rcx, [rbx+10h]
                call    ZwClose

loc_14095E115:                          ; CODE XREF: sub_14095E0A0+6A↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095E0A0   endp

byte_14095E11C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124CE0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14095E124   proc near               ; CODE XREF: sub_1405ED1C0+208332↑p
                                        ; sub_1407CC10C+95171↑p ...

var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = byte ptr -38h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_10], rbx
                mov     [rsp-18h+arg_18], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                and     [rbp+var_50], 0
                mov     r14, rcx
                mov     rbx, rdx
                mov     rdi, rdx
                mov     rax, rdx
                shr     rbx, 4
                xorps   xmm0, xmm0
                shr     rdi, 6
                movups  [rbp+var_48], xmm0
                mov     ecx, 22h ; '"'
                lea     rdx, [rbp+var_48]
                mov     word ptr [rbp+var_48+2], cx
                and     ebx, 3
                lea     rcx, [rbp+var_38]
                and     edi, 0Fh
                mov     qword ptr [rbp+var_48+8], rcx
                mov     rcx, rax
                call    sub_1406737AC
                xor     r8d, r8d
                lea     r9, [rbp+var_50]
                xor     esi, esi
                mov     edx, ebx
                test    r14, r14
                jz      short loc_14095E1FB
                mov     rcx, r14
                call    sub_1407217B0

loc_14095E1A2:                          ; CODE XREF: sub_14095E124+DE↓j
                test    eax, eax
                js      short loc_14095E1D9

loc_14095E1A6:                          ; CODE XREF: sub_14095E124+B1↓j
                mov     rcx, [rbp+var_50]
                lea     rdx, [rbp+var_48]
                call    ZwDeleteValueKey
                test    r14, r14
                jnz     short loc_14095E1D9
                mov     rcx, [rbp+var_50]
                call    ZwClose
                inc     esi
                lea     r9, [rbp+var_50]
                mov     r8d, esi
                mov     edx, ebx
                mov     ecx, edi
                call    sub_14095E2F0
                test    eax, eax
                jns     short loc_14095E1A6
                xor     eax, eax

loc_14095E1D9:                          ; CODE XREF: sub_14095E124+80↑j
                                        ; sub_14095E124+92↑j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14095E1FB:                          ; CODE XREF: sub_14095E124+74↑j
                mov     ecx, edi
                call    sub_14095E2F0
                jmp     short loc_14095E1A2
; } // starts at 14095E124
sub_14095E124   endp

; ---------------------------------------------------------------------------
byte_14095E204  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140124CEC↑o

; =============== S U B R O U T I N E =======================================


sub_14095E20C   proc near               ; CODE XREF: sub_14095E0A0+27↑p
                                        ; sub_14095E0A0+31↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     r14d, edx
                lea     rdi, [rcx+20h]
                lea     rbx, [rcx+28h]
                mov     rbp, rcx
                xor     edx, edx
                lea     r8, [r14+r14*2]
                lea     rdi, [rdi+r8*8]
                lea     rbx, [rbx+r8*8]
                mov     rcx, rdi
                xor     r8d, r8d
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rsi, rax
                jnb     short loc_14095E265
                mov     r8, rdi
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1402F5F10

loc_14095E265:                          ; CODE XREF: sub_14095E20C+49↑j
                test    rsi, rsi
                jz      short loc_14095E289
                or      byte ptr [rsi+1Ah], 1
                jmp     short loc_14095E289
; ---------------------------------------------------------------------------

loc_14095E270:                          ; CODE XREF: sub_14095E20C+99↓j
                and     qword ptr [rax], 0
                lea     rcx, [rax-20h]
                test    r14d, r14d
                jnz     short loc_14095E282
                and     qword ptr [rbp+8], 0

loc_14095E282:                          ; CODE XREF: sub_14095E20C+6F↑j
                mov     dl, 1
                call    sub_14071E6D0

loc_14095E289:                          ; CODE XREF: sub_14095E20C+5C↑j
                                        ; sub_14095E20C+62↑j
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_14095E2E2
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     short loc_14095E2E2
                mov     [rbx], rcx
                mov     [rcx+8], rbx
                cmp     rax, rbx
                jnz     short loc_14095E270
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14095E2BE
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_14095E2BE:                          ; CODE XREF: sub_14095E20C+A8↑j
                mov     rcx, rdi
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14095E2E2:                          ; CODE XREF: sub_14095E20C+84↑j
                                        ; sub_14095E20C+8D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14095E20C   endp

; ---------------------------------------------------------------------------
algn_14095E2E9:                         ; DATA XREF: .pdata:0000000140124CF8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14095E2F0   proc near               ; CODE XREF: sub_14095E124+AA↑p
                                        ; sub_14095E124+D9↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h

                sub     rsp, 48h
                mov     r10d, ecx
                test    ecx, ecx
                jz      short loc_14095E300
                cmp     ecx, 2
                jz      short loc_14095E305

loc_14095E300:                          ; CODE XREF: sub_14095E2F0+9↑j
                test    r8d, r8d
                jz      short loc_14095E30C

loc_14095E305:                          ; CODE XREF: sub_14095E2F0+E↑j
                mov     eax, 0C0000034h
                jmp     short loc_14095E330
; ---------------------------------------------------------------------------

loc_14095E30C:                          ; CODE XREF: sub_14095E2F0+13↑j
                xor     ecx, ecx
                mov     [rsp+48h+var_18], r9
                lea     eax, [rdx-2]
                cmp     eax, 1
                setbe   cl
                and     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], ecx
                xor     r8d, r8d
                mov     ecx, r10d
                call    sub_1407C8678

loc_14095E330:                          ; CODE XREF: sub_14095E2F0+1A↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095E2F0   endp

byte_14095E336  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140124D04↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14095E33C   proc near               ; CODE XREF: sub_1407C8678+97D3B↑p
                                        ; DATA XREF: .pdata:0000000140124D10↑o

var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_70          = xmmword ptr -70h
var_60          = word ptr -60h
var_5E          = word ptr -5Eh
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-37h]
                sub     rsp, 90h
                xorps   xmm0, xmm0
                mov     r15, rdx
                xor     r12d, r12d
                lea     rdx, [rbp+57h+arg_10]
                movups  [rbp+57h+var_50], xmm0
                mov     [rbp+57h+var_5C], r12d
                mov     rdi, rcx
                movups  [rbp+57h+var_40], xmm0
                mov     [rbp+57h+arg_10], r12d
                movups  [rbp+57h+var_30], xmm0
                call    sub_1406D68BC
                test    eax, eax
                js      loc_14095E476
                mov     esi, [rbp+57h+arg_10]
                lea     ecx, [r12+1]
                mov     r8d, 20666E57h
                lea     r14d, [rsi+52h]
                mov     edx, r14d
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_14095E3B7
                mov     eax, 0C000009Ah
                jmp     loc_14095E476
; ---------------------------------------------------------------------------

loc_14095E3B7:                          ; CODE XREF: sub_14095E33C+6F↑j
                xorps   xmm0, xmm0
                lea     rdx, aRegistryUser_0 ; "\\Registry\\User\\"
                movups  [rbp+57h+var_70], xmm0
                lea     rcx, [rbp+57h+var_70]
                mov     word ptr [rbp+57h+var_70+2], r14w
                mov     qword ptr [rbp+57h+var_70+8], rbx
                call    RtlAppendUnicodeToString
                movzx   ecx, word ptr [rbp+57h+var_70]
                xor     r8d, r8d
                mov     rax, qword ptr [rbp+57h+var_70+8]
                mov     rdx, rdi
                shr     rcx, 1
                mov     [rbp+57h+var_60], r12w
                mov     [rbp+57h+var_5E], si
                lea     rcx, [rax+rcx*2]
                mov     [rbp+57h+var_58], rcx
                lea     rcx, [rbp+57h+var_60]
                call    RtlConvertSidToUnicodeString
                mov     edi, eax
                test    eax, eax
                js      short loc_14095E467
                movzx   eax, [rbp+57h+var_60]
                lea     rdx, aClassesNotific ; "_Classes\\NotificationData"
                add     word ptr [rbp+57h+var_70], ax
                lea     rcx, [rbp+57h+var_70]
                call    RtlAppendUnicodeToString
                lea     rax, [rbp+57h+var_70]
                mov     [rsp+0B0h+var_80], r12
                xorps   xmm0, xmm0
                mov     [rsp+0B0h+var_88], r12d
                xor     r9d, r9d
                mov     qword ptr [rbp+57h+var_40], rax
                lea     r8, [rbp+57h+var_50]
                mov     dword ptr [rbp+57h+var_50], 30h ; '0'
                mov     edx, 0F003Fh
                mov     qword ptr [rbp+57h+var_50+8], r12
                mov     rcx, r15
                mov     dword ptr [rbp+57h+var_40+8], 240h
                movdqu  [rbp+57h+var_30], xmm0
                mov     [rsp+0B0h+var_90], r12
                call    ZwCreateKey
                mov     edi, eax

loc_14095E467:                          ; CODE XREF: sub_14095E33C+CA↑j
                mov     edx, 20666E57h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     eax, edi

loc_14095E476:                          ; CODE XREF: sub_14095E33C+49↑j
                                        ; sub_14095E33C+76↑j
                lea     r11, [rsp+0B0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095E33C   endp

algn_14095E493:                         ; DATA XREF: .pdata:0000000140124D10↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14095E4A0   proc near               ; DATA XREF: .pdata:0000000140124D1C↑o
                                        ; sub_1405F095C+2050BA↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     esi, r9d
                mov     rbx, rdx
                test    r9d, r9d
                jz      short loc_14095E52C
                mov     ebp, [rsp+28h+arg_28]
                test    ebp, ebp
                jnz     short loc_14095E4DA
                mov     qword ptr [rdx+58h], 1
                mov     [rdx+60h], r9d
                jmp     short loc_14095E52C
; ---------------------------------------------------------------------------

loc_14095E4DA:                          ; CODE XREF: sub_14095E4A0+2A↑j
                mov     r14d, [rdx+38h]
                mov     ecx, 1
                mov     r8d, 20666E57h
                lea     edx, [r14+10h]
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14095E501
                mov     eax, 0C000009Ah
                jmp     short loc_14095E52E
; ---------------------------------------------------------------------------

loc_14095E501:                          ; CODE XREF: sub_14095E4A0+58↑j
                mov     rdx, [rsp+28h+arg_20]
                lea     rcx, [rax+10h]
                mov     dword ptr [rax], 100904h
                mov     r8, rbp
                mov     [rax+4], r14d
                mov     [rax+8], ebp
                mov     [rax+0Ch], esi
                call    memmove
                mov     eax, [rdi+0Ch]
                mov     [rbx+60h], eax
                mov     [rbx+58h], rdi

loc_14095E52C:                          ; CODE XREF: sub_14095E4A0+22↑j
                                        ; sub_14095E4A0+38↑j
                xor     eax, eax

loc_14095E52E:                          ; CODE XREF: sub_14095E4A0+5F↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14095E4A0   endp

algn_14095E54A:                         ; DATA XREF: .pdata:0000000140124D1C↑o
                align 10h
; Exported entry 2680. WheaRemoveErrorSource

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=340h


ntoskrnl_27     proc near               ; CODE XREF: sub_140682E50+2DB↓p
                                        ; DATA XREF: .pdata:0000000140101310↑o ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     ebx, r9d
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                call    sub_1402B95B0
                mov     r9, rdi
                mov     r8, rsi
                mov     rdx, rbp
                mov     rcx, [rax+388h]
                mov     rax, cs:qword_140D2D4E0
                test    rax, rax
                jz      short loc_140682E2A
                mov     r10, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], r10
                mov     [rsp+48h+var_28], ebx
                call    sub_1404079D0

loc_140682E14:                          ; CODE XREF: ntoskrnl_27+7D↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140682E2A:                          ; CODE XREF: ntoskrnl_27+3F↑j
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], ebx
                call    sub_1407AAACC
                jmp     short loc_140682E14
ntoskrnl_27     endp

; ---------------------------------------------------------------------------
byte_140682E3F  db 11h dup(0CCh)        ; DATA XREF: .pdata:0000000140101310↑o

; =============== S U B R O U T I N E =======================================


sub_140682E50   proc near               ; CODE XREF: sub_1407941D8+4B↓p
                                        ; sub_140A6996C+4C↓p
                                        ; DATA XREF: ...

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140811D32 SIZE 00000029 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r12d, r9d
                mov     r15, r8
                mov     rsi, rdx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-50h], xmm0
                xor     ebx, ebx
                mov     [rax-58h], rbx
                mov     [rax+8], ebx
                mov     [rax-60h], rbx
                mov     [rax-64h], ebx
                mov     rax, gs:188h
                movzx   edx, byte ptr [rax+232h]
                test    rcx, rcx
                jz      loc_140683119
                mov     r14, [rsp+0A8h+arg_20]
                test    r14, r14
                jz      loc_140683119
                test    r8, r8
                jz      loc_140683110

loc_140682EC1:                          ; CODE XREF: sub_140682E50+2C3↓j
                cmp     r12d, 800000h
                ja      loc_140811D32
                test    dl, dl
                jz      loc_140683120

loc_140682ED6:                          ; DATA XREF: .rdata:0000000140066740↑o
;   __try { // __except at loc_14068301B
                mov     r13, 7FFFFFFF0000h
                cmp     rcx, r13
                jnb     loc_140682FD8

loc_140682EE9:                          ; CODE XREF: sub_140682E50+18B↓j
                mov     eax, [rcx]
                mov     [rsp+0A8h+var_50], eax
                mov     rcx, [rcx+8]
                mov     [rsp+0A8h+var_48], rcx
                test    rcx, rcx
                jz      loc_140683010
                cmp     bx, ax
                jz      loc_140683010
                test    al, 1
                jnz     loc_140683010
                test    cl, 1
                jnz     loc_140682FE0
                movzx   edx, ax
                add     rdx, rcx
                cmp     rdx, r13
                ja      loc_140682FE5
                cmp     rdx, rcx
                jb      loc_140682FE5

loc_140682F33:                          ; CODE XREF: sub_140682E50+1A0↓j
                movzx   edx, word ptr [rsp+0A8h+var_50]
                mov     ecx, 1
                mov     r8d, 20534C53h
                call    ExAllocatePoolWithTag
                mov     [rsp+0A8h+var_58], rax
                test    rax, rax
                jz      loc_140682FF5
                movzx   r8d, word ptr [rsp+0A8h+var_50]
                mov     rdx, [rsp+0A8h+var_48]
                mov     rdi, rax
                mov     rcx, rax
                call    memmove
                mov     [rsp+0A8h+var_48], rdi
                test    rsi, rsi
                jz      short loc_140682F8B
                mov     rcx, rsi
                cmp     rsi, r13
                jnb     short loc_140682FFC

loc_140682F7E:                          ; CODE XREF: sub_140682E50+1AF↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     eax, [rsi]
                mov     [rsp+0A8h+arg_0], eax

loc_140682F8B:                          ; CODE XREF: sub_140682E50+124↑j
                test    r15, r15
                jz      short loc_140682FC3
                test    r12d, r12d
                jz      short loc_140682FC3
                mov     r8d, 1
                mov     rdx, r12
                mov     rcx, r15
                call    ProbeForWrite
                mov     r8d, 20534C53h
                mov     rdx, r12
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     [rsp+0A8h+var_60], rax
                test    rax, rax
                jz      short loc_140683004

loc_140682FC3:                          ; CODE XREF: sub_140682E50+13E↑j
                                        ; sub_140682E50+143↑j
                mov     rcx, r14
                cmp     r14, r13
                jnb     short loc_14068300B

loc_140682FCB:                          ; CODE XREF: sub_140682E50+1BE↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     eax, [r14]
                mov     [rsp+0A8h+var_64], eax
                jmp     short loc_140683015
; ---------------------------------------------------------------------------

loc_140682FD8:                          ; CODE XREF: sub_140682E50+93↑j
                mov     rcx, r13
                jmp     loc_140682EE9
; ---------------------------------------------------------------------------

loc_140682FE0:                          ; CODE XREF: sub_140682E50+C5↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140682FE5:                          ; CODE XREF: sub_140682E50+D4↑j
                                        ; sub_140682E50+DD↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_140682F33
; ---------------------------------------------------------------------------

loc_140682FF5:                          ; CODE XREF: sub_140682E50+100↑j
                mov     ebx, 0C0000017h
                jmp     short loc_140683015
; ---------------------------------------------------------------------------

loc_140682FFC:                          ; CODE XREF: sub_140682E50+12C↑j
                mov     rcx, r13
                jmp     loc_140682F7E
; ---------------------------------------------------------------------------

loc_140683004:                          ; CODE XREF: sub_140682E50+171↑j
                mov     ebx, 0C0000017h
                jmp     short loc_140683015
; ---------------------------------------------------------------------------

loc_14068300B:                          ; CODE XREF: sub_140682E50+179↑j
                mov     rcx, r13
                jmp     short loc_140682FCB
; ---------------------------------------------------------------------------

loc_140683010:                          ; CODE XREF: sub_140682E50+AB↑j
                                        ; sub_140682E50+B4↑j ...
                mov     ebx, 0C000000Dh

loc_140683015:                          ; CODE XREF: sub_140682E50+186↑j
                                        ; sub_140682E50+1AA↑j ...
                mov     [rsp+0A8h+var_68], ebx
                jmp     short loc_140683041
;   } // starts at 140682ED6
; ---------------------------------------------------------------------------

loc_14068301B:                          ; DATA XREF: .rdata:0000000140066740↑o
;   __except(1) // owned by 140682ED6
                mov     ebx, eax
                mov     [rsp+0A8h+var_68], eax
                mov     r14, [rsp+0A8h+arg_20]
                mov     r12d, [rsp+0A8h+arg_18]
                mov     r15, [rsp+0A8h+arg_10]
                mov     rsi, [rsp+0A8h+arg_8]

loc_140683041:                          ; CODE XREF: sub_140682E50+1C9↑j
                test    ebx, ebx
                js      loc_1406830D5
                call    sub_1402B95B0
                mov     rcx, [rax+388h]
                mov     rax, cs:qword_140D2D4E0
                mov     r9, [rsp+0A8h+var_60]
                lea     r8, [rsp+0A8h+arg_0]
                test    rax, rax
                jz      loc_140811D3C
                lea     rdx, [rsp+0A8h+var_64]
                mov     [rsp+0A8h+var_80], rdx
                mov     dword ptr [rsp+0A8h+var_88], r12d
                lea     rdx, [rsp+0A8h+var_50]
                call    sub_1404079D0

loc_14068308B:                          ; CODE XREF: sub_140682E50+18EF06↓j
                mov     ecx, eax
                mov     ebx, eax

loc_14068308F:                          ; DATA XREF: .rdata:0000000140066750↑o
;   __try { // __except at loc_1406830CF
                test    rsi, rsi
                jz      short loc_14068309D
                mov     eax, [rsp+0A8h+arg_0]
                mov     [rsi], eax

loc_14068309D:                          ; CODE XREF: sub_140682E50+242↑j
                mov     eax, [rsp+0A8h+var_64]
                mov     [r14], eax
                test    ecx, ecx
                js      short loc_1406830CD
                test    r15, r15
                jz      short loc_1406830CD
                cmp     r12d, eax
                jb      short loc_1406830C4
                mov     r8d, eax
                mov     rdx, [rsp+0A8h+var_60]
                mov     rcx, r15
                call    memmove
                jmp     short loc_1406830CD
; ---------------------------------------------------------------------------

loc_1406830C4:                          ; CODE XREF: sub_140682E50+260↑j
                mov     ebx, 0C0000023h
                mov     [rsp+0A8h+var_68], ebx

loc_1406830CD:                          ; CODE XREF: sub_140682E50+256↑j
                                        ; sub_140682E50+25B↑j ...
                jmp     short loc_1406830D5
;   } // starts at 14068308F
; ---------------------------------------------------------------------------

loc_1406830CF:                          ; DATA XREF: .rdata:0000000140066750↑o
;   __except(1) // owned by 14068308F
                mov     ebx, eax
                mov     [rsp+0A8h+var_68], eax

loc_1406830D5:                          ; CODE XREF: sub_140682E50+1F3↑j
                                        ; sub_140682E50:loc_1406830CD↑j ...
                mov     rdi, [rsp+0A8h+var_58]
                test    rdi, rdi
                jz      short loc_1406830E9
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1406830E9:                          ; CODE XREF: sub_140682E50+28D↑j
                mov     rax, [rsp+0A8h+var_60]
                test    rax, rax
                jz      short loc_1406830FD
                xor     edx, edx
                mov     rcx, rax
                call    ExFreePoolWithTag

loc_1406830FD:                          ; CODE XREF: sub_140682E50+2A1↑j
                mov     eax, ebx
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
                align 10h

loc_140683110:                          ; CODE XREF: sub_140682E50+6B↑j
                test    r9d, r9d
                jz      loc_140682EC1

loc_140683119:                          ; CODE XREF: sub_140682E50+51↑j
                                        ; sub_140682E50+62↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1406830D5
; ---------------------------------------------------------------------------

loc_140683120:                          ; CODE XREF: sub_140682E50+80↑j
                mov     [rsp+0A8h+var_88], r14
                mov     r9d, r12d
                mov     rdx, rsi
                call    ntoskrnl_27
                mov     ebx, eax
                jmp     short loc_1406830D5
; } // starts at 140682E50
sub_140682E50   endp

; ---------------------------------------------------------------------------
byte_140683134  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140066764↑o
                                        ; .pdata:000000014010131C↑o

; =============== S U B R O U T I N E =======================================


sub_14068313C   proc near               ; CODE XREF: sub_140655DD0+3C0↑p
                                        ; DATA XREF: .rdata:00000001400667AC↑o ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140811D5C SIZE 00000050 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r13
                push    r14
                sub     rsp, 30h
                mov     eax, [r8+98h]
                mov     rbp, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     r14, rcx
                mov     ebx, 0C000000Dh
                test    al, 2
                jz      short loc_140683183
                mov     r8b, 1
                mov     edx, 1
                call    sub_1402B9640
                mov     ebx, eax
                test    eax, eax
                js      short loc_140683201

loc_140683183:                          ; CODE XREF: sub_14068313C+32↑j
                mov     eax, [rdi+98h]
                test    al, 1
                jz      short loc_1406831D2
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_10]
                and     [rsp+48h+arg_10], 0
                mov     edx, 1
                mov     r9b, 1
                mov     [rsp+48h+var_28], rax
                mov     rcx, r14
                lea     r8d, [rdx+1Fh]
                call    sub_14021B078
                mov     ebx, eax
                test    eax, eax
                js      short loc_140683201
                mov     rax, [rsp+48h+arg_10]
                mov     rcx, [rdi+0B0h]
                mov     [rax], rcx
                mov     eax, [rdi+98h]

loc_1406831D2:                          ; CODE XREF: sub_14068313C+4F↑j
                mov     r13d, 10h
                test    al, 4
                jnz     loc_1406832BC

loc_1406831E0:                          ; CODE XREF: sub_14068313C+214↓j
                test    al, 40h
                jz      short loc_14068321B

loc_1406831E4:                          ; CODE XREF: sub_14068313C+EA↓j
                                        ; sub_14068313C+106↓j
                mov     rdx, [rdi+28h]
                xor     ebx, ebx
                mov     rdi, [rbp+8]
                test    rdx, rdx
                jnz     short loc_140683244

loc_1406831F3:                          ; CODE XREF: sub_14068313C+112↓j
                                        ; sub_14068313C+11F↓j
                mov     rcx, rdi
                call    PsIsHostSilo
                test    al, al
                jz      short loc_14068325D

loc_1406831FF:                          ; CODE XREF: sub_14068313C+F3↓j
                                        ; sub_14068313C+104↓j ...
                mov     eax, ebx

loc_140683201:                          ; CODE XREF: sub_14068313C+45↑j
                                        ; sub_14068313C+7F↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r14
                pop     r13
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14068321B:                          ; CODE XREF: sub_14068313C+A6↑j
                mov     rcx, [rbp+8]
                call    PsIsHostSilo
                test    al, al
                jz      short loc_1406831E4
                mov     rcx, [rdi+28h]
                test    rcx, rcx
                jz      short loc_1406831FF
                call    IoGetSilo
                mov     rcx, rax
                call    PsIsHostSilo
                test    al, al
                jnz     short loc_1406831FF
                jmp     short loc_1406831E4
; ---------------------------------------------------------------------------

loc_140683244:                          ; CODE XREF: sub_14068313C+B5↑j
                mov     rcx, rdi
                call    sub_1402B96B0
                test    al, al
                jz      short loc_1406831F3
                mov     rcx, rdx
                call    IoGetSilo
                mov     rdi, rax
                jmp     short loc_1406831F3
; ---------------------------------------------------------------------------

loc_14068325D:                          ; CODE XREF: sub_14068313C+C1↑j
                and     [rsp+48h+arg_10], rbx
                mov     rcx, rdi
                call    PsAcquireSiloHardReference
                test    eax, eax
                js      short loc_140683201
                and     [rsp+48h+var_20], rbx
                lea     rax, [rsp+48h+arg_10]
                mov     r9b, 1
                mov     [rsp+48h+var_28], rax
                mov     r8d, r13d
                mov     edx, 7
                mov     rcx, r14
                call    sub_14021B078
                mov     ebx, eax
                mov     rcx, rdi
                test    eax, eax
                js      loc_140811DA1
                mov     rax, [rsp+48h+arg_10]
                mov     edx, 70536F49h
                mov     [rax], r13d
                mov     [rax+8], rdi
                or      dword ptr [rax+4], 1
                call    ObfReferenceObjectWithTag
                jmp     loc_1406831FF
; ---------------------------------------------------------------------------

loc_1406832BC:                          ; CODE XREF: sub_14068313C+9E↑j
                and     [rsp+48h+arg_10], 0
                mov     rcx, rsi
                call    sub_140394D14
                test    rax, rax
                jz      loc_140811D5C

loc_1406832D3:                          ; CODE XREF: sub_14068313C+18EC3A↓j
                                        ; sub_14068313C+18EC47↓j
                mov     rax, [rdi+0B8h]
                test    rax, rax
                jz      short loc_140683355
                cmp     [rax], r13w
                jnz     short loc_140683355
                mov     rsi, [rax+8]
                test    rsi, rsi
                jz      short loc_140683355
                mov     r8, cs:TmTransactionObjectType
                xor     r9d, r9d
                mov     edx, 120037h
                mov     rcx, rsi
                call    ObReferenceObjectByPointer
                test    eax, eax
                js      loc_140683201
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_10]
                mov     r9b, 1
                mov     [rsp+48h+var_28], rax
                mov     r8d, r13d
                xor     edx, edx
                mov     rcx, r14
                call    sub_14021B078
                mov     ebx, eax
                test    eax, eax
                js      loc_140811D93
                mov     rax, [rdi+0B8h]
                movups  xmm0, xmmword ptr [rax]
                mov     rax, [rsp+48h+arg_10]
                movdqu  xmmword ptr [rax], xmm0
                mov     eax, [rdi+98h]
                jmp     loc_1406831E0
; ---------------------------------------------------------------------------

loc_140683355:                          ; CODE XREF: sub_14068313C+1A1↑j
                                        ; sub_14068313C+1A7↑j ...
                mov     eax, 0C000000Dh
                jmp     loc_140683201
sub_14068313C   endp

; ---------------------------------------------------------------------------
byte_14068335F  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400667AC↑o
                                        ; .pdata:0000000140101328↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140683368   proc near               ; CODE XREF: PsAssignProcessToJobObject+48↑p
                                        ; DATA XREF: .rdata:0000000140066800↑o ...

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = byte ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140811DAC SIZE 00000258 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                xor     eax, eax
                mov     [rbp+57h+var_B0], 0
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_80], rax
                xor     r14d, r14d
                mov     [rbp+57h+var_68], rax
                xorps   xmm1, xmm1
                mov     [rbp+57h+var_40], rax
                movups  [rbp+57h+var_90], xmm0
                xor     bl, bl
                mov     edi, r9d
                mov     r13, r8
                mov     rsi, rdx
                mov     r15, rcx
                movups  [rbp+57h+var_78], xmm1
                mov     r12, gs:188h
                mov     [rbp+57h+var_A0], r12
                mov     [rbp+57h+var_AC], r14d
                movups  [rbp+57h+var_60], xmm0
                movups  [rbp+57h+var_50], xmm0
                cmp     r9d, 5
                jz      loc_140811DAC

loc_1406833E6:                          ; CODE XREF: sub_140683368+18EA82↓j
                test    rsi, rsi
                jz      short loc_140683402
                lea     rcx, [rsi+458h]
                call    sub_14024C840
                test    al, al
                jz      loc_140811DEF
                or      bl, 10h

loc_140683402:                          ; CODE XREF: sub_140683368+81↑j
                lea     rax, [rbp+57h+var_60]
                mov     r9d, edi
                mov     r8, r13
                mov     [rsp+0F0h+var_D0], rax
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140682BF0
                mov     rcx, r12
                or      bl, 6
                call    sub_140686250
                mov     r9d, 1
                lea     rcx, [rbp+57h+var_60]
                mov     r8, r12
                mov     rdx, rsi
                call    sub_140683880
                mov     rcx, r15
                cmp     edi, 5
                jz      loc_140811DFD
                lea     r9, [rbp+57h+var_AC]
                mov     r8, r13
                mov     rdx, rsi
                call    sub_140682C58
                mov     r14d, [rbp+57h+var_AC]
                test    eax, eax
                js      loc_140811E2E
                cmp     r14d, edi
                jnz     loc_140811E46
                cmp     r14d, 2
                jz      loc_140811E50

loc_140683476:                          ; CODE XREF: sub_140683368+18EAC1↓j
                test    rsi, rsi
                jz      short loc_14068348C
                cmp     r14d, 5
                jz      short loc_14068348C
                mov     r13, [rsi+510h]
                mov     r14d, [rbp+57h+var_AC]

loc_14068348C:                          ; CODE XREF: sub_140683368+111↑j
                                        ; sub_140683368+117↑j
                cmp     r14d, 4
                jz      loc_140683775

loc_140683496:                          ; CODE XREF: sub_140683368+416↓j
                                        ; sub_140683368+18EB09↓j
                mov     r9d, r14d
                mov     r8, rsi
                mov     rdx, r13
                mov     rcx, r15
                call    sub_140682D4C
                test    al, al
                jz      loc_140811E77
                mov     r9d, r14d
                mov     r8, rsi
                mov     rdx, r13
                mov     rcx, r15
                call    sub_140683A3C
                test    al, al
                jz      loc_140811E77
                mov     edx, 0FFFFFFFCh
                cmp     r14d, 5
                jz      loc_140811E81
                lea     eax, [r14-4]
                test    edx, eax
                jnz     short loc_1406834F8
                cmp     r14d, 6
                jz      short loc_1406834F8

loc_1406834E5:                          ; CODE XREF: sub_140683368+18EB22↓j
                movzx   eax, byte ptr [r13+36Ah]
                inc     eax
                cmp     eax, 64h ; 'd'
                ja      loc_140811E77

loc_1406834F8:                          ; CODE XREF: sub_140683368+175↑j
                                        ; sub_140683368+17B↑j
                lea     eax, [r14-4]
                test    edx, eax
                jnz     short loc_140683521
                cmp     r14d, 6
                jz      short loc_140683521
                xor     ecx, ecx
                mov     r8d, 2000000h

loc_14068350E:                          ; CODE XREF: sub_140683368+1B7↓j
                lea     eax, [rcx-1]
                cmp     eax, 1
                ja      loc_140683789

loc_14068351A:                          ; CODE XREF: sub_140683368+428↓j
                                        ; sub_140683368+18EB33↓j
                inc     ecx
                cmp     ecx, 3
                jl      short loc_14068350E

loc_140683521:                          ; CODE XREF: sub_140683368+196↑j
                                        ; sub_140683368+19C↑j
                lea     eax, [r14-4]
                test    edx, eax
                jnz     short loc_140683550
                cmp     r14d, 6
                jz      short loc_140683550
                cmp     dword ptr [r13+544h], 0
                jnz     loc_140811EA0
                mov     r8b, 1
                mov     rcx, r13
                call    sub_1406DEC0C
                test    al, al
                jnz     loc_140811EA0

loc_140683550:                          ; CODE XREF: sub_140683368+1BF↑j
                                        ; sub_140683368+1C5↑j ...
                mov     ecx, r14d
                sub     ecx, 1
                jnz     loc_14068379B

loc_14068355C:                          ; CODE XREF: sub_140683368+436↓j
                mov     rax, r13

loc_14068355F:                          ; CODE XREF: sub_140683368+447↓j
                mov     r12, r15

loc_140683562:                          ; CODE XREF: sub_140683368+18EB6C↓j
                mov     [rbp+57h+var_A8], rax
                test    r12, r12
                jz      short loc_140683586
                xor     r9d, r9d
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, r12
                call    sub_140683AC8
                mov     edi, eax
                test    eax, eax
                js      loc_140811EDB

loc_140683586:                          ; CODE XREF: sub_140683368+201↑j
                                        ; sub_140683368+18EB62↓j
                mov     r9d, r14d
                mov     r8, r13
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140683BE0
                mov     edi, eax
                test    eax, eax
                js      loc_140811EDB
                test    rsi, rsi
                jz      loc_140811ED9
                test    dword ptr [r15+528h], 1000h
                jz      short loc_1406835FB
                xor     edi, edi
                mov     r14d, 7FFFFFFFh

loc_1406835BF:                          ; CODE XREF: sub_140683368+279↓j
                movsxd  rax, edi
                mov     ecx, [rsi+rax*4+9A8h]
                and     ecx, r14d
                jnz     loc_140811EE4

loc_1406835D2:                          ; CODE XREF: sub_140683368+18EBA2↓j
                lock bts dword ptr [rsi+rdi*4+9A8h], 1Fh
                inc     edi
                cmp     edi, 7
                jb      short loc_1406835BF
                mov     eax, [rsi+9CCh]
                and     eax, r14d
                jnz     loc_1406837C1

loc_1406835F2:                          ; CODE XREF: sub_140683368+481↓j
                lock bts dword ptr [rsi+9CCh], 1Fh

loc_1406835FB:                          ; CODE XREF: sub_140683368+24D↑j
                lea     rdi, [rsi+438h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_1406837EE

loc_140683615:                          ; CODE XREF: sub_140683368+48E↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     r14d, [rbp+57h+var_AC]
                or      bl, 8
                mov     rdx, [rbp+57h+var_A8]
                cmp     r14d, 4
                mov     r8, rsi
                mov     rcx, r12
                cmovz   rdx, r13
                xor     r9d, r9d
                call    sub_1406840E4
                mov     r8, rsi
                mov     rdx, r13
                mov     rcx, r15
                call    sub_140685544
                mov     r12, [rbp+57h+var_A0]
                lea     rcx, [rbp+57h+var_60]
                mov     r8, r12
                xor     edx, edx
                call    sub_140683804
                and     bl, 0FBh
                mov     edi, 1000000h
                test    [r15+528h], edi
                jnz     short loc_140683698
                xor     r8d, r8d
                lea     rdx, [rbp+57h+var_B0]
                mov     rcx, rsi
                call    sub_1405E8DA8
                cmp     [rbp+57h+var_B0], 0
                jnz     loc_1406837B4
                lock or dword ptr [r15+528h], 1800000h

loc_140683694:                          ; CODE XREF: sub_140683368+454↓j
                mov     r14d, [rbp+57h+var_AC]

loc_140683698:                          ; CODE XREF: sub_140683368+305↑j
                mov     rcx, rsi
                call    sub_1406841A8
                mov     edi, eax
                test    eax, eax
                js      short loc_140683708
                xor     r8d, r8d
                mov     rdx, r13
                cmp     r14d, 5
                mov     rcx, rsi
                lea     eax, [r8+4]
                cmovz   r8d, eax
                call    sub_14068436C
                test    eax, eax
                jz      loc_140811F0F
                mov     rcx, r12
                call    sub_140686200
                or      rax, 0FFFFFFFFFFFFFFFFh
                and     bl, 0FDh
                add     [r12+1E4h], ax
                mov     rcx, rsi
                call    sub_140685128
                mov     rcx, r12
                call    sub_14021E1F0
                cmp     dword ptr [r15+1C0h], 0
                jnz     loc_140811F19

loc_1406836FE:                          ; CODE XREF: sub_140683368+18EC06↓j
                cmp     r14d, 5
                jz      loc_140811F73

loc_140683708:                          ; CODE XREF: sub_140683368+33C↑j
                                        ; sub_140683368+18EACB↓j ...
                mov     r13d, 0C000010Ah

loc_14068370E:                          ; CODE XREF: sub_140683368+18EA90↓j
                test    bl, 10h
                jz      short loc_14068371F
                lea     rcx, [rsi+458h]
                call    sub_14024C380

loc_14068371F:                          ; CODE XREF: sub_140683368+3A9↑j
                test    bl, 20h
                jnz     short loc_14068372C
                test    edi, edi
                js      loc_140811F80

loc_14068372C:                          ; CODE XREF: sub_140683368+3BA↑j
                                        ; sub_140683368+18EC1B↓j ...
                mov     eax, 4
                test    al, bl
                jnz     loc_140811FCE

loc_140683739:                          ; CODE XREF: sub_140683368+18EC76↓j
                test    bl, 2
                jnz     loc_140811FE3

loc_140683742:                          ; CODE XREF: sub_140683368+18EC84↓j
                test    bl, 1
                jnz     loc_140811FF1

loc_14068374B:                          ; CODE XREF: sub_140683368+18EC97↓j
                mov     eax, edi
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F0h+arg_18]
                add     rsp, 0C0h
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
; ---------------------------------------------------------------------------

loc_140683775:                          ; CODE XREF: sub_140683368+128↑j
                mov     eax, [r15+528h]
                test    al, 10h
                jz      loc_140683496
                jmp     loc_140811E57
; ---------------------------------------------------------------------------

loc_140683789:                          ; CODE XREF: sub_140683368+1AC↑j
                test    [r15+528h], r8d
                jz      loc_14068351A
                jmp     loc_140811E92
; ---------------------------------------------------------------------------

loc_14068379B:                          ; CODE XREF: sub_140683368+1EE↑j
                sub     ecx, 2
                jz      loc_14068355C
                sub     ecx, 1
                jnz     loc_140811EBE
                xor     eax, eax
                jmp     loc_14068355F
; ---------------------------------------------------------------------------

loc_1406837B4:                          ; CODE XREF: sub_140683368+31A↑j
                lock or [r15+528h], edi
                jmp     loc_140683694
; ---------------------------------------------------------------------------

loc_1406837C1:                          ; CODE XREF: sub_140683368+284↑j
                mov     [rsp+0F0h+var_C0], 626F4Ah
                xor     r8d, r8d
                and     [rsp+0F0h+var_C8], 0
                mov     rdx, r13
                mov     r9d, eax
                mov     rcx, r15
                mov     dword ptr [rsp+0F0h+var_D0], 4
                call    sub_140604BC8
                jmp     loc_1406835F2
; ---------------------------------------------------------------------------

loc_1406837EE:                          ; CODE XREF: sub_140683368+2A7↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     loc_140683615
; } // starts at 140683368
sub_140683368   endp

; ---------------------------------------------------------------------------
byte_1406837FB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140066800↑o
                                        ; .pdata:0000000140101334↑o

; =============== S U B R O U T I N E =======================================


sub_140683804   proc near               ; CODE XREF: sub_14030CB40+1B5↑p
                                        ; sub_140683368+2F1↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140812004 SIZE 0000002C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, [rcx]
                mov     rbp, r8
                mov     rdi, rdx
                mov     rsi, rcx

loc_140683823:                          ; CODE XREF: sub_140683804+3F↓j
                                        ; sub_140683804+72↓j
                test    ebx, ebx
                jz      short loc_140683845
                dec     ebx
                mov     eax, ebx
                add     rax, rax
                cmp     byte ptr [rsi+rax*8+10h], 0
                mov     rcx, [rsi+rax*8+8]
                jnz     short loc_14068386C
                add     rcx, 38h ; '8'
                call    ExReleaseResourceLite
                jmp     short loc_140683823
; ---------------------------------------------------------------------------

loc_140683845:                          ; CODE XREF: sub_140683804+21↑j
                test    rdi, rdi
                jnz     loc_140812004

loc_14068384E:                          ; CODE XREF: sub_140683804+18E827↓j
                mov     rcx, rbp
                call    sub_140245770
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14068386C:                          ; CODE XREF: sub_140683804+34↑j
                xor     r8d, r8d
                xor     edx, edx
                call    sub_1406860E4
                jmp     short loc_140683823
sub_140683804   endp

; ---------------------------------------------------------------------------
algn_140683878:                         ; DATA XREF: .rdata:0000000140066828↑o
                                        ; .pdata:0000000140101340↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140683880   proc near               ; CODE XREF: sub_14030CB40+194↑p
                                        ; sub_140683368+CF↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     esi, r9d
                mov     rdi, rcx
                and     esi, 1
                dec     word ptr [r8+1E6h]
                test    rdx, rdx
                jz      short loc_1406838B3
                lea     rcx, [rdx+438h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx

loc_1406838B3:                          ; CODE XREF: sub_140683880+23↑j
                xor     ebx, ebx
                cmp     [rdi], ebx
                jbe     short loc_1406838DB

loc_1406838B9:                          ; CODE XREF: sub_140683880+59↓j
                mov     eax, ebx
                add     rax, rax
                cmp     byte ptr [rdi+rax*8+10h], 0
                mov     rcx, [rdi+rax*8+8]
                jnz     short loc_1406838EC
                add     rcx, 38h ; '8'
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite

loc_1406838D5:                          ; CODE XREF: sub_140683880+76↓j
                inc     ebx
                cmp     ebx, [rdi]
                jb      short loc_1406838B9

loc_1406838DB:                          ; CODE XREF: sub_140683880+37↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406838EC:                          ; CODE XREF: sub_140683880+48↑j
                mov     r8d, esi
                xor     edx, edx
                call    sub_14068616C
                jmp     short loc_1406838D5
sub_140683880   endp

; ---------------------------------------------------------------------------
algn_1406838F8:                         ; DATA XREF: .pdata:000000014010134C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140683900   proc near               ; CODE XREF: sub_14068627C+B9↓p
                                        ; sub_140704A6C+D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140812030 SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, gs:188h
                mov     esi, edx
                mov     dl, 1
                call    sub_140686D48
                mov     rdi, rax
                test    rax, rax
                jz      loc_1406839C8
                lea     rbx, [rax+18h]
                test    esi, esi
                jz      loc_1406839BF
                or      rsi, 0FFFFFFFFFFFFFFFFh
                add     [rbp+1E4h], si
                xor     edx, edx
                lea     rcx, qword_140D2E790
                call    ExAcquirePushLockExclusiveEx
                mov     rax, cs:qword_140D2EB48
                lea     rcx, qword_140D2EB40
                cmp     [rax], rcx
                jnz     FatalListEntryError_73
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140D2EB48, rbx
                lock xadd cs:qword_140D2E790, rsi
                test    sil, 2
                jnz     loc_140812037

loc_140683992:                          ; CODE XREF: sub_140683900+18E73B↓j
                                        ; sub_140683900+18E74E↓j
                lea     rcx, qword_140D2E790
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rax, rdi

loc_1406839A9:                          ; CODE XREF: sub_140683900+C6↓j
                                        ; sub_140683900:loc_1406839C8↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406839BF:                          ; CODE XREF: sub_140683900+38↑j
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                jmp     short loc_1406839A9
; ---------------------------------------------------------------------------

loc_1406839C8:                          ; CODE XREF: sub_140683900+2C↑j
                jmp     short loc_1406839A9
sub_140683900   endp

; ---------------------------------------------------------------------------
algn_1406839CA:                         ; DATA XREF: .rdata:0000000140066864↑o
                                        ; .pdata:0000000140101358↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406839D0   proc near               ; CODE XREF: sub_140686348+1EE↓p
                                        ; DATA XREF: .rdata:000000014006689C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140812054 SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                mov     dl, 1
                add     rcx, 38h ; '8'
                xor     esi, esi
                call    ExAcquireResourceSharedLite
                mov     rcx, [rbx+1B0h]
                test    rcx, rcx
                jnz     loc_140812054

loc_140683A07:                          ; CODE XREF: sub_1406839D0+18E696↓j
                lock or dword ptr [rdi+464h], 4000000h

loc_140683A12:                          ; CODE XREF: sub_1406839D0+18E690↓j
                lea     rcx, [rbx+38h]
                call    ExReleaseResourceLite
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406839D0   endp

byte_140683A33  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006689C↑o
                                        ; .pdata:0000000140101364↑o

; =============== S U B R O U T I N E =======================================


sub_140683A3C   proc near               ; CODE XREF: sub_140683368+153↑p
                                        ; sub_140685E64+D0↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014081206C SIZE 0000005A BYTES

                xor     r11d, r11d
                mov     r10, rcx
                cmp     r9d, 4
                jz      short loc_140683A89
                lea     eax, [r9-6]
                cmp     eax, 1
                jbe     short loc_140683A66

loc_140683A51:                          ; CODE XREF: sub_140683A3C+57↓j
                                        ; sub_140683A3C+60↓j ...
                mov     rcx, [r10+618h]
                lea     rax, [rcx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                jbe     loc_14081209E

loc_140683A66:                          ; CODE XREF: sub_140683A3C+13↑j
                                        ; sub_140683A3C+18E669↓j ...
                lea     eax, [r9-4]
                test    eax, 0FFFFFFFCh
                jz      short loc_140683A75

loc_140683A71:                          ; CODE XREF: sub_140683A3C+3D↓j
                                        ; sub_140683A3C+46↓j ...
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140683A75:                          ; CODE XREF: sub_140683A3C+33↑j
                cmp     r9d, 6
                jz      short loc_140683A71
                cmp     [r10+618h], r11
                jz      short loc_140683A71
                jmp     loc_1408120B6
; ---------------------------------------------------------------------------

loc_140683A89:                          ; CODE XREF: sub_140683A3C+A↑j
                lea     rax, [rcx+420h]
                cmp     [rax], rax
                jnz     short loc_140683A51
                cmp     [rcx+618h], r11
                jnz     short loc_140683A51
                mov     rax, [r8+510h]
                test    rax, rax
                jz      short loc_140683A51
                mov     rax, [r8+510h]
                cmp     [rax+618h], r11
                jz      short loc_140683A51
                jmp     loc_14081206C
sub_140683A3C   endp

; ---------------------------------------------------------------------------
byte_140683ABF  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140101370↑o

; =============== S U B R O U T I N E =======================================


sub_140683AC8   proc near               ; CODE XREF: sub_140683368+20F↑p
                                        ; sub_140685E64+E9↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, r9d
                mov     rbp, r8
                shr     edi, 0Fh
                mov     rsi, rdx
                not     edi
                mov     rbx, rcx
                and     edi, 1
                cmp     rcx, rdx
                jz      short loc_140683B13

loc_140683AF5:                          ; CODE XREF: sub_140683AC8+49↓j
                mov     r8d, edi
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_140683B34
                test    eax, eax
                js      short loc_140683B15
                mov     rbx, [rbx+430h]
                cmp     rbx, rsi
                jnz     short loc_140683AF5

loc_140683B13:                          ; CODE XREF: sub_140683AC8+2B↑j
                xor     eax, eax

loc_140683B15:                          ; CODE XREF: sub_140683AC8+3D↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140683AC8   endp

byte_140683B2B  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010137C↑o

; =============== S U B R O U T I N E =======================================


sub_140683B34   proc near               ; CODE XREF: sub_140683AC8+36↑p
                                        ; DATA XREF: .rdata:00000001400668C0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408120C8 SIZE 0000005D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                test    dword ptr [rdx+464h], 4000000h
                mov     esi, r8d
                mov     rdi, rdx
                mov     rbx, rcx
                jnz     short loc_140683B9D

loc_140683B58:                          ; CODE XREF: sub_140683B34+73↓j
                                        ; sub_140683B34+18E5A1↓j
                cmp     dword ptr [rbx+4C8h], 0FFFFFFFFh
                jz      short loc_140683BD0
                mov     edx, [rbx+100h]
                test    dl, 8
                jnz     short loc_140683BAE

loc_140683B6C:                          ; CODE XREF: sub_140683B34+8E↓j
                test    dl, 4
                jnz     loc_140812116

loc_140683B75:                          ; CODE XREF: sub_140683B34+18E5EC↓j
                mov     eax, [rbx+528h]
                bt      eax, 1Dh
                jb      short loc_140683BC9
                and     al, 80h
                neg     al
                sbb     eax, eax
                and     eax, 0C000010Ah

loc_140683B8C:                          ; CODE XREF: sub_140683B34+9A↓j
                                        ; sub_140683B34+A1↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140683B9D:                          ; CODE XREF: sub_140683B34+22↑j
                mov     rcx, [rcx+1B0h]
                test    rcx, rcx
                jz      short loc_140683B58
                jmp     loc_1408120C8
; ---------------------------------------------------------------------------

loc_140683BAE:                          ; CODE XREF: sub_140683B34+36↑j
                mov     ecx, [rbx+0D8h]
                sub     ecx, [rbx+4CCh]
                add     ecx, esi
                cmp     ecx, [rbx+104h]
                jbe     short loc_140683B6C
                jmp     loc_1408120DA
; ---------------------------------------------------------------------------

loc_140683BC9:                          ; CODE XREF: sub_140683B34+4B↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140683B8C
; ---------------------------------------------------------------------------

loc_140683BD0:                          ; CODE XREF: sub_140683B34+2B↑j
                                        ; sub_140683B34+18E5B6↓j ...
                mov     eax, 0C0000044h
                jmp     short loc_140683B8C
sub_140683B34   endp

; ---------------------------------------------------------------------------
algn_140683BD7:                         ; DATA XREF: .rdata:00000001400668C0↑o
                                        ; .pdata:0000000140101388↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140683BE0   proc near               ; CODE XREF: sub_140683368+22A↑p
                                        ; sub_140685E64+107↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 0000000140812126 SIZE 00000246 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rbx, rcx
                xor     eax, eax
                mov     ecx, r9d
                xorps   xmm0, xmm0
                mov     r13d, r9d
                mov     rdi, r8
                mov     rbp, rdx
                movups  [rsp+68h+var_38], xmm0
                mov     [r11-28h], rax
                sub     ecx, 1
                jnz     short loc_140683C9A
                mov     rcx, rbx
                call    sub_140684094
                mov     esi, eax
                test    eax, eax
                js      short loc_140683C45
                mov     edx, 73507350h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_140683E8C

loc_140683C45:                          ; CODE XREF: sub_140683BE0+4B↑j
                cmp     dword ptr [rbx+544h], 0
                mov     rcx, [rbx+548h]
                jnz     loc_14081233A
                test    rcx, rcx
                jnz     loc_140812333

loc_140683C62:                          ; CODE XREF: sub_140683BE0+276↓j
                                        ; sub_140683BE0+18E562↓j ...
                test    rbp, rbp
                jz      short loc_140683C78
                test    esi, esi
                js      short loc_140683C78
                cmp     cs:byte_140CFC43F, 0
                jnz     loc_140812348

loc_140683C78:                          ; CODE XREF: sub_140683BE0+85↑j
                                        ; sub_140683BE0+89↑j ...
                mov     eax, esi

loc_140683C7A:                          ; CODE XREF: sub_140683BE0+18E59E↓j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140683C9A:                          ; CODE XREF: sub_140683BE0+3D↑j
                sub     ecx, 1
                jz      loc_14081232C
                sub     ecx, 1
                jz      loc_1408122DB
                sub     ecx, 1
                jnz     loc_140812126

loc_140683CB5:                          ; CODE XREF: sub_140683BE0+18E549↓j
                                        ; sub_140683BE0+18E557↓j
                mov     r14, [r8+450h]
                xor     r15d, r15d
                inc     r14
                cmp     r14, 2
                ja      loc_140812155

loc_140683CCC:                          ; CODE XREF: sub_140683BE0+18E593↓j
                lea     eax, [r13-4]
                cmp     eax, 1
                ja      short loc_140683CEA
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_140684094
                mov     esi, eax
                test    eax, eax
                js      loc_140683E53

loc_140683CEA:                          ; CODE XREF: sub_140683BE0+F3↑j
                mov     rcx, [rbx+3F8h]
                test    rcx, rcx
                jnz     loc_140812183
                mov     rax, [rdi+3F8h]
                test    rax, rax
                jnz     loc_140683E72

loc_140683D0A:                          ; CODE XREF: sub_140683BE0+299↓j
                                        ; sub_140683BE0+18E5FD↓j
                cmp     r13d, 4
                mov     rcx, rbx
                mov     edx, 73507350h
                cmovnz  rcx, rdi
                call    ObfReferenceObjectWithTag
                lea     rcx, [rdi+420h]
                mov     rdx, [rcx+8]
                lea     rax, [rbx+410h]
                cmp     [rdx], rcx
                jnz     loc_1408121E2
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                mov     [rbx+430h], rdi
                mov     rax, [rdi+438h]
                mov     [rbx+438h], rax
                mov     al, [rdi+36Ah]
                inc     al
                mov     [rbx+450h], r14
                mov     [rbx+36Ah], al
                cmp     r14, 2
                ja      loc_1408121E9

loc_140683D7C:                          ; CODE XREF: sub_140683BE0+18E646↓j
                cmp     r13d, 4
                jnz     short loc_140683D98
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_140685500
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_140683E8C

loc_140683D98:                          ; CODE XREF: sub_140683BE0+1A0↑j
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1407111D4
                mov     eax, [rdi+358h]
                add     [rbx+358h], eax
                mov     eax, [rdi+360h]
                add     [rbx+360h], eax
                mov     eax, [rdi+35Ch]
                add     [rbx+35Ch], eax
                mov     eax, [rdi+364h]
                add     [rbx+364h], eax
                mov     rax, [rdi+628h]
                mov     [rbx+628h], rax
                mov     eax, [rdi+528h]
                and     eax, 1841000h
                jz      short loc_140683DF4
                lock or [rbx+528h], eax

loc_140683DF4:                          ; CODE XREF: sub_140683BE0+20B↑j
                xor     r8d, r8d

loc_140683DF7:                          ; CODE XREF: sub_140683BE0+227↓j
                lea     eax, [r8-1]
                cmp     eax, 1
                ja      short loc_140683E61

loc_140683E00:                          ; CODE XREF: sub_140683BE0+28B↓j
                                        ; sub_140683BE0+18E654↓j
                inc     r8d
                cmp     r8d, 3
                jl      short loc_140683DF7
                cmp     dword ptr [rdi+544h], 0
                jnz     short loc_140683E7E
                mov     rax, [rdi+548h]
                test    rax, rax
                jnz     loc_140812239

loc_140683E22:                          ; CODE XREF: sub_140683BE0+2A1↓j
                test    rax, rax
                jnz     loc_140812239
                cmp     [rbx+544h], eax
                jnz     loc_140812270

loc_140683E37:                          ; CODE XREF: sub_140683BE0+18E68B↓j
                                        ; sub_140683BE0+18E694↓j ...
                mov     rcx, [rdi+618h]
                test    rcx, rcx
                jnz     loc_14081228F

loc_140683E47:                          ; CODE XREF: sub_140683BE0+18E6D5↓j
                cmp     r13d, 7
                jz      loc_1408122BA

loc_140683E51:                          ; CODE XREF: sub_140683BE0+18E6E3↓j
                xor     esi, esi

loc_140683E53:                          ; CODE XREF: sub_140683BE0+104↑j
                                        ; sub_140683BE0+18E5D9↓j
                test    r15, r15
                jz      loc_140683C62
                jmp     loc_1408122C8
; ---------------------------------------------------------------------------

loc_140683E61:                          ; CODE XREF: sub_140683BE0+21E↑j
                mov     rdx, [rdi+340h]
                test    rdx, rdx
                jz      short loc_140683E00
                jmp     loc_14081222B
; ---------------------------------------------------------------------------

loc_140683E72:                          ; CODE XREF: sub_140683BE0+124↑j
                mov     [rbx+3F8h], rax
                jmp     loc_140683D0A
; ---------------------------------------------------------------------------

loc_140683E7E:                          ; CODE XREF: sub_140683BE0+230↑j
                mov     rax, rdi
                jmp     short loc_140683E22
sub_140683BE0   endp

; ---------------------------------------------------------------------------
byte_140683E83  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400668F0↑o
                                        ; .pdata:0000000140101394↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140683E8C   proc near               ; CODE XREF: sub_140683BE0+60↑p
                                        ; sub_140683BE0+1B3↑p ...

var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 000000014081236C SIZE 00000087 BYTES

                mov     [rsp-38h+arg_10], rbx
                mov     [rsp-38h+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 30h
                lea     rax, [rbp+var_10]
                xor     r15d, r15d
                mov     [rbp+var_8], rax
                or      rbx, 0FFFFFFFFFFFFFFFFh
                lea     rax, [rbp+var_10]
                mov     rdi, rdx
                mov     [rbp+var_10], rax
                mov     r13, rcx
                mov     r14, gs:188h
                mov     [rbp+arg_8], r14
                add     [r14+1E6h], bx
                lea     r12, [rdx+930h]
                xor     edx, edx
                mov     rcx, r12
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rdi+87Ch]
                test    al, 10h
                jnz     loc_140683FA3
                lea     rsi, [rdi+938h]
                mov     r14, [rsi]
                cmp     r14, rsi
                jz      short loc_140683F80

loc_140683F08:                          ; CODE XREF: sub_140683E8C+DA↓j
                mov     r13, [r14+10h]
                mov     edx, 40h ; '@'
                mov     ecx, 100h
                mov     r8d, 6E53694Dh
                call    sub_140268720
                mov     rcx, rax
                test    rax, rax
                jz      loc_14081236C
                mov     [rax+38h], r13
                lea     rdx, [rbp+var_10]
                mov     rax, [r14-8]
                mov     [rcx+20h], rax
                lea     rax, [rcx+28h]
                mov     rcx, [rbp+var_8]
                cmp     [rcx], rdx
                jnz     loc_1408123EC
                mov     [rax+8], rcx
                lea     rdx, [rbp+var_10]
                mov     [rax], rdx
                mov     [rcx], rax
                mov     [rbp+var_8], rax
                mov     r14, [r14]
                cmp     r14, rsi
                jnz     short loc_140683F08

loc_140683F68:                          ; CODE XREF: sub_140683E8C+18E4E6↓j
                mov     r13, [rbp+arg_0]
                jmp     short loc_140683F80
; ---------------------------------------------------------------------------

loc_140683F6E:                          ; CODE XREF: sub_140683E8C+FA↓j
                mov     rcx, [rax+10h]
                mov     r8d, 1
                mov     rdx, rdi
                call    sub_14065A620

loc_140683F80:                          ; CODE XREF: sub_140683E8C+7A↑j
                                        ; sub_140683E8C+E0↑j
                mov     rax, [rsi]
                cmp     rax, rsi
                jnz     short loc_140683F6E
                test    r15d, r15d
                js      loc_140812377
                mov     eax, [rdi+87Ch]
                test    al, 8
                jnz     short loc_140683FA3
                lock or dword ptr [rdi+87Ch], 8

loc_140683FA3:                          ; CODE XREF: sub_140683E8C+67↑j
                                        ; sub_140683E8C+10D↑j ...
                lea     rcx, [r13+28h]
                mov     rdx, [rcx+8]
                lea     rax, [rdi+5C8h]
                cmp     [rdx], rcx
                jnz     loc_1408123EC
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                mov     [rdi+510h], r13

loc_140683FD0:                          ; CODE XREF: sub_140683E8C+1B4↓j
                mov     rax, [rbp+var_10]
                lea     rcx, [rbp+var_10]
                cmp     rax, rcx
                jz      short loc_140684042
                lea     rcx, [rbp+var_10]
                cmp     [rax+8], rcx
                jnz     loc_1408123EC
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_1408123EC
                mov     [rbp+var_10], rcx
                lea     rdx, [rbp+var_10]
                mov     [rcx+8], rdx
                lea     rsi, [rax-28h]
                test    r15d, r15d
                js      short loc_140684036
                cmp     qword ptr [rsi+20h], 0
                mov     r14, [rsi+38h]
                jz      short loc_140684036

loc_140684018:                          ; CODE XREF: sub_140683E8C+1A8↓j
                mov     r8d, 1
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_14065A890
                mov     r15d, eax
                test    eax, eax
                js      short loc_140684036
                add     [rsi+20h], rbx
                jnz     short loc_140684018

loc_140684036:                          ; CODE XREF: sub_140683E8C+17F↑j
                                        ; sub_140683E8C+18A↑j ...
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                jmp     short loc_140683FD0
; ---------------------------------------------------------------------------

loc_140684042:                          ; CODE XREF: sub_140683E8C+14F↑j
                test    r15d, r15d
                js      loc_1408123B4

loc_14068404B:                          ; CODE XREF: sub_140683E8C+18E55B↓j
                lock xadd [r12], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_140684083

loc_140684059:                          ; CODE XREF: sub_140683E8C+1FF↓j
                mov     rcx, r12
                call    sub_140243660
                mov     rcx, [rbp+arg_8]
                call    sub_140245770
                mov     rbx, [rsp+30h+arg_10]
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
; ---------------------------------------------------------------------------

loc_140684083:                          ; CODE XREF: sub_140683E8C+1CB↑j
                mov     rcx, r12
                call    ExfTryToWakePushLock
                jmp     short loc_140684059
sub_140683E8C   endp

; ---------------------------------------------------------------------------
byte_14068408D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006691C↑o
                                        ; .pdata:00000001401013A0↑o

; =============== S U B R O U T I N E =======================================


sub_140684094   proc near               ; CODE XREF: sub_1405F3CF0+16BB↑p
                                        ; sub_140683BE0+42↑p ...

; FUNCTION CHUNK AT 00000001408123F4 SIZE 00000019 BYTES

                sub     rsp, 28h
                mov     r10d, [rcx+1E0h]
                mov     r8, rcx
                mov     rcx, rdx
                call    sub_1402A9C50
                mov     r9d, eax
                cmp     r10d, eax
                jnz     short loc_1406840BA

loc_1406840B2:                          ; CODE XREF: sub_140684094+40↓j
                                        ; sub_140684094+18E363↓j
                xor     eax, eax

loc_1406840B4:                          ; CODE XREF: sub_140684094+18E374↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406840BA:                          ; CODE XREF: sub_140684094+1C↑j
                or      ecx, 0FFFFFFFFh
                cmp     r10d, ecx
                jnz     loc_1408123FD
                or      eax, 0FFFFFFFFh
                lock cmpxchg [r8+1E0h], r9d
                cmp     eax, ecx
                jz      short loc_1406840B2
                jmp     loc_1408123F4
sub_140684094   endp

; ---------------------------------------------------------------------------
byte_1406840DB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140066938↑o
                                        ; .pdata:00000001401013AC↑o

; =============== S U B R O U T I N E =======================================


sub_1406840E4   proc near               ; CODE XREF: sub_140683368+2D1↑p
                                        ; sub_140685E64+121↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbx, rcx
                cmp     rcx, rdx
                jz      short loc_140684161
                and     r9d, 8000h

loc_140684108:                          ; CODE XREF: sub_1406840E4+5D↓j
                mov     eax, [rcx+0D4h]
                cmp     eax, 0FFFFFFFFh
                jz      short loc_14068411B
                inc     eax
                mov     [rcx+0D4h], eax

loc_14068411B:                          ; CODE XREF: sub_1406840E4+2D↑j
                inc     dword ptr [rcx+0D8h]
                inc     dword ptr [rcx+4C8h]
                test    r9d, r9d
                jnz     short loc_140684199
                mov     eax, [r8+87Ch]
                test    al, 20h
                jnz     short loc_140684199

loc_140684137:                          ; CODE XREF: sub_1406840E4+BB↓j
                mov     rcx, [rcx+430h]
                cmp     rcx, rdi
                jnz     short loc_140684108
                jmp     short loc_140684161
; ---------------------------------------------------------------------------

loc_140684145:                          ; CODE XREF: sub_1406840E4+80↓j
                lock and dword ptr [rbx+528h], 0FFDFFFFFh
                cmp     qword ptr [rbx+1C8h], 0
                jnz     short loc_140684177

loc_14068415A:                          ; CODE XREF: sub_1406840E4+9B↓j
                                        ; sub_1406840E4+B3↓j
                mov     rbx, [rbx+430h]

loc_140684161:                          ; CODE XREF: sub_1406840E4+1B↑j
                                        ; sub_1406840E4+5F↑j
                cmp     rbx, rdi
                jnz     short loc_140684145
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140684177:                          ; CODE XREF: sub_1406840E4+74↑j
                mov     eax, [rbx+36Ch]
                test    al, 40h
                jz      short loc_14068415A
                mov     r8, [rsi+440h]
                xor     r9d, r9d
                mov     rcx, rbx
                lea     edx, [r9+6]
                call    sub_14035740C
                jmp     short loc_14068415A
; ---------------------------------------------------------------------------

loc_140684199:                          ; CODE XREF: sub_1406840E4+46↑j
                                        ; sub_1406840E4+51↑j
                inc     dword ptr [rcx+4CCh]
                jmp     short loc_140684137
sub_1406840E4   endp

; ---------------------------------------------------------------------------
algn_1406841A1:                         ; DATA XREF: .pdata:00000001401013B8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406841A8   proc near               ; CODE XREF: sub_140683368+333↑p
                                        ; sub_140685E64+174↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081240E SIZE 0000006C BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_38], rax
                mov     r14, rcx
                xorps   xmm0, xmm0
                movups  [rsp+98h+var_68], xmm0
                movups  [rsp+98h+var_58], xmm0
                movups  [rsp+98h+var_48], xmm0
                mov     r12, gs:188h
                mov     r15, [rcx+510h]
                xor     esi, esi
                lea     r8, [rsp+98h+var_68]
                xor     edx, edx
                call    sub_1402D3C90
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [r12+1E6h], bx
                mov     dl, 1
                lea     rcx, [r15+38h]
                call    ExAcquireResourceExclusiveLite
                mov     rax, [r15+318h]
                mov     [rsp+98h+var_78], rax
                mov     rax, [r15+320h]
                mov     [rsp+98h+var_70], rax
                mov     r13d, [r15+350h]
                not     r13d
                and     r13d, 1
                inc     r13d
                xor     edx, edx
                lea     rcx, qword_140C13130
                call    ExAcquirePushLockExclusiveEx
                lock or dword ptr [r15+528h], 100h
                lea     rcx, [r15+38h]
                call    ExReleaseResourceLite
                cmp     r13d, 2
                jnz     loc_14081240E

loc_14068426F:                          ; CODE XREF: sub_1406841A8+18E27F↓j
                mov     edx, r13d
                mov     rcx, r14
                call    sub_1402B976C
                lock and dword ptr [r15+528h], 0FFFFFEFFh
                lock xadd cs:qword_140C13130, rbx
                and     bl, 6
                cmp     bl, 2
                jz      loc_140684351

loc_14068429B:                          ; CODE XREF: sub_1406841A8+1B5↓j
                lea     rcx, qword_140C13130
                call    sub_140243660
                mov     rcx, r12
                call    sub_140245770
                mov     rdi, [r14+550h]
                test    rdi, rdi
                jz      short loc_140684316
                mov     eax, [r14+464h]
                test    al, 8
                jnz     loc_140684362
                lea     rbx, [r14+458h]
                mov     [rsp+98h+var_78], rbx
                mov     rcx, rbx
                call    sub_14024C840
                test    al, al
                jz      loc_140812470
                xor     eax, eax
                mov     rcx, [r14+580h]
                test    rcx, rcx
                jnz     short loc_14068434C

loc_1406842F4:                          ; CODE XREF: sub_1406841A8+1A7↓j
                                        ; DATA XREF: .rdata:000000014006697C↑o
;   __try { // __except at loc_140684307
                lock bts dword ptr [rdi+50h], 0
                test    rax, rax
                jz      short loc_140684305
                lock bts dword ptr [rax+28h], 0

loc_140684305:                          ; CODE XREF: sub_1406841A8+155↑j
                jmp     short loc_14068430E
;   } // starts at 1406842F4
; ---------------------------------------------------------------------------

loc_140684307:                          ; DATA XREF: .rdata:000000014006697C↑o
;   __except(1) // owned by 1406842F4
                mov     esi, eax
                mov     rbx, [rsp+98h+var_78]

loc_14068430E:                          ; CODE XREF: sub_1406841A8:loc_140684305↑j
                mov     rcx, rbx
                call    sub_14024C380

loc_140684316:                          ; CODE XREF: sub_1406841A8+111↑j
                                        ; sub_1406841A8+1BC↓j ...
                xor     edx, edx
                lea     rcx, [rsp+98h+var_68]
                call    sub_14021E230
                mov     eax, esi
                mov     rcx, [rsp+98h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_28]
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
                align 4

loc_14068434C:                          ; CODE XREF: sub_1406841A8+14A↑j
                mov     rax, [rcx]
                jmp     short loc_1406842F4
; ---------------------------------------------------------------------------

loc_140684351:                          ; CODE XREF: sub_1406841A8+ED↑j
                lea     rcx, qword_140C13130
                call    ExfTryToWakePushLock
                jmp     loc_14068429B
; ---------------------------------------------------------------------------

loc_140684362:                          ; CODE XREF: sub_1406841A8+11C↑j
                xor     esi, esi
                jmp     short loc_140684316
; } // starts at 1406841A8
sub_1406841A8   endp

; ---------------------------------------------------------------------------
byte_140684366  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140066994↑o
                                        ; .pdata:00000001401013C4↑o

; =============== S U B R O U T I N E =======================================


sub_14068436C   proc near               ; CODE XREF: sub_140683368+353↑p
                                        ; sub_140685E64+187↓p
                                        ; DATA XREF: ...

var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014081247A SIZE 00000017 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                xorps   xmm0, xmm0
                xor     esi, esi
                movups  [rsp+88h+var_68], xmm0
                mov     edi, r8d
                mov     r15, rdx
                movups  [rsp+88h+var_58], xmm0
                mov     rbx, rcx
                movups  [rsp+88h+var_48], xmm0
                mov     r14, gs:188h
                cmp     [r14+0B8h], rcx
                jz      short loc_1406843D1
                lea     r8, [rsp+88h+var_68]
                xor     edx, edx
                mov     esi, 1
                call    sub_1402D3C90

loc_1406843D1:                          ; CODE XREF: sub_14068436C+52↑j
                or      r12, 0FFFFFFFFFFFFFFFFh
                xor     r9d, r9d
                mov     r8, r12
                mov     rdx, r12
                mov     rcx, rbx
                call    sub_14068459C
                mov     rbp, rax
                test    rax, rax
                jz      loc_14081247A

loc_1406843F2:                          ; CODE XREF: sub_14068436C+18E117↓j
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_1402699AC
                mov     rax, [rbx+510h]
                or      edi, 3
                mov     rdx, [rbx+648h]
                mov     ecx, edi
                mov     r9, r15
                mov     [rbx+4E8h], rax
                mov     r8, rbx
                call    sub_1406DEE60
                mov     dil, al
                lock or dword ptr [rbx+460h], 10h
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_1402697A8

loc_140684438:                          ; CODE XREF: sub_14068436C+18E120↓j
                xor     r9d, r9d
                mov     r8, rbp
                mov     rdx, r12
                mov     rcx, rbx
                call    sub_14068448C
                test    esi, esi
                jz      short loc_140684459
                xor     edx, edx
                lea     rcx, [rsp+88h+var_68]
                call    sub_14021E230

loc_140684459:                          ; CODE XREF: sub_14068436C+DF↑j
                movzx   eax, dil
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+40h]
                mov     rbp, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14068436C
sub_14068436C   endp

byte_140684484  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140066A00↑o
                                        ; .pdata:00000001401013D0↑o

; =============== S U B R O U T I N E =======================================


sub_14068448C   proc near               ; CODE XREF: sub_140280660+744↑p
                                        ; sub_140280660+7A5↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140812492 SIZE 0000000B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, gs:188h
                mov     r15d, r9d
                mov     r14, r8
                mov     rbp, rcx
                cmp     rdx, 0FFFFFFFFFFFFFFFFh
                jz      loc_140684570
                mov     rcx, rdx
                call    sub_14026A130
                mov     rdx, rax

loc_1406844CB:                          ; CODE XREF: sub_14068448C+FA↓j
                test    r14, r14
                jz      short loc_140684518

loc_1406844D0:                          ; CODE XREF: sub_14068448C+DC↓j
                mov     rbx, [rdx+8]
                mov     rcx, rdx
                test    rbx, rbx
                jnz     short loc_1406844F4
                mov     rbx, [rdx+10h]

loc_1406844E0:                          ; CODE XREF: sub_14068448C+66↓j
                and     rbx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_14068450A
                cmp     [rbx], rcx
                jz      short loc_14068450A
                mov     rcx, rbx
                mov     rbx, [rbx+10h]
                jmp     short loc_1406844E0
; ---------------------------------------------------------------------------

loc_1406844F4:                          ; CODE XREF: sub_14068448C+4E↑j
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_14068450A

loc_1406844FC:                          ; CODE XREF: sub_14068448C+7C↓j
                mov     rax, [rcx]
                mov     rbx, rcx
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1406844FC

loc_14068450A:                          ; CODE XREF: sub_14068448C+58↑j
                                        ; sub_14068448C+5D↑j ...
                cmp     r14, 1
                jnz     short loc_140684546
                mov     rcx, rsi
                call    sub_140266958

loc_140684518:                          ; CODE XREF: sub_14068448C+42↑j
                                        ; sub_14068448C+E2↓j
                mov     rdx, rbp
                mov     rcx, rsi
                test    r15d, r15d
                jnz     loc_140812492
                call    sub_140243130

loc_14068452C:                          ; CODE XREF: sub_14068448C+18E00C↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140684546:                          ; CODE XREF: sub_14068448C+82↑j
                lea     rdi, [rdx+28h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_14068458B

loc_140684559:                          ; CODE XREF: sub_14068448C+107↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rdx, rbx
                sub     r14, 1
                jnz     loc_1406844D0
                jmp     short loc_140684518
; ---------------------------------------------------------------------------

loc_140684570:                          ; CODE XREF: sub_14068448C+2E↑j
                mov     rax, [rcx+7D8h]
                xor     edx, edx
                jmp     short loc_140684581
; ---------------------------------------------------------------------------

loc_14068457B:                          ; CODE XREF: sub_14068448C+F8↓j
                mov     rdx, rax
                mov     rax, [rax]

loc_140684581:                          ; CODE XREF: sub_14068448C+ED↑j
                test    rax, rax
                jnz     short loc_14068457B
                jmp     loc_1406844CB
; ---------------------------------------------------------------------------

loc_14068458B:                          ; CODE XREF: sub_14068448C+CB↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_140684559
sub_14068448C   endp

; ---------------------------------------------------------------------------
byte_140684595  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140066A2C↑o
                                        ; .pdata:00000001401013DC↑o

; =============== S U B R O U T I N E =======================================


sub_14068459C   proc near               ; CODE XREF: sub_140280660+190↑p
                                        ; sub_1402DDFE0+1C9↑p ...

var_48          = xmmword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014081249E SIZE 00000116 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12, gs:188h
                xorps   xmm0, xmm0
                movups  [rsp+68h+var_48], xmm0
                mov     eax, r9d
                mov     rbx, rdx
                mov     r15, rcx
                mov     r13d, 1

loc_1406845DE:                          ; CODE XREF: sub_14068459C+18DFFB↓j
                mov     rdx, r15
                mov     rcx, r12
                test    eax, eax
                jnz     loc_14081249E
                call    sub_14026743C

loc_1406845F1:                          ; CODE XREF: sub_14068459C+18DF08↓j
                test    r13d, r13d
                jz      loc_1408125AD
                mov     eax, [r15+464h]
                test    al, 20h
                jnz     loc_1408125AD
                cmp     rbx, 0FFFFFFFFFFFFFFFFh
                jz      loc_14068470A
                mov     rcx, rbx
                call    sub_14026A130
                mov     rbp, rax

loc_14068461E:                          ; CODE XREF: sub_14068459C+184↓j
                xor     esi, esi
                mov     rdi, rbp
                xor     r14d, r14d

loc_140684626:                          ; CODE XREF: sub_14068459C+15C↓j
                test    rdi, rdi
                jz      short loc_14068464F
                mov     rbx, [rdi+8]
                mov     rcx, rdi
                test    rbx, rbx
                jnz     short loc_140684677
                mov     rbx, [rdi+10h]

loc_14068463B:                          ; CODE XREF: sub_14068459C+B1↓j
                and     rbx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_14068468D
                cmp     [rbx], rcx
                jz      short loc_14068468D
                mov     rcx, rbx
                mov     rbx, [rbx+10h]
                jmp     short loc_14068463B
; ---------------------------------------------------------------------------

loc_14068464F:                          ; CODE XREF: sub_14068459C+8D↑j
                cmp     r13d, 1
                jnz     short loc_14068465E
                test    r14d, r14d
                jnz     loc_14068472F

loc_14068465E:                          ; CODE XREF: sub_14068459C+B7↑j
                                        ; sub_14068459C+1BD↓j ...
                mov     rbx, [rsp+68h+arg_0]
                mov     rax, rsi
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
; ---------------------------------------------------------------------------

loc_140684677:                          ; CODE XREF: sub_14068459C+99↑j
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_14068468D

loc_14068467F:                          ; CODE XREF: sub_14068459C+EF↓j
                mov     rax, [rcx]
                mov     rbx, rcx
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_14068467F

loc_14068468D:                          ; CODE XREF: sub_14068459C+A3↑j
                                        ; sub_14068459C+A8↑j ...
                mov     rcx, [rsp+68h+arg_10]
                cmp     rcx, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406846BB
                movzx   edx, byte ptr [rdi+21h]
                mov     r8d, [rdi+1Ch]
                mov     eax, edx
                shl     rax, 20h
                or      rax, r8
                shl     rax, 0Ch
                cmp     rcx, rax
                ja      loc_1408124A9
                xor     ebx, ebx

loc_1406846BB:                          ; CODE XREF: sub_14068459C+FD↑j
                                        ; sub_14068459C+18DF2D↓j ...
                mov     rcx, rdi
                call    sub_140684768
                cmp     eax, 1
                jz      short loc_140684725
                test    rsi, rsi
                jnz     short loc_1406846FD
                mov     rdx, rdi
                mov     rcx, r12
                call    sub_140269778

loc_1406846D8:                          ; CODE XREF: sub_14068459C+16C↓j
                mov     rcx, rdi
                call    sub_140267550
                cmp     eax, 1
                jz      loc_1408124D9
                test    r13d, r13d
                jz      loc_1408124D9
                inc     rsi

loc_1406846F5:                          ; CODE XREF: sub_14068459C+191↓j
                mov     rdi, rbx
                jmp     loc_140684626
; ---------------------------------------------------------------------------

loc_1406846FD:                          ; CODE XREF: sub_14068459C+12F↑j
                lea     rcx, [rdi+28h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                jmp     short loc_1406846D8
; ---------------------------------------------------------------------------

loc_14068470A:                          ; CODE XREF: sub_14068459C+71↑j
                mov     rax, [r15+7D8h]
                xor     ebp, ebp
                jmp     short loc_14068471B
; ---------------------------------------------------------------------------

loc_140684715:                          ; CODE XREF: sub_14068459C+182↓j
                mov     rbp, rax
                mov     rax, [rax]

loc_14068471B:                          ; CODE XREF: sub_14068459C+177↑j
                test    rax, rax
                jnz     short loc_140684715
                jmp     loc_14068461E
; ---------------------------------------------------------------------------

loc_140684725:                          ; CODE XREF: sub_14068459C+12A↑j
                mov     qword ptr [rsp+r14*8+68h+var_48], rdi
                inc     r14d
                jmp     short loc_1406846F5
; ---------------------------------------------------------------------------

loc_14068472F:                          ; CODE XREF: sub_14068459C+BC↑j
                lea     rbx, [rsp+68h+var_48]
                mov     edi, r14d

loc_140684737:                          ; CODE XREF: sub_14068459C+1C3↓j
                mov     rcx, [rbx]
                test    rsi, rsi
                jz      loc_14081259C
                add     rcx, 28h ; '('
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx

loc_14068474E:                          ; CODE XREF: sub_14068459C+18E00C↓j
                inc     rsi
                add     rbx, 8
                sub     rdi, 1
                jz      loc_14068465E
                jmp     short loc_140684737
sub_14068459C   endp

; ---------------------------------------------------------------------------
algn_140684761:                         ; DATA XREF: .rdata:0000000140066A58↑o
                                        ; .pdata:00000001401013E8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140684768   proc near               ; CODE XREF: sub_14068459C+122↑p
                                        ; sub_14071C980+77↓p ...
                mov     rax, gs:188h
                xor     r8d, r8d
                mov     rdx, [rax+0B8h]
                mov     rax, [rdx+690h]
                add     rax, 1C8h

loc_140684788:                          ; CODE XREF: sub_140684768+30↓j
                cmp     [rax], rcx
                jz      short loc_14068479E
                inc     r8d
                add     rax, 20h ; ' '
                cmp     r8d, 2
                jb      short loc_140684788
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14068479E:                          ; CODE XREF: sub_140684768+23↑j
                mov     eax, 1
                retn
sub_140684768   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1406847A5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401013F4↑o

; =============== S U B R O U T I N E =======================================


sub_1406847AC   proc near               ; CODE XREF: sub_1405EB770+B5D↑p
                                        ; sub_1405EB770+C92↑p ...

var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                xorps   xmm0, xmm0
                movzx   ebp, dl
                or      rbx, 0FFFFFFFFFFFFFFFFh
                xor     r15d, r15d
                mov     rsi, rcx
                movups  [rsp+88h+var_68], xmm0
                lea     r12d, [rbx+2]
                movups  [rsp+88h+var_58], xmm0
                movups  [rsp+88h+var_48], xmm0
                mov     r14, gs:188h
                test    dl, dl
                jnz     loc_1406848AA
                add     [r14+1E4h], bx
                lea     rdi, [rcx+438h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rsi+5F0h]
                test    eax, eax
                jnz     short loc_14068484F
                prefetchw byte ptr [rsi+464h]
                mov     eax, [rsi+464h]

loc_140684835:                          ; CODE XREF: sub_1406847AC+99↓j
                mov     ecx, eax
                or      ecx, 2000008h
                lock cmpxchg [rsi+464h], ecx
                jnz     short loc_140684835
                bt      eax, 19h
                cmovnb  ebp, r12d

loc_14068484F:                          ; CODE XREF: sub_1406847AC+7A↑j
                mov     rax, rbx
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_140684865
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_140684865:                          ; CODE XREF: sub_1406847AC+AF↑j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, r14
                call    sub_14021E1F0
                test    bpl, bpl
                jnz     short loc_1406848AA
                mov     rcx, rsi
                call    sub_140639CB4
                test    rax, rax
                jz      loc_140684B77
                mov     r8b, r12b
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1406EC040
                lea     rcx, [rsi+458h]
                call    sub_14024C380
                jmp     loc_140684B77
; ---------------------------------------------------------------------------

loc_1406848AA:                          ; CODE XREF: sub_1406847AC+53↑j
                                        ; sub_1406847AC+CC↑j
                lea     rdi, [rsi+458h]
                mov     rcx, rdi
                call    ExWaitForRundownProtectionRelease
                mov     rcx, rdi
                call    ExRundownCompleted
                mov     rax, [rsi+510h]
                test    rax, rax
                jz      loc_140684970
                lea     r9, [rsi+460h]
                mov     eax, [r9]
                test    r12b, al
                jnz     loc_140684970
                mov     ecx, [rsi+7D4h]
                mov     r10d, 8
                lea     eax, [rcx+3FFFFF74h]
                cmp     eax, 0Ah
                jbe     short loc_14068494A
                lea     eax, [rcx+7FFFFFFFh]
                cmp     eax, 3
                jbe     short loc_14068494A
                lea     eax, [rcx+3FFFFFFBh]
                cmp     eax, 21h ; '!'
                ja      short loc_140684921
                mov     rdx, 301000003h
                bt      rdx, rax
                jb      short loc_14068494A

loc_140684921:                          ; CODE XREF: sub_1406847AC+163↑j
                cmp     ecx, 0C00000FDh
                jz      short loc_14068494A
                cmp     ecx, 0C000013Ah
                jz      short loc_14068494A
                lea     eax, [rcx+3FFFFD4Ch]
                cmp     eax, r12d
                jbe     short loc_14068494A
                mov     r11d, 7
                cmp     ecx, 0C00002C9h
                jnz     short loc_14068494D

loc_14068494A:                          ; CODE XREF: sub_1406847AC+14D↑j
                                        ; sub_1406847AC+158↑j ...
                mov     r11, r10

loc_14068494D:                          ; CODE XREF: sub_1406847AC+19C↑j
                mov     r8d, 20h ; ' '
                mov     edx, r10d
                mov     rcx, r9
                call    sub_1402B9B40
                mov     r8, [rsi+440h]
                mov     rdx, r11
                mov     rcx, rsi
                call    sub_140684CDC

loc_140684970:                          ; CODE XREF: sub_1406847AC+11F↑j
                                        ; sub_1406847AC+132↑j
                cmp     [rsi+3E0h], r15
                jz      short loc_140684981
                mov     rcx, rsi
                call    sub_140513B7C

loc_140684981:                          ; CODE XREF: sub_1406847AC+1CB↑j
                mov     r12d, 40000h
                test    [rsi+464h], r12d
                jz      short loc_1406849C4
                lea     r8, [rsp+88h+var_68]
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402D3C90
                cmp     [rsi+570h], r15
                jz      short loc_1406849B0
                mov     rcx, rsi
                call    sub_1405E7808

loc_1406849B0:                          ; CODE XREF: sub_1406847AC+1FA↑j
                mov     rcx, rsi
                call    sub_14065AB68
                xor     edx, edx
                lea     rcx, [rsp+88h+var_68]
                call    sub_14021E230

loc_1406849C4:                          ; CODE XREF: sub_1406847AC+1E2↑j
                cmp     [rsi+8C8h], r15
                jz      short loc_140684A32
                add     [r14+1E4h], bx
                lea     rdi, [rsi+8D8h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rsi+8C8h]
                xor     edx, edx
                mov     rcx, [rcx+8]
                call    ExFreePoolWithTag
                mov     rcx, [rsi+8C8h]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rsi+8C8h], r15
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_140684A22
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_140684A22:                          ; CODE XREF: sub_1406847AC+26C↑j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, r14
                call    sub_14021E1F0

loc_140684A32:                          ; CODE XREF: sub_1406847AC+21F↑j
                mov     rcx, [rsi+0A00h]
                test    rcx, rcx
                jz      short loc_140684A7C

loc_140684A3E:                          ; CODE XREF: sub_1406847AC+2A3↓j
                                        ; sub_1406847AC+2B8↓j ...
                mov     rdx, [rcx]
                test    rdx, rdx
                jz      short loc_140684A51
                mov     rax, rcx
                mov     rcx, rdx
                mov     [rax], r15
                jmp     short loc_140684A3E
; ---------------------------------------------------------------------------

loc_140684A51:                          ; CODE XREF: sub_1406847AC+298↑j
                mov     rdx, [rcx+8]
                test    rdx, rdx
                jz      short loc_140684A66
                mov     rax, rcx
                mov     rcx, rdx
                mov     [rax+8], r15
                jmp     short loc_140684A3E
; ---------------------------------------------------------------------------

loc_140684A66:                          ; CODE XREF: sub_1406847AC+2AC↑j
                mov     rbx, [rcx+10h]
                xor     edx, edx
                call    sub_140718840
                and     rbx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_140684A7C
                mov     rcx, rbx
                jmp     short loc_140684A3E
; ---------------------------------------------------------------------------

loc_140684A7C:                          ; CODE XREF: sub_1406847AC+290↑j
                                        ; sub_1406847AC+2C9↑j
                mov     [rsi+0A00h], r15
                mov     rcx, [rsi+0A10h]
                test    rcx, rcx
                jz      short loc_140684ACD

loc_140684A8F:                          ; CODE XREF: sub_1406847AC+2F4↓j
                                        ; sub_1406847AC+309↓j ...
                mov     rdx, [rcx]
                test    rdx, rdx
                jz      short loc_140684AA2
                mov     rax, rcx
                mov     rcx, rdx
                mov     [rax], r15
                jmp     short loc_140684A8F
; ---------------------------------------------------------------------------

loc_140684AA2:                          ; CODE XREF: sub_1406847AC+2E9↑j
                mov     rdx, [rcx+8]
                test    rdx, rdx
                jz      short loc_140684AB7
                mov     rax, rcx
                mov     rcx, rdx
                mov     [rax+8], r15
                jmp     short loc_140684A8F
; ---------------------------------------------------------------------------

loc_140684AB7:                          ; CODE XREF: sub_1406847AC+2FD↑j
                mov     rbx, [rcx+10h]
                xor     edx, edx
                call    sub_140718840
                and     rbx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_140684ACD
                mov     rcx, rbx
                jmp     short loc_140684A8F
; ---------------------------------------------------------------------------

loc_140684ACD:                          ; CODE XREF: sub_1406847AC+2E1↑j
                                        ; sub_1406847AC+31A↑j
                mov     [rsi+0A10h], r15
                mov     rax, [rsi+0A28h]
                test    rax, rax
                jz      short loc_140684AF5
                mov     rcx, [rsi+0A28h]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rsi+0A28h], r15

loc_140684AF5:                          ; CODE XREF: sub_1406847AC+332↑j
                mov     rcx, [rsi+518h]
                test    rcx, rcx
                jz      short loc_140684B0D
                mov     [rsi+518h], r15
                call    PsDereferenceSiloContext

loc_140684B0D:                          ; CODE XREF: sub_1406847AC+353↑j
                mov     rcx, [rsi+5A0h]
                test    rcx, rcx
                jz      short loc_140684B2A
                mov     edx, 72437350h
                call    ObfDereferenceObjectWithTag
                mov     [rsi+5A0h], r15

loc_140684B2A:                          ; CODE XREF: sub_1406847AC+36B↑j
                test    [rsi+464h], r12d
                jz      short loc_140684B3B
                mov     rcx, rsi
                call    sub_1402B990C

loc_140684B3B:                          ; CODE XREF: sub_1406847AC+385↑j
                mov     rax, [rsi+510h]
                test    rax, rax
                jz      short loc_140684B60
                xor     r9d, r9d
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [r9+4]
                call    sub_140684DA0
                mov     rcx, rsi
                call    sub_140684BA8

loc_140684B60:                          ; CODE XREF: sub_1406847AC+399↑j
                mov     rdx, [rsi+440h]
                test    rdx, rdx
                jz      short loc_140684B77
                mov     r8, rsi
                mov     rcx, r14
                call    sub_140664048

loc_140684B77:                          ; CODE XREF: sub_1406847AC+D9↑j
                                        ; sub_1406847AC+F9↑j ...
                mov     al, bpl
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406847AC
sub_1406847AC   endp

algn_140684BA1:                         ; DATA XREF: .pdata:0000000140101400↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140684BA8   proc near               ; CODE XREF: sub_1406847AC+3AF↑p
                                        ; DATA XREF: .pdata:000000014010140C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                lock bts dword ptr [rcx+460h], 0Bh
                mov     rbx, [rcx+510h]
                setnb   dil
                jmp     short loc_140684BDD
; ---------------------------------------------------------------------------

loc_140684BC8:                          ; CODE XREF: sub_140684BA8+38↓j
                mov     r8b, 1
                mov     dl, dil
                mov     rcx, rbx
                call    sub_140684BF4
                mov     rbx, [rbx+430h]

loc_140684BDD:                          ; CODE XREF: sub_140684BA8+1E↑j
                test    rbx, rbx
                jnz     short loc_140684BC8
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140684BA8   endp

byte_140684BEE  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010140C↑o

; =============== S U B R O U T I N E =======================================


sub_140684BF4   proc near               ; CODE XREF: sub_140684BA8+29↑p
                                        ; sub_140715FF8+9A↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, gs:188h
                mov     bl, dl
                mov     rdx, rsi
                mov     bpl, r8b
                mov     rdi, rcx
                call    sub_140605524
                mov     eax, [rdi+4C8h]
                test    bl, bl
                jz      short loc_140684C33
                dec     eax
                mov     [rdi+4C8h], eax

loc_140684C33:                          ; CODE XREF: sub_140684BF4+35↑j
                test    eax, eax
                jz      short loc_140684C58

loc_140684C37:                          ; CODE XREF: sub_140684BF4+78↓j
                                        ; sub_140684BF4+AA↓j ...
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1406054E0
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140684C58:                          ; CODE XREF: sub_140684BF4+41↑j
                lock btr dword ptr [rdi+528h], 7
                jb      short loc_140684CC4

loc_140684C63:                          ; CODE XREF: sub_140684BF4+DD↓j
                lock bts dword ptr [rdi+528h], 15h
                jb      short loc_140684C37
                test    bpl, bpl
                jz      short loc_140684C94
                cmp     qword ptr [rdi+1C8h], 0
                jz      short loc_140684C94
                mov     eax, [rdi+36Ch]
                test    al, 10h
                jz      short loc_140684C94
                mov     edx, 4
                mov     rcx, rdi
                call    sub_1406DFE6C

loc_140684C94:                          ; CODE XREF: sub_140684BF4+7D↑j
                                        ; sub_140684BF4+87↑j ...
                test    dword ptr [rdi+100h], 400000h
                jz      short loc_140684C37
                lock bts dword ptr [rdi+528h], 1Dh
                jb      short loc_140684C37
                test    dword ptr [rdi+528h], 40000000h
                jz      short loc_140684C37
                mov     rcx, rdi
                call    sub_14020091C
                jmp     loc_140684C37
; ---------------------------------------------------------------------------

loc_140684CC4:                          ; CODE XREF: sub_140684BF4+6D↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    KeSetEvent
                jmp     short loc_140684C63
sub_140684BF4   endp

; ---------------------------------------------------------------------------
byte_140684CD3  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140101418↑o

; =============== S U B R O U T I N E =======================================


sub_140684CDC   proc near               ; CODE XREF: sub_1406847AC+1BF↑p
                                        ; DATA XREF: .pdata:0000000140101424↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, gs:188h
                lea     r9, [rax-18h]
                and     qword ptr [rax-10h], 0
                mov     rbp, r8
                and     qword ptr [rax-18h], 0
                lea     r8, [rax-10h]
                mov     rdi, rdx
                mov     rdx, rsi
                call    sub_140685094
                mov     rbx, [rsp+38h+var_10]
                jmp     short loc_140684D4B
; ---------------------------------------------------------------------------

loc_140684D20:                          ; CODE XREF: sub_140684CDC+72↓j
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rbx
                call    sub_140685064
                cmp     qword ptr [rbx+1C8h], 0
                jnz     short loc_140684D73

loc_140684D37:                          ; CODE XREF: sub_140684CDC+A7↓j
                                        ; sub_140684CDC+BA↓j
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rbx
                call    sub_140605D3C
                mov     rbx, [rbx+430h]

loc_140684D4B:                          ; CODE XREF: sub_140684CDC+42↑j
                test    rbx, rbx
                jnz     short loc_140684D20
                mov     rcx, [rsp+38h+var_18]
                mov     rdx, rsi
                call    sub_1406054E0
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140684D73:                          ; CODE XREF: sub_140684CDC+59↑j
                mov     rcx, rdi
                mov     edx, 1
                shl     edx, cl
                test    [rbx+36Ch], edx
                jz      short loc_140684D37
                xor     r9d, r9d
                mov     r8, rbp
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14035740C
                jmp     short loc_140684D37
sub_140684CDC   endp

; ---------------------------------------------------------------------------
algn_140684D98:                         ; DATA XREF: .pdata:0000000140101424↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140684DA0   proc near               ; CODE XREF: sub_1405F3400+157↑p
                                        ; sub_1406847AC+3A7↑p ...

var_C0          = byte ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = byte ptr -0A0h
arg_0           = byte ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408125B4 SIZE 0000009B BYTES

                mov     rax, rsp
                mov     [rax+20h], rbx
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                xor     r15d, r15d
                mov     ebx, r9d
                test    dword ptr [rcx+87Ch], 1000h
                mov     r14d, r8d
                mov     rdi, rcx
                mov     [rbp+57h+var_B0], r15
                mov     [rbp+57h+var_B8], r15
                jnz     loc_1408125B4

loc_140684DE9:                          ; CODE XREF: sub_140684DA0+18D81E↓j
                xor     edx, edx
                lea     rcx, [rbp+57h+var_A0]
                lea     r8d, [rdx+68h]
                call    memset
                mov     rsi, gs:188h
                lock bts dword ptr [rdi+460h], 0
                mov     [rbp+57h+var_A8], rsi
                setnb   r12b
                mov     [rbp+57h+var_C0], r15b
                mov     [rbp+57h+arg_0], r12b
                test    r14b, 2
                jnz     loc_140685024

loc_140684E24:                          ; CODE XREF: sub_140684DA0+29D↓j
                                        ; sub_140684DA0+2B1↓j
                lea     r9, [rbp+57h+var_B8]
                mov     rdx, rsi
                lea     r8, [rbp+57h+var_B0]
                mov     rcx, rdi
                mov     r13d, 1
                call    sub_140685094
                test    dword ptr cs:xmmword_140CFC480, 80000h
                jnz     loc_1408125C3

loc_140684E4D:                          ; CODE XREF: sub_140684DA0+18D832↓j
                test    r14b, 4
                jz      short loc_140684E75
                lock bts dword ptr [rdi+460h], 1
                jb      short loc_140684E75
                lock and dword ptr [rdi+460h], 0FFFFFFDFh
                lea     rdx, [rbp+57h+var_A0]
                mov     rcx, rdi
                call    sub_140605A70
                mov     r15b, r13b

loc_140684E75:                          ; CODE XREF: sub_140684DA0+B1↑j
                                        ; sub_140684DA0+BC↑j
                mov     rbx, [rbp+57h+var_B0]
                test    rbx, rbx
                jz      short loc_140684EE7
                mov     rsi, [rbp+57h+arg_8]
                mov     r12d, r14d
                mov     r14b, [rbp+57h+arg_0]
                and     r12d, 8

loc_140684E8D:                          ; CODE XREF: sub_140684DA0+135↓j
                lea     rdx, [rbp+57h+var_B8]
                mov     rcx, rbx
                call    sub_140685064
                xor     edx, edx
                test    r14b, r14b
                jnz     loc_140684FDA

loc_140684EA4:                          ; CODE XREF: sub_140684DA0+24B↓j
                                        ; sub_140684DA0+257↓j
                test    r12d, r12d
                jnz     loc_1408125D7

loc_140684EAD:                          ; CODE XREF: sub_140684DA0+18D83A↓j
                                        ; sub_140684DA0+18D846↓j
                test    rsi, rsi
                jnz     loc_1408125EB

loc_140684EB6:                          ; CODE XREF: sub_140684DA0+18D856↓j
                                        ; sub_140684DA0+18D863↓j ...
                test    r15b, r15b
                jnz     loc_140684F6B

loc_140684EBF:                          ; CODE XREF: sub_140684DA0+203↓j
                                        ; sub_140684DA0+21D↓j ...
                lea     rdx, [rbp+57h+var_B8]
                mov     rcx, rbx
                call    sub_140605D3C
                mov     rbx, [rbx+430h]
                test    rbx, rbx
                jnz     short loc_140684E8D
                mov     rbx, [rbp+57h+var_B0]
                mov     rsi, [rbp+57h+var_A8]
                mov     r14d, [rbp+57h+arg_10]
                mov     r12b, [rbp+57h+arg_0]

loc_140684EE7:                          ; CODE XREF: sub_140684DA0+DC↑j
                lea     rdx, [rbp+57h+var_B8]
                mov     rcx, rbx
                call    sub_140685064
                test    r14b, 1
                jnz     loc_140684FFC
                xor     ecx, ecx
                test    r12b, r12b
                jz      short loc_140684F20
                mov     eax, [rdi+460h]
                test    al, 4
                jz      short loc_140684F20
                cmp     [rbp+57h+var_C0], cl
                jnz     short loc_140684F20
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140685D18

loc_140684F20:                          ; CODE XREF: sub_140684DA0+162↑j
                                        ; sub_140684DA0+16C↑j ...
                lea     rdx, [rbp+57h+var_B8]
                mov     rcx, rbx
                call    sub_140605D3C
                mov     rcx, [rbp+57h+var_B8]
                mov     rdx, rsi
                call    sub_1406054E0
                dec     word ptr [rsi+1E4h]
                mov     rcx, rdi
                call    sub_140685128
                mov     rcx, rsi
                call    sub_14021E1F0

loc_140684F4F:                          ; CODE XREF: sub_140684DA0+27F↓j
                                        ; sub_140684DA0+18D818↓j
                mov     rbx, [rsp+0E0h+arg_18]
                add     rsp, 0B0h
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
; ---------------------------------------------------------------------------

loc_140684F6B:                          ; CODE XREF: sub_140684DA0+119↑j
                lea     r8, [rbp+57h+var_A0]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140685388
                mov     rax, [rdi+510h]
                cmp     rbx, rax
                jnz     loc_140685056
                mov     eax, cs:dword_140D2D138
                mov     edx, 0
                cmp     [rbx+4D0h], eax
                cmovnz  r13d, edx

loc_140684F9F:                          ; CODE XREF: sub_140684DA0+2B8↓j
                cmp     r13d, 1
                jnz     loc_140684EBF
                lea     r8, [rbx+460h]
                lea     rcx, [rbx+4C8h]
                mov     rax, r8
                cmp     r8, rcx
                jnb     loc_140684EBF

loc_140684FC3:                          ; CODE XREF: sub_140684DA0+233↓j
                cmp     [rax], rdx
                jnz     loc_140812638
                add     rax, 8
                cmp     rax, rcx
                jb      short loc_140684FC3
                jmp     loc_140684EBF
; ---------------------------------------------------------------------------

loc_140684FDA:                          ; CODE XREF: sub_140684DA0+FE↑j
                or      ecx, 0FFFFFFFFh
                add     [rbx+0D8h], ecx
                mov     eax, [rdi+87Ch]
                test    al, 20h
                jz      loc_140684EA4
                add     [rbx+4CCh], ecx
                jmp     loc_140684EA4
; ---------------------------------------------------------------------------

loc_140684FFC:                          ; CODE XREF: sub_140684DA0+157↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140685500
                lea     rdx, [rbp+57h+var_B8]
                mov     rcx, rbx
                call    sub_140605D3C
                mov     rcx, [rbp+57h+var_B8]
                mov     rdx, rsi
                call    sub_1406054E0
                jmp     loc_140684F4F
; ---------------------------------------------------------------------------

loc_140685024:                          ; CODE XREF: sub_140684DA0+7E↑j
                test    dword ptr [rdi+464h], 4000000h
                setnz   cl
                test    byte ptr [rdi+87Ch], 40h
                setz    al
                test    al, cl
                jz      loc_140684E24
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14071BF0C
                mov     [rbp+57h+var_C0], 1
                jmp     loc_140684E24
; ---------------------------------------------------------------------------

loc_140685056:                          ; CODE XREF: sub_140684DA0+1E4↑j
                xor     edx, edx
                jmp     loc_140684F9F
sub_140684DA0   endp

; ---------------------------------------------------------------------------
byte_14068505D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140066B08↑o
                                        ; .pdata:0000000140101430↑o

; =============== S U B R O U T I N E =======================================


sub_140685064   proc near               ; CODE XREF: sub_14030CB40+2D1↑p
                                        ; sub_14030CB40+15FD5B↑p ...
                sub     rsp, 28h
                xor     eax, eax

loc_14068506A:                          ; CODE XREF: sub_140685064+1A↓j
                cmp     rcx, [rdx]
                jnz     short loc_140685075

loc_14068506F:                          ; CODE XREF: sub_140685064+27↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140685075:                          ; CODE XREF: sub_140685064+9↑j
                inc     eax
                add     rdx, 8
                cmp     eax, 1
                jb      short loc_14068506A
                add     rcx, 38h ; '8'
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                jmp     short loc_14068506F
sub_140685064   endp

; ---------------------------------------------------------------------------
byte_14068508D  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010143C↑o

; =============== S U B R O U T I N E =======================================


sub_140685094   proc near               ; CODE XREF: sub_140684CDC+38↑p
                                        ; sub_140684DA0+98↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140812650 SIZE 00000032 BYTES

                mov     [rsp+arg_8], rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rax, [rcx+510h]
                mov     rsi, r9
                mov     [rsp+38h+arg_0], rax
                mov     r14, r8
                mov     rax, [rsp+38h+arg_0]
                mov     rdi, rdx
                mov     rbx, rcx
                mov     r10, [rax+438h]
                mov     [rsp+38h+arg_10], r10

loc_1406850CA:                          ; CODE XREF: sub_140685094+18D5E9↓j
                mov     rcx, [rsp+38h+arg_10]
                call    sub_140605524
                mov     rdx, [rsp+38h+arg_0]
                mov     rax, [rbx+510h]
                cmp     rdx, rax
                jnz     loc_140812650
                mov     rax, [rsp+38h+arg_0]
                mov     rcx, [rax+438h]
                mov     rax, [rsp+38h+arg_10]
                cmp     rax, rcx
                jnz     loc_140812650
                mov     rax, [rsp+38h+arg_0]
                mov     rbx, [rsp+38h+arg_8]
                mov     [r14], rax
                mov     rax, [rsp+38h+arg_10]
                mov     [rsi], rax
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140685094   endp

algn_140685122:                         ; DATA XREF: .rdata:0000000140066B2C↑o
                                        ; .pdata:0000000140101448↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140685128   proc near               ; CODE XREF: sub_140322E90+64↑p
                                        ; sub_140683368+37B↑p ...

var_98          = byte ptr -98h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140812682 SIZE 00000022 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_30], rax
                xorps   xmm0, xmm0
                mov     [rsp+0B8h+var_98], 0
                xorps   xmm1, xmm1
                xor     r15d, r15d
                movups  [rsp+0B8h+var_60], xmm0
                xor     r13b, r13b
                mov     rdi, rcx
                movups  [rsp+0B8h+var_50], xmm0
                movups  [rsp+0B8h+var_40], xmm0
                movups  [rsp+0B8h+var_90], xmm1
                movups  [rsp+0B8h+var_80], xmm1
                movups  [rsp+0B8h+var_70], xmm1
                prefetchw byte ptr [rcx+460h]
                mov     eax, [rcx+460h]
                xor     ebp, ebp
                mov     edx, 40000000h

loc_14068519F:                          ; CODE XREF: sub_140685128+D0↓j
                test    edx, eax
                jnz     short loc_1406851B7
                mov     ebx, eax
                mov     esi, eax
                shr     ebx, 1Ch
                shr     esi, 16h
                and     ebx, 3
                and     esi, 3
                cmp     ebx, esi
                jnz     short loc_1406851EC

loc_1406851B7:                          ; CODE XREF: sub_140685128+79↑j
                                        ; sub_140685128+1D1↓j ...
                mov     eax, r15d
                mov     rcx, [rsp+0B8h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406851EC:                          ; CODE XREF: sub_140685128+8D↑j
                mov     ecx, eax
                or      ecx, edx
                lock cmpxchg [rdi+460h], ecx
                jnz     short loc_14068519F

loc_1406851FA:                          ; CODE XREF: sub_140685128+24E↓j
                mov     r14d, ebx
                xor     r12b, r12b
                xor     r14d, esi
                test    r13b, r13b
                jnz     short loc_14068524B
                lea     r8, [rsp+0B8h+var_60]
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402D3C90
                mov     rcx, rdi
                call    sub_140245840
                cmp     eax, 0FFFFFFFFh
                jz      short loc_140685248
                mov     ecx, eax
                call    sub_140261EA0
                mov     rbp, rax
                test    rax, rax
                jz      short loc_140685248
                lea     rdx, [rsp+0B8h+var_90]
                mov     rcx, rax
                call    sub_1402E67F0
                test    eax, eax
                js      loc_140812682

loc_140685248:                          ; CODE XREF: sub_140685128+FA↑j
                                        ; sub_140685128+109↑j ...
                mov     r13b, 1

loc_14068524B:                          ; CODE XREF: sub_140685128+DE↑j
                test    r14b, 2
                jnz     loc_140685330

loc_140685255:                          ; CODE XREF: sub_140685128+210↓j
                                        ; sub_140685128+227↓j
                test    r14b, 1
                jz      short loc_140685279
                mov     r14b, 1
                mov     rcx, rdi
                mov     [rsp+0B8h+var_98], r14b
                mov     dl, r14b
                test    r14b, bl
                jz      loc_14068533D
                call    sub_1406A9274
                jmp     short loc_14068527E
; ---------------------------------------------------------------------------

loc_140685279:                          ; CODE XREF: sub_140685128+131↑j
                mov     r14b, [rsp+0B8h+var_98]

loc_14068527E:                          ; CODE XREF: sub_140685128+14F↑j
                                        ; sub_140685128+21A↓j
                mov     esi, ebx
                test    r12b, r12b
                jnz     loc_140685354

loc_140685289:                          ; CODE XREF: sub_140685128+241↓j
                                        ; sub_140685128+18D577↓j
                prefetchw byte ptr [rdi+460h]
                mov     edx, [rdi+460h]
                mov     r8d, ebx

loc_140685299:                          ; CODE XREF: sub_140685128+1A1↓j
                mov     ebx, edx
                shr     ebx, 1Ch
                and     ebx, 3
                cmp     ebx, r8d
                jnz     loc_140685374

loc_1406852AA:                          ; CODE XREF: sub_140685128+254↓j
                mov     ecx, esi
                mov     eax, edx
                shl     ecx, 6
                and     eax, 8F3FFFFFh
                or      ecx, esi
                shl     ecx, 16h
                or      ecx, eax
                mov     eax, edx
                lock cmpxchg [rdi+460h], ecx
                mov     edx, eax
                jnz     short loc_140685299
                test    r13b, r13b
                jz      short loc_1406852F6
                test    rbp, rbp
                jz      short loc_1406852EA
                lea     rdx, [rsp+0B8h+var_90]
                mov     rcx, rbp
                call    sub_1402E6750
                mov     rcx, rbp
                call    PsDereferenceSiloContext

loc_1406852EA:                          ; CODE XREF: sub_140685128+1AB↑j
                xor     edx, edx
                lea     rcx, [rsp+0B8h+var_60]
                call    sub_14021E230

loc_1406852F6:                          ; CODE XREF: sub_140685128+1A6↑j
                test    r14b, r14b
                jz      loc_1406851B7
                mov     rcx, cs:qword_140CFC970
                call    sub_140309D44
                test    rax, rax
                jz      loc_1406851B7
                mov     rax, [rax]
                mov     rcx, rdi
                call    sub_1404079D0
                mov     rcx, cs:qword_140CFC970
                call    sub_140309D28
                jmp     loc_1406851B7
; ---------------------------------------------------------------------------

loc_140685330:                          ; CODE XREF: sub_140685128+127↑j
                test    bl, 2
                jz      short loc_140685347
                mov     r12b, 1
                jmp     loc_140685255
; ---------------------------------------------------------------------------

loc_14068533D:                          ; CODE XREF: sub_140685128+144↑j
                call    sub_1407117D4
                jmp     loc_14068527E
; ---------------------------------------------------------------------------

loc_140685347:                          ; CODE XREF: sub_140685128+20B↑j
                mov     rcx, rdi
                call    sub_140306908
                jmp     loc_140685255
; ---------------------------------------------------------------------------

loc_140685354:                          ; CODE XREF: sub_140685128+15B↑j
                xor     edx, edx
                mov     rcx, rdi
                cmp     cs:dword_140CF4CDC, edx
                setnz   dl
                call    sub_140306BD4
                test    eax, eax
                jns     loc_140685289
                jmp     loc_140812691
; ---------------------------------------------------------------------------

loc_140685374:                          ; CODE XREF: sub_140685128+17C↑j
                cmp     ebx, esi
                jnz     loc_1406851FA
                jmp     loc_1406852AA
; } // starts at 140685128
sub_140685128   endp

; ---------------------------------------------------------------------------
algn_140685381:                         ; DATA XREF: .rdata:0000000140066B68↑o
                                        ; .pdata:0000000140101454↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140685388   proc near               ; CODE XREF: sub_140684DA0+1D5↑p
                                        ; DATA XREF: .rdata:0000000140066B98↑o ...

var_1C8         = byte ptr -1C8h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408126A4 SIZE 0000002D BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 1E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1E8h+var_18], rax
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                mov     r8d, 1B0h
                lea     rcx, [rsp+1E8h+var_1C8]
                call    memset
                mov     rdx, [rsi+8]
                mov     r8, rsi
                mov     rcx, [rsi]
                mov     rax, [rsi+10h]
                add     [rbx+400h], rax
                mov     rax, [rsi+18h]
                add     [rbx+0B0h], rax
                add     [rbx+0A0h], rdx
                add     [rbx+0A8h], rcx
                add     [rbx+0B8h], rdx
                mov     edx, 6
                add     [rbx+0C0h], rcx
                lea     rcx, [rbx+1E8h]
                mov     rax, [rsi+20h]
                add     [rbx+0C8h], rax
                sub     r8, rbx

loc_14068541D:                          ; CODE XREF: sub_140685388+A8↓j
                mov     rax, [r8+rcx-1C0h]
                add     [rcx], rax
                lea     rcx, [rcx+8]
                sub     rdx, 1
                jnz     short loc_14068541D
                mov     eax, [rdi+684h]
                add     [rbx+0D0h], eax
                mov     rax, [rsi+58h]
                add     [rbx+630h], rax
                mov     rax, [rsi+60h]
                add     [rbx+638h], rax
                mov     rcx, [rdi+8B8h]
                test    rcx, rcx
                jz      short loc_140685496
                mov     rax, [rcx]
                add     [rbx+218h], rax
                mov     rax, [rcx+8]
                add     [rbx+220h], rax
                mov     rax, [rcx+10h]
                add     [rbx+228h], rax
                mov     rax, [rcx+18h]
                add     [rbx+230h], rax
                mov     rax, [rcx+20h]
                add     [rbx+238h], rax

loc_140685496:                          ; CODE XREF: sub_140685388+D6↑j
                mov     rdx, [rdi+650h]
                cmp     rdx, [rbx+258h]
                ja      loc_1408126A4

loc_1406854AA:                          ; CODE XREF: sub_140685388+18D339↓j
                                        ; sub_140685388+18D344↓j
                call    PoEnergyEstimationEnabled
                test    al, al
                jz      short loc_1406854D1
                lea     rdx, [rsp+1E8h+var_1C8]
                mov     rcx, rdi
                call    sub_140618E00
                mov     rcx, [rbx+530h]
                lea     rdx, [rsp+1E8h+var_1C8]
                call    sub_140213130

loc_1406854D1:                          ; CODE XREF: sub_140685388+129↑j
                mov     rcx, [rsp+1E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1E8h+var_8]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140685388
sub_140685388   endp

algn_1406854F7:                         ; DATA XREF: .rdata:0000000140066B98↑o
                                        ; .pdata:0000000140101460↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140685500   proc near               ; CODE XREF: sub_140683BE0+1A8↑p
                                        ; sub_140684DA0+262↑p ...

; FUNCTION CHUNK AT 00000001408126D2 SIZE 00000025 BYTES

                lea     r8, [rcx+440h]
                mov     rcx, [r8]
                cmp     rcx, r8
                jnz     loc_1408126D2

loc_140685513:                          ; CODE XREF: sub_140685500+18D1F2↓j
                lea     rax, [rdx+5C8h]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     short loc_140685535
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     short loc_140685535
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140685535:                          ; CODE XREF: sub_140685500+21↑j
                                        ; sub_140685500+2A↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140685500   endp

; ---------------------------------------------------------------------------
byte_14068553C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010146C↑o

; =============== S U B R O U T I N E =======================================


sub_140685544   proc near               ; CODE XREF: sub_140683368+2DF↑p
                                        ; sub_140685E64+12E↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     rcx, r8
                mov     rbx, r8
                call    sub_140685D64
                mov     rdx, [rdi+3F8h]
                xor     ebp, ebp
                test    rdx, rdx
                jnz     loc_1406855FF

loc_14068557D:                          ; CODE XREF: sub_140685544+D1↓j
                cmp     ebp, [rdi+360h]
                sbb     ecx, ecx
                and     ecx, 2
                mov     edx, ecx
                or      edx, 1
                cmp     [rdi+358h], ebp
                cmovz   edx, ecx
                xor     r8d, r8d
                mov     rcx, rbx
                call    sub_140685D18
                cmp     [rdi+35Ch], ebp
                ja      short loc_14068561A

loc_1406855A9:                          ; CODE XREF: sub_140685544+E8↓j
                                        ; sub_140685544+10F↓j
                test    dword ptr [rdi+528h], 40000h
                jnz     short loc_1406855F4

loc_1406855B5:                          ; CODE XREF: sub_140685544+B9↓j
                mov     r8, [rdi+628h]
                mov     edx, 8
                mov     rcx, rbx
                call    PsUpdateComponentPower
                mov     edx, 4
                lea     rcx, [rbx+460h]
                lea     r8d, [rdx+1Ch]
                call    sub_1402B9B40
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406855F4:                          ; CODE XREF: sub_140685544+6F↑j
                lock bts dword ptr [rbx+278h], 4
                jmp     short loc_1406855B5
; ---------------------------------------------------------------------------

loc_1406855FF:                          ; CODE XREF: sub_140685544+33↑j
                test    rsi, rsi
                jnz     short loc_140685631

loc_140685604:                          ; CODE XREF: sub_140685544+F4↓j
                cmp     cs:byte_140CFC43F, bpl
                jnz     short loc_14068563A

loc_14068560D:                          ; CODE XREF: sub_140685544+107↓j
                mov     rcx, rbx
                call    sub_1406E0810
                jmp     loc_14068557D
; ---------------------------------------------------------------------------

loc_14068561A:                          ; CODE XREF: sub_140685544+63↑j
                test    rsi, rsi
                jnz     short loc_14068564D

loc_14068561F:                          ; CODE XREF: sub_140685544+115↓j
                mov     edx, 1
                mov     rcx, rbx
                call    sub_1402F3744
                jmp     loc_1406855A9
; ---------------------------------------------------------------------------

loc_140685631:                          ; CODE XREF: sub_140685544+BE↑j
                cmp     [rsi+3F8h], rbp
                jz      short loc_140685604

loc_14068563A:                          ; CODE XREF: sub_140685544+C7↑j
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406E0810
                mov     rdx, [rdi+3F8h]
                jmp     short loc_14068560D
; ---------------------------------------------------------------------------

loc_14068564D:                          ; CODE XREF: sub_140685544+D9↑j
                cmp     [rsi+35Ch], ebp
                jnz     loc_1406855A9
                jmp     short loc_14068561F
sub_140685544   endp

; ---------------------------------------------------------------------------
byte_14068565B  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140101478↑o

; =============== S U B R O U T I N E =======================================


sub_140685664   proc near               ; CODE XREF: PsUpdateComponentPower+9A↑p
                                        ; sub_1406754C4+16↑p ...

var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = byte ptr -0C0h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408126F8 SIZE 00000010 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_38], rax
                mov     rdi, [rcx+8E8h]
                mov     rbp, r8
                mov     esi, edx
                mov     [rsp+0F8h+var_D0], r8
                mov     r14, rcx
                xor     edx, edx
                mov     r8d, 90h
                lea     rcx, [rsp+0F8h+var_C8]
                call    memset
                xor     r12d, r12d
                test    rdi, rdi
                jz      loc_14068577D
                lea     r15, [rdi+1B0h]
                mov     rcx, r15
                call    sub_1402B4578
                cmp     esi, 9
                jz      loc_14068580E
                jg      loc_140685914
                sub     esi, 4
                jz      loc_1406858A2
                sub     esi, 1
                jz      loc_140685942
                sub     esi, 2
                jnz     loc_1406857D9
                call    sub_140219D10
                or      r9d, 0FFFFFFFFh
                mov     r10d, eax
                test    bp, bp
                jz      short loc_140685737
                mov     edx, [rdi+80h]
                movzx   eax, bp
                mov     ecx, eax
                not     ecx
                cmp     ecx, edx
                jb      loc_1408126F8
                add     eax, edx

loc_140685722:                          ; CODE XREF: sub_140685664+18D097↓j
                lea     rcx, [rdi+140h]
                mov     [rdi+80h], eax
                mov     edx, r10d
                call    sub_1402B9CA0

loc_140685737:                          ; CODE XREF: sub_140685664+A5↑j
                movzx   eax, word ptr [rsp+0F8h+var_D0+2]
                test    ax, ax
                jnz     short loc_1406857AA

loc_140685741:                          ; CODE XREF: sub_140685664+170↓j
                mov     eax, dword ptr [rsp+0F8h+var_D0+4]
                test    ax, ax
                jz      short loc_140685775
                mov     edx, [rdi+88h]
                movzx   ecx, ax
                mov     eax, ecx
                not     eax
                cmp     eax, edx
                jb      short loc_14068575F
                lea     r9d, [rdx+rcx]

loc_14068575F:                          ; CODE XREF: sub_140685664+F5↑j
                mov     [rdi+88h], r9d
                lea     rcx, [rdi+150h]
                mov     edx, r10d

loc_140685770:                          ; CODE XREF: sub_140685664+239↓j
                                        ; sub_140685664+2D9↓j ...
                call    sub_1402B9CA0

loc_140685775:                          ; CODE XREF: sub_140685664+E4↑j
                                        ; sub_140685664+178↓j ...
                mov     rcx, r15
                call    sub_140216274

loc_14068577D:                          ; CODE XREF: sub_140685664+57↑j
                mov     rcx, [rsp+0F8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F8h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406857AA:                          ; CODE XREF: sub_140685664+DB↑j
                mov     edx, [rdi+84h]
                mov     ecx, eax
                not     eax
                cmp     eax, edx
                lea     eax, [rdx+rcx]
                jb      loc_140812700

loc_1406857BF:                          ; CODE XREF: sub_140685664+18D09F↓j
                lea     rcx, [rdi+148h]
                mov     [rdi+84h], eax
                mov     edx, r10d
                call    sub_1402B9CA0
                jmp     loc_140685741
; ---------------------------------------------------------------------------

loc_1406857D9:                          ; CODE XREF: sub_140685664+90↑j
                cmp     esi, 1
                jnz     short loc_140685775
                xor     edx, edx
                lea     rcx, [rsp+0F8h+var_C0]
                mov     r8d, 88h
                call    memset
                mov     eax, dword ptr [rsp+0F8h+var_D0+4]
                lea     rdx, [rsp+0F8h+var_C8]
                mov     rcx, r14
                mov     [rsp+0F8h+var_C4], eax
                mov     [rsp+0F8h+var_C8], ebp
                call    sub_140685BC0
                jmp     loc_140685775
; ---------------------------------------------------------------------------

loc_14068580E:                          ; CODE XREF: sub_140685664+6F↑j
                mov     rax, [rdi+180h]
                mov     rcx, 0FFFFF78000000004h
                mov     [rsp+0F8h+var_D8], rax
                mov     r10d, 7FFFFFFFh
                mov     r8d, dword ptr [rsp+0F8h+var_D8+4]
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     ecx, [rcx]
                imul    rcx, rax
                mov     eax, 3E8h
                shr     rcx, 18h
                mov     edx, ecx
                sub     edx, dword ptr [rsp+0F8h+var_D8]
                cmp     edx, eax
                mov     dword ptr [rsp+0F8h+var_D8], ecx
                cmova   edx, eax
                or      r9d, 0FFFFFFFFh
                cmp     edx, r9d
                jnb     short loc_140685875
                mov     ecx, r8d
                mov     eax, edx
                and     ecx, r10d
                not     eax
                cmp     eax, ecx
                jb      short loc_140685875
                lea     r9d, [rcx+rdx]

loc_140685875:                          ; CODE XREF: sub_140685664+1FD↑j
                                        ; sub_140685664+20B↑j
                xor     r9d, r8d
                and     r9d, r10d
                xor     r8d, r9d
                mov     dword ptr [rsp+0F8h+var_D8+4], r8d
                mov     rax, [rsp+0F8h+var_D8]
                mov     [rdi+180h], rax
                call    sub_140219D10
                mov     edx, eax
                lea     rcx, [rdi+158h]
                jmp     loc_140685770
; ---------------------------------------------------------------------------

loc_1406858A2:                          ; CODE XREF: sub_140685664+7E↑j
                mov     rcx, 0FFFFF78000000004h
                mov     rax, 0FFFFF78000000320h
                test    ebp, ebp
                setnz   bl
                mov     rax, [rax]
                mov     dl, bl
                mov     r8d, [rcx]
                lea     rcx, [rdi+68h]
                imul    r8, rax
                shr     r8, 18h
                call    sub_1402B96CC
                mov     r9d, eax
                call    sub_140219D10
                movzx   r8d, word ptr [rdi+1D0h]
                lea     rcx, [rdi+130h]
                test    bl, bl
                jz      loc_1406859A3
                or      r8w, 1
                mov     edx, eax
                mov     [rdi+1D0h], r8w

loc_140685902:                          ; CODE XREF: sub_140685664+33A↓j
                call    sub_1402B9CA0

loc_140685907:                          ; CODE XREF: sub_140685664+361↓j
                mov     rcx, r14
                call    sub_1406828BC
                jmp     loc_140685775
; ---------------------------------------------------------------------------

loc_140685914:                          ; CODE XREF: sub_140685664+75↑j
                cmp     esi, 0Bh
                jle     loc_1406859FE
                cmp     esi, 0Dh
                jnz     loc_1406859DE
                lea     edx, [rsi-0Ch]
                add     [rdi+1A8h], edx
                call    sub_140219D10
                mov     edx, eax
                lea     rcx, [rdi+178h]
                jmp     loc_140685770
; ---------------------------------------------------------------------------

loc_140685942:                          ; CODE XREF: sub_140685664+87↑j
                mov     rcx, 0FFFFF78000000004h
                mov     rax, 0FFFFF78000000320h
                test    ebp, ebp
                setnz   bl
                mov     rax, [rax]
                mov     dl, bl
                mov     r8d, [rcx]
                lea     rcx, [rdi+70h]
                imul    r8, rax
                shr     r8, 18h
                call    sub_1402B96CC
                mov     r9d, eax
                call    sub_140219D10
                movzx   edx, word ptr [rdi+1D0h]
                mov     r8d, eax
                lea     rcx, [rdi+138h]
                test    bl, bl
                jz      short loc_1406859CA
                or      dx, 2
                mov     [rdi+1D0h], dx
                mov     edx, eax
                jmp     loc_140685902
; ---------------------------------------------------------------------------

loc_1406859A3:                          ; CODE XREF: sub_140685664+289↑j
                mov     edx, 0FFFEh
                and     r8w, dx
                mov     edx, eax
                mov     [rdi+1D0h], r8w
                mov     r8d, eax

loc_1406859B9:                          ; CODE XREF: sub_140685664+378↓j
                shr     r9d, 0Ch
                sub     edx, r9d
                call    sub_1403408C4
                jmp     loc_140685907
; ---------------------------------------------------------------------------

loc_1406859CA:                          ; CODE XREF: sub_140685664+32B↑j
                mov     eax, 0FFFDh
                and     dx, ax
                mov     [rdi+1D0h], dx
                mov     edx, r8d
                jmp     short loc_1406859B9
; ---------------------------------------------------------------------------

loc_1406859DE:                          ; CODE XREF: sub_140685664+2BC↑j
                cmp     esi, 0Ch
                jz      loc_140685A77
                cmp     esi, 0Eh
                jnz     loc_140685775
                lea     edx, [rsi-0Dh]
                add     [rdi+1ACh], edx
                jmp     loc_140685775
; ---------------------------------------------------------------------------

loc_1406859FE:                          ; CODE XREF: sub_140685664+2B3↑j
                test    ebp, ebp
                mov     rax, 0FFFFF78000000320h
                mov     ebp, 168h
                setnz   bl
                cmp     esi, 0Bh
                mov     dl, bl
                mov     rax, [rax]
                lea     ecx, [rbp-8]
                cmovnz  ebp, ecx
                mov     rcx, 0FFFFF78000000004h
                add     rbp, rdi
                mov     r8d, [rcx]
                mov     ecx, 190h
                imul    r8, rax
                lea     eax, [rcx-8]
                shr     r8, 18h
                cmp     esi, 0Bh
                cmovnz  ecx, eax
                add     rcx, rdi
                call    sub_1402B96CC
                mov     r8d, eax
                call    sub_140219D10
                mov     edx, eax
                mov     rcx, rbp
                test    bl, bl
                jnz     loc_140685770
                shr     r8d, 0Ch
                sub     edx, r8d

loc_140685A6A:                          ; CODE XREF: sub_140685664+54E↓j
                mov     r8d, eax
                call    sub_1403408C4
                jmp     loc_140685775
; ---------------------------------------------------------------------------

loc_140685A77:                          ; CODE XREF: sub_140685664+37D↑j
                lea     rsi, [rdi+170h]
                lea     r11, [rdi+198h]
                cmp     ebp, 3
                jz      short loc_140685B00
                lea     eax, [rbp-1]
                mov     edx, 1
                cmp     eax, edx
                ja      loc_140685775
                mov     ebx, [rdi+1D8h]
                cmp     ebp, edx
                jnz     loc_140685B8F
                inc     ebx
                mov     [rdi+1D8h], ebx
                cmp     ebx, edx
                ja      loc_140685775

loc_140685AB8:                          ; CODE XREF: sub_140685664+52D↓j
                                        ; sub_140685664+53B↓j
                mov     rcx, 0FFFFF78000000004h
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     r8d, [rcx]
                mov     rcx, r11
                imul    r8, rax
                shr     r8, 18h
                test    ebx, ebx
                setnz   dl
                call    sub_1402B96CC
                mov     ecx, eax
                call    sub_140219D10
                mov     edx, eax
                test    ebx, ebx
                jz      loc_140685BAA

loc_140685AF8:                          ; CODE XREF: sub_140685664+526↓j
                mov     rcx, rsi
                jmp     loc_140685770
; ---------------------------------------------------------------------------

loc_140685B00:                          ; CODE XREF: sub_140685664+424↑j
                cmp     [r11+4], r12d
                jl      loc_140685775
                mov     rax, [r11]
                mov     rcx, 0FFFFF78000000004h
                mov     [rsp+0F8h+var_D8], rax
                mov     r10d, 7FFFFFFFh
                mov     r8d, dword ptr [rsp+0F8h+var_D8+4]
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     ecx, [rcx]
                imul    rcx, rax
                mov     eax, 1000h
                shr     rcx, 18h
                mov     edx, ecx
                sub     edx, dword ptr [rsp+0F8h+var_D8]
                cmp     edx, eax
                mov     dword ptr [rsp+0F8h+var_D8], ecx
                cmova   edx, eax
                or      r9d, 0FFFFFFFFh
                cmp     edx, r9d
                jnb     short loc_140685B6D
                mov     ecx, r8d
                mov     eax, edx
                and     ecx, r10d
                not     eax
                cmp     eax, ecx
                jb      short loc_140685B6D
                lea     r9d, [rcx+rdx]

loc_140685B6D:                          ; CODE XREF: sub_140685664+4F5↑j
                                        ; sub_140685664+503↑j
                xor     r9d, r8d
                and     r9d, r10d
                xor     r8d, r9d
                mov     dword ptr [rsp+0F8h+var_D8+4], r8d
                mov     rax, [rsp+0F8h+var_D8]
                mov     [r11], rax
                call    sub_140219D10
                mov     edx, eax
                jmp     loc_140685AF8
; ---------------------------------------------------------------------------

loc_140685B8F:                          ; CODE XREF: sub_140685664+43E↑j
                test    ebx, ebx
                jz      loc_140685AB8
                sub     ebx, edx
                mov     [rdi+1D8h], ebx
                jz      loc_140685AB8
                jmp     loc_140685775
; ---------------------------------------------------------------------------

loc_140685BAA:                          ; CODE XREF: sub_140685664+48E↑j
                shr     ecx, 0Ch
                sub     edx, ecx
                mov     rcx, rsi
                jmp     loc_140685A6A
; } // starts at 140685664
sub_140685664   endp

; ---------------------------------------------------------------------------
algn_140685BB7:                         ; DATA XREF: .rdata:0000000140066C08↑o
                                        ; .pdata:0000000140101484↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140685BC0   proc near               ; CODE XREF: sub_140685664+1A0↑p
                                        ; sub_1407195E4+89↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, [rdx+0Ch]
                xor     r12d, r12d
                mov     rbp, [rcx+8E8h]
                mov     ebx, r12d
                mov     [rsp+48h+arg_0], rbx
                mov     rsi, rdx
                mov     r15, rcx
                mov     r14b, r12b
                test    al, 1
                jnz     loc_140685CAA

loc_140685BFC:                          ; CODE XREF: sub_140685BC0+124↓j
                                        ; sub_140685BC0+135↓j
                mov     ecx, [rbp+1D0h]
                mov     eax, [rsi]
                not     eax
                and     eax, ecx
                movzx   edi, ax
                or      edi, [rsi+4]
                movzx   eax, cx
                cmp     eax, edi
                jnz     short loc_140685C4A

loc_140685C15:                          ; CODE XREF: sub_140685BC0+E5↓j
                test    r14b, r14b
                jnz     short loc_140685C40

loc_140685C1A:                          ; CODE XREF: sub_140685BC0+88↓j
                mov     edi, r12d

loc_140685C1D:                          ; CODE XREF: sub_140685BC0+114↓j
                test    rbx, rbx
                jnz     loc_140685CFA

loc_140685C26:                          ; CODE XREF: sub_140685BC0+14D↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140685C40:                          ; CODE XREF: sub_140685BC0+58↑j
                mov     rcx, r15
                call    sub_1406828BC
                jmp     short loc_140685C1A
; ---------------------------------------------------------------------------

loc_140685C4A:                          ; CODE XREF: sub_140685BC0+53↑j
                mov     rcx, 0FFFFF78000000004h
                mov     edx, edi
                shr     edx, 2
                mov     rax, 0FFFFF78000000320h
                and     dl, 1
                mov     rax, [rax]
                mov     ebx, [rcx]
                lea     rcx, [rbp+78h]
                imul    rbx, rax
                shr     rbx, 18h
                mov     r8d, ebx
                call    sub_1402B96CC
                mov     edx, edi
                lea     rcx, [rbp+1A0h]
                shr     edx, 3
                mov     r8d, ebx
                and     dl, 1
                call    sub_1402B96CC
                mov     rbx, [rsp+48h+arg_0]
                mov     r14b, 1
                mov     [rbp+1D0h], di
                jmp     loc_140685C15
; ---------------------------------------------------------------------------

loc_140685CAA:                          ; CODE XREF: sub_140685BC0+36↑j
                lea     rcx, [rdx+10h]
                or      rdx, 0FFFFFFFFFFFFFFFFh

loc_140685CB2:                          ; CODE XREF: sub_140685BC0+FA↓j
                inc     rdx
                cmp     [rcx+rdx*2], r12w
                jnz     short loc_140685CB2
                test    rdx, rdx
                jz      short loc_140685CDA
                lea     r8, [rsp+48h+arg_0]
                call    sub_1406FB748
                mov     rbx, [rsp+48h+arg_0]
                mov     edi, eax
                test    eax, eax
                js      loc_140685C1D

loc_140685CDA:                          ; CODE XREF: sub_140685BC0+FF↑j
                lea     rcx, [rbp+1C8h]
                cmp     [rcx], rbx
                jz      loc_140685BFC
                mov     rdx, rbx
                call    sub_140606660
                mov     r14b, 1
                jmp     loc_140685BFC
; ---------------------------------------------------------------------------

loc_140685CFA:                          ; CODE XREF: sub_140685BC0+60↑j
                mov     rcx, cs:qword_140C542F8
                mov     rdx, rbx
                add     rcx, 38h ; '8'
                call    sub_1406071F0
                jmp     loc_140685C26
sub_140685BC0   endp

; ---------------------------------------------------------------------------
algn_140685D12:                         ; DATA XREF: .pdata:0000000140101490↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140685D18   proc near               ; CODE XREF: sub_1403594E0+118↑p
                                        ; sub_140684DA0+17B↑p ...

; FUNCTION CHUNK AT 0000000140812708 SIZE 00000015 BYTES

                mov     eax, [rcx+87Ch]
                mov     r9d, edx
                mov     r10, rcx
                test    al, 1
                jnz     loc_140812708

loc_140685D2C:                          ; CODE XREF: sub_140685D18+18CA00↓j
                mov     r8d, 30000000h

loc_140685D32:                          ; CODE XREF: sub_140685D18+18C9FA↓j
                mov     eax, [rcx+460h]
                shl     r9d, 1Ch
                and     r9d, r8d
                not     r8d

loc_140685D42:                          ; CODE XREF: sub_140685D18+3F↓j
                mov     ecx, r8d
                mov     edx, eax
                and     ecx, eax
                or      ecx, r9d
                lock cmpxchg [r10+460h], ecx
                cmp     eax, edx
                jnz     short loc_140685D42
                retn
sub_140685D18   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140685D5B  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010149C↑o

; =============== S U B R O U T I N E =======================================


sub_140685D64   proc near               ; CODE XREF: sub_140685544+22↑p
                                        ; sub_140722030+1D↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014081271E SIZE 00000067 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                and     dword ptr [rax+10h], 0
                mov     esi, edx
                mov     rbp, gs:188h
                mov     rbx, rcx
                mov     rdi, [rcx+510h]
                test    dl, 20h
                jnz     short loc_140685DA4
                mov     eax, [rdi+350h]
                test    al, 20h
                jnz     loc_14081271E

loc_140685DA4:                          ; CODE XREF: sub_140685D64+30↑j
                                        ; sub_140685D64+18C9D8↓j
                test    sil, 10h
                jnz     short loc_140685DB8
                mov     eax, [rdi+350h]
                test    al, 10h
                jnz     loc_140812741

loc_140685DB8:                          ; CODE XREF: sub_140685D64+44↑j
                                        ; sub_140685D64+18C9FF↓j ...
                bt      esi, 8
                jb      short loc_140685DE9
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14060579C
                test    dword ptr [rdi+350h], 100h
                jnz     short loc_140685E36
                xor     eax, eax

loc_140685DD7:                          ; CODE XREF: sub_140685D64+D9↓j
                mov     rdx, rbp
                mov     [rbx+640h], rax
                mov     rcx, rdi
                call    sub_1406056EC

loc_140685DE9:                          ; CODE XREF: sub_140685D64+58↑j
                test    sil, sil
                js      short loc_140685E20
                cmp     byte ptr [rbx+5B7h], 1
                jz      short loc_140685E20
                mov     esi, [rdi+354h]
                cmp     esi, 0Ah
                jb      short loc_140685E08
                mov     esi, [rdi+1E4h]

loc_140685E08:                          ; CODE XREF: sub_140685D64+9C↑j
                cmp     cs:byte_140D2E686, 0
                jnz     short loc_140685E3F

loc_140685E11:                          ; CODE XREF: sub_140685D64+EF↓j
                mov     rcx, rbx
                cmp     esi, 9
                jz      short loc_140685E55
                xor     edx, edx

loc_140685E1B:                          ; CODE XREF: sub_140685D64+F6↓j
                call    sub_1402B9CF4

loc_140685E20:                          ; CODE XREF: sub_140685D64+88↑j
                                        ; sub_140685D64+91↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140685E36:                          ; CODE XREF: sub_140685D64+6F↑j
                mov     rax, [rdi+328h]
                jmp     short loc_140685DD7
; ---------------------------------------------------------------------------

loc_140685E3F:                          ; CODE XREF: sub_140685D64+AB↑j
                mov     eax, esi
                lea     rcx, qword_140984FE0
                mov     dl, [rax+rcx]
                mov     rcx, rbx
                call    sub_1402B8074
                jmp     short loc_140685E11
; ---------------------------------------------------------------------------

loc_140685E55:                          ; CODE XREF: sub_140685D64+B3↑j
                mov     edx, 1
                jmp     short loc_140685E1B
sub_140685D64   endp

; ---------------------------------------------------------------------------
byte_140685E5C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140066C4C↑o
                                        ; .pdata:00000001401014A8↑o

; =============== S U B R O U T I N E =======================================


sub_140685E64   proc near               ; CODE XREF: sub_140686348+77↓p
                                        ; DATA XREF: .pdata:00000001401014B4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, gs:188h
                mov     r14d, r8d
                mov     rsi, rdx
                xor     r8d, r8d
                mov     rdx, r15
                mov     rbp, rcx
                call    sub_14068616C
                bt      r14d, 0Ah
                jnb     short loc_140685EDC
                mov     rcx, rbp
                call    PsGetEffectiveServerSilo
                mov     rbx, rax

loc_140685EAB:                          ; CODE XREF: sub_140685E64+90↓j
                                        ; sub_140685E64+A8↓j ...
                test    rbx, rbx
                jnz     short loc_140685F26
                xor     edi, edi

loc_140685EB2:                          ; CODE XREF: sub_140685E64+C0↓j
                                        ; sub_140685E64+DE↓j ...
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, rbp
                call    sub_1406860E4
                mov     eax, edi

loc_140685EC2:                          ; CODE XREF: sub_140685E64+198↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140685EDC:                          ; CODE XREF: sub_140685E64+3A↑j
                mov     rbx, rbp
                test    rbp, rbp
                jz      short loc_140685F08

loc_140685EE4:                          ; CODE XREF: sub_140685E64+A2↓j
                mov     eax, [rbx+100h]
                bt      eax, 0Ch
                jb      short loc_140685EFC
                test    r14b, 1
                jz      short loc_140685EAB
                bt      eax, 0Bh
                jnb     short loc_140685F08

loc_140685EFC:                          ; CODE XREF: sub_140685E64+8A↑j
                mov     rbx, [rbx+430h]
                test    rbx, rbx
                jnz     short loc_140685EE4

loc_140685F08:                          ; CODE XREF: sub_140685E64+7E↑j
                                        ; sub_140685E64+96↑j
                test    r14b, 1
                jz      short loc_140685EAB
                cmp     rbx, rbp
                jnz     short loc_140685EAB
                test    dword ptr [rbx+528h], 40000000h
                jnz     short loc_140685EAB
                mov     edi, 0C0000022h
                jmp     short loc_140685EB2
; ---------------------------------------------------------------------------

loc_140685F26:                          ; CODE XREF: sub_140685E64+4A↑j
                mov     r9d, 1
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140683A3C
                test    al, al
                jnz     short loc_140685F47
                mov     edi, 0C00000BBh
                jmp     loc_140685EB2
; ---------------------------------------------------------------------------

loc_140685F47:                          ; CODE XREF: sub_140685E64+D7↑j
                mov     r9d, r14d
                mov     rcx, rbx
                call    sub_140683AC8
                mov     edi, eax
                test    eax, eax
                js      loc_140685EB2
                mov     r9d, 1
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140683BE0
                mov     edi, eax
                test    eax, eax
                js      loc_140685EB2
                mov     r9d, r14d
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406840E4
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140685544
                test    dword ptr [rbx+528h], 1000h
                jz      short loc_140685FC7
                lea     rax, [rsi+9A8h]
                mov     ecx, 7

loc_140685FAF:                          ; CODE XREF: sub_140685E64+158↓j
                lock bts dword ptr [rax], 1Fh
                lea     rax, [rax+4]
                sub     rcx, 1
                jnz     short loc_140685FAF
                lock bts dword ptr [rsi+9CCh], 1Fh

loc_140685FC7:                          ; CODE XREF: sub_140685E64+13D↑j
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, rbp
                call    sub_1406860E4
                mov     rcx, rsi
                call    sub_1406841A8
                mov     ebx, eax
                test    eax, eax
                js      short loc_140685FFA
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14068436C
                test    eax, eax
                mov     ecx, 0C0000044h
                cmovz   ebx, ecx

loc_140685FFA:                          ; CODE XREF: sub_140685E64+17D↑j
                mov     eax, ebx
                jmp     loc_140685EC2
sub_140685E64   endp

; ---------------------------------------------------------------------------
algn_140686001:                         ; DATA XREF: .pdata:00000001401014B4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140686008   proc near               ; CODE XREF: sub_1405ECD80+3B↑p
                                        ; DATA XREF: .rdata:0000000140066CC4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140812786 SIZE 00000043 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, r8
                mov     ebp, edx
                xor     edi, edi
                mov     rsi, rcx
                mov     [r8], rdi
                xor     r8d, r8d
                mov     r15, gs:188h
                mov     rdx, r15
                call    sub_14068616C
                bt      ebp, 0Ah
                jb      loc_140812786
                mov     rbx, rsi
                test    rsi, rsi
                jz      short loc_140686071

loc_140686053:                          ; CODE XREF: sub_140686008+C3↓j
                mov     eax, [rbx+100h]
                bt      eax, 0Ch
                jb      short loc_1406860BF
                bt      eax, 0Bh
                setb    cl
                test    bpl, 1
                setnz   al
                test    al, cl
                jnz     short loc_1406860BF

loc_140686071:                          ; CODE XREF: sub_140686008+49↑j
                                        ; sub_140686008+C1↓j
                test    bpl, 1
                jnz     short loc_1406860CD

loc_140686077:                          ; CODE XREF: sub_140686008+C8↓j
                                        ; sub_140686008+18C789↓j ...
                test    rbx, rbx
                jz      short loc_140686095
                mov     rax, [rbx+618h]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1406860D7
                test    rax, rax
                jnz     loc_1408127B0

loc_140686092:                          ; CODE XREF: sub_140686008+18C7BC↓j
                mov     [r14], rax

loc_140686095:                          ; CODE XREF: sub_140686008+72↑j
                                        ; sub_140686008+D4↓j ...
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1406860E4
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406860BF:                          ; CODE XREF: sub_140686008+55↑j
                                        ; sub_140686008+67↑j
                mov     rbx, [rbx+430h]
                test    rbx, rbx
                jz      short loc_140686071
                jmp     short loc_140686053
; ---------------------------------------------------------------------------

loc_1406860CD:                          ; CODE XREF: sub_140686008+6D↑j
                cmp     rbx, rsi
                jnz     short loc_140686077
                jmp     loc_140812796
; ---------------------------------------------------------------------------

loc_1406860D7:                          ; CODE XREF: sub_140686008+7F↑j
                mov     edi, 0C0000476h
                jmp     short loc_140686095
sub_140686008   endp

; ---------------------------------------------------------------------------
byte_1406860DE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140066CC4↑o
                                        ; .pdata:00000001401014C0↑o

; =============== S U B R O U T I N E =======================================


sub_1406860E4   proc near               ; CODE XREF: sub_1405F3CF0+12E4↑p
                                        ; sub_1405F3CF0+16FD↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408127CA SIZE 00000050 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+450h]
                mov     ebp, r8d
                mov     rsi, rdx
                mov     rbx, rcx
                cmp     rax, 1
                ja      loc_1408127CA

loc_140686112:                          ; CODE XREF: sub_1406860E4+18C6FD↓j
                cmp     rax, 2
                ja      loc_1408127E6

loc_14068611C:                          ; CODE XREF: sub_1406860E4+18C709↓j
                                        ; sub_1406860E4+18C731↓j
                test    rax, rax
                jnz     short loc_140686153

loc_140686121:                          ; CODE XREF: sub_1406860E4+7F↓j
                test    bpl, 1
                jnz     short loc_14068613D
                lea     rcx, [rbx+38h]
                call    ExReleaseResourceLite
                test    rsi, rsi
                jz      short loc_14068613D
                mov     rcx, rsi
                call    sub_140245770

loc_14068613D:                          ; CODE XREF: sub_1406860E4+41↑j
                                        ; sub_1406860E4+4F↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140686153:                          ; CODE XREF: sub_1406860E4+3B↑j
                mov     rcx, [rbx+430h]
                add     rcx, 38h ; '8'
                call    ExReleaseResourceLite
                jmp     short loc_140686121
sub_1406860E4   endp

; ---------------------------------------------------------------------------
byte_140686165  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140066CEC↑o
                                        ; .pdata:00000001401014CC↑o

; =============== S U B R O U T I N E =======================================


sub_14068616C   proc near               ; CODE XREF: sub_1405F3CF0+112D↑p
                                        ; sub_1405F3CF0+167B↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081281A SIZE 0000004F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebp, r8d
                mov     rbx, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      short loc_140686195
                dec     word ptr [rdx+1E6h]

loc_140686195:                          ; CODE XREF: sub_14068616C+20↑j
                and     ebp, 1
                jnz     short loc_1406861A2
                mov     rcx, rbx
                call    sub_140686250

loc_1406861A2:                          ; CODE XREF: sub_14068616C+2C↑j
                mov     rax, [rdi+450h]
                test    rax, rax
                jnz     short loc_1406861DC

loc_1406861AE:                          ; CODE XREF: sub_14068616C+8C↓j
                lea     rcx, [rdi+38h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                test    bpl, bpl
                jnz     short loc_1406861C6
                mov     rcx, rbx
                call    sub_140686200

loc_1406861C6:                          ; CODE XREF: sub_14068616C+50↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406861DC:                          ; CODE XREF: sub_14068616C+40↑j
                cmp     rax, 1
                ja      loc_14081281A

loc_1406861E6:                          ; CODE XREF: sub_14068616C+18C6CB↓j
                                        ; sub_14068616C+18C6D5↓j ...
                mov     rcx, [rdi+430h]
                mov     dl, 1
                add     rcx, 38h ; '8'
                call    ExAcquireResourceExclusiveLite
                jmp     short loc_1406861AE
sub_14068616C   endp

; ---------------------------------------------------------------------------
algn_1406861FA:                         ; DATA XREF: .rdata:0000000140066D14↑o
                                        ; .pdata:00000001401014D8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140686200   proc near               ; CODE XREF: sub_140683368+363↑p
                                        ; sub_14068616C+55↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140D2D210, rax
                and     al, 6
                cmp     al, 2
                jz      short loc_14068623C

loc_14068621C:                          ; CODE XREF: sub_140686200+48↓j
                lea     rcx, qword_140D2D210
                call    sub_140243660
                test    rbx, rbx
                jz      short loc_140686235
                mov     rcx, rbx
                call    sub_140245770

loc_140686235:                          ; CODE XREF: sub_140686200+2B↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14068623C:                          ; CODE XREF: sub_140686200+1A↑j
                lea     rcx, qword_140D2D210
                call    ExfTryToWakePushLock
                jmp     short loc_14068621C
sub_140686200   endp

; ---------------------------------------------------------------------------
algn_14068624A:                         ; DATA XREF: .pdata:00000001401014E4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140686250   proc near               ; CODE XREF: sub_140683368+BA↑p
                                        ; sub_14068616C+31↑p ...
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_140686260
                dec     word ptr [rcx+1E6h]

loc_140686260:                          ; CODE XREF: sub_140686250+7↑j
                xor     edx, edx
                lea     rcx, qword_140D2D210
                call    ExAcquirePushLockExclusiveEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140686250   endp

byte_140686274  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401014F0↑o

; =============== S U B R O U T I N E =======================================


sub_14068627C   proc near               ; CODE XREF: sub_14067EC44+16F8↑p
                                        ; DATA XREF: .rdata:0000000140066D3C↑o ...

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081286A SIZE 0000008F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                and     [rsp+58h+arg_0], 0
                mov     rbp, r9
                mov     r14d, r8d
                mov     rdi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14068632D
                call    sub_140639CB4
                mov     rsi, rax
                test    rax, rax
                jz      loc_14081286A
                lea     rax, [rsp+58h+arg_0]
                mov     r9, rbp
                mov     r8d, r14d
                mov     [rsp+58h+var_38], rax
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1406867C0
                mov     ebp, eax
                test    eax, eax
                js      loc_140812874
                mov     rbp, [rsp+58h+arg_0]

loc_1406862E4:                          ; CODE XREF: sub_14068627C+C1↓j
                test    rbp, rbp
                jz      loc_1408128D6
                xor     edx, edx
                mov     [rdi+570h], rbp
                lea     ecx, [rdx+7Bh]
                call    SeAuditingWithTokenForSubcategory
                test    al, al
                jnz     loc_1408128AF

loc_140686306:                          ; CODE XREF: sub_14068627C+18C655↓j
                test    rsi, rsi
                jz      short loc_140686317
                lea     rcx, [rbx+458h]
                call    sub_14024C380

loc_140686317:                          ; CODE XREF: sub_14068627C+8D↑j
                xor     eax, eax

loc_140686319:                          ; CODE XREF: sub_14068627C+18C5F3↓j
                                        ; sub_14068627C+18C62E↓j ...
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14068632D:                          ; CODE XREF: sub_14068627C+27↑j
                xor     esi, esi
                mov     rcx, rdi
                lea     edx, [rsi+1]
                call    sub_140683900
                mov     rbp, rax
                jmp     short loc_1406862E4
sub_14068627C   endp

; ---------------------------------------------------------------------------
byte_14068633F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140066D3C↑o
                                        ; .pdata:00000001401014FC↑o

; =============== S U B R O U T I N E =======================================


sub_140686348   proc near               ; CODE XREF: sub_1405EB770+D83↑p
                                        ; sub_140798690+21D↓p ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 00000001408128FA SIZE 000000A5 BYTES

                mov     rax, rsp
                mov     [rax+18h], r8d
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 40h
                mov     r14, gs:188h
                mov     rsi, rdx
                mov     r10, [rcx+570h]
                mov     rbx, rcx
                xor     ebp, ebp
                xor     edx, edx
                mov     [rax+8], bpl
                mov     r12d, r9d
                mov     eax, [rcx+440h]
                mov     ecx, 85h
                mov     r13, [r14+0B8h]
                mov     [r10+28h], eax
                call    SeAuditingWithTokenForSubcategory
                test    al, al
                jnz     loc_140686583

loc_1406863A1:                          ; CODE XREF: sub_140686348+24B↓j
                test    rsi, rsi
                jz      short loc_1406863CE
                mov     rax, [rsi+510h]
                test    rax, rax
                jz      short loc_1406863CE
                mov     rcx, [rsi+510h]
                mov     r8d, r12d
                mov     rdx, rbx
                call    sub_140685E64
                mov     edi, eax
                test    eax, eax
                js      loc_140812983

loc_1406863CE:                          ; CODE XREF: sub_140686348+5C↑j
                                        ; sub_140686348+68↑j
                mov     rcx, r14
                call    sub_1402B9FB0
                mov     rcx, cs:qword_140C1E068
                lea     rdx, qword_140C1E060
                lea     rax, [rbx+448h]
                cmp     [rcx], rdx
                jnz     FatalListEntryError_74
                mov     [rax+8], rcx
                mov     [rax], rdx
                mov     [rcx], rax
                mov     rcx, r14
                mov     cs:qword_140C1E068, rax
                mov     rax, cs:qword_140C1E008
                inc     rax
                mov     cs:qword_140C1E008, rax
                mov     [rbx+8F8h], rax
                call    sub_1402B9DC8
                mov     eax, [r13+464h]
                test    al, 8
                jnz     loc_140812901
                mov     rcx, [rsp+78h+arg_20]
                test    rcx, rcx
                jnz     loc_140812908

loc_140686445:                          ; CODE XREF: sub_140686348+18C609↓j
                lea     r9, [rsp+78h+arg_0]
                mov     r8, rbp
                mov     rdx, r13
                mov     rcx, rbx
                call    sub_1406865F4
                mov     edi, eax
                test    rbp, rbp
                jnz     loc_140812956

loc_140686466:                          ; CODE XREF: sub_140686348+18C617↓j
                test    edi, edi
                js      loc_140812983
                cmp     [rsp+78h+arg_0], 0
                jnz     loc_140812964

loc_14068647C:                          ; CODE XREF: sub_140686348+18C620↓j
                                        ; sub_140686348+18C62E↓j
                xor     ebp, ebp
                test    rsi, rsi
                jz      short loc_14068648F
                mov     rdx, cs:PsInitialSystemProcess
                cmp     rsi, rdx
                jz      short loc_1406864A0

loc_14068648F:                          ; CODE XREF: sub_140686348+139↑j
                test    [rsp+78h+arg_28], 2
                jnz     loc_140686576
                mov     rdx, r13

loc_1406864A0:                          ; CODE XREF: sub_140686348+145↑j
                                        ; sub_140686348+236↓j
                mov     rsi, [rsp+78h+arg_38]
                xor     ecx, ecx
                mov     rax, cs:PsProcessType
                mov     r8, rsi
                mov     r12d, [rsp+78h+arg_10]
                add     rax, 4Ch ; 'L'
                mov     [rsp+78h+var_50], rax
                lea     r9, [rsi+0A0h]
                mov     dword ptr [rsp+78h+var_58], r12d
                call    SeCreateAccessStateEx
                mov     edi, eax
                test    eax, eax
                js      loc_140812983
                mov     r13d, 72437350h
                mov     rcx, rbx
                mov     edx, r13d
                call    ObfReferenceObjectWithTag
                and     [rsp+78h+var_48], 0
                xor     r9d, r9d
                and     [rsp+78h+var_50], 0
                mov     r8d, r12d
                mov     rdx, rsi
                mov     dword ptr [rsp+78h+var_58], ebp
                mov     rcx, rbx
                call    sub_14061EFE0
                mov     edi, eax
                test    eax, eax
                js      loc_14081297B
                mov     edx, r13d
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     rcx, [rbx+510h]
                test    rcx, rcx
                jz      short loc_140686569
                mov     rdx, rbx
                call    sub_1406839D0
                mov     edi, eax
                test    eax, eax
                js      loc_14081297B

loc_140686545:                          ; CODE XREF: sub_140686348+22C↓j
                mov     rcx, rbx
                call    sub_1406865AC
                test    [rsp+78h+arg_28], 1
                jnz     short loc_140686598

loc_140686557:                          ; CODE XREF: sub_140686348+25B↓j
                xor     eax, eax

loc_140686559:                          ; CODE XREF: sub_140686348+18C652↓j
                add     rsp, 40h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140686569:                          ; CODE XREF: sub_140686348+1E9↑j
                lock or dword ptr [rbx+464h], 4000000h
                jmp     short loc_140686545
; ---------------------------------------------------------------------------

loc_140686576:                          ; CODE XREF: sub_140686348+14F↑j
                mov     rdx, rbx
                mov     ebp, 1
                jmp     loc_1406864A0
; ---------------------------------------------------------------------------

loc_140686583:                          ; CODE XREF: sub_140686348+53↑j
                mov     rdx, [rsp+78h+arg_30]
                mov     rcx, rbx
                call    sub_1407BC0E8
                jmp     loc_1406863A1
; ---------------------------------------------------------------------------

loc_140686598:                          ; CODE XREF: sub_140686348+20D↑j
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_14035DA58
                jmp     short loc_140686557
sub_140686348   endp

; ---------------------------------------------------------------------------
byte_1406865A5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140066D64↑o
                                        ; .pdata:0000000140101508↑o

; =============== S U B R O U T I N E =======================================


sub_1406865AC   proc near               ; CODE XREF: sub_140686348+200↑p
                                        ; DATA XREF: .rdata:0000000140066D88↑o ...

var_28          = word ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408129A0 SIZE 000000CF BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  xmmword ptr [rax-28h], xmm0
                mov     rdi, rcx
                movups  xmmword ptr [rax-18h], xmm1
                mov     eax, cs:dword_140CFB010
                test    al, 20h
                jnz     loc_1408129A0

loc_1406865DB:                          ; CODE XREF: sub_1406865AC+18C40D↓j
                                        ; sub_1406865AC+18C4BE↓j
                xor     eax, eax

loc_1406865DD:                          ; CODE XREF: sub_1406865AC+18C427↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406865AC   endp

byte_1406865EE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140066D88↑o
                                        ; .pdata:0000000140101514↑o

; =============== S U B R O U T I N E =======================================


sub_1406865F4   proc near               ; CODE XREF: sub_140686348+10E↑p
                                        ; DATA XREF: .rdata:0000000140066DB8↑o ...

var_B8          = byte ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_48          = qword ptr -48h

; FUNCTION CHUNK AT 0000000140812A70 SIZE 00000152 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_48], rax
                and     qword ptr [rcx+578h], 0
                mov     r15, r9
                mov     rbx, r8
                mov     rdi, rdx
                mov     rsi, rcx
                test    r8, r8
                jnz     loc_140812AAC
                mov     rbx, [rdx+578h]
                test    rbx, rbx
                jnz     loc_140812A70

loc_140686643:                          ; CODE XREF: sub_1406865F4+18C4C6↓j
                                        ; sub_1406865F4+18C5B8↓j ...
                setnz   al
                mov     [r15], al
                xor     eax, eax

loc_14068664B:                          ; CODE XREF: sub_1406865F4+18C572↓j
                mov     rcx, [rsp+0D8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406865F4
sub_1406865F4   endp

byte_14068666C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140066DB8↑o
                                        ; .pdata:0000000140101520↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3D0h

sub_140686674   proc near               ; CODE XREF: sub_140626B40+1FF↑p
                                        ; DATA XREF: .rdata:0000000140066E18↑o ...

var_4B0         = dword ptr -4B0h
var_4A8         = qword ptr -4A8h
var_4A0         = qword ptr -4A0h
var_498         = qword ptr -498h
var_490         = qword ptr -490h
var_488         = xmmword ptr -488h
var_478         = xmmword ptr -478h
var_460         = dword ptr -460h
var_45C         = dword ptr -45Ch
var_458         = dword ptr -458h
var_450         = word ptr -450h
var_44E         = word ptr -44Eh
var_448         = dword ptr -448h
var_444         = dword ptr -444h
var_430         = qword ptr -430h
var_428         = dword ptr -428h
var_424         = dword ptr -424h
var_410         = qword ptr -410h
var_408         = dword ptr -408h
var_404         = dword ptr -404h
var_400         = qword ptr -400h
var_3E8         = dword ptr -3E8h
var_3E4         = dword ptr -3E4h
var_3E0         = qword ptr -3E0h
var_3C8         = dword ptr -3C8h
var_3C4         = dword ptr -3C4h
var_3B0         = qword ptr -3B0h
var_3A8         = dword ptr -3A8h
var_3A4         = dword ptr -3A4h
var_3A0         = qword ptr -3A0h
var_388         = dword ptr -388h
var_384         = dword ptr -384h
var_370         = qword ptr -370h
var_368         = dword ptr -368h
var_364         = dword ptr -364h
var_350         = qword ptr -350h
var_40          = qword ptr -40h
arg_0           = qword ptr  10h
arg_20          = dword ptr  30h
arg_28          = byte ptr  38h

; FUNCTION CHUNK AT 0000000140812BC2 SIZE 00000290 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-3A0h]
                sub     rsp, 4A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3D0h+var_40], rax
                and     [rsp+4D0h+var_4A8], 0
                xorps   xmm0, xmm0
                mov     ebx, r8d
                mov     [rsp+4D0h+var_4A0], rcx
                lea     rcx, [rsp+4D0h+var_488]
                mov     [rsp+4D0h+var_4B0], ebx
                movups  [rsp+4D0h+var_488], xmm0
                mov     r13, r9
                mov     r15, rdx
                movups  [rsp+4D0h+var_478], xmm0
                xor     r14d, r14d
                xor     esi, esi
                call    SeCaptureSubjectContext
                mov     rdi, qword ptr [rsp+4D0h+var_488]
                mov     ecx, 8Ah
                mov     rdx, qword ptr [rsp+4D0h+var_478]
                test    rdi, rdi
                cmovnz  rdx, rdi
                call    SeAuditingWithTokenForSubcategory
                test    al, al
                jnz     loc_140812BC2

loc_1406866FB:                          ; CODE XREF: sub_140686674+18C570↓j
                                        ; sub_140686674+18C5C4↓j ...
                mov     rcx, [rsp+4D0h+var_4A8]
                test    rcx, rcx
                jnz     short loc_14068674C

loc_140686705:                          ; CODE XREF: sub_140686674+DF↓j
                test    r14, r14
                jnz     loc_140812E32

loc_14068670E:                          ; CODE XREF: sub_140686674+18C7C9↓j
                test    rsi, rsi
                jnz     loc_140812E42

loc_140686717:                          ; CODE XREF: sub_140686674+18C7D9↓j
                lea     rcx, [rsp+4D0h+var_488]
                call    SeReleaseSubjectContext
                mov     rcx, [rbp+3D0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+4D0h+arg_0]
                add     rsp, 4A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14068674C:                          ; CODE XREF: sub_140686674+8F↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_140686705
; } // starts at 140686674
sub_140686674   endp

; ---------------------------------------------------------------------------
algn_140686755:                         ; DATA XREF: .rdata:0000000140066E18↑o
                                        ; .pdata:000000014010152C↑o
                align 20h
; Exported entry 2496. SeAuditingWithTokenForSubcategory

; =============== S U B R O U T I N E =======================================



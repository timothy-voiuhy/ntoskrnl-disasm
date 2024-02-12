SeFilterToken   proc near               ; CODE XREF: sub_14079842C+DB↑p
                                        ; DATA XREF: .rdata:000000014009F294↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140853CA0 SIZE 0000003D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 60h
                mov     rdi, [rsp+78h+arg_28]
                xor     ebx, ebx
                and     qword ptr [rax+18h], 0
                xor     r10d, r10d
                xor     r11d, r11d
                xor     esi, esi
                mov     ebp, edx
                mov     r14, rcx
                and     [rdi], rbx
                test    r8, r8
                jz      short loc_1407985BA
                mov     ebx, [r8]

loc_1407985BA:                          ; CODE XREF: SeFilterToken+35↑j
                lea     rax, [r8+8]
                neg     r8
                sbb     rdx, rdx
                and     rdx, rax
                test    r9, r9
                jnz     loc_140853CA0

loc_1407985D0:                          ; CODE XREF: SeFilterToken+BB723↓j
                lea     rax, [r9+4]
                neg     r9
                sbb     r8, r8
                and     r8, rax
                mov     rax, [rsp+78h+arg_20]
                test    rax, rax
                jnz     loc_140853CA8

loc_1407985EE:                          ; CODE XREF: SeFilterToken+BB734↓j
                                        ; SeFilterToken+BB74E↓j
                lea     rax, [rsp+78h+arg_10]
                mov     r9d, ebx
                mov     [rsp+78h+var_28], rax
                mov     rcx, r14
                and     [rsp+78h+var_30], 0
                mov     [rsp+78h+var_38], r11
                mov     [rsp+78h+var_40], r10d
                mov     [rsp+78h+var_48], r8
                mov     r8d, ebp
                mov     dword ptr [rsp+78h+var_50], esi
                mov     [rsp+78h+var_58], rdx
                xor     edx, edx
                call    sub_1406B6208
                mov     ebx, eax
                test    eax, eax
                js      short loc_140798672
                and     [rsp+78h+var_48], 0
                xor     r9d, r9d
                and     [rsp+78h+var_50], 0
                xor     r8d, r8d
                mov     rcx, [rsp+78h+arg_10]
                xor     edx, edx
                and     dword ptr [rsp+78h+var_58], 0
                call    sub_14061EFE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_140798672
                mov     rcx, [rsp+78h+arg_10]
                call    sub_1405CF780
                mov     rax, [rsp+78h+arg_10]
                mov     [rdi], rax

loc_140798672:                          ; CODE XREF: SeFilterToken+AC↑j
                                        ; SeFilterToken+D8↑j
                mov     eax, ebx

loc_140798674:                          ; CODE XREF: SeFilterToken+BB758↓j
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeFilterToken   endp

algn_14079868A:                         ; DATA XREF: .rdata:000000014009F294↑o
                                        ; .pdata:000000014010C9C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1D0h

sub_140798690   proc near               ; CODE XREF: sub_140305494+38F↑p
                                        ; sub_140798AB0+A0↓p ...

var_2B0         = qword ptr -2B0h
var_2A8         = dword ptr -2A8h
var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = dword ptr -290h
var_288         = dword ptr -288h
var_280         = qword ptr -280h
var_278         = dword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_210         = byte ptr -210h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = dword ptr  38h
arg_30          = dword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140853CDE SIZE 00000049 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-198h]
                sub     rsp, 298h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1D0h+var_50], rax
                mov     rax, [rbp+1D0h+arg_48]
                xorps   xmm0, xmm0
                mov     r13, [rbp+1D0h+arg_20]
                mov     r15, rcx
                mov     r14, [rbp+1D0h+arg_40]
                lea     rcx, [rbp+1D0h+var_210]
                mov     [rbp+1D0h+var_228], r8
                xor     esi, esi
                mov     [rbp+1D0h+var_230], rdx
                mov     r8d, 190h
                xor     edx, edx
                mov     [rbp+1D0h+var_248], r14
                mov     r12, r13
                mov     [rbp+1D0h+var_220], rax
                mov     [rbp+1D0h+var_238], rsi
                mov     dil, r9b
                movups  [rbp+1D0h+var_80], xmm0
                movups  [rbp+1D0h+var_70], xmm0
                movups  [rbp+1D0h+var_60], xmm0
                call    memset
                mov     [rbp+1D0h+var_240], rsi
                mov     [rbp+1D0h+var_250], rsi
                test    r13, r13
                jnz     short loc_140798732
                mov     rcx, r15
                call    PsReferencePrimaryToken
                mov     r12, rax

loc_140798732:                          ; CODE XREF: sub_140798690+95↑j
                mov     eax, [rbp+1D0h+arg_28]
                lea     rcx, [rbp+1D0h+var_240]
                test    r13, r13
                mov     [rsp+2D0h+var_2B0], rcx
                mov     r9, rsi
                lea     r8, [rbp+1D0h+var_248]
                mov     ebx, esi
                mov     rcx, r15
                setnz   bl
                bts     eax, 0Bh
                test    r14, r14
                mov     [rbp+1D0h+arg_28], eax
                mov     edx, eax
                setnz   r9b
                call    sub_1405ECD80
                mov     esi, eax
                test    eax, eax
                js      loc_140798907
                xor     ecx, ecx
                lea     rax, [rbp+1D0h+var_250]
                mov     [rsp+2D0h+var_260], rax
                test    r13, r13
                mov     r13d, [rbp+1D0h+arg_28]
                lea     rax, [rbp+1D0h+var_238]
                mov     [rsp+2D0h+var_268], rax
                setnz   cl
                mov     rax, [rbp+1D0h+var_240]
                mov     r9b, dil
                mov     [rsp+2D0h+var_270], rax
                xor     r8d, r8d
                mov     eax, [rbp+1D0h+arg_30]
                xor     edx, edx
                mov     [rsp+2D0h+var_278], ecx
                mov     rcx, r15
                and     [rsp+2D0h+var_280], 0
                mov     [rsp+2D0h+var_288], eax
                mov     [rsp+2D0h+var_290], r13d
                mov     [rsp+2D0h+var_298], r12
                and     [rsp+2D0h+var_2A0], 0
                mov     byte ptr [rsp+2D0h+var_2A8], 0
                mov     byte ptr [rsp+2D0h+var_2B0], 0
                call    sub_14067EC44
                mov     esi, eax
                test    eax, eax
                js      loc_140853CDE
                mov     rcx, [rbp+1D0h+arg_38]
                test    rcx, rcx
                jnz     loc_140853CE8

loc_1407987F7:                          ; CODE XREF: sub_140798690+BB663↓j
                mov     rdi, [rbp+1D0h+var_250]
                mov     eax, [rdi+87Ch]
                test    al, 1
                jz      short loc_14079885B
                cmp     qword ptr [rdi+8C0h], 0
                jnz     short loc_14079885B
                call    sub_1403605D8
                test    eax, eax
                jz      short loc_14079885B
                mov     byte ptr [rdi+390h], 1
                mov     rax, [rbp+1D0h+var_250]
                lock bts dword ptr [rax+87Ch], 0Eh
                jb      short loc_140798853
                mov     rcx, [rbp+1D0h+var_250]
                lea     rdx, [rbp+1D0h+var_80]
                call    KeStackAttachProcess
                mov     rcx, [rbp+1D0h+var_250]
                call    sub_140798A8C
                lea     rcx, [rbp+1D0h+var_80]
                call    KeUnstackDetachProcess

loc_140798853:                          ; CODE XREF: sub_140798690+19C↑j
                mov     r14, [rbp+1D0h+var_248]
                mov     rdi, [rbp+1D0h+var_250]

loc_14079885B:                          ; CODE XREF: sub_140798690+173↑j
                                        ; sub_140798690+17D↑j ...
                mov     rax, [rbp+1D0h+var_230]
                test    rax, rax
                jz      short loc_140798873
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1407989F0
                mov     rdi, [rbp+1D0h+var_250]

loc_140798873:                          ; CODE XREF: sub_140798690+1D2↑j
                cmp     dword ptr [rbp+1D0h+var_238], 0
                mov     eax, 1
                mov     r9d, r13d
                mov     r8d, 2000000h
                mov     rdx, r15
                lea     ecx, [rax+2]
                cmovnz  eax, ecx
                lea     rcx, [rbp+1D0h+var_210]
                mov     [rsp+2D0h+var_298], rcx
                mov     rcx, [rbp+1D0h+var_228]
                mov     [rsp+2D0h+var_2A0], rcx
                mov     rcx, rdi
                mov     [rsp+2D0h+var_2A8], eax
                and     [rsp+2D0h+var_2B0], 0
                call    sub_140686348
                mov     esi, eax
                test    eax, eax
                js      loc_140853CF8
                or      ebx, 4
                test    r14, r14
                jnz     loc_140853D09

loc_1407988C8:                          ; CODE XREF: sub_140798690+BB692↓j
                mov     rcx, [rbp+1D0h+var_250]
                call    sub_140798984
                mov     r8, cs:PsProcessType
                lea     rdx, [rbp+1D0h+var_210]
                mov     rcx, [rbp+1D0h+var_250]
                or      ebx, 2
                bts     [rbp+1D0h+var_90], 9
                call    sub_14068B6B8
                mov     esi, eax
                test    eax, eax
                js      short loc_140798907
                mov     rcx, [rbp+1D0h+var_220]
                and     ebx, 0FFFFFFFBh
                mov     rax, [rbp+1D0h+var_88]
                mov     [rcx], rax

loc_140798907:                          ; CODE XREF: sub_140798690+DF↑j
                                        ; sub_140798690+264↑j ...
                test    bl, 2
                jz      short loc_140798915
                lea     rcx, [rbp+1D0h+var_210]
                call    sub_14090B7CC

loc_140798915:                          ; CODE XREF: sub_140798690+27A↑j
                mov     rcx, [rbp+1D0h+var_250]
                test    rcx, rcx
                jz      short loc_140798931
                cmp     ebx, 4
                jnb     short loc_14079896D

loc_140798923:                          ; CODE XREF: sub_140798690+2E4↓j
                mov     rcx, [rbp+1D0h+var_250]
                mov     edx, 72437350h
                call    ObfDereferenceObjectWithTag

loc_140798931:                          ; CODE XREF: sub_140798690+28C↑j
                mov     rcx, [rbp+1D0h+var_240]
                test    rcx, rcx
                jnz     short loc_140798976

loc_14079893A:                          ; CODE XREF: sub_140798690+2EB↓j
                test    bl, 1
                jnz     short loc_140798947
                mov     rcx, r12
                call    PsDereferenceSiloContext

loc_140798947:                          ; CODE XREF: sub_140798690+2AD↑j
                mov     eax, esi
                mov     rcx, [rbp+1D0h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 298h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14079896D:                          ; CODE XREF: sub_140798690+291↑j
                mov     edx, esi
                call    sub_14071BF0C
                jmp     short loc_140798923
; ---------------------------------------------------------------------------

loc_140798976:                          ; CODE XREF: sub_140798690+2A8↑j
                call    sub_14090A3F8
                jmp     short loc_14079893A
; } // starts at 140798690
sub_140798690   endp

; ---------------------------------------------------------------------------
byte_14079897D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014009F2C8↑o
                                        ; .pdata:000000014010C9D4↑o

; =============== S U B R O U T I N E =======================================


sub_140798984   proc near               ; CODE XREF: sub_140798690+23C↑p
                                        ; DATA XREF: .rdata:000000014009F2F0↑o ...

var_128         = dword ptr -128h
var_124         = dword ptr -124h
var_100         = dword ptr -100h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140853D28 SIZE 0000003F BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 140h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+148h+var_18], rax
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+148h+var_128]
                mov     r8d, 110h
                call    memset
                lock or dword ptr [rbx+464h], 400001h
                cmp     qword ptr [rbx+578h], 0
                jnz     loc_140853D28

loc_1407989CD:                          ; CODE XREF: sub_140798984+BB3DE↓j
                mov     rcx, [rsp+148h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 140h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140798984
sub_140798984   endp

algn_1407989E7:                         ; DATA XREF: .rdata:000000014009F2F0↑o
                                        ; .pdata:000000014010C9E0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407989F0   proc near               ; CODE XREF: sub_140798690+1DA↑p
                                        ; DATA XREF: .pdata:000000014010C9EC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rsi, rcx
                movzx   edx, word ptr [rdx]
                mov     ecx, 200h
                add     rdx, 10h
                mov     r8d, 6E497350h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140798A7E
                lea     rcx, [rax+10h]
                mov     [rax+8], rcx
                movzx   eax, word ptr [rbx]
                mov     [rdi], ax
                movzx   eax, word ptr [rbx]
                mov     [rdi+2], ax
                movzx   r8d, word ptr [rbx]
                mov     rdx, [rbx+8]
                call    memmove
                mov     rcx, [rsi+5C0h]
                test    rcx, rcx
                jz      short loc_140798A59
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140798A59:                          ; CODE XREF: sub_1407989F0+60↑j
                mov     rdx, rbx
                mov     [rsi+5C0h], rdi
                mov     rcx, rsi
                call    sub_14067D18C
                xor     eax, eax

loc_140798A6D:                          ; CODE XREF: sub_1407989F0+93↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140798A7E:                          ; CODE XREF: sub_1407989F0+32↑j
                mov     eax, 0C0000017h
                jmp     short loc_140798A6D
sub_1407989F0   endp

; ---------------------------------------------------------------------------
byte_140798A85  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010C9EC↑o

; =============== S U B R O U T I N E =======================================


sub_140798A8C   proc near               ; CODE XREF: sub_140798690+1B2↑p
                                        ; DATA XREF: .pdata:000000014010C9F8↑o
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                jz      short loc_140798AA3
                mov     edx, 1
                call    sub_1402A8468

loc_140798AA3:                          ; CODE XREF: sub_140798A8C+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140798A8C   endp

algn_140798AA9:                         ; DATA XREF: .pdata:000000014010C9F8↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140798AB0   proc near               ; CODE XREF: sub_140A5C16C+273↓p
                                        ; DATA XREF: .rdata:000000014009F344↑o ...

var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 0000000140853D68 SIZE 00000017 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rdi
                mov     [rax+18h], r14
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_8], rax
                xorps   xmm0, xmm0
                xor     r14d, r14d
                movups  [rbp+57h+var_38], xmm0
                mov     [rbp+57h+var_60], r14
                mov     edi, r14d
                movups  [rbp+57h+var_28], xmm0
                mov     [rbp+57h+var_58], r14
                movups  [rbp+57h+var_18], xmm0
                mov     [rbp+57h+var_50], r14
                movups  [rbp+57h+var_48], xmm0
                call    sub_140364804
                lea     rcx, [rbp+57h+var_60]
                call    sub_14079842C
                mov     ebx, eax
                test    eax, eax
                js      loc_140798C63
                mov     rcx, cs:PsInitialSystemProcess
                lea     rax, [rbp+57h+var_58]
                mov     [rsp+0B0h+var_68], rax
                lea     rdx, unk_140D2EF30
                mov     [rsp+0B0h+var_70], r14
                xor     r8d, r8d
                mov     [rsp+0B0h+var_78], r14
                mov     r9b, [rcx+87Ah]
                mov     dword ptr [rsp+0B0h+var_80], r14d
                mov     dword ptr [rsp+0B0h+var_88], r14d
                mov     [rsp+0B0h+var_90], r14
                call    sub_140798690
                mov     ebx, eax
                test    eax, eax
                js      loc_140853D68
                mov     rcx, [rbp+57h+var_60]
                lea     rax, [rbp+57h+var_48]
                mov     [rsp+0B0h+var_80], rax
                lea     r9d, [r14+1]
                mov     rax, cs:SeTokenObjectType
                xor     r8d, r8d
                mov     byte ptr [rsp+0B0h+var_88], r14b
                mov     edx, 200h
                mov     [rsp+0B0h+var_90], rax
                call    ObOpenObjectByPointer
                mov     ebx, eax
                test    eax, eax
                js      loc_140853D68
                mov     rdi, [rbp+57h+var_58]
                lea     r9d, [r14+10h]
                mov     rcx, rdi
                lea     r8, [rbp+57h+var_48]
                lea     edx, [r14+9]
                call    ZwSetInformationProcess
                mov     ebx, eax
                test    eax, eax
                js      loc_140798C63
                mov     rdx, rdi
                call    sub_1403AF48C
                mov     ebx, eax
                test    eax, eax
                js      loc_140798C63
                lea     rcx, [rbp+57h+var_38]
                mov     edi, r14d
                call    sub_14063A890
                mov     ecx, 4000000h
                mov     r9b, 1
                mov     edx, ecx
                xor     r8d, r8d
                call    MmAdjustWorkingSetSize
                xor     edx, edx
                lea     rcx, [rbp+57h+var_38]
                call    sub_14021E230
                xor     r8d, r8d
                lea     edx, [r14+1]
                lea     rcx, unk_140C47BE0
                call    KeInitializeEvent
                xor     r9d, r9d
                lea     r8, sub_1407D3650
                lea     rcx, [rbp+57h+var_50]
                call    sub_140799A04
                mov     ebx, eax
                test    eax, eax
                js      short loc_140798C63
                mov     word ptr [rsp+0B0h+var_78], r14w
                lea     r9d, [r14+1]
                mov     dword ptr [rsp+0B0h+var_80], 42424D43h
                lea     r8, SeFreePrivileges
                mov     [rsp+0B0h+var_88], 1000h
                lea     rdx, sub_14020A4B0
                lea     rcx, word_140CDB680
                mov     dword ptr [rsp+0B0h+var_90], r14d
                call    ExInitializeLookasideListEx
                test    eax, eax
                mov     ebx, eax
                cmovns  ebx, r14d

loc_140798C63:                          ; CODE XREF: sub_140798AB0+60↑j
                                        ; sub_140798AB0+104↑j ...
                cmp     [rbp+57h+var_60], r14
                jz      short loc_140798C72
                mov     rcx, [rbp+57h+var_60]
                call    PsDereferenceSiloContext

loc_140798C72:                          ; CODE XREF: sub_140798AB0+1B7↑j
                mov     rcx, qword ptr [rbp+57h+var_48]
                test    rcx, rcx
                jz      short loc_140798C80
                call    ZwClose

loc_140798C80:                          ; CODE XREF: sub_140798AB0+1C9↑j
                mov     rcx, [rbp+57h+var_50]
                test    rcx, rcx
                jz      short loc_140798C8E
                call    ZwClose

loc_140798C8E:                          ; CODE XREF: sub_140798AB0+1D7↑j
                test    rdi, rdi
                jnz     loc_140853D71

loc_140798C97:                          ; CODE XREF: sub_140798AB0+BB2CA↓j
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B0h+var_s0]
                mov     rbx, [r11+10h]
                mov     rdi, [r11+18h]
                mov     r14, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140798AB0
sub_140798AB0   endp

byte_140798CBF  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009F344↑o
                                        ; .pdata:000000014010CA04↑o

; =============== S U B R O U T I N E =======================================


sub_140798CC8   proc near               ; CODE XREF: sub_140799B60+69↓p
                                        ; DATA XREF: .rdata:000000014009F36C↑o ...

var_28          = qword ptr -28h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140853D80 SIZE 00000025 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     bpl, cl
                call    sub_140799618
                and     cs:qword_140C478F8, 0
                lea     rax, sub_140878500
                and     cs:qword_140C478E0, 0
                lea     rbx, unk_140C47940
                mov     rcx, rbx
                mov     cs:qword_140C478F0, rax
                lea     r8, dword_140C112C0
                lea     rdx, sub_14032A2D0
                call    KeInitializeDpc
                xor     edx, edx
                lea     rcx, unk_140C47900
                call    KeInitializeTimerEx
                mov     eax, cs:dword_140C12090
                cmp     eax, 3Ch ; '<'
                jl      loc_140853D80

loc_140798D3C:                          ; CODE XREF: sub_140798CC8+BB0C3↓j
                mov     edx, 258h
                cmp     eax, edx
                jg      loc_140853D90

loc_140798D49:                          ; CODE XREF: sub_140798CC8+BB0D0↓j
                cdqe
                lea     rcx, unk_140C47900
                imul    rdx, rax, 0FFFFFFFFFF676980h
                xor     r9d, r9d
                mov     [rsp+48h+var_28], rbx
                xor     r8d, r8d
                call    sub_1402BE300
                lfence
                mov     edx, 8
                mov     ecx, 200h
                mov     r8d, 58637044h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140853D9D
                xor     edx, edx
                mov     rcx, rax
                call    ExFreePoolWithTag
                xor     ecx, ecx
                mov     eax, 80000008h
                cpuid
                mov     [rsp+48h+var_10], ecx
                mov     edi, eax
                xor     ecx, ecx
                mov     [rsp+48h+var_18], eax
                mov     [rsp+48h+var_14], ebx
                mov     [rsp+48h+var_C], edx
                call    sub_1402D2900
                mov     ecx, edi
                mov     r8d, eax
                shr     ecx, 8
                shl     r8, cl
                xor     r8, rsi

loc_140798DC7:                          ; CODE XREF: sub_140798CC8+BB0D8↓j
                lea     rdx, sub_1404ECDD0
                lea     rcx, unk_140C47DC0
                call    KeInitializeDpc
                xor     edx, edx
                lea     rcx, unk_140C47D80
                call    KeInitializeTimerEx
                and     cs:qword_140C47D78, 0
                lea     rax, sub_140873D70
                and     cs:qword_140C47D60, 0
                lea     r8, qword_140C47980
                mov     cs:qword_140C47D70, rax
                lea     rcx, sub_1404ED1E0
                mov     al, cs:byte_140D2D014
                xor     r9d, r9d
                mov     dl, 1
                mov     cs:byte_140D2D002, al
                mov     cs:byte_140CF4320, 1
                mov     cs:byte_140C48630, bpl
                mov     cs:dword_140C509B4, 1
                call    PoRegisterCoalescingCallback
                test    eax, eax
                js      short loc_140798E4D
                mov     cs:byte_140C509B0, 1

loc_140798E4D:                          ; CODE XREF: sub_140798CC8+17C↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140798CC8   endp

algn_140798E63:                         ; DATA XREF: .rdata:000000014009F36C↑o
                                        ; .pdata:000000014010CA10↑o
                align 10h
; Exported entry 1941. PsSetCreateThreadNotifyRoutineEx

; =============== S U B R O U T I N E =======================================



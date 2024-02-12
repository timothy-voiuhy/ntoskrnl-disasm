RtlSetAllBits   proc near               ; CODE XREF: sub_1402C79F0+A6↑p
                                        ; sub_140304F00+155↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046A050 SIZE 00000016 BYTES

                mov     [rsp+arg_0], rdi
                mov     edx, [rcx]
                mov     eax, 0
                mov     r8, [rcx+8]
                test    dl, 1Fh
                setnz   al
                shr     edx, 5
                add     edx, eax
                shl     edx, 2
                shr     rdx, 2
                test    rdx, rdx
                jz      short loc_1403052AA
                or      r9d, 0FFFFFFFFh
                test    r8b, 4
                jnz     loc_14046A050

loc_140305295:                          ; CODE XREF: RtlSetAllBits+164E01↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     rcx, rdx
                shr     rcx, 1
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jnz     short loc_1403052B1

loc_1403052AA:                          ; CODE XREF: RtlSetAllBits+25↑j
                                        ; RtlSetAllBits+56↓j ...
                mov     rdi, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403052B1:                          ; CODE XREF: RtlSetAllBits+48↑j
                mov     [r8+rdx*4-4], r9d
                jmp     short loc_1403052AA
RtlSetAllBits   endp

; ---------------------------------------------------------------------------
algn_1403052B8:                         ; DATA XREF: .rdata:0000000140070F28↑o
                                        ; .pdata:00000001400D3F74↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403052C0   proc near               ; CODE XREF: sub_140304C18+217↑p
                                        ; sub_14092EEF0+16C↓p
                                        ; DATA XREF: ...

var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h

; FUNCTION CHUNK AT 000000014046A066 SIZE 00000025 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                or      r9d, 0FFFFFFFFh
                mov     [rbp+57h+var_38], 1000h
                xor     r8d, r8d
                mov     [rbp+57h+var_30], 2000h
                mov     [rbp+57h+var_28], 4000h
                mov     r10d, 800h
                mov     [rbp+57h+var_40], r10
                mov     [rbp+57h+var_20], 8000h
                mov     [rbp+57h+var_18], r9d
                mov     [rbp+57h+var_14], r8d
                mov     [rbp+57h+var_68], r9d
                mov     [rbp+57h+var_64], 5F5E100h
                mov     [rbp+57h+var_60], r9d
                mov     [rbp+57h+var_5C], r8d
                mov     [rbp+57h+var_58], r9d
                mov     [rbp+57h+var_54], r8d
                test    edx, edx
                jnz     loc_14046A066
                lea     rax, [rbp+57h+var_60]
                mov     [rbp+57h+var_50], rax
                lea     rax, [rbp+57h+var_58]

loc_140305344:                          ; CODE XREF: sub_1403052C0+164DC6↓j
                lea     r8, [rbp+57h+var_70]
                mov     [rbp+57h+var_48], rax
                lea     rdx, [rbp+57h+var_50]
                mov     [rbp+57h+var_70], 0F0040h
                call    sub_14030537C
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 90h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403052C0
sub_1403052C0   endp

byte_140305373  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140070F50↑o
                                        ; .pdata:00000001400D3F80↑o

; =============== S U B R O U T I N E =======================================


sub_14030537C   proc near               ; CODE XREF: sub_1403052C0+98↑p
                                        ; DATA XREF: .rdata:0000000140070F7C↑o ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046A08C SIZE 00000024 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r13, rcx
                xor     edi, edi
                lea     rcx, [rax+20h]
                mov     [rax+20h], rdi
                mov     rsi, rdx
                call    KeQueryPerformanceCounter
                mov     rbx, [rsp+58h+arg_18]
                test    rbx, rbx
                jz      loc_14046A08C
                mov     r12, r13
                mov     r15d, edi
                sub     r12, rsi

loc_1403053C2:                          ; CODE XREF: sub_14030537C+E6↓j
                mov     r14, [rsi]
                test    r14, r14
                jz      loc_140305457
                cmp     dword ptr [r14], 0FFFFFFFFh
                mov     rax, r14
                mov     ebp, 1
                jb      loc_14046A096

loc_1403053E0:                          ; CODE XREF: sub_14030537C+164D25↓j
                mov     edx, ebp
                mov     ecx, 200h
                shl     edx, 5
                mov     r8d, 74496D73h
                call    ExAllocatePoolWithTag
                mov     r8, rax
                test    rax, rax
                jz      loc_14046A0A6
                test    ebp, ebp
                jz      short loc_140305452
                mov     r9, rax
                mov     r10d, ebp

loc_14030540B:                          ; CODE XREF: sub_14030537C+D4↓j
                mov     ecx, [r14+4]
                mov     eax, [r14]
                lea     r14, [r14+8]
                mov     [r9+4], edi
                mov     [r9+10h], rdi
                mov     [r9+18h], rdi
                mov     [r9], eax
                mov     rax, 431BDE82D7B634DBh
                imul    rcx, rbx
                lea     r9, [r9+20h]
                imul    rcx
                sar     rdx, 12h
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     [r9-18h], rdx
                sub     r10, 1
                jnz     short loc_14030540B

loc_140305452:                          ; CODE XREF: sub_14030537C+87↑j
                mov     [r12+rsi+10h], r8

loc_140305457:                          ; CODE XREF: sub_14030537C+4C↑j
                inc     r15
                add     rsi, 8
                cmp     r15, 2
                jl      loc_1403053C2
                mov     rcx, [rsp+58h+arg_10]
                mov     rcx, [rcx]
                mov     [r13+20h], rcx

loc_140305474:                          ; CODE XREF: sub_14030537C+164D15↓j
                                        ; sub_14030537C+164D2F↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, edi
                add     rsp, 20h
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
sub_14030537C   endp

byte_14030548C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140070F7C↑o
                                        ; .pdata:00000001400D3F8C↑o

; =============== S U B R O U T I N E =======================================


sub_140305494   proc near               ; CODE XREF: sub_1406A8700+1DA↓p
                                        ; DATA XREF: .rdata:0000000140071038↑o ...

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_38          = qword ptr -38h
var_28          = byte ptr -28h

; FUNCTION CHUNK AT 000000014046A0B0 SIZE 000000B6 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+18h], rbx
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_38], rax
                xorps   xmm0, xmm0
                mov     [rsp+0E8h+var_98], 100003h
                movups  [rsp+0E8h+var_78], xmm0
                xor     r15d, r15d
                mov     dword ptr [r11-48h], 100005h
                movups  xmmword ptr [r11-68h], xmm0
                mov     [rsp+0E8h+var_88], r15
                mov     edi, ecx
                movups  xmmword ptr [r11-58h], xmm0
                mov     rax, gs:188h
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     ebx, edx
                mov     dword ptr [r11-44h], 100002h
                mov     dword ptr [r11-40h], 100014h
                add     [rax+1E4h], cx
                lea     r13, qword_140D24160
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockExclusiveEx
                mov     eax, cs:dword_140D24148
                lea     r12d, [r15+1]
                test    eax, eax
                jz      loc_14030579B
                cmp     eax, ebx
                jnz     loc_14046A0B0

loc_14030553E:                          ; CODE XREF: sub_140305494+30D↓j
                mov     eax, cs:dword_140D24140
                test    al, 8
                jz      loc_1403057A6

loc_14030554C:                          ; CODE XREF: sub_140305494+32F↓j
                mov     rdx, cs:qword_140D24150
                test    rdx, rdx
                jz      loc_1403057C8

loc_14030555C:                          ; CODE XREF: sub_140305494+3F2↓j
                mov     ecx, cs:dword_140D24140
                test    cl, 2
                jz      loc_14030588B

loc_14030556B:                          ; CODE XREF: sub_140305494+455↓j
                test    cl, 10h
                jz      loc_1403058EE

loc_140305574:                          ; CODE XREF: sub_140305494+47B↓j
                mov     eax, cs:dword_140D24144
                test    eax, eax
                jz      loc_14030591A
                cmp     edi, eax
                jnz     loc_14046A15C

loc_14030558A:                          ; CODE XREF: sub_140305494+507↓j
                mov     eax, cs:dword_140D24140
                test    al, 20h
                jz      loc_1403059A0

loc_140305598:                          ; CODE XREF: sub_140305494+531↓j
                test    r12b, al
                jz      loc_1403059CA

loc_1403055A1:                          ; CODE XREF: sub_140305494+561↓j
                mov     ebx, r15d

loc_1403055A4:                          ; CODE XREF: sub_140305494+322↓j
                                        ; sub_140305494+3A4↓j ...
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rax, rsi
                lock xadd cs:qword_140D24160, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1403055C2
                mov     rcx, r13
                call    ExfTryToWakePushLock

loc_1403055C2:                          ; CODE XREF: sub_140305494+124↑j
                mov     [rsp+0E8h+var_90], r15d
                mov     rcx, r13
                mov     rdi, gs:188h
                call    sub_140245330
                cmp     eax, r12d
                jnz     loc_140305780
                mov     rcx, [rdi+0B8h]
                call    sub_140245840
                mov     edx, eax

loc_1403055EF:                          ; CODE XREF: sub_140305494+2EF↓j
                add     [rdi+1E6h], si
                add     [rdi+31Ah], r12b
                movsx   ecx, byte ptr [rdi+318h]
                mov     r9, r13
                movsx   r8d, byte ptr [rdi+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rdi+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_14030562A:                          ; CODE XREF: sub_140305494+1C1↓j
                                        ; sub_140305494+1C9↓j ...
                bsr     ecx, r8d
                mov     [rsp+0E8h+var_94], ecx
                jz      loc_14030575E
                lea     rsi, [rcx+rcx*2]
                mov     eax, r12d
                shl     rsi, 5
                add     rsi, [rdi+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rsi+1Ah], r12b
                jz      short loc_14030562A
                mov     eax, [rsi+20h]
                test    r12b, al
                jnz     short loc_14030562A
                mov     rax, [rsi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_14030562A
                cmp     [rsi+28h], edx
                jnz     short loc_14030562A
                and     byte ptr [rsi+1Ah], 0FEh
                mov     rax, [rsi+20h]
                test    rax, rax
                jz      short loc_14030562A
                test    rsi, rsi
                jz      loc_14030575E
                mov     al, [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1403056A2
                mov     rcx, rsi
                call    sub_14031EC80

loc_1403056A2:                          ; CODE XREF: sub_140305494+204↑j
                mov     eax, [rsi+58h]
                and     eax, 1FFFFh
                mov     [rsp+0E8h+var_90], eax
                and     dword ptr [rsi+58h], 0FFFE0000h
                and     byte ptr [rsi+19h], 0FEh
                mov     [rsi+20h], r15
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rsi, [rdi+320h]
                imul    rsi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r12b
                jnz     loc_140305788
                movzx   eax, byte ptr [rdi+318h]
                bts     eax, edx
                mov     [rdi+318h], al

loc_1403056F8:                          ; CODE XREF: sub_140305494+2D1↓j
                                        ; sub_140305494+302↓j
                dec     byte ptr [rdi+31Ah]
                lea     r8, [rsp+0E8h+var_90]
                mov     rdx, r13
                mov     rcx, rdi
                call    sub_1402456E0
                add     [rdi+1E6h], r12w
                jnz     short loc_140305729
                lea     rax, [rdi+98h]
                cmp     [rax], rax
                jz      short loc_140305729
                call    KiCheckForKernelApcDelivery

loc_140305729:                          ; CODE XREF: sub_140305494+282↑j
                                        ; sub_140305494+28E↑j
                call    KeLeaveCriticalRegion
                mov     eax, ebx
                mov     rcx, [rsp+0E8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E8h+var_28]
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
                align 2

loc_14030575E:                          ; CODE XREF: sub_140305494+19E↑j
                                        ; sub_140305494+1EC↑j
                mov     eax, [rdi+78h]
                bt      eax, 10h
                jb      short loc_1403056F8
                mov     r9d, edx
                mov     r8, r13
                mov     rdx, rdi
                mov     [rsp+0E8h+var_C8], r15
                mov     ecx, 162h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140305780:                          ; CODE XREF: sub_140305494+147↑j
                or      edx, 0FFFFFFFFh
                jmp     loc_1403055EF
; ---------------------------------------------------------------------------

loc_140305788:                          ; CODE XREF: sub_140305494+24E↑j
                mov     ecx, edx
                mov     eax, r12d
                shl     al, cl
                lock or [rdi+366h], al
                jmp     loc_1403056F8
; ---------------------------------------------------------------------------

loc_14030579B:                          ; CODE XREF: sub_140305494+9C↑j
                mov     cs:dword_140D24148, ebx
                jmp     loc_14030553E
; ---------------------------------------------------------------------------

loc_1403057A6:                          ; CODE XREF: sub_140305494+B2↑j
                lea     rcx, qword_140D243F0
                call    sub_1407D00D8
                mov     ebx, eax
                test    eax, eax
                js      loc_1403055A4
                or      cs:dword_140D24140, 8
                jmp     loc_14030554C
; ---------------------------------------------------------------------------

loc_1403057C8:                          ; CODE XREF: sub_140305494+C2↑j
                call    sub_1407B7330
                test    eax, eax
                jz      loc_14046A0BA
                mov     rcx, cs:PsInitialSystemProcess
                lea     r8, [rsp+0E8h+var_78]
                xor     edx, edx
                call    sub_1402D3C90
                mov     rcx, cs:PsInitialSystemProcess
                lea     rax, [rsp+0E8h+var_88]
                mov     [rsp+0E8h+var_A0], rax
                lea     rdx, unk_140C02068
                mov     [rsp+0E8h+var_A8], r15
                xor     r8d, r8d
                mov     [rsp+0E8h+var_B0], r15
                mov     r9b, [rcx+87Ah]
                mov     [rsp+0E8h+var_B8], r15d
                mov     dword ptr [rsp+0E8h+var_C0], r15d
                mov     [rsp+0E8h+var_C8], r15
                call    sub_140798690
                xor     edx, edx
                lea     rcx, [rsp+0E8h+var_78]
                mov     ebx, eax
                call    sub_14021E230
                test    ebx, ebx
                js      loc_1403055A4
                mov     rcx, [rsp+0E8h+var_88]
                lea     rax, [rsp+0E8h+var_80]
                mov     [rsp+0E8h+var_C0], r15
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+0E8h+var_C8], rax
                xor     edx, edx
                mov     [rsp+0E8h+var_80], r15
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      loc_14046A0C4
                mov     rdx, [rsp+0E8h+var_88]
                mov     rax, [rsp+0E8h+var_80]
                mov     cs:qword_140D24150, rdx
                mov     cs:qword_140D24158, rax
                jmp     loc_14030555C
; ---------------------------------------------------------------------------

loc_14030588B:                          ; CODE XREF: sub_140305494+D1↑j
                mov     esi, cs:dword_140D24148
                lea     r14, unk_140D239C0
                mov     rcx, r14
                mov     cs:qword_140D24100, rdx
                call    sub_1403C8BD0
                mov     ebx, eax
                test    eax, eax
                js      short loc_1403058D2
                mov     eax, cs:dword_140D240F0
                test    al, 20h
                jz      short loc_1403058CF
                mov     r8d, esi
                lea     rcx, unk_140D23EB0
                mov     rdx, r14
                call    sub_1403C8B58
                mov     ebx, eax
                test    eax, eax
                js      short loc_1403058D2

loc_1403058CF:                          ; CODE XREF: sub_140305494+421↑j
                mov     ebx, r15d

loc_1403058D2:                          ; CODE XREF: sub_140305494+417↑j
                                        ; sub_140305494+439↑j
                test    ebx, ebx
                js      loc_14046A0D4
                mov     ecx, cs:dword_140D24140
                or      ecx, 2
                mov     cs:dword_140D24140, ecx
                jmp     loc_14030556B
; ---------------------------------------------------------------------------

loc_1403058EE:                          ; CODE XREF: sub_140305494+DA↑j
                mov     rcx, r12
                call    sub_1402ED014
                mov     ecx, cs:dword_140D24140
                shl     eax, 4
                xor     eax, ecx
                and     eax, 10h
                xor     ecx, eax
                mov     cs:dword_140D24140, ecx
                test    cl, 10h
                jnz     loc_140305574
                jmp     loc_14046A10C
; ---------------------------------------------------------------------------

loc_14030591A:                          ; CODE XREF: sub_140305494+E8↑j
                mov     ecx, edi
                lea     rsi, unk_140D24410
                and     ecx, 0FFFF000h
                lea     rdx, [rsp+0E8h+var_48]
                or      ecx, 10000300h
                mov     r8d, 3
                shr     ecx, 8
                mov     [rsp+0E8h+var_98], ecx
                and     ecx, 0FFFF0h
                mov     eax, ecx
                or      ecx, 100002h
                mov     [rsp+0E8h+var_44], ecx
                or      eax, 100005h
                mov     rcx, rsi
                mov     [rsp+0E8h+var_48], eax
                call    sub_1403C8C64
                mov     ebx, eax
                test    eax, eax
                js      loc_1403055A4
                mov     r8d, r12d
                lea     rdx, [rsp+0E8h+var_98]
                lea     rcx, unk_140D24480
                call    sub_1403C8C64
                mov     ebx, eax
                test    eax, eax
                js      loc_14046A116
                mov     cs:dword_140D24144, edi
                jmp     loc_14030558A
; ---------------------------------------------------------------------------

loc_1403059A0:                          ; CODE XREF: sub_140305494+FE↑j
                lea     rcx, qword_140D24170
                call    sub_1407C1B44
                mov     ebx, eax
                test    eax, eax
                js      loc_1403055A4
                mov     eax, cs:dword_140D24140
                or      eax, 20h
                mov     cs:dword_140D24140, eax
                jmp     loc_140305598
; ---------------------------------------------------------------------------

loc_1403059CA:                          ; CODE XREF: sub_140305494+107↑j
                mov     r9d, cs:dword_140D24180
                mov     r8, cs:qword_140D24158
                shr     r9d, 7
                and     r9d, r12d
                call    sub_1407B5FA0
                mov     ebx, eax
                test    eax, eax
                js      loc_1403055A4
                or      cs:dword_140D24140, r12d
                jmp     loc_1403055A1
; } // starts at 140305494
sub_140305494   endp

; ---------------------------------------------------------------------------
algn_1403059FA:                         ; DATA XREF: .rdata:0000000140071038↑o
                                        ; .pdata:00000001400D3F98↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140305A00   proc near               ; CODE XREF: sub_1406A8700+1C2↓p
                                        ; DATA XREF: .pdata:00000001400D3FA4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edx, edx
                mov     r8d, 1A50h
                mov     rbx, rcx
                call    memset
                mov     rcx, rbx
                mov     byte ptr [rbx+1784h], 2
                call    sub_140305B0C
                xor     edi, edi
                lea     rax, [rbx+17A0h]
                mov     [rax+8], rax
                lea     rcx, [rbx+19D0h]
                mov     [rax], rdi
                xor     edx, edx
                lea     rax, [rbx+17B0h]
                mov     [rax+8], rax
                lea     r8d, [rdi+70h]
                mov     [rax], rdi
                lea     rax, [rbx+17C0h]
                mov     [rax+8], rax
                mov     [rax], rdi
                lea     rax, [rbx+1810h]
                mov     [rbx+1798h], rdi
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+17F8h]
                mov     [rbx+1808h], di
                mov     byte ptr [rbx+180Ah], 6
                mov     [rbx+180Ch], edi
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+1828h]
                mov     [rbx+17F0h], di
                mov     byte ptr [rbx+17F2h], 6
                mov     [rbx+17F4h], edi
                mov     [rax+8], rax
                mov     [rax], rax
                mov     word ptr [rbx+1820h], 1
                mov     byte ptr [rbx+1822h], 6
                mov     [rbx+1824h], edi
                call    memset
                lea     rax, [rbx+19E0h]
                mov     word ptr [rbx+19D8h], 1
                mov     byte ptr [rbx+19DAh], 6
                mov     [rbx+19DCh], edi
                mov     rbx, [rsp+28h+arg_0]
                mov     [rax+8], rax
                mov     [rax], rax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140305A00   endp

byte_140305B06  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D3FA4↑o

; =============== S U B R O U T I N E =======================================


sub_140305B0C   proc near               ; CODE XREF: sub_140305A00+24↑p
                                        ; DATA XREF: .pdata:00000001400D3FB0↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                xor     edx, edx
                inc     rcx
                mov     r8d, 177Fh
                call    memset
                lea     rbx, [rdi+7E0h]
                mov     byte ptr [rdi], 2
                mov     rdx, rbx
                lea     rcx, [rdi+50h]
                call    sub_140305CB0
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140305CB0
                xorps   xmm0, xmm0
                lea     rcx, [rdi+0FE0h]
                movups  xmmword ptr [rdi+0F78h], xmm0
                xor     eax, eax
                movups  xmmword ptr [rdi+0F88h], xmm0
                movups  xmmword ptr [rdi+0F98h], xmm0
                mov     [rdi+0FA8h], rax
                call    sub_1406A8D0C
                mov     eax, [rdi+1078h]
                lea     rcx, [rdi+10C0h]
                and     eax, 0FFFFFFFEh
                mov     dword ptr [rdi+1080h], 3
                or      eax, 6
                xor     edx, edx
                mov     r8d, 510h
                mov     [rdi+1078h], eax
                call    memset
                lea     r8, [rdi+15E8h]
                lea     rax, [rdi+10D0h]
                mov     [rdi+10B8h], rax
                lea     rcx, [rdi+15D0h]
                mov     rax, ds:0FFFFF78000000008h
                add     rax, 23C34600h
                mov     [rdi+10C8h], rax
                mov     qword ptr [r8], 1F4h
                mov     qword ptr [r8+10h], 3E8h
                mov     qword ptr [r8+20h], 0BB8h
                mov     qword ptr [r8+30h], 1388h
                mov     qword ptr [r8+40h], 2710h
                mov     qword ptr [r8+50h], 4E20h
                mov     qword ptr [r8+60h], 0C350h
                mov     qword ptr [r8+70h], 186A0h
                call    sub_140306070
                lea     rbx, [rdi+1670h]
                xor     edx, edx
                mov     rcx, rbx
                mov     r8d, 0E8h
                call    memset
                lea     rcx, [rbx+0A8h]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     rax, rbx
                cmp     rbx, rcx
                jnb     short loc_140305C57

loc_140305C47:                          ; CODE XREF: sub_140305B0C+149↓j
                mov     [rax], rdx
                mov     [rax+8], rdx
                add     rax, 18h
                cmp     rax, rcx
                jb      short loc_140305C47

loc_140305C57:                          ; CODE XREF: sub_140305B0C+139↑j
                mov     eax, [rbx+0C0h]
                and     eax, 0FFFFFFFEh
                mov     [rcx], rdx
                or      eax, 6
                mov     dword ptr [rbx+0C8h], 5
                lea     rcx, [rdi+0FD0h]
                mov     [rbx+0C0h], eax
                call    InitializeSListHead
                mov     eax, [rdi+1758h]
                mov     rbx, [rsp+28h+arg_0]
                and     eax, 0FFFFFFFEh
                or      eax, 6
                mov     dword ptr [rdi+1760h], 6
                mov     [rdi+1758h], eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140305B0C   endp

algn_140305CAA:                         ; DATA XREF: .pdata:00000001400D3FB0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140305CB0   proc near               ; CODE XREF: sub_140305B0C+2E↑p
                                        ; sub_140305B0C+38↑p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_4           = dword ptr  0Ch
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                and     [rsp+48h+arg_8], 0
                mov     rbp, rdx
                mov     r14, rcx
                xor     edx, edx
                add     rcx, 0C0h
                mov     r8d, 6D0h
                call    memset
                xorps   xmm0, xmm0
                mov     [rsp+48h+arg_0], 0Ch
                movups  xmmword ptr [r14], xmm0
                xor     eax, eax
                mov     [rsp+48h+arg_4], 4
                mov     [r14+10h], rax
                lea     rcx, [r14+0C0h]
                movups  xmmword ptr [r14+18h], xmm0
                lea     rdx, [rsp+48h+arg_0]
                movups  xmmword ptr [r14+28h], xmm0
                mov     [r14+38h], rax
                movups  xmmword ptr [r14+40h], xmm0
                mov     [r14+50h], rax
                movups  xmmword ptr [r14+58h], xmm0
                movups  xmmword ptr [r14+68h], xmm0
                mov     [r14+78h], rax
                movups  xmmword ptr [r14+80h], xmm0
                mov     [r14+90h], rax
                movups  xmmword ptr [r14+98h], xmm0
                movups  xmmword ptr [r14+0A8h], xmm0
                mov     [r14+0B8h], rax
                call    sub_140305F78
                lea     rsi, [r14+560h]
                mov     r15d, 60h ; '`'
                mov     r8d, r15d
                mov     rcx, rsi
                xor     edx, edx
                call    memset
                lea     rax, [rsi+40h]
                mov     r12, 0FFFFF78000000320h
                mov     [rax+8], rax
                lea     rdi, [r14+5E8h]
                and     qword ptr [rax], 0
                mov     r8d, r15d
                xor     edx, edx
                mov     rcx, [r12]
                mov     eax, cs:dword_140CFC418
                sar     rcx, 0Ch
                mov     ecx, ecx
                imul    rcx, rax
                sar     rcx, 11h
                mov     [rsi+34h], ecx
                mov     rcx, rdi
                and     dword ptr [r14+5C0h], 0
                mov     [r14+5E0h], rbp
                call    memset
                lea     rax, [rdi+40h]
                mov     r8d, r15d
                mov     [rax+8], rax
                lea     rbx, [r14+670h]
                and     qword ptr [rax], 0
                xor     edx, edx
                mov     rcx, [r12]
                mov     eax, cs:dword_140CFC418
                sar     rcx, 0Ch
                mov     ecx, ecx
                imul    rcx, rax
                sar     rcx, 11h
                mov     [rdi+34h], ecx
                mov     rcx, rbx
                mov     dword ptr [r14+648h], 1
                mov     [r14+668h], rbp
                call    memset
                lea     rax, [rbx+40h]
                mov     [rax+8], rax
                and     qword ptr [rax], 0
                mov     rcx, [r12]
                mov     eax, cs:dword_140CFC418
                sar     rcx, 0Ch
                mov     ecx, ecx
                imul    rcx, rax
                sar     rcx, 11h
                mov     [rbx+34h], ecx
                mov     dword ptr [r14+648h], 2
                and     qword ptr [r14+6E0h], 0
                lea     r8d, [r15-5Fh]
                and     qword ptr [r14+6E8h], 0
                lea     ecx, [r15-5Ah]
                and     qword ptr [r14+6D8h], 0
                mov     eax, 20000000h
                mov     [r14+658h], rax
                or      r9d, 0FFFFFFFFh
                mov     [r14+650h], rax
                lea     rax, [r14+450h]
                mov     [r14+668h], rbp
                mov     [r14+5D0h], r8
                mov     qword ptr [r14+5D8h], 1FFFFFFFh
                mov     [r14+5C8h], r8
                mov     qword ptr [r14+660h], 3FFFFFFFh
                mov     [r14+10h], rsi
                mov     [r14+50h], rdi
                mov     [r14+90h], rbx

loc_140305EC4:                          ; CODE XREF: sub_140305CB0+22A↓j
                xor     edx, edx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0
                mov     [rax+10h], rdx
                mov     [rax], r9d
                lea     rax, [rax+18h]
                sub     rcx, r8
                jnz     short loc_140305EC4
                lea     rax, [r14+4E0h]
                lea     ecx, [rdx+8]

loc_140305EE6:                          ; CODE XREF: sub_140305CB0+240↓j
                mov     [rax], r9d
                lea     rax, [rax+10h]
                sub     rcx, r8
                jnz     short loc_140305EE6
                mov     eax, [r14+360h]
                lea     rcx, [rsp+48h+arg_8]
                and     eax, 0FFFFFFFEh
                mov     dword ptr [r14+368h], 4
                or      eax, 6
                mov     byte ptr [r14+308h], 2
                mov     [r14+360h], eax
                mov     dword ptr [r14+400h], 0FFFFD8EFh
                call    KeQueryPerformanceCounter
                imul    rcx, [rsp+48h+arg_8], 2710h
                mov     rbx, [rsp+48h+arg_10]
                mov     rax, 431BDE82D7B634DBh
                mov     rbp, [rsp+48h+arg_18]
                imul    rcx
                sar     rdx, 12h
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     [r14+3F0h], edx
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140305CB0   endp

algn_140305F71:                         ; DATA XREF: .pdata:00000001400D3FBC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140305F78   proc near               ; CODE XREF: sub_140305CB0+AA↑p
                                        ; sub_140304F00+1650B2↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     r8d, 238h
                xor     edx, edx
                mov     rbx, rcx
                call    memset
                mov     rax, [rdi]
                mov     r10d, 1
                mov     [rbx+110h], rax
                lea     rax, [rbx+120h]
                mov     [rbx+100h], r10d
                lea     ecx, [r10+0Fh]

loc_140305FB7:                          ; CODE XREF: sub_140305F78+4D↓j
                mov     [rax+8], rax
                mov     [rax], rax
                add     rax, 10h
                sub     rcx, r10
                jnz     short loc_140305FB7
                mov     eax, [rdi+4]
                xor     edx, edx
                or      r8d, 0FFFFFFFFh
                mov     [rbx+220h], r8d
                lea     r9d, [rax+17h]
                neg     eax
                and     r9d, eax
                mov     eax, 1000h
                sub     eax, r9d
                div     dword ptr [rdi]
                mov     [rbx+224h], eax
                bsr     eax, eax
                mov     [rbx+108h], eax
                mov     edx, [rbx+224h]
                test    edx, edx
                jz      short loc_14030600A
                lea     eax, [rdx-1]
                test    edx, eax
                jz      short loc_140306011

loc_14030600A:                          ; CODE XREF: sub_140305F78+89↑j
                add     [rbx+108h], r10d

loc_140306011:                          ; CODE XREF: sub_140305F78+90↑j
                mov     ecx, [rbx+108h]
                mov     eax, r10d
                shl     eax, cl
                shr     r8d, cl
                sub     eax, r10d
                mov     [rbx+10Ch], eax
                lea     ecx, [rdx+0Fh]
                shr     ecx, 4
                bsr     eax, ecx
                mov     [rbx+104h], r8d
                mov     [rbx+118h], r9d
                mov     [rbx+22Ch], edx
                mov     [rbx+228h], eax
                test    ecx, ecx
                jz      short loc_140306056
                lea     eax, [rcx-1]
                test    ecx, eax
                jz      short loc_14030605D

loc_140306056:                          ; CODE XREF: sub_140305F78+D5↑j
                add     [rbx+228h], r10d

loc_14030605D:                          ; CODE XREF: sub_140305F78+DC↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140305F78   endp

algn_140306069:                         ; DATA XREF: .pdata:00000001400D3FC8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140306070   proc near               ; CODE XREF: sub_140305B0C+10C↑p
                                        ; DATA XREF: .pdata:00000001400D3FD4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                xorps   xmm0, xmm0
                movups  xmmword ptr [rcx], xmm0
                xor     eax, eax
                mov     rbx, rcx
                mov     [rcx+10h], rax
                mov     rdi, r8
                lea     rcx, [rsp+28h+arg_0]
                call    KeQueryPerformanceCounter
                lea     r9, [rdi+80h]
                mov     r8, rdi
                cmp     rdi, r9
                jnb     short loc_1403060E0

loc_1403060AB:                          ; CODE XREF: sub_140306070+6E↓j
                mov     ecx, [r8]
                mov     rax, 431BDE82D7B634DBh
                imul    rcx, [rsp+28h+arg_0]
                and     dword ptr [r8+8], 0
                imul    rcx
                sar     rdx, 12h
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     [r8], rdx
                add     r8, 10h
                cmp     r8, r9
                jb      short loc_1403060AB

loc_1403060E0:                          ; CODE XREF: sub_140306070+39↑j
                or      qword ptr [r9-10h], 0FFFFFFFFFFFFFFFFh
                mov     dword ptr [rbx+8], 8
                mov     [rbx+10h], rdi
                mov     [rbx], rdi
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140306070   endp

byte_1403060FF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D3FD4↑o

; =============== S U B R O U T I N E =======================================


sub_140306108   proc near               ; CODE XREF: sub_1406A8700+1AE↓p
                                        ; sub_1406A8A68+1F6↓p ...
                sub     rsp, 28h
                mov     r8d, edx
                mov     rdx, rcx
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140306108   endp

algn_140306122:                         ; DATA XREF: .pdata:00000001400D3FE0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140306128   proc near               ; CODE XREF: sub_1406A8FD4+62↓p
                                        ; DATA XREF: .pdata:00000001400D3FEC↑o

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 30h
                mov     rax, gs:188h
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rsi, rcx
                add     [rax+1E4h], di
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                lea     r12d, [rdi+2]
                xor     r8d, r8d
                mov     r9d, r12d
                lea     rdx, [rsp+58h+arg_8]
                mov     rcx, rsi
                call    sub_140208EE8
                neg     rax
                sbb     ebp, ebp
                and     ebp, 0FFFFFE96h
                mov     rax, rdi
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14030619C
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14030619C:                          ; CODE XREF: sub_140306128+6A↑j
                and     [rsp+58h+arg_10], 0
                mov     rcx, rsi
                mov     rbx, gs:188h
                call    sub_140245330
                cmp     eax, r12d
                jnz     loc_140306347
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax

loc_1403061C9:                          ; CODE XREF: sub_140306128+222↓j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r12b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, rsi
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_140306204:                          ; CODE XREF: sub_140306128+107↓j
                                        ; sub_140306128+10F↓j ...
                bsr     ecx, r8d
                mov     [rsp+58h+arg_18], ecx
                jz      loc_140306324
                lea     rdi, [rcx+rcx*2]
                mov     eax, r12d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r12b
                jz      short loc_140306204
                mov     eax, [rdi+20h]
                test    r12b, al
                jnz     short loc_140306204
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_140306204
                cmp     [rdi+28h], edx
                jnz     short loc_140306204
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_140306204
                test    rdi, rdi
                jz      loc_140306324
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_14030627C
                mov     rcx, rdi
                call    sub_14031EC80

loc_14030627C:                          ; CODE XREF: sub_140306128+14A↑j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rsp+58h+arg_10], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r12b
                jnz     loc_14030634F
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1403062D6:                          ; CODE XREF: sub_140306128+203↓j
                                        ; sub_140306128+235↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r12w
                jnz     short loc_140306307
                lea     rcx, [rbx+98h]
                cmp     [rcx], rcx
                jz      short loc_140306307
                call    KiCheckForKernelApcDelivery

loc_140306307:                          ; CODE XREF: sub_140306128+1CC↑j
                                        ; sub_140306128+1D8↑j
                call    KeLeaveCriticalRegion
                mov     rbx, [rsp+58h+arg_0]
                lea     eax, [rbp-3FFFFDDBh]
                add     rsp, 30h
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140306324:                          ; CODE XREF: sub_140306128+E4↑j
                                        ; sub_140306128+132↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_1403062D6
                and     [rsp+58h+var_38], 0
                mov     r8, rsi
                mov     r9d, edx
                mov     ecx, 162h
                mov     rdx, rbx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140306347:                          ; CODE XREF: sub_140306128+8D↑j
                or      edx, 0FFFFFFFFh
                jmp     loc_1403061C9
; ---------------------------------------------------------------------------

loc_14030634F:                          ; CODE XREF: sub_140306128+198↑j
                mov     ecx, edx
                mov     eax, r12d
                shl     al, cl
                lock or [rbx+366h], al
                jmp     loc_1403062D6
sub_140306128   endp

; ---------------------------------------------------------------------------
algn_140306362:                         ; DATA XREF: .pdata:00000001400D3FEC↑o
                align 10h
; Exported entry 1852. PsGetProcessSessionIdEx

; =============== S U B R O U T I N E =======================================



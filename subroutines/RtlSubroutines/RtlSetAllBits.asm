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


                public PsGetProcessSessionIdEx
PsGetProcessSessionIdEx proc near       ; CODE XREF: sub_14067955C+13E↓p
                                        ; sub_14067A140+A3F↓p ...
                sub     rsp, 28h
                call    sub_140245840
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetProcessSessionIdEx endp

byte_14030637F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D3FF8↑o

; =============== S U B R O U T I N E =======================================


sub_140306388   proc near               ; CODE XREF: sub_140507AB4+48↓p
                                        ; sub_1406A93A0+148↓p ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014046A166 SIZE 00000198 BYTES

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                xor     esi, esi
                mov     [rsp+98h+arg_0], 1
                lea     rbp, [rcx+0B8h]
                mov     [rax-60h], rsi
                mov     r14, rcx
                mov     [rsp+98h+var_50], rsi
                mov     rcx, rbp
                mov     [rsp+98h+var_68], esi
                mov     rbx, r9
                mov     qword ptr [rax-58h], 0FFFFFFFFFFFFD8F0h
                mov     r12d, esi
                call    KeAcquireSpinLockRaiseToDpc
                mov     dil, al
                cmp     [rsp+98h+arg_28], sil
                jz      short loc_1403063F4
                bts     dword ptr [r14+50h], 0Ah

loc_1403063F4:                          ; CODE XREF: sub_140306388+64↑j
                lea     r13, [r14+0C0h]
                or      r15, 0FFFFFFFFFFFFFFFFh

loc_1403063FF:                          ; CODE XREF: sub_140306388+17A↓j
                                        ; sub_140306388+163F0D↓j
                mov     rsi, r12
                cmp     [r13+0], r13
                jnz     short loc_14030643C

loc_140306408:                          ; CODE XREF: sub_140306388+F3↓j
                                        ; sub_140306388+100↓j ...
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A29A

loc_14030641E:                          ; CODE XREF: sub_140306388+163F14↓j
                                        ; sub_140306388+163F20↓j ...
                movzx   ecx, dil
                mov     cr8, rcx
                mov     eax, [rsp+98h+var_68]
                add     rsp, 58h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14030643C:                          ; CODE XREF: sub_140306388+7E↑j
                mov     r8, [rsp+98h+arg_10]
                lea     rax, [rsp+98h+var_60]
                mov     rdx, [rsp+98h+arg_8]
                mov     r9, rbx
                mov     [rsp+98h+var_70], rax
                mov     rcx, r13
                mov     [rsp+98h+var_78], r12
                call    sub_140306524
                mov     rbx, [rsp+98h+var_60]
                xor     r12d, r12d
                test    rbx, rbx
                jnz     short loc_140306493
                cmp     [rsp+98h+arg_20], r12b
                jz      short loc_140306408
                test    al, al
                jz      loc_14046A1DA
                test    rsi, rsi
                jz      loc_140306408
                jmp     loc_14046A28D
; ---------------------------------------------------------------------------

loc_140306493:                          ; CODE XREF: sub_140306388+E9↑j
                cmp     [rbx+44h], r12b
                jnz     short loc_1403064D6
                mov     rcx, rbp
                mov     [rsp+98h+var_68], 1
                mov     byte ptr [rbx+44h], 1
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A166

loc_1403064BB:                          ; CODE XREF: sub_140306388+163DE0↓j
                                        ; sub_140306388+163DEC↓j ...
                movzx   eax, dil
                mov     cr8, rax
                mov     rcx, rbx
                call    IoCancelIrp
                mov     rcx, rbp
                call    KeAcquireSpinLockRaiseToDpc
                mov     dil, al

loc_1403064D6:                          ; CODE XREF: sub_140306388+10F↑j
                test    dword ptr [rbx+10h], 2000h
                jz      short loc_1403064E3
                mov     r12, [rbx+20h]

loc_1403064E3:                          ; CODE XREF: sub_140306388+155↑j
                lea     rcx, [rbx+58h]
                mov     edx, r15d
                call    sub_14033AC38
                test    eax, eax
                jz      loc_14046A1CC

loc_1403064F7:                          ; CODE XREF: sub_140306388+163E4D↓j
                mov     rbx, [rsp+98h+arg_18]
                cmp     r12, r13
                jnz     loc_1403063FF
                cmp     [rsp+98h+arg_20], 0
                jz      loc_140306408
                xor     r12d, r12d
                jmp     loc_14046A28D
sub_140306388   endp

; ---------------------------------------------------------------------------
byte_14030651E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140071274↑o
                                        ; .pdata:00000001400D4004↑o

; =============== S U B R O U T I N E =======================================


sub_140306524   proc near               ; CODE XREF: sub_140306388+D9↑p
                                        ; DATA XREF: .rdata:000000014007129C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014046A2FE SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, [rsp+28h+arg_28]
                mov     r11, rcx
                mov     r10, [rsp+28h+arg_20]
                mov     dil, 1
                and     qword ptr [r14], 0
                test    r10, r10
                jnz     short loc_140306555
                mov     r10, [rcx]

loc_140306555:                          ; CODE XREF: sub_140306524+2C↑j
                                        ; sub_140306524+76↓j
                cmp     r11, r10
                jz      short loc_1403065B6
                lea     rbx, [r10-20h]
                mov     rax, [rbx+58h]
                and     rax, 0FFFFFFFFFFFFFFF9h
                cmp     rax, rdx
                jnz     short loc_140306597
                test    r8, r8
                jnz     short loc_1403065D0

loc_140306570:                          ; CODE XREF: sub_140306524+B2↓j
                test    r9, r9
                jnz     loc_14046A2FE

loc_140306579:                          ; CODE XREF: sub_140306524+163DE7↓j
                movsx   ecx, byte ptr [rbx+42h]
                movsx   eax, byte ptr [rbx+43h]
                add     ecx, 2
                cmp     eax, ecx
                jl      short loc_14030659C

loc_140306588:                          ; CODE XREF: sub_140306524+7C↓j
                mov     eax, [rbx+10h]
                and     eax, 10000h
                neg     eax
                sbb     al, al
                and     dil, al

loc_140306597:                          ; CODE XREF: sub_140306524+45↑j
                                        ; sub_140306524+B0↓j ...
                mov     r10, [r10]
                jmp     short loc_140306555
; ---------------------------------------------------------------------------

loc_14030659C:                          ; CODE XREF: sub_140306524+62↑j
                cmp     byte ptr [rbx+44h], 0
                jnz     short loc_140306588
                xor     dil, dil
                lea     rcx, [rbx+58h]
                mov     edx, 1
                call    sub_14033AC38
                mov     [r14], rbx

loc_1403065B6:                          ; CODE XREF: sub_140306524+34↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     al, dil
                mov     rdi, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1403065D0:                          ; CODE XREF: sub_140306524+4A↑j
                cmp     [rbx+48h], r8
                jnz     short loc_140306597
                jmp     short loc_140306570
sub_140306524   endp

; ---------------------------------------------------------------------------
algn_1403065D8:                         ; DATA XREF: .rdata:000000014007129C↑o
                                        ; .pdata:00000001400D4010↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403065E0   proc near               ; CODE XREF: sub_140306908+FA↓p
                                        ; sub_140306908+116↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046A310 SIZE 00000033 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, [rcx]
                xor     eax, eax
                mov     rbp, [rcx+10h]
                mov     ebx, edx
                shl     rbp, 4
                mov     r9, rdi
                add     rbp, rdi
                cmp     rdi, rbp
                jnb     short loc_140306643

loc_14030660E:                          ; CODE XREF: sub_1403065E0+4D↓j
                mov     rsi, [rdi+8]
                shr     rsi, 0Ch
                lea     rcx, [rsi+rax]
                cmp     rcx, 1000h
                jnb     short loc_140306659
                mov     rax, rcx

loc_140306626:                          ; CODE XREF: sub_1403065E0+C3↓j
                add     rdi, 10h
                cmp     rdi, rbp
                jb      short loc_14030660E
                test    rax, rax
                jz      short loc_140306643
                lea     rdx, [rdi-10h]
                mov     r8d, ebx
                mov     rcx, r9
                call    sub_1403066B4

loc_140306643:                          ; CODE XREF: sub_1403065E0+2C↑j
                                        ; sub_1403065E0+52↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140306659:                          ; CODE XREF: sub_1403065E0+41↑j
                mov     edx, 1000h
                sub     rdx, rax
                test    bl, 4
                jnz     loc_14046A310

loc_14030666A:                          ; CODE XREF: sub_1403065E0+163D4A↓j
                                        ; sub_1403065E0+163D5E↓j
                mov     rax, rdx
                sub     rsi, rdx
                shl     rax, 0Ch
                mov     r8d, ebx
                mov     rdx, rdi
                mov     [rdi+8], rax
                mov     rcx, r9
                call    sub_1403066B4
                test    rsi, rsi
                jz      short loc_1403066A5
                mov     rax, [rdi+8]
                mov     r9, rdi
                add     [rdi], rax
                shl     rsi, 0Ch
                mov     [rdi+8], rsi
                sub     rdi, 10h

loc_1403066A1:                          ; CODE XREF: sub_1403065E0+C9↓j
                xor     eax, eax
                jmp     short loc_140306626
; ---------------------------------------------------------------------------

loc_1403066A5:                          ; CODE XREF: sub_1403065E0+A9↑j
                lea     r9, [rdi+10h]
                jmp     short loc_1403066A1
sub_1403065E0   endp

; ---------------------------------------------------------------------------
byte_1403066AB  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400712E0↑o
                                        ; .pdata:00000001400D401C↑o

; =============== S U B R O U T I N E =======================================


sub_1403066B4   proc near               ; CODE XREF: sub_1403065E0+5E↑p
                                        ; sub_1403065E0+A1↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, r8d
                mov     ebx, r8d
                mov     rbp, rdx
                mov     rsi, rcx
                mov     eax, 103Dh
                and     edi, 2
                jnz     short loc_14030673B

loc_1403066DE:                          ; CODE XREF: sub_1403066B4+9D↓j
                mov     r9d, eax
                mov     ecx, ebx
                bts     r9d, 11h
                mov     r8, rsi
                and     cl, 4
                cmovz   r9d, eax
                sub     rdx, rsi
                sar     rdx, 4
                mov     rax, 0FFFF800000000000h
                inc     rdx
                cmp     [rsi], rax
                sbb     rcx, rcx
                call    sub_1406A9778
                test    edi, edi
                jnz     short loc_140306753

loc_140306715:                          ; CODE XREF: sub_1403066B4+AD↓j
                test    bl, 1
                jnz     short loc_140306725
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_14030676C

loc_140306725:                          ; CODE XREF: sub_1403066B4+64↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030673B:                          ; CODE XREF: sub_1403066B4+28↑j
                mov     r8, gs:188h
                mov     eax, 333Dh
                dec     word ptr [r8+1E6h]
                jmp     short loc_1403066DE
; ---------------------------------------------------------------------------

loc_140306753:                          ; CODE XREF: sub_1403066B4+5F↑j
                mov     rcx, gs:188h
                call    sub_140245770
                jmp     short loc_140306715
sub_1403066B4   endp

; ---------------------------------------------------------------------------
byte_140306763  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4028↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14030676C   proc near               ; CODE XREF: sub_1403066B4+6C↑p
                                        ; DATA XREF: .pdata:00000001400D4034↑o

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = word ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_10          = byte ptr -10h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 90h
                mov     r14, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rbp+57h+var_70]
                lea     r8d, [rdx+60h]
                call    memset
                xor     ecx, ecx
                mov     [rbp+57h+var_78], 1000h
                lea     rax, [rbp+57h+var_80]
                mov     [rbp+57h+var_80], rcx
                lea     r15, [rbp+57h+var_70]
                mov     [rbp+57h+var_68], rax
                mov     [rbp+57h+var_58], rcx
                or      r15, 1
                mov     [rbp+57h+var_50], rcx
                mov     [rbp+57h+var_70], 3
                mov     [rbp+57h+var_60], 1
                jmp     short loc_1403067E9
; ---------------------------------------------------------------------------

loc_1403067D6:                          ; CODE XREF: sub_14030676C+80↓j
                mov     rbx, [rdi]
                mov     rsi, [rdi+8]
                add     rsi, rbx

loc_1403067E0:                          ; CODE XREF: sub_14030676C+BB↓j
                cmp     rbx, rsi
                jb      short loc_14030680C
                add     rdi, 10h

loc_1403067E9:                          ; CODE XREF: sub_14030676C+68↑j
                cmp     rdi, r14
                jbe     short loc_1403067D6
                lea     r11, [rsp+0A0h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14030680C:                          ; CODE XREF: sub_14030676C+77↑j
                mov     r9, r15
                mov     [rbp+57h+var_80], rbx
                xor     r8d, r8d
                mov     rdx, rbx
                xor     ecx, ecx
                call    sub_140224260
                add     rbx, 1000h
                jmp     short loc_1403067E0
sub_14030676C   endp

; ---------------------------------------------------------------------------
algn_140306829:                         ; DATA XREF: .pdata:00000001400D4034↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140306830   proc near               ; DATA XREF: .rdata:00000001400713DC↑o
                                        ; .pdata:00000001400D4040↑o ...

var_198         = qword ptr -198h
var_184         = dword ptr -184h
var_F8          = qword ptr -0F8h
var_97          = qword ptr -97h
var_4F          = qword ptr -4Fh
var_47          = qword ptr -47h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041939E SIZE 00000595 BYTES
; FUNCTION CHUNK AT 000000014046A344 SIZE 00000113 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], rsi
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rdi
                push    r14
                push    r15
                sub     rsp, 1A0h
                mov     [rsp+1B8h+var_28], rsp
                mov     r15, r9
                mov     rsi, r8
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     r8d, [rdx+59h]
                lea     rcx, [rax-98h]
                call    memset
                mov     rax, rbx
                sar     rax, 2Fh
                mov     r14d, 1
                add     rax, r14
                cmp     rax, r14
                ja      loc_14046A344

loc_14030688E:                          ; CODE XREF: sub_140306830:loc_14046A3CE↓j
                                        ; sub_140306830+163BB9↓j
                xor     esi, esi
                lea     rcx, [rbx+40h]
                call    KeAcquireSpinLockAtDpcLevel
                test    [rbx+130h], r14b
                jz      short loc_1403068D5
                mov     r8, 0FFFFF78000000014h
                mov     r8, [r8]
                mov     edx, r8d
                shr     r8, 20h
                lea     rcx, [rbx+48h]
                xor     r9d, r9d
                call    KeInsertQueueApc
                test    al, al
                cmovz   esi, r14d
                cmp     dword ptr [rbx+0F0h], 0
                jnz     loc_14046A3EE

loc_1403068D5:                          ; CODE XREF: sub_140306830+70↑j
                                        ; sub_140306830+163BD9↓j ...
                lea     rcx, [rbx+40h]
                call    KeReleaseSpinLockFromDpcLevel
                test    esi, esi
                jnz     loc_14046A444

loc_1403068E6:                          ; CODE XREF: sub_140306830+163C22↓j
                                        ; DATA XREF: sub_140306830+1130A0↓o
                lea     r11, [rsp+1B8h+var_18]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140306830
sub_140306830   endp

byte_140306900  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400713DC↑o
                                        ; .pdata:00000001400D4040↑o

; =============== S U B R O U T I N E =======================================


sub_140306908   proc near               ; CODE XREF: sub_140685128+222↓p
                                        ; DATA XREF: .rdata:0000000140071444↑o ...

var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h

; FUNCTION CHUNK AT 000000014046A458 SIZE 00000187 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_30], rax
                xor     eax, eax
                lea     r8, [r11-58h]
                xorps   xmm0, xmm0
                lea     r13, [rcx+680h]
                movups  [rsp+78h+var_58], xmm0
                mov     rbp, rcx
                xor     r14d, r14d
                movups  [rsp+78h+var_48], xmm0
                lea     edx, [rax+3]
                mov     [r11-38h], rax
                call    sub_1406A9AA8
                movzx   ecx, word ptr [r13+0AEh]
                mov     rax, cs:qword_140C4E4C8
                mov     r15, [rax+rcx*8]
                lea     r12, [r15+470h]
                mov     rcx, r12
                call    ExAcquireSpinLockExclusive
                mov     rcx, r13
                movzx   esi, al
                call    sub_140209D60
                lea     ebx, [r14+1]
                mov     rdi, rax
                test    rax, rax
                jz      loc_14046A458
                cmp     rax, rbx
                jz      loc_14046A55E
                cmp     rax, 2
                jz      loc_140306AD1
                call    sub_1402325E0
                mov     rcx, r12
                mov     [rax+18h], rbx
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A462

loc_1403069CE:                          ; CODE XREF: sub_140306908+163B5C↓j
                                        ; sub_140306908+163B68↓j ...
                mov     cr8, rsi
                xor     esi, esi
                cmp     [r15+488h], esi
                jz      short loc_1403069EE
                mov     rcx, rbp
                call    sub_1406ABF1C
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1406A8FD4

loc_1403069EE:                          ; CODE XREF: sub_140306908+D3↑j
                mov     ebx, esi
                cmp     [rbp+8F0h], rsi
                jnz     loc_14046A4C6

loc_1403069FD:                          ; CODE XREF: sub_140306908+163BC5↓j
                                        ; sub_140306908+163BF0↓j ...
                mov     rcx, [rdi]
                mov     edx, ebx
                call    sub_1403065E0
                test    r14, r14
                jnz     loc_14046A506

loc_140306A10:                          ; CODE XREF: sub_140306908+163C0E↓j
                mov     rcx, [rdi+38h]
                test    rcx, rcx
                jz      short loc_140306A23
                mov     edx, 1
                call    sub_1403065E0

loc_140306A23:                          ; CODE XREF: sub_140306908+10F↑j
                cmp     [rdi+8], rsi
                jnz     loc_14046A51B
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_14071F77C

loc_140306A38:                          ; CODE XREF: sub_140306908+163C51↓j
                mov     rcx, r12
                call    ExAcquireSpinLockExclusive
                mov     rcx, r13
                mov     sil, al
                call    sub_140209D60
                mov     edi, 1
                cmp     rax, rdi
                jnz     short loc_140306A5F
                call    sub_1402325E0
                and     qword ptr [rax+18h], 0

loc_140306A5F:                          ; CODE XREF: sub_140306908+14B↑j
                xor     ebx, ebx

loc_140306A61:                          ; CODE XREF: sub_140306908+1D3↓j
                mov     rcx, r12
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A568

loc_140306A77:                          ; CODE XREF: sub_140306908+163C63↓j
                                        ; sub_140306908+163C6F↓j ...
                movzx   eax, sil
                mov     cr8, rax
                test    r14, r14
                jnz     loc_14046A5CF

loc_140306A88:                          ; CODE XREF: sub_140306908+163CD2↓j
                mov     rcx, r15
                call    sub_1406ED3E4
                lea     r8, [rsp+78h+var_58]
                mov     [rsp+78h+var_38], ebx
                mov     edx, edi
                mov     rcx, rbp
                call    sub_1406A9AA8
                mov     eax, ebx
                mov     rcx, [rsp+78h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_28]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140306AD1:                          ; CODE XREF: sub_140306908+A1↑j
                mov     ebx, 0C000010Ah

loc_140306AD6:                          ; CODE XREF: sub_140306908+163B55↓j
                                        ; sub_140306908+163C5B↓j
                mov     edi, 1
                jmp     short loc_140306A61
; } // starts at 140306908
sub_140306908   endp

; ---------------------------------------------------------------------------
byte_140306ADD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140071444↑o
                                        ; .pdata:00000001400D404C↑o

; =============== S U B R O U T I N E =======================================


sub_140306AE4   proc near               ; CODE XREF: sub_140209860+3FF↑p
                                        ; DATA XREF: .rdata:0000000140071474↑o ...

var_D8          = qword ptr -0D8h
var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_28          = qword ptr -28h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046A5E0 SIZE 00000014 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_28], rax
                mov     rbx, [rcx+38h]
                mov     rsi, r8
                mov     rbp, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jz      loc_14046A5E0
                mov     rax, [rbx+10h]
                cmp     [rbx+8], rax
                jbe     loc_14046A5EA
                cmp     dword ptr [rcx+48h], 0
                jz      loc_14046A5EA
                xor     edx, edx
                lea     rcx, [rsp+0F8h+var_C8]
                mov     r8d, 98h
                call    memset
                mov     ecx, 4
                mov     [rsp+0F8h+var_C8], rbx
                call    sub_1402A46FC
                movups  xmm0, xmmword ptr [rdi+40h]
                mov     [rsp+0F8h+var_B8], rax
                mov     [rsp+0F8h+var_B0], rbp
                movdqu  [rsp+0F8h+var_A0], xmm0
                shl     rsi, 19h
                mov     rcx, 0FFFFF68000000000h
                shl     rcx, 19h
                xor     edx, edx
                sub     rsi, rcx
                lea     rcx, [rsp+0F8h+var_C8]
                sar     rsi, 10h
                mov     [rsp+0F8h+var_D8], rcx
                mov     r9, rsi
                mov     r8, rsi
                mov     rcx, rax
                call    sub_14030722C
                movups  xmm0, [rsp+0F8h+var_A0]
                xor     eax, eax
                movdqu  xmmword ptr [rdi+40h], xmm0

loc_140306BA7:                          ; CODE XREF: sub_140306AE4+163B01↓j
                                        ; sub_140306AE4+163B0B↓j
                mov     rcx, [rsp+0F8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F8h+arg_18]
                add     rsp, 0E0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140306AE4
sub_140306AE4   endp

byte_140306BCB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140071474↑o
                                        ; .pdata:00000001400D4058↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=70h

sub_140306BD4   proc near               ; CODE XREF: sub_140685128+23A↓p
                                        ; DATA XREF: .rdata:00000001400714B0↑o ...

var_150         = qword ptr -150h
var_148         = dword ptr -148h
var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_130         = dword ptr -130h
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = byte ptr -0C8h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014046A5F4 SIZE 000002CB BYTES

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
                lea     rbp, [rax-78h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+70h+var_28], rax
                and     [rsp+170h+var_130], 0
                lea     r13, [rcx+680h]
                xor     eax, eax
                mov     [rsp+170h+var_100], rcx
                xorps   xmm0, xmm0
                mov     [rbp+70h+var_30], rax
                movups  [rbp+70h+var_50], xmm0
                mov     r12d, edx
                mov     rsi, rcx
                movups  [rbp+70h+var_40], xmm0
                mov     rax, gs:188h
                lea     rcx, [rbp+70h+var_F0]
                mov     [rsp+170h+var_118], rax
                xor     edx, edx
                xor     eax, eax
                mov     r8d, 98h
                and     qword ptr [rsp+170h+var_138], rax
                xor     ebx, ebx
                mov     [rsp+170h+var_108], rax
                call    memset
                movzx   ecx, word ptr [r13+0AEh]
                test    r12d, r12d
                mov     rax, cs:qword_140C4E4C8
                mov     rdi, [rax+rcx*8]
                lea     ecx, [rbx+1]
                mov     eax, dword ptr [rbp+70h+var_50]
                cmovnz  eax, ecx
                mov     [rsp+170h+var_120], rdi
                mov     rcx, rsi
                mov     dword ptr [rbp+70h+var_50], eax
                mov     [rbp+70h+var_D8], rdi
                call    sub_140208EB0
                or      r14d, 0FFFFFFFFh
                mov     dword ptr [rsp+170h+var_140], r14d
                test    eax, eax
                jz      short loc_140306CA7
                or      dword ptr [rbp+70h+var_50], 4
                mov     ebx, 2
                mov     [rbp+70h+var_D0], r14d

loc_140306CA7:                          ; CODE XREF: sub_140306BD4+C4↑j
                lea     r8, [rbp+70h+var_50]
                mov     edx, 2
                mov     rcx, rsi
                call    sub_1406A9AA8
                lea     rdx, [rsp+170h+var_130]
                mov     rcx, rdi
                call    sub_140337F2C
                mov     r15d, eax
                or      rax, 0FFFFFFFFFFFFFFFFh
                cmp     r15d, 10h
                jz      loc_14046A5F4
                lea     edx, [rax+51h]
                mov     r8d, 43536D4Dh
                lea     ecx, [rax+41h]
                call    sub_140268720
                mov     r14, rax
                test    rax, rax
                jz      loc_14046A5FE
                mov     rax, [rsp+170h+var_118]
                or      ebx, 1
                or      rcx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E6h], cx
                lea     rcx, [rdi+468h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                lea     rsi, [rdi+470h]
                mov     rcx, rsi
                mov     [rsp+170h+var_110], rsi
                call    ExAcquireSpinLockExclusive
                mov     rcx, r13
                movzx   edi, al
                call    sub_140209D60
                test    rax, rax
                jnz     loc_14046A608
                call    sub_1402325E0
                mov     rcx, rsi
                mov     qword ptr [rax+18h], 1
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A699

loc_140306D5F:                          ; CODE XREF: sub_140306BD4+163ACC↓j
                                        ; sub_140306BD4+163AD8↓j ...
                mov     cr8, rdi
                mov     edi, [rsp+170h+var_130]

loc_140306D67:                          ; CODE XREF: sub_140306BD4+163B6F↓j
                mov     rax, [r13+80h]
                mov     qword ptr [rsp+170h+var_138], rax
                test    rax, rax
                jz      loc_14046A7FD
                cmp     [rbp+70h+var_D0], 0FFFFFFFFh
                jnz     loc_14046A701

loc_140306D86:                          ; CODE XREF: sub_140306BD4+163B7F↓j
                mov     rcx, rax
                call    sub_14030737C
                mov     [r14], rax
                test    rax, rax
                jz      loc_14046A758
                cmp     [rbp+70h+var_D0], 0FFFFFFFFh
                mov     edi, 1
                jnz     loc_14046A762

loc_140306DA9:                          ; CODE XREF: sub_140306BD4+163B91↓j
                xor     esi, esi
                test    r12d, r12d
                jnz     loc_14046A76A

loc_140306DB4:                          ; CODE XREF: sub_140306BD4+163BB1↓j
                                        ; sub_140306BD4+163BC8↓j
                mov     rax, [r14]
                mov     r15, [rsp+170h+var_100]
                mov     [rbp+70h+var_F0], rax
                mov     rax, [r14+8]
                mov     [rbp+70h+var_E8], rax
                cmp     qword ptr [r15+8F0h], 0
                mov     [rbp+70h+var_E0], r13
                jnz     loc_14046A7A1

loc_140306DDA:                          ; CODE XREF: sub_140306BD4+163BE0↓j
                mov     r12, [rsp+170h+var_118]
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [r12+1E6h], ax
                lea     rcx, [r15+4C8h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                or      byte ptr [r12+518h], 2
                mov     eax, [r15+464h]
                test    al, 20h
                jnz     loc_14046A7B9
                mov     rax, [r15+7D8h]
                xor     edi, edi
                jmp     short loc_140306E23
; ---------------------------------------------------------------------------

loc_140306E1D:                          ; CODE XREF: sub_140306BD4+252↓j
                mov     rdi, rax
                mov     rax, [rax]

loc_140306E23:                          ; CODE XREF: sub_140306BD4+247↑j
                test    rax, rax
                jnz     short loc_140306E1D
                jmp     short loc_140306E35
; ---------------------------------------------------------------------------

loc_140306E2A:                          ; CODE XREF: sub_140306BD4+25F↓j
                                        ; sub_140306BD4+2C6↓j
                mov     rdi, rax
                mov     rax, [rax]
                test    rax, rax
                jnz     short loc_140306E2A

loc_140306E35:                          ; CODE XREF: sub_140306BD4+254↑j
                                        ; sub_140306BD4+2D0↓j ...
                test    rdi, rdi
                jz      short loc_140306EB0
                mov     rcx, rdi
                call    sub_1402342C0
                test    eax, eax
                jnz     short loc_140306E90
                call    sub_1402328D0
                test    eax, eax
                jz      short loc_140306E90
                mov     eax, [rdi+1Ch]
                mov     rdx, rdi
                movzx   r9d, byte ptr [rdi+21h]
                mov     rcx, r13
                movzx   r8d, byte ptr [rdi+20h]
                shl     r9, 20h
                or      r9, rax
                shl     r8, 20h
                mov     eax, [rdi+18h]
                or      r8, rax
                shl     r9, 0Ch
                lea     rax, [rbp+70h+var_F0]
                shl     r8, 0Ch
                or      r9, 0FFFh
                mov     [rsp+170h+var_150], rax
                call    sub_14030722C

loc_140306E90:                          ; CODE XREF: sub_140306BD4+270↑j
                                        ; sub_140306BD4+279↑j
                mov     rax, [rdi+8]
                mov     rcx, rdi
                test    rax, rax
                jnz     short loc_140306E2A

loc_140306E9C:                          ; CODE XREF: sub_140306BD4+2DA↓j
                mov     rdi, [rdi+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                jz      short loc_140306E35
                cmp     [rdi], rcx
                jz      short loc_140306E35
                mov     rcx, rdi
                jmp     short loc_140306E9C
; ---------------------------------------------------------------------------

loc_140306EB0:                          ; CODE XREF: sub_140306BD4+264↑j
                mov     rdx, r15
                mov     rcx, r12
                call    sub_140243130
                mov     rcx, [r14]
                mov     rax, qword ptr [rsp+170h+var_138]
                cmp     [rcx+10h], rax
                jnb     short loc_140306EE3
                call    sub_140307324
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140306EE3
                mov     rcx, [r14]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [r14], rdi

loc_140306EE3:                          ; CODE XREF: sub_140306BD4+2F3↑j
                                        ; sub_140306BD4+300↑j
                mov     rcx, [r14+8]
                test    rcx, rcx
                jnz     loc_14046A7CE

loc_140306EF0:                          ; CODE XREF: sub_140306BD4+163BFE↓j
                                        ; sub_140306BD4+163C0F↓j ...
                mov     rax, [r14]
                mov     rdx, r15
                mov     rcx, r14
                mov     rax, [rax+18h]
                mov     qword ptr [rsp+170h+var_138], rax
                call    sub_140337550
                cmp     ebx, 2
                jb      short loc_140306F19
                mov     rcx, [r14]
                call    sub_140307324
                mov     [rsp+170h+var_108], rax

loc_140306F19:                          ; CODE XREF: sub_140306BD4+336↑j
                or      ebx, 4
                xor     esi, esi

loc_140306F1E:                          ; CODE XREF: sub_140306BD4+163B50↓j
                                        ; sub_140306BD4+163B75↓j ...
                mov     r15, [rsp+170h+var_110]
                mov     rcx, r15
                call    ExAcquireSpinLockExclusive
                mov     rcx, r13
                movzx   edi, al
                call    sub_140209D60
                mov     r12d, 1
                cmp     rax, r12
                jnz     loc_14046A811
                call    sub_1402325E0
                cmp     ebx, 4
                jb      loc_14046A807
                mov     [rax+18h], r14
                xor     r14d, r14d
                xor     esi, esi

loc_140306F5C:                          ; CODE XREF: sub_140306BD4+163C38↓j
                                        ; sub_140306BD4+163C42↓j
                mov     rcx, r15
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A81B

loc_140306F72:                          ; CODE XREF: sub_140306BD4+163C4A↓j
                                        ; sub_140306BD4+163C56↓j ...
                mov     cr8, rdi
                mov     rdi, [rsp+170h+var_120]
                lea     rdx, [rbp+70h+var_C8]
                mov     rcx, rdi
                call    sub_1406ED23C

loc_140306F87:                          ; CODE XREF: sub_140306BD4+163AC0↓j
                test    r14, r14
                jnz     loc_14046A881

loc_140306F90:                          ; CODE XREF: sub_140306BD4+163A2F↓j
                                        ; sub_140306BD4+163CB9↓j
                or      r14d, 0FFFFFFFFh
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140306F98:                          ; CODE XREF: sub_140306BD4+163A25↓j
                mov     r13d, 1
                test    r13b, bl
                jz      loc_14030713F
                lea     r15, [rdi+468h]
                lock xadd [r15], rax
                and     al, 6
                cmp     al, 2
                jz      loc_140307202

loc_140306FBD:                          ; CODE XREF: sub_140306BD4+636↓j
                and     dword ptr [rsp+170h+var_128], 0
                mov     rcx, r15
                mov     rdi, gs:188h
                call    sub_140245330
                cmp     eax, r13d
                jz      loc_1403071C8

loc_140306FDC:                          ; CODE XREF: sub_140306BD4+607↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [rdi+1E6h], ax
                add     [rdi+31Ah], r13b
                movsx   ecx, byte ptr [rdi+318h]
                mov     r8, r15
                movsx   edx, byte ptr [rdi+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r12b, [rdi+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                and     r8, r10
                bsr     ecx, edx
                mov     [rsp+170h+var_12C], ecx
                jz      loc_1403071F0
                mov     r9d, dword ptr [rsp+170h+var_140]

loc_14030702A:                          ; CODE XREF: sub_140306BD4+613↓j
                lea     r14, [rcx+rcx*2]
                mov     eax, r13d
                shl     r14, 5
                add     r14, [rdi+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [r14+1Ah], r13b
                jz      loc_1403071E0
                mov     eax, [r14+20h]
                test    r13b, al
                jnz     loc_1403071E0
                mov     rax, [r14+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     loc_1403071E0
                cmp     [r14+28h], r9d
                jnz     loc_1403071E0
                and     byte ptr [r14+1Ah], 0FEh
                mov     rax, [r14+20h]
                test    rax, rax
                jz      loc_1403071E0
                test    r14, r14
                jz      loc_1403071ED
                mov     al, [r14+20h]
                or      al, 2
                mov     [r14+20h], al
                mov     rax, [r14+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_14030720F

loc_1403070A8:                          ; CODE XREF: sub_140306BD4+643↓j
                mov     eax, [r14+58h]
                and     eax, 1FFFFh
                mov     dword ptr [rsp+170h+var_128], eax
                and     dword ptr [r14+58h], 0FFFE0000h
                and     byte ptr [r14+19h], 0FEh
                mov     qword ptr [r14+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     r14, [rdi+320h]
                imul    r14
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r12b, r13b
                jnz     loc_14046A892
                movzx   eax, byte ptr [rdi+318h]
                bts     eax, edx
                mov     [rdi+318h], al

loc_140307105:                          ; CODE XREF: sub_140306BD4+623↓j
                                        ; sub_140306BD4+163CCC↓j
                dec     byte ptr [rdi+31Ah]
                lea     r8, [rsp+170h+var_128]
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_1402456E0
                add     [rdi+1E6h], r13w
                jnz     short loc_140307135
                lea     rax, [rdi+98h]
                cmp     [rax], rax
                jnz     loc_14030721C

loc_140307135:                          ; CODE XREF: sub_140306BD4+54F↑j
                                        ; sub_140306BD4+64D↓j
                mov     rcx, [rsp+170h+var_118]
                call    sub_140245770

loc_14030713F:                          ; CODE XREF: sub_140306BD4+3CD↑j
                mov     rdi, [rsp+170h+var_108]
                test    rdi, rdi
                jz      short loc_140307164
                cmp     ebx, 4
                jb      short loc_14030715A
                mov     rdx, [rdi+10h]
                mov     rcx, [rdi]
                call    sub_1406A8FD4

loc_14030715A:                          ; CODE XREF: sub_140306BD4+578↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_140307164:                          ; CODE XREF: sub_140306BD4+573↑j
                mov     rax, qword ptr [rsp+170h+var_138]
                lea     r8, [rbp+70h+var_50]
                mov     rcx, [rsp+170h+var_100]
                xor     edx, edx
                mov     qword ptr [rbp+70h+var_50], rax
                mov     rax, [rbp+70h+var_78]
                mov     qword ptr [rbp+70h+var_50+8], rax
                mov     rax, [rbp+70h+var_70]
                mov     qword ptr [rbp+70h+var_40], rax
                mov     rax, [rbp+70h+var_68]
                mov     qword ptr [rbp+70h+var_40+8], rax
                mov     dword ptr [rbp+70h+var_30], esi
                call    sub_1406A9AA8
                mov     eax, esi
                mov     rcx, [rbp+70h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+170h+var_20]
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
                align 8

loc_1403071C8:                          ; CODE XREF: sub_140306BD4+402↑j
                mov     rcx, [rdi+0B8h]
                call    sub_140245840
                mov     r14d, eax
                mov     dword ptr [rsp+170h+var_140], eax
                jmp     loc_140306FDC
; ---------------------------------------------------------------------------

loc_1403071E0:                          ; CODE XREF: sub_140306BD4+472↑j
                                        ; sub_140306BD4+47F↑j ...
                bsr     ecx, edx
                mov     [rsp+170h+var_12C], ecx
                jnz     loc_14030702A

loc_1403071ED:                          ; CODE XREF: sub_140306BD4+4B4↑j
                mov     r14d, r9d

loc_1403071F0:                          ; CODE XREF: sub_140306BD4+44B↑j
                mov     eax, [rdi+78h]
                bt      eax, 10h
                jb      loc_140307105
                jmp     loc_14046A8A5
; ---------------------------------------------------------------------------

loc_140307202:                          ; CODE XREF: sub_140306BD4+3E3↑j
                mov     rcx, r15
                call    ExfTryToWakePushLock
                jmp     loc_140306FBD
; ---------------------------------------------------------------------------

loc_14030720F:                          ; CODE XREF: sub_140306BD4+4CE↑j
                mov     rcx, r14
                call    sub_14031EC80
                jmp     loc_1403070A8
; ---------------------------------------------------------------------------

loc_14030721C:                          ; CODE XREF: sub_140306BD4+55B↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_140307135
; } // starts at 140306BD4
sub_140306BD4   endp

; ---------------------------------------------------------------------------
byte_140307226  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400714B0↑o
                                        ; .pdata:00000001400D4064↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=4Fh

sub_14030722C   proc near               ; CODE XREF: sub_140306AE4+B2↑p
                                        ; sub_140306BD4+2B7↑p ...

var_E0          = word ptr -0E0h
var_DA          = byte ptr -0DAh
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                lea     rbp, [rsp-2Fh]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_30], rax
                mov     rbx, [rbp+4Fh+arg_20]
                mov     r14, r8
                mov     rsi, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+100h+var_E0]
                mov     r8d, 0B0h
                mov     r15, r9
                call    memset
                test    byte ptr [rdi+0B8h], 7
                lea     rax, sub_14027F5E0
                mov     [rbp+4Fh+var_48], rax
                mov     eax, 81h
                mov     [rsp+100h+var_E0], ax
                mov     [rbp+4Fh+var_C8], rdi
                mov     [rbp+4Fh+var_38], rbx
                jnz     short loc_140307312
                mov     eax, 83h
                mov     [rbp+4Fh+var_C0], r14
                mov     rcx, rdi
                mov     [rsp+100h+var_E0], ax
                mov     [rbp+4Fh+var_B8], r15
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rbx+4], 0
                mov     edx, [rsi+30h]
                mov     [rsp+100h+var_DA], al
                test    dl, 4
                jnz     short loc_140307319

loc_1403072CF:                          ; CODE XREF: sub_14030722C+EB↓j
                lea     rcx, [rsp+100h+var_E0]
                call    sub_140220490
                test    byte ptr [rdi+0B8h], 7
                jnz     short loc_1403072EE
                mov     dl, [rsp+100h+var_DA]

loc_1403072E6:                          ; CODE XREF: sub_14030722C+EF↓j
                mov     rcx, rdi
                call    sub_140234180

loc_1403072EE:                          ; CODE XREF: sub_14030722C+B4↑j
                mov     rcx, [rbp+4Fh+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+100h+arg_8]
                add     rsp, 0E0h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140307312:                          ; CODE XREF: sub_14030722C+6C↑j
                mov     [rsp+100h+var_DA], 11h
                jmp     short loc_1403072CF
; ---------------------------------------------------------------------------

loc_140307319:                          ; CODE XREF: sub_14030722C+A1↑j
                mov     dl, al
                jmp     short loc_1403072E6
; } // starts at 14030722C
sub_14030722C   endp

; ---------------------------------------------------------------------------
byte_14030731D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4070↑o

; =============== S U B R O U T I N E =======================================


sub_140307324   proc near               ; CODE XREF: sub_140306BD4+2F5↑p
                                        ; sub_140306BD4+33B↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rcx, [rcx+10h]
                call    sub_14030737C
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140307365
                mov     rdx, [rdi+10h]
                mov     rcx, [rax]
                mov     [rax+10h], rdx
                mov     rdx, [rdi+18h]
                mov     [rax+18h], rdx
                mov     r8, [rdi+10h]
                mov     rdx, [rdi]
                shl     r8, 4
                call    memmove

loc_140307365:                          ; CODE XREF: sub_140307324+1C↑j
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140307324   endp

byte_140307374  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D407C↑o

; =============== S U B R O U T I N E =======================================


sub_14030737C   proc near               ; CODE XREF: sub_140306BD4+1B5↑p
                                        ; sub_140307324+11↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rdx, rcx
                mov     rbx, rcx
                shl     rdx, 4
                mov     ecx, 40h ; '@'
                add     rdx, 28h ; '('
                mov     r8d, 53576D4Dh
                call    sub_140268720
                mov     rdx, rax
                test    rax, rax
                jz      short loc_1403073C1
                add     rax, 2Fh ; '/'
                mov     [rdx+8], rbx
                and     rax, 0FFFFFFFFFFFFFFF8h
                mov     [rdx], rax
                mov     rax, rdx

loc_1403073BA:                          ; CODE XREF: sub_14030737C:loc_1403073C1↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403073C1:                          ; CODE XREF: sub_14030737C+2A↑j
                jmp     short loc_1403073BA
sub_14030737C   endp

; ---------------------------------------------------------------------------
byte_1403073C3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4088↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403073CC   proc near               ; CODE XREF: sub_14025D100+FE6↑p
                                        ; KeInsertQueueApc+1D4↓p
                                        ; DATA XREF: ...

var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_18          = qword ptr  58h
arg_20          = byte ptr  60h
arg_28          = byte ptr  68h
arg_30          = byte ptr  70h

; FUNCTION CHUNK AT 000000014046A8C0 SIZE 00000029 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_0], rbx
                mov     [rsp-38h+arg_18], r9
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                and     [rbp+var_30], 0
                mov     r15, r8
                mov     r13, rdx
                mov     dil, cl
                mov     rcx, cs:qword_140C19798
                xor     edx, edx
                mov     r8d, 3000h
                call    EtwProviderEnabled
                test    al, al
                jz      short loc_140307483
                mov     rax, gs:188h
                mov     r14, [r13+220h]
                mov     rbx, [rax+0B8h]
                mov     rax, gs:188h
                mov     r12, [rax+220h]
                xor     eax, eax
                cmp     [rbp+arg_30], al
                jz      loc_14046A8C0
                cmp     r12, r14

loc_140307454:                          ; CODE XREF: sub_1403073CC+1634F7↓j
                setnz   al
                test    eax, eax
                jz      short loc_140307483
                mov     rcx, cs:qword_140C19798
                lea     rax, qword_14000ABE0
                test    dil, dil
                lea     rsi, qword_14000ABD0
                cmovnz  rsi, rax
                mov     rdx, rsi
                call    EtwEventEnabled
                test    al, al
                jnz     short loc_1403074AB

loc_140307483:                          ; CODE XREF: sub_1403073CC+51↑j
                                        ; sub_1403073CC+8D↑j ...
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_0]
                add     rsp, 80h
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

loc_1403074AB:                          ; CODE XREF: sub_1403073CC+B5↑j
                mov     edx, 2A0h
                mov     ecx, 200h
                mov     r8d, 6E734954h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140307483
                lea     r8, [rbp+var_28]
                mov     rdx, rbx
                mov     rcx, rax
                call    sub_1403081A0
                mov     rdx, gs:188h
                mov     r8d, eax
                shl     r8, 4
                add     r8, rcx
                mov     ebx, eax
                lea     rcx, [rdx+480h]
                add     ebx, 2
                mov     [r8], rcx
                lea     rcx, [rdx+430h]
                mov     qword ptr [r8+8], 4
                mov     rdx, r14
                mov     [r8+10h], rcx
                mov     qword ptr [r8+18h], 8
                lea     r8, [rbp+var_20]
                mov     ecx, ebx
                shl     rcx, 4
                add     rcx, rdi
                call    sub_1403081A0
                add     ebx, eax
                lea     r8, [rbp+var_18]
                mov     ecx, ebx
                lea     rax, [r13+480h]
                shl     rcx, 4
                add     ebx, 2
                add     rcx, rdi
                mov     rdx, r12
                mov     [rcx], rax
                lea     rax, [r13+430h]
                mov     qword ptr [rcx+8], 4
                mov     [rcx+10h], rax
                mov     qword ptr [rcx+18h], 8
                mov     ecx, ebx
                shl     rcx, 4
                add     rcx, rdi
                call    sub_1403081A0
                add     ebx, eax
                lea     rcx, [rbp+var_40]
                mov     eax, [r13+74h]
                mov     edx, 1
                shr     eax, 4
                and     al, dl
                mov     [rbp+var_40], al
                mov     eax, ebx
                add     ebx, edx
                add     rax, rax
                mov     [rdi+rax*8], rcx
                mov     [rdi+rax*8+8], rdx
                mov     rax, [r13+220h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_1403075CB
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      loc_14046A8C8
                mov     ecx, 1C4h
                cmp     ax, cx
                jz      loc_14046A8C8

loc_1403075CB:                          ; CODE XREF: sub_1403073CC+1DD↑j
                                        ; sub_1403073CC+163518↓j
                mov     [rbp+var_38], r15

loc_1403075CF:                          ; CODE XREF: sub_1403073CC+163512↓j
                mov     eax, ebx
                lea     rcx, [rbp+var_38]
                add     rax, rax
                add     ebx, edx
                mov     r8d, 8000000h
                mov     [rdi+rax*8], rcx
                lea     rcx, [rbp+arg_18]
                mov     qword ptr [rdi+rax*8+8], 8
                mov     eax, ebx
                add     ebx, edx
                add     rax, rax
                mov     [rdi+rax*8], rcx
                lea     rcx, [rbp+arg_20]
                mov     qword ptr [rdi+rax*8+8], 8
                mov     eax, ebx
                add     ebx, edx
                add     rax, rax
                mov     [rdi+rax*8], rcx
                lea     rcx, [rbp+arg_28]
                mov     qword ptr [rdi+rax*8+8], 8
                mov     eax, ebx
                add     ebx, edx
                add     rax, rax
                xor     edx, edx
                mov     [rdi+rax*8], rcx
                mov     qword ptr [rdi+rax*8+8], 8
                mov     rcx, cs:qword_140C19798
                call    EtwProviderEnabled
                mov     rcx, [rbp+var_30]
                test    al, al
                mov     [rsp+80h+var_48], al
                mov     r9, r14
                cmovnz  rcx, [rbp+arg_18]
                lea     rax, [rbp+var_38]
                mov     [rbp+var_30], rcx
                mov     r8d, ebx
                mov     [rsp+80h+var_50], rsi
                mov     rcx, rdi
                mov     [rsp+80h+var_58], 2
                mov     edx, 2Ah ; '*'
                mov     [rsp+80h+var_60], rax
                call    sub_14035ACC8
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_140307483
; } // starts at 1403073CC
sub_1403073CC   endp

; ---------------------------------------------------------------------------
byte_14030768E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140071508↑o
                                        ; .pdata:00000001400D4094↑o

; =============== S U B R O U T I N E =======================================


sub_140307694   proc near               ; CODE XREF: sub_1406A9920+21↓p
                                        ; sub_1406A9968+37↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014046A8EA SIZE 0000013D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9b
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                lea     rdi, [rdx+588h]
                mov     r14, rcx
                mov     rcx, rdi
                mov     rbp, r8
                mov     rbx, rdx
                xor     r13d, r13d
                call    KeAcquireSpinLockRaiseToDpc
                mov     r15b, al
                mov     [rsp+68h+arg_8], al
                lea     rax, [rbx+4B0h]
                or      r12, 0FFFFFFFFFFFFFFFFh
                mov     rsi, [rax]
                lea     edx, [r13+1]
                lea     r8d, [r13+2]
                cmp     rax, rsi
                jz      short loc_14030772D
                mov     r15, rax

loc_1403076ED:                          ; CODE XREF: sub_140307694+92↓j
                movsx   ecx, byte ptr [rsi+22h]
                movsx   eax, byte ptr [rsi+23h]
                add     ecx, r8d
                cmp     eax, ecx
                jge     short loc_140307720
                cmp     [rsp+68h+arg_18], 0
                jnz     loc_14046A8EA
                mov     eax, [rsi-10h]
                test    r8b, al
                jnz     short loc_140307720
                test    r14, r14
                jz      short loc_140307764
                cmp     [rsi+0A0h], r14
                jz      short loc_140307764

loc_140307720:                          ; CODE XREF: sub_140307694+66↑j
                                        ; sub_140307694+7C↑j ...
                mov     rsi, [rsi]
                cmp     r15, rsi
                jnz     short loc_1403076ED
                mov     r15b, [rsp+68h+arg_8]

loc_14030772D:                          ; CODE XREF: sub_140307694+54↑j
                mov     rcx, rdi
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A9BB

loc_140307743:                          ; CODE XREF: sub_140307694+16332E↓j
                                        ; sub_140307694+16333A↓j ...
                movzx   ecx, r15b
                mov     cr8, rcx
                mov     rbx, [rsp+68h+arg_0]
                mov     eax, r13d
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
                align 4

loc_140307764:                          ; CODE XREF: sub_140307694+81↑j
                                        ; sub_140307694+8A↑j
                test    rbp, rbp
                jz      short loc_14030776F
                cmp     [rsi+28h], rbp
                jnz     short loc_140307720

loc_14030776F:                          ; CODE XREF: sub_140307694+D3↑j
                                        ; sub_140307694+163287↓j ...
                mov     rcx, rdi
                mov     r13d, edx
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A930

loc_140307788:                          ; CODE XREF: sub_140307694+1632A3↓j
                                        ; sub_140307694+1632B1↓j ...
                mov     eax, 1
                mov     cr8, rax
                lea     rcx, [rsi-20h]
                call    IoCancelIrp
                mov     rcx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046A977

loc_1403077B5:                          ; CODE XREF: sub_140307694+1632EA↓j
                                        ; sub_140307694+1632F3↓j ...
                mov     rcx, rdi
                call    KeAcquireSpinLockAtDpcLevel
                mov     r8d, 2
                lea     edx, [r8-1]
                jmp     loc_140307720
sub_140307694   endp

; ---------------------------------------------------------------------------
algn_1403077CC:                         ; DATA XREF: .rdata:0000000140071548↑o
                                        ; .pdata:00000001400D40A0↑o
                align 20h
; Exported entry 751. IoCancelIrp

; =============== S U B R O U T I N E =======================================


                public IoCancelIrp
IoCancelIrp     proc near               ; CODE XREF: sub_140306388+13E↑p
                                        ; sub_140307694+101↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046AA28 SIZE 00000096 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140C1D15C, 0
                mov     rbx, rcx
                jnz     loc_14046AA28

loc_1403077FF:                          ; CODE XREF: IoCancelIrp+163260↓j
                                        ; IoCancelIrp+16326C↓j
                mov     ecx, 7
                call    KeAcquireQueuedSpinLock
                xor     edi, edi
                mov     byte ptr [rbx+44h], 1
                xchg    rdi, [rbx+68h]
                mov     sil, al
                test    rdi, rdi
                jz      short loc_14030786A
                mov     cl, [rbx+42h]
                inc     cl
                cmp     [rbx+43h], cl
                jg      loc_14046AA51
                cmp     cs:dword_140C1D15C, 0
                mov     [rbx+45h], al
                jnz     loc_14046AA6A

loc_140307839:                          ; CODE XREF: IoCancelIrp+1632A2↓j
                mov     rcx, [rbx+0B8h]
                mov     rdx, rbx
                mov     rax, rdi
                mov     rcx, [rcx+28h]
                call    sub_1404079D0

loc_14030784F:                          ; CODE XREF: IoCancelIrp+1632BF↓j
                mov     rax, cr8
                cmp     al, 2
                jz      short loc_14030787B

loc_140307857:                          ; CODE XREF: IoCancelIrp+9F↓j
                mov     al, 1

loc_140307859:                          ; CODE XREF: IoCancelIrp+99↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14030786A:                          ; CODE XREF: IoCancelIrp+39↑j
                mov     dl, sil
                mov     ecx, 7
                call    KeReleaseQueuedSpinLock
                xor     al, al
                jmp     short loc_140307859
; ---------------------------------------------------------------------------

loc_14030787B:                          ; CODE XREF: IoCancelIrp+75↑j
                cmp     sil, 2
                jz      short loc_140307857
                jmp     loc_14046AAA4
IoCancelIrp     endp

; ---------------------------------------------------------------------------
algn_140307886:                         ; DATA XREF: .rdata:000000014007156C↑o
                                        ; .pdata:00000001400D40AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140307890   proc near               ; DATA XREF: .rdata:0000000140071618↑o
                                        ; .pdata:00000001400D40B8↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140419939 SIZE 0000004C BYTES
; FUNCTION CHUNK AT 000000014046AABE SIZE 00000042 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                mov     rdi, rdx
                mov     rsi, rcx
                mov     eax, cs:dword_140CFC660
                xor     ebx, ebx
                test    eax, eax
                jnz     loc_14046AABE

loc_1403078B5:                          ; CODE XREF: sub_140307890+163230↓j
                                        ; sub_140307890+16323E↓j ...
                mov     cr8, rbx
                mov     rbx, gs:188h
                mov     rcx, rbx
                call    sub_140664890
                mov     eax, [rbx+510h]
                xor     eax, 1
                and     eax, 3
                cmp     al, 3
                jnz     short loc_1403078F2

loc_1403078DA:                          ; DATA XREF: .rdata:0000000140071604↑o
;   __try { // __except at loc_1403078E7
                mov     rcx, rdi
                mov     rax, rsi
                call    sub_1404079D0
                jmp     short loc_1403078F2
;   } // starts at 1403078DA
; ---------------------------------------------------------------------------

loc_1403078E7:                          ; DATA XREF: .rdata:0000000140071604↑o
;   __except(loc_140419939) // owned by 1403078DA
                mov     ecx, 1Eh
                call    KeBugCheck
                nop

loc_1403078F2:                          ; CODE XREF: sub_140307890+48↑j
                                        ; sub_140307890+55↑j
                mov     r8b, 1
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406AB230
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140307890
sub_140307890   endp

algn_140307910:                         ; DATA XREF: .rdata:0000000140071618↑o
                                        ; .pdata:00000001400D40B8↑o
                align 20h
; Exported entry 1874. PsGetThreadTeb

; =============== S U B R O U T I N E =======================================


                public PsGetThreadTeb
PsGetThreadTeb  proc near               ; CODE XREF: sub_1406A9F6C+195↓p
                                        ; sub_1406AAAB4+92↓p
                                        ; DATA XREF: ...
                mov     rax, [rcx+0F0h]
                retn
PsGetThreadTeb  endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140307929:                         ; DATA XREF: .pdata:00000001400D40C4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140307930   proc near               ; CODE XREF: sub_1406AA874+189↓p
                                        ; DATA XREF: .rdata:00000001400717F4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046AB00 SIZE 00000053 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                push    r15
                movzx   eax, word ptr [rdx]
                xor     esi, esi
                mov     [rcx], eax
                mov     rbx, rdx
                movzx   eax, word ptr [rdx+2]
                mov     r10, rcx
                mov     [rcx+4], eax
                mov     r9d, esi
                mov     eax, [rdx+8]
                lea     ebp, [rsi+1]
                mov     [rcx+0Ch], eax
                lea     r11, [rbx+20h]
                movzx   eax, word ptr [rdx+0Ch]
                lea     r15d, [rsi+2]
                movzx   r8d, word ptr [rdx+6]
                mov     r14d, 7FFFh
                shl     r8d, 10h
                or      r8d, eax
                mov     [rcx+10h], r8d
                lea     r8d, [rsi+7]
                mov     eax, [rdx+10h]
                mov     [rcx+14h], eax
                movzx   eax, word ptr [rdx+14h]
                mov     [rcx+18h], eax
                movzx   eax, word ptr [rbx+2]
                mov     dil, [rdx+4]
                movzx   edx, si
                shr     eax, 0Bh
                and     eax, 7
                sub     r8d, eax

loc_1403079AE:                          ; CODE XREF: sub_140307930+C3↓j
                movsd   xmm0, qword ptr [r11]
                lea     eax, [r9+r9*4]
                add     eax, eax
                shl     dx, 2
                mov     ecx, eax
                movsd   qword ptr [rax+r10+1Ch], xmm0
                movzx   eax, word ptr [r11+8]
                mov     [rcx+r10+24h], ax
                test    dil, dil
                js      loc_14046AB00
                or      dx, 3

loc_1403079DE:                          ; CODE XREF: sub_140307930+1631EC↓j
                                        ; sub_140307930+1631FD↓j ...
                add     dil, dil
                add     r9d, ebp
                dec     r8d
                add     r11, 10h
                and     r8d, 7
                cmp     r9d, 8
                jb      short loc_1403079AE
                mov     rbx, [rsp+10h+arg_0]
                mov     rbp, [rsp+10h+arg_8]
                mov     rsi, [rsp+10h+arg_10]
                mov     rdi, [rsp+10h+arg_18]
                movzx   eax, dx
                mov     [r10+8], eax
                pop     r15
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140307930   endp

byte_140307A16  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400717F4↑o
                                        ; .pdata:00000001400D40D0↑o

; =============== S U B R O U T I N E =======================================


sub_140307A1C   proc near               ; CODE XREF: sub_14052C538+D0↓p
                                        ; sub_1406A9274+27↓p
                                        ; DATA XREF: ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046AB54 SIZE 000000CA BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12b, dl
                mov     rbx, rcx
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14046AB54

loc_140307A5E:                          ; CODE XREF: sub_140307A1C+16313A↓j
                                        ; sub_140307A1C+163144↓j ...
                mov     r15, gs:20h
                lea     r14, [rbx+40h]
                mov     rcx, r14
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                mov     esi, [rbx+278h]
                mov     eax, [rbx+378h]
                shr     esi, 3
                and     esi, 1
                add     esi, eax
                test    r12b, r12b
                jz      loc_14046AB95
                xor     ecx, ecx
                call    sub_140212F34
                mov     [rbx+48h], rax
                lock bts dword ptr [rbx+278h], 3

loc_140307AA4:                          ; CODE XREF: sub_140307A1C+163181↓j
                test    esi, esi
                jnz     loc_14046ABA2
                lea     rsi, [rbx+30h]
                mov     rbx, [rsi]

loc_140307AB3:                          ; CODE XREF: sub_140307A1C+B7↓j
                cmp     rbx, rsi
                jz      short loc_140307AD5
                lea     rdx, [rbx-2F8h]
                test    r12b, r12b
                jz      loc_14046AC0C

loc_140307AC8:                          ; CODE XREF: sub_140307A1C+1631FD↓j
                mov     rcx, r15
                call    sub_140307B1C

loc_140307AD0:                          ; CODE XREF: sub_140307A1C+1631F7↓j
                mov     rbx, [rbx]
                jmp     short loc_140307AB3
; ---------------------------------------------------------------------------

loc_140307AD5:                          ; CODE XREF: sub_140307A1C+9A↑j
                mov     rcx, r14
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                xor     r9d, r9d
                mov     [rsp+48h+var_28], dil
                xor     edx, edx
                mov     rcx, r15
                lea     r8d, [r9+1]
                call    sub_14023E110
                xor     eax, eax

loc_140307AF5:                          ; CODE XREF: sub_140307A1C+1631EB↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140307A1C   endp

byte_140307B15  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007185C↑o
                                        ; .pdata:00000001400D40DC↑o

; =============== S U B R O U T I N E =======================================


sub_140307B1C   proc near               ; CODE XREF: sub_1402D0C68+44B↑p
                                        ; sub_140307A1C+AF↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rsi, [rdx+2E0h]
                mov     rbx, rcx
                mov     rcx, rsi
                mov     rdi, rdx
                call    sub_1402AF4F0
                lock bts dword ptr [rdi+78h], 0Eh
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140308520
                test    al, al
                jz      short loc_140307B6D

loc_140307B55:                          ; CODE XREF: sub_140307B1C+57↓j
                lock and dword ptr [rsi], 0FFFFFF7Fh
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140307B6D:                          ; CODE XREF: sub_140307B1C+37↑j
                lock btr dword ptr [rdi+78h], 0Eh
                jmp     short loc_140307B55
sub_140307B1C   endp

; ---------------------------------------------------------------------------
byte_140307B75  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D40E8↑o

; =============== S U B R O U T I N E =======================================


sub_140307B7C   proc near               ; CODE XREF: sub_14068AE3C+7ED↓p
                                        ; sub_1406AB230+7B↓p ...

var_B8          = byte ptr -0B8h
var_A8          = dword ptr -0A8h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046AC1E SIZE 000000CB BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_28], rax
                mov     rax, [rcx+220h]
                mov     rbx, rcx
                mov     edi, 2
                test    byte ptr [rax+3E0h], 1
                jnz     loc_14046AC1E

loc_140307BBF:                          ; CODE XREF: sub_140307B7C+1630D8↓j
                lock bts dword ptr [rbx+78h], 0Fh
                jb      loc_140307C80
                lea     rsi, [rbx+288h]
                xor     r14b, r14b
                mov     rbp, cr8
                mov     cr8, rdi
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046AC59

loc_140307BEB:                          ; CODE XREF: sub_140307B7C+1630DF↓j
                                        ; sub_140307B7C+1630E9↓j ...
                mov     rdi, gs:20h
                and     [rsp+0D8h+var_A8], 0

loc_140307BF9:                          ; CODE XREF: sub_140307B7C+150↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AC9B

loc_140307C09:                          ; CODE XREF: sub_140307B7C+163123↓j
                                        ; sub_140307B7C+163132↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140307CA9
                mov     rdi, gs:20h
                test    dword ptr [rbx+74h], 4000h
                jz      short loc_140307C4B
                cmp     byte ptr [rsi+52h], 0
                mov     r14b, 1
                jnz     short loc_140307C4B
                mov     rcx, rsi
                mov     [rsi+52h], r14b
                call    sub_140308A40
                mov     r8b, bpl
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1403088BC

loc_140307C4B:                          ; CODE XREF: sub_140307B7C+AA↑j
                                        ; sub_140307B7C+B3↑j
                mov     rcx, rbx
                call    sub_1403261B0
                xor     r9d, r9d
                mov     [rsp+0D8h+var_B8], bpl
                xor     edx, edx
                mov     rcx, rdi
                lea     r8d, [r9+1]
                call    sub_14023E110
                test    r14b, r14b
                jz      short loc_140307C80
                xor     edx, edx
                mov     rcx, rbx
                call    KeAlertThread
                mov     rcx, rbx
                call    sub_1402D1A10

loc_140307C80:                          ; CODE XREF: sub_140307B7C+49↑j
                                        ; sub_140307B7C+F0↑j
                mov     rcx, [rsp+0D8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D8h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140307CA9:                          ; CODE XREF: sub_140307B7C+94↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046ACC2

loc_140307CB9:                          ; CODE XREF: sub_140307B7C+14E↓j
                                        ; sub_140307B7C+16314A↓j ...
                lea     rcx, [rsp+0D8h+var_A8]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140307CB9
                jmp     loc_140307BF9
; } // starts at 140307B7C
sub_140307B7C   endp

; ---------------------------------------------------------------------------
algn_140307CD1:                         ; DATA XREF: .rdata:0000000140071930↑o
                                        ; .pdata:00000001400D40F4↑o
                align 20h
; Exported entry 1109. KeAlertThread

; =============== S U B R O U T I N E =======================================


                public KeAlertThread
KeAlertThread   proc near               ; CODE XREF: sub_140307B7C+F7↑p
                                        ; sub_14035C4F0+12CDBD↓p ...

var_38          = byte ptr -38h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046ACEA SIZE 00000090 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                movsx   r14, dl
                mov     rbx, rcx
                mov     rbp, cr8
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046ACEA

loc_140307D19:                          ; CODE XREF: KeAlertThread+16300C↓j
                                        ; KeAlertThread+163016↓j ...
                mov     r15, gs:20h
                mov     rdi, gs:20h
                and     [rsp+58h+arg_8], 0

loc_140307D30:                          ; CODE XREF: KeAlertThread+11C↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AD2C

loc_140307D40:                          ; CODE XREF: KeAlertThread+163050↓j
                                        ; KeAlertThread+16305F↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140307DD9
                mov     sil, [r14+rbx+72h]
                test    sil, sil
                jnz     short loc_140307D67
                mov     al, [rbx+184h]
                cmp     al, 5
                jz      short loc_140307DA0

loc_140307D61:                          ; CODE XREF: KeAlertThread+C9↓j
                                        ; KeAlertThread+D0↓j ...
                mov     byte ptr [r14+rbx+72h], 1

loc_140307D67:                          ; CODE XREF: KeAlertThread+75↑j
                                        ; KeAlertThread+F5↓j
                mov     rcx, rbx
                call    sub_1403261B0
                xor     edx, edx
                mov     [rsp+58h+var_38], bpl
                mov     r9d, r13d
                mov     rcx, r15
                lea     r8d, [rdx+1]
                call    sub_14023E110
                mov     rbx, [rsp+58h+arg_0]
                mov     al, sil
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140307DA0:                          ; CODE XREF: KeAlertThread+7F↑j
                mov     al, [rbx+70h]
                and     al, 7
                sub     al, 3
                cmp     al, 1
                jbe     short loc_140307D61
                mov     eax, [rbx+74h]
                test    al, 10h
                jz      short loc_140307D61
                cmp     r14b, [rbx+187h]
                jg      short loc_140307D61
                xor     r9d, r9d
                mov     r8d, 101h
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_1402C32B0
                or      byte ptr [rbx+70h], 80h
                test    al, al
                jnz     short loc_140307D67
                jmp     short loc_140307D61
; ---------------------------------------------------------------------------

loc_140307DD9:                          ; CODE XREF: KeAlertThread+67↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AD53

loc_140307DE9:                          ; CODE XREF: KeAlertThread+11A↓j
                                        ; KeAlertThread+163077↓j ...
                lea     rcx, [rsp+58h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140307DE9
                jmp     loc_140307D30
KeAlertThread   endp

; ---------------------------------------------------------------------------
algn_140307E01:                         ; DATA XREF: .rdata:000000014007195C↑o
                                        ; .pdata:00000001400D4100↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140307E10   proc near               ; CODE XREF: sub_1403FED90+80↓p
                                        ; sub_1403FF6E0+80↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046AD7A SIZE 00000056 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r10, r8
                mov     rbx, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      loc_140307EEA
                mov     r9b, 1

loc_140307E2F:                          ; CODE XREF: sub_140307E10+E6↓j
                movzx   r8d, byte ptr [rbx+2]
                test    r8b, 10h
                jnz     loc_140307F48

loc_140307E3E:                          ; CODE XREF: sub_140307E10+14A↓j
                test    r8b, 20h
                jz      short loc_140307EAC
                mov     rdx, [rcx+8168h]
                mov     rax, [rcx+8170h]
                test    rdx, rdx
                jz      loc_140307F3E
                test    rax, rax
                jz      loc_140307F3E
                cmp     byte ptr [rax+64h], 0
                jnz     loc_14046AD7A
                mov     ecx, [rax+48h]
                mov     eax, [rdx+170h]
                cmp     ecx, eax
                jb      short loc_140307E7D
                mov     ecx, eax

loc_140307E7D:                          ; CODE XREF: sub_140307E10+69↑j
                                        ; sub_140307E10+133↓j ...
                cmp     ecx, 4Bh ; 'K'
                jb      loc_14046AD82
                mov     edx, 3

loc_140307E8B:                          ; CODE XREF: sub_140307E10+162F7C↓j
                movzx   eax, byte ptr [rdi+81B8h]
                add     rax, 0FE8h
                mov     ecx, edx
                lea     rcx, [rax+rcx*2]
                lea     rdx, [rdi+rcx*8]
                mov     rcx, [rdi+rcx*8]
                add     rcx, r10
                mov     [rdx], rcx

loc_140307EAC:                          ; CODE XREF: sub_140307E10+32↑j
                test    r8b, 40h
                jnz     loc_14046AD91

loc_140307EB6:                          ; CODE XREF: sub_140307E10+162F8B↓j
                                        ; sub_140307E10+162F95↓j
                mov     byte ptr [rdi+20h], 0
                test    r9b, r9b
                jz      short loc_140307EFB
                test    r8b, 36h
                jz      loc_14046ADBA
                cmp     qword ptr [rbx+168h], 0
                jnz     loc_14046ADAA

loc_140307ED7:                          ; CODE XREF: sub_140307E10+162FA5↓j
                sti
                test    byte ptr [rbx+2], 4
                jnz     short loc_140307F06

loc_140307EDE:                          ; CODE XREF: sub_140307E10+EF↓j
                                        ; sub_140307E10+104↓j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140307EEA:                          ; CODE XREF: sub_140307E10+16↑j
                mov     rbx, gs:188h
                xor     r9b, r9b
                jmp     loc_140307E2F
; ---------------------------------------------------------------------------

loc_140307EFB:                          ; CODE XREF: sub_140307E10+AD↑j
                test    r8b, 2
                jz      short loc_140307EDE
                jmp     loc_14046ADC0
; ---------------------------------------------------------------------------

loc_140307F06:                          ; CODE XREF: sub_140307E10+CC↑j
                mov     eax, [rbx+78h]
                bt      eax, 0Bh
                jb      short loc_140307F5F
                test    eax, 600h
                jnz     short loc_140307EDE
                mov     rcx, [rbx+68h]
                test    rcx, rcx
                jz      short loc_140307EDE
                mov     eax, [rdi+0D8h]
                add     rcx, rax
                jz      short loc_140307EDE

loc_140307F2A:                          ; CODE XREF: sub_140307E10+12C↓j
                test    byte ptr [rcx+70h], 2
                jnz     short loc_140307F5F
                mov     rcx, [rcx+198h]
                test    rcx, rcx
                jz      short loc_140307EDE
                jmp     short loc_140307F2A
; ---------------------------------------------------------------------------

loc_140307F3E:                          ; CODE XREF: sub_140307E10+45↑j
                                        ; sub_140307E10+4E↑j
                mov     ecx, 64h ; 'd'
                jmp     loc_140307E7D
; ---------------------------------------------------------------------------

loc_140307F48:                          ; CODE XREF: sub_140307E10+28↑j
                movzx   eax, byte ptr [rbx+7Ch]
                mov     rax, [rcx+7EC0h]
                mov     [rcx+7EC8h], rax
                jmp     loc_140307E3E
; ---------------------------------------------------------------------------

loc_140307F5F:                          ; CODE XREF: sub_140307E10+FD↑j
                                        ; sub_140307E10+11E↑j
                mov     r8b, 1
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403087E0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140307E10   endp

algn_140307F79:                         ; DATA XREF: .rdata:0000000140071980↑o
                                        ; .pdata:00000001400D410C↑o
                align 20h
; Exported entry 1204. KeInsertQueueApc

; =============== S U B R O U T I N E =======================================


                public KeInsertQueueApc
KeInsertQueueApc proc near              ; CODE XREF: sub_140210850+76↑p
                                        ; sub_14023D030+36E↑p ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046ADD0 SIZE 000000A0 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r12, r8
                mov     r13, rdx
                mov     rsi, rcx
                xor     edx, edx
                mov     rcx, cs:qword_140C19798
                mov     r8d, 3000h
                call    EtwProviderEnabled
                mov     r10b, [rsi+51h]
                mov     r11b, al
                mov     rax, [rsi+38h]
                test    r10b, r10b
                mov     [rsp+98h+var_50], rax
                mov     rax, [rsi+30h]
                setnz   [rsp+98h+arg_0]
                mov     [rsp+98h+var_48], rax
                lea     rax, sub_1408BE2C0
                cmp     [rsi+20h], rax
                jz      loc_14046ADD0

loc_140307FEB:                          ; CODE XREF: KeInsertQueueApc+162E53↓j
                xor     cl, cl

loc_140307FED:                          ; CODE XREF: KeInsertQueueApc+162E5B↓j
                mov     rdi, [rsi+8]
                mov     rdx, gs:188h
                mov     rax, [rdi+220h]
                test    r10b, r10b
                jnz     loc_1403080F1
                cmp     [rdx+0B8h], rax

loc_140308011:                          ; CODE XREF: KeInsertQueueApc+178↓j
                setnz   al
                test    r11b, r11b
                jz      short loc_140308021
                test    al, al
                jnz     loc_1403080FD

loc_140308021:                          ; CODE XREF: KeInsertQueueApc+97↑j
                                        ; KeInsertQueueApc+184↓j
                xor     r15b, r15b

loc_140308024:                          ; CODE XREF: KeInsertQueueApc+19A↓j
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046ADE0

loc_14030803F:                          ; CODE XREF: KeInsertQueueApc+162E62↓j
                                        ; KeInsertQueueApc+162E6C↓j ...
                mov     r14, gs:20h
                mov     rbx, gs:20h
                and     [rsp+98h+var_58], 0

loc_140308056:                          ; CODE XREF: KeInsertQueueApc+20E↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046AE22

loc_140308066:                          ; CODE XREF: KeInsertQueueApc+162EA6↓j
                                        ; KeInsertQueueApc+162EB5↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_14030816B
                test    dword ptr [rdi+74h], 4000h
                jz      loc_140308193
                cmp     byte ptr [rsi+52h], 0
                jnz     loc_140308193
                mov     rcx, rsi
                mov     byte ptr [rsi+52h], 1
                mov     [rsi+40h], r13
                mov     [rsi+48h], r12
                call    sub_140308A40
                mov     r8b, bpl
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1403088BC
                mov     bl, 1

loc_1403080AE:                          ; CODE XREF: KeInsertQueueApc+215↓j
                mov     rcx, rdi
                call    sub_1403261B0
                mov     r9d, [rsp+98h+arg_18]
                xor     edx, edx
                mov     rcx, r14
                mov     byte ptr [rsp+98h+var_78], bpl
                lea     r8d, [rdx+1]
                call    sub_14023E110
                test    r15b, r15b
                jnz     short loc_14030811F

loc_1403080D6:                          ; CODE XREF: KeInsertQueueApc+1E6↓j
                mov     al, bl
                mov     rbx, [rsp+98h+arg_8]
                add     rsp, 60h
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

loc_1403080F1:                          ; CODE XREF: KeInsertQueueApc+84↑j
                cmp     [rdx+220h], rax
                jmp     loc_140308011
; ---------------------------------------------------------------------------

loc_1403080FD:                          ; CODE XREF: KeInsertQueueApc+9B↑j
                test    r10b, r10b
                jnz     short loc_14030810A
                test    cl, cl
                jz      loc_140308021

loc_14030810A:                          ; CODE XREF: KeInsertQueueApc+180↑j
                mov     edx, 5149654Bh
                mov     rcx, rdi
                mov     r15b, 1
                call    ObfReferenceObjectWithTag
                jmp     loc_140308024
; ---------------------------------------------------------------------------

loc_14030811F:                          ; CODE XREF: KeInsertQueueApc+154↑j
                test    bl, bl
                jz      short loc_140308159
                mov     rcx, gs:188h
                mov     rdx, rdi
                mov     al, [rsp+98h+arg_0]
                mov     r9, [rsp+98h+var_50]
                mov     r8, [rsp+98h+var_48]
                mov     cl, [rcx+232h]
                mov     [rsp+98h+var_68], al
                mov     [rsp+98h+var_70], r12
                mov     [rsp+98h+var_78], r13
                call    sub_1403073CC

loc_140308159:                          ; CODE XREF: KeInsertQueueApc+1A1↑j
                mov     edx, 5149654Bh
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                jmp     loc_1403080D6
; ---------------------------------------------------------------------------

loc_14030816B:                          ; CODE XREF: KeInsertQueueApc+ED↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046AE49

loc_14030817B:                          ; CODE XREF: KeInsertQueueApc+20C↓j
                                        ; KeInsertQueueApc+162ECD↓j ...
                lea     rcx, [rsp+98h+var_58]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_14030817B
                jmp     loc_140308056
; ---------------------------------------------------------------------------

loc_140308193:                          ; CODE XREF: KeInsertQueueApc+FA↑j
                                        ; KeInsertQueueApc+104↑j
                xor     bl, bl
                jmp     loc_1403080AE
KeInsertQueueApc endp

; ---------------------------------------------------------------------------
algn_14030819A:                         ; DATA XREF: .rdata:00000001400719D0↑o
                                        ; .pdata:00000001400D4118↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403081A0   proc near               ; CODE XREF: sub_1403073CC+106↑p
                                        ; sub_1403073CC+158↑p ...
                mov     qword ptr [rcx+8], 4
                lea     rax, [rdx+440h]
                mov     [rcx], rax
                lea     rax, [rdx+468h]
                mov     [rcx+10h], rax
                mov     rax, 0FFFFF780000002C4h
                mov     qword ptr [rcx+18h], 8
                mov     eax, [rax]
                shl     rax, 30h
                or      rax, [rdx+8F8h]
                mov     [r8], rax
                lea     rax, [rdx+878h]
                mov     [rcx+30h], rax
                lea     rax, [rdx+879h]
                mov     [rcx+40h], rax
                lea     rax, [rdx+87Ah]
                mov     [rcx+50h], rax
                mov     eax, 6
                mov     [rcx+20h], r8
                mov     qword ptr [rcx+28h], 8
                mov     qword ptr [rcx+38h], 1
                mov     qword ptr [rcx+48h], 1
                mov     qword ptr [rcx+58h], 1
                retn
sub_1403081A0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14030822B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4124↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140308234   proc near               ; CODE XREF: sub_1403593DC+12EC44↓p
                                        ; sub_14063CB90+41D↓p ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = word ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = byte ptr  48h
arg_20          = qword ptr  50h
arg_28          = qword ptr  58h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_8], rdx
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                xor     ebx, ebx
                mov     esi, r9d
                mov     [rbp+var_10], rbx
                mov     r13, r8
                mov     [rbp+var_14], ebx
                mov     r15, rcx
                mov     [rbp+var_1C], ebx
                mov     [rbp+var_18], ebx
                mov     [rbp+var_20], bx
                test    r9b, 2
                jz      short loc_140308297
                mov     edx, [r8+30h]
                mov     ecx, 0C00h
                mov     eax, edx
                and     eax, ecx
                cmp     eax, ecx
                setz    cl
                test    edx, 380h
                setnz   al
                test    al, cl
                jnz     loc_140308375

loc_140308297:                          ; CODE XREF: sub_140308234+3E↑j
                lea     rcx, [r15+680h]
                mov     edi, ebx
                call    sub_140231340
                mov     r12b, al
                mov     rax, [rbp+arg_20]
                cmp     rax, [rbp+arg_28]
                ja      loc_14030833B
                test    sil, 2
                setnz   [rbp+arg_18]

loc_1403082BE:                          ; CODE XREF: sub_140308234+FE↓j
                mov     rdx, [rbp+arg_28]
                lea     rcx, [rbp+var_18]
                mov     [rsp+70h+var_28], rcx
                mov     r9, r13
                lea     rcx, [rbp+var_10]
                mov     r8b, r12b
                mov     [rsp+70h+var_30], rcx
                lea     rcx, [rbp+var_20]
                mov     [rsp+70h+var_38], rcx
                lea     rcx, [rbp+var_14]
                mov     [rsp+70h+var_40], rcx
                lea     rcx, [rbp+var_1C]
                mov     [rsp+70h+var_48], rcx
                mov     rcx, rax
                mov     [rsp+70h+var_50], rbx
                call    sub_140281E60
                mov     ecx, [rbp+var_1C]
                cmp     ecx, 0FFFFFFFFh
                cmovz   ecx, ebx
                test    cl, 2
                mov     [rbp+var_1C], ecx
                setz    al
                test    [rbp+arg_18], al
                jnz     short loc_140308336
                test    cl, 2
                setnz   cl
                test    sil, 4
                setnz   al
                test    al, cl
                jnz     short loc_140308336
                mov     rax, [rbp+var_10]
                cmp     rax, [rbp+arg_28]
                jbe     short loc_1403082BE
                jmp     short loc_14030833B
; ---------------------------------------------------------------------------

loc_140308336:                          ; CODE XREF: sub_140308234+E3↑j
                                        ; sub_140308234+F4↑j
                mov     edi, 1

loc_14030833B:                          ; CODE XREF: sub_140308234+7C↑j
                                        ; sub_140308234+100↑j
                mov     dl, r12b
                lea     rcx, [r15+680h]
                call    sub_140226960
                test    edi, edi
                jz      short loc_140308359
                mov     rcx, [rbp+arg_8]
                call    sub_1406AB754
                mov     ebx, eax

loc_140308359:                          ; CODE XREF: sub_140308234+118↑j
                mov     eax, ebx

loc_14030835B:                          ; CODE XREF: sub_140308234+146↓j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308375:                          ; CODE XREF: sub_140308234+5D↑j
                mov     eax, 0C0000045h
                jmp     short loc_14030835B
sub_140308234   endp

; ---------------------------------------------------------------------------
byte_14030837C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4130↑o

; =============== S U B R O U T I N E =======================================


sub_140308384   proc near               ; CODE XREF: sub_1406AB754+34↓p
                                        ; sub_1406AB754+16DA5A↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = dword ptr  8

; FUNCTION CHUNK AT 000000014046AE70 SIZE 0000004A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], ecx
                push    rbx
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                mov     rbx, cs:qword_140C19988
                xor     edx, edx
                mov     rcx, rbx
                mov     r8d, 100h
                call    EtwProviderEnabled
                xor     ecx, ecx
                test    al, al
                jnz     loc_14046AE70

loc_1403083BD:                          ; CODE XREF: sub_140308384+162B31↓j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140308384
sub_140308384   endp

algn_1403083D1:                         ; DATA XREF: .rdata:0000000140071A84↑o
                                        ; .pdata:00000001400D413C↑o
                align 20h
; Exported entry 139. EtwProviderEnabled

; =============== S U B R O U T I N E =======================================


                public EtwProviderEnabled
EtwProviderEnabled proc near            ; CODE XREF: sub_1403073CC+4A↑p
                                        ; sub_1403073CC+272↑p ...

; FUNCTION CHUNK AT 000000014046AEBA SIZE 0000001D BYTES

                sub     rsp, 28h
                xor     r9d, r9d
                mov     r11b, dl
                mov     r10, rcx
                test    rcx, rcx
                jz      short loc_14030841A
                mov     rcx, [rcx+20h]
                add     rcx, 60h ; '`'
                call    sub_140252AD0
                test    al, al
                jz      short loc_14030840F

loc_140308403:                          ; CODE XREF: EtwProviderEnabled+162AF2↓j
                mov     r9b, 1

loc_140308406:                          ; CODE XREF: EtwProviderEnabled+33↓j
                                        ; EtwProviderEnabled+162AEC↓j
                mov     al, r9b

loc_140308409:                          ; CODE XREF: EtwProviderEnabled+3C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030840F:                          ; CODE XREF: EtwProviderEnabled+21↑j
                cmp     [r10+65h], r9b
                jz      short loc_140308406
                jmp     loc_14046AEBA
; ---------------------------------------------------------------------------

loc_14030841A:                          ; CODE XREF: EtwProviderEnabled+10↑j
                xor     al, al
                jmp     short loc_140308409
EtwProviderEnabled endp

; ---------------------------------------------------------------------------
byte_14030841E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140071AA0↑o
                                        ; .pdata:00000001400D4148↑o

; =============== S U B R O U T I N E =======================================


sub_140308424   proc near               ; CODE XREF: sub_1406AB2DC+ED↓p
                                        ; sub_1406AB48C+DD↓p ...
                and     dword ptr [rcx+0Ch], 0
                lea     rax, [rdx+480h]
                and     dword ptr [rcx+1Ch], 0
                mov     [rcx], rax
                lea     rax, [rdx+430h]
                mov     [rcx+10h], rax
                mov     eax, 2
                mov     dword ptr [rcx+8], 4
                mov     dword ptr [rcx+18h], 8
                retn
sub_140308424   endp

; ---------------------------------------------------------------------------
                align 2
byte_140308456  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4154↑o

; =============== S U B R O U T I N E =======================================


sub_14030845C   proc near               ; CODE XREF: sub_14068AE3C+422↓p
                                        ; sub_1406ABCC0+62↓p ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046AED8 SIZE 000000A8 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, rcx
                mov     rbx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14046AED8

loc_140308496:                          ; CODE XREF: sub_14030845C+162A7E↓j
                                        ; sub_14030845C+162A87↓j ...
                mov     r15, gs:20h
                lea     rsi, [rdi+2E0h]
                mov     rcx, rsi
                call    sub_1402AF4F0
                movsx   eax, byte ptr [rdi+284h]
                mov     r14d, eax
                cmp     eax, 7Fh
                jz      loc_14046AF17
                inc     al
                mov     rdx, r15
                mov     rcx, rdi
                mov     [rdi+284h], al
                call    sub_140308520
                test    al, al
                jz      short loc_140308511

loc_1403084D8:                          ; CODE XREF: sub_14030845C+BC↓j
                lock and dword ptr [rsi], 0FFFFFF7Fh
                xor     r9d, r9d
                mov     [rsp+48h+var_28], bl
                xor     edx, edx
                mov     rcx, r15
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, r14d
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308511:                          ; CODE XREF: sub_14030845C+7A↑j
                add     [rdi+284h], bpl
                jmp     short loc_1403084D8
sub_14030845C   endp

; ---------------------------------------------------------------------------
algn_14030851A:                         ; DATA XREF: .rdata:0000000140071ACC↑o
                                        ; .pdata:00000001400D4160↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140308520   proc near               ; CODE XREF: sub_140307B1C+30↑p
                                        ; sub_14030845C+73↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046AF80 SIZE 00000107 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, gs:20h
                xor     edi, edi
                mov     r15, rdx
                mov     [rsp+48h+arg_0], edi
                mov     rbx, rcx
                lea     r12d, [rdi+1]

loc_14030854F:                          ; CODE XREF: sub_140308520+2AB↓j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AF80

loc_14030855F:                          ; CODE XREF: sub_140308520+162A64↓j
                                        ; sub_140308520+162A73↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_1403087A8
                test    dword ptr [rbx+74h], 4000h
                jz      short loc_1403085D0
                cmp     [rbx+2E4h], edi
                jz      short loc_1403085CD
                mov     [rbx+2E4h], edi
                lea     r11, [rbx+288h]
                mov     sil, dil
                cmp     [rbx+2DAh], dil
                jnz     short loc_1403085A8
                mov     rcx, r11
                mov     [rbx+2DAh], r12b
                mov     sil, r12b
                call    sub_140308A40

loc_1403085A8:                          ; CODE XREF: sub_140308520+74↑j
                cmp     cs:dword_140CFC914, edi
                jnz     short loc_1403085BA
                mov     al, [rbx+184h]
                cmp     al, 5
                jz      short loc_1403085F3

loc_1403085BA:                          ; CODE XREF: sub_140308520+8E↑j
                                        ; sub_140308520+DB↓j ...
                test    sil, sil
                jz      short loc_1403085CD
                mov     r8b, 2
                mov     rdx, r11
                mov     rcx, r15
                call    sub_1403088BC

loc_1403085CD:                          ; CODE XREF: sub_140308520+5B↑j
                                        ; sub_140308520+9D↑j ...
                mov     dil, r12b

loc_1403085D0:                          ; CODE XREF: sub_140308520+53↑j
                mov     rcx, rbx
                call    sub_1403261B0
                mov     rbx, [rsp+48h+arg_8]
                mov     al, dil
                mov     rbp, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403085F3:                          ; CODE XREF: sub_140308520+98↑j
                mov     al, [rbx+70h]
                and     al, 7
                cmp     al, r12b
                jnz     short loc_1403085BA
                mov     al, [rbx+3]
                test    al, 40h
                jnz     short loc_1403085BA
                test    al, al
                js      short loc_1403085BA
                cmp     [rbx+1E4h], edi
                jnz     short loc_1403085BA
                cmp     [rbx+186h], dil
                jnz     short loc_1403085BA
                cmp     [rbx+0C0h], dil
                jnz     short loc_1403085BA
                cmp     [rbx+24Ah], dil
                jnz     short loc_1403085BA
                mov     rax, [rbx+0D0h]
                mov     al, [rax+11h]
                cmp     al, 5
                jz      short loc_14030864A
                mov     rax, [rbx+0D0h]
                cmp     [rax+10h], r12b
                jnz     loc_1403085BA

loc_14030864A:                          ; CODE XREF: sub_140308520+117↑j
                movsx   eax, byte ptr [rbx+187h]
                mov     rcx, rbx
                shl     eax, 12h
                xor     eax, [rbx+74h]
                and     eax, 40000h
                mov     byte ptr [rbx+70h], 3
                xor     [rbx+74h], eax
                mov     [rbx+0C1h], r12b
                call    sub_1403261B0
                mov     rcx, [rbx+0D0h]
                movzx   eax, byte ptr [rbx+24Bh]
                lea     rsi, [rcx+11h]
                lea     r14, [rax+rax*2]
                shl     r14, 4
                add     r14, rcx

loc_14030868F:                          ; CODE XREF: sub_140308520+1C0↓j
                mov     al, [rsi]
                cmp     al, 5
                jnb     short loc_1403086D5
                mov     rbp, [rsi+0Fh]
                mov     rcx, rbp
                call    sub_1402AF4F0
                cmp     byte ptr [rsi], 4
                jnz     short loc_1403086CA
                mov     rax, [rsi-9]
                lea     rdx, [rsi-11h]
                mov     rcx, [rdx]
                cmp     [rcx+8], rdx
                jz      short loc_1403086BE

loc_1403086B7:                          ; CODE XREF: sub_140308520+1A1↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1403086BE:                          ; CODE XREF: sub_140308520+195↑j
                cmp     [rax], rdx
                jnz     short loc_1403086B7
                mov     [rax], rcx
                mov     [rcx+8], rax

loc_1403086CA:                          ; CODE XREF: sub_140308520+184↑j
                lock and dword ptr [rbp+0], 0FFFFFF7Fh
                mov     byte ptr [rsi], 6

loc_1403086D5:                          ; CODE XREF: sub_140308520+173↑j
                add     rsi, 30h ; '0'
                lea     rax, [rsi-11h]
                cmp     rax, r14
                jnz     short loc_14030868F
                mov     r14d, 200h
                test    [rbx+74h], r14d
                jnz     short loc_140308761

loc_1403086EE:                          ; CODE XREF: sub_140308520+283↓j
                                        ; sub_140308520+2B4↓j ...
                test    dword ptr [rbx+78h], 4000h
                jz      short loc_14030870B
                lock bts dword ptr [rbx+78h], 14h
                jb      short loc_14030870B
                mov     rcx, [rbx+0B8h]
                call    sub_14021ECB0

loc_14030870B:                          ; CODE XREF: sub_140308520+1D5↑j
                                        ; sub_140308520+1DD↑j
                mov     rsi, gs:20h
                mov     [rsp+48h+arg_10], edi

loc_140308718:                          ; CODE XREF: sub_140308520+162B48↓j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B009

loc_140308728:                          ; CODE XREF: sub_140308520+162AED↓j
                                        ; sub_140308520+162AFC↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_14046B030
                mov     eax, [rbx+74h]
                mov     ecx, eax
                and     eax, 0FFFDFDFFh
                and     ecx, r14d
                shl     ecx, 8
                or      ecx, eax
                mov     al, [rbx+70h]
                and     al, 0FCh
                mov     [rbx+74h], ecx
                or      al, 4
                mov     [rbx+70h], al
                test    al, 20h
                jz      loc_1403085CD
                jmp     loc_14046B06D
; ---------------------------------------------------------------------------

loc_140308761:                          ; CODE XREF: sub_140308520+1CC↑j
                mov     rbp, 0FFFFF78000000008h
                lea     rsi, [rbx+100h]
                mov     dl, r12b
                mov     rcx, rsi
                mov     rbp, [rbp+0]
                call    sub_140242A30
                test    al, al
                jz      loc_14046AFCE
                mov     rcx, [rsi+18h]
                cmp     rcx, rbp
                jbe     short loc_1403087D0
                test    [rsi+1], r12b
                jnz     loc_14046AFF0
                sub     rbp, rcx
                mov     [rsi+18h], rbp
                jmp     loc_1403086EE
; ---------------------------------------------------------------------------

loc_1403087A8:                          ; CODE XREF: sub_140308520+46↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AFA7

loc_1403087B8:                          ; CODE XREF: sub_140308520+2A9↓j
                                        ; sub_140308520+162A8B↓j ...
                lea     rcx, [rsp+48h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_1403087B8
                jmp     loc_14030854F
; ---------------------------------------------------------------------------

loc_1403087D0:                          ; CODE XREF: sub_140308520+270↑j
                mov     [rsi+18h], rdi
                jmp     loc_1403086EE
sub_140308520   endp

; ---------------------------------------------------------------------------
algn_1403087D9:                         ; DATA XREF: .rdata:0000000140071AF8↑o
                                        ; .pdata:00000001400D416C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403087E0   proc near               ; CODE XREF: sub_140240E30+C88↑p
                                        ; sub_1402CD400+21F↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014046B088 SIZE 0000004E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rsi, rcx
                test    r8b, r8b
                jnz     loc_140308883
                test    dword ptr [rdx+78h], 400h
                jnz     short loc_140308872

loc_140308807:                          ; CODE XREF: sub_1403087E0+A9↓j
                lock bts dword ptr [rdx+78h], 0Ah
                mov     rdi, gs:20h
                and     [rsp+28h+arg_10], 0

loc_14030881B:                          ; CODE XREF: sub_1403087E0+D1↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B088

loc_14030882B:                          ; CODE XREF: sub_1403087E0+1628AC↓j
                                        ; sub_1403087E0+1628BB↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      short loc_14030888E
                cmp     byte ptr [rbx+2DAh], 0
                jnz     short loc_14030886A
                test    dword ptr [rbx+74h], 4000h
                jz      short loc_14030886A
                lea     r11, [rbx+288h]
                mov     byte ptr [rbx+2DAh], 1
                mov     rcx, r11
                call    sub_140308A40
                mov     r8b, 2
                mov     rdx, r11
                mov     rcx, rsi
                call    sub_1403088BC

loc_14030886A:                          ; CODE XREF: sub_1403087E0+5B↑j
                                        ; sub_1403087E0+64↑j
                mov     rcx, rbx
                call    sub_1403261B0

loc_140308872:                          ; CODE XREF: sub_1403087E0+25↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308883:                          ; CODE XREF: sub_1403087E0+18↑j
                lock btr dword ptr [rdx+78h], 0Bh
                jmp     loc_140308807
; ---------------------------------------------------------------------------

loc_14030888E:                          ; CODE XREF: sub_1403087E0+52↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B0AF

loc_14030889E:                          ; CODE XREF: sub_1403087E0+CF↓j
                                        ; sub_1403087E0+1628D3↓j ...
                lea     rcx, [rsp+28h+arg_10]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_14030889E
                jmp     loc_14030881B
sub_1403087E0   endp

; ---------------------------------------------------------------------------
byte_1403088B6  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140071B1C↑o
                                        ; .pdata:00000001400D4178↑o

; =============== S U B R O U T I N E =======================================


sub_1403088BC   proc near               ; CODE XREF: sub_1402D1AD4+83↑p
                                        ; sub_1402D1E00+257↑p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rdx+8]
                mov     r11, rcx
                movsx   eax, byte ptr [rdx+50h]
                mov     r10b, [rdx+51h]
                movzx   r9d, byte ptr [rbx+24Ah]
                cmp     eax, r9d
                jnz     short loc_140308908
                xor     edi, edi
                cmp     rbx, [rcx+8]
                jnz     short loc_140308914
                test    r10b, r10b
                jnz     short loc_140308908
                mov     rax, [rdx+30h]
                cmp     [rbx+1E4h], edi
                jz      loc_1403089E1
                test    rax, rax
                jz      loc_1403089D4

loc_140308908:                          ; CODE XREF: sub_1403088BC+24↑j
                                        ; sub_1403088BC+31↑j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140308914:                          ; CODE XREF: sub_1403088BC+2C↑j
                test    r10b, r10b
                jnz     short loc_140308977
                mov     byte ptr [rbx+0C1h], 1
                lock or [rsp+28h+var_28], edi
                mov     al, [rbx+184h]
                cmp     al, 2
                jz      loc_1403089FA
                cmp     al, 5
                jnz     short loc_140308908
                cmp     [rbx+186h], dil
                jnz     short loc_140308908
                cmp     [rbx+1E6h], di
                jnz     short loc_140308908
                cmp     [rdx+30h], rdi
                jz      short loc_140308960
                cmp     [rbx+1E4h], di
                jnz     short loc_140308908
                cmp     [rbx+0C0h], dil
                jnz     short loc_140308908

loc_140308960:                          ; CODE XREF: sub_1403088BC+90↑j
                xor     r9d, r9d
                mov     r8d, 100h
                mov     rdx, rbx
                call    sub_1402C32B0
                or      byte ptr [rbx+70h], 20h
                jmp     short loc_140308908
; ---------------------------------------------------------------------------

loc_140308977:                          ; CODE XREF: sub_1403088BC+5B↑j
                mov     al, [rbx+184h]
                cmp     al, 5
                jnz     short loc_140308908
                cmp     byte ptr [rbx+187h], 1
                jnz     loc_140308908
                mov     cl, [rbx+70h]
                mov     al, cl
                and     al, 7
                sub     al, 3
                cmp     al, 1
                jbe     loc_140308908
                mov     eax, [rbx+74h]
                test    al, 10h
                jz      short loc_140308A1C

loc_1403089A6:                          ; CODE XREF: sub_1403088BC+16D↓j
                or      cl, 40h
                xor     r9d, r9d
                mov     [rbx+70h], cl
                mov     r8d, 0C0h
                mov     rcx, r11
                mov     rdx, rbx
                call    sub_1402C32B0
                test    al, al
                jz      loc_140308908
                or      byte ptr [rbx+0C2h], 2
                jmp     loc_140308908
; ---------------------------------------------------------------------------

loc_1403089D4:                          ; CODE XREF: sub_1403088BC+46↑j
                cmp     [rbx+1E6h], di
                jnz     loc_140308908

loc_1403089E1:                          ; CODE XREF: sub_1403088BC+3D↑j
                mov     byte ptr [rbx+0C1h], 1
                cmp     r8b, 1
                jb      short loc_140308A2E

loc_1403089EE:                          ; CODE XREF: sub_1403088BC+152↓j
                mov     cl, 1
                call    HalRequestSoftwareInterrupt
                jmp     loc_140308908
; ---------------------------------------------------------------------------

loc_1403089FA:                          ; CODE XREF: sub_1403088BC+70↑j
                mov     ecx, [rbx+218h]
                mov     eax, gs:1A4h
                btr     ecx, 1Fh
                cmp     eax, ecx
                jz      short loc_1403089EE
                mov     dl, 1
                call    sub_140308E0C
                jmp     loc_140308908
; ---------------------------------------------------------------------------

loc_140308A1C:                          ; CODE XREF: sub_1403088BC+E8↑j
                test    byte ptr [rbx+0C2h], 2
                jz      loc_140308908
                jmp     loc_1403089A6
; ---------------------------------------------------------------------------

loc_140308A2E:                          ; CODE XREF: sub_1403088BC+130↑j
                or      dword ptr [rbx+74h], 40h
                jmp     loc_140308908
sub_1403088BC   endp

; ---------------------------------------------------------------------------
algn_140308A37:                         ; DATA XREF: .pdata:00000001400D4184↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140308A40   proc near               ; CODE XREF: sub_1402D1E00+249↑p
                                        ; sub_140307B7C+BC↑p ...

; FUNCTION CHUNK AT 000000014046B0D6 SIZE 00000027 BYTES

                mov     rdx, [rcx+8]
                xor     r9d, r9d
                cmp     [rcx+50h], r9b
                jnz     short loc_140308A5A
                cmp     [rdx+24Ah], r9b
                jnz     loc_140308AFD

loc_140308A5A:                          ; CODE XREF: sub_140308A40+B↑j
                mov     al, [rdx+24Ah]
                mov     [rcx+50h], al
                mov     eax, 98h

loc_140308A68:                          ; CODE XREF: sub_140308A40+C2↓j
                lea     r8, [rax+rdx]
                movsx   rax, byte ptr [rcx+51h]
                cmp     [rcx+30h], r9
                jz      loc_140308B07
                test    al, al
                jnz     short loc_140308AAA

loc_140308A7F:                          ; CODE XREF: sub_140308A40+B6↓j
                mov     rdx, rax
                add     rcx, 10h
                shl     rdx, 4
                add     rdx, r8
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     loc_14046B0F6
                mov     [rcx], rdx
                mov     [rcx+8], rax
                mov     [rax], rcx
                mov     [rdx+8], rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140308AAA:                          ; CODE XREF: sub_140308A40+3D↑j
                mov     r9, [rcx+20h]
                lea     r10, sub_1407067A0
                cmp     r9, r10
                jnz     short loc_140308AEC
                or      byte ptr [rdx+0C2h], 2
                add     rcx, 10h
                mov     rdx, rax
                shl     rdx, 4
                add     rdx, r8
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     loc_14046B0F6
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rax+8], rcx
                mov     [rdx], rcx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140308AEC:                          ; CODE XREF: sub_140308A40+78↑j
                lea     r10, sub_1408BE2C0
                cmp     r9, r10
                jnz     short loc_140308A7F
                jmp     loc_14046B0D6
; ---------------------------------------------------------------------------

loc_140308AFD:                          ; CODE XREF: sub_140308A40+14↑j
                mov     eax, 258h
                jmp     loc_140308A68
; ---------------------------------------------------------------------------

loc_140308B07:                          ; CODE XREF: sub_140308A40+35↑j
                mov     rdx, rax
                shl     rdx, 4
                add     rdx, r8
                mov     rax, [rdx+8]

loc_140308B15:                          ; CODE XREF: sub_140308A40+105↓j
                cmp     rax, rdx
                jnz     short loc_140308B3B

loc_140308B1A:                          ; CODE XREF: sub_140308A40+FF↓j
                                        ; sub_140308A40+1626B1↓j
                mov     rdx, [rax]
                add     rcx, 10h
                cmp     [rdx+8], rax
                jnz     loc_14046B0F6
                mov     [rcx], rdx
                mov     [rcx+8], rax
                mov     [rdx+8], rcx
                mov     [rax], rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308B3B:                          ; CODE XREF: sub_140308A40+D8↑j
                cmp     [rax+20h], r9
                jz      short loc_140308B1A
                mov     rax, [rax+8]
                jmp     short loc_140308B15
sub_140308A40   endp

; ---------------------------------------------------------------------------
algn_140308B47:                         ; DATA XREF: .pdata:00000001400D4190↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140308B50   proc near               ; CODE XREF: sub_140233220+247↑p
                                        ; sub_14023E110+17A↑p ...

; FUNCTION CHUNK AT 000000014046B0FE SIZE 0000000E BYTES

                sub     rsp, 28h
                cmp     dl, 2
                jnz     short loc_140308B68
                test    rcx, rcx
                jz      loc_14046B0FE

loc_140308B62:                          ; CODE XREF: sub_140308B50+1625B7↓j
                cmp     byte ptr [rcx+20h], 0
                jnz     short loc_140308B75

loc_140308B68:                          ; CODE XREF: sub_140308B50+7↑j
                mov     cl, dl
                call    HalRequestSoftwareInterrupt

loc_140308B6F:                          ; CODE XREF: sub_140308B50+29↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308B75:                          ; CODE XREF: sub_140308B50+16↑j
                mov     byte ptr [rcx+6], 1
                jmp     short loc_140308B6F
sub_140308B50   endp

; ---------------------------------------------------------------------------
byte_140308B7B  db 15h dup(0CCh)        ; DATA XREF: .rdata:0000000140071B48↑o
                                        ; .pdata:00000001400D419C↑o
; Exported entry 652. HalRequestSoftwareInterrupt

; =============== S U B R O U T I N E =======================================


                public HalRequestSoftwareInterrupt
HalRequestSoftwareInterrupt proc near   ; CODE XREF: sub_14021E230+1BE↑p
                                        ; sub_14021E830+341↑p ...

var_238         = qword ptr -238h
var_228         = dword ptr -228h
var_220         = xmmword ptr -220h
var_210         = qword ptr -210h
var_208         = dword ptr -208h
var_204         = dword ptr -204h
var_200         = dword ptr -200h
var_1FC         = dword ptr -1FCh
var_1F8         = dword ptr -1F8h
var_1F4         = dword ptr -1F4h
var_1F0         = dword ptr -1F0h
var_1EC         = dword ptr -1ECh
var_1E8         = dword ptr -1E8h
var_1E4         = dword ptr -1E4h
var_1E0         = dword ptr -1E0h
var_1DC         = dword ptr -1DCh
var_1D8         = dword ptr -1D8h
var_1D4         = dword ptr -1D4h
var_1D0         = dword ptr -1D0h
var_1CC         = dword ptr -1CCh
var_1C0         = xmmword ptr -1C0h
var_1B0         = qword ptr -1B0h
var_1A8         = xmmword ptr -1A8h
var_198         = dword ptr -198h
var_194         = byte ptr -194h
var_190         = qword ptr -190h
var_E8          = word ptr -0E8h
var_E6          = word ptr -0E6h
var_E4          = dword ptr -0E4h
var_E0          = qword ptr -0E0h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046B10C SIZE 0000048C BYTES

; __unwind { // __GSHandlerCheck
                pushfq
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 238h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+258h+var_38], rax
                mov     eax, 2Fh ; '/'
                cmp     cl, 1
                mov     ebx, 1Fh
                lea     rcx, [rsp+258h+var_190]
                cmovnz  ebx, eax
                xor     edx, edx
                lea     r8d, [rax+71h]
                call    memset
                mov     rdx, cs:qword_140C50778
                xor     eax, eax
                mov     [rsp+258h+var_1B0], rax
                xorps   xmm0, xmm0
                movups  [rsp+258h+var_1C0], xmm0
                mov     eax, [rdx+0DCh]
                test    al, 40h
                jz      loc_14046B10C
                cmp     cs:byte_140CF509E, 0
                jnz     loc_14046B10C
                mov     rcx, cs:qword_140C50840
                mov     edi, 1
                mov     dword ptr [rsp+258h+var_1C0], 3
                mov     [rsp+258h+var_208], 0FFFFFFFFh
                mov     [rsp+258h+var_204], edi
                mov     eax, [rcx+14h]
                mov     [rsp+258h+var_1FC], eax
                mov     eax, [rcx+10h]
                mov     [rsp+258h+var_200], eax
                mov     rax, [rdx+78h]
                cli
                lea     rcx, [rsp+258h+var_208]
                mov     r9d, ebx
                mov     [rsp+258h+var_238], rcx
                lea     r8, [rsp+258h+var_1C0]
                mov     rcx, cs:qword_140C50778
                lea     rdx, [rsp+258h+var_200]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                mov     esi, 200h
                test    [rsp+258h+var_8], esi
                jz      short loc_140308C77
                sti

loc_140308C77:                          ; CODE XREF: HalRequestSoftwareInterrupt+E4↑j
                                        ; HalRequestSoftwareInterrupt+162604↓j ...
                mov     rcx, [rsp+258h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 238h
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140308B90
HalRequestSoftwareInterrupt endp

byte_140308C94  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140071B74↑o
                                        ; .pdata:00000001400D41A8↑o

; =============== S U B R O U T I N E =======================================


sub_140308C9C   proc near               ; CODE XREF: sub_1406AB984+E0↓p
                                        ; DATA XREF: .pdata:00000001400D41B4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                movzx   eax, word ptr [rdx]
                lea     r11, [rcx+20h]
                mov     [rcx], ax
                xor     r9d, r9d
                movzx   eax, word ptr [rdx+4]
                mov     r10d, r9d
                mov     [rcx+2], ax
                mov     edi, 0C000h
                mov     eax, [rdx+0Ch]
                mov     [rcx+8], eax
                movzx   eax, word ptr [rdx+10h]
                mov     [rcx+0Ch], ax
                movzx   eax, word ptr [rdx+12h]
                mov     [rcx+6], ax
                mov     eax, [rdx+14h]
                mov     [rcx+10h], eax
                movzx   eax, word ptr [rdx+18h]
                mov     [rcx+14h], ax
                movzx   ebx, word ptr [rdx+8]

loc_140308CEB:                          ; CODE XREF: sub_140308C9C+8E↓j
                lea     eax, [r10+r10*4]
                add     eax, eax
                movsd   xmm0, qword ptr [rax+rdx+1Ch]
                movsd   qword ptr [r11], xmm0
                lea     r11, [r11+10h]
                movzx   eax, word ptr [rax+rdx+24h]
                mov     [r11-8], ax
                movzx   eax, bx
                and     ax, di
                cmp     ax, di
                setnz   al
                add     r9b, r9b
                add     al, r9b
                shl     bx, 2
                inc     r10d
                mov     r9b, al
                cmp     r10d, 8
                jb      short loc_140308CEB
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                mov     [rcx+4], al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140308C9C   endp

byte_140308D3B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D41B4↑o

; =============== S U B R O U T I N E =======================================


sub_140308D44   proc near               ; CODE XREF: KeSetTimer2:loc_1402AFB16↑p
                                        ; sub_14039F060:loc_14039F258↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, cs:dword_140C314C0
                lea     rbx, qword_140CFDCC0
                mov     edx, 8
                mov     rbx, [rbx+rdi*8]
                lea     rcx, [rbx+312Ch]
                call    sub_140308DA8
                test    al, 29h
                jnz     short loc_140308D8B
                mov     rax, gs:20h
                mov     dl, 2
                cmp     rax, rbx
                jz      short loc_140308D97
                mov     ecx, edi
                call    sub_140308E0C

loc_140308D8B:                          ; CODE XREF: sub_140308D44+2E↑j
                                        ; sub_140308D44+5B↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308D97:                          ; CODE XREF: sub_140308D44+3E↑j
                mov     rcx, rbx
                call    sub_140308B50
                jmp     short loc_140308D8B
sub_140308D44   endp

; ---------------------------------------------------------------------------
algn_140308DA1:                         ; DATA XREF: .pdata:00000001400D41C0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140308DA8   proc near               ; CODE XREF: sub_140251CB0+3AF↑p
                                        ; sub_140251CB0+41A↑p ...

arg_0           = dword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                movzx   r11d, dx
                mov     r10, rcx
                prefetchw byte ptr [rcx]
                movzx   r9d, word ptr [rcx]
                movzx   r8d, r9w
                movzx   eax, r9w
                or      r8w, dx
                lock cmpxchg [rcx], r8w
                jnz     short loc_140308DDD

loc_140308DD3:                          ; CODE XREF: sub_140308DA8+59↓j
                movzx   eax, r9w
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308DDD:                          ; CODE XREF: sub_140308DA8+29↑j
                                        ; sub_140308DA8+5B↓j
                lea     rcx, [rsp+28h+arg_0]
                call    sub_1402F6380
                prefetchw byte ptr [r10]
                movzx   r9d, word ptr [r10]
                movzx   ecx, r9w
                movzx   eax, r9w
                or      cx, r11w
                lock cmpxchg [r10], cx
                jz      short loc_140308DD3
                jmp     short loc_140308DDD
sub_140308DA8   endp

; ---------------------------------------------------------------------------
byte_140308E05  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D41CC↑o

; =============== S U B R O U T I N E =======================================


sub_140308E0C   proc near               ; CODE XREF: sub_14025C570+28C↑p
                                        ; sub_14025D100+EF2↑p ...
                sub     rsp, 28h
                mov     rax, gs:20h
                inc     dword ptr [rax+84D4h]
                call    HalSendSoftwareInterrupt
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140308E0C   endp

algn_140308E2A:                         ; DATA XREF: .pdata:00000001400D41D8↑o
                align 10h
; Exported entry 655. HalSendSoftwareInterrupt

; =============== S U B R O U T I N E =======================================


                public HalSendSoftwareInterrupt
HalSendSoftwareInterrupt proc near      ; CODE XREF: sub_140308E0C+13↑p
                                        ; DATA XREF: .pdata:00000001400D41E4↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                sub     rsp, 48h
                mov     al, dl
                xorps   xmm0, xmm0
                xor     edx, edx
                mov     [rsp+48h+var_18], rdx
                cmp     al, 1
                mov     edx, 1Fh
                movups  [rsp+48h+var_28], xmm0
                mov     dword ptr [rsp+48h+var_28+8], ecx
                mov     dword ptr [rsp+48h+var_28], 6
                lea     ecx, [rdx+10h]
                cmovnz  edx, ecx
                lea     rcx, [rsp+48h+var_28]
                call    sub_140252160
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalSendSoftwareInterrupt endp

byte_140308E6E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D41E4↑o

; =============== S U B R O U T I N E =======================================


sub_140308E74   proc near               ; CODE XREF: sub_1406AC0DC:loc_1406AC139↓p
                                        ; DATA XREF: .rdata:0000000140071D5C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046B598 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                test    dword ptr [rdx], 40000h
                mov     ebx, r8d
                mov     rdi, rdx
                mov     rsi, rcx
                jz      loc_14046B598
                mov     r8d, 1
                cmp     ebx, r8d
                jbe     short loc_140308ECB

loc_140308EA3:                          ; CODE XREF: sub_140308E74+62↓j
                                        ; sub_140308E74+75↓j
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_140308F08
                test    eax, eax
                jns     short loc_140308EC2

loc_140308EB1:                          ; CODE XREF: sub_140308E74+55↓j
                                        ; sub_140308E74+5E↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140308EC2:                          ; CODE XREF: sub_140308E74+3B↑j
                cmp     ebx, 2
                jz      short loc_140308EED

loc_140308EC7:                          ; CODE XREF: sub_140308E74+8A↓j
                xor     eax, eax
                jmp     short loc_140308EB1
; ---------------------------------------------------------------------------

loc_140308ECB:                          ; CODE XREF: sub_140308E74+2D↑j
                call    sub_140363734
                test    eax, eax
                js      short loc_140308EB1
                test    ebx, ebx
                jnz     short loc_140308EA3
                lea     r8d, [rbx+2]
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140363734
                test    eax, eax
                jns     short loc_140308EA3
                jmp     short loc_140308EB1
; ---------------------------------------------------------------------------

loc_140308EED:                          ; CODE XREF: sub_140308E74+51↑j
                mov     r8d, 3
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140363734
                jmp     short loc_140308EC7
sub_140308E74   endp

; ---------------------------------------------------------------------------
byte_140308F00  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140071D5C↑o
                                        ; .pdata:00000001400D41F0↑o

; =============== S U B R O U T I N E =======================================


sub_140308F08   proc near               ; CODE XREF: sub_140308E74+34↑p
                                        ; DATA XREF: .pdata:00000001400D41FC↑o

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                xorps   xmm0, xmm0
                lea     r8, [rsp+68h+var_48]
                mov     ebx, edx
                mov     rdi, rcx
                mov     rcx, [rcx+19B8h]
                xor     edx, edx
                movups  [rsp+68h+var_48], xmm0
                movups  [rsp+68h+var_38], xmm0
                movups  [rsp+68h+var_28], xmm0
                call    sub_1402D3C90
                test    ebx, ebx
                jz      short loc_140308F94
                sub     ebx, 1
                jz      short loc_140308F8A
                cmp     ebx, 1
                jnz     short loc_140308F9E
                mov     rcx, rdi
                call    sub_140308FAC

loc_140308F61:                          ; CODE XREF: sub_140308F08+8A↓j
                                        ; sub_140308F08+94↓j
                mov     ebx, eax

loc_140308F63:                          ; CODE XREF: sub_140308F08+9B↓j
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                call    sub_14021E230
                mov     eax, ebx
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140308F8A:                          ; CODE XREF: sub_140308F08+4A↑j
                mov     rcx, rdi
                call    sub_140336A30
                jmp     short loc_140308F61
; ---------------------------------------------------------------------------

loc_140308F94:                          ; CODE XREF: sub_140308F08+45↑j
                mov     rcx, rdi
                call    sub_140364314
                jmp     short loc_140308F61
; ---------------------------------------------------------------------------

loc_140308F9E:                          ; CODE XREF: sub_140308F08+4F↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_140308F63
; } // starts at 140308F08
sub_140308F08   endp

; ---------------------------------------------------------------------------
byte_140308FA5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D41FC↑o

; =============== S U B R O U T I N E =======================================


sub_140308FAC   proc near               ; CODE XREF: sub_140308F08+54↑p
                                        ; DATA XREF: .rdata:0000000140071D9C↑o ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046B5A2 SIZE 0000006B BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, [rcx+19A8h]
                mov     rsi, rcx
                lea     rax, [rdi-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                jbe     short loc_140308FED
                mov     ebx, 0C00000A3h

loc_140308FD7:                          ; CODE XREF: sub_140308FAC+75↓j
                                        ; sub_140308FAC+16265C↓j
                mov     rbp, [rsp+38h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140308FED:                          ; CODE XREF: sub_140308FAC+24↑j
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     rax, rdi
                lock cmpxchg [rcx+19A8h], r14
                jnz     short loc_14030901C
                mov     rdx, [rdi]
                xor     ebp, ebp
                test    rdx, rdx
                jz      loc_14046B5A2
                lea     ecx, [rbp+2]
                call    sub_140336EA4
                mov     ebx, eax
                jmp     loc_14046B5A7
; ---------------------------------------------------------------------------

loc_14030901C:                          ; CODE XREF: sub_140308FAC+51↑j
                mov     ebx, 0C0000476h
                jmp     short loc_140308FD7
sub_140308FAC   endp

; ---------------------------------------------------------------------------
byte_140309023  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140071D9C↑o
                                        ; .pdata:00000001400D4208↑o

; =============== S U B R O U T I N E =======================================


sub_14030902C   proc near               ; CODE XREF: sub_14035ACC8+12DCD6↓p
                                        ; sub_1406AC160+85↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r14
                sub     rsp, 40h
                xor     r11d, r11d
                mov     r14, r9
                mov     bpl, r8b
                mov     ebx, edx
                mov     rdi, rcx
                cmp     [rsp+48h+arg_28], r11d
                jbe     short loc_140309095
                mov     r9d, [rsp+48h+arg_20]
                lea     r12, qword_14000ABF8

loc_140309066:                          ; CODE XREF: sub_14030902C+67↓j
                test    bpl, bpl
                jz      short loc_1403090E0
                bt      r9d, r11d
                jnb     short loc_1403090E0
                mov     edx, r11d
                shl     rdx, 6
                mov     ecx, ebx
                add     rdx, r14
                shl     rcx, 4
                add     rcx, rdi
                call    sub_140309160
                add     ebx, eax

loc_14030908B:                          ; CODE XREF: sub_14030902C+128↓j
                inc     r11d
                cmp     r11d, [rsp+48h+arg_28]
                jb      short loc_140309066

loc_140309095:                          ; CODE XREF: sub_14030902C+2C↑j
                mov     rdx, [rsp+48h+arg_30]
                xor     r9d, r9d
                mov     rcx, cs:qword_140C19798
                xor     r8d, r8d
                mov     [rsp+48h+var_10], rdi
                mov     [rsp+48h+var_18], ebx
                and     [rsp+48h+var_20], 0
                and     [rsp+48h+var_28], 0
                call    EtwWriteEx
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                mov     r12, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403090E0:                          ; CODE XREF: sub_14030902C+3D↑j
                                        ; sub_14030902C+43↑j
                mov     eax, ebx
                shl     rax, 4
                add     rax, rdi
                and     dword ptr [rax+0Ch], 0
                mov     [rax], r12
                mov     dword ptr [rax+8], 4
                and     dword ptr [rax+1Ch], 0
                mov     [rax+10h], r12
                mov     dword ptr [rax+18h], 8
                and     dword ptr [rax+2Ch], 0
                mov     [rax+20h], r12
                mov     dword ptr [rax+28h], 4
                and     dword ptr [rax+3Ch], 0
                mov     [rax+30h], r12
                mov     dword ptr [rax+38h], 4
                and     dword ptr [rax+4Ch], 0
                mov     [rax+40h], r12
                mov     dword ptr [rax+48h], 8
                and     dword ptr [rax+5Ch], 0
                mov     [rax+50h], r12
                mov     dword ptr [rax+58h], 8
                and     dword ptr [rax+6Ch], 0
                add     ebx, 7
                mov     [rax+60h], r12
                mov     dword ptr [rax+68h], 2
                jmp     loc_14030908B
sub_14030902C   endp

; ---------------------------------------------------------------------------
algn_140309159:                         ; DATA XREF: .pdata:00000001400D4214↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140309160   proc near               ; CODE XREF: sub_14030902C+58↑p
                                        ; DATA XREF: .pdata:00000001400D4220↑o
                lea     rax, [rdx+8]
                mov     [rcx], rdx
                mov     [rcx+10h], rax
                xor     r10d, r10d
                lea     rax, [rdx+10h]
                mov     qword ptr [rcx+8], 4
                mov     [rcx+20h], rax
                lea     rax, [rdx+14h]
                mov     [rcx+30h], rax
                lea     rax, [rdx+18h]
                mov     [rcx+40h], rax
                lea     rax, [rdx+20h]
                mov     [rcx+50h], rax
                mov     qword ptr [rcx+18h], 8
                mov     qword ptr [rcx+28h], 4
                mov     qword ptr [rcx+38h], 4
                mov     qword ptr [rcx+48h], 8
                mov     qword ptr [rcx+58h], 8
                mov     r8, [rdx+38h]
                test    r8, r8
                jz      short loc_1403091ED
                mov     rax, [r8+8]
                test    rax, rax
                jz      short loc_1403091ED
                cmp     [r8], r10w
                jz      short loc_1403091ED
                movzx   edx, word ptr [r8+2]

loc_1403091DB:                          ; CODE XREF: sub_140309160+99↓j
                mov     [rcx+60h], rax
                mov     eax, 7
                mov     [rcx+68h], edx
                mov     [rcx+6Ch], r10d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403091ED:                          ; CODE XREF: sub_140309160+65↑j
                                        ; sub_140309160+6E↑j ...
                mov     edx, 2
                lea     rax, qword_14003AD28
                jmp     short loc_1403091DB
sub_140309160   endp

; ---------------------------------------------------------------------------
byte_1403091FB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4220↑o

; =============== S U B R O U T I N E =======================================


sub_140309204   proc near               ; CODE XREF: sub_140360800+1A1↓p
                                        ; DATA XREF: .rdata:0000000140071E3C↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046B61E SIZE 000001F4 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     eax, cs:dword_140CFC404
                xor     r15d, r15d
                mov     r12, rcx
                test    eax, eax
                jz      loc_140309308
                lea     ebp, [r15+1]

loc_14030922B:                          ; CODE XREF: sub_140309204+FE↓j
                mov     rcx, cs:qword_140CFC558
                lea     rbx, qword_140CFDCC0
                mov     rbx, [rbx+r15*8]
                mov     rax, [rbx+18h]
                mov     [rax+238h], rcx

loc_140309248:                          ; CODE XREF: sub_140309204+162573↓j
                mov     rdi, gs:20h
                and     [rsp+68h+arg_8], 0

loc_140309256:                          ; CODE XREF: sub_140309204+21B↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B61E

loc_140309266:                          ; CODE XREF: sub_140309204+16241E↓j
                                        ; sub_140309204+16242C↓j ...
                lock bts qword ptr [rbx+30h], 0
                jb      loc_1403093FE
                mov     rdi, [rbx+8]
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402D0BF8
                test    al, al
                jz      loc_140309357

loc_140309289:                          ; CODE XREF: sub_140309204+22F↓j
                mov     ebp, [rdi+24Ch]
                mov     rcx, rdi
                xor     r14d, r14d
                call    sub_1402CDFA4
                test    eax, eax
                jz      short loc_140309318

loc_14030929E:                          ; CODE XREF: sub_140309204+145↓j
                                        ; sub_140309204+14E↓j
                mov     esi, [rdi+24Ch]
                mov     rcx, rdi
                call    sub_1403261B0
                test    dword ptr cs:xmmword_140CFC490, 8000000h
                jnz     loc_14046B77C

loc_1403092BC:                          ; CODE XREF: sub_140309204+16258C↓j
                mov     rsi, [rbx+10h]
                test    rsi, rsi
                jnz     loc_14030943E

loc_1403092C9:                          ; CODE XREF: sub_140309204+244↓j
                                        ; sub_140309204+290↓j
                lock and qword ptr [rbx+30h], 0
                mov     rcx, gs:20h
                mov     ebp, 1
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046B7CF

loc_1403092ED:                          ; CODE XREF: sub_140309204+1625CF↓j
                                        ; sub_140309204+1625DD↓j ...
                test    r14d, r14d
                jnz     loc_14046B7F2

loc_1403092F6:                          ; CODE XREF: sub_140309204+1625FB↓j
                                        ; sub_140309204+162609↓j
                mov     eax, cs:dword_140CFC404
                add     r15d, ebp
                cmp     r15d, eax
                jb      loc_14030922B

loc_140309308:                          ; CODE XREF: sub_140309204+1D↑j
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140309318:                          ; CODE XREF: sub_140309204+98↑j
                call    sub_1402BAAB8
                mov     al, [rdi+184h]
                cmp     al, 2
                jnz     short loc_14030934E

loc_140309327:                          ; CODE XREF: sub_140309204+14C↓j
                mov     [rsp+68h+var_40], r12
                lea     rdx, [rdi+240h]
                and     [rsp+68h+var_48], r14
                mov     r9, rbx
                mov     r8b, 2
                mov     rcx, rdi
                call    sub_1403098EC
                mov     r14d, eax
                jmp     loc_14030929E
; ---------------------------------------------------------------------------

loc_14030934E:                          ; CODE XREF: sub_140309204+121↑j
                cmp     al, 5
                jz      short loc_140309327
                jmp     loc_14030929E
; ---------------------------------------------------------------------------

loc_140309357:                          ; CODE XREF: sub_140309204+7F↑j
                lock add [rdi+364h], bp
                lock and qword ptr [rbx+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046B66A

loc_14030937E:                          ; CODE XREF: sub_140309204+16246A↓j
                                        ; sub_140309204+162478↓j ...
                mov     rsi, gs:20h
                and     [rsp+68h+arg_10], 0

loc_14030938F:                          ; CODE XREF: sub_140309204+1624E9↓j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B68D

loc_14030939F:                          ; CODE XREF: sub_140309204+16248D↓j
                                        ; sub_140309204+16249B↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_14046B6B3
                mov     rsi, gs:20h
                and     [rsp+68h+arg_18], 0

loc_1403093BD:                          ; CODE XREF: sub_140309204+1F6↓j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B6F2

loc_1403093CD:                          ; CODE XREF: sub_140309204+1624F2↓j
                                        ; sub_140309204+162500↓j ...
                lock bts qword ptr [rbx+30h], 0
                jnb     short loc_140309427
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B718

loc_1403093E6:                          ; CODE XREF: sub_140309204+1F8↓j
                                        ; sub_140309204+162518↓j ...
                lea     rcx, [rsp+68h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rbx+30h]
                test    rax, rax
                jz      short loc_1403093BD
                jmp     short loc_1403093E6
; ---------------------------------------------------------------------------

loc_1403093FE:                          ; CODE XREF: sub_140309204+69↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B644

loc_14030940E:                          ; CODE XREF: sub_140309204+221↓j
                                        ; sub_140309204+162444↓j ...
                lea     rcx, [rsp+68h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rbx+30h]
                test    rax, rax
                jz      loc_140309256
                jmp     short loc_14030940E
; ---------------------------------------------------------------------------

loc_140309427:                          ; CODE XREF: sub_140309204+1D0↑j
                lock dec word ptr [rdi+364h]
                cmp     rdi, [rbx+8]
                jz      loc_140309289
                jmp     loc_14046B73E
; ---------------------------------------------------------------------------

loc_14030943E:                          ; CODE XREF: sub_140309204+BF↑j
                mov     rcx, rsi
                call    sub_1402CDFA4
                test    eax, eax
                jnz     loc_1403092C9
                mov     rdi, [rbx+8]
                test    byte ptr [rdi+2], 4
                jnz     loc_14046B795

loc_14030945C:                          ; CODE XREF: sub_140309204+1625A6↓j
                mov     cl, [rdi+0C3h]

loc_140309462:                          ; CODE XREF: sub_140309204+1625A0↓j
                mov     rax, [rbx+38h]
                mov     [rax], cl
                mov     rax, [rbx+84B8h]
                test    rax, rax
                jnz     loc_14046B7AF

loc_140309478:                          ; CODE XREF: sub_140309204+1625C6↓j
                mov     rdx, r12
                mov     rcx, rbx
                call    sub_1402CEB5C
                lock btr dword ptr [rsi+78h], 0Ch
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_1402C34D0
                jmp     loc_1403092C9
sub_140309204   endp

; ---------------------------------------------------------------------------
algn_140309499:                         ; DATA XREF: .rdata:0000000140071E3C↑o
                                        ; .pdata:00000001400D422C↑o
                align 20h
; Exported entry 1312. KeSetAffinityThread

; =============== S U B R O U T I N E =======================================


                public KeSetAffinityThread
KeSetAffinityThread proc near           ; CODE XREF: NtSetInformationThread+BDD↓p
                                        ; DATA XREF: .rdata:0000000140071E70↑o ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046B812 SIZE 0000019C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_48], rax
                mov     rbp, [rcx+220h]
                xor     r13d, r13d
                mov     rdi, rdx
                mov     rsi, rcx
                test    rdx, rdx
                jz      loc_1403095B5
                and     [rsp+88h+var_60], r13
                xorps   xmm0, xmm0
                movups  [rsp+88h+var_58], xmm0
                mov     r15, cr8
                lea     eax, [r13+2]
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14046B812

loc_140309507:                          ; CODE XREF: KeSetAffinityThread+162374↓j
                                        ; KeSetAffinityThread+16237E↓j ...
                mov     rbx, gs:20h
                lea     rcx, [rbp+40h]
                call    ExAcquireSpinLockSharedAtDpcLevel
                movzx   edx, word ptr [rsi+230h]
                lea     rax, qword_140CFC848
                mov     word ptr [rsp+88h+var_58+8], dx
                mov     rax, [rax+rdx*8]
                and     rdi, rax
                jz      short loc_140309560
                mov     rax, [rbp+rdx*8+58h]
                and     rax, rdi
                cmp     rax, rdi
                jnz     short loc_140309560
                mov     r13, [rsi+228h]
                lea     r8, [rsp+88h+var_58]
                lea     rdx, [rsp+88h+var_60]
                mov     qword ptr [rsp+88h+var_58], rdi
                mov     rcx, rsi
                call    sub_1403096B0

loc_140309560:                          ; CODE XREF: KeSetAffinityThread+93↑j
                                        ; KeSetAffinityThread+A0↑j
                lea     rcx, [rbp+40h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                lea     rdx, [rsp+88h+var_60]
                mov     rcx, rbx
                call    sub_14028DAE0
                mov     edx, 2
                cmp     r15b, dl
                jnb     loc_14046B987
                mov     rsi, [rbx+8]
                xor     ebp, ebp
                cmp     [rbx+10h], rbp
                jnz     short loc_1403095DE
                mov     eax, [rsi+74h]
                lea     r14d, [rdx-1]
                test    al, 40h
                jnz     loc_14046B8DD

loc_14030959F:                          ; CODE XREF: KeSetAffinityThread+1DA↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046B932

loc_1403095AD:                          ; CODE XREF: KeSetAffinityThread+162495↓j
                                        ; KeSetAffinityThread+1624A3↓j ...
                movzx   eax, r15b
                mov     cr8, rax

loc_1403095B5:                          ; CODE XREF: KeSetAffinityThread+36↑j
                                        ; KeSetAffinityThread+1624EC↓j ...
                mov     rax, r13
                mov     rcx, [rsp+88h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+88h+arg_10]
                add     rsp, 50h
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

loc_1403095DE:                          ; CODE XREF: KeSetAffinityThread+EE↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402423B0
                mov     rdi, gs:20h
                mov     r14d, 1
                mov     [rsp+88h+var_68], ebp

loc_1403095FB:                          ; CODE XREF: KeSetAffinityThread+202↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B853

loc_14030960B:                          ; CODE XREF: KeSetAffinityThread+1623B7↓j
                                        ; KeSetAffinityThread+1623C6↓j ...
                lock bts qword ptr [rbx+30h], 0
                jb      short loc_14030967F
                mov     rdi, [rbx+10h]
                mov     [rbx+10h], rbp
                cli
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402CC660
                sti
                mov     [rbx+8], rdi
                mov     al, [rdi+184h]
                cmp     al, r14b
                jz      loc_14046B8A1

loc_14030963F:                          ; CODE XREF: KeSetAffinityThread+162421↓j
                mov     byte ptr [rdi+184h], 2
                mov     rdx, rsi
                mov     rcx, rbx
                mov     byte ptr [rsi+283h], 20h ; ' '
                mov     [rsi+186h], r15b
                call    sub_1402CE090
                mov     r8b, r15b
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1404058F0
                test    al, al
                jnz     loc_14046B8C6

loc_140309675:                          ; CODE XREF: KeSetAffinityThread+16248D↓j
                mov     edx, 2
                jmp     loc_14030959F
; ---------------------------------------------------------------------------

loc_14030967F:                          ; CODE XREF: KeSetAffinityThread+172↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B87A

loc_14030968F:                          ; CODE XREF: KeSetAffinityThread+200↓j
                                        ; KeSetAffinityThread+1623DE↓j ...
                lea     rcx, [rsp+88h+var_68]
                call    sub_1402C8C70
                mov     rax, [rbx+30h]
                test    rax, rax
                jnz     short loc_14030968F
                jmp     loc_1403095FB
; } // starts at 1403094A0
KeSetAffinityThread endp

; ---------------------------------------------------------------------------
algn_1403096A7:                         ; DATA XREF: .rdata:0000000140071E70↑o
                                        ; .pdata:00000001400D4238↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403096B0   proc near               ; CODE XREF: KeSetAffinityThread+BB↑p
                                        ; sub_1403993AC+93↓p ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 000000014046B9AE SIZE 000000C1 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                and     [rbp+var_38], 0
                xor     r12d, r12d
                and     [rbp+var_30], 0
                xorps   xmm0, xmm0
                mov     rbx, gs:20h
                mov     rsi, r8
                and     [rbp+var_40], r12d
                mov     rdi, rcx
                lea     r14d, [r12+1]
                mov     [rbp+var_28], rdx
                movups  [rbp+var_20], xmm0

loc_140309705:                          ; CODE XREF: sub_1403096B0+22E↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046B9AE

loc_140309715:                          ; CODE XREF: sub_1403096B0+162302↓j
                                        ; sub_1403096B0+162311↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_1403098BE
                mov     eax, [rdi+24Ch]
                lea     rcx, qword_140CFDCC0
                mov     r13d, [rdi+0C4h]
                mov     rdx, rsi
                mov     [rbp+var_3C], eax
                movzx   eax, word ptr [rsi+8]
                mov     [rdi+230h], ax
                mov     rax, [rsi]
                mov     [rdi+228h], rax
                mov     ebx, [rdi+0C4h]
                mov     r15d, ebx
                mov     r14, [rcx+rbx*8]
                mov     rcx, r14
                call    sub_1402D0BA4
                test    eax, eax
                jnz     short loc_1403097B2
                mov     rcx, rsi
                call    sub_1403099B0
                movzx   ecx, word ptr [rsi+8]
                lea     r9, [r14+24h]
                mov     word ptr [rbp+var_20+8], cx
                lea     rdx, [rbp+var_20]
                xor     r8d, r8d
                mov     rcx, [rax+88h]
                and     rcx, [rsi]
                mov     qword ptr [rbp+var_20], rcx
                mov     rcx, rax
                call    sub_1402D11DC
                movzx   ebx, ax
                lea     r14, qword_140CFDCC0
                mov     [rdi+0C4h], ebx
                mov     r15d, ebx
                mov     r14, [r14+rbx*8]

loc_1403097B2:                          ; CODE XREF: sub_1403096B0+B8↑j
                mov     eax, [rdi+74h]
                test    al, 8
                jnz     loc_14046BA1B
                lea     r8, [rbp+var_30]
                mov     rcx, rdi
                lea     rdx, [rbp+var_38]
                call    sub_14028DCC0
                movzx   ecx, word ptr [rsi+8]
                mov     r15b, al
                mov     [rdi+248h], cx
                mov     rcx, [rsi]
                mov     [rdi+240h], rcx
                mov     rcx, rdi
                call    sub_1402BAAB8
                test    eax, eax
                jnz     loc_14046B9FC
                mov     rcx, rdi
                mov     [rdi+24Ch], ebx
                call    sub_1402D10D0
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_14028DB70

loc_14030980E:                          ; CODE XREF: sub_1403096B0+162366↓j
                mov     rax, [rbp+var_28]
                mov     r8b, r15b
                mov     r14, [rbp+var_38]
                mov     rdx, rsi
                mov     rbx, [rbp+var_30]
                mov     r9, r14
                mov     [rsp+70h+var_48], rax
                mov     rcx, rdi
                mov     [rsp+70h+var_50], rbx
                call    sub_1403098EC
                mov     r8, rbx
                mov     rdx, r14
                mov     r12d, eax
                call    sub_1402B86D0
                mov     r15d, [rdi+0C4h]

loc_14030984A:                          ; CODE XREF: sub_1403096B0+16236F↓j
                mov     ebx, [rdi+24Ch]
                mov     rcx, rdi
                call    sub_1403261B0
                test    r12d, r12d
                jnz     short loc_1403098A5

loc_14030985D:                          ; CODE XREF: sub_1403096B0+203↓j
                                        ; sub_1403096B0+20C↓j
                mov     r14d, 8000000h
                test    dword ptr cs:xmmword_140CFC490, r14d
                jnz     loc_14046BA24

loc_140309870:                          ; CODE XREF: sub_1403096B0+16238F↓j
                                        ; sub_1403096B0+1623A9↓j
                test    dword ptr cs:xmmword_140CFC480+4, 1000h
                jnz     loc_14046BA5E

loc_140309880:                          ; CODE XREF: sub_1403096B0+1623BA↓j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+70h+arg_18]
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
; ---------------------------------------------------------------------------

loc_1403098A5:                          ; CODE XREF: sub_1403096B0+1AB↑j
                mov     ecx, [r14+24h]
                mov     eax, gs:1A4h
                cmp     eax, ecx
                jz      short loc_14030985D
                mov     dl, 2
                call    sub_140308E0C
                jmp     short loc_14030985D
; ---------------------------------------------------------------------------

loc_1403098BE:                          ; CODE XREF: sub_1403096B0+6C↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046B9D5

loc_1403098CE:                          ; CODE XREF: sub_1403096B0+234↓j
                                        ; sub_1403096B0+162329↓j ...
                lea     rcx, [rbp+var_40]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jz      loc_140309705
                jmp     short loc_1403098CE
; } // starts at 1403096B0
sub_1403096B0   endp

; ---------------------------------------------------------------------------
byte_1403098E6  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140071EA4↑o
                                        ; .pdata:00000001400D4244↑o

; =============== S U B R O U T I N E =======================================


sub_1403098EC   proc near               ; CODE XREF: sub_140309204+13D↑p
                                        ; sub_1403096B0+180↑p ...

arg_0           = qword ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     r10, r9
                movzx   ecx, r8b
                sub     ecx, 1
                jz      short loc_14030997C
                sub     ecx, 1
                jnz     short loc_14030994C
                mov     rcx, r9
                call    sub_1402D0BA4
                test    eax, eax
                jz      short loc_140309924

loc_140309916:                          ; CODE XREF: sub_1403098EC+4D↓j
                                        ; sub_1403098EC+63↓j ...
                xor     eax, eax

loc_140309918:                          ; CODE XREF: sub_1403098EC+5E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140309924:                          ; CODE XREF: sub_1403098EC+28↑j
                mov     al, [rdi+184h]
                cmp     al, 2
                jnz     short loc_140309976
                lock bts dword ptr [rdi+78h], 0Ch
                cmp     qword ptr [r9+10h], 0
                jnz     short loc_140309916
                mov     rdx, [rsp+28h+arg_28]
                call    sub_1402CEB5C
                mov     eax, 1
                jmp     short loc_140309918
; ---------------------------------------------------------------------------

loc_14030994C:                          ; CODE XREF: sub_1403098EC+1C↑j
                cmp     ecx, 1
                jnz     short loc_140309916
                mov     rcx, r10
                call    sub_1402D0BA4
                test    eax, eax
                jnz     short loc_140309916
                mov     rdx, [rsp+28h+arg_28]
                call    sub_1402CEB5C
                mov     rcx, [rsp+28h+arg_28]
                mov     rdx, rdi
                call    sub_1402C34D0
                jmp     short loc_140309916
; ---------------------------------------------------------------------------

loc_140309976:                          ; CODE XREF: sub_1403098EC+40↑j
                or      byte ptr [rdi+70h], 8
                jmp     short loc_140309916
; ---------------------------------------------------------------------------

loc_14030997C:                          ; CODE XREF: sub_1403098EC+17↑j
                movsx   ebx, byte ptr [rdi+0C3h]
                mov     r8, rdi
                mov     rdx, [rsp+28h+arg_20]
                mov     r9d, ebx
                mov     rcx, r10
                call    sub_1402B8790
                mov     r8, [rsp+28h+arg_28]
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_1402B8730
                jmp     loc_140309916
sub_1403098EC   endp

; ---------------------------------------------------------------------------
algn_1403099AA:                         ; DATA XREF: .pdata:00000001400D4250↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403099B0   proc near               ; CODE XREF: sub_1402B795C+7D↑p
                                        ; sub_1403096B0+BD↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046BA70 SIZE 00000043 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                movzx   edx, cs:word_140CFB000
                mov     edi, 1
                mov     r10, rcx
                cmp     dx, di
                jz      short loc_140309A4A
                movzx   ecx, cs:word_140C31ABC
                xor     esi, esi
                lea     eax, [rdi+rcx]
                mov     cs:word_140C31ABC, ax
                cmp     ax, dx
                jb      short loc_1403099F6
                mov     cs:word_140C31ABC, si

loc_1403099F6:                          ; CODE XREF: sub_1403099B0+3D↑j
                mov     r9d, esi
                lea     r14, qword_140D23380

loc_140309A00:                          ; CODE XREF: sub_1403099B0+AC↓j
                cmp     cx, dx
                jnb     short loc_140309A63

loc_140309A05:                          ; CODE XREF: sub_1403099B0+B5↓j
                movzx   eax, cx
                mov     r8, [r14+rax*8]
                test    byte ptr [r8+0B5h], 10h
                jnz     short loc_140309A53
                movzx   eax, word ptr [r10+8]
                cmp     [r8+90h], ax
                jnz     short loc_140309A53
                mov     rax, [r8+88h]
                test    [r10], rax
                jz      short loc_140309A53

loc_140309A31:                          ; CODE XREF: sub_1403099B0+1620EB↓j
                mov     rax, r8

loc_140309A34:                          ; CODE XREF: sub_1403099B0+A1↓j
                                        ; sub_1403099B0+1620FE↓j
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                mov     r14, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140309A4A:                          ; CODE XREF: sub_1403099B0+25↑j
                mov     rax, cs:qword_140D23380
                jmp     short loc_140309A34
; ---------------------------------------------------------------------------

loc_140309A53:                          ; CODE XREF: sub_1403099B0+64↑j
                                        ; sub_1403099B0+73↑j ...
                add     r9d, edi
                add     cx, di
                cmp     r9d, edx
                jb      short loc_140309A00
                jmp     loc_14046BA70
; ---------------------------------------------------------------------------

loc_140309A63:                          ; CODE XREF: sub_1403099B0+53↑j
                mov     ecx, esi
                jmp     short loc_140309A05
sub_1403099B0   endp

; ---------------------------------------------------------------------------
algn_140309A67:                         ; DATA XREF: .rdata:0000000140071EDC↑o
                                        ; .pdata:00000001400D425C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140309A70   proc near               ; CODE XREF: sub_140722ED0+4↓p
                                        ; DATA XREF: .rdata:0000000140071F0C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046BAB4 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, gs:188h
                xor     ebx, ebx
                mov     eax, cs:dword_140C51088
                test    eax, eax
                jz      loc_14046BAB4
                or      r12, 0FFFFFFFFFFFFFFFFh
                add     [rdi+1E6h], r12w
                lea     edx, [rbx+12h]
                mov     rcx, rdi
                call    KeSetActualBasePriorityThread
                mov     r13, 0FFFFF78000000008h
                mov     ebp, eax
                lea     eax, [rbx+2]
                mov     r14, [r13+0]
                mov     ecx, cs:dword_140C51084
                lock xadd cs:dword_140C51080, eax
                lea     rsi, [rcx+rcx*4]
                lea     r15, unk_140C50C00

loc_140309AE8:                          ; CODE XREF: sub_140309A70+C3↓j
                cmp     [r15+rsi*8+0B00h], rbx
                jz      short loc_140309B37
                mov     edx, 1
                mov     rcx, r15
                call    sub_140309BF8
                test    eax, eax
                jz      short loc_140309B3C
                mov     rdx, r12
                mov     rcx, r15
                call    sub_140309B9C
                mov     rcx, r15
                call    sub_1402FF574
                lea     r8, qword_14000ABF0
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread
                mov     rax, [r13+0]
                sub     rax, r14
                cmp     rax, 2FAF080h
                jbe     short loc_140309AE8
                jmp     short loc_140309B3C
; ---------------------------------------------------------------------------

loc_140309B37:                          ; CODE XREF: sub_140309A70+80↑j
                mov     ebx, 1

loc_140309B3C:                          ; CODE XREF: sub_140309A70+91↑j
                                        ; sub_140309A70+C5↑j
                lock or cs:dword_140C51080, 1
                mov     edx, 0FFFFFFFEh
                lock xadd cs:dword_140C51080, edx
                xor     r8d, r8d
                lea     rcx, unk_140C50F70
                xor     edx, edx
                call    KeSetEvent
                mov     edx, ebp
                mov     rcx, rdi
                call    KeSetActualBasePriorityThread
                mov     rcx, rdi
                call    sub_140245770
                mov     eax, ebx

loc_140309B76:                          ; CODE XREF: sub_140309A70+162049↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140309A70   endp

byte_140309B94  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140071F0C↑o
                                        ; .pdata:00000001400D4268↑o

; =============== S U B R O U T I N E =======================================


sub_140309B9C   proc near               ; CODE XREF: sub_140279270+660↑p
                                        ; sub_140309A70+99↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046BABE SIZE 0000004D BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                cmp     rdx, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140309BE6
                cmp     dword ptr [rcx+2B4h], 0
                jnz     loc_14046BABE

loc_140309BBC:                          ; CODE XREF: sub_140309B9C+161F34↓j
                cmp     dword ptr [rbx+2D0h], 12h
                jnz     loc_14046BAD5

loc_140309BC9:                          ; CODE XREF: sub_140309B9C+51↓j
                                        ; sub_140309B9C+161F4A↓j ...
                lea     rcx, [rbx+2E0h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140309BE6:                          ; CODE XREF: sub_140309B9C+11↑j
                mov     [rcx+2D8h], rdx
                jmp     short loc_140309BC9
sub_140309B9C   endp

; ---------------------------------------------------------------------------
byte_140309BEF  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140071F2C↑o
                                        ; .pdata:00000001400D4274↑o

; =============== S U B R O U T I N E =======================================


sub_140309BF8   proc near               ; CODE XREF: sub_140309A70+8A↑p
                                        ; sub_140382518+4C↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014046BB0C SIZE 00000032 BYTES

                test    edx, edx
                jnz     short loc_140309C0C
                mov     rax, [rcx+1DB0h]
                cmp     [rcx+1D40h], rax
                jnz     short loc_140309C4A

loc_140309C0C:                          ; CODE XREF: sub_140309BF8+2↑j
                mov     edx, [rcx+1B18h]
                test    edx, edx
                jz      short loc_140309C51
                xor     r8d, r8d
                test    edx, edx
                jz      short loc_140309C51
                mov     r9d, 1B20h

loc_140309C23:                          ; CODE XREF: sub_140309BF8+161F3B↓j
                mov     r10, [r9+rcx]
                cmp     qword ptr [r10+18h], 0
                jz      loc_14046BB29
                movzx   eax, word ptr [r10+0CCh]
                test    al, 40h
                jnz     loc_14046BB29
                test    al, 10h
                jnz     loc_14046BB0C

loc_140309C4A:                          ; CODE XREF: sub_140309BF8+12↑j
                                        ; sub_140309BF8+161F2B↓j
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140309C51:                          ; CODE XREF: sub_140309BF8+1C↑j
                                        ; sub_140309BF8+23↑j ...
                xor     eax, eax
                retn
sub_140309BF8   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140309C55  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4280↑o

; =============== S U B R O U T I N E =======================================


sub_140309C5C   proc near               ; CODE XREF: sub_14024DBF0+BA6↑p
                                        ; sub_14035859C+1B7↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_C           = dword ptr  14h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046BB3E SIZE 0000005D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    r14
                sub     rsp, 20h
                xor     r14b, r14b
                mov     rbp, rcx
                test    rdx, rdx
                jz      loc_14046BB3E

loc_140309C80:                          ; CODE XREF: sub_140309C5C+161EE9↓j
                mov     esi, 1000h
                mov     r8d, 74725346h
                mov     edx, esi
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14046BB6C
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                add     rbp, 48h ; 'H'
                mov     r14b, 1
                mov     edx, 1
                mov     r8, [rbp+0]

loc_140309CC0:                          ; CODE XREF: sub_140309C5C+89↓j
                cmp     r8, rbp
                jz      short loc_140309CE7
                cmp     edx, 400h
                jnb     loc_14046BB7D
                mov     rax, [r8+20h]
                mov     ecx, edx
                inc     edx
                mov     eax, [rax+440h]
                mov     [rbx+rcx*4], eax
                mov     r8, [r8]
                jmp     short loc_140309CC0
; ---------------------------------------------------------------------------

loc_140309CE7:                          ; CODE XREF: sub_140309C5C+67↑j
                lea     eax, [rdx-1]
                mov     [rbx], eax

loc_140309CEC:                          ; CODE XREF: sub_140309C5C+161F0B↓j
                                        ; sub_140309C5C+161F3A↓j
                mov     r8d, 1
                mov     edx, esi
                mov     rcx, rbx
                call    FsRtlSendModernAppTermination
                test    r14b, r14b
                jz      short loc_140309D0B
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140309D0B:                          ; CODE XREF: sub_140309C5C+A3↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140309C5C   endp

algn_140309D22:                         ; DATA XREF: .rdata:00000001400720E0↑o
                                        ; .pdata:00000001400D428C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140309D28   proc near               ; CODE XREF: sub_140662E4C+1B0↓p
                                        ; sub_140685128+1FE↓p ...
                sub     rsp, 28h
                add     rcx, 40h ; '@'
                call    sub_14024C380
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140309D28   endp

byte_140309D3B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4298↑o

; =============== S U B R O U T I N E =======================================


sub_140309D44   proc near               ; CODE XREF: sub_140200738+61↑p
                                        ; sub_140200884+10↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_140309D6A
                add     rcx, 40h ; '@'
                call    sub_14024C840
                test    al, al
                jz      short loc_140309D6A
                mov     rax, [rbx+50h]

loc_140309D63:                          ; CODE XREF: sub_140309D44+28↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140309D6A:                          ; CODE XREF: sub_140309D44+C↑j
                                        ; sub_140309D44+19↑j
                xor     eax, eax
                jmp     short loc_140309D63
sub_140309D44   endp

; ---------------------------------------------------------------------------
algn_140309D6E:                         ; DATA XREF: .pdata:00000001400D42A4↑o
                align 20h
; Exported entry 1840. PsGetProcessId

; =============== S U B R O U T I N E =======================================


                public PsGetProcessId
PsGetProcessId  proc near               ; CODE XREF: sub_1405F3400+EF↓p
                                        ; sub_140656690+49C↓p ...
                mov     rax, [rcx+440h]
                retn
PsGetProcessId  endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140309D89:                         ; DATA XREF: .pdata:00000001400D42B0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140309D90   proc near               ; CODE XREF: sub_1403F8AB4+51↓p
                                        ; sub_1405D69C4+157↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = byte ptr  38h

; FUNCTION CHUNK AT 000000014046BB9C SIZE 00000041 BYTES

                mov     rax, rsp
                push    rbx
                sub     rsp, 50h
                mov     dword ptr [rax+38h], 3
                mov     ebx, edx
                mov     eax, [rsp+58h+arg_28]
                neg     eax
                sbb     r10d, r10d
                and     r10d, 0FFFFFFFCh
                add     r10d, 6
                mov     dword ptr [rsp+58h+var_38], r10d
                call    sub_140309DE4
                test    eax, eax
                jnz     short loc_140309DCA

loc_140309DC3:                          ; CODE XREF: sub_140309D90+44↓j
                                        ; sub_140309D90+161E48↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140309DCA:                          ; CODE XREF: sub_140309D90+31↑j
                mov     rax, cs:qword_140CFA058
                test    rax, rax
                jz      short loc_140309DC3
                jmp     loc_14046BB9C
sub_140309D90   endp

; ---------------------------------------------------------------------------
byte_140309DDB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007259C↑o
                                        ; .pdata:00000001400D42BC↑o

; =============== S U B R O U T I N E =======================================


sub_140309DE4   proc near               ; CODE XREF: sub_140309D90+2A↑p
                                        ; DATA XREF: .pdata:00000001400D42C8↑o

var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_30], rax
                mov     edi, [rsp+98h+arg_20]
                mov     esi, edx
                mov     rdx, rcx
                mov     ebp, r8d
                mov     r15, rcx
                mov     r8d, edi
                lea     rcx, [rsp+98h+var_60]
                mov     r14d, r9d
                call    sub_140309ED0
                xor     ebx, ebx
                mov     r12d, 1
                movups  xmm1, xmmword ptr [rax]
                movups  [rsp+98h+var_48], xmm1
                movsd   xmm0, qword ptr [rax+10h]
                mov     rax, cs:qword_140CF49A8
                movsd   [rsp+98h+var_38], xmm0
                test    rax, rax
                jz      short loc_140309E6B
                lea     rcx, [rsp+98h+var_48]
                mov     r9, r15
                mov     [rsp+98h+var_78], rcx
                mov     r8d, r12d
                mov     ecx, esi
                mov     edx, edi
                call    sub_1404079D0

loc_140309E6B:                          ; CODE XREF: sub_140309DE4+6C↑j
                test    ebp, ebp
                jz      short loc_140309E9A
                cmp     edi, 0FEh
                jz      short loc_140309E9A
                mov     [rsp+98h+var_68], rbx
                mov     dword ptr [rsp+98h+var_68], esi
                mov     word ptr [rsp+98h+var_68+4], di
                test    r14d, r14d
                jz      short loc_140309E90
                or      word ptr [rsp+98h+var_68+6], r12w

loc_140309E90:                          ; CODE XREF: sub_140309DE4+A4↑j
                lea     rcx, [rsp+98h+var_68]
                call    RtlNotifyFeatureUsage

loc_140309E9A:                          ; CODE XREF: sub_140309DE4+89↑j
                                        ; sub_140309DE4+91↑j
                cmp     dword ptr [rsp+98h+var_38], ebx
                setz    bl
                mov     eax, ebx
                mov     rcx, [rsp+98h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_28]
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
; } // starts at 140309DE4
sub_140309DE4   endp

algn_140309ECA:                         ; DATA XREF: .pdata:00000001400D42C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140309ED0   proc near               ; CODE XREF: sub_140309DE4+42↑p
                                        ; DATA XREF: .rdata:00000001400725E0↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046BBDE SIZE 00000096 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     eax, eax
                xorps   xmm0, xmm0
                xor     r11d, r11d
                mov     r10, rdx
                mov     r9, rcx
                movups  xmmword ptr [rcx], xmm0
                mov     [rcx+10h], rax
                test    r8d, r8d
                jz      loc_14046BC63
                cmp     r8d, 1
                jz      loc_14046BC52
                jle     loc_14046BBF1
                cmp     r8d, 3
                jle     short loc_140309F2F
                cmp     r8d, 4
                jz      loc_14046BC63
                cmp     r8d, 5
                jz      loc_14046BC52
                lea     eax, [r8-6]
                cmp     eax, 1
                ja      loc_14046BBF1

loc_140309F2F:                          ; CODE XREF: sub_140309ED0+3C↑j
                mov     ecx, r11d
                sub     r8d, 2
                jz      short loc_140309F90
                sub     r8d, 1
                jz      short loc_140309F89
                sub     r8d, 3
                jnz     loc_14046BBDE
                lea     ecx, [r8+4]

loc_140309F4C:                          ; CODE XREF: sub_140309ED0+BE↓j
                                        ; sub_140309ED0+C5↓j ...
                or      ecx, 1
                prefetchw byte ptr [rdx]
                mov     eax, [rdx]

loc_140309F54:                          ; CODE XREF: sub_140309ED0+8D↓j
                mov     edx, eax
                or      edx, ecx
                lock cmpxchg [r10], edx
                jnz     short loc_140309F54
                and     ecx, 0FFFFFFFEh
                mov     edx, eax
                not     edx
                and     edx, 1
                mov     [r9], edx
                mov     edx, ecx
                and     edx, eax
                cmp     edx, ecx
                setz    r11b
                mov     [r9+10h], r11d

loc_140309F7A:                          ; CODE XREF: sub_140309ED0+161D7D↓j
                                        ; sub_140309ED0+161D8E↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, r9
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140309F89:                          ; CODE XREF: sub_140309ED0+6C↑j
                mov     ecx, 8
                jmp     short loc_140309F4C
; ---------------------------------------------------------------------------

loc_140309F90:                          ; CODE XREF: sub_140309ED0+66↑j
                mov     ecx, 2
                jmp     short loc_140309F4C
sub_140309ED0   endp

; ---------------------------------------------------------------------------
algn_140309F97:                         ; DATA XREF: .rdata:00000001400725E0↑o
                                        ; .pdata:00000001400D42D4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140309FA0   proc near               ; CODE XREF: sub_1406AEF4C+C7↓p
                                        ; DATA XREF: .rdata:0000000140008BC0↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  48h
arg_8           = qword ptr  50h
arg_10          = qword ptr  58h
arg_18          = dword ptr  60h
arg_20          = qword ptr  68h
arg_28          = dword ptr  70h
arg_30          = qword ptr  78h

                test    r9d, r9d
                jz      locret_14030A2E6
                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 58h
                mov     r15d, [rbp+arg_28]
                mov     eax, r9d
                and     [rbp+var_28], 0
                mov     esi, r15d
                mov     rdi, [rbp+arg_20]
                not     esi
                and     eax, 7
                mov     dword ptr [rbp+var_38], esi
                mov     r13d, r9d
                mov     dword ptr [rbp+var_30], eax
                mov     r12, r8
                mov     r14, rcx
                jz      loc_14030A2E8
                mov     r9d, r15d
                mov     r8, rdi
                mov     edx, 9
                call    sub_14030A300
                mov     ebx, eax
                mov     r8, rdi
                xor     ebx, esi
                mov     edx, 8
                mov     r9d, ebx
                mov     rcx, r14
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r15d
                mov     edx, 7
                mov     r9d, esi
                mov     rcx, r14
                call    sub_14030A300
                mov     r14d, eax
                mov     r8, rdi
                xor     r14d, ebx
                mov     edx, 6
                mov     rbx, [rbp+arg_0]
                mov     r9d, r14d
                mov     rcx, rbx
                call    sub_14030A300
                mov     r15d, eax
                mov     r8, rdi
                xor     r15d, esi
                mov     edx, 5
                mov     r9d, r15d
                mov     rcx, rbx
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r14d
                mov     edx, 4
                mov     r9d, esi
                mov     rcx, rbx
                call    sub_14030A300
                mov     ebx, eax
                mov     r8, rdi
                xor     ebx, r15d
                mov     edx, 3
                mov     r15, [rbp+arg_0]
                mov     r9d, ebx
                mov     rcx, r15
                call    sub_14030A300
                mov     r14d, eax
                mov     r8, rdi
                xor     r14d, esi
                mov     edx, 2
                mov     r9d, r14d
                mov     rcx, r15
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, ebx
                mov     edx, 1
                mov     r9d, esi
                mov     rcx, r15
                call    sub_14030A300
                xor     r14d, eax
                mov     r8, rdi
                mov     r9d, r14d
                xor     edx, edx
                mov     rcx, r15
                call    sub_14030A300
                mov     rdx, [rbp+arg_8]
                lea     rcx, [rbp+var_38]
                and     [rbp+var_38], 0
                mov     ebx, eax
                xor     ebx, esi
                mov     esi, dword ptr [rbp+var_30]
                mov     r8d, esi
                mov     r15d, esi
                call    memmove
                mov     rcx, [rbp+var_38]
                xor     r14d, ecx
                mov     rdx, rcx
                mov     dword ptr [rbp+var_28], r14d
                shr     rdx, 20h
                mov     r8d, 8
                xor     edx, ebx
                mov     [rbp+var_30], rcx
                mov     dword ptr [rbp+var_28+4], edx
                lea     rcx, [rbp+var_28]
                xor     edx, edx
                sub     r8d, esi
                add     rcx, rsi
                call    memset
                mov     r8d, esi
                lea     rdx, [rbp+var_28]
                mov     rcx, r12
                call    memmove
                mov     eax, dword ptr [rbp+var_30+4]
                mov     r14, [rbp+arg_0]
                mov     rdx, [rbp+arg_8]
                mov     [rbp+arg_28], eax
                mov     eax, dword ptr [rbp+var_30]
                mov     dword ptr [rbp+var_38], eax

loc_14030A15C:                          ; CODE XREF: sub_140309FA0+34B↓j
                mov     eax, r13d
                lea     rcx, [r15+r12]
                shr     eax, 3
                mov     [rbp+var_20], rcx
                test    eax, eax
                jz      loc_14030A2C8
                mov     r15d, dword ptr [rbp+var_28+4]
                sub     rdx, r12
                mov     r12d, dword ptr [rbp+var_28]
                mov     r13d, dword ptr [rbp+var_38]
                mov     r8d, eax
                mov     [rbp+arg_8], rdx
                mov     [rbp+var_18], r8

loc_14030A18C:                          ; CODE XREF: sub_140309FA0+31B↓j
                mov     rbx, [rdx+rcx]
                mov     r8, rdi
                mov     rax, rbx
                mov     edx, 9
                shr     rax, 20h
                mov     rcx, r14
                xor     r15d, eax
                mov     r9d, r15d
                call    sub_14030A300
                xor     eax, ebx
                mov     r8, rdi
                xor     r12d, eax
                mov     edx, 8
                mov     r9d, r12d
                mov     rcx, r14
                call    sub_14030A300
                mov     rcx, [rbp+arg_0]
                mov     r14d, eax
                xor     r14d, r15d
                mov     r8, rdi
                mov     r9d, r14d
                mov     edx, 7
                call    sub_14030A300
                mov     rcx, [rbp+arg_0]
                mov     r15d, eax
                xor     r15d, r12d
                mov     r8, rdi
                mov     r9d, r15d
                mov     edx, 6
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r14d
                mov     edx, 5
                mov     r14, [rbp+arg_0]
                mov     r9d, esi
                mov     rcx, r14
                call    sub_14030A300
                mov     r12d, eax
                mov     r8, rdi
                xor     r12d, r15d
                mov     edx, 4
                mov     r9d, r12d
                mov     rcx, r14
                call    sub_14030A300
                mov     r15d, eax
                mov     r8, rdi
                xor     r15d, esi
                mov     edx, 3
                mov     r9d, r15d
                mov     rcx, r14
                call    sub_14030A300
                xor     r12d, eax
                mov     r8, rdi
                mov     r9d, r12d
                mov     edx, 2
                mov     rcx, r14
                call    sub_14030A300
                xor     r15d, eax
                mov     r8, rdi
                mov     r9d, r15d
                mov     edx, 1
                mov     rcx, r14
                call    sub_14030A300
                xor     r12d, eax
                mov     r8, rdi
                mov     r9d, r12d
                xor     edx, edx
                mov     rcx, r14
                call    sub_14030A300
                mov     rcx, [rbp+var_20]
                xor     r15d, eax
                xor     r15d, [rbp+arg_28]
                xor     r12d, r13d
                mov     [rbp+var_30], rbx
                mov     [rcx], r12d
                mov     [rcx+4], r15d
                add     rcx, 8
                sub     [rbp+var_18], 1
                mov     [rbp+var_20], rcx
                jz      short loc_14030A2C0
                mov     eax, dword ptr [rbp+var_30+4]
                mov     r13d, ebx
                mov     rdx, [rbp+arg_8]
                mov     [rbp+arg_28], eax
                jmp     loc_14030A18C
; ---------------------------------------------------------------------------

loc_14030A2C0:                          ; CODE XREF: sub_140309FA0+30C↑j
                mov     r13d, [rbp+arg_18]
                mov     r12, [rbp+arg_10]

loc_14030A2C8:                          ; CODE XREF: sub_140309FA0+1CC↑j
                lea     eax, [r13-1]
                mov     dl, [rax+r12]
                mov     rax, [rbp+arg_30]
                mov     [rax], dl
                add     rsp, 58h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp

locret_14030A2E6:                       ; CODE XREF: sub_140309FA0+3↑j
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14030A2E8:                          ; CODE XREF: sub_140309FA0+56↑j
                xor     r15d, r15d
                jmp     loc_14030A15C
sub_140309FA0   endp

; ---------------------------------------------------------------------------
algn_14030A2F0:                         ; DATA XREF: .pdata:00000001400D42E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14030A300   proc near               ; CODE XREF: sub_1402001A0+76↑p
                                        ; sub_1402001A0+8D↑p ...

var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014046BC74 SIZE 00000007 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     ebx, edx
                mov     edi, r9d
                mov     r11d, edx
                mov     edx, edx
                shl     rdx, 4
                add     rdx, rcx
                mov     eax, [rdx+8]
                cmp     eax, 1Eh        ; switch 31 cases
                ja      def_14030A34F   ; jumptable 000000014030A34F default case
                lea     r9, cs:140000000h
                mov     eax, ds:(jpt_14030A34F - 140000000h)[r9+rax*4]
                add     rax, r9
                jmp     rax             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14030A355:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 19
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                sub     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A39A:                          ; CODE XREF: sub_14030A300+239↓j
                                        ; sub_14030A300+64F↓j ...
                imul    r9d, eax
                mov     r8d, r10d
                mov     eax, 8421085h
                mul     r10d
                sub     r8d, edx
                shr     r8d, 1
                add     r8d, edx
                shr     r8d, 4
                imul    edx, r8d, 1Fh
                sub     r10d, edx
                lea     ecx, [r10+1]
                ror     edi, cl
                xor     r9d, edi
                jmp     short loc_14030A439
; ---------------------------------------------------------------------------

loc_14030A3C8:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 17
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A40D:                          ; CODE XREF: sub_14030A300+1EF↓j
                                        ; sub_14030A300+283↓j ...
                imul    r9d, eax
                mov     r8d, r10d
                mov     eax, 8421085h
                mul     r10d
                sub     r8d, edx
                shr     r8d, 1
                add     r8d, edx
                shr     r8d, 4
                imul    edx, r8d, 1Fh
                sub     r10d, edx
                lea     ecx, [r10+1]
                ror     edi, cl

loc_14030A436:                          ; CODE XREF: sub_14030A300+490↓j
                sub     r9d, edi

loc_14030A439:                          ; CODE XREF: sub_14030A300+C6↑j
                                        ; sub_14030A300+764↓j
                mov     eax, r9d

loc_14030A43C:                          ; CODE XREF: sub_14030A300+1A8↓j
                                        ; sub_14030A300+2AA↓j ...
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+20h+arg_0]
                mov     rdi, [rsp+20h+arg_8]
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030A459:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r9d, [rdx+10h]  ; jumptable 000000014030A34F case 25
                mov     eax, 88888889h
                mov     ecx, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                sub     ecx, eax
                movzx   eax, word ptr [rbp+r11*2+var_18]
                inc     ecx
                ror     edi, cl
                sub     edi, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_20]
                imul    eax, edi
                jmp     short loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A4AA:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 16
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                sub     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030A4F4:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 23
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030A53E:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 22
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030A588:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                and     r11d, 3         ; jumptable 000000014030A34F case 29
                shr     ebx, 1
                mov     [rbp+var_18], r8
                mov     [rbp+var_20], r8
                movzx   eax, word ptr [rbp+r11*2+var_18]
                sub     edi, eax
                lea     eax, [rbx-1]
                and     eax, 1
                xor     edi, dword ptr [rbp+rax*4+var_20]
                mov     eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A5AF:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                lea     eax, [rbx-1]    ; jumptable 000000014030A34F case 28
                mov     [rbp+var_20], r8
                and     eax, 1
                mov     [rbp+var_18], r8
                and     r11d, 1
                mov     eax, dword ptr [rbp+rax*4+var_20]
                xor     eax, dword ptr [rbp+r11*4+var_18]
                xor     eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A5D1:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 10
                mov     eax, 24924925h
                mov     r9d, [rdx+0Ch]
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030A631:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 21
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A676:                          ; CODE XREF: sub_14030A300+42A↓j
                                        ; sub_14030A300+699↓j ...
                imul    r9d, eax
                mov     r8d, r10d
                mov     eax, 8421085h
                mul     r10d
                sub     r8d, edx
                shr     r8d, 1
                add     r8d, edx
                shr     r8d, 4
                imul    edx, r8d, 1Fh
                sub     r10d, edx
                lea     ecx, [r10+1]
                ror     edi, cl
                lea     eax, [rdi+r9]
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A6A8:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                shr     ebx, 1          ; jumptable 000000014030A34F case 30
                and     r11d, 3
                mov     [rbp+var_18], r8
                mov     [rbp+var_20], r8
                lea     eax, [rbx-1]
                and     eax, 1
                sub     edi, dword ptr [rbp+rax*4+var_18]
                movzx   eax, word ptr [rbp+r11*2+var_20]
                sub     edi, eax
                mov     eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A6CF:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 9
                mov     eax, 24924925h
                mov     r9d, [rdx+0Ch]
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030A72F:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 7
                mov     eax, 24924925h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A774:                          ; CODE XREF: sub_14030A300+5AA↓j
                imul    r9d, eax
                mov     eax, 88888889h
                mul     r10d
                shr     edx, 3
                imul    r8d, edx, 0Fh
                sub     r10d, r8d
                lea     ecx, [r10+1]
                shr     edi, cl
                jmp     loc_14030A436
; ---------------------------------------------------------------------------

loc_14030A795:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 4
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                ror     r8d, cl
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_18]
                xor     eax, edi
                imul    eax, ecx
                sub     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A7F0:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r10d, [rdx+14h] ; jumptable 000000014030A34F case 6
                mov     eax, 24924925h
                mov     ecx, [rdx+10h]
                and     r11d, 3
                mov     r9d, [rdx+0Ch]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                movzx   eax, word ptr [rbp+r11*2+var_20]
                xor     r9d, edi
                rol     r9d, cl
                imul    r9d, eax
                mov     eax, 88888889h
                mul     r10d
                shr     edx, 3
                imul    r8d, edx, 0Fh
                sub     r10d, r8d
                lea     ecx, [r10+1]
                shr     edi, cl
                lea     eax, [rdi+r9]
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A870:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+0Ch]  ; jumptable 000000014030A34F case 1
                mov     eax, 0AAAAAAABh
                mov     r10d, [rdx+10h]
                mov     r9d, edi
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 1
                mov     [rbp+var_20], r8
                lea     eax, [rdx+rdx*2]
                sub     ecx, eax
                lea     eax, [rbx+1]
                add     eax, ecx
                and     eax, 3
                movzx   ecx, word ptr [rbp+rax*2+var_18]
                sub     r9d, ecx
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A774
; ---------------------------------------------------------------------------

loc_14030A8AF:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 5
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                ror     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_18]
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                xor     eax, edi
                imul    eax, ecx
                xor     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A90A:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 20
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030A954:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 14
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030A99E:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 12
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                add     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030A9E8:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r10d, [rdx+14h] ; jumptable 000000014030A34F case 8
                mov     eax, 24924925h
                mov     ecx, [rdx+10h]
                and     r11d, 3
                mov     r9d, [rdx+0Ch]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                mov     r9d, edi
                and     eax, 3
                movzx   edx, word ptr [rbp+rax*2+var_18]
                movzx   eax, word ptr [rbp+r11*2+var_20]
                sub     r9d, edx
                rol     r9d, cl
                imul    r9d, eax
                mov     eax, 88888889h
                mul     r10d
                shr     edx, 3
                imul    r8d, edx, 0Fh
                sub     r10d, r8d
                lea     ecx, [r10+1]
                shr     edi, cl
                xor     r9d, edi
                jmp     loc_14030A439
; ---------------------------------------------------------------------------

loc_14030AA69:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r9d, [rdx+10h]  ; jumptable 000000014030A34F case 26
                mov     eax, 88888889h
                mov     ecx, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                sub     ecx, eax
                movzx   eax, word ptr [rbp+r11*2+var_18]
                inc     ecx
                ror     edi, cl
                xor     edi, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_20]
                imul    eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AABD:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r9d, [rdx+10h]  ; jumptable 000000014030A34F case 24
                mov     eax, 88888889h
                mov     ecx, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                not     edi
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                sub     ecx, eax
                movzx   eax, word ptr [rbp+r11*2+var_18]
                inc     ecx
                ror     edi, cl
                add     edi, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_20]
                imul    eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AB13:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 0
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_20], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_18], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                shr     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_20]
                movzx   ecx, word ptr [rbp+r11*2+var_18]
                xor     eax, edi
                imul    eax, ecx
                add     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AB6E:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 11
                mov     eax, 24924925h
                mov     r9d, [rdx+0Ch]
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030ABCE:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                lea     eax, [rbx-1]    ; jumptable 000000014030A34F case 27
                mov     [rbp+var_18], r8
                and     r11d, 1
                mov     [rbp+var_20], r8
                and     eax, 1
                mov     ecx, dword ptr [rbp+r11*4+var_18]
                mov     eax, dword ptr [rbp+rax*4+var_20]
                xor     ecx, edi
                sub     eax, ecx
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030ABF2:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 15
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                add     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030AC3C:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 2
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                shr     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_18]
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                xor     eax, edi
                imul    eax, ecx
                xor     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AC97:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 18
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030ACE1:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 13
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                sub     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030AD2B:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 3
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                ror     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_18]
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                xor     eax, edi
                imul    eax, ecx
                add     eax, r8d
                jmp     loc_14030A43C
; } // starts at 14030A300
sub_14030A300   endp

; ---------------------------------------------------------------------------
byte_14030AD86  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007263C↑o
                                        ; .pdata:00000001400D42EC↑o

; =============== S U B R O U T I N E =======================================


sub_14030AD8C   proc near               ; CODE XREF: sub_1406AFC74+16E↓p
                                        ; sub_140741328+53↓p
                                        ; DATA XREF: ...
                mov     r9, rcx
                mov     r8d, 4CB2Fh
                mov     r10d, 2

loc_14030AD9B:                          ; CODE XREF: sub_14030AD8C+76↓j
                movzx   eax, byte ptr [r9]
                lea     r9, [r9+8]
                imul    rdx, r8, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [r9-7]
                imul    r8, rdx, 25h ; '%'
                add     r8, rax
                movzx   eax, byte ptr [r9-6]
                imul    rdx, r8, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [r9-5]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [r9-4]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [r9-3]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [r9-2]
                imul    rdx, rcx, 25h ; '%'
                movzx   ecx, byte ptr [r9-1]
                add     rdx, rax
                imul    r8, rdx, 25h ; '%'
                add     r8, rcx
                sub     r10, 1
                jnz     short loc_14030AD9B
                mov     rax, 4EC4EC4EC4EC4EC5h
                mul     r8
                shr     rdx, 2
                imul    ecx, edx, 0Dh
                sub     r8d, ecx
                mov     eax, r8d
                retn
sub_14030AD8C   endp

; ---------------------------------------------------------------------------
                align 20h
byte_14030AE20  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400D42F8↑o
; Exported entry 2079. RtlDeriveCapabilitySidsFromName

; =============== S U B R O U T I N E =======================================



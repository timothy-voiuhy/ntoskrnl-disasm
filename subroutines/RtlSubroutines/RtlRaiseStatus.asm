RtlRaiseStatus  proc near               ; CODE XREF: FsRtlIsNameInExpression+6C↑p
                                        ; FsRtlIsNameInUnUpcasedExpression+40↑p ...

var_578         = dword ptr -578h
var_574         = dword ptr -574h
var_570         = qword ptr -570h
var_560         = dword ptr -560h
var_4D8         = byte ptr -4D8h

                push    rbx             ; ExRaiseStatus
                sub     rsp, 590h
                mov     ebx, ecx
                xor     edx, edx
                lea     rcx, [rsp+598h+var_578]
                mov     r8d, 98h
                call    memset
                and     [rsp+598h+var_570], 0
                and     [rsp+598h+var_560], 0
                mov     [rsp+598h+var_578], ebx
                mov     ebx, 1
                mov     [rsp+598h+var_574], ebx

loc_140328215:                          ; CODE XREF: RtlRaiseStatus+4D↓j
                mov     r8b, bl
                lea     rdx, [rsp+598h+var_4D8]
                lea     rcx, [rsp+598h+var_578]
                call    sub_140407560
                add     bl, 0FFh
                jz      short loc_140328215
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
RtlRaiseStatus  endp

algn_140328237:                         ; DATA XREF: .pdata:00000001400D5D98↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140328240   proc near               ; CODE XREF: sub_140216560+120F↑p
                                        ; DATA XREF: .pdata:00000001400D5DA4↑o
                lock and dword ptr [rcx], 0FFFFFF7Fh
                retn
sub_140328240   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140328249:                         ; DATA XREF: .pdata:00000001400D5DA4↑o
                align 10h
; Exported entry 308. ExReleaseRundownProtection

; =============== S U B R O U T I N E =======================================


                public ExReleaseRundownProtection
ExReleaseRundownProtection proc near    ; CODE XREF: sub_14024C380:loc_14024C39F↑p
                                        ; DATA XREF: .pdata:00000001400D5DB0↑o
                sub     rsp, 28h
                prefetchw byte ptr [rcx]
                mov     r8, [rcx]
                test    r8b, 1
                jnz     short loc_140328277

loc_140328260:                          ; CODE XREF: ExReleaseRundownProtection+58↓j
                lea     rdx, [r8-2]
                mov     rax, r8
                lock cmpxchg [rcx], rdx
                mov     r8, rax
                jnz     short loc_1403282A6

loc_140328271:                          ; CODE XREF: ExReleaseRundownProtection+3B↓j
                                        ; ExReleaseRundownProtection+44↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328277:                          ; CODE XREF: ExReleaseRundownProtection+E↑j
                                        ; ExReleaseRundownProtection+5A↓j
                and     r8, 0FFFFFFFFFFFFFFFEh
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [r8], rax
                cmp     rax, 1
                jnz     short loc_140328271
                lock btr dword ptr [r8+20h], 0
                jb      short loc_140328271
                lea     rcx, [r8+8]
                xor     edx, edx
                xor     r8d, r8d
                call    KeSetEvent
                jmp     short loc_140328271
; ---------------------------------------------------------------------------

loc_1403282A6:                          ; CODE XREF: ExReleaseRundownProtection+1F↑j
                test    al, 1
                jz      short loc_140328260
                jmp     short loc_140328277
ExReleaseRundownProtection endp

; ---------------------------------------------------------------------------
algn_1403282AC:                         ; DATA XREF: .pdata:00000001400D5DB0↑o
                align 20h
; Exported entry 1672. ObReferenceObjectSafe

; =============== S U B R O U T I N E =======================================


                public ObReferenceObjectSafe
ObReferenceObjectSafe proc near         ; CODE XREF: sub_1403EFABC+71↓p
                                        ; sub_140614D10+7E↓p ...

; FUNCTION CHUNK AT 000000014041DFEA SIZE 0000001B BYTES

                sub     rsp, 28h
                add     rcx, 0FFFFFFFFFFFFFFD0h
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_1403282F8

loc_1403282D3:                          ; CODE XREF: ObReferenceObjectSafe+36↓j
                lea     rdx, [rax+1]
                lock cmpxchg [rcx], rdx
                jnz     short loc_1403282F3
                cmp     cs:dword_140CFB010, 0
                jnz     loc_14041DFEA

loc_1403282EB:                          ; CODE XREF: ObReferenceObjectSafe+F5D40↓j
                mov     al, 1

loc_1403282ED:                          ; CODE XREF: ObReferenceObjectSafe+3A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403282F3:                          ; CODE XREF: ObReferenceObjectSafe+1C↑j
                test    rax, rax
                jnz     short loc_1403282D3

loc_1403282F8:                          ; CODE XREF: ObReferenceObjectSafe+11↑j
                xor     al, al
                jmp     short loc_1403282ED
ObReferenceObjectSafe endp

; ---------------------------------------------------------------------------
byte_1403282FC  db 14h dup(0CCh)        ; DATA XREF: .rdata:000000014007B3BC↑o
                                        ; .pdata:00000001400D5DBC↑o
; Exported entry 306. ExReleaseResourceForThreadLite

; =============== S U B R O U T I N E =======================================


                public ExReleaseResourceForThreadLite
ExReleaseResourceForThreadLite proc near
                                        ; CODE XREF: CcUnpinDataForThread+4C↓p
                                        ; DATA XREF: .rdata:000000014007B3E0↑o ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404742EA SIZE 00000117 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                sub     rsp, 50h
                movzx   eax, word ptr [rcx+1Ah]
                mov     rbp, rdx
                movzx   r8d, al
                mov     rbx, rcx
                and     r8b, 41h
                cmp     r8b, 1
                jz      loc_140328471
                and     ax, 1
                jnz     loc_140328433

loc_140328345:                          ; CODE XREF: ExReleaseResourceForThreadLite+13C↓j
                                        ; ExReleaseResourceForThreadLite+149↓j ...
                test    ax, ax
                jnz     loc_140474321
                xor     eax, eax

loc_140328350:                          ; DATA XREF: .rdata:000000014007B3E0↑o
                                        ; .rdata:000000014007B3F8↑o ...
                mov     [rsp+58h+arg_0], rdi
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                movups  [rsp+58h+var_28], xmm0
                xor     esi, esi
                lea     rdi, [rbx+60h]
                mov     qword ptr [rsp+58h+var_28], rsi
                mov     qword ptr [rsp+58h+var_28+8], rdi
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474358

loc_14032838D:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C04A↓j
                                        ; ExReleaseResourceForThreadLite+14C054↓j ...
                mov     byte ptr [rsp+58h+var_18], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14047439D

loc_1403283AB:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C091↓j
                                        ; ExReleaseResourceForThreadLite+14C0A0↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_1404743C1
                lea     rdx, [rsp+58h+var_28]
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_140328427

loc_1403283C5:                          ; CODE XREF: ExReleaseResourceForThreadLite+121↓j
                                        ; ExReleaseResourceForThreadLite+14C0BF↓j
                mov     r8, gs:188h
                movzx   ecx, word ptr [rbx+1Ah]
                mov     rdi, [rsp+58h+arg_0]
                test    cl, 1
                jnz     loc_1404743D4

loc_1403283E0:                          ; DATA XREF: .pdata:00000001400D5DD4↑o
                                        ; .pdata:00000001400D5DE0↑o
                cmp     cs:dword_140C16948, esi
                jnz     loc_1404743D4

loc_1403283EC:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C0CC↓j
                                        ; ExReleaseResourceForThreadLite+14C0D5↓j
                test    cl, cl
                lea     r8, [rsp+58h+var_28]
                mov     rcx, rbx
                mov     rdx, rbp
                js      short loc_140328411
                call    sub_140245FC0

loc_140328400:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C043↓j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328411:                          ; CODE XREF: ExReleaseResourceForThreadLite+E9↑j
                call    sub_140247BC0
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328427:                          ; CODE XREF: ExReleaseResourceForThreadLite+B3↑j
                                        ; DATA XREF: .pdata:00000001400D5DE0↑o ...
                lea     rcx, [rsp+58h+var_28]
                call    sub_14025FC20
                jmp     short loc_1403283C5
; ---------------------------------------------------------------------------

loc_140328433:                          ; CODE XREF: ExReleaseResourceForThreadLite+2F↑j
                                        ; DATA XREF: .pdata:00000001400D5DEC↑o ...
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, 2
                ja      loc_1404742EA
                cmp     cl, 1
                jnb     loc_140328345
                test    dword ptr [rdx+74h], 400h
                jnz     loc_140328345
                cmp     dword ptr [rdx+1E4h], 0
                jnz     loc_140328345
                jmp     loc_140474306
; ---------------------------------------------------------------------------

loc_140328471:                          ; CODE XREF: ExReleaseResourceForThreadLite+25↑j
                xor     esi, esi
                xor     r9d, r9d
                mov     r8, rbx
                mov     [rsp+58h+var_38], rsi
                mov     ecx, 1C6h
                lea     edx, [rsi+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseResourceForThreadLite endp

byte_14032848C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D5DF8↑o

; =============== S U B R O U T I N E =======================================


sub_140328494   proc near               ; CODE XREF: CcSetFileSizesEx+296↑p
                                        ; DATA XREF: .rdata:000000014007B480↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = byte ptr -28h
arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 0000000140474402 SIZE 00000029 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r15d, r15d
                mov     rbx, rdx
                and     [rax-2Ch], r15d
                mov     rdi, rcx
                mov     rax, rdx
                shr     rax, 20h
                test    eax, eax
                js      loc_140474402
                mov     r10d, 200h
                lea     r12d, [r15+1]
                test    [rcx+98h], r10d
                jnz     loc_140328670

loc_1403284E3:                          ; CODE XREF: sub_140328494+1E7↓j
                and     [rsp+68h+var_38], 0
                lea     rax, [rsp+68h+var_48]
                and     [rsp+68h+var_30], 0
                mov     rbp, [rcx+20h]
                mov     [rsp+68h+var_40], rax
                lea     rax, [rsp+68h+var_48]
                mov     [rsp+68h+var_48], rax
                cmp     rbx, rbp
                jle     loc_14032863A
                mov     r9d, 2000000h
                cmp     rbp, r9
                jge     loc_140328631
                cmp     rbx, r9
                mov     rbp, rbx
                mov     edx, 100000h
                mov     r8d, 20h ; ' '
                cmovge  rbp, r9
                or      esi, 0FFFFFFFFh
                mov     rax, rbp
                shr     rax, 20h
                test    eax, eax
                jnz     loc_14047440C
                cmp     ebp, edx
                jbe     loc_14032875A
                mov     ecx, ebp
                shr     ecx, 12h
                shl     ecx, 3

loc_140328555:                          ; CODE XREF: sub_140328494+2C9↓j
                                        ; sub_140328494+14BF7A↓j
                cmp     dword ptr [rdi+24h], 0
                mov     [rsp+68h+arg_8], ecx
                jnz     short loc_14032856D
                mov     esi, [rdi+20h]
                cmp     esi, edx
                ja      loc_140328665
                mov     esi, r8d

loc_14032856D:                          ; CODE XREF: sub_140328494+C9↑j
                                        ; sub_140328494+1D7↓j
                cmp     ecx, esi
                jbe     loc_14032862D
                test    r15d, r15d
                jnz     loc_14032874D

loc_14032857E:                          ; CODE XREF: sub_140328494+2C1↓j
                lea     eax, [rcx+8]
                cmp     rbx, r9
                mov     r8d, 70566343h
                cmovl   eax, ecx
                mov     ecx, r10d
                mov     edx, eax
                mov     r13d, eax
                call    ExAllocatePoolWithTag
                mov     r12, rax
                test    rax, rax
                jz      loc_140474421
                mov     rdx, rdi
                mov     ecx, r15d
                call    sub_140262F04
                mov     r14, [rdi+58h]
                test    r14, r14
                jz      loc_140474413
                mov     r8d, esi
                mov     rdx, r14
                mov     rcx, r12
                call    memmove

loc_1403285CC:                          ; CODE XREF: sub_140328494+14BF81↓j
                mov     r8d, [rsp+68h+arg_8]
                xor     edx, edx
                mov     ecx, esi
                sub     r8d, esi
                add     rcx, r12
                call    memset
                cmp     rbx, 2000000h
                jge     loc_1403287E8

loc_1403285ED:                          ; CODE XREF: sub_140328494+35E↓j
                test    r15d, r15d
                jnz     loc_140328680

loc_1403285F6:                          ; CODE XREF: sub_140328494+27C↓j
                                        ; sub_140328494+2AE↓j
                mov     rdx, rdi
                mov     [rdi+58h], r12
                mov     ecx, r15d
                mov     [rdi+20h], rbp
                call    sub_140262E84
                lea     rax, [rdi+38h]
                cmp     r14, rax
                jz      short loc_140328621
                test    r14, r14
                jz      short loc_140328621
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_140328621:                          ; CODE XREF: sub_140328494+17C↑j
                                        ; sub_140328494+181↑j
                mov     r12d, 1
                mov     r9d, 2000000h

loc_14032862D:                          ; CODE XREF: sub_140328494+DB↑j
                mov     [rdi+20h], rbp

loc_140328631:                          ; CODE XREF: sub_140328494+84↑j
                cmp     rbx, rbp
                jg      loc_140328762

loc_14032863A:                          ; CODE XREF: sub_140328494+75↑j
                                        ; sub_140328494+302↓j
                lea     rcx, [rsp+68h+var_48]
                call    sub_140328920
                xor     eax, eax

loc_140328646:                          ; CODE XREF: sub_140328494+14BF73↓j
                                        ; sub_140328494+14BF92↓j
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
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

loc_140328665:                          ; CODE XREF: sub_140328494+D0↑j
                shr     esi, 12h
                shl     esi, 3
                jmp     loc_14032856D
; ---------------------------------------------------------------------------

loc_140328670:                          ; CODE XREF: sub_140328494+49↑j
                cmp     rbx, 200000h
                cmovg   r15d, r12d
                jmp     loc_1403284E3
; ---------------------------------------------------------------------------

loc_140328680:                          ; CODE XREF: sub_140328494+15C↑j
                mov     r9d, [rsp+68h+arg_8]
                xor     eax, eax
                cmp     qword ptr [rdi+20h], 200000h
                mov     r11d, 80000h
                lea     rdx, [r9+r12]
                jle     loc_14032879B
                test    r14, r14
                jz      loc_14032879B
                mov     r8d, esi
                sub     r8, r9
                mov     ecx, esi
                sub     r8, r12
                sub     r9, rcx
                add     r8, rdx
                add     r8, r14
                sub     r9, r14
                lea     r10, [r9+r12]

loc_1403286C3:                          ; CODE XREF: sub_140328494+277↓j
                mov     r9, [r8]
                mov     rcx, [r8+8]
                cmp     [r9+8], r8
                jnz     loc_14047441A
                cmp     [rcx], r8
                jnz     loc_14047441A
                mov     [rcx], r9
                mov     [r9+8], rcx
                cmp     [rcx], r9
                jnz     loc_14047441A
                mov     [rdx], r9
                add     rax, r11
                mov     [r10+r8+8], rcx
                add     r8, 10h
                mov     [rcx], rdx
                mov     [r9+8], rdx
                add     rdx, 10h
                cmp     rax, [rdi+20h]
                jl      short loc_1403286C3

loc_14032870D:                          ; CODE XREF: sub_140328494+312↓j
                cmp     rax, rbp
                jge     loc_1403285F6
                lea     r8, [rdi+10h]
                mov     rcx, [r8]

loc_14032871D:                          ; CODE XREF: sub_140328494+2B7↓j
                mov     r9, rdx
                cmp     [rcx+8], r8
                jnz     loc_14047441A
                mov     [rdx], rcx
                add     rax, r11
                mov     [rdx+8], r8
                mov     [rcx+8], rdx
                mov     [r8], rdx
                add     rdx, 10h
                cmp     rax, rbp
                jge     loc_1403285F6
                mov     rcx, r9
                jmp     short loc_14032871D
; ---------------------------------------------------------------------------

loc_14032874D:                          ; CODE XREF: sub_140328494+E4↑j
                lea     eax, [rcx+0Fh]
                and     eax, 0FFFFFFF0h
                add     ecx, eax
                jmp     loc_14032857E
; ---------------------------------------------------------------------------

loc_14032875A:                          ; CODE XREF: sub_140328494+B3↑j
                mov     ecx, r8d
                jmp     loc_140328555
; ---------------------------------------------------------------------------

loc_140328762:                          ; CODE XREF: sub_140328494+1A0↑j
                mov     esi, r12d
                mov     ecx, 19h
                cmp     rbp, r9
                jle     short loc_140328784
                mov     rdx, [rdi+20h]

loc_140328773:                          ; CODE XREF: sub_140328494+2EE↓j
                add     ecx, 7
                mov     rax, r12
                shl     rax, cl
                add     esi, r12d
                cmp     rdx, rax
                jg      short loc_140328773

loc_140328784:                          ; CODE XREF: sub_140328494+2D9↑j
                lea     rax, [rbx-1]
                mov     ebp, esi
                sar     rax, cl
                test    rax, rax
                jnz     short loc_1403287F7

loc_140328792:                          ; CODE XREF: sub_140328494+377↓j
                                        ; sub_140328494+43F↓j
                mov     [rdi+20h], rbx
                jmp     loc_14032863A
; ---------------------------------------------------------------------------

loc_14032879B:                          ; CODE XREF: sub_140328494+205↑j
                                        ; sub_140328494+20E↑j
                mov     rcx, [rdi+18h]
                lea     r9, [rdi+10h]

loc_1403287A3:                          ; CODE XREF: sub_140328494+322↓j
                cmp     rcx, r9
                jz      loc_14032870D
                cmp     rax, [rcx-8]
                jle     short loc_1403287B8

loc_1403287B2:                          ; CODE XREF: sub_140328494+350↓j
                mov     rcx, [rcx+8]
                jmp     short loc_1403287A3
; ---------------------------------------------------------------------------

loc_1403287B8:                          ; CODE XREF: sub_140328494+31C↑j
                mov     r8, [rcx]

loc_1403287BB:                          ; CODE XREF: sub_140328494+352↓j
                mov     r10, rdx
                cmp     [r8+8], rcx
                jnz     loc_14047441A
                mov     [rdx], r8
                add     rax, r11
                mov     [rdx+8], rcx
                mov     [r8+8], rdx
                mov     r8, r10
                mov     [rcx], rdx
                add     rdx, 10h
                cmp     rax, [rcx-8]
                jg      short loc_1403287B2
                jmp     short loc_1403287BB
; ---------------------------------------------------------------------------

loc_1403287E8:                          ; CODE XREF: sub_140328494+153↑j
                lea     ecx, [r13-8]
                xor     eax, eax
                mov     [rcx+r12], rax
                jmp     loc_1403285ED
; ---------------------------------------------------------------------------

loc_1403287F7:                          ; CODE XREF: sub_140328494+2FC↑j
                                        ; sub_140328494+373↓j
                add     ecx, 7
                lea     rax, [rbx-1]
                sar     rax, cl
                add     ebp, r12d
                test    rax, rax
                jnz     short loc_1403287F7
                cmp     ebp, esi
                jbe     short loc_140328792
                lea     r14d, [rax+4]
                mov     ecx, r14d
                call    KeAcquireQueuedSpinLock
                cmp     ebp, cs:dword_140C0F1D4
                jnb     loc_140328909

loc_140328825:                          ; CODE XREF: sub_140328494+47E↓j
                mov     dl, al
                mov     rcx, r14
                call    KeReleaseQueuedSpinLock
                mov     ecx, ebp
                lea     r8, [rsp+68h+var_48]
                sub     ecx, esi
                xor     edx, edx
                call    sub_140328A64
                test    al, al
                jz      loc_140474421
                mov     rdx, rdi
                mov     ecx, r15d
                call    sub_140262F04
                cmp     esi, r12d
                jnz     short loc_140328863
                mov     rdx, [rdi+58h]
                mov     rcx, rdi
                call    sub_14037D9E8

loc_140328863:                          ; CODE XREF: sub_140328494+3C1↑j
                mov     r14, [rdi+58h]
                lea     r8d, [rsi-1]
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1402F89DC
                mov     ecx, [rax]
                mov     eax, [rax+4]
                or      eax, ecx
                jnz     short loc_1403288D8
                cmp     esi, r12d
                jnz     short loc_1403288C4
                test    dword ptr [rdi+98h], 200h
                jz      short loc_1403288C4
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                call    sub_14032897C
                mov     [rdi+58h], rax
                lea     rcx, unk_140CDB540
                mov     r8, [r14+400h]
                mov     rdx, r14
                mov     rax, [r14+7F8h]
                mov     [r8+8], rax
                mov     [rax], r8
                call    sub_14030D224

loc_1403288C4:                          ; CODE XREF: sub_140328494+3EE↑j
                                        ; sub_140328494+3FA↑j ...
                mov     rdx, rdi
                mov     [rdi+20h], rbx
                mov     ecx, r15d
                call    sub_140262E84
                jmp     loc_140328792
; ---------------------------------------------------------------------------

loc_1403288D8:                          ; CODE XREF: sub_140328494+3E9↑j
                                        ; sub_140328494+473↓j
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                add     esi, r12d
                call    sub_14032897C
                mov     rcx, [rdi+58h]
                mov     rdx, rax
                mov     r8d, esi
                mov     [rax], rcx
                mov     rcx, rdi
                call    sub_1402F89DC
                add     [rax], r12d
                mov     [rdi+58h], rdx
                cmp     esi, ebp
                jnb     short loc_1403288C4
                jmp     short loc_1403288D8
; ---------------------------------------------------------------------------

loc_140328909:                          ; CODE XREF: sub_140328494+38B↑j
                lea     edx, [rbp+1]
                mov     cs:dword_140C0F1D4, edx
                jmp     loc_140328825
sub_140328494   endp

; ---------------------------------------------------------------------------
algn_140328917:                         ; DATA XREF: .rdata:000000014007B480↑o
                                        ; .pdata:00000001400D5E04↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140328920   proc near               ; CODE XREF: sub_1402F862C+25F↑p
                                        ; sub_140328494+1AB↑p ...

; FUNCTION CHUNK AT 000000014047442C SIZE 00000016 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx

loc_140328929:                          ; CODE XREF: sub_140328920+4A↓j
                mov     rdx, [rbx]
                cmp     rdx, rbx
                jnz     short loc_140328945
                mov     rdx, [rbx+10h]
                test    rdx, rdx
                jnz     loc_14047442C

loc_14032893E:                          ; CODE XREF: sub_140328920+14BB1D↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328945:                          ; CODE XREF: sub_140328920+F↑j
                cmp     [rdx+8], rbx
                jnz     short loc_14032896C
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     short loc_14032896C
                mov     [rbx], rax
                lea     rcx, unk_140CDB4C0
                mov     [rax+8], rbx
                call    sub_14030D224
                dec     dword ptr [rbx+18h]
                jmp     short loc_140328929
; ---------------------------------------------------------------------------

loc_14032896C:                          ; CODE XREF: sub_140328920+29↑j
                                        ; sub_140328920+32↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140328920   endp

; ---------------------------------------------------------------------------
byte_140328973  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007B49C↑o
                                        ; .pdata:00000001400D5E10↑o

; =============== S U B R O U T I N E =======================================


sub_14032897C   proc near               ; CODE XREF: sub_1402F862C+224↑p
                                        ; sub_140328494+403↑p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140474442 SIZE 0000001F BYTES

                push    rbx
                sub     rsp, 30h
                test    edx, edx
                jnz     short loc_1403289CD
                mov     rbx, [rcx]
                cmp     rbx, rcx
                jz      loc_140474442
                mov     rdx, [rbx]
                cmp     [rdx+8], rbx
                jnz     short loc_1403289F2
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_1403289F2
                mov     [rax], rdx
                mov     r8d, 400h
                mov     [rdx+8], rax
                xor     edx, edx
                dec     dword ptr [rcx+18h]
                lea     rcx, [rbx+8]
                call    memset

loc_1403289BF:                          ; CODE XREF: sub_14032897C+74↓j
                and     qword ptr [rbx], 0
                mov     rax, rbx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403289CD:                          ; CODE XREF: sub_14032897C+8↑j
                mov     rbx, [rcx+10h]
                xor     edx, edx
                and     qword ptr [rcx+10h], 0
                mov     r8d, 3F8h
                lea     rcx, [rbx+8]
                call    memset
                xor     eax, eax
                mov     [rbx+800h], rax
                jmp     short loc_1403289BF
; ---------------------------------------------------------------------------

loc_1403289F2:                          ; CODE XREF: sub_14032897C+1D↑j
                                        ; sub_14032897C+26↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14032897C   endp

; ---------------------------------------------------------------------------
algn_1403289F9:                         ; DATA XREF: .rdata:000000014007B4B8↑o
                                        ; .pdata:00000001400D5E1C↑o
                align 20h
; Exported entry 463. FsRtlInitializeLargeMcb

; =============== S U B R O U T I N E =======================================


                public FsRtlInitializeLargeMcb
FsRtlInitializeLargeMcb proc near       ; CODE XREF: FsRtlInitializeMcb+4↓p
                                        ; DATA XREF: .rdata:000000014007B52C↑o ...

; FUNCTION CHUNK AT 0000000140474462 SIZE 0000000B BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     r8d, 1
                add     rcx, 8
                call    FsRtlInitializeBaseMcbEx
                lea     rcx, unk_140CDB700
                call    sub_14030E5D4
                xor     ecx, ecx
                mov     [rbx], rax
                test    rax, rax
                jz      loc_140474462
                mov     dword ptr [rax], 1
                mov     [rax+8], rcx
                mov     [rax+10h], ecx
                mov     word ptr [rax+18h], 1
                mov     byte ptr [rax+1Ah], 6
                mov     [rax+1Ch], ecx
                add     rax, 20h ; ' '
                mov     [rax+8], rax
                mov     [rax], rax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInitializeLargeMcb endp

byte_140328A5E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007B52C↑o
                                        ; .pdata:00000001400D5E28↑o

; =============== S U B R O U T I N E =======================================


sub_140328A64   proc near               ; CODE XREF: sub_1402F862C+209↑p
                                        ; sub_140328494+3A6↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047446E SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, r8
                mov     bpl, dl
                mov     esi, ecx
                cmp     ecx, [r8+18h]
                jbe     short loc_140328ABC

loc_140328A88:                          ; CODE XREF: sub_140328A64+56↓j
                lea     rcx, unk_140CDB4C0
                call    sub_14030E5D4
                test    rax, rax
                jz      short loc_140328AF8
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     FatalListEntryError_26
                mov     [rax], rbx
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [rbx+8], rax
                inc     dword ptr [rbx+18h]
                cmp     esi, [rbx+18h]
                ja      short loc_140328A88

loc_140328ABC:                          ; CODE XREF: sub_140328A64+22↑j
                test    bpl, bpl
                jnz     short loc_140328ADD

loc_140328AC1:                          ; CODE XREF: sub_140328A64+7D↓j
                                        ; sub_140328A64+92↓j
                mov     dil, 1

loc_140328AC4:                          ; CODE XREF: sub_140328A64+9C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     al, dil
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328ADD:                          ; CODE XREF: sub_140328A64+5B↑j
                cmp     [rbx+10h], rdi
                jnz     short loc_140328AC1
                lea     rcx, unk_140CDB540
                call    sub_14030E5D4
                mov     [rbx+10h], rax
                test    rax, rax
                jnz     short loc_140328AC1

loc_140328AF8:                          ; CODE XREF: sub_140328A64+33↑j
                mov     rcx, rbx
                call    sub_140328920
                jmp     short loc_140328AC4
sub_140328A64   endp

; ---------------------------------------------------------------------------
algn_140328B02:                         ; DATA XREF: .rdata:000000014007B554↑o
                                        ; .pdata:00000001400D5E34↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140328B08   proc near               ; CODE XREF: sub_1406E6730+92↓p
                                        ; sub_1406E68A0+EA↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140474476 SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                and     [rsp+48h+arg_8], 0
                mov     rax, 7FFFFFFF0000h
                mov     rsi, r9
                mov     rbp, r8
                mov     rdi, rdx
                mov     r14, rcx
                cmp     rdx, rax
                jbe     loc_140474476
                cmp     r9, rax
                jbe     loc_140474476
                movsxd  rax, [rsp+48h+arg_28]
                sub     r8, rdx
                cmp     r8, rax
                jl      loc_140474476
                lea     rcx, unk_140CDB300
                call    sub_14030E5D4
                mov     rbx, rax
                test    rax, rax
                jz      loc_140474476
                and     qword ptr [rbx], 0
                lea     rax, sub_14030D060
                mov     rcx, [rsp+48h+arg_20]
                mov     [rbx+10h], rax
                mov     [rbx+18h], rbx
                mov     [rbx+38h], rcx
                lea     rcx, [rbx+48h]
                mov     [rbx+40h], rcx
                mov     [rbx+20h], rdi
                mov     [rbx+28h], rbp
                mov     [rbx+30h], rsi
                mov     [rbx+50h], r14
                lock inc dword ptr [r14+18h]
                mov     rcx, gs:188h
                call    KeQueryPriorityThread
                mov     rcx, rbx
                lea     edx, [rax+20h]
                call    ExQueueWorkItem
                xor     eax, eax

loc_140328BC4:                          ; CODE XREF: sub_140328B08+14B98C↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140328B08   endp

algn_140328BD8:                         ; DATA XREF: .rdata:000000014007B57C↑o
                                        ; .pdata:00000001400D5E40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140328BE0   proc near               ; CODE XREF: sub_14021E570+1F3↑p
                                        ; sub_1402D1184+47↑p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047449A SIZE 00000076 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                mov     [rsp+28h+arg_8], 0
                mov     rdi, rdx
                lock bts dword ptr [rdx], 7
                movzx   esi, r8b
                mov     rbx, rcx
                mov     bpl, 1
                jb      short loc_140328C70

loc_140328C10:                          ; CODE XREF: sub_140328BE0+A5↓j
                mov     eax, [rdi+348h]
                test    al, 7
                jz      loc_14047449A
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140328CB0
                mov     rdx, gs:20h
                cmp     rbx, [rdx+8]
                jnz     short loc_140328C89
                xor     r8d, r8d
                mov     byte ptr [rbx+283h], 17h
                mov     rcx, rbx
                mov     [rbx+186h], sil
                call    sub_140240E30

loc_140328C51:                          ; CODE XREF: sub_140328BE0+BB↓j
                mov     rbx, [rsp+28h+arg_0]
                movzx   eax, bpl
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140328C70:                          ; CODE XREF: sub_140328BE0+2E↑j
                                        ; sub_140328BE0+9E↓j ...
                lea     rcx, [rsp+28h+arg_8]
                call    sub_1402C8C70
                mov     eax, [rdi]
                test    al, al
                js      short loc_140328C70
                lock bts dword ptr [rdi], 7
                jnb     short loc_140328C10
                jmp     short loc_140328C70
; ---------------------------------------------------------------------------

loc_140328C89:                          ; CODE XREF: sub_140328BE0+56↑j
                                        ; sub_140328BE0+14B8C4↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404744A9

loc_140328C97:                          ; CODE XREF: sub_140328BE0+14B8CB↓j
                                        ; sub_140328BE0+14B8D7↓j ...
                mov     cr8, rsi
                jmp     short loc_140328C51
sub_140328BE0   endp

; ---------------------------------------------------------------------------
byte_140328C9D  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014007B5D0↑o
                                        ; .pdata:00000001400D5E4C↑o

; =============== S U B R O U T I N E =======================================


sub_140328CB0   proc near               ; CODE XREF: sub_14023E110+3ED↑p
                                        ; sub_1402C36E0+F9↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140474510 SIZE 0000009F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     eax, ds:0FFFFF78000000320h
                xor     r14d, r14d
                mov     [rcx+1B4h], eax
                mov     rbx, rcx
                mov     rbp, gs:20h
                xor     sil, sil
                mov     rdi, rdx
                mov     [rsp+38h+arg_0], r14d
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_140474510

loc_140328CFB:                          ; CODE XREF: sub_140328CB0+162↓j
                                        ; sub_140328CB0+14B864↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140328DE5
                mov     byte ptr [rbx+184h], 9
                test    dword ptr [rbx+78h], 1000h
                jnz     loc_140474579

loc_140328D1C:                          ; CODE XREF: sub_140328CB0+14B8CF↓j
                mov     [rbx+40h], r14
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140474584

loc_140328D39:                          ; CODE XREF: sub_140328CB0+14B8D8↓j
                                        ; sub_140328CB0+14B8E7↓j ...
                lea     rax, [rdi+158h]
                add     rbx, 0D8h
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_1404745A8
                mov     [rbx], rax
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx
                mov     eax, [rdi+348h]
                and     al, 7
                cmp     al, 1
                jz      short loc_140328DD8

loc_140328D6E:                          ; CODE XREF: sub_140328CB0+133↓j
                lock and dword ptr [rdi], 0FFFFFF7Fh
                test    sil, sil
                jnz     short loc_140328D8E

loc_140328D7A:                          ; CODE XREF: sub_140328CB0+112↓j
                                        ; sub_140328CB0+126↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140328D8E:                          ; CODE XREF: sub_140328CB0+C8↑j
                mov     rcx, rdi
                call    sub_140328E24
                add     rdi, 168h
                prefetchw byte ptr cs:qword_140C31E28
                mov     rax, cs:qword_140C31E28

loc_140328DAB:                          ; CODE XREF: sub_140328CB0+10D↓j
                mov     [rdi], rax
                mov     rcx, rax
                lock cmpxchg cs:qword_140C31E28, rdi
                cmp     rax, rcx
                jnz     short loc_140328DAB
                test    rax, rax
                jnz     short loc_140328D7A
                xor     r8d, r8d
                lea     edx, [rax+0Ah]
                lea     rcx, dword_140C31E40
                call    KeSetEvent
                jmp     short loc_140328D7A
; ---------------------------------------------------------------------------

loc_140328DD8:                          ; CODE XREF: sub_140328CB0+BC↑j
                lock xor dword ptr [rdi+348h], 3
                mov     sil, 1
                jmp     short loc_140328D6E
; ---------------------------------------------------------------------------

loc_140328DE5:                          ; CODE XREF: sub_140328CB0+52↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_140474537

loc_140328DF5:                          ; CODE XREF: sub_140328CB0+156↓j
                                        ; sub_140328CB0+14B88B↓j ...
                lea     rcx, [rsp+38h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140328DF5
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_140328CFB
                jmp     loc_14047455E
sub_140328CB0   endp

; ---------------------------------------------------------------------------
byte_140328E1D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007B5F8↑o
                                        ; .pdata:00000001400D5E58↑o

; =============== S U B R O U T I N E =======================================


sub_140328E24   proc near               ; CODE XREF: sub_140328CB0+E1↑p
                                        ; DATA XREF: .rdata:000000014007B61C↑o ...

var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_48          = byte ptr -48h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404745B0 SIZE 000000C6 BYTES

; __unwind { // __GSHandlerCheck
                sub     rsp, 0B8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_18], rax
                mov     al, [rcx+73Bh]
                mov     r9, rcx
                and     al, 60h
                cmp     al, 40h ; '@'
                jz      loc_1404745B0

loc_140328E50:                          ; CODE XREF: sub_140328E24+14B796↓j
                                        ; sub_140328E24+14B7A0↓j ...
                mov     rcx, [rsp+0B8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0B8h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140328E24
sub_140328E24   endp

algn_140328E69:                         ; DATA XREF: .rdata:000000014007B61C↑o
                                        ; .pdata:00000001400D5E64↑o
                align 10h
; Exported entry 1800. PsEnterPriorityRegion

; =============== S U B R O U T I N E =======================================


                public PsEnterPriorityRegion
PsEnterPriorityRegion proc near         ; DATA XREF: .pdata:00000001400D5E70↑o
                sub     rsp, 28h
                mov     rcx, gs:188h
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140248280
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsEnterPriorityRegion endp

algn_140328E90:                         ; DATA XREF: .pdata:00000001400D5E70↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140328EA0   proc near               ; CODE XREF: sub_1403FF150+17C↓p
                                        ; sub_1403FF330+136↓p ...

var_58          = word ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140474676 SIZE 00000019 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_10], rax
                xor     ebp, ebp
                mov     rdi, r8
                mov     [rsp+78h+var_3C], ebp
                cmp     [rcx+5Dh], bpl
                jz      loc_140474676
                mov     rax, [rcx+20h]
                test    rax, rax
                jz      loc_140328FB8
                mov     [rsp+78h+var_48], rax
                lea     r9d, [rbp+10h]
                mov     eax, [rcx+28h]
                mov     esi, 0F32h
                mov     [rsp+78h+var_3C], eax

loc_140328EF8:                          ; CODE XREF: sub_140328EA0+12C↓j
                                        ; sub_140328EA0+14B7EA↓j
                lea     rax, [rsp+78h+var_48]
                mov     [rsp+78h+var_40], edx
                mov     [rsp+78h+var_20], rax
                mov     rax, cs:qword_140CFB008
                mov     [rsp+78h+var_18], r9d
                mov     [rsp+78h+var_14], ebp
                mov     ebx, [rax+1080h]
                bsf     ecx, ebx
                jz      short loc_140328F94

loc_140328F21:                          ; CODE XREF: sub_140328EA0+F2↓j
                mov     rdx, cs:qword_140CFB008
                lea     eax, [rbx-1]
                and     ebx, eax
                mov     r8d, ecx
                mov     eax, ecx
                shl     rax, 5
                lea     rcx, [rdx+10A4h]
                add     rcx, rax
                jz      short loc_140328F8F
                test    dword ptr [rcx+4], 4000h
                jz      short loc_140328F8F
                movzx   eax, byte ptr [rdx+r8*2+1071h]
                mov     r9d, 2
                dec     rax
                mov     [rsp+78h+var_28], 8
                mov     [rsp+78h+var_50], 400A02h
                mov     [rsp+78h+var_58], si
                lea     rcx, [rdi+rax*8]
                mov     [rsp+78h+var_30], rcx
                lea     rcx, [rsp+78h+var_30]
                movzx   r8d, byte ptr [rdx+r8*2+1070h]
                call    sub_14024AA80

loc_140328F8F:                          ; CODE XREF: sub_140328EA0+A0↑j
                                        ; sub_140328EA0+A9↑j
                bsf     ecx, ebx
                jnz     short loc_140328F21

loc_140328F94:                          ; CODE XREF: sub_140328EA0+7F↑j
                mov     rcx, [rsp+78h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140328FB8:                          ; CODE XREF: sub_140328EA0+3D↑j
                mov     rax, [rcx+18h]
                mov     esi, 0F43h
                mov     [rsp+78h+var_48], rax
                mov     r9d, 0Ch
                jmp     loc_140328EF8
; } // starts at 140328EA0
sub_140328EA0   endp

; ---------------------------------------------------------------------------
algn_140328FD1:                         ; DATA XREF: .rdata:000000014007B69C↑o
                                        ; .pdata:00000001400D5E7C↑o
                align 20h
; Exported entry 1875. PsGetThreadWin32Thread

; =============== S U B R O U T I N E =======================================


                public PsGetThreadWin32Thread
PsGetThreadWin32Thread proc near        ; DATA XREF: .pdata:00000001400D5E88↑o
                mov     rax, [rcx+1C8h]
                retn
PsGetThreadWin32Thread endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140328FE9:                         ; DATA XREF: .pdata:00000001400D5E88↑o
                align 10h
; Exported entry 402. FsRtlCheckLockForWriteAccess

; =============== S U B R O U T I N E =======================================


                public FsRtlCheckLockForWriteAccess
FsRtlCheckLockForWriteAccess proc near  ; DATA XREF: .pdata:00000001400D5E94↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                mov     r8, [rcx+18h]
                mov     r9, rdx
                mov     rsi, rcx
                test    r8, r8
                jz      short loc_14032901C
                cmp     qword ptr [r8+28h], 0
                jnz     short loc_14032902F
                cmp     qword ptr [r8+20h], 0
                jnz     short loc_14032902F

loc_14032901C:                          ; CODE XREF: FsRtlCheckLockForWriteAccess+1C↑j
                                        ; FsRtlCheckLockForWriteAccess+5E↓j
                mov     al, 1

loc_14032901E:                          ; CODE XREF: FsRtlCheckLockForWriteAccess+8E↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032902F:                          ; CODE XREF: FsRtlCheckLockForWriteAccess+23↑j
                                        ; FsRtlCheckLockForWriteAccess+2A↑j
                mov     rbx, [rdx+0B8h]
                mov     rdx, [rbx+18h]
                mov     eax, [rbx+8]
                mov     [rsp+38h+arg_10], rdx
                mov     [rsp+38h+arg_0], rax
                lea     rcx, [rdx+rax]
                cmp     rcx, [r8]
                jbe     short loc_14032901C
                mov     edi, [rbx+10h]
                mov     rcx, r9
                mov     rbx, [rbx+30h]
                call    IoGetRequestorProcess
                mov     [rsp+38h+var_10], rax
                lea     r8, [rsp+38h+arg_0]
                mov     r9d, edi
                mov     [rsp+38h+var_18], rbx
                lea     rdx, [rsp+38h+arg_10]
                mov     rcx, rsi
                call    FsRtlFastCheckLockForWrite
                jmp     short loc_14032901E
FsRtlCheckLockForWriteAccess endp

; ---------------------------------------------------------------------------
byte_140329080  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400D5E94↑o
; Exported entry 424. FsRtlFastCheckLockForWrite

; =============== S U B R O U T I N E =======================================


                public FsRtlFastCheckLockForWrite
FsRtlFastCheckLockForWrite proc near    ; CODE XREF: FsRtlCheckLockForWriteAccess+89↑p
                                        ; DATA XREF: .rdata:000000014007B744↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140474690 SIZE 000000DF BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, [rcx+18h]
                test    rsi, rsi
                jz      loc_140474765
                cmp     qword ptr [rsi+20h], 0
                jz      short loc_14032912E

loc_1403290BD:                          ; CODE XREF: FsRtlFastCheckLockForWrite+A3↓j
                mov     rax, [r8]
                test    rax, rax
                jz      loc_140474765
                mov     r14, [rdx]
                lea     r15, [rax-1]
                lea     rbp, [rsi+18h]
                mov     [rsp+78h+var_48], r14
                add     r15, r14
                mov     rcx, rbp
                mov     [rsp+78h+arg_0], r15
                call    KeAcquireSpinLockRaiseToDpc
                mov     ebx, 1
                movzx   edi, al
                cmp     r15, [rsi]
                jnb     short loc_14032913A

loc_1403290F9:                          ; CODE XREF: FsRtlFastCheckLockForWrite+149↓j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474690

loc_14032910F:                          ; CODE XREF: FsRtlFastCheckLockForWrite+134↓j
                                        ; FsRtlFastCheckLockForWrite+14B602↓j ...
                mov     cr8, rdi
                mov     al, bl

loc_140329115:                          ; CODE XREF: FsRtlFastCheckLockForWrite+14B6DA↓j
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 40h
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

loc_14032912E:                          ; CODE XREF: FsRtlFastCheckLockForWrite+2B↑j
                cmp     qword ptr [rsi+28h], 0
                jnz     short loc_1403290BD
                jmp     loc_140474765
; ---------------------------------------------------------------------------

loc_14032913A:                          ; CODE XREF: FsRtlFastCheckLockForWrite+67↑j
                mov     r13, [rsp+78h+arg_20]
                mov     r12, [rsp+78h+arg_28]
                mov     rax, [r13+78h]
                test    rax, rax
                jz      loc_1404746F4
                cmp     r14, [rax]
                mov     r14d, [rsp+78h+arg_18]
                jb      short loc_14032916A
                cmp     r15, [rax+28h]
                jbe     short loc_1403291C9

loc_14032916A:                          ; CODE XREF: FsRtlFastCheckLockForWrite+D2↑j
                                        ; FsRtlFastCheckLockForWrite+13D↓j ...
                lea     r8, [rsp+78h+arg_0]
                mov     rcx, rbp
                lea     rdx, [rsp+78h+var_48]
                call    sub_14036C5A0
                mov     sil, al
                cmp     al, bl
                jnz     short loc_1403291AB
                mov     [rsp+78h+var_50], r12
                lea     r8, [rsp+78h+arg_0]
                mov     r9d, r14d
                mov     [rsp+78h+var_58], r13
                lea     rdx, [rsp+78h+var_48]
                mov     rcx, rbp
                call    sub_14036BCC8
                mov     sil, al

loc_1403291AB:                          ; CODE XREF: FsRtlFastCheckLockForWrite+F4↑j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474701

loc_1403291C1:                          ; CODE XREF: FsRtlFastCheckLockForWrite+14B673↓j
                                        ; FsRtlFastCheckLockForWrite+14B67F↓j ...
                mov     bl, sil
                jmp     loc_14032910F
; ---------------------------------------------------------------------------

loc_1403291C9:                          ; CODE XREF: FsRtlFastCheckLockForWrite+D8↑j
                cmp     [rax+14h], r14d
                jnz     short loc_14032916A
                cmp     [rax+20h], r12
                jnz     short loc_14032916A
                cmp     byte ptr [rax+10h], 0
                jnz     loc_1403290F9
                jmp     short loc_14032916A
FsRtlFastCheckLockForWrite endp

; ---------------------------------------------------------------------------
algn_1403291E1:                         ; DATA XREF: .rdata:000000014007B744↑o
                                        ; .pdata:00000001400D5EA0↑o
                align 10h
; Exported entry 401. FsRtlCheckLockForReadAccess

; =============== S U B R O U T I N E =======================================


                public FsRtlCheckLockForReadAccess
FsRtlCheckLockForReadAccess proc near   ; DATA XREF: .pdata:00000001400D5EAC↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                mov     r9, [rcx+18h]
                mov     rsi, rcx
                test    r9, r9
                jz      short loc_140329272
                cmp     qword ptr [r9+28h], 0
                jz      short loc_140329272
                mov     rbx, [rdx+0B8h]
                mov     r8, [rbx+18h]
                mov     eax, [rbx+8]
                mov     [rsp+38h+arg_10], r8
                mov     [rsp+38h+arg_0], rax
                lea     rcx, [r8+rax]
                cmp     rcx, [r9]
                jbe     short loc_140329272
                mov     edi, [rbx+10h]
                mov     rcx, rdx
                mov     rbx, [rbx+30h]
                call    IoGetRequestorProcess
                mov     [rsp+38h+var_10], rax
                lea     r8, [rsp+38h+arg_0]
                mov     r9d, edi
                mov     [rsp+38h+var_18], rbx
                lea     rdx, [rsp+38h+arg_10]
                mov     rcx, rsi
                call    FsRtlFastCheckLockForRead

loc_140329261:                          ; CODE XREF: FsRtlCheckLockForReadAccess+84↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140329272:                          ; CODE XREF: FsRtlCheckLockForReadAccess+19↑j
                                        ; FsRtlCheckLockForReadAccess+20↑j ...
                mov     al, 1
                jmp     short loc_140329261
FsRtlCheckLockForReadAccess endp

; ---------------------------------------------------------------------------
algn_140329276:                         ; DATA XREF: .pdata:00000001400D5EAC↑o
                align 20h
; Exported entry 423. FsRtlFastCheckLockForRead

; =============== S U B R O U T I N E =======================================


                public FsRtlFastCheckLockForRead
FsRtlFastCheckLockForRead proc near     ; CODE XREF: FsRtlCheckLockForReadAccess+6C↑p
                                        ; DATA XREF: .rdata:000000014007B784↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140474770 SIZE 000000CA BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, [rcx+18h]
                mov     r12d, r9d
                test    rsi, rsi
                jz      short loc_1403292A9
                cmp     qword ptr [rsi+28h], 0
                jnz     short loc_1403292C8

loc_1403292A9:                          ; CODE XREF: FsRtlFastCheckLockForRead+20↑j
                                        ; FsRtlFastCheckLockForRead+4E↓j
                mov     eax, 1

loc_1403292AE:                          ; CODE XREF: FsRtlFastCheckLockForRead+E2↓j
                lea     r11, [rsp+68h+var_28]
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
                align 8

loc_1403292C8:                          ; CODE XREF: FsRtlFastCheckLockForRead+27↑j
                mov     rax, [r8]
                test    rax, rax
                jz      short loc_1403292A9
                mov     r14, [rdx]
                lea     r15, [rax-1]
                lea     rbp, [rsi+18h]
                mov     [rsp+68h+var_38], r14
                add     r15, r14
                mov     rcx, rbp
                mov     [rsp+68h+arg_0], r15
                call    KeAcquireSpinLockRaiseToDpc
                mov     ebx, 1
                movzx   edi, al
                cmp     r15, [rsi]
                jb      short loc_140329373
                mov     rdx, [rsp+68h+arg_20]
                mov     rcx, [rsp+68h+arg_28]
                mov     rax, [rdx+78h]
                test    rax, rax
                jz      short loc_140329321
                cmp     r14, [rax]
                jb      short loc_140329321
                cmp     r15, [rax+28h]
                jbe     short loc_140329367

loc_140329321:                          ; CODE XREF: FsRtlFastCheckLockForRead+94↑j
                                        ; FsRtlFastCheckLockForRead+99↑j ...
                mov     [rsp+68h+var_40], rcx
                lea     r8, [rsp+68h+arg_0]
                mov     [rsp+68h+var_48], rdx
                mov     r9d, r12d
                lea     rdx, [rsp+68h+var_38]
                mov     rcx, rbp
                call    sub_14036BCC8
                mov     rcx, rbp
                mov     sil, al
                call    KeReleaseSpinLockFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_1404747D4

loc_140329359:                          ; CODE XREF: FsRtlFastCheckLockForRead+14B556↓j
                                        ; FsRtlFastCheckLockForRead+14B563↓j ...
                mov     bl, sil

loc_14032935C:                          ; CODE XREF: FsRtlFastCheckLockForRead+103↓j
                                        ; FsRtlFastCheckLockForRead+14B4F2↓j ...
                mov     cr8, rdi
                mov     al, bl
                jmp     loc_1403292AE
; ---------------------------------------------------------------------------

loc_140329367:                          ; CODE XREF: FsRtlFastCheckLockForRead+9F↑j
                cmp     [rax+14h], r12d
                jnz     short loc_140329321
                cmp     [rax+20h], rcx
                jnz     short loc_140329321

loc_140329373:                          ; CODE XREF: FsRtlFastCheckLockForRead+7B↑j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14032935C
                jmp     loc_140474770
FsRtlFastCheckLockForRead endp

; ---------------------------------------------------------------------------
algn_14032938A:                         ; DATA XREF: .rdata:000000014007B784↑o
                                        ; .pdata:00000001400D5EB8↑o
                align 10h
; Exported entry 873. IoGetRequestorProcess

; =============== S U B R O U T I N E =======================================


                public IoGetRequestorProcess
IoGetRequestorProcess proc near         ; CODE XREF: FsRtlCheckLockForWriteAccess+6A↑p
                                        ; FsRtlCheckLockForReadAccess+4D↑p ...
                test    dword ptr [rcx+10h], 2000h
                mov     rdx, [rcx+98h]
                jnz     short loc_1403293B6
                test    rdx, rdx
                jz      short loc_1403293C0
                movzx   eax, byte ptr [rcx+46h]
                test    al, al
                jnz     short loc_1403293C4
                mov     rax, [rdx+220h]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403293B6:                          ; CODE XREF: IoGetRequestorProcess+E↑j
                mov     rax, [rcx+58h]
                and     rax, 0FFFFFFFFFFFFFFF9h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403293C0:                          ; CODE XREF: IoGetRequestorProcess+13↑j
                                        ; IoGetRequestorProcess+36↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403293C4:                          ; CODE XREF: IoGetRequestorProcess+1B↑j
                cmp     al, 1
                jnz     short loc_1403293C0
                mov     rax, [rdx+0B8h]
                retn
IoGetRequestorProcess endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403293D1:                         ; DATA XREF: .pdata:00000001400D5EC4↑o
                align 20h
; Exported entry 864. IoGetIoAttributionHandle

; =============== S U B R O U T I N E =======================================


                public IoGetIoAttributionHandle
IoGetIoAttributionHandle proc near      ; DATA XREF: .pdata:00000001400D5ED0↑o
                mov     rax, [rcx+0C8h]
                cmp     byte ptr [rcx+47h], 0
                jl      short loc_1403293F2
                test    rax, rax
                jnz     short loc_1403293F9

loc_1403293F2:                          ; CODE XREF: IoGetIoAttributionHandle+B↑j
                                        ; IoGetIoAttributionHandle+1D↓j
                mov     eax, 0C0000225h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403293F9:                          ; CODE XREF: IoGetIoAttributionHandle+10↑j
                test    byte ptr [rax+2], 40h
                jz      short loc_1403293F2
                mov     rax, [rcx+0C8h]
                mov     rcx, [rax+10h]
                xor     eax, eax
                mov     [rdx], rcx
                retn
IoGetIoAttributionHandle endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140329411:                         ; DATA XREF: .pdata:00000001400D5ED0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140329420   proc near               ; CODE XREF: sub_14021F420+840↑p
                                        ; sub_1402214C0+422↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047483A SIZE 00000122 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     esi, esi
                movzx   ebx, dl
                mov     r14, rcx
                lea     r15d, [rsi+2]

loc_140329444:                          ; CODE XREF: sub_140329420+EC↓j
                                        ; sub_140329420+14B519↓j ...
                mov     edi, [r14]
                test    edi, edi
                jns     short loc_1403294A6
                nop     dword ptr [rax+rax+00h]

loc_140329450:                          ; CODE XREF: sub_140329420+84↓j
                bt      edi, 1Eh
                jnb     loc_1403294EB

loc_14032945A:                          ; CODE XREF: sub_140329420+DA↓j
                cmp     bl, 0FFh
                jz      short loc_140329474
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047483A

loc_14032946D:                          ; CODE XREF: sub_140329420+14B41C↓j
                                        ; sub_140329420+14B428↓j ...
                movzx   eax, bl
                mov     cr8, rax

loc_140329474:                          ; CODE XREF: sub_140329420+3D↑j
                inc     esi
                test    cs:dword_140CFB240, esi
                jz      loc_1404748A3

loc_140329482:                          ; CODE XREF: sub_140329420+14B48B↓j
                                        ; sub_140329420+14B498↓j
                pause

loc_140329484:                          ; CODE XREF: sub_140329420+14B4A6↓j
                cmp     bl, 0FFh
                jz      short loc_14032949F
                mov     rbx, cr8
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404748CB

loc_14032949F:                          ; CODE XREF: sub_140329420+67↑j
                                        ; sub_140329420+14B4AD↓j ...
                mov     edi, [r14]

loc_1403294A2:                          ; CODE XREF: sub_140329420+E0↓j
                test    edi, edi
                js      short loc_140329450

loc_1403294A6:                          ; CODE XREF: sub_140329420+29↑j
                mov     rbp, gs:20h
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14047490E

loc_1403294BF:                          ; CODE XREF: sub_140329420+14B4F2↓j
                                        ; sub_140329420+14B501↓j ...
                lea     ecx, [rdi+1]
                mov     eax, edi
                btr     ecx, 1Eh
                lock cmpxchg [r14], ecx
                jnz     short loc_140329502
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403294EB:                          ; CODE XREF: sub_140329420+34↑j
                mov     ecx, edi
                mov     eax, edi
                bts     ecx, 1Eh
                lock cmpxchg [r14], ecx
                mov     edi, eax
                jz      loc_14032945A
                jmp     short loc_1403294A2
; ---------------------------------------------------------------------------

loc_140329502:                          ; CODE XREF: sub_140329420+AD↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_140329444
                jmp     loc_140474935
sub_140329420   endp

; ---------------------------------------------------------------------------
algn_140329517:                         ; DATA XREF: .rdata:000000014007B7B0↑o
                                        ; .pdata:00000001400D5EDC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140329520   proc near               ; DATA XREF: .rdata:000000014007B830↑o
                                        ; .pdata:00000001400D5EE8↑o ...

; FUNCTION CHUNK AT 000000014047495C SIZE 0000002D BYTES

                sub     rsp, 28h
                mov     eax, cs:dword_140CF49B8
                test    eax, eax
                jnz     loc_14047495C

loc_140329532:                          ; CODE XREF: sub_140329520+14B444↓j
                                        ; sub_140329520+14B458↓j ...
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140329520   endp

algn_14032953A:                         ; DATA XREF: .rdata:000000014007B830↑o
                                        ; .pdata:00000001400D5EE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140329540   proc near               ; DATA XREF: .rdata:000000014007B8C4↑o
                                        ; .pdata:00000001400D5EF4↑o ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014047498A SIZE 0000001A BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     ebp, 0FFFFFFFFh
                mov     [rsp+48h+arg_8], r15d
                mov     eax, ebp
                mov     rdi, r9
                mov     rsi, r8
                mov     r14, rdx
                lock xadd [r9], eax
                dec     eax
                mov     ebx, eax
                not     ebx
                and     ebx, 80000000h
                test    eax, 7FFFFFFFh
                jnz     loc_140329670
                mov     eax, [r9+4]
                or      eax, ebx
                mov     [r9], eax
                imul    r8, [rdx+8], 38h ; '8'
                mov     rdx, cs:qword_140C16980
                mov     rcx, [r14]
                call    memmove
                imul    r8, [r14+8], 38h ; '8'
                lea     r9, unk_140C16988
                mov     r10d, 4FFh
                add     r8, [r14]

loc_1403295B6:                          ; CODE XREF: sub_140329540+86↓j
                mov     rdx, [r9]
                test    rdx, rdx
                jnz     short loc_14032961B

loc_1403295BE:                          ; CODE XREF: sub_140329540+E1↓j
                                        ; sub_140329540+F6↓j
                add     r9, 8
                sub     r10, 1
                jnz     short loc_1403295B6
                mov     rax, [r14+18h]
                test    rax, rax
                jnz     loc_14047498A

loc_1403295D5:                          ; CODE XREF: sub_140329540+139↓j
                                        ; sub_140329540+14B45F↓j
                lock xadd [rdi], ebp
                dec     ebp
                mov     ebx, ebp
                not     ebx
                and     ebx, 80000000h
                test    ebp, 7FFFFFFFh
                jz      loc_14032968B
                mov     [rsp+48h+arg_18], r15d
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140329600:                          ; CODE XREF: sub_140329540+D9↓j
                mov     eax, [rdi]
                and     eax, 80000000h
                cmp     eax, ebx
                jz      loc_140329692
                lea     rcx, [rsp+48h+arg_18]
                call    sub_1402C8C70
                jmp     short loc_140329600
; ---------------------------------------------------------------------------

loc_14032961B:                          ; CODE XREF: sub_140329540+7C↑j
                mov     rax, [r14]
                cmp     rax, r8
                jz      short loc_1403295BE

loc_140329623:                          ; CODE XREF: sub_140329540+F4↓j
                mov     ecx, [rdx]
                test    ecx, ecx
                jnz     short loc_140329638

loc_140329629:                          ; CODE XREF: sub_140329540+128↓j
                add     rax, 38h ; '8'
                add     rdx, 38h ; '8'
                cmp     rax, r8
                jnz     short loc_140329623
                jmp     short loc_1403295BE
; ---------------------------------------------------------------------------

loc_140329638:                          ; CODE XREF: sub_140329540+E7↑j
                mov     rcx, [rdx+10h]
                add     [rax+10h], rcx
                mov     rcx, [rdx+18h]
                add     [rax+18h], rcx
                mov     rcx, [rdx+8]
                add     [rax+8], rcx
                mov     rcx, [rdx+28h]
                add     [rax+28h], rcx
                mov     rcx, [rdx+30h]
                add     [rax+30h], rcx
                mov     rcx, [rdx+20h]
                add     [rax+20h], rcx
                jmp     short loc_140329629
; ---------------------------------------------------------------------------
                align 10h

loc_140329670:                          ; CODE XREF: sub_140329540+3E↑j
                                        ; sub_140329540+149↓j
                mov     eax, [rdi]
                and     eax, 80000000h
                cmp     eax, ebx
                jz      loc_1403295D5
                lea     rcx, [rsp+48h+arg_8]
                call    sub_1402C8C70
                jmp     short loc_140329670
; ---------------------------------------------------------------------------

loc_14032968B:                          ; CODE XREF: sub_140329540+AB↑j
                mov     eax, [rdi+4]
                or      eax, ebx
                mov     [rdi], eax

loc_140329692:                          ; CODE XREF: sub_140329540+C9↑j
                lock dec dword ptr [rsi]
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140329540   endp

algn_1403296A7:                         ; DATA XREF: .rdata:000000014007B8C4↑o
                                        ; .pdata:00000001400D5EF4↑o
                align 10h
; Exported entry 1168. KeGetCurrentNodeNumber

; =============== S U B R O U T I N E =======================================


                public KeGetCurrentNodeNumber
KeGetCurrentNodeNumber proc near        ; CODE XREF: sub_1406573B0+B2↓p
                                        ; sub_140659560+2F3↓p ...
                mov     rax, gs:20h
                mov     rcx, [rax+0C0h]
                movzx   eax, word ptr [rcx+92h]
                retn
KeGetCurrentNodeNumber endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403296C9:                         ; DATA XREF: .pdata:00000001400D5F00↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403296D0   proc near               ; CODE XREF: sub_14023E510+A77↑p
                                        ; sub_1402B938C+17B↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 00000001404749A4 SIZE 00000147 BYTES

                push    rbx
                push    rbp
                push    rdi
                push    r15
                sub     rsp, 28h
                mov     eax, [rdx+78h]
                mov     r15d, r9d
                movsxd  rbp, r8d
                mov     rbx, rdx
                mov     rdi, rcx
                bt      eax, 16h
                jb      loc_1404749A4

loc_1403296F3:                          ; CODE XREF: sub_1403296D0+14B2E5↓j
                                        ; DATA XREF: .rdata:000000014007B8EC↑o ...
                mov     [rsp+48h+arg_0], rsi
                mov     [rsp+48h+var_28], r14
                bt      eax, 16h
                jb      loc_1404749BA

loc_140329707:                          ; CODE XREF: sub_1403296D0+14B306↓j
                                        ; sub_1403296D0+14B367↓j ...
                test    dword ptr [rbx+78h], 2000h
                mov     rcx, [rdi+8440h]
                jz      loc_14032981B
                test    rcx, rcx
                jz      loc_14032981B
                mov     rax, [rbx+240h]
                and     rax, rcx
                cmp     [rsp+48h+arg_20], 0
                jnz     loc_14032981B
                cmp     rax, rcx
                jnz     loc_14032981B
                mov     r14, [rdi+8448h]
                lea     rsi, [rbp+1]
                shl     rsi, 4

loc_140329751:                          ; DATA XREF: .rdata:000000014007B900↑o
                                        ; .rdata:000000014007B914↑o ...
                mov     [rsp+48h+arg_10], r13
                add     rsi, r14
                mov     r13, gs:20h
                mov     [rsp+48h+arg_8], 0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_140474A54

loc_14032977A:                          ; CODE XREF: sub_1403296D0+1FE↓j
                                        ; sub_1403296D0+14B389↓j ...
                lock bts qword ptr [r14], 0
                jb      loc_1403298A2
                mov     r13, [rsp+48h+arg_10]
                lea     rax, [rbx+0D8h]
                test    r15d, r15d
                jnz     loc_14032987B

loc_14032979B:                          ; DATA XREF: .pdata:00000001400D5F24↑o
                                        ; .pdata:00000001400D5F30↑o
                mov     rcx, [rsi+8]
                cmp     [rcx], rsi
                jnz     loc_140474AE4
                mov     [rax], rsi
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [rsi+8], rax

loc_1403297B6:                          ; CODE XREF: sub_1403296D0+1CD↓j
                mov     eax, [r14+8]
                bts     eax, ebp
                mov     [r14+8], eax
                mov     eax, [rbx+218h]
                bts     eax, 1Fh
                mov     [rbx+218h], eax
                inc     dword ptr [r14+260h]
                mov     eax, [rbx+54h]
                mov     [rbx+620h], eax
                add     [r14+268h], rax
                lock and qword ptr [r14], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140474AC0

loc_140329806:                          ; CODE XREF: sub_1403296D0+1A9↓j
                                        ; sub_1403296D0+14B3F4↓j ...
                mov     r14, [rsp+48h+var_28]
                mov     rsi, [rsp+48h+arg_0]
                add     rsp, 28h
                pop     r15
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14032981A  db 0CCh                 ; DATA XREF: .pdata:00000001400D5F30↑o
                                        ; .pdata:00000001400D5F3C↑o
; ---------------------------------------------------------------------------

loc_14032981B:                          ; CODE XREF: sub_1403296D0+45↑j
                                        ; sub_1403296D0+4E↑j ...
                lea     rax, [rbp+7C8h]
                shl     rax, 4
                lea     rcx, [rbx+0D8h]
                add     rax, rdi
                test    r15d, r15d
                jnz     loc_1403298D9
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_140474AE4
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx

loc_140329854:                          ; CODE XREF: sub_1403296D0+22B↓j
                mov     eax, [rdi+7C18h]
                inc     dword ptr [rdi+7EB4h]
                bts     eax, ebp
                mov     [rdi+7C18h], eax
                mov     eax, [rbx+54h]
                mov     [rbx+620h], eax
                add     [rdi+7EB8h], rax
                jmp     short loc_140329806
; ---------------------------------------------------------------------------

loc_14032987B:                          ; CODE XREF: sub_1403296D0+C5↑j
                mov     rcx, [rsi]
                cmp     [rcx+8], rsi
                jnz     loc_140474AE4
                mov     [rax], rcx
                mov     [rax+8], rsi
                mov     [rcx+8], rax
                mov     [rsi], rax
                btr     [rdi+7C1Ch], ebp
                jmp     loc_1403297B6
; ---------------------------------------------------------------------------

loc_1403298A2:                          ; CODE XREF: sub_1403296D0+B0↑j
                                        ; DATA XREF: .pdata:00000001400D5F48↑o ...
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_140474A7C

loc_1403298B2:                          ; CODE XREF: sub_1403296D0+1F2↓j
                                        ; sub_1403296D0+14B3B1↓j ...
                lea     rcx, [rsp+48h+arg_8]
                call    sub_1402C8C70
                mov     rax, [r14]
                test    rax, rax
                jnz     short loc_1403298B2
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jz      loc_14032977A
                jmp     loc_140474AA4
; ---------------------------------------------------------------------------

loc_1403298D9:                          ; CODE XREF: sub_1403296D0+163↑j
                                        ; DATA XREF: .pdata:00000001400D5F54↑o ...
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     loc_140474AE4
                mov     [rcx], rdx
                mov     [rcx+8], rax
                mov     [rdx+8], rcx
                mov     [rax], rcx
                bts     [rdi+7C1Ch], ebp
                jmp     loc_140329854
sub_1403296D0   endp

; ---------------------------------------------------------------------------
byte_140329900  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400D5F60↑o

; =============== S U B R O U T I N E =======================================


sub_140329910   proc near               ; DATA XREF: .rdata:000000014007B9E8↑o
                                        ; .pdata:00000001400D5F6C↑o ...

; FUNCTION CHUNK AT 0000000140474AEC SIZE 0000002D BYTES

                sub     rsp, 28h
                mov     eax, cs:dword_140CF49B8
                test    eax, eax
                jnz     loc_140474AEC

loc_140329922:                          ; CODE XREF: sub_140329910+14B1E4↓j
                                        ; sub_140329910+14B1F8↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140329910   endp

algn_140329928:                         ; DATA XREF: .rdata:000000014007B9E8↑o
                                        ; .pdata:00000001400D5F6C↑o
                align 10h
; Exported entry 898. IoIsOperationSynchronous

; =============== S U B R O U T I N E =======================================


                public IoIsOperationSynchronous
IoIsOperationSynchronous proc near      ; CODE XREF: sub_14061ADE0+E4↓p
                                        ; sub_14061ADE0+317↓p ...
                mov     r8d, [rcx+10h]
                mov     eax, r8d
                mov     rcx, [rcx+0B8h]
                and     eax, 42h
                mov     rdx, [rcx+30h]
                test    byte ptr [rdx+50h], 2
                setz    dl
                test    r8b, 4
                setz    cl
                test    cl, dl
                jz      short loc_140329960
                cmp     eax, 42h ; 'B'
                jz      short loc_140329960

loc_14032995C:                          ; CODE XREF: IoIsOperationSynchronous+33↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140329960:                          ; CODE XREF: IoIsOperationSynchronous+25↑j
                                        ; IoIsOperationSynchronous+2A↑j
                cmp     eax, 2
                jz      short loc_14032995C
                mov     al, 1
                retn
IoIsOperationSynchronous endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140329969:                         ; DATA XREF: .pdata:00000001400D5F78↑o
                align 10h
; Exported entry 2323. RtlOwnerAcesPresent

; =============== S U B R O U T I N E =======================================



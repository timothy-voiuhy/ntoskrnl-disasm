IoCsqRemoveIrp  proc near               ; DATA XREF: .rdata:000000014009B860↑o
                                        ; .pdata:00000001400DCE18↑o

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A0E4E SIZE 00000014 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+20h]
                mov     rsi, rdx
                and     qword ptr [rcx+38h], 0
                lea     rdx, [rsp+28h+arg_0]
                mov     rbx, rcx
                mov     [rsp+28h+arg_0], 0
                call    sub_1404079D0
                mov     rdi, [rsi+8]
                mov     rcx, rbx
                test    rdi, rdi
                jz      loc_1404A0E4E
                xor     eax, eax
                xchg    rax, [rdi+68h]
                test    rax, rax
                jz      loc_1404A0E4E
                mov     rax, [rbx+10h]
                mov     rdx, rdi
                call    sub_1404079D0
                and     qword ptr [rsi+8], 0
                mov     rcx, rbx
                and     qword ptr [rdi+90h], 0
                mov     rax, [rbx+28h]
                mov     dl, [rsp+28h+arg_0]
                call    sub_1404079D0
                mov     rax, rdi

loc_140399E18:                          ; CODE XREF: IoCsqRemoveIrp+1070BD↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCsqRemoveIrp  endp

algn_140399E29:                         ; DATA XREF: .rdata:000000014009B860↑o
                                        ; .pdata:00000001400DCE18↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140399E30   proc near               ; CODE XREF: NtSetInformationThread+C88↓p
                                        ; NtQueryInformationProcess+392C↓p ...
                sub     rsp, 28h
                dec     word ptr [rdx+1E4h]
                add     rcx, 438h
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140399E30   endp

byte_140399E4F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCE24↑o

; =============== S U B R O U T I N E =======================================


sub_140399E58   proc near               ; CODE XREF: sub_14077EDE0+4↓p
                                        ; DATA XREF: .rdata:000000014009B8F8↑o ...

var_88          = qword ptr -88h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_58          = qword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_36          = byte ptr -36h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_8           = byte ptr -8

; FUNCTION CHUNK AT 00000001404A0E62 SIZE 00000014 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 0A0h
                mov     rbx, rcx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-70h], xmm0
                xor     esi, esi
                mov     [rax-78h], rsi
                xor     edx, edx
                lea     r8d, [rsi+50h]
                lea     rcx, [rax-58h]
                call    memset
                test    rbx, rbx
                jz      loc_1404A0E62
                mov     rdi, gs:188h
                mov     dl, [rdi+232h]
                test    dl, dl
                jz      loc_14039A01E
                mov     rcx, cs:qword_140D2E738
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1404A0E6C
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_14039A038

loc_140399ECB:                          ; DATA XREF: .rdata:000000014009B8E4↑o
;   __try { // __except at loc_140399F50
                mov     r8, 7FFFFFFF0000h
                mov     rax, r8
                cmp     rbx, r8
                cmovb   rax, rbx
                mov     edx, [rax]
                mov     dword ptr [rsp+0A8h+var_70], edx
                mov     rcx, [rax+8]
                mov     qword ptr [rsp+0A8h+var_70+8], rcx
                test    dx, dx
                jz      short loc_140399F15
                test    cl, 1
                jnz     short loc_140399F1F
                movzx   edx, dx
                add     rdx, rcx
                cmp     rdx, r8
                ja      short loc_140399F08
                cmp     rdx, rcx
                jnb     short loc_140399F24

loc_140399F08:                          ; CODE XREF: sub_140399E58+A9↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140399F24
; ---------------------------------------------------------------------------

loc_140399F15:                          ; CODE XREF: sub_140399E58+99↑j
                mov     eax, 0C000000Dh
                jmp     loc_14039A008
; ---------------------------------------------------------------------------

loc_140399F1F:                          ; CODE XREF: sub_140399E58+9E↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140399F24:                          ; CODE XREF: sub_140399E58+AE↑j
                                        ; sub_140399E58+BB↑j
                movzx   edx, word ptr [rsp+0A8h+var_70]
                call    sub_1403CAB7C
                mov     rbx, rax
                mov     [rsp+0A8h+var_78], rax
                movzx   r8d, word ptr [rsp+0A8h+var_70]
                mov     rdx, qword ptr [rsp+0A8h+var_70+8]
                mov     rcx, rax
                call    memmove
                mov     qword ptr [rsp+0A8h+var_70+8], rbx
                jmp     short loc_140399F6A
;   } // starts at 140399ECB
; ---------------------------------------------------------------------------

loc_140399F50:                          ; DATA XREF: .rdata:000000014009B8E4↑o
;   __except(1) // owned by 140399ECB
                mov     ebx, eax
                mov     rcx, [rsp+0A8h+var_78]
                test    rcx, rcx
                jz      short loc_140399F63
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140399F63:                          ; CODE XREF: sub_140399E58+102↑j
                mov     eax, ebx
                jmp     loc_14039A008
; ---------------------------------------------------------------------------

loc_140399F6A:                          ; CODE XREF: sub_140399E58+F6↑j
                                        ; sub_140399E58+1D4↓j
                mov     [rsp+0A8h+var_36], 6
                mov     [rsp+0A8h+var_34], esi
                lea     rax, [rsp+0A8h+var_30]
                mov     [rsp+0A8h+var_28], rax
                lea     rax, [rsp+0A8h+var_30]
                mov     [rsp+0A8h+var_30], rax
                mov     [rsp+0A8h+var_20], rsi
                lea     rax, [rsp+0A8h+var_70]
                mov     [rsp+0A8h+var_18], rax
                mov     rax, cs:PsInitialSystemProcess
                lea     rcx, [rsp+0A8h+var_58]
                cmp     [rdi+0B8h], rax
                jz      short loc_14039A031
                lea     rax, sub_14077EE00
                mov     [rsp+0A8h+var_48], rax
                lea     rax, [rsp+0A8h+var_58]
                mov     [rsp+0A8h+var_40], rax
                mov     [rsp+0A8h+var_58], rsi
                mov     edx, 1
                call    ExQueueWorkItem
                mov     [rsp+0A8h+var_88], rsi
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+6]
                lea     rcx, [rsp+0A8h+var_38]
                call    KeWaitForSingleObject

loc_140399FF2:                          ; CODE XREF: sub_140399E58+1DE↓j
                test    rbx, rbx
                jz      short loc_14039A001
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14039A001:                          ; CODE XREF: sub_140399E58+19D↑j
                mov     eax, [rsp+0A8h+var_10]

loc_14039A008:                          ; CODE XREF: sub_140399E58+C2↑j
                                        ; sub_140399E58+10D↑j ...
                lea     r11, [rsp+0A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039A01E:                          ; CODE XREF: sub_140399E58+4C↑j
                movups  xmm0, xmmword ptr [rbx]
                movdqu  [rsp+0A8h+var_70], xmm0
                mov     rbx, [rsp+0A8h+var_78]
                jmp     loc_140399F6A
; ---------------------------------------------------------------------------

loc_14039A031:                          ; CODE XREF: sub_140399E58+15A↑j
                call    sub_14077EE00
                jmp     short loc_140399FF2
; ---------------------------------------------------------------------------

loc_14039A038:                          ; CODE XREF: sub_140399E58+6D↑j
                xor     eax, eax
                jmp     short loc_14039A008
; } // starts at 140399E58
sub_140399E58   endp

; ---------------------------------------------------------------------------
byte_14039A03C  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009B8F8↑o
                                        ; .pdata:00000001400DCE30↑o

; =============== S U B R O U T I N E =======================================


sub_14039A044   proc near               ; CODE XREF: IoRegisterFileSystem+32↓p
                                        ; IoRegisterFileSystem+E3↓p ...
                push    rbx
                sub     rsp, 20h
                mov     bl, cl
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     dl, al
                mov     cs:byte_140C505B4, bl
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039A044   endp

algn_14039A06F:                         ; DATA XREF: .pdata:00000001400DCE3C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039A080   proc near               ; DATA XREF: .pdata:00000001400DCE48↑o
                                        ; sub_140A672BC+60↓o

; FUNCTION CHUNK AT 00000001404A0E76 SIZE 0000000B BYTES
; FUNCTION CHUNK AT 00000001404A0E82 SIZE 0000000C BYTES

                sub     edx, 1
                jnz     short loc_14039A090
                movzx   edx, cx
                in      al, dx
                mov     [r8], al

loc_14039A08C:                          ; CODE XREF: sub_14039A080+22↓j
                                        ; sub_14039A080+106E09↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14039A090:                          ; CODE XREF: sub_14039A080+3↑j
                sub     edx, 1
                jnz     loc_1404A0E76
                movzx   edx, cx
                in      ax, dx
                mov     [r8], ax
                jmp     short loc_14039A08C
sub_14039A080   endp

; ---------------------------------------------------------------------------
byte_14039A0A4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCE48↑o

; =============== S U B R O U T I N E =======================================


sub_14039A0AC   proc near               ; CODE XREF: sub_1403927F4+33↑p
                                        ; sub_140A51810+F6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A0E8E SIZE 00000072 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r13, rcx
                mov     rsi, r8
                lea     rcx, [rdx+10h]
                mov     rdi, rdx
                call    ExAcquireSpinLockExclusive
                test    byte ptr [rdi+8], 1
                mov     rbx, [rdi]
                movzx   r14d, al
                jz      short loc_14039A0EF
                test    rbx, rbx
                jz      short loc_14039A0EF
                xor     rbx, rdi

loc_14039A0EF:                          ; CODE XREF: sub_14039A0AC+39↑j
                                        ; sub_14039A0AC+3E↑j
                movzx   ebp, byte ptr [rdi+8]
                xor     r8b, r8b
                and     ebp, 1
                test    rbx, rbx
                jz      short loc_14039A144

loc_14039A0FE:                          ; CODE XREF: sub_14039A0AC+7A↓j
                mov     rdx, rbx
                lea     rcx, [rsi+18h]
                call    sub_140379FB8
                test    eax, eax
                js      short loc_14039A128
                mov     rax, [rbx+8]
                test    ebp, ebp
                jz      short loc_14039A11E
                test    rax, rax
                jz      short loc_14039A141
                xor     rax, rbx

loc_14039A11E:                          ; CODE XREF: sub_14039A0AC+68↑j
                test    rax, rax
                jz      short loc_14039A141

loc_14039A123:                          ; CODE XREF: sub_14039A0AC+8E↓j
                mov     rbx, rax
                jmp     short loc_14039A0FE
; ---------------------------------------------------------------------------

loc_14039A128:                          ; CODE XREF: sub_14039A0AC+60↑j
                mov     rax, [rbx]
                test    ebp, ebp
                jz      short loc_14039A137
                test    rax, rax
                jz      short loc_14039A13C
                xor     rax, rbx

loc_14039A137:                          ; CODE XREF: sub_14039A0AC+81↑j
                test    rax, rax
                jnz     short loc_14039A123

loc_14039A13C:                          ; CODE XREF: sub_14039A0AC+86↑j
                xor     r8b, r8b
                jmp     short loc_14039A144
; ---------------------------------------------------------------------------

loc_14039A141:                          ; CODE XREF: sub_14039A0AC+6D↑j
                                        ; sub_14039A0AC+75↑j
                mov     r8b, 1

loc_14039A144:                          ; CODE XREF: sub_14039A0AC+50↑j
                                        ; sub_14039A0AC+93↑j
                mov     r9, rsi
                mov     rdx, rbx
                mov     rcx, rdi
                call    RtlRbInsertNodeEx
                mov     rcx, [rdi+18h]
                test    rcx, rcx
                jz      short loc_14039A1CC
                mov     eax, [rsi+84h]
                cmp     [rcx+84h], eax
                ja      loc_1404A0E8E

loc_14039A16D:                          ; CODE XREF: sub_14039A0AC+124↓j
                                        ; sub_14039A0AC+106DE4↓j
                mov     eax, [rsi+84h]
                mov     ecx, 200h
                add     [rdi+20h], rax
                mov     eax, ecx
                inc     qword ptr [rdi+28h]
                lock xadd [r13+1DD0h], rax
                cmp     [rsi+84h], ecx
                jz      short loc_14039A1D2

loc_14039A193:                          ; CODE XREF: sub_14039A0AC+135↓j
                lea     rcx, [rdi+10h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A0E9B

loc_14039A1AA:                          ; CODE XREF: sub_14039A0AC+106DF1↓j
                                        ; sub_14039A0AC+106DFD↓j ...
                mov     cr8, r14
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
                align 4

loc_14039A1CC:                          ; CODE XREF: sub_14039A0AC+AD↑j
                                        ; sub_14039A0AC+106DEA↓j
                mov     [rdi+18h], rsi
                jmp     short loc_14039A16D
; ---------------------------------------------------------------------------

loc_14039A1D2:                          ; CODE XREF: sub_14039A0AC+E5↑j
                mov     cl, 1
                call    sub_140212F34
                mov     [rdi+68h], rax
                or      dword ptr [rdi+38h], 1
                jmp     short loc_14039A193
sub_14039A0AC   endp

; ---------------------------------------------------------------------------
algn_14039A1E3:                         ; DATA XREF: .rdata:000000014009B9D8↑o
                                        ; .pdata:00000001400DCE54↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=90h

sub_14039A1F0   proc near               ; DATA XREF: .rdata:000000014009BA38↑o
                                        ; .pdata:00000001400DCE60↑o ...

var_170         = qword ptr -170h
var_168         = dword ptr -168h
var_160         = qword ptr -160h
var_158         = dword ptr -158h
var_150         = qword ptr -150h
var_148         = dword ptr -148h
var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_110         = byte ptr -110h
var_10F         = byte ptr -10Fh
var_10E         = byte ptr -10Eh
var_10D         = byte ptr -10Dh
var_10C         = byte ptr -10Ch
var_10B         = byte ptr -10Bh
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = qword ptr -0D8h
var_D0          = byte ptr -0D0h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404A0F00 SIZE 000000F9 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-70h]
                sub     rsp, 170h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+90h+var_30], rax
                xor     esi, esi
                mov     dword ptr [rbp+90h+var_F0], 9Ch
                lea     rax, [rbp+90h+var_D0]
                mov     [rbp+90h+var_DC], esi
                lea     r9, [rcx+38h]
                mov     [rbp+90h+var_FC], esi
                lea     r8, aCcupdatedynami ; "CcUpdateDynamicRegistrySettings: Updati"...
                mov     [rbp+90h+var_108], rax
                lea     edx, [rsi+2]
                mov     [rbp+90h+var_110], sil
                lea     ecx, [rsi+7Fh]
                movzx   edi, sil
                mov     r12d, esi
                mov     [rbp+90h+var_E8], esi
                mov     [rbp+90h+var_10C], sil
                mov     ebx, esi
                mov     [rbp+90h+var_10F], sil
                mov     r13d, esi
                mov     [rbp+90h+var_10E], sil
                mov     r15d, esi
                mov     [rbp+90h+var_10D], sil
                mov     r14d, esi
                mov     [rbp+90h+var_10B], sil
                call    DbgPrintEx
                lea     rax, aRegistryMachin_0 ; "\\Registry\\Machine\\System\\CurrentCon"...
                mov     [rbp+90h+var_E0], 0AA00A8h
                mov     [rbp+90h+var_D8], rax
                lea     r9, [rbp+90h+var_108]
                lea     rax, aTopbottomdpteq ; "TopBottomDPTEqual"
                mov     [rbp+90h+var_100], 240022h
                mov     [rbp+90h+var_F8], rax
                lea     r8, [rbp+90h+var_F0]
                lea     rax, [rbp+90h+var_110]
                lea     rdx, [rbp+90h+var_100]
                mov     [rsp+190h+var_170], rax
                lea     rcx, [rbp+90h+var_E0]
                call    sub_14039A500
                lea     edx, [rsi+1]
                test    eax, eax
                jns     loc_1404A0F00

loc_14039A2C9:                          ; CODE XREF: sub_14039A1F0+106D22↓j
                lea     rax, aLazywriterperc ; "LazyWriterPercentageOfNumProcs"
                mov     [rbp+90h+var_100], 3E003Ch
                mov     [rbp+90h+var_F8], rax
                lea     r9, [rbp+90h+var_108]
                lea     rax, [rbp+90h+var_110]
                lea     r8, [rbp+90h+var_F0]
                mov     [rsp+190h+var_170], rax
                lea     rdx, [rbp+90h+var_100]
                lea     rcx, [rbp+90h+var_E0]
                call    sub_14039A500
                test    eax, eax
                jns     loc_1404A0F17

loc_14039A301:                          ; CODE XREF: sub_14039A1F0+106D38↓j
                lea     rax, aLargewritesize ; "LargeWriteSize"
                mov     [rbp+90h+var_100], 1E001Ch
                mov     [rbp+90h+var_F8], rax
                lea     r9, [rbp+90h+var_108]
                lea     rax, [rbp+90h+var_110]
                lea     r8, [rbp+90h+var_F0]
                mov     [rsp+190h+var_170], rax
                lea     rdx, [rbp+90h+var_100]
                lea     rcx, [rbp+90h+var_E0]
                call    sub_14039A500
                test    eax, eax
                jns     loc_1404A0F2D

loc_14039A339:                          ; CODE XREF: sub_14039A1F0+106D4B↓j
                lea     rax, aSoftthrottlela ; "SoftThrottleLargeWriteAtPct"
                mov     [rbp+90h+var_100], 380036h
                mov     [rbp+90h+var_F8], rax
                lea     r9, [rbp+90h+var_108]
                lea     rax, [rbp+90h+var_110]
                lea     r8, [rbp+90h+var_F0]
                mov     [rsp+190h+var_170], rax
                lea     rdx, [rbp+90h+var_100]
                lea     rcx, [rbp+90h+var_E0]
                call    sub_14039A500
                test    eax, eax
                jns     loc_1404A0F40

loc_14039A371:                          ; CODE XREF: sub_14039A1F0+106D5F↓j
                lea     rax, aSoftthrottlede ; "SoftThrottleDelayInMs"
                mov     [rbp+90h+var_100], 2C002Ah
                mov     [rbp+90h+var_F8], rax
                lea     r9, [rbp+90h+var_108]
                lea     rax, [rbp+90h+var_110]
                lea     r8, [rbp+90h+var_F0]
                mov     [rsp+190h+var_170], rax
                lea     rdx, [rbp+90h+var_100]
                lea     rcx, [rbp+90h+var_E0]
                call    sub_14039A500
                test    eax, eax
                jns     loc_1404A0F54

loc_14039A3A9:                          ; CODE XREF: sub_14039A1F0+106D73↓j
                lea     rax, aMaxlazywritepa ; "MaxLazyWritePages"
                mov     [rbp+90h+var_100], 240022h
                mov     [rbp+90h+var_F8], rax
                lea     r9, [rbp+90h+var_108]
                lea     rax, [rbp+90h+var_110]
                lea     r8, [rbp+90h+var_F0]
                mov     [rsp+190h+var_170], rax
                lea     rdx, [rbp+90h+var_100]
                lea     rcx, [rbp+90h+var_E0]
                call    sub_14039A500
                mov     rsi, [rbp+90h+var_108]
                lea     r8, aNotFound   ; "not found"
                xor     r11d, r11d
                mov     [rbp+90h+var_F0], r8
                lea     rcx, aValid     ; "valid"
                test    eax, eax
                jns     loc_1404A0F68
                mov     rdx, r8

loc_14039A3FD:                          ; CODE XREF: sub_14039A1F0+106D86↓j
                cmp     [rbp+90h+var_10D], r11b
                lea     rax, aNotFound  ; "not found"
                mov     [rsp+190h+var_120], rdx
                mov     r10, rcx
                cmovz   r10, r8
                mov     [rsp+190h+var_128], r14d
                cmp     [rbp+90h+var_10E], r11b
                mov     r9, rcx
                mov     [rsp+190h+var_130], r10
                mov     edx, 2
                cmovz   r9, r8
                mov     [rsp+190h+var_138], r15d
                cmp     [rbp+90h+var_10F], r11b
                mov     r8, rcx
                mov     [rsp+190h+var_140], r9
                mov     r9d, r12d
                cmovz   r8, rax
                mov     [rsp+190h+var_148], r13d
                cmp     [rbp+90h+var_10C], r11b
                mov     rax, rcx
                mov     [rsp+190h+var_150], r8
                lea     r11, aNotFound  ; "not found"
                cmovz   rax, [rbp+90h+var_F0]
                lea     r8, aCcupdatedynami_0 ; "CcUpdateDynamicRegistrySettings: \n\tTo"...
                mov     [rsp+190h+var_158], ebx
                test    dil, dil
                mov     [rsp+190h+var_160], rax
                mov     eax, [rbp+90h+var_E8]
                cmovz   rcx, r11
                mov     [rsp+190h+var_168], eax
                mov     [rsp+190h+var_170], rcx
                lea     ecx, [rdx+7Dh]
                call    DbgPrintEx
                xor     edx, edx
                cmp     [rbp+90h+var_110], dl
                jnz     loc_1404A0F7B

loc_14039A499:                          ; CODE XREF: sub_14039A1F0+106D9A↓j
                test    dil, dil
                jnz     short loc_14039A4F0

loc_14039A49E:                          ; CODE XREF: sub_14039A1F0+307↓j
                cmp     [rbp+90h+var_10F], dl
                jnz     loc_1404A0F8F

loc_14039A4A7:                          ; CODE XREF: sub_14039A1F0+106DB0↓j
                                        ; sub_14039A1F0+106DBC↓j
                cmp     [rbp+90h+var_10E], dl
                jnz     loc_1404A0FB1

loc_14039A4B0:                          ; CODE XREF: sub_14039A1F0+106DD4↓j
                cmp     [rbp+90h+var_10D], dl
                jnz     loc_1404A0FC9

loc_14039A4B9:                          ; CODE XREF: sub_14039A1F0+106DDC↓j
                                        ; sub_14039A1F0+106DE9↓j
                cmp     [rbp+90h+var_10B], dl
                jnz     loc_1404A0FDE

loc_14039A4C2:                          ; CODE XREF: sub_14039A1F0+106DF7↓j
                                        ; sub_14039A1F0+106E04↓j
                mov     rcx, [rbp+90h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+190h+var_20]
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
                align 10h

loc_14039A4F0:                          ; CODE XREF: sub_14039A1F0+2AC↑j
                mov     cs:dword_140CF4A54, r12d
                jmp     short loc_14039A49E
; } // starts at 14039A1F0
sub_14039A1F0   endp

; ---------------------------------------------------------------------------
algn_14039A4F9:                         ; DATA XREF: .rdata:000000014009BA38↑o
                                        ; .pdata:00000001400DCE60↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14039A500   proc near               ; CODE XREF: sub_14039A1F0+C9↑p
                                        ; sub_14039A1F0+104↑p ...

var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = dword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_20          = qword ptr  50h

; FUNCTION CHUNK AT 00000001404A0FFA SIZE 0000007E BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                and     [rbp+var_40], 0
                mov     r14, r8
                and     [rbp+arg_0], 0
                lea     r8, [rbp+var_38]
                and     [rbp+var_34], 0
                mov     r12, rdx
                and     [rbp+var_1C], 0
                xorps   xmm0, xmm0
                and     [rbp+var_30], 0
                mov     edx, 20019h
                mov     [rbp+var_28], rcx
                mov     rsi, r9
                lea     rcx, [rbp+var_40]
                mov     [rbp+var_38], 30h ; '0'
                movdqu  [rbp+var_18], xmm0
                mov     [rbp+var_20], 240h
                call    ZwOpenKey
                test    eax, eax
                js      short loc_14039A5C8
                test    r12, r12
                jz      loc_1404A0FFA
                mov     edi, [r14]
                mov     rbx, [rsi]
                mov     r15, [rbp+arg_20]

loc_14039A57B:                          ; CODE XREF: sub_14039A500+106B55↓j
                mov     rcx, [rbp+var_40]
                lea     rax, [rbp+arg_0]
                mov     [rsp+70h+var_48], rax
                mov     r9, rbx
                mov     r8d, 1
                mov     [rsp+70h+var_50], edi
                mov     rdx, r12
                call    ZwQueryValueKey
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jz      loc_1404A100A
                cmp     eax, 80000005h
                jz      loc_1404A100A

loc_14039A5B5:                          ; CODE XREF: sub_14039A500+106B0D↓j
                                        ; sub_14039A500+106B5F↓j
                mov     rcx, [rbp+var_40]
                call    ZwClose
                test    ebx, ebx
                jns     loc_1404A1064

loc_14039A5C6:                          ; CODE XREF: sub_14039A500+106B73↓j
                mov     eax, ebx

loc_14039A5C8:                          ; CODE XREF: sub_14039A500+66↑j
                                        ; sub_14039A500+106B05↓j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039A500   endp

algn_14039A5E2:                         ; DATA XREF: .rdata:000000014009BA64↑o
                                        ; .pdata:00000001400DCE6C↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3D0h

sub_14039A5E8   proc near               ; CODE XREF: sub_14032FC40+57B↑p
                                        ; DATA XREF: .rdata:000000014009BA9C↑o ...

var_4B0         = qword ptr -4B0h
var_4A8         = dword ptr -4A8h
var_4A0         = qword ptr -4A0h
var_498         = word ptr -498h
var_490         = dword ptr -490h
var_48C         = dword ptr -48Ch
var_488         = dword ptr -488h
var_484         = dword ptr -484h
var_480         = dword ptr -480h
var_47C         = dword ptr -47Ch
var_478         = qword ptr -478h
var_470         = qword ptr -470h
var_460         = qword ptr -460h
var_458         = qword ptr -458h
var_450         = qword ptr -450h
var_448         = qword ptr -448h
var_440         = qword ptr -440h
var_438         = qword ptr -438h
var_160         = byte ptr -160h
var_20          = qword ptr -20h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 00000001404A1078 SIZE 00000218 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-3D8h]
                sub     rsp, 4C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3D0h+var_20], rax
                xor     r14d, r14d
                mov     rbx, rcx
                cmp     [rcx+0D0h], r14d
                jnz     short loc_14039A670
                mov     eax, [rcx+228h]
                mov     [rsp+4D0h+var_48C], eax
                mov     eax, [rcx+234h]
                mov     [rsp+4D0h+var_488], eax
                mov     eax, cs:dword_140CED2CC
                test    eax, eax
                jnz     loc_1404A1078

loc_14039A64C:                          ; CODE XREF: sub_14039A5E8+106AD6↓j
                cmp     cs:byte_140C54300, r14b
                jz      short loc_14039A670
                mov     rcx, cs:qword_140C20550
                lea     rdx, qword_14000CD98
                call    EtwEventEnabled
                test    al, al
                jnz     loc_1404A10C3

loc_14039A670:                          ; CODE XREF: sub_14039A5E8+40↑j
                                        ; sub_14039A5E8+6B↑j ...
                mov     rcx, [rbp+3D0h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+4D0h+var_10]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14039A5E8
sub_14039A5E8   endp

byte_14039A69D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014009BA9C↑o
                                        ; .pdata:00000001400DCE78↑o

; =============== S U B R O U T I N E =======================================


sub_14039A6A4   proc near               ; CODE XREF: sub_140330BF0+18D↑p
                                        ; DATA XREF: .pdata:00000001400DCE84↑o

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                lea     rax, [rdx+68h]
                mov     dword ptr [rdx+58h], 200h
                mov     [rdx+60h], rax
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                mov     rax, 0FFFFFA8000000000h
                mov     r9, r8
                sub     r9, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    r9
                mov     rbx, rdx
                sar     rbx, 3
                mov     rax, rbx
                shr     rax, 3Fh
                add     rbx, rax
                mov     rcx, rbx
                call    sub_14027DEC0
                mov     r13d, 1
                mov     ecx, [rax+8]
                mov     rax, [rsi+60h]
                mov     [rsi+0B8h], ecx
                mov     [rsi+0A8h], rdi
                mov     [rsi+0BCh], r13d
                bts     dword ptr [rax], 0
                xor     r12d, r12d
                mov     [rsp+48h+arg_8], r12d
                jmp     short loc_14039A750
; ---------------------------------------------------------------------------

loc_14039A73D:                          ; CODE XREF: sub_14039A6A4+AA↓j
                                        ; sub_14039A6A4+B3↓j
                lea     rcx, [rsp+48h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_14039A73D

loc_14039A750:                          ; CODE XREF: sub_14039A6A4+97↑j
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_14039A73D
                cmp     [rsi+45h], r13b
                jnz     short loc_14039A775
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                xor     eax, eax
                jmp     loc_14039A89E
; ---------------------------------------------------------------------------

loc_14039A775:                          ; CODE XREF: sub_14039A6A4+B9↑j
                lea     rcx, [rbp+58h]
                mov     r9d, r13d
                xor     edx, edx
                mov     r8d, 40000h
                call    sub_140292240
                mov     rcx, [rbp+0E8h]
                lea     r8, [rsi+48h]
                add     rcx, 38h ; '8'
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jz      short loc_14039A7A8
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14039A7A8:                          ; CODE XREF: sub_14039A6A4+FB↑j
                mov     [r8], rcx
                mov     [r8+8], rdx
                mov     [rdx], r8
                mov     [rcx+8], r8
                mov     [rsi+0B0h], rax
                mov     [rsi+28h], rax
                shr     rax, 1Bh
                and     eax, 1FFFF8h
                mov     rcx, 0FFFFF6FB7DA00000h
                lea     r14, [rax+rcx]
                mov     rdx, rdi
                mov     ecx, 4
                call    sub_1402994FC
                or      eax, 0A4000000h
                mov     rdx, rbx
                mov     r8d, eax
                mov     rcx, r14
                call    sub_140280E60
                mov     rcx, r14
                mov     rbx, rax
                mov     r15d, r12d
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14039A84F
                call    sub_140349680
                test    eax, eax
                jz      short loc_14039A821
                cmp     byte ptr cs:word_140C4DE88+1, r12b
                mov     r15d, r13d
                jnz     short loc_14039A84F
                jmp     short loc_14039A83D
; ---------------------------------------------------------------------------

loc_14039A821:                          ; CODE XREF: sub_14039A6A4+16D↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14039A84F

loc_14039A83D:                          ; CODE XREF: sub_14039A6A4+17B↑j
                test    r13b, bl
                jz      short loc_14039A84F
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14039A84F:                          ; CODE XREF: sub_14039A6A4+164↑j
                                        ; sub_14039A6A4+179↑j ...
                mov     [r14], rbx
                test    r15d, r15d
                jz      short loc_14039A862
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_140349620

loc_14039A862:                          ; CODE XREF: sub_14039A6A4+1B1↑j
                mov     rcx, [rsi+28h]
                mov     rax, 7FFFFFFFFFFFFFFFh
                add     rcx, 3FFFFFFFh
                mov     [rsi+40h], r12d
                mov     [rsi+30h], rcx
                mov     [rsi+20h], r14
                lock and [rdi+18h], rax
                mov     [rbp+40h], r12d
                mov     eax, r13d
                mov     [rbp+0E0h], rsi
                mov     [rbp+0D8h], r12w

loc_14039A89E:                          ; CODE XREF: sub_14039A6A4+CC↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039A6A4   endp

byte_14039A8BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400DCE84↑o
; Exported entry 749. IoCallDriver
; Exported entry 1698. PoCallDriver

; =============== S U B R O U T I N E =======================================



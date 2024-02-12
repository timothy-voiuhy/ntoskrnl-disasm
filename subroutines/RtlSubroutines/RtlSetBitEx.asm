RtlSetBitEx     proc near               ; DATA XREF: .pdata:00000001400D7A60↑o
                mov     rax, [rcx+8]
                bts     [rax], rdx
                retn
RtlSetBitEx     endp

; ---------------------------------------------------------------------------
                align 2
algn_1403493FA:                         ; DATA XREF: .pdata:00000001400D7A60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140349400   proc near               ; CODE XREF: sub_1403B7520+E2↓p
                                        ; sub_1407AF580+361↓p
                                        ; DATA XREF: ...

var_38          = byte ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404803E4 SIZE 00000042 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, 0FFFFF78000000320h
                mov     rsi, rcx
                xor     ebp, ebp
                mov     r12d, r8d
                mov     r13d, [rax]
                mov     rax, cs:qword_140CFCAD0
                mov     cl, cs:byte_140CFC5BA
                mul     rdx
                mov     rbx, rdx
                shr     rbx, cl
                mov     r15, cr8
                lea     eax, [rbp+2]
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404803E4

loc_140349460:                          ; CODE XREF: sub_140349400+136FE6↓j
                                        ; sub_140349400+136FF0↓j ...
                mov     rcx, rsi
                call    sub_1402AF4F0
                mov     rdi, [rsi+10h]
                lea     r14, [rsi+8]

loc_140349470:                          ; CODE XREF: sub_140349400+85↓j
                                        ; sub_140349400+109↓j ...
                cmp     rdi, r14
                jz      short loc_140349498
                cmp     ebp, r12d
                jnb     short loc_140349498
                mov     rdx, rdi
                mov     rdi, [rdi+8]
                cmp     byte ptr [rdx+10h], 3
                jnz     short loc_140349470
                mov     rax, [rdx+18h]
                mov     ecx, r13d
                sub     ecx, [rax+1B4h]
                cmp     ecx, ebx
                jnb     short loc_1403494DB

loc_140349498:                          ; CODE XREF: sub_140349400+73↑j
                                        ; sub_140349400+78↑j
                lock and dword ptr [rsi], 0FFFFFF7Fh
                mov     rcx, gs:20h
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+58h+var_38], r15b
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, ebp
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403494DB:                          ; CODE XREF: sub_140349400+96↑j
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     short loc_140349516
                cmp     [rdi], rdx
                jnz     short loc_140349516
                mov     [rdi], rax
                xor     r9d, r9d
                mov     [rax+8], rdi
                mov     r8d, 102h
                mov     rcx, gs:20h
                call    sub_14023CD30
                test    al, al
                jz      loc_140349470
                inc     ebp
                jmp     loc_140349470
; ---------------------------------------------------------------------------

loc_140349516:                          ; CODE XREF: sub_140349400+E2↑j
                                        ; sub_140349400+E7↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140349400   endp

; ---------------------------------------------------------------------------
byte_14034951D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400822DC↑o
                                        ; .pdata:00000001400D7A6C↑o

; =============== S U B R O U T I N E =======================================


sub_140349524   proc near               ; CODE XREF: sub_140218580+CB0↑p
                                        ; sub_140218580+CE6↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140480426 SIZE 000000F8 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     rdi, [rsp+arg_30]
                mov     r11d, edx
                mov     ebx, ecx
                mov     byte ptr [rdi], 0
                cmp     ecx, 0FFFFFFFFh
                jnz     loc_140480426

loc_140349549:                          ; CODE XREF: sub_140349524+136F16↓j
                                        ; sub_140349524+136F3F↓j ...
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140349524   endp

algn_14034955A:                         ; DATA XREF: .rdata:0000000140082300↑o
                                        ; .pdata:00000001400D7A78↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140349560   proc near               ; DATA XREF: .pdata:00000001400D7A84↑o
                                        ; sub_1407BE61C+1CD↓o
                sub     rsp, 28h
                call    sub_1403495AC
                cmp     cs:dword_140CEC094, 0
                jnz     short loc_14034958A
                mov     ecx, cs:dword_140CFC404
                movzx   eax, cs:word_140C4FC20
                add     ecx, 2
                btr     ecx, 1Fh
                cmp     eax, ecx
                jnb     short loc_140349590

loc_14034958A:                          ; CODE XREF: sub_140349560+10↑j
                                        ; sub_140349560+41↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140349590:                          ; CODE XREF: sub_140349560+28↑j
                xor     r8d, r8d
                lea     rcx, unk_140CEC090
                xor     edx, edx
                call    KeSetEvent
                jmp     short loc_14034958A
sub_140349560   endp

; ---------------------------------------------------------------------------
byte_1403495A3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7A84↑o

; =============== S U B R O U T I N E =======================================


sub_1403495AC   proc near               ; CODE XREF: sub_140349560+4↑p
                                        ; sub_14069A0E0+E0↓p ...

var_18          = dword ptr -18h

; FUNCTION CHUNK AT 000000014048051E SIZE 0000003D BYTES

                sub     rsp, 38h
                mov     rdx, rcx
                lea     rcx, word_140C4FC20
                call    ExpInterlockedPushEntrySList

loc_1403495BF:                          ; CODE XREF: sub_1403495AC+136FAA↓j
                movzx   eax, cs:word_140C4FC20
                cmp     eax, cs:dword_140C4FC30
                ja      loc_14048051E

loc_1403495D2:                          ; CODE XREF: sub_1403495AC+136F81↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403495AC   endp

algn_1403495D8:                         ; DATA XREF: .rdata:000000014008231C↑o
                                        ; .pdata:00000001400D7A90↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403495E0   proc near               ; CODE XREF: sub_140279270+819↑p
                                        ; sub_1402E1600+3AD↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014048055C SIZE 00000012 BYTES

                mov     rax, [rcx]
                xor     r8d, r8d
                test    edx, edx
                jnz     loc_14048055C
                mov     rdx, 0FF00000FFFFFFFFFh
                mov     [rcx+24h], r8w
                and     [rcx+18h], rdx
                mov     rdx, 0FFFFFFFFFh
                and     rax, rdx
                mov     [rcx+27h], r8b

loc_140349612:                          ; CODE XREF: sub_1403495E0+136F89↓j
                mov     [rcx], rax
                retn
sub_1403495E0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140349617:                         ; DATA XREF: .pdata:00000001400D7A9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140349620   proc near               ; CODE XREF: sub_140224940+DC9↑p
                                        ; sub_140224940+E6E↑p ...
                sub     rsp, 28h
                mov     r9, rcx
                call    sub_140349680
                test    eax, eax
                jz      short loc_140349674
                mov     rax, gs:188h
                mov     r8, [rax+0B8h]
                mov     r10, [r8+788h]
                test    r10, r10
                jz      short loc_140349674
                mov     al, dl
                mov     rcx, 7FFFFFFFFFFFFFFFh
                and     rdx, rcx
                and     al, 1
                neg     al
                sbb     rcx, rcx
                shr     r9, 3
                and     rcx, rdx
                and     r9d, 1FFh
                mov     [r10+r9*8], rcx

loc_140349674:                          ; CODE XREF: sub_140349620+E↑j
                                        ; sub_140349620+2A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140349620   endp

algn_14034967A:                         ; DATA XREF: .pdata:00000001400D7AA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140349680   proc near               ; CODE XREF: sub_140220920+3DA↑p
                                        ; sub_140220920+4A4↑p ...
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1403496AB
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     eax, 1
                cmp     [rcx+390h], al
                jz      short loc_1403496AB
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403496AB:                          ; CODE XREF: sub_140349680+A↑j
                                        ; sub_140349680+27↑j
                xor     eax, eax
                retn
sub_140349680   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403496AF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7AB4↑o

; =============== S U B R O U T I N E =======================================


sub_1403496B8   proc near               ; CODE XREF: sub_14021ADF8+4C↑p
                                        ; sub_14021B078+B1↑p ...
                cmp     edx, 8
                ja      short loc_1403496D5
                movsxd  rdx, edx
                xor     eax, eax
                lock cmpxchg [rcx+rdx*8+8], r8
                neg     rax
                sbb     eax, eax
                and     eax, 0C0000001h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403496D5:                          ; CODE XREF: sub_1403496B8+3↑j
                mov     eax, 0C000000Dh
                retn
sub_1403496B8   endp

; ---------------------------------------------------------------------------
                align 4
byte_1403496DC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7AC0↑o

; =============== S U B R O U T I N E =======================================


sub_1403496E4   proc near               ; CODE XREF: sub_14023C050+3D7↑p
                                        ; sub_1402E8EB8+177CAD↓p ...

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048056E SIZE 00000145 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     edi, ecx
                lea     rdx, [r11-28h]
                xor     eax, eax
                lea     rcx, qword_140C191A0
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                mov     ebp, r8d
                call    KeAcquireInStackQueuedSpinLock
                mov     esi, ebp
                and     esi, 20h
                jz      loc_14048056E
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+558h]
                mov     r8, [rax+3D0h]
                mov     rdx, [rax+3D8h]

loc_14034974E:                          ; CODE XREF: sub_1403496E4+136E98↓j
                xor     ecx, ecx
                test    rdx, rdx
                jz      loc_1404805E8
                xor     eax, eax

loc_14034975B:                          ; CODE XREF: sub_1403496E4+94↓j
                imul    rax, 38h ; '8'
                mov     r9d, [rax+r8]
                cmp     r9d, edi
                jz      short loc_14034977F
                test    r9d, r9d
                jz      loc_1404805E8
                inc     ecx
                mov     eax, ecx
                cmp     rax, rdx
                jb      short loc_14034975B
                jmp     loc_1404805E8
; ---------------------------------------------------------------------------

loc_14034977F:                          ; CODE XREF: sub_1403496E4+82↑j
                mov     eax, ecx
                imul    rcx, rax, 38h ; '8'
                add     rcx, r8
                test    bpl, 1
                jz      short loc_1403497CD
                inc     qword ptr [rcx+30h]
                sub     [rcx+20h], rbx

loc_140349796:                          ; CODE XREF: sub_1403496E4+F1↓j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_140480581

loc_1403497B3:                          ; CODE XREF: sub_1403496E4+136E9F↓j
                                        ; sub_1403496E4+136EAB↓j ...
                mov     cr8, rbx

loc_1403497B7:                          ; CODE XREF: sub_1403496E4+136FBA↓j
                                        ; sub_1403496E4+136FCA↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403497CD:                          ; CODE XREF: sub_1403496E4+A8↑j
                inc     qword ptr [rcx+18h]
                sub     [rcx+8], rbx
                jmp     short loc_140349796
sub_1403496E4   endp

; ---------------------------------------------------------------------------
algn_1403497D7:                         ; DATA XREF: .rdata:00000001400823D8↑o
                                        ; .pdata:00000001400D7ACC↑o
                align 20h
; Exported entry 743. IoAttachDeviceToDeviceStackSafe

; =============== S U B R O U T I N E =======================================


                public IoAttachDeviceToDeviceStackSafe
IoAttachDeviceToDeviceStackSafe proc near
                                        ; CODE XREF: IoAttachDevice+CC↓p
                                        ; DATA XREF: .pdata:00000001400D7AD8↑o
                sub     rsp, 28h
                call    sub_140349804
                neg     rax
                sbb     eax, eax
                not     eax
                and     eax, 0C000000Eh
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAttachDeviceToDeviceStackSafe endp

byte_1403497FB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7AD8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_140349804   proc near               ; CODE XREF: IoAttachDeviceToDeviceStackSafe+4↑p
                                        ; IoAttachDeviceToDeviceStack+7↓p ...

var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = byte ptr -120h
var_11C         = dword ptr -11Ch
var_118         = word ptr -118h
var_114         = word ptr -114h
var_110         = word ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = byte ptr -80h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404806B4 SIZE 000002F6 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                mov     r15, [rcx+138h]
                mov     rdi, rcx
                mov     ecx, 0Ah
                mov     [rsp+160h+var_F0], rdx
                mov     rsi, r8
                mov     r14, rdx
                call    KeAcquireQueuedSpinLock
                mov     ecx, cs:dword_140C2A6E0
                mov     r12b, al
                test    cl, 10h
                jnz     loc_1404806B4

loc_14034985F:                          ; CODE XREF: sub_140349804+136EBC↓j
                mov     rcx, r14
                call    IoGetAttachedDevice
                mov     rcx, r14
                mov     rbx, rax
                call    sub_140349B1C
                xor     dl, dl
                mov     r13, rax
                mov     [rsp+160h+var_120], dl
                mov     r8d, 1
                mov     eax, [rax+48h]
                cmp     eax, 35h ; '5'
                ja      short loc_1403498B4
                mov     rcx, 20000100100108h
                bt      rcx, rax
                jnb     short loc_1403498B4
                test    dword ptr [r13+30h], 10000000h
                jnz     loc_1404806C5
                cmp     cs:dword_140CF4A64, 0
                jnz     loc_1404806C5

loc_1403498B4:                          ; CODE XREF: sub_140349804+83↑j
                                        ; sub_140349804+93↑j ...
                mov     eax, [rbx+30h]
                test    al, al
                js      loc_14048072A
                mov     rax, [rbx+138h]
                mov     ecx, [rax+20h]
                test    cl, 0Fh
                jnz     loc_14048072A
                mov     al, [rbx+4Ch]
                cmp     al, 7Dh ; '}'
                jnb     loc_14048072A
                test    dl, dl
                jnz     loc_14048072A
                test    rsi, rsi
                jz      short loc_1403498F0
                mov     [rsi], rbx
                mov     al, [rbx+4Ch]

loc_1403498F0:                          ; CODE XREF: sub_140349804+E4↑j
                add     al, r8b
                mov     [rdi+4Ch], al
                mov     eax, [rbx+98h]
                mov     [rdi+98h], eax
                movzx   eax, word ptr [rbx+130h]
                mov     [rdi+130h], ax
                mov     rax, [rbx+138h]
                mov     ecx, [rax+20h]
                test    cl, 10h
                jnz     loc_1403499DF

loc_140349923:                          ; CODE XREF: sub_140349804+1E6↓j
                mov     ecx, 8000000h
                test    [rbx+30h], ecx
                jnz     loc_1403499EF

loc_140349931:                          ; CODE XREF: sub_140349804+1EE↓j
                mov     rax, rdi
                xchg    rax, [rbx+18h]
                add     [rbx+132h], r8w
                mov     [r15+30h], rbx
                mov     rax, [r13+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jnz     short loc_1403499CD

loc_140349954:                          ; CODE XREF: sub_140349804+1D0↓j
                                        ; sub_140349804+136F21↓j ...
                mov     dl, r12b
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     sil, [rsp+160h+var_120]
                xor     r15d, r15d
                test    sil, sil
                jnz     loc_14048073D

loc_140349972:                          ; CODE XREF: sub_140349804+13718D↓j
                                        ; sub_140349804+1371A1↓j
                mov     eax, [r14+48h]
                cmp     eax, 14h
                ja      short loc_1403499A2
                mov     r8d, 100108h
                bt      r8d, eax
                jnb     short loc_1403499A2
                mov     rax, cs:qword_140CF4338
                test    rax, rax
                jz      short loc_1403499A2
                mov     rax, [rax+28h]
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1404079D0

loc_1403499A2:                          ; CODE XREF: sub_140349804+175↑j
                                        ; sub_140349804+181↑j ...
                mov     rax, rbx
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_18]
                add     rsp, 130h
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

loc_1403499CD:                          ; CODE XREF: sub_140349804+14E↑j
                cmp     dword ptr [rcx+18Ch], 0
                jge     loc_140349954
                jmp     loc_1404806FF
; ---------------------------------------------------------------------------

loc_1403499DF:                          ; CODE XREF: sub_140349804+119↑j
                mov     rax, [rdi+138h]
                or      dword ptr [rax+20h], 10h
                jmp     loc_140349923
; ---------------------------------------------------------------------------

loc_1403499EF:                          ; CODE XREF: sub_140349804+127↑j
                or      [rdi+30h], ecx
                jmp     loc_140349931
; } // starts at 140349804
sub_140349804   endp

; ---------------------------------------------------------------------------
algn_1403499F7:                         ; DATA XREF: .rdata:0000000140082410↑o
                                        ; .pdata:00000001400D7AE4↑o
                align 20h
; Exported entry 844. IoGetDeviceAttachmentBaseRef

; =============== S U B R O U T I N E =======================================


                public IoGetDeviceAttachmentBaseRef
IoGetDeviceAttachmentBaseRef proc near  ; CODE XREF: sub_140379D94+39↓p
                                        ; IoWMIDeviceObjectToInstanceName+2C↓p ...
                sub     rsp, 28h
                mov     edx, 746C6644h
                call    sub_140349A1C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetDeviceAttachmentBaseRef endp

byte_140349A14  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7AF0↑o

; =============== S U B R O U T I N E =======================================


sub_140349A1C   proc near               ; CODE XREF: sub_1402B1E40+146↑p
                                        ; sub_1402B3030+2DC↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     esi, edx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rcx, rbx
                mov     dil, al
                call    sub_140349B1C
                mov     edx, esi
                mov     rcx, rax
                mov     rbx, rax
                call    ObfReferenceObjectWithTag
                mov     dl, dil
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rsi, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140349A1C   endp

byte_140349A73  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7AFC↑o

; =============== S U B R O U T I N E =======================================


sub_140349A7C   proc near               ; CODE XREF: sub_14061BEE0+315↓p
                                        ; DATA XREF: .pdata:00000001400D7B08↑o
                push    rbx
                sub     rsp, 20h
                mov     rcx, [rcx+8]
                call    sub_140349AB8
                test    rax, rax
                jz      short loc_140349AAB
                mov     ebx, [rax+30h]
                mov     rcx, rax
                call    PsDereferenceSiloContext
                shr     ebx, 17h
                mov     al, 1
                not     bl
                and     al, bl

loc_140349AA4:                          ; CODE XREF: sub_140349A7C+31↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140349AAB:                          ; CODE XREF: sub_140349A7C+12↑j
                mov     al, 1
                jmp     short loc_140349AA4
sub_140349A7C   endp

; ---------------------------------------------------------------------------
byte_140349AAF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7B08↑o

; =============== S U B R O U T I N E =======================================


sub_140349AB8   proc near               ; CODE XREF: sub_140349A7C+A↑p
                                        ; sub_1405072E0+129↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rcx, rbx
                mov     dil, al
                call    sub_140349B1C
                mov     rbx, rax
                test    dword ptr [rax+30h], 1000h
                jz      short loc_140349B0F
                mov     edx, 746C6644h
                mov     rcx, rax
                call    ObfReferenceObjectWithTag

loc_140349AF3:                          ; CODE XREF: sub_140349AB8+59↓j
                mov     dl, dil
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140349B0F:                          ; CODE XREF: sub_140349AB8+2C↑j
                xor     ebx, ebx
                jmp     short loc_140349AF3
sub_140349AB8   endp

; ---------------------------------------------------------------------------
byte_140349B13  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7B14↑o

; =============== S U B R O U T I N E =======================================


sub_140349B1C   proc near               ; CODE XREF: sub_140349804+69↑p
                                        ; sub_140349A1C+24↑p ...
                mov     rax, [rcx+138h]
                mov     rdx, rcx
                mov     rcx, [rax+30h]

loc_140349B2A:                          ; CODE XREF: sub_140349B1C+26↓j
                test    rcx, rcx
                jnz     short loc_140349B34
                mov     rax, rdx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140349B34:                          ; CODE XREF: sub_140349B1C+11↑j
                mov     rdx, rcx
                mov     rcx, [rcx+138h]
                mov     rcx, [rcx+30h]
                jmp     short loc_140349B2A
sub_140349B1C   endp

; ---------------------------------------------------------------------------
algn_140349B44:                         ; DATA XREF: .pdata:00000001400D7B20↑o
                align 10h
; Exported entry 275. ExRaiseException
; Exported entry 2350. RtlRaiseException

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=30h


IoCreateDevice  proc near               ; CODE XREF: sub_14069C3B0+75↓p
                                        ; IoCreateDeviceSecure+162↓p ...

var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = dword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = xmmword ptr -0A8h
var_98          = byte ptr -98h
var_70          = byte ptr -70h
var_48          = qword ptr -48h
arg_20          = dword ptr  30h
arg_28          = byte ptr  38h
arg_30          = qword ptr  40h

; FUNCTION CHUNK AT 00000001408166F6 SIZE 00000090 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-28h]
                sub     rsp, 128h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_48], rax
                mov     edi, [rbp+60h+arg_20]
                mov     r15, rcx
                mov     r13, [rbp+60h+arg_30]
                mov     r14, r8
                mov     esi, r9d
                mov     eax, edx
                xor     r9d, r9d
                mov     [rsp+160h+var_FC], edx
                and     eax, 7
                mov     [rsp+160h+var_110], edi
                mov     r8d, edi
                mov     [rbp+60h+var_D4], r9d
                and     r8d, 80h
                mov     [rbp+60h+var_C0], r9
                lea     ecx, [r9+8]
                mov     [rbp+60h+var_E0], r9
                sub     ecx, eax
                mov     [rsp+160h+var_F0], r9
                test    eax, eax
                mov     [rsp+160h+var_E8], r9
                mov     ebx, r9d
                mov     [rsp+160h+var_F8], r8d
                cmovz   ecx, eax
                mov     [rsp+160h+var_108], rbx
                add     ecx, edx
                xorps   xmm0, xmm0
                mov     [rsp+160h+var_100], ecx
                movzx   r12d, r9w
                movups  [rbp+60h+var_A8], xmm0

loc_14069B1D6:                          ; CODE XREF: IoCreateDevice+17B5F6↓j
                test    r8d, r8d
                jnz     loc_14069B4E4

loc_14069B1DF:                          ; CODE XREF: IoCreateDevice+3E4↓j
                mov     [rsp+160h+var_130], r9
                lea     rax, [rsp+160h+var_E8]
                mov     [rsp+160h+var_138], rax
                lea     r9, [rbp+60h+var_70]
                lea     rax, [rsp+160h+var_F0]
                mov     edx, edi
                mov     ecx, esi
                mov     [rsp+160h+var_140], rax
                call    sub_14069B5B0
                mov     ecx, esi
                mov     rdx, rax
                sub     ecx, 3
                jz      loc_14069B59E
                sub     ecx, 4
                jz      short loc_14069B221
                sub     ecx, 1
                jnz     loc_14069B4AB

loc_14069B221:                          ; CODE XREF: IoCreateDevice+D6↑j
                                        ; IoCreateDevice+374↓j
                mov     r12d, 200h

loc_14069B227:                          ; CODE XREF: IoCreateDevice+36E↓j
                                        ; IoCreateDevice+464↓j
                mov     eax, cs:dword_140C11FF4
                xor     r9d, r9d
                neg     eax
                mov     [rbp+60h+var_D8], 30h ; '0'
                mov     eax, 200h
                mov     [rbp+60h+var_D0], r9
                sbb     ecx, ecx
                mov     [rbp+60h+var_C8], r14
                and     ecx, 40h
                mov     [rbp+60h+var_B8], rdx
                add     ecx, eax
                mov     [rbp+60h+var_B0], r9
                mov     dword ptr [rbp+60h+var_C0], ecx
                cmp     [rbp+60h+arg_28], r9b
                jnz     loc_14069B586

loc_14069B265:                          ; CODE XREF: IoCreateDevice+44C↓j
                test    r14, r14
                jnz     loc_14069B4B9

loc_14069B26E:                          ; CODE XREF: IoCreateDevice+37F↓j
                mov     eax, [rsp+160h+var_100]
                add     eax, 1C0h
                cmp     eax, 1C0h
                jb      loc_14081676F
                mov     rdx, cs:IoDeviceObjectType
                lea     rcx, [rsp+160h+var_108]
                mov     [rsp+160h+var_118], r9
                lea     r8, [rbp+60h+var_D8]
                mov     [rsp+160h+var_120], rcx
                xor     ecx, ecx
                mov     [rsp+160h+var_128], r9d
                mov     dword ptr [rsp+160h+var_130], r9d
                mov     dword ptr [rsp+160h+var_138], eax
                call    sub_14061EDD0
                mov     rbx, [rsp+160h+var_108]
                mov     edi, eax
                test    eax, eax
                js      loc_14069B428
                mov     edi, [rsp+160h+var_100]
                xor     edx, edx
                mov     rcx, rbx
                lea     r8d, [rdi+1C0h]
                call    memset
                xor     r8d, r8d
                lea     rcx, [rbx+150h]
                add     rcx, rdi
                mov     eax, 150h
                lea     r10d, [r8+3]
                mov     [rcx+8], rbx
                mov     [rbx+138h], rcx
                mov     dword ptr [rcx], 0Dh
                mov     [rcx+58h], r8
                mov     [rcx+10h], r8d
                mov     [rcx+18h], r8
                mov     ecx, [rsp+160h+var_FC]
                add     eax, ecx
                mov     [rbx], r10w
                mov     [rbx+2], ax
                mov     eax, [rsp+160h+var_110]
                mov     [rbx+48h], esi
                mov     [rbx+34h], eax
                cmp     esi, 24h ; '$'
                ja      short loc_14069B339
                mov     rdx, 1080000084h
                bt      rdx, rsi
                jb      loc_14069B529

loc_14069B339:                          ; CODE XREF: IoCreateDevice+1E3↑j
                                        ; IoCreateDevice+41A↓j
                mov     eax, 80h
                mov     [rbx+98h], r8d
                mov     [rbx+130h], r12w
                mov     [rbx+30h], eax
                cmp     [rbp+60h+arg_28], r8b
                jnz     loc_14069B591

loc_14069B35D:                          ; CODE XREF: IoCreateDevice+459↓j
                test    r14, r14
                jnz     loc_14069B4C4

loc_14069B366:                          ; CODE XREF: IoCreateDevice+38A↓j
                test    ecx, ecx
                jz      loc_14069B4DB
                lea     rax, [rbx+150h]
                mov     [rbx+40h], rax

loc_14069B379:                          ; CODE XREF: IoCreateDevice+39F↓j
                mov     byte ptr [rbx+4Ch], 1
                cmp     esi, r10d
                jz      short loc_14069B394
                cmp     esi, 7
                jbe     loc_14069B493
                cmp     esi, 9
                ja      loc_14069B481

loc_14069B394:                          ; CODE XREF: IoCreateDevice+240↑j
                                        ; IoCreateDevice+344↓j ...
                lea     rax, [rbx+50h]
                mov     [rax+8], rax
                mov     [rax], rax

loc_14069B39F:                          ; CODE XREF: IoCreateDevice+366↓j
                mov     eax, [rbx+34h]
                test    al, 1
                jnz     short loc_14069B3BB
                bt      eax, 12h
                jb      short loc_14069B3BB
                mov     rax, [rbx+138h]
                mov     ecx, 800h
                or      [rax+20h], ecx

loc_14069B3BB:                          ; CODE XREF: IoCreateDevice+264↑j
                                        ; IoCreateDevice+26A↑j
                lea     rax, [rbp+60h+var_E0]
                mov     r9d, 1
                mov     [rsp+160h+var_130], rax
                xor     edx, edx
                lea     rax, [rsp+160h+var_108]
                mov     rcx, rbx
                mov     [rsp+160h+var_138], rax
                mov     dword ptr [rsp+160h+var_140], r8d
                mov     r8d, r10d
                call    sub_14061EFE0
                xor     r9d, r9d
                mov     edi, eax
                test    eax, eax
                js      loc_14069B56C
                mov     rcx, r15
                call    ObfReferenceObject
                mov     rbx, [rsp+160h+var_108]
                mov     r8b, 1
                mov     rdx, rbx
                mov     rcx, r15
                mov     [rbx+8], r15
                call    sub_1402F0BFC
                cmp     qword ptr [rbx+38h], 0
                jnz     loc_14069B55F

loc_14069B41D:                          ; CODE XREF: IoCreateDevice+427↓j
                mov     rcx, [rbp+60h+var_E0]
                xor     edx, edx
                call    ObCloseHandle

loc_14069B428:                          ; CODE XREF: IoCreateDevice+17A↑j
                                        ; IoCreateDevice+441↓j ...
                mov     rcx, [rsp+160h+var_F0]
                test    rcx, rcx
                jnz     loc_140816779

loc_14069B436:                          ; CODE XREF: IoCreateDevice+17B641↓j
                mov     rcx, [rsp+160h+var_E8]
                test    rcx, rcx
                jnz     loc_14069B4CF

loc_14069B444:                          ; CODE XREF: IoCreateDevice+396↓j
                test    edi, edi
                js      short loc_14069B45A
                mov     rdx, [rbx+8]
                mov     r8, r14
                add     rdx, 38h ; '8'
                mov     cl, 1
                call    sub_14069B7AC

loc_14069B45A:                          ; CODE XREF: IoCreateDevice+306↑j
                mov     [r13+0], rbx

loc_14069B45E:                          ; CODE XREF: IoCreateDevice+17B62A↓j
                mov     eax, edi
                mov     rcx, [rbp+60h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 128h
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

loc_14069B481:                          ; CODE XREF: IoCreateDevice+24E↑j
                cmp     esi, 14h
                jz      loc_14069B394
                cmp     esi, 20h ; ' '
                jz      loc_14069B394

loc_14069B493:                          ; CODE XREF: IoCreateDevice+245↑j
                lea     rcx, [rbx+0A0h]
                call    KeInitializeDeviceQueue
                xor     r8d, r8d
                lea     r10d, [r8+3]
                jmp     loc_14069B39F
; ---------------------------------------------------------------------------

loc_14069B4AB:                          ; CODE XREF: IoCreateDevice+DB↑j
                cmp     ecx, 1Ch
                jnz     loc_14069B227
                jmp     loc_14069B221
; ---------------------------------------------------------------------------

loc_14069B4B9:                          ; CODE XREF: IoCreateDevice+128↑j
                or      ecx, 10h
                mov     dword ptr [rbp+60h+var_C0], ecx
                jmp     loc_14069B26E
; ---------------------------------------------------------------------------

loc_14069B4C4:                          ; CODE XREF: IoCreateDevice+220↑j
                or      eax, 40h
                mov     [rbx+30h], eax
                jmp     loc_14069B366
; ---------------------------------------------------------------------------

loc_14069B4CF:                          ; CODE XREF: IoCreateDevice+2FE↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     loc_14069B444
; ---------------------------------------------------------------------------

loc_14069B4DB:                          ; CODE XREF: IoCreateDevice+228↑j
                mov     [rbx+40h], r8
                jmp     loc_14069B379
; ---------------------------------------------------------------------------

loc_14069B4E4:                          ; CODE XREF: IoCreateDevice+99↑j
                mov     r9d, 1
                lock xadd cs:dword_140C45B54, r9d
                inc     r9d
                lea     r8, aDevice08lx ; "\\Device\\%08lx"
                mov     edx, 11h
                lea     rcx, [rbp+60h+var_98]
                call    sub_140311280
                lea     rdx, [rbp+60h+var_98]
                lea     rcx, [rbp+60h+var_A8]
                call    RtlInitUnicodeString
                mov     rbx, [rsp+160h+var_108]
                lea     r14, [rbp+60h+var_A8]
                xor     r9d, r9d
                jmp     loc_14069B1DF
; ---------------------------------------------------------------------------

loc_14069B529:                          ; CODE XREF: IoCreateDevice+1F3↑j
                mov     rcx, rbx
                call    sub_14077F9E0
                mov     edi, eax
                test    eax, eax
                js      loc_14081673B
                lea     rcx, [rbx+118h]
                mov     r8b, 1
                mov     edx, 1
                call    KeInitializeEvent
                mov     ecx, [rsp+160h+var_FC]
                xor     r8d, r8d
                lea     r10d, [r8+3]
                jmp     loc_14069B339
; ---------------------------------------------------------------------------

loc_14069B55F:                          ; CODE XREF: IoCreateDevice+2D7↑j
                mov     rcx, rbx
                call    sub_14077E86C
                jmp     loc_14069B41D
; ---------------------------------------------------------------------------

loc_14069B56C:                          ; CODE XREF: IoCreateDevice+2AD↑j
                cmp     eax, 0C0000035h
                jnz     short loc_14069B57E
                test    byte ptr [rsp+160h+var_110], 80h
                jnz     loc_1408166F6

loc_14069B57E:                          ; CODE XREF: IoCreateDevice+431↑j
                mov     rbx, r9
                jmp     loc_14069B428
; ---------------------------------------------------------------------------

loc_14069B586:                          ; CODE XREF: IoCreateDevice+11F↑j
                or      ecx, 20h
                mov     dword ptr [rbp+60h+var_C0], ecx
                jmp     loc_14069B265
; ---------------------------------------------------------------------------

loc_14069B591:                          ; CODE XREF: IoCreateDevice+217↑j
                mov     eax, 88h
                mov     [rbx+30h], eax
                jmp     loc_14069B35D
; ---------------------------------------------------------------------------

loc_14069B59E:                          ; CODE XREF: IoCreateDevice+CD↑j
                mov     r12d, 800h
                jmp     loc_14069B227
; } // starts at 14069B140
IoCreateDevice  endp

; ---------------------------------------------------------------------------
algn_14069B5A9:                         ; DATA XREF: .rdata:000000014006D9A0↑o
                                        ; .pdata:0000000140101E68↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14069B5B0   proc near               ; CODE XREF: IoCreateDevice+C0↑p
                                        ; sub_14075D104+E45E8↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_30          = byte ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140816786 SIZE 0000010D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     byte ptr [rsp+arg_10], r8b
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, [rsp+58h+arg_30]
                mov     r14, r9
                mov     ebx, ecx
                test    rdi, rdi
                jnz     loc_140816786

loc_14069B5E1:                          ; CODE XREF: sub_14069B5B0+17B1D9↓j
                mov     r12, [rsp+58h+arg_20]
                mov     esi, 2
                and     qword ptr [r12], 0
                cmp     ebx, 14h
                ja      short loc_14069B647
                jz      short loc_14069B662
                cmp     ebx, esi
                jz      loc_14081678E
                cmp     ebx, 3
                jz      short loc_14069B613
                cmp     ebx, 7
                jz      short loc_14069B662
                jbe     short loc_14069B65B
                cmp     ebx, 9
                ja      short loc_14069B679

loc_14069B613:                          ; CODE XREF: sub_14069B5B0+55↑j
                                        ; sub_14069B5B0+9F↓j ...
                mov     edx, esi

loc_14069B615:                          ; CODE XREF: sub_14069B5B0+B0↓j
                mov     r8, [rsp+58h+arg_28]
                mov     r9, rdi
                mov     rcx, r14
                call    sub_14069B688

loc_14069B628:                          ; CODE XREF: sub_14069B5B0+17B2DE↓j
                test    eax, eax
                js      short loc_14069B67E
                mov     rax, r14

loc_14069B62F:                          ; CODE XREF: sub_14069B5B0+D0↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069B647:                          ; CODE XREF: sub_14069B5B0+46↑j
                cmp     ebx, 2Dh ; '-'
                jz      short loc_14069B662
                cmp     ebx, 20h ; ' '
                jz      short loc_14069B613
                cmp     ebx, 24h ; '$'
                jz      short loc_14069B662
                cmp     ebx, 35h ; '5'

loc_14069B659:                          ; CODE XREF: sub_14069B5B0+CC↓j
                jz      short loc_14069B662

loc_14069B65B:                          ; CODE XREF: sub_14069B5B0+5C↑j
                mov     edx, 4
                jmp     short loc_14069B615
; ---------------------------------------------------------------------------

loc_14069B662:                          ; CODE XREF: sub_14069B5B0+48↑j
                                        ; sub_14069B5B0+5A↑j ...
                cmp     ebx, esi
                jz      loc_14081678E
                cmp     ebx, 7
                jnz     short loc_14069B613
                test    dl, 1
                jz      short loc_14069B613
                jmp     loc_14081678E
; ---------------------------------------------------------------------------

loc_14069B679:                          ; CODE XREF: sub_14069B5B0+61↑j
                cmp     ebx, 12h
                jmp     short loc_14069B659
; ---------------------------------------------------------------------------

loc_14069B67E:                          ; CODE XREF: sub_14069B5B0+7A↑j
                                        ; sub_14069B5B0+17B1FB↓j ...
                xor     eax, eax
                jmp     short loc_14069B62F
sub_14069B5B0   endp

; ---------------------------------------------------------------------------
algn_14069B682:                         ; DATA XREF: .rdata:000000014006D9CC↑o
                                        ; .pdata:0000000140101E74↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14069B688   proc near               ; CODE XREF: sub_14069B5B0+73↑p
                                        ; DATA XREF: .rdata:000000014006D9FC↑o ...

var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140816894 SIZE 00000057 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                xor     dil, dil
                mov     rsi, r9
                mov     r12, r8
                mov     r14, rcx
                sub     edx, 1
                jz      loc_1408168BB
                sub     edx, 1
                jnz     short loc_14069B70F
                mov     rbx, cs:qword_140D2E758

loc_14069B6C6:                          ; CODE XREF: sub_14069B688+A3↓j
                                        ; sub_14069B688+17B222↓j ...
                mov     edx, 1
                call    RtlCreateSecurityDescriptor
                cmp     dil, 1
                jz      short loc_14069B72D

loc_14069B6D6:                          ; CODE XREF: sub_14069B688+116↓j
                xor     r9d, r9d
                mov     r8, rbx
                mov     dl, 1
                mov     rcx, r14
                call    RtlSetDaclSecurityDescriptor
                test    rsi, rsi
                jnz     loc_1408168D1

loc_14069B6EF:                          ; CODE XREF: sub_14069B688+17B216↓j
                                        ; sub_14069B688+17B244↓j ...
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
; ---------------------------------------------------------------------------

loc_14069B70F:                          ; CODE XREF: sub_14069B688+35↑j
                sub     edx, 1
                jz      loc_1408168AF
                sub     edx, 1
                jnz     loc_140816894
                mov     rbx, cs:qword_140D2E7F0

loc_14069B728:                          ; CODE XREF: sub_14069B688+17B22E↓j
                mov     dil, 1
                jmp     short loc_14069B6C6
; ---------------------------------------------------------------------------

loc_14069B72D:                          ; CODE XREF: sub_14069B688+4C↑j
                mov     rax, cs:qword_140C1DAE0
                mov     ecx, 1
                mov     r8d, 65536F49h
                movzx   ebp, byte ptr [rax+1]
                add     bp, 6
                shl     bp, 2
                movzx   edx, bp
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jz      loc_1408168C7
                movzx   edx, bp
                mov     r8d, 2
                mov     rcx, rax
                call    RtlCreateAcl
                mov     r9, cs:qword_140C1DAE0
                xor     r8d, r8d
                mov     rcx, r15
                mov     [rsp+48h+var_20], 1
                call    sub_140621DE0
                xor     r9d, r9d
                mov     r8, r15
                mov     dl, 1
                mov     rcx, r14
                call    RtlSetSaclSecurityDescriptor
                mov     [r12], r15
                jmp     loc_14069B6D6
sub_14069B688   endp

; ---------------------------------------------------------------------------
byte_14069B7A3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006D9FC↑o
                                        ; .pdata:0000000140101E80↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14069B7AC   proc near               ; CODE XREF: IoDeleteDevice+32↑p
                                        ; IoCreateDevice+315↑p
                                        ; DATA XREF: ...

var_80          = qword ptr -80h
var_70          = word ptr -70h
var_6C          = word ptr -6Ch
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 00000001408168EC SIZE 000000C7 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                mov     rsi, cs:qword_140C19798
                lea     rax, qword_14000AAD8
                mov     rbx, rdx
                lea     r14, qword_14000AAC8
                xor     r15d, r15d
                mov     rdi, r8
                test    cl, cl
                mov     rcx, rsi
                cmovz   r14, rax
                mov     rdx, r14
                call    EtwEventEnabled
                test    al, al
                jnz     loc_1408168EC

loc_14069B810:                          ; CODE XREF: sub_14069B7AC+17B152↓j
                                        ; sub_14069B7AC+17B202↓j
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
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
                db 0CCh
; } // starts at 14069B7AC
sub_14069B7AC   endp

algn_14069B83A:                         ; DATA XREF: .rdata:000000014006DA34↑o
                                        ; .pdata:0000000140101E8C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14069B840   proc near               ; CODE XREF: sub_14069C3B0+BF↓p
                                        ; DATA XREF: .pdata:0000000140101E98↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rbx, rdx
                xor     edx, edx
                mov     r8d, 150h
                mov     rsi, rcx
                call    memset
                mov     [rsi+0B8h], rdi
                mov     ebp, 20776152h
                mov     edi, 200h
                mov     dword ptr [rsi], 1500600h
                mov     ecx, edi
                mov     [rsi+0B0h], rbx
                mov     r8d, ebp
                mov     edx, 60h ; '`'
                call    ExAllocatePoolWithTag
                mov     edx, ebp
                mov     [rsi+0C0h], rax
                mov     ecx, edi
                mov     rbx, rax
                call    ExAllocateCacheAwareRundownProtection
                neg     rbx
                mov     [rsi+0D8h], rax
                mov     ecx, 0C000009Ah
                mov     ebp, 1
                sbb     ebx, ebx
                mov     [rsi+0E0h], ebp
                not     ebx
                mov     edx, ebp
                and     ebx, ecx
                test    rax, rax
                cmovz   ebx, ecx
                and     qword ptr [rsi+0E8h], 0
                and     dword ptr [rsi+0F0h], 0
                lea     rcx, [rsi+0F8h]
                xor     r8d, r8d
                call    KeInitializeEvent
                lea     rdi, [rsi+118h]
                xor     r8d, r8d
                and     qword ptr [rdi+8], 0
                lea     rcx, [rdi+18h]
                and     dword ptr [rdi+10h], 0
                mov     edx, ebp
                mov     [rdi], ebp
                call    KeInitializeEvent
                mov     al, [rsi+7]
                lea     rcx, [rsi+38h]
                or      byte ptr [rsi+4], 40h
                and     al, 0Fh
                or      byte ptr [rsi+6], 2
                or      al, 30h
                mov     [rsi+7], al
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                test    rdi, rdi
                jz      short loc_14069B936
                mov     [rsi+30h], rdi

loc_14069B936:                          ; CODE XREF: sub_14069B840+F0↑j
                and     qword ptr [rsi+48h], 0
                mov     eax, ebx
                and     qword ptr [rsi+50h], 0
                and     qword ptr [rsi+58h], 0
                and     qword ptr [rsi+60h], 0
                or      dword ptr [rsi+68h], 10h
                mov     rsi, [rsp+28h+arg_10]
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14069B840   endp

algn_14069B966:                         ; DATA XREF: .pdata:0000000140101E98↑o
                align 10h
; Exported entry 245. ExInitializeRundownProtectionCacheAware

; =============== S U B R O U T I N E =======================================



IoVerifyVolume  proc near               ; DATA XREF: .pdata:000000014011CA30↑o

var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                xor     eax, eax
                xorps   xmm0, xmm0
                and     [rbp+arg_10], rax
                mov     r15b, dl
                and     [rbp+arg_0], rax
                mov     rbx, rcx
                movups  [rbp+var_20], xmm0
                mov     [rbp+var_10], rax
                movups  [rbp+var_30], xmm0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                and     [rsp+60h+var_40], 0
                lea     r12, [rcx+118h]
                mov     rcx, r12
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                lea     r8, [rbp+arg_10]
                mov     rcx, rbx
                lea     rdx, [rbp+arg_0]
                call    sub_1405010E0
                test    al, al
                jnz     short loc_1408956D9
                xor     edi, edi
                jmp     loc_1408957C1
; ---------------------------------------------------------------------------

loc_1408956D9:                          ; CODE XREF: IoVerifyVolume+70↑j
                xor     r8d, r8d
                lea     rcx, [rbp+var_20]
                xor     edx, edx
                call    KeInitializeEvent
                mov     rdi, [rbp+arg_10]
                mov     rax, [rdi+18h]
                jmp     short loc_1408956F8
; ---------------------------------------------------------------------------

loc_1408956F1:                          ; CODE XREF: IoVerifyVolume+9B↓j
                mov     rdi, rax
                mov     rax, [rax+18h]

loc_1408956F8:                          ; CODE XREF: IoVerifyVolume+8F↑j
                test    rax, rax
                jnz     short loc_1408956F1
                mov     r9, [rbp+38h]
                xor     r8d, r8d
                mov     dl, [rdi+4Ch]
                mov     rcx, rdi
                call    sub_140235D20
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_14089572A
                mov     rcx, [rbp+arg_0]
                call    sub_14032A040
                mov     edi, 0C000009Ah
                jmp     loc_14089580E
; ---------------------------------------------------------------------------

loc_14089572A:                          ; CODE XREF: IoVerifyVolume+B5↑j
                mov     dword ptr [rax+10h], 42h ; 'B'
                test    r15b, r15b
                mov     byte ptr [rax+40h], 0
                mov     rcx, rsi
                lea     rax, [rbp+var_20]
                mov     [rsi+50h], rax
                lea     rax, [rbp+var_30]
                mov     [rsi+48h], rax
                mov     rax, gs:188h
                mov     rdx, [rsi+0B8h]
                mov     r14, [rbp+arg_0]
                mov     [rsi+98h], rax
                setnz   al
                mov     [rdx-46h], al
                mov     rax, [rbp+arg_10]
                mov     [rdx-38h], rax
                mov     word ptr [rdx-48h], 20Dh
                mov     [rdx-40h], r14
                call    sub_140245C90
                mov     rdx, rsi
                mov     rcx, rdi
                call    IofCallDriver
                mov     edi, eax
                cmp     eax, 103h
                jnz     short loc_1408957B1
                and     [rsp+60h+var_40], 0
                lea     rcx, [rbp+var_20]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     edi, dword ptr [rbp+var_30]

loc_1408957B1:                          ; CODE XREF: IoVerifyVolume+135↑j
                mov     rcx, r14
                call    sub_14032A040
                cmp     edi, 0C0000012h
                jnz     short loc_14089580E

loc_1408957C1:                          ; CODE XREF: IoVerifyVolume+74↑j
                mov     rcx, rbx
                call    sub_14077F9E0
                test    eax, eax
                js      short loc_14089580A
                mov     rcx, rbx
                call    sub_14077E86C
                and     [rbp+arg_18], 0
                lea     rax, [rbp+arg_18]
                xor     r9d, r9d
                mov     [rsp+60h+var_40], rax
                mov     r8b, 1
                mov     dl, r15b
                mov     rcx, rbx
                call    sub_14069BB18
                test    eax, eax
                js      short loc_14089580A
                mov     rcx, [rbp+arg_18]
                test    rcx, rcx
                jz      short loc_14089580E
                mov     dl, 1
                call    sub_1402346A0
                jmp     short loc_14089580E
; ---------------------------------------------------------------------------

loc_14089580A:                          ; CODE XREF: IoVerifyVolume+16B↑j
                                        ; IoVerifyVolume+196↑j
                and     dword ptr [rbx+30h], 0FFFFFFFDh

loc_14089580E:                          ; CODE XREF: IoVerifyVolume+C5↑j
                                        ; IoVerifyVolume+15F↑j ...
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r12
                call    KeSetEvent
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, edi
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoVerifyVolume  endp

byte_14089583B  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014011CA30↑o

; =============== S U B R O U T I N E =======================================


sub_140895844   proc near               ; CODE XREF: sub_140653C50+146A↑p
                                        ; DATA XREF: .pdata:000000014011CA3C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax-18h], 0
                lea     r9, [rax+20h]
                and     dword ptr [rax+20h], 0
                mov     rdi, r8
                mov     ebx, edx
                lea     r8, [rax-18h]
                lea     rdx, qword_140033B30
                call    FsRtlFindExtraCreateParameter
                test    eax, eax
                js      short loc_1408958B3
                cmp     [rsp+38h+arg_18], 8
                jb      short loc_1408958A7
                lea     eax, [rbx+5FFFFFFDh]
                cmp     eax, 16h
                ja      short loc_1408958A0
                mov     ecx, 400201h
                bt      ecx, eax
                jnb     short loc_1408958A0
                mov     rcx, [rsp+38h+var_18]
                inc     dword ptr [rcx]
                movzx   eax, word ptr [rdi+6]
                mov     [rcx+4], eax

loc_1408958A0:                          ; CODE XREF: sub_140895844+42↑j
                                        ; sub_140895844+4C↑j
                cmp     [rsp+38h+arg_18], 8
                ja      short loc_1408958B3

loc_1408958A7:                          ; CODE XREF: sub_140895844+37↑j
                cmp     ebx, 0A000000Ch
                jz      short loc_1408958B3
                xor     al, al
                jmp     short loc_1408958B5
; ---------------------------------------------------------------------------

loc_1408958B3:                          ; CODE XREF: sub_140895844+30↑j
                                        ; sub_140895844+61↑j ...
                mov     al, 1

loc_1408958B5:                          ; CODE XREF: sub_140895844+6D↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140895844   endp

algn_1408958C1:                         ; DATA XREF: .pdata:000000014011CA3C↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=180h

sub_1408958C8   proc near               ; CODE XREF: IoFastQueryNetworkAttributes+2C↑p
                                        ; DATA XREF: .pdata:000000014011CA48↑o

var_260         = dword ptr -260h
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_230         = dword ptr -230h
var_220         = dword ptr -220h
var_218         = qword ptr -218h
var_210         = dword ptr -210h
var_200         = qword ptr -200h
var_1F0         = dword ptr -1F0h
var_1EA         = word ptr -1EAh
var_1DC         = dword ptr -1DCh
var_1D8         = dword ptr -1D8h
var_1C8         = qword ptr -1C8h
var_1A7         = byte ptr -1A7h
var_1A5         = byte ptr -1A5h
var_1A0         = qword ptr -1A0h
var_190         = xmmword ptr -190h
var_180         = xmmword ptr -180h
var_170         = qword ptr -170h
var_150         = byte ptr -150h
var_40          = qword ptr -40h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-150h]
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+180h+var_40], rax
                mov     rsi, [rbp+180h+arg_20]
                mov     r15b, r8b
                mov     rbx, [rbp+180h+arg_28]
                mov     r12d, edx
                and     [rsp+280h+var_240], 0
                mov     r14, rcx
                xor     edx, edx
                lea     rcx, [rbp+180h+var_150]
                mov     r8d, 110h
                mov     edi, r9d
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+280h+var_230]
                mov     r8d, 0E0h
                call    memset
                mov     eax, 7
                mov     [rsp+280h+var_230], 0E00008h
                mov     [rbp+180h+var_1EA], ax
                bts     edi, 15h
                mov     [rbp+180h+var_1F0], edi
                xorps   xmm0, xmm0
                mov     [rbp+180h+var_1C8], rbx
                mov     [rbp+180h+var_200], r14
                lea     r13d, [rax-6]
                mov     [rbp+180h+var_1D8], r13d
                lea     rax, [rbp+180h+var_150]
                mov     [rbp+180h+var_1A0], rax
                lea     eax, [r13+27h]
                mov     [rbp+180h+var_1DC], r13d
                mov     [rbp+180h+var_1A7], r13b
                mov     [rbp+180h+var_1A5], r13b
                mov     [rbp+180h+var_170], r13
                movups  [rbp+180h+var_190], xmm0
                mov     word ptr [rbp+180h+var_190], ax
                movups  [rbp+180h+var_180], xmm0
                test    r15b, r15b
                jnz     short loc_140895999
                bts     dword ptr [r14+18h], 9

loc_140895999:                          ; CODE XREF: sub_1408958C8+C9↑j
                call    PsGetCurrentSilo
                mov     rdx, cs:IoFileObjectType
                lea     rcx, [rsp+280h+var_240]
                mov     [rsp+280h+var_248], rcx
                xor     r9d, r9d
                mov     [rsp+280h+var_250], rax
                mov     r8b, r15b
                mov     [rbp+180h+var_170], rax
                mov     rcx, r14
                lea     rax, [rsp+280h+var_230]
                mov     [rsp+280h+var_258], rax
                mov     [rsp+280h+var_260], r12d
                call    ObOpenObjectByNameEx
                mov     rcx, qword ptr [rbp+180h+var_190+8]
                mov     ebx, eax
                test    rcx, rcx
                jz      short loc_1408959E5
                call    sub_14063F270

loc_1408959E5:                          ; CODE XREF: sub_1408958C8+116↑j
                cmp     [rsp+280h+var_210], 0BEAA0251h
                jz      short loc_140895A09
                test    ebx, ebx
                js      short loc_140895A05
                mov     rcx, [rsp+280h+var_240]
                mov     dl, r15b
                call    ObCloseHandle
                mov     ebx, 0C0000024h

loc_140895A05:                          ; CODE XREF: sub_1408958C8+129↑j
                mov     [rsi], ebx
                jmp     short loc_140895A18
; ---------------------------------------------------------------------------

loc_140895A09:                          ; CODE XREF: sub_1408958C8+125↑j
                mov     ecx, [rsp+280h+var_220]
                mov     [rsi], ecx
                mov     rcx, [rsp+280h+var_218]
                mov     [rsi+8], rcx

loc_140895A18:                          ; CODE XREF: sub_1408958C8+13F↑j
                mov     al, r13b
                mov     rcx, [rbp+180h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+280h+arg_8]
                add     rsp, 250h
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
; } // starts at 1408958C8
sub_1408958C8   endp

byte_140895A46  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014011CA48↑o

; =============== S U B R O U T I N E =======================================


sub_140895A4C   proc near               ; CODE XREF: IoRaiseHardError+65↑p
                                        ; DATA XREF: .pdata:000000014011CA54↑o
                sub     rsp, 28h
                call    PsGetThreadServerSilo
                mov     rcx, rax
                call    sub_140581230
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140895A4C   endp

byte_140895A63  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014011CA54↑o

; =============== S U B R O U T I N E =======================================


sub_140895A6C   proc near               ; CODE XREF: NtSetInformationFile+B30↑p
                                        ; IoSetInformation+D38E4↑p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 50h
                and     qword ptr [rax-38h], 0
                mov     rsi, rdx
                and     qword ptr [rax+20h], 0
                mov     edx, 10h
                mov     r14, rcx
                cmp     r8d, edx
                jnb     short loc_140895AA3

loc_140895A99:                          ; CODE XREF: sub_140895A6C+4A↓j
                                        ; sub_140895A6C+56↓j
                mov     ebx, 0C000000Dh
                jmp     loc_140895B96
; ---------------------------------------------------------------------------

loc_140895AA3:                          ; CODE XREF: sub_140895A6C+2B↑j
                movups  xmm0, xmmword ptr [rsi]
                movups  [rsp+68h+var_30], xmm0
                psrldq  xmm0, 8
                movd    eax, xmm0
                cmp     al, 1
                ja      short loc_140895A99
                mov     byte ptr [rsp+68h+var_30+8], 0
                cmp     dword ptr [rsp+68h+var_30+8], 0
                jnz     short loc_140895A99
                mov     ebx, 66506F49h
                mov     ecx, 200h
                mov     r8d, ebx
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140895AE8
                mov     ebx, 0C000009Ah
                jmp     loc_140895B96
; ---------------------------------------------------------------------------

loc_140895AE8:                          ; CODE XREF: sub_140895A6C+70↑j
                xor     r8d, r8d
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0
                mov     rcx, [rsi]
                lea     rax, [rsp+68h+arg_18]
                mov     r9d, ebx
                mov     [rsp+68h+var_48], rax
                lea     edx, [r8+2]
                call    sub_1405F5B74
                mov     rbp, [rsp+68h+arg_18]
                mov     ebx, eax
                test    eax, eax
                js      short loc_140895B74
                mov     edx, 6F466F49h
                mov     rcx, rbp
                call    ObfReferenceObjectWithTag
                mov     rcx, rbp
                call    sub_1402073C8
                mov     [rdi], rbp
                lea     rdx, [rsp+68h+var_38]
                movzx   eax, byte ptr [rsi+8]
                mov     rcx, r14
                xor     eax, [rdi+8]
                and     eax, 1
                xor     [rdi+8], eax
                call    sub_14021AEE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_140895B74
                mov     rcx, [rsp+68h+var_38]
                mov     r8, rdi
                mov     edx, 8
                call    sub_1403496B8
                test    eax, eax
                jns     short loc_140895B70
                mov     ebx, 0C0000021h
                jmp     short loc_140895B74
; ---------------------------------------------------------------------------

loc_140895B70:                          ; CODE XREF: sub_140895A6C+FB↑j
                xor     edi, edi
                xor     ebx, ebx

loc_140895B74:                          ; CODE XREF: sub_140895A6C+AD↑j
                                        ; sub_140895A6C+E5↑j ...
                test    rdi, rdi
                jz      short loc_140895B96
                cmp     qword ptr [rdi], 0
                jz      short loc_140895B8C
                mov     edx, 6F466F49h
                mov     rcx, rbp
                call    ObfDereferenceObjectWithTag

loc_140895B8C:                          ; CODE XREF: sub_140895A6C+111↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_140895B96:                          ; CODE XREF: sub_140895A6C+32↑j
                                        ; sub_140895A6C+77↑j ...
                mov     rbp, [rsp+68h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 50h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140895A6C   endp

algn_140895BAC:                         ; DATA XREF: .pdata:000000014011CA60↑o
                align 20h
; Exported entry 886. IoInitializeMiniCompletionPacket

; =============== S U B R O U T I N E =======================================



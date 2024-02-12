NtDeleteFile    proc near               ; DATA XREF: .pdata:000000014010B588↑o
                                        ; PAGE:000000014098B9F8↓o

var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = byte ptr -218h
var_210         = byte ptr -210h
var_200         = dword ptr -200h
var_1F0         = dword ptr -1F0h
var_1E0         = dword ptr -1E0h
var_1D0         = qword ptr -1D0h
var_1C0         = dword ptr -1C0h
var_1BA         = word ptr -1BAh
var_1A8         = dword ptr -1A8h
var_176         = byte ptr -176h
var_170         = qword ptr -170h
var_168         = dword ptr -168h
var_160         = xmmword ptr -160h
var_150         = xmmword ptr -150h
var_140         = qword ptr -140h
var_120         = byte ptr -120h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                lea     rbp, [rax-158h]
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+150h+var_10], rax
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rbp+150h+var_120]
                mov     r8d, 110h
                call    memset
                mov     rax, gs:188h
                lea     rcx, [rsp+250h+var_200]
                xor     edx, edx
                mov     r8d, 0E0h
                mov     bl, [rax+232h]
                call    memset
                xorps   xmm0, xmm0
                mov     [rsp+250h+var_200], 0E00008h
                mov     eax, 7
                mov     [rbp+150h+var_1C0], 1000h
                mov     [rbp+150h+var_1BA], ax
                lea     rax, [rbp+150h+var_120]
                mov     [rbp+150h+var_170], rax
                xor     eax, eax
                mov     [rbp+150h+var_140], rax
                mov     eax, 28h ; '('
                movups  [rbp+150h+var_160], xmm0
                mov     word ptr [rbp+150h+var_160], ax
                mov     [rbp+150h+var_1A8], 1
                mov     [rbp+150h+var_176], 1
                mov     [rbp+150h+var_1D0], rdi
                mov     [rbp+150h+var_168], 20h ; ' '
                movups  [rbp+150h+var_150], xmm0
                call    PsGetCurrentSilo
                mov     [rbp+150h+var_140], rax
                xor     r9d, r9d
                mov     rax, gs:188h
                mov     r8b, bl
                mov     rcx, rdi
                inc     qword ptr [rax+390h]
                lea     rax, [rsp+250h+var_210]
                inc     dword ptr gs:2EE4h
                mov     rdx, cs:IoFileObjectType
                mov     qword ptr [rsp+250h+var_218], rax
                mov     rax, [rbp+150h+var_140]
                mov     [rsp+250h+var_220], rax
                lea     rax, [rsp+250h+var_200]
                mov     [rsp+250h+var_228], rax
                mov     dword ptr [rsp+250h+var_230], 10000h
                call    ObOpenObjectByNameEx
                lea     rcx, [rsp+250h+var_200]
                mov     ebx, eax
                call    sub_140641024
                cmp     [rsp+250h+var_1E0], 0BEAA0251h
                mov     eax, [rsp+250h+var_1F0]
                cmovnz  eax, ebx
                mov     rcx, [rbp+150h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+250h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14077B9E0
NtDeleteFile    endp

algn_14077BB33:                         ; DATA XREF: .pdata:000000014010B588↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14077BB40   proc near               ; DATA XREF: .rdata:000000014009AA4C↑o
                                        ; .pdata:000000014010B594↑o ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014084EC98 SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                or      ebp, 0FFFFFFFFh
                mov     rsi, rcx
                add     [rax+1E4h], bp
                xor     edx, edx
                lea     rcx, qword_140C48358
                call    ExAcquirePushLockSharedEx
                mov     rdx, [rsi]
                lea     r8, qword_140C48360
                test    rdx, rdx
                mov     rax, rdx
                mov     rcx, r8
                cmovnz  rcx, rdx
                neg     rax
                sbb     rbx, rbx
                and     rbx, rdx
                mov     rdx, [rcx]
                xor     edi, edi

loc_14077BB9D:                          ; CODE XREF: sub_14077BB40+C6↓j
                cmp     rdx, r8
                jz      short loc_14077BBB4
                mov     eax, [rdx+10h]
                test    eax, eax
                js      short loc_14077BC03
                lock inc dword ptr [rdx+10h]
                mov     rdi, [rdx+28h]
                mov     [rsi], rdx

loc_14077BBB4:                          ; CODE XREF: sub_14077BB40+60↑j
                xor     edx, edx
                lea     rcx, qword_140C48358
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    rbx, rbx
                jz      short loc_14077BBEA
                mov     ecx, ebp
                lock xadd [rbx+10h], ecx
                add     ecx, ebp
                cmp     ecx, 80000000h
                jz      loc_14084EC98

loc_14077BBEA:                          ; CODE XREF: sub_14077BB40+93↑j
                                        ; sub_14077BB40+D3165↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rdi
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14077BC03:                          ; CODE XREF: sub_14077BB40+67↑j
                mov     rdx, [rdx]
                jmp     short loc_14077BB9D
sub_14077BB40   endp

; ---------------------------------------------------------------------------
algn_14077BC08:                         ; DATA XREF: .rdata:000000014009AA4C↑o
                                        ; .pdata:000000014010B594↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14077BC10   proc near               ; CODE XREF: NtSetInformationProcess+2083↑p
                                        ; DATA XREF: .rdata:000000014009AA70↑o ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014084ECC0 SIZE 00000033 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     r10d, 80000h
                xor     ebp, ebp
                mov     rbx, rcx
                mov     rdi, [rax+0B8h]
                mov     eax, [rdx]
                mov     edx, eax
                and     edx, 2
                shl     edx, 11h
                mov     r8d, edx
                or      r8d, r10d
                and     al, 1
                cmovz   r8d, edx
                prefetchw byte ptr [rdi+460h]
                mov     edx, [rdi+460h]
                mov     r11d, 0C0000h
                mov     eax, edx
                mov     r9d, 40000h

loc_14077BC6B:                          ; CODE XREF: sub_14077BC10+83↓j
                and     eax, r11d
                cmp     eax, r8d
                jz      short loc_14077BC95
                test    r9d, edx
                jnz     loc_14084ECC0
                mov     ecx, edx
                mov     eax, edx
                and     ecx, 0FFF3FFFFh
                or      ecx, r8d
                lock cmpxchg [rdi+460h], ecx
                mov     edx, eax
                jnz     short loc_14077BC6B

loc_14077BC95:                          ; CODE XREF: sub_14077BC10+61↑j
                cmp     r8d, r9d
                jz      loc_14084ECCA
                test    r10d, r8d
                jz      short loc_14077BD05
                cmp     cs:KeDynamicPartitioningSupported, bpl
                jz      short loc_14077BD05
                dec     word ptr [rbx+1E4h]
                xor     edx, edx
                lea     rcx, qword_140D2D188
                call    ExAcquirePushLockSharedEx
                lea     rcx, unk_140C11460
                call    KeIsEmptyAffinityEx
                test    eax, eax
                jz      loc_14084ECDB

loc_14077BCD5:                          ; CODE XREF: sub_14077BC10+D30DE↓j
                mov     eax, 11h
                lock cmpxchg cs:qword_140D2D188, rbp
                jz      short loc_14077BCF1
                lea     rcx, qword_140D2D188
                call    ExfReleasePushLockShared

loc_14077BCF1:                          ; CODE XREF: sub_14077BC10+D3↑j
                lea     rcx, qword_140D2D188
                call    sub_140243660
                mov     rcx, rbx
                call    sub_14021E1F0

loc_14077BD05:                          ; CODE XREF: sub_14077BC10+91↑j
                                        ; sub_14077BC10+9A↑j ...
                xor     eax, eax

loc_14077BD07:                          ; CODE XREF: sub_14077BC10+D30B5↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14077BC10   endp

algn_14077BD18:                         ; DATA XREF: .rdata:000000014009AA70↑o
                                        ; .pdata:000000014010B5A0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14077BD20   proc near               ; CODE XREF: sub_14074562C+1E↑p
                                        ; sub_1408B3F94+53↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014084ECF4 SIZE 0000002C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     edi, edx
                cmp     edx, [rcx]
                jnb     short loc_14077BD7D
                lea     rcx, [rdi+rdi*2]
                mov     edx, 4C706E50h
                lea     rsi, [rbx+rcx*8]
                mov     rcx, [rsi+10h]
                call    ObfDereferenceObjectWithTag
                mov     eax, [rsi+20h]
                test    al, 1
                jz      short loc_14077BD58
                dec     dword ptr [rbx+8]

loc_14077BD58:                          ; CODE XREF: sub_14077BD20+33↑j
                mov     edx, [rbx]
                lea     eax, [rdx-1]
                cmp     edi, eax
                jb      loc_14084ECF4

loc_14077BD65:                          ; CODE XREF: sub_14077BD20+D2FFB↓j
                lea     eax, [rdx-1]
                mov     [rbx], eax
                xor     eax, eax

loc_14077BD6C:                          ; CODE XREF: sub_14077BD20+62↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14077BD7D:                          ; CODE XREF: sub_14077BD20+16↑j
                mov     eax, 0C000008Ch
                jmp     short loc_14077BD6C
sub_14077BD20   endp

; ---------------------------------------------------------------------------
algn_14077BD84:                         ; DATA XREF: .rdata:000000014009AAB0↑o
                                        ; .pdata:000000014010B5AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14077BD90   proc near               ; DATA XREF: .rdata:000000014009AAD0↑o
                                        ; .pdata:000000014010B5B8↑o ...

var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_0           = dword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

; FUNCTION CHUNK AT 000000014084ED20 SIZE 00000014 BYTES

                push    rbp
                push    rbx
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                and     [rbp+arg_0], 0
                and     [rbp+var_C], 0
                mov     rax, gs:188h
                and     [rbp+arg_10], 0
                and     [rbp+arg_8], 0
                cmp     byte ptr [rax+232h], 1
                jnz     loc_14084ED20
                mov     rcx, cs:qword_140D2E690
                mov     dl, 1
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_14084ED2A
                mov     rcx, cs:qword_140CF4378
                lea     r8, [rbp+arg_10]
                mov     edx, 4
                call    sub_14062C5C0
                mov     ebx, eax
                test    eax, eax
                js      loc_14077BE85
                and     [rsp+40h+var_18], 0
                lea     rax, aControlPnp ; "Control\\Pnp"
                mov     rdx, [rbp+arg_10]
                lea     r8, [rbp+var_10]
                and     dword ptr [rsp+40h+var_20], 0
                lea     rcx, [rbp+arg_8]
                mov     r9d, 0F003Fh
                mov     [rbp+var_8], rax
                mov     [rbp+var_10], 180016h
                call    sub_14073B9B0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14077BE75
                mov     rcx, [rbp+arg_8]
                lea     rax, aDisablelkg ; "DisableLKG"
                mov     [rbp+var_8], rax
                lea     rdx, [rbp+var_10]
                lea     rax, [rbp+arg_0]
                mov     dword ptr [rsp+40h+var_18], 4
                mov     r9d, 4
                mov     [rsp+40h+var_20], rax
                xor     r8d, r8d
                mov     [rbp+arg_0], 1
                mov     [rbp+var_10], 160014h
                call    ZwSetValueKey
                mov     ebx, eax

loc_14077BE75:                          ; CODE XREF: sub_14077BD90+A1↑j
                cmp     [rbp+arg_8], 0
                jz      short loc_14077BE85
                mov     rcx, [rbp+arg_8]
                call    ZwClose

loc_14077BE85:                          ; CODE XREF: sub_14077BD90+63↑j
                                        ; sub_14077BD90+EA↑j ...
                mov     eax, ebx
                add     rsp, 40h
                pop     r15
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14077BD90   endp

algn_14077BE91:                         ; DATA XREF: .rdata:000000014009AAD0↑o
                                        ; .pdata:000000014010B5B8↑o
                align 20h
; Exported entry 1027. IoUnregisterFileSystem

; =============== S U B R O U T I N E =======================================



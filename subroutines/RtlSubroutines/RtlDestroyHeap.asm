RtlDestroyHeap  proc near               ; DATA XREF: .rdata:000000014009559C↑o
                                        ; .pdata:000000014010AA60↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140849192 SIZE 000000CE BYTES

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax+8], 0
                mov     rdi, rcx
                and     qword ptr [rax+10h], 0
                test    rcx, rcx
                jz      loc_140849192
                cmp     dword ptr [rcx+10h], 0CCDDCCDDh
                jnz     loc_1408491B1

loc_140771813:                          ; CODE XREF: RtlDestroyHeap+D79B9↓j
                                        ; RtlDestroyHeap+D7A7B↓j
                mov     rbx, [rsp+38h+arg_10]
                xor     eax, eax
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlDestroyHeap  endp

byte_140771826  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009559C↑o
                                        ; .pdata:000000014010AA60↑o

; =============== S U B R O U T I N E =======================================


sub_14077182C   proc near               ; CODE XREF: NtSetInformationThread+E68↑p
                                        ; NtSetInformationProcess+F39↑p
                                        ; DATA XREF: ...
                test    edx, edx
                jz      short loc_14077183E
                lock bts dword ptr [rcx+78h], 3

loc_140771836:                          ; CODE XREF: sub_14077182C+18↓j
                setb    al
                movzx   eax, al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14077183E:                          ; CODE XREF: sub_14077182C+2↑j
                lock btr dword ptr [rcx+78h], 3
                jmp     short loc_140771836
sub_14077182C   endp

; ---------------------------------------------------------------------------
algn_140771846:                         ; DATA XREF: .pdata:000000014010AA6C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140771850   proc near               ; DATA XREF: .pdata:000000014010AA78↑o
                                        ; sub_140A6C348+24↓o

arg_0           = dword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                lea     r9, [rsp+28h+arg_0]
                add     rcx, 28h ; '('
                xor     r8d, r8d
                mov     dl, 1
                call    RtlHashUnicodeString
                mov     eax, [rsp+28h+arg_0]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771850   endp

byte_140771876  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010AA78↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14077187C   proc near               ; CODE XREF: sub_140723E38+193↑p
                                        ; DATA XREF: .rdata:00000001400955E8↑o ...

var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A0          = byte ptr -0A0h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h

; FUNCTION CHUNK AT 0000000140849260 SIZE 000001AE BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-37h]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                mov     rax, [rcx+138h]
                xor     r14d, r14d
                mov     edi, r8d
                mov     rcx, [rax+58h]
                mov     rsi, [rax+28h]
                test    rcx, rcx
                jz      loc_140849260
                mov     r9d, [rcx]
                cmp     r9d, edi
                jnz     loc_1408492E8
                add     rcx, 4
                mov     r8d, edi
                call    RtlCompareMemory
                mov     r9, rax
                cmp     rax, rdi
                jnz     loc_140849348

loc_1407718DF:                          ; CODE XREF: sub_14077187C+D79EB↓j
                                        ; sub_14077187C+D7A09↓j ...
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0C0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14077187C
sub_14077187C   endp

algn_1407718FA:                         ; DATA XREF: .rdata:00000001400955E8↑o
                                        ; .pdata:000000014010AA84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140771900   proc near               ; CODE XREF: sub_14073A3A0+18A↑p
                                        ; DATA XREF: .pdata:000000014010AA90↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, r8d
                mov     rsi, rdx
                mov     rbp, rcx
                mov     r8d, 47706E50h
                mov     ecx, 1
                lea     edx, [rdi+4]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140771981
                mov     r8d, edi
                mov     [rax], edi
                lea     rcx, [rax+4]
                mov     rdx, rsi
                call    memmove
                mov     rax, [rbp+138h]
                mov     rcx, [rax+58h]
                mov     [rax+58h], rbx
                test    rcx, rcx
                jnz     short loc_140771975

loc_14077195D:                          ; CODE XREF: sub_140771900+7F↓j
                xor     eax, eax

loc_14077195F:                          ; CODE XREF: sub_140771900+86↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140771975:                          ; CODE XREF: sub_140771900+5B↑j
                mov     edx, 47706E50h
                call    ExFreePoolWithTag
                jmp     short loc_14077195D
; ---------------------------------------------------------------------------

loc_140771981:                          ; CODE XREF: sub_140771900+36↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14077195F
sub_140771900   endp

; ---------------------------------------------------------------------------
algn_140771988:                         ; DATA XREF: .pdata:000000014010AA90↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140771990   proc near               ; CODE XREF: sub_14066E11C+214↑p
                                        ; sub_1406E11DC+243↑p ...

var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                and     [rsp+48h+var_24], 0
                mov     eax, r8d
                and     [rsp+48h+var_1C], 0
                lea     r8, sub_140770C30
                mov     [rsp+48h+var_20], eax
                and     al, 1
                mov     [rsp+48h+var_28], edx
                mov     dl, al
                mov     [rsp+48h+var_18], r9
                lea     r9, [rsp+48h+var_28]
                call    sub_1406E2584
                mov     rcx, [rsp+48h+arg_20]
                test    rcx, rcx
                jz      short loc_1407719D3
                mov     eax, [rsp+48h+var_24]
                mov     [rcx], eax

loc_1407719D3:                          ; CODE XREF: sub_140771990+3B↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771990   endp

algn_1407719D9:                         ; DATA XREF: .pdata:000000014010AA9C↑o
                align 20h
; Exported entry 1948. PsSetProcessFaultInformation

; =============== S U B R O U T I N E =======================================


                public PsSetProcessFaultInformation
PsSetProcessFaultInformation proc near  ; CODE XREF: NtSetInformationProcess+3496↑p
                                        ; sub_1407315B0+10282D↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014084940E SIZE 0000018E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     eax, [rdx]
                mov     r14, rdx
                mov     rsi, rcx
                mov     rdi, 0FFFFF7800000037Ch
                test    al, 1
                jnz     loc_14084940E

loc_140771A0C:                          ; CODE XREF: PsSetProcessFaultInformation+D7A4C↓j
                                        ; PsSetProcessFaultInformation+D7A9E↓j
                mov     eax, [r14]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                test    al, 2
                jnz     loc_140849483
                lea     rdi, [rsi+438h]

loc_140771A22:                          ; CODE XREF: PsSetProcessFaultInformation+D7B42↓j
                test    al, 4
                jz      short loc_140771A80
                mov     rbp, gs:188h
                add     [rbp+1E4h], bx
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                mov     cl, [rsi+87Bh]
                mov     dl, 38h ; '8'
                mov     al, cl
                and     al, dl
                cmp     al, dl
                jnb     short loc_140771A5F
                lea     eax, [rcx+8]
                xor     al, cl
                and     al, dl
                xor     al, cl
                mov     [rsi+87Bh], al

loc_140771A5F:                          ; CODE XREF: PsSetProcessFaultInformation+6E↑j
                mov     rax, rbx
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140771AB3

loc_140771A6D:                          ; CODE XREF: PsSetProcessFaultInformation+DB↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     eax, [r14]

loc_140771A80:                          ; CODE XREF: PsSetProcessFaultInformation+44↑j
                test    al, 8
                jnz     loc_140849527

loc_140771A88:                          ; CODE XREF: PsSetProcessFaultInformation+D7B8E↓j
                mov     rcx, cs:qword_140CFC968
                call    sub_140309D44
                test    rax, rax
                jnz     loc_140849573

loc_140771A9D:                          ; CODE XREF: PsSetProcessFaultInformation+D7BB7↓j
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140771AB3:                          ; CODE XREF: PsSetProcessFaultInformation+8B↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_140771A6D
PsSetProcessFaultInformation endp

; ---------------------------------------------------------------------------
byte_140771ABD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140095628↑o
                                        ; .pdata:000000014010AAA8↑o

; =============== S U B R O U T I N E =======================================


sub_140771AC4   proc near               ; CODE XREF: sub_140724058+EB↑p
                                        ; sub_14078C760+6C↓p ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                and     [rsp+38h+arg_10], 0
                mov     r14, r8
                and     [rsp+38h+arg_18], 0
                mov     edi, edx
                mov     esi, ecx
                call    sub_140771B38
                mov     ebx, [r14]
                lea     r8, [rsp+38h+arg_18]
                mov     eax, [r14+4]
                lea     rdx, [rsp+38h+arg_10]
                test    ebx, ebx
                mov     dword ptr [rsp+38h+arg_10], eax
                mov     ecx, esi
                mov     dword ptr [rsp+38h+arg_18], ebx
                setnz   byte ptr cs:qword_140C203E0+4
                mov     dword ptr cs:xmmword_140C203D0+8, edi
                call    sub_1407243F4
                mov     eax, dword ptr [rsp+38h+arg_10]
                mov     [r14], ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     [r14+4], eax
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771AC4   endp

algn_140771B32:                         ; DATA XREF: .pdata:000000014010AAB4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140771B38   proc near               ; CODE XREF: sub_140724058:loc_140724179↑p
                                        ; sub_140771AC4+20↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edx, edx
                mov     rdi, r8
                mov     ebx, ecx
                call    sub_1407245A8
                mov     ecx, ebx
                call    sub_140771B74
                mov     rbx, [rsp+28h+arg_0]
                mov     [rdi+4], eax
                mov     eax, cs:dword_140C20384
                mov     [rdi], eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771B38   endp

byte_140771B6C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010AAC0↑o

; =============== S U B R O U T I N E =======================================


sub_140771B74   proc near               ; CODE XREF: sub_140724058+10F↑p
                                        ; sub_140771B38+18↑p ...
                sub     rsp, 28h
                cmp     dword ptr cs:xmmword_140C203C0, ecx
                jnz     short loc_140771B9A
                cmp     ecx, 0FFFFFFFFh
                jz      short loc_140771B9A
                call    sub_1407249E4
                test    eax, eax
                jnz     short loc_140771B94
                mov     eax, cs:dword_140C20380

loc_140771B94:                          ; CODE XREF: sub_140771B74+18↑j
                                        ; sub_140771B74+28↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140771B9A:                          ; CODE XREF: sub_140771B74+A↑j
                                        ; sub_140771B74+F↑j
                xor     eax, eax
                jmp     short loc_140771B94
sub_140771B74   endp

; ---------------------------------------------------------------------------
byte_140771B9E  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010AACC↑o

; =============== S U B R O U T I N E =======================================


sub_140771BA4   proc near               ; CODE XREF: sub_1406F5218+2EE↑p
                                        ; DATA XREF: .rdata:0000000140095668↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014084959C SIZE 000002BF BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 20h
                and     [rsp+48h+arg_0], 0
                mov     rsi, rcx
                test    rcx, rcx
                jz      short loc_140771C32
                mov     eax, cs:dword_140C50464
                cmp     eax, 2
                jnz     short loc_140771C2B
                mov     eax, cs:dword_140C50460
                mov     r12d, 1
                test    r12b, al
                jnz     short loc_140771C2B
                mov     rbx, [rcx+30h]
                mov     rcx, rbx
                call    sub_140243AF0
                cmp     eax, r12d
                jz      short loc_140771C2B
                lea     r8, [rsp+48h+arg_0]
                mov     rdx, rbx
                lea     rcx, dword_140C50460
                call    sub_140757B24
                test    eax, eax
                jnz     loc_14084959C

loc_140771C11:                          ; CODE XREF: sub_140771BA4+D79FE↓j
                                        ; sub_140771BA4+D7CAB↓j
                xor     eax, eax

loc_140771C13:                          ; CODE XREF: sub_140771BA4+8C↓j
                                        ; sub_140771BA4+93↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140771C2B:                          ; CODE XREF: sub_140771BA4+2D↑j
                                        ; sub_140771BA4+3E↑j ...
                mov     eax, 0C00000BBh
                jmp     short loc_140771C13
; ---------------------------------------------------------------------------

loc_140771C32:                          ; CODE XREF: sub_140771BA4+22↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140771C13
sub_140771BA4   endp

; ---------------------------------------------------------------------------
algn_140771C39:                         ; DATA XREF: .rdata:0000000140095668↑o
                                        ; .pdata:000000014010AAD8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140771C40   proc near               ; CODE XREF: sub_1406A229C+1B7↑p
                                        ; sub_140887900+11E↓p
                                        ; DATA XREF: ...

var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014084985C SIZE 000000ED BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 30h
                mov     rsi, rcx
                mov     rdi, rdx
                lea     rcx, dword_140C47860
                call    ExAcquireFastMutex
                mov     rbx, [rsi+578h]
                test    rbx, rbx
                jnz     loc_14084985C

loc_140771C7D:                          ; CODE XREF: sub_140771C40+D7C24↓j
                xor     ebx, ebx
                mov     edi, 0C0000353h

loc_140771C84:                          ; CODE XREF: sub_140771C40+D7C34↓j
                lea     rcx, dword_140C47860
                call    KeReleaseGuardedMutex
                test    edi, edi
                jns     loc_140849879

loc_140771C98:                          ; CODE XREF: sub_140771C40+D7C42↓j
                test    rbx, rbx
                jnz     loc_140849887

loc_140771CA1:                          ; CODE XREF: sub_140771C40+D7CCF↓j
                mov     rbx, [rsp+30h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+30h+arg_10]
                mov     rsi, [rsp+30h+arg_8]
                mov     r14, [rsp+30h+arg_18]
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771C40   endp

byte_140771CBE  db 12h dup(0CCh)        ; DATA XREF: .rdata:0000000140095694↑o
                                        ; .pdata:000000014010AAE4↑o

; =============== S U B R O U T I N E =======================================


sub_140771CD0   proc near               ; DATA XREF: .pdata:000000014010AAF0↑o
                                        ; PAGE:000000014098B9A8↓o

var_18          = byte ptr -18h
var_10          = byte ptr -10h

                push    rbx
                sub     rsp, 30h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     [rsp+38h+var_10], 1
                xor     r8d, r8d
                mov     [rsp+38h+var_18], 0
                call    sub_14070ACC8
                mov     rcx, gs:188h
                mov     ebx, eax
                call    sub_14021E1F0
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771CD0   endp

algn_140771D11:                         ; DATA XREF: .pdata:000000014010AAF0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140771D20   proc near               ; DATA XREF: .pdata:000000014010AAFC↑o
                                        ; sub_140A55694+1D↓o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, [rdx]
                mov     rsi, [r8]
                mov     rcx, [rdi+10h]
                mov     rdx, [rsi+10h]
                call    _wcsicmp
                xor     ebx, ebx
                test    eax, eax
                jz      short loc_140771D67

loc_140771D48:                          ; CODE XREF: sub_140771D20+56↓j
                js      short loc_140771D63
                test    eax, eax
                setle   bl
                lea     eax, [rbx+1]

loc_140771D52:                          ; CODE XREF: sub_140771D20+45↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140771D63:                          ; CODE XREF: sub_140771D20:loc_140771D48↑j
                xor     eax, eax
                jmp     short loc_140771D52
; ---------------------------------------------------------------------------

loc_140771D67:                          ; CODE XREF: sub_140771D20+26↑j
                mov     rdx, [rsi+8]
                mov     rcx, [rdi+8]
                call    _wcsicmp
                test    eax, eax
                jmp     short loc_140771D48
sub_140771D20   endp

; ---------------------------------------------------------------------------
algn_140771D78:                         ; DATA XREF: .pdata:000000014010AAFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140771D80   proc near               ; CODE XREF: sub_14060DA00+2D12↑p
                                        ; DATA XREF: .rdata:0000000140095750↑o ...

; FUNCTION CHUNK AT 00000001407E8E4D SIZE 00000036 BYTES
; FUNCTION CHUNK AT 000000014084994A SIZE 0000002A BYTES

; __unwind { // __C_specific_handler
                push    rbx
                sub     rsp, 30h
                mov     eax, cs:dword_140D41600
                mov     [r8], eax
                xor     ebx, ebx
                test    eax, eax
                jnz     loc_14084994A
                mov     ebx, 0C0000225h

loc_140771D9E:                          ; CODE XREF: sub_140771D80+D7BD3↓j
                                        ; sub_140771D80+D7BE8↓j ...
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140771D80
sub_140771D80   endp

algn_140771DA7:                         ; DATA XREF: .rdata:0000000140095750↑o
                                        ; .pdata:000000014010AB08↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140771DB0   proc near               ; CODE XREF: sub_1406F7ED0+1CB↑p
                                        ; sub_140778EB0+13↓p ...

var_30          = dword ptr -30h
var_2C          = byte ptr -2Ch
var_2B          = word ptr -2Bh
var_29          = byte ptr -29h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  20h
arg_8           = dword ptr  28h
arg_18          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140849974 SIZE 0000000F BYTES

                mov     [rsp-18h+arg_0], rbx
                mov     byte ptr [rsp-18h+arg_8], dl
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 50h
                xor     esi, esi
                mov     ebx, r8d
                cmp     cs:byte_140C5430C, sil
                mov     dil, cl
                mov     [rbp+var_2B], si
                mov     [rbp+var_29], sil
                mov     [rbp+var_24], esi
                mov     [rbp+var_14], esi
                mov     [rbp+arg_18], rsi
                jz      short loc_140771E3D
                call    RtlGetActiveConsoleId
                mov     [rbp+arg_8], eax
                cmp     eax, 0FFFFFFFFh
                jz      short loc_140771E3D
                lea     r8d, [rsi+1]
                cmp     cs:dword_140D2E9EC, r8d
                jz      loc_140849974
                lea     rax, [rbp+arg_18]
                mov     byte ptr [rbp+arg_18], dil
                lea     r9, [rbp+arg_8]
                mov     [rbp+var_20], rax
                lea     rdx, [rbp+var_30]
                mov     byte ptr [rbp+arg_18+1], sil
                lea     ecx, [rsi+5]
                mov     dword ptr [rbp+arg_18+4], ebx
                mov     [rbp+var_30], r8d
                mov     [rbp+var_2C], sil
                mov     [rbp+var_28], 8
                mov     [rbp+var_18], esi
                mov     [rbp+var_10], rsi
                call    sub_140676AA0

loc_140771E3D:                          ; CODE XREF: sub_140771DB0+34↑j
                                        ; sub_140771DB0+41↑j ...
                mov     rbx, [rsp+50h+arg_0]
                add     rsp, 50h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771DB0   endp

byte_140771E4B  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400957AC↑o
                                        ; .pdata:000000014010AB14↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=10h

sub_140771E54   proc near               ; CODE XREF: sub_1403717DC+11F034↑p
                                        ; sub_1406F5218+289↑p ...

var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = qword ptr -0B4h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = byte ptr -80h
var_78          = qword ptr -78h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 0000000140849984 SIZE 000001A9 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                lea     rbp, [rax-18h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+10h+var_10], rax
                and     [rsp+110h+var_D0], 0
                mov     rbx, rcx
                and     qword ptr [rsp+110h+var_AC], 0
                and     dword ptr [rsp+110h+var_A8+4], 0
                and     [rsp+110h+var_98], 0
                and     [rbp+10h+var_88], 0
                and     [rsp+110h+var_D8], 0
                and     dword ptr [rsp+110h+var_E0], 0
                test    rdx, rdx
                jnz     loc_140849984
                test    cs:dword_140CFC400, 8000h
                jnz     loc_140849ADF
                xor     edi, edi

loc_140771EC2:                          ; CODE XREF: sub_140771E54+D7B63↓j
                                        ; sub_140771E54+D7BB9↓j ...
                mov     eax, edi
                mov     rcx, [rbp+10h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+110h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140771E54
sub_140771E54   endp

algn_140771EEA:                         ; DATA XREF: .rdata:00000001400957E0↑o
                                        ; .pdata:000000014010AB20↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140771EF0   proc near               ; CODE XREF: sub_1406F5218+4A3↑p
                                        ; DATA XREF: .rdata:00000001400957FC↑o ...

; FUNCTION CHUNK AT 0000000140849B2E SIZE 00000016 BYTES

                push    rbx
                sub     rsp, 20h
                cmp     qword ptr [rcx], 0
                mov     r8, rdx
                jz      loc_140849B2E
                mov     rdx, [rcx+0C8h]
                mov     rbx, [rcx+0D0h]

loc_140771F11:                          ; CODE XREF: sub_140771EF0+D7C4F↓j
                mov     eax, edx
                neg     eax
                lock xadd cs:dword_140C4EE50, eax
                sub     rdx, [r8+8]
                lea     rcx, unk_140C50C00
                call    sub_14026B700
                test    rbx, rbx
                jz      short loc_140771F41
                mov     rdx, rbx
                lea     rcx, unk_140C50C00
                call    sub_140207B8C

loc_140771F41:                          ; CODE XREF: sub_140771EF0+40↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140771EF0   endp

algn_140771F48:                         ; DATA XREF: .rdata:00000001400957FC↑o
                                        ; .pdata:000000014010AB2C↑o
                align 10h
; Exported entry 787. IoCreateStreamFileObjectEx

; =============== S U B R O U T I N E =======================================


                public IoCreateStreamFileObjectEx
IoCreateStreamFileObjectEx proc near    ; DATA XREF: .pdata:000000014010AB38↑o

arg_18          = qword ptr  20h

                mov     rax, rsp
                sub     rsp, 48h
                and     qword ptr [rax+20h], 0
                lea     r9, [rax+20h]
                mov     [rax-28h], r8
                xorps   xmm0, xmm0
                mov     r8, rdx
                mov     rdx, rcx
                movups  xmmword ptr [rax-18h], xmm0
                lea     rcx, [rax-18h]
                mov     dword ptr [rax-18h], 10010h
                call    IoCreateStreamFileObjectEx2
                mov     rax, [rsp+48h+arg_18]
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateStreamFileObjectEx endp

byte_140771F8C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010AB38↑o

; =============== S U B R O U T I N E =======================================


sub_140771F94   proc near               ; CODE XREF: sub_140615D50+5BA↑p
                                        ; DATA XREF: .pdata:000000014010AB44↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001407E8E89 SIZE 00000034 BYTES

; __unwind { // __C_specific_handler
                sub     rsp, 58h
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+58h+var_28], xmm0
                mov     [rsp+58h+var_18], rax

loc_140771FA7:                          ; DATA XREF: .rdata:00000001400958A4↑o
;   __try { // __except at loc_140771FC6
                mov     eax, [rcx]
                mov     dword ptr [rsp+58h+var_28], eax
                movsxd  rax, dword ptr [rcx+4]
                mov     qword ptr [rsp+58h+var_28+8], rax
                mov     eax, [rcx+8]
                mov     dword ptr [rsp+58h+var_18], eax
                mov     eax, [rcx+0Ch]
                mov     dword ptr [rsp+58h+var_18+4], eax
                jmp     short loc_140771FC8
;   } // starts at 140771FA7
; ---------------------------------------------------------------------------

loc_140771FC6:                          ; DATA XREF: .rdata:00000001400958A4↑o
;   __except(loc_1407E8E89) // owned by 140771FA7
                jmp     short loc_140771FD2
; ---------------------------------------------------------------------------

loc_140771FC8:                          ; CODE XREF: sub_140771F94+30↑j
                lea     rcx, [rsp+58h+var_28]
                call    sub_1406C0B1C

loc_140771FD2:                          ; CODE XREF: sub_140771F94:loc_140771FC6↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140771F94
sub_140771F94   endp

algn_140771FD8:                         ; DATA XREF: .pdata:000000014010AB44↑o
                align 20h
; Exported entry 1638. ObAssignSecurity

; =============== S U B R O U T I N E =======================================


                public ObAssignSecurity
ObAssignSecurity proc near              ; DATA XREF: .pdata:000000014010AB50↑o

var_18          = dword ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], 0
                and     [rsp+38h+var_18], 0
                call    sub_14062757C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObAssignSecurity endp

algn_140771FF9:                         ; DATA XREF: .pdata:000000014010AB50↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140772000   proc near               ; DATA XREF: .pdata:000000014010AB5C↑o
                                        ; .data:off_140C002D8↓o

var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = byte ptr -24h
var_23          = word ptr -23h
var_21          = byte ptr -21h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_18          = dword ptr  28h

                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     r9d, r9d
                cmp     cs:byte_140C5430C, r9b
                mov     [rbp+var_23], r9w
                mov     [rbp+var_21], r9b
                mov     [rbp+var_1C], r9d
                mov     [rbp+var_C], r9d
                mov     [rbp+var_30], r9d
                jz      short loc_14077208E
                cmp     cs:dword_140D2E9EC, 1
                mov     [rbp+var_2C], ecx
                jz      short loc_140772097
                neg     r8b
                mov     [rbp+var_23], r9w
                mov     r8d, 1
                mov     [rbp+var_21], r9b
                sbb     eax, eax
                mov     [rbp+var_24], r9b
                and     eax, 2
                mov     qword ptr [rbp-20h], 4
                dec     eax
                mov     qword ptr [rbp-10h], 4
                mov     [rbp+arg_18], eax
                lea     r9, [rbp+var_2C]
                lea     rax, [rbp+arg_18]
                mov     [rbp+var_28], 2
                mov     [rbp+var_18], rax
                lea     rdx, [rbp+var_28]
                lea     rax, [rbp+var_30]
                lea     ecx, [r8+4]
                mov     [rbp+var_8], rax
                call    sub_140676AA0

loc_14077208E:                          ; CODE XREF: sub_140772000+28↑j
                                        ; sub_140772000+9C↓j
                xor     eax, eax
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140772097:                          ; CODE XREF: sub_140772000+34↑j
                call    sub_140900178
                jmp     short loc_14077208E
sub_140772000   endp

; ---------------------------------------------------------------------------
byte_14077209E  db 12h dup(0CCh)        ; DATA XREF: .pdata:000000014010AB5C↑o

; =============== S U B R O U T I N E =======================================


sub_1407720B0   proc near               ; DATA XREF: .pdata:000000014010AB68↑o
                                        ; sub_140737A68+3FA↑o

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 60h
                cmp     byte ptr [r9+1Ch], 0
                xorps   xmm0, xmm0
                movdqu  [rsp+68h+var_28+8], xmm0
                mov     rbx, r9
                mov     rdi, rdx
                mov     rsi, rcx
                jz      short loc_1407720FB
                mov     rax, [r9]
                lea     rcx, [r11-28h]
                and     qword ptr [r11-28h], 0
                mov     r9d, 5
                mov     [r11-48h], rcx
                mov     rcx, rsi
                lea     r8d, [r9-2]
                call    sub_1404079D0

loc_1407720FB:                          ; CODE XREF: sub_1407720B0+27↑j
                mov     r9, [rbx+8]
                test    r9, r9
                jnz     short loc_140772117

loc_140772104:                          ; CODE XREF: sub_1407720B0+A3↓j
                mov     rbx, [rsp+68h+arg_0]
                xor     al, al
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140772117:                          ; CODE XREF: sub_1407720B0+52↑j
                mov     rax, [rbx]
                xorps   xmm0, xmm0
                mov     [rsp+68h+var_30], rax
                mov     r8d, 3
                lea     rax, [rsp+68h+var_28]
                mov     rdx, rdi
                mov     [rsp+68h+var_38], rax
                mov     rcx, rsi
                mov     eax, [rbx+18h]
                mov     [rsp+68h+var_40], eax
                mov     rax, [rbx+10h]
                mov     [rsp+68h+var_48], rax
                movdqu  [rsp+68h+var_28], xmm0
                call    sub_140737F08
                jmp     short loc_140772104
sub_1407720B0   endp

; ---------------------------------------------------------------------------
byte_140772155  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010AB68↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14077215C   proc near               ; CODE XREF: sub_1406F7ED0+141↑p
                                        ; DATA XREF: .pdata:000000014010AB74↑o

var_80          = qword ptr -80h
var_70          = word ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = byte ptr -30h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = byte ptr  18h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                mov     [rax+10h], edx
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     esi, esi
                mov     rbx, rcx
                cmp     cs:byte_140C542E6, sil
                jz      loc_14077226C
                mov     rdi, cs:qword_140C22BE0
                lea     rdx, qword_14000C610
                mov     rcx, rdi
                call    EtwEventEnabled
                test    al, al
                jz      loc_14077226C
                mov     eax, [rbx+478h]
                mov     [rbp+57h+var_6C], eax
                mov     eax, [rbx+480h]
                mov     [rbp+57h+var_68], eax
                mov     rax, [rbx+220h]
                mov     rcx, [rax+5C0h]
                movzx   eax, word ptr [rcx]
                shr     ax, 1
                mov     [rbp+57h+var_70], ax
                lea     rax, [rbp+57h+arg_8]
                mov     [rbp+57h+var_60], rax
                lea     rax, [rbp+57h+var_70]
                mov     [rbp+57h+var_50], rax
                lea     rax, [rbp+57h+var_40]
                mov     [rbp+57h+var_58], 4
                mov     [rbp+57h+var_48], 2
                movzx   edx, word ptr [rcx]
                test    dx, dx
                jz      short loc_140772220
                mov     rax, [rcx+8]
                mov     [rbp+57h+var_40], rax
                lea     rax, [rbp+57h+var_30]
                mov     [rbp+57h+var_38], edx
                mov     [rbp+57h+var_34], esi

loc_140772220:                          ; CODE XREF: sub_14077215C+B0↑j
                mov     qword ptr [rax+8], 4
                lea     rcx, [rbp+57h+var_6C]
                mov     [rax], rcx
                lea     rdx, qword_14000C610
                add     rax, 10h
                lea     rcx, [rbp+57h+var_68]
                xor     r8d, r8d
                mov     qword ptr [rax+8], 4
                mov     [rax], rcx
                lea     rcx, [rbp+57h+var_60]
                sub     rax, rcx
                lea     rcx, [rbp+57h+var_60]
                mov     [rsp+0A0h+var_80], rcx
                mov     rcx, rdi
                lea     r9, [rax+10h]
                sar     r9, 4
                call    EtwWrite

loc_14077226C:                          ; CODE XREF: sub_14077215C+38↑j
                                        ; sub_14077215C+56↑j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A0h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14077215C
sub_14077215C   endp

algn_140772292:                         ; DATA XREF: .pdata:000000014010AB74↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140772298   proc near               ; CODE XREF: sub_1405446FC+5C↑p
                                        ; sub_1406F5218+2AE↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    sub_1402EF7EC
                test    al, al
                jz      short loc_1407722AC
                mov     eax, [rcx+68h]
                test    al, al
                js      short loc_1407722B4

loc_1407722AC:                          ; CODE XREF: sub_140772298+B↑j
                xor     eax, eax

loc_1407722AE:                          ; CODE XREF: sub_140772298+21↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407722B4:                          ; CODE XREF: sub_140772298+12↑j
                mov     eax, 1
                jmp     short loc_1407722AE
sub_140772298   endp

; ---------------------------------------------------------------------------
byte_1407722BB  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010AB80↑o

; =============== S U B R O U T I N E =======================================


sub_1407722C4   proc near               ; CODE XREF: sub_1406F5218+25D↑p
                                        ; sub_1406F5218+314↑p ...
                sub     rsp, 28h
                cmp     rcx, 0FFFFFFFFFFFFFFFEh
                jz      short loc_1407722D9
                cmp     rcx, 1
                jz      short loc_1407722D9
                test    cl, 1
                jz      short loc_1407722DF

loc_1407722D9:                          ; CODE XREF: sub_1407722C4+8↑j
                                        ; sub_1407722C4+E↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407722DF:                          ; CODE XREF: sub_1407722C4+13↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1407722D9
sub_1407722C4   endp

; ---------------------------------------------------------------------------
algn_1407722E8:                         ; DATA XREF: .pdata:000000014010AB8C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1407722F0   proc near               ; CODE XREF: sub_140758F0C+35↑p
                                        ; sub_1407A4D38+4F↓p
                                        ; DATA XREF: ...

var_C0          = qword ptr -0C0h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = byte ptr -90h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140849B44 SIZE 00000099 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                mov     r10, cs:qword_140C4ED60
                mov     r11d, r8d
                mov     ebx, edx
                mov     r9, rcx
                cmp     dword ptr [r10], 5
                ja      short loc_140772343

loc_140772325:                          ; CODE XREF: sub_1407722F0+6A↓j
                                        ; sub_1407722F0+D78E8↓j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E0h+arg_0]
                add     rsp, 0E0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140772343:                          ; CODE XREF: sub_1407722F0+33↑j
                mov     rdx, 400000000000h
                mov     rcx, r10
                call    sub_140209F38
                xor     r8d, r8d
                test    al, al
                jz      short loc_140772325
                jmp     loc_140849B44
; } // starts at 1407722F0
sub_1407722F0   endp

; ---------------------------------------------------------------------------
algn_140772361:                         ; DATA XREF: .rdata:00000001400959D4↑o
                                        ; .pdata:000000014010AB98↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140772368   proc near               ; CODE XREF: sub_1406F5218+133↑p
                                        ; sub_1406F5218+359↑p ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140849BDE SIZE 000001F3 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r12d, r12d
                mov     r15b, dl
                mov     rbp, rcx
                mov     [rax-34h], r12d
                cmp     [rcx+80h], r12
                jnz     loc_140849BDE

loc_14077239E:                          ; CODE XREF: sub_140772368+D7A55↓j
                                        ; sub_140772368+D7A64↓j
                mov     rbx, [rsp+58h+arg_0]
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
sub_140772368   endp

byte_1407723BC  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140095A04↑o
                                        ; .pdata:000000014010ABA4↑o

; =============== S U B R O U T I N E =======================================


sub_1407723C4   proc near               ; CODE XREF: sub_1406F5218+27F↑p
                                        ; DATA XREF: .rdata:0000000140095A30↑o ...

var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140849DD2 SIZE 000000FA BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, cs:qword_140CFCBD0
                mov     rbx, rcx
                test    rax, rax
                jnz     short loc_140772413

loc_1407723EB:                          ; CODE XREF: sub_1407723C4+54↓j
                cmp     cs:qword_140C2B190, 0
                jnz     loc_140849DD2

loc_1407723F9:                          ; CODE XREF: sub_1407723C4+D7B03↓j
                mov     rbx, [rsp+38h+arg_0]
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

loc_140772413:                          ; CODE XREF: sub_1407723C4+25↑j
                call    sub_1404079D0
                jmp     short loc_1407723EB
sub_1407723C4   endp

; ---------------------------------------------------------------------------
algn_14077241A:                         ; DATA XREF: .rdata:0000000140095A30↑o
                                        ; .pdata:000000014010ABB0↑o
                align 20h
; Exported entry 1036. IoUpdateShareAccess

; =============== S U B R O U T I N E =======================================


                public IoUpdateShareAccess
IoUpdateShareAccess proc near           ; DATA XREF: .pdata:000000014010ABBC↑o
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                call    IoUpdateLinkShareAccessEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUpdateShareAccess endp

byte_140772435  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010ABBC↑o

; =============== S U B R O U T I N E =======================================


sub_14077243C   proc near               ; CODE XREF: sub_140743C40+10B↑p
                                        ; sub_1407441FC+F2126↓p
                                        ; DATA XREF: ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140849ECC SIZE 0000006D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                xorps   xmm0, xmm0
                xor     edi, edi
                movups  xmmword ptr [rax-18h], xmm0
                mov     rax, gs:188h
                mov     rbx, rcx
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C432A0
                call    ExAcquireResourceExclusiveLite
                cmp     [rbx+0B4h], edi
                jz      loc_14077253C
                mov     rax, [rbx+70h]
                xor     sil, sil

loc_14077248D:                          ; CODE XREF: sub_14077243C+D7AB9↓j
                mov     rbp, [rax+8]
                lea     rdx, aSwd       ; "SWD\\"
                mov     rcx, rbp
                mov     r8d, 4
                call    _wcsnicmp
                test    eax, eax
                jz      loc_140849ECC
                mov     rdx, rbp
                lea     rcx, [rsp+38h+var_18]
                call    RtlInitUnicodeString
                mov     edx, 746C6644h
                lea     rcx, [rsp+38h+var_18]
                call    sub_14067919C
                test    rax, rax
                jz      short loc_14077253C
                mov     rcx, rax
                call    PsDereferenceSiloContext

loc_1407724D7:                          ; CODE XREF: sub_14077243C+103↓j
                                        ; sub_14077243C+D7AAF↓j
                mov     rcx, [rbx+90h]
                test    rcx, rcx
                jnz     loc_140849EFA

loc_1407724E7:                          ; CODE XREF: sub_14077243C+D7AC7↓j
                                        ; sub_14077243C+D7ADC↓j
                and     dword ptr [rbx+4], 0FFFFFFFEh
                test    sil, sil
                jz      short loc_140772503
                lea     rcx, [rbx+48h]
                xor     edx, edx
                call    sub_140748530
                mov     rcx, rbx
                call    sub_140733CB0

loc_140772503:                          ; CODE XREF: sub_14077243C+B2↑j
                lea     rcx, unk_140C432A0
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    rdi, rdi
                jnz     loc_140849F1D

loc_140772526:                          ; CODE XREF: sub_14077243C+D7AF8↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14077253C:                          ; CODE XREF: sub_14077243C+44↑j
                                        ; sub_14077243C+91↑j ...
                mov     sil, 1
                jmp     short loc_1407724D7
sub_14077243C   endp

; ---------------------------------------------------------------------------
algn_140772541:                         ; DATA XREF: .rdata:0000000140095A58↑o
                                        ; .pdata:000000014010ABC8↑o
                align 10h
; Exported entry 849. IoGetDeviceNumaNode

; =============== S U B R O U T I N E =======================================


                public IoGetDeviceNumaNode
IoGetDeviceNumaNode proc near           ; CODE XREF: sub_140897028+3D↓p
                                        ; DATA XREF: .rdata:0000000140095A78↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140849F3A SIZE 0000000F BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, rdx
                test    rcx, rcx
                jz      short loc_1407725AF
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      short loc_1407725AF
                test    dword ptr [rcx+18Ch], 20000h
                jnz     short loc_1407725AF
                cmp     dword ptr [rcx+294h], 0FFFFFFFDh
                jbe     loc_140849F3A
                call    KeQueryHighestNodeNumber
                test    ax, ax
                jnz     short loc_1407725A8
                mov     [rbx], di

loc_14077259A:                          ; CODE XREF: IoGetDeviceNumaNode+D79F4↓j
                xor     eax, eax

loc_14077259C:                          ; CODE XREF: IoGetDeviceNumaNode+5D↓j
                                        ; IoGetDeviceNumaNode+64↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407725A8:                          ; CODE XREF: IoGetDeviceNumaNode+45↑j
                mov     eax, 0C0000225h
                jmp     short loc_14077259C
; ---------------------------------------------------------------------------

loc_1407725AF:                          ; CODE XREF: IoGetDeviceNumaNode+12↑j
                                        ; IoGetDeviceNumaNode+22↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_14077259C
IoGetDeviceNumaNode endp

; ---------------------------------------------------------------------------
algn_1407725B6:                         ; DATA XREF: .rdata:0000000140095A78↑o
                                        ; .pdata:000000014010ABD4↑o
                align 20h
; Exported entry 2300. RtlNextUnicodePrefix

; =============== S U B R O U T I N E =======================================



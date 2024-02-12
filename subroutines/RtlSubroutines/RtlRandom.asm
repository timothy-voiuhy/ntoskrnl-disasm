RtlRandom       proc near               ; CODE XREF: sub_1404EB518+16↑p
                                        ; sub_1404EB518+6A↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 1
                call    sub_1402D2900
                btr     eax, 1Fh
                mov     [rbx], eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlRandom       endp

byte_14071C5D0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106D88↑o

; =============== S U B R O U T I N E =======================================


sub_14071C5D8   proc near               ; CODE XREF: sub_1406CE5F4+DC↑p
                                        ; sub_140761F34+552↓p
                                        ; DATA XREF: ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h

                mov     rax, rsp
                mov     [rax+10h], rdx
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                lea     r9, [rax+8]
                add     rcx, 48h ; 'H'
                mov     [rax+8], bl
                lea     rdx, [rax+10h]
                lea     r8d, [rbx+8]
                call    RtlInsertElementGenericTableAvl
                test    rax, rax
                jz      short loc_14071C61B
                cmp     [rsp+28h+arg_0], bl
                jz      short loc_14071C612
                mov     rax, [rsp+28h+arg_8]
                lock inc dword ptr [rax+8]

loc_14071C612:                          ; CODE XREF: sub_14071C5D8+2F↑j
                                        ; sub_14071C5D8+48↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071C61B:                          ; CODE XREF: sub_14071C5D8+29↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_14071C612
sub_14071C5D8   endp

; ---------------------------------------------------------------------------
algn_14071C622:                         ; DATA XREF: .pdata:0000000140106D94↑o
                align 10h
; Exported entry 1537. NtCompareSigningLevels

; =============== S U B R O U T I N E =======================================


                public NtCompareSigningLevels
NtCompareSigningLevels proc near        ; DATA XREF: .pdata:0000000140106DA0↑o
                                        ; PAGE:000000014098B8E8↓o
                sub     rsp, 28h
                mov     r8, cs:qword_140C1D920
                xor     eax, eax
                test    r8, r8
                jz      short loc_14071C64A
                mov     rax, r8
                call    sub_1404079D0

loc_14071C64A:                          ; CODE XREF: NtCompareSigningLevels+10↑j
                neg     eax
                sbb     eax, eax
                not     eax
                and     eax, 0C0000428h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtCompareSigningLevels endp

byte_14071C65B  db 15h dup(0CCh)        ; DATA XREF: .pdata:0000000140106DA0↑o

; =============== S U B R O U T I N E =======================================


sub_14071C670   proc near               ; DATA XREF: .pdata:0000000140106DAC↑o
                                        ; sub_1406701A4+102↑o
                sub     rsp, 28h
                mov     rcx, r8
                xor     edx, edx
                xor     r8d, r8d
                call    KeSetEvent
                mov     eax, 0C0000016h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071C670   endp

algn_14071C68C:                         ; DATA XREF: .pdata:0000000140106DAC↑o
                align 20h
; Exported entry 200. ExCreateCallback

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

                public ExCreateCallback
ExCreateCallback proc near              ; CODE XREF: sub_1403CECF8+1C4↑p
                                        ; sub_1407ADEE0+B4↓p ...

var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014082DF2E SIZE 00000007 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 90h
                mov     rsi, gs:188h
                xor     r13d, r13d
                movups  xmm1, xmmword ptr [rdx+10h]
                mov     r12b, r9b
                mov     r14b, r8b
                movups  xmm0, xmmword ptr [rdx]
                mov     r15, rcx
                mov     edi, r13d
                movups  [rbp+57h+var_40], xmm1
                mov     [rbp+57h+arg_8], r13
                psrldq  xmm1, 8
                movd    eax, xmm1
                movups  [rbp+57h+var_50], xmm0
                mov     [rbp+57h+var_60], r13
                movups  xmm0, xmmword ptr [rdx+20h]
                bts     eax, 9
                mov     dword ptr [rbp+57h+var_40+8], eax
                movups  [rbp+57h+var_30], xmm0
                cmp     qword ptr [rbp+57h+var_40], r13
                jz      loc_14071C87F
                mov     rdx, cs:qword_140CFC950
                lea     rax, [rbp+57h+arg_8]
                mov     qword ptr [rsp+0B0h+var_80], rax
                lea     rcx, [rbp+57h+var_50]
                mov     [rsp+0B0h+var_88], r13
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dword ptr [rsp+0B0h+var_90], r13d
                call    ObOpenObjectByName
                mov     rdi, [rbp+57h+arg_8]
                mov     ebx, eax

loc_14071C743:                          ; CODE XREF: ExCreateCallback+1E4↓j
                test    ebx, ebx
                jns     short loc_14071C750
                test    r14b, r14b
                jnz     short loc_14071C7AF

loc_14071C74C:                          ; CODE XREF: ExCreateCallback+1DA↓j
                test    ebx, ebx
                js      short loc_14071C78B

loc_14071C750:                          ; CODE XREF: ExCreateCallback+A5↑j
                mov     r8, cs:qword_140CFC950
                lea     rax, [rbp+57h+var_58]
                mov     [rsp+0B0h+var_88], r13
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+0B0h+var_90], rax
                mov     rcx, rdi
                mov     [rbp+57h+var_58], r13
                call    ObReferenceObjectByHandle
                mov     rcx, rdi
                mov     ebx, eax
                call    ZwClose
                test    ebx, ebx
                js      short loc_14071C78B
                mov     rax, [rbp+57h+var_58]
                mov     [r15], rax

loc_14071C78B:                          ; CODE XREF: ExCreateCallback+AE↑j
                                        ; ExCreateCallback+E2↑j ...
                lea     r11, [rsp+0B0h+var_20]
                mov     eax, ebx
                mov     rbx, [r11+30h]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071C7AF:                          ; CODE XREF: ExCreateCallback+AA↑j
                mov     rdx, cs:qword_140CFC950
                lea     rax, [rbp+57h+var_60]
                mov     [rsp+0B0h+var_68], r13
                lea     r8, [rbp+57h+var_50]
                mov     [rsp+0B0h+var_70], rax
                xor     r9d, r9d
                mov     dword ptr [rsp+0B0h+var_78], r13d
                xor     ecx, ecx
                mov     [rsp+0B0h+var_80], r13d
                mov     dword ptr [rsp+0B0h+var_88], 38h ; '8'
                call    sub_14061EDD0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14071C78B
                mov     rbx, [rbp+57h+var_60]
                mov     dword ptr [rbx], 6C6C6143h
                lea     rax, [rbx+10h]
                mov     [rbx+20h], r12b
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rbx+8], r13
                dec     word ptr [rsi+1E6h]
                xor     edx, edx
                lea     rcx, qword_140C19278
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, cs:qword_140C19248
                lea     rdx, qword_140C19240
                lea     rax, [rbx+28h]
                cmp     [rcx], rdx
                jnz     FatalListEntryError_95
                mov     [rax+8], rcx
                mov     [rax], rdx
                mov     [rcx], rax
                mov     rcx, rsi
                mov     cs:qword_140C19248, rax
                call    sub_1403A665C
                xor     r9d, r9d
                lea     rax, [rbp+57h+arg_8]
                mov     qword ptr [rsp+0B0h+var_80], rax
                xor     edx, edx
                mov     [rsp+0B0h+var_88], r13
                mov     rcx, rbx
                mov     dword ptr [rsp+0B0h+var_90], r13d
                lea     r8d, [r9+1]
                call    sub_14061EFE0
                mov     rdi, [rbp+57h+arg_8]
                mov     ebx, eax
                jmp     loc_14071C74C
; ---------------------------------------------------------------------------

loc_14071C87F:                          ; CODE XREF: ExCreateCallback+6E↑j
                mov     ebx, 0C0000001h
                jmp     loc_14071C743
ExCreateCallback endp

; ---------------------------------------------------------------------------
algn_14071C889:                         ; DATA XREF: .rdata:0000000140088704↑o
                                        ; .pdata:0000000140106DB8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14071C890   proc near               ; DATA XREF: .rdata:000000014008874C↑o
                                        ; .pdata:0000000140106DC4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014082DF36 SIZE 00000024 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     dword ptr [r8], 0
                xor     edi, edi
                and     dword ptr [r9], 0
                mov     r15, r9
                mov     r13, [rsp+48h+arg_20]
                mov     r12, r8
                mov     rsi, rdx
                mov     rbx, rcx
                mov     ebp, 0C0000225h
                and     qword ptr [r13+0], 0
                cmp     [rcx], edi
                jbe     short loc_14071C8F0

loc_14071C8D5:                          ; CODE XREF: sub_14071C890+5E↓j
                mov     r8, [rbx+8]
                lea     rcx, [rdi+rdi*2]
                mov     eax, [rsi+10h]
                add     rcx, rcx
                cmp     [r8+rcx*8+10h], eax
                jz      short loc_14071C910

loc_14071C8EA:                          ; CODE XREF: sub_14071C890+95↓j
                                        ; sub_14071C890+9F↓j ...
                inc     edi
                cmp     edi, [rbx]
                jb      short loc_14071C8D5

loc_14071C8F0:                          ; CODE XREF: sub_14071C890+43↑j
                                        ; sub_14071C890+E0↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, ebp
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
                align 10h

loc_14071C910:                          ; CODE XREF: sub_14071C890+58↑j
                mov     rdx, [r8+rcx*8]
                sub     rdx, [rsi]
                jnz     short loc_14071C922
                mov     rdx, [r8+rcx*8+8]
                sub     rdx, [rsi+8]

loc_14071C922:                          ; CODE XREF: sub_14071C890+87↑j
                test    rdx, rdx
                jnz     short loc_14071C8EA
                mov     eax, [rsi+14h]
                cmp     [r8+rcx*8+14h], eax
                jnz     short loc_14071C8EA
                mov     rcx, [r8+rcx*8+18h]
                mov     rdx, [rsi+18h]
                cmp     rcx, rdx
                jnz     loc_14082DF36

loc_14071C943:                          ; CODE XREF: sub_14071C890+1116BF↓j
                mov     rax, [rbx+8]
                lea     rdx, [rdi+rdi*2]
                add     rdx, rdx
                xor     ebp, ebp
                mov     ecx, [rax+rdx*8+20h]
                mov     [r12], ecx
                mov     rax, [rbx+8]
                mov     ecx, [rax+rdx*8+24h]
                mov     [r15], ecx
                mov     rax, [rbx+8]
                mov     rcx, [rax+rdx*8+28h]
                mov     [r13+0], rcx
                jmp     loc_14071C8F0
sub_14071C890   endp

; ---------------------------------------------------------------------------
algn_14071C975:                         ; DATA XREF: .rdata:000000014008874C↑o
                                        ; .pdata:0000000140106DC4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071C980   proc near               ; DATA XREF: .rdata:0000000140088778↑o
                                        ; .pdata:0000000140106DD0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014082DF5A SIZE 0000008E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, gs:188h
                lea     r8, [rsp+48h+arg_10]
                mov     rbx, rdx
                mov     esi, 2
                mov     edx, esi
                mov     r14, rcx
                call    sub_140232930
                xor     r12d, r12d
                mov     rdi, rax
                test    rax, rax
                jz      loc_14082DF6D
                mov     rdx, rax
                mov     rcx, rbp
                call    sub_1402B53A8
                lea     r8, [rsp+48h+arg_10]
                mov     edx, esi
                mov     rcx, rbx
                call    sub_140232930
                mov     rsi, rax
                test    rax, rax
                jz      loc_14082DF5A
                mov     rcx, rdi
                cmp     rdi, rax
                jz      loc_14082DF77
                call    sub_140684768
                cmp     eax, 1
                jz      loc_14082DFC3
                mov     rcx, rsi
                call    sub_140684768
                cmp     eax, 1
                jz      loc_14082DFC3
                cmp     r14, rbx
                jbe     loc_14082DF8B
                mov     rcx, rdi

loc_14071CA22:                          ; CODE XREF: sub_14071C980+111624↓j
                add     rcx, 28h ; '('
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                mov     rcx, rdi
                call    sub_140267550
                test    eax, eax
                jnz     loc_14082DFB6
                mov     rcx, rsi
                call    sub_140267550
                test    eax, eax
                jnz     loc_14082DFB6
                mov     ecx, 100000h
                test    [rdi+30h], ecx
                jnz     loc_14082DFA9
                test    [rsi+30h], ecx
                jnz     loc_14082DFA9
                mov     r15, [rdi+48h]
                test    r15, r15
                jz      loc_14082DFA9
                mov     r14, [rsi+48h]
                test    r14, r14
                jz      loc_14082DFA9
                mov     r15, [r15]
                test    r15, r15
                jz      loc_14082DFA9
                mov     r14, [r14]
                test    r14, r14
                jz      loc_14082DFA9
                cmp     [r15+40h], r12
                jz      loc_14082DFA9
                cmp     [r14+40h], r12
                jz      loc_14082DFA9
                mov     rcx, r14
                mov     ebx, 0C00000D4h
                call    sub_14026F920
                mov     rcx, r14
                mov     rdx, [rax+28h]
                cmp     r15, [rdx+10h]
                mov     rdx, rax
                cmovz   ebx, r12d
                mov     [rsp+48h+arg_10], ebx
                call    sub_1402D4998

loc_14071CAD2:                          ; CODE XREF: sub_14071C980+111631↓j
                                        ; sub_14071C980+11163E↓j
                lea     rbx, [rsi+28h]
                mov     eax, 11h
                lock cmpxchg [rbx], r12
                jnz     short loc_14071CB21

loc_14071CAE2:                          ; CODE XREF: sub_14071C980+1A9↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, rdi
                call    sub_140267470
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_140267564
                mov     rcx, rsi
                call    sub_140267470
                mov     eax, [rsp+48h+arg_10]

loc_14071CB09:                          ; CODE XREF: sub_14071C980+1115F2↓j
                                        ; sub_14071C980+111606↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
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

loc_14071CB21:                          ; CODE XREF: sub_14071C980+160↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_14071CAE2
sub_14071C980   endp

; ---------------------------------------------------------------------------
byte_14071CB2B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140088778↑o
                                        ; .pdata:0000000140106DD0↑o

; =============== S U B R O U T I N E =======================================


sub_14071CB34   proc near               ; CODE XREF: sub_1406C8D48+159↑p
                                        ; sub_1407A0CCC+4B↓p ...

var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014082DFE8 SIZE 0000009D BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r15
                sub     rsp, 50h
                and     qword ptr [r11-40h], 0
                mov     rsi, rcx
                and     qword ptr [r11-28h], 0
                lea     rcx, [r11-28h]
                mov     rax, r8
                mov     [r11-48h], rcx
                mov     r8, cs:qword_140C259E0
                mov     r15, rdx
                mov     rcx, rax
                mov     edx, 2
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_14071CCC6
                test    [rsp+68h+arg_20], 4
                mov     rdi, [rsp+68h+var_28]
                jnz     short loc_14071CBA0
                mov     eax, [rdi+150h]
                test    al, 4
                jnz     loc_14082DFE8

loc_14071CBA0:                          ; CODE XREF: sub_14071CB34+5C↑j
                mov     edx, 48h ; 'H'
                mov     r12d, 6D44624Fh
                mov     r8d, r12d
                lea     ebp, [rdx-47h]
                mov     ecx, ebp
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14082DFEF
                xor     edx, edx
                lea     r8d, [rbp+47h]
                mov     rcx, rax
                call    memset
                lea     rax, [rbx+10h]
                mov     [rbx+18h], ebp
                mov     [rsp+68h+var_38], rax
                mov     r9d, 0F000Fh
                mov     [rbx], rdi
                xor     r8d, r8d
                mov     rax, cs:qword_140C259E0
                mov     edx, 200h
                mov     [rsp+68h+var_40], 0
                mov     rcx, rdi
                mov     [rsp+68h+var_48], rax
                call    ObOpenObjectByPointer
                mov     ebp, eax
                test    eax, eax
                js      loc_14082E003
                test    rsi, rsi
                jnz     loc_14082E01D

loc_14071CC1B:                          ; CODE XREF: sub_14071CB34+1114F8↓j
                mov     rcx, rsi
                xor     ebp, ebp
                xor     edi, edi
                call    sub_140206CF0
                mov     rcx, gs:188h
                mov     rsi, rax
                dec     word ptr [rcx+1E6h]
                xor     edx, edx
                lea     rcx, [rax+78h]
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rsp+68h+var_28]
                mov     rax, [rcx+130h]
                test    rax, rax
                jnz     loc_14082E031
                test    [rsp+68h+arg_20], 1
                jnz     short loc_14071CCE1

loc_14071CC64:                          ; CODE XREF: sub_14071CB34+1B0↓j
                test    [rsp+68h+arg_20], 2
                mov     [rcx+130h], rbx
                jz      short loc_14071CC84
                mov     rax, [rsi]
                mov     rdx, [rax]
                cmp     rcx, rdx
                jz      short loc_14071CC84
                mov     [rbx+8], rdx

loc_14071CC84:                          ; CODE XREF: sub_14071CB34+13F↑j
                                        ; sub_14071CB34+14A↑j ...
                test    r15, r15
                jnz     short loc_14071CCE9

loc_14071CC89:                          ; CODE XREF: sub_14071CB34+1C3↓j
                xor     edx, edx
                lea     rcx, [rsi+78h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_140245770
                test    rdi, rdi
                jnz     loc_14082E040

loc_14071CCAB:                          ; CODE XREF: sub_14071CB34+11153E↓j
                test    rbp, rbp
                jnz     loc_14082E077

loc_14071CCB4:                          ; CODE XREF: sub_14071CB34+11154C↓j
                mov     rax, [rsp+68h+arg_28]
                test    rax, rax
                jz      short loc_14071CCC4
                mov     [rax], rbx

loc_14071CCC4:                          ; CODE XREF: sub_14071CB34+18B↑j
                xor     eax, eax

loc_14071CCC6:                          ; CODE XREF: sub_14071CB34+49↑j
                                        ; sub_14071CB34+1114CA↓j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071CCE1:                          ; CODE XREF: sub_14071CB34+12E↑j
                mov     [rsi], rbx
                jmp     loc_14071CC64
; ---------------------------------------------------------------------------

loc_14071CCE9:                          ; CODE XREF: sub_14071CB34+153↑j
                mov     rbp, [r15+588h]
                mov     [r15+588h], rbx
                jmp     short loc_14071CC89
sub_14071CB34   endp

; ---------------------------------------------------------------------------
algn_14071CCF9:                         ; DATA XREF: .rdata:00000001400887A4↑o
                                        ; .pdata:0000000140106DDC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071CD00   proc near               ; CODE XREF: sub_1402EB044+1762A5↑p
                                        ; sub_1406573B0+58A↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014082E086 SIZE 00000020 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     edx, 48h ; 'H'
                mov     rsi, rcx
                mov     r8d, 77776D4Dh
                lea     ecx, [rdx-8]
                call    sub_140268720
                mov     rbx, rax
                test    rax, rax
                jz      loc_14082E090
                xor     ecx, ecx
                call    sub_1402C6ABC
                mov     rdi, rax
                test    rax, rax
                jz      loc_14082E086
                mov     rax, gs:188h
                mov     edx, 208h
                mov     rcx, [rax+0B8h]
                call    PsChargeProcessNonPagedPoolQuota
                test    eax, eax
                js      loc_14082E097
                xor     r8d, r8d
                mov     dword ptr [rbx+40h], 8
                mov     rdx, rbx
                mov     [rbx+8], rdi
                mov     rcx, rsi
                call    sub_14026897C
                mov     eax, 1

loc_14071CD84:                          ; CODE XREF: sub_14071CD00+111392↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071CD00   endp

algn_14071CD95:                         ; DATA XREF: .rdata:00000001400887C8↑o
                                        ; .pdata:0000000140106DE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071CDA0   proc near               ; DATA XREF: .rdata:0000000140002000↑o
                                        ; .pdata:0000000140106DF4↑o

var_28          = byte ptr -28h
var_20          = dword ptr -20h
var_18          = byte ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 40h
                movzx   ecx, word ptr [rdx]
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-18h], xmm0
                mov     [rax-16h], cx
                mov     dil, r9b
                mov     [rax-18h], cx
                mov     r9d, 1
                movzx   eax, cx
                mov     rbx, rdx
                sub     ax, r9w
                mov     edx, 18Fh
                cmp     ax, dx
                ja      short loc_14071CE30
                test    r9b, cl
                jnz     short loc_14071CE30
                mov     rdx, [rbx+8]
                mov     r8d, ecx
                mov     [rsp+48h+var_20], r9d
                lea     rcx, [rsp+48h+var_10]
                mov     r9d, 2
                mov     [rsp+48h+var_28], dil
                call    sub_1406CA210
                test    eax, eax
                js      short loc_14071CE24
                lea     rdx, [rbx+10h]
                lea     rcx, [rsp+48h+var_18]
                call    sub_14071CE40
                mov     rdx, [rsp+48h+var_10]
                mov     cl, dil
                mov     ebx, eax
                call    sub_1403109F0
                mov     eax, ebx

loc_14071CE24:                          ; CODE XREF: sub_14071CDA0+63↑j
                                        ; sub_14071CDA0+95↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14071CE30:                          ; CODE XREF: sub_14071CDA0+39↑j
                                        ; sub_14071CDA0+3E↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14071CE24
sub_14071CDA0   endp

; ---------------------------------------------------------------------------
algn_14071CE37:                         ; DATA XREF: .pdata:0000000140106DF4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071CE40   proc near               ; CODE XREF: sub_14071CDA0+6E↑p
                                        ; sub_1407330B8+A7↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                and     dword ptr [rdx], 0
                mov     rbx, rcx
                xor     ecx, ecx
                mov     rsi, rdx
                mov     edi, 0C000000Eh
                call    sub_14067926C
                mov     edx, 43706E50h
                mov     rcx, rbx
                call    sub_14067919C
                mov     rcx, rax
                test    rax, rax
                jz      short loc_14071CE9E
                mov     rax, [rax+138h]
                mov     r8, [rax+28h]
                test    r8, r8
                jz      short loc_14071CE94
                mov     eax, [r8+98h]
                xor     edi, edi
                mov     [rsi], eax

loc_14071CE94:                          ; CODE XREF: sub_14071CE40+47↑j
                mov     edx, 43706E50h
                call    ObfDereferenceObjectWithTag

loc_14071CE9E:                          ; CODE XREF: sub_14071CE40+37↑j
                xor     ecx, ecx
                call    sub_140679140
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071CE40   endp

algn_14071CEB8:                         ; DATA XREF: .pdata:0000000140106E00↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071CEC0   proc near               ; CODE XREF: sub_140360EE0+35↑p
                                        ; sub_1406A8700+170087↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014082E0A6 SIZE 00000095 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12d, edx
                mov     r15d, edx
                and     r12d, 3FFh
                mov     r13b, r8b
                mov     edx, r12d
                mov     rsi, rcx
                call    sub_14020F388
                xor     edi, edi
                mov     r14, rax
                test    rax, rax
                jz      loc_14082E0A6
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     rbp, [r14+10h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                movzx   ecx, word ptr [r14+20h]
                mov     eax, ecx
                shr     r15d, 0Ah
                and     eax, 3Fh
                cmp     r15d, eax
                jnz     loc_14082E10D
                mov     r15, [r14]
                lea     rax, [r15-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      loc_14082E10D
                test    r13b, r13b
                jnz     loc_14082E0B0

loc_14071CF58:                          ; CODE XREF: sub_14071CEC0+1111F7↓j
                mov     rax, [rsi+100h]
                mov     r8d, 7
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1404079D0
                lea     rcx, [r14+8]
                call    ExWaitForRundownProtectionRelease
                xor     ecx, ecx
                call    sub_140211464
                mov     r13, rax
                test    rax, rax
                jnz     loc_14082E0C4

loc_14071CF8C:                          ; CODE XREF: sub_14071CEC0+111222↓j
                mov     rax, [rsi+100h]
                mov     r8d, 2
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1404079D0
                mov     [r14], rdi
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                lea     r14, [rsi+1A0h]
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                or      eax, 0FFFFFFFFh
                cmp     [rsi+1B0h], r12d
                jz      loc_14082E0E7

loc_14071CFD8:                          ; CODE XREF: sub_14071CEC0+11122D↓j
                add     [rsi+1A8h], eax
                jz      loc_14082E0F2

loc_14071CFE4:                          ; CODE XREF: sub_14071CEC0+111248↓j
                mov     rax, rbx
                lock xadd [r14], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14071CFFA
                mov     rcx, r14
                call    ExfTryToWakePushLock

loc_14071CFFA:                          ; CODE XREF: sub_14071CEC0+130↑j
                mov     rcx, r14
                call    sub_140243660
                call    KeLeaveCriticalRegion
                lock xadd [rbp+0], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14071D01D
                mov     rcx, rbp
                call    ExfTryToWakePushLock

loc_14071D01D:                          ; CODE XREF: sub_14071CEC0+153↑j
                mov     rcx, rbp
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     rax, [rsi+100h]
                mov     r8d, 1
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1404079D0

loc_14071D042:                          ; CODE XREF: sub_14071CEC0+1111EB↓j
                                        ; sub_14071CEC0+111276↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, edi
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
sub_14071CEC0   endp

algn_14071D062:                         ; DATA XREF: .rdata:0000000140088808↑o
                                        ; .pdata:0000000140106E0C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14071D068   proc near               ; CODE XREF: sub_140681028+79↑p
                                        ; DATA XREF: .pdata:0000000140106E18↑o
                sub     rsp, 28h
                mov     eax, [rcx]
                xor     dl, dl
                movzx   r8d, al
                and     r8d, 3
                sub     r8d, 1
                jz      short loc_14071D0A6
                sub     r8d, 1
                jz      short loc_14071D0B3
                cmp     r8d, 1
                jz      short loc_14071D0AF

loc_14071D08A:                          ; CODE XREF: sub_14071D068+40↓j
                                        ; sub_14071D068+49↓j ...
                mov     rcx, [rcx]
                shr     rcx, 4
                and     ecx, 3
                sub     ecx, 1
                jz      short loc_14071D0AA
                cmp     ecx, 1
                jz      short loc_14071D0B7

loc_14071D09E:                          ; CODE XREF: sub_14071D068+45↓j
                                        ; sub_14071D068+52↓j
                mov     al, dl
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14071D0A6:                          ; CODE XREF: sub_14071D068+14↑j
                mov     dl, 0Dh
                jmp     short loc_14071D08A
; ---------------------------------------------------------------------------

loc_14071D0AA:                          ; CODE XREF: sub_14071D068+2F↑j
                or      dl, 8
                jmp     short loc_14071D09E
; ---------------------------------------------------------------------------

loc_14071D0AF:                          ; CODE XREF: sub_14071D068+20↑j
                mov     dl, 9
                jmp     short loc_14071D08A
; ---------------------------------------------------------------------------

loc_14071D0B3:                          ; CODE XREF: sub_14071D068+1A↑j
                mov     dl, 3Ah ; ':'
                jmp     short loc_14071D08A
; ---------------------------------------------------------------------------

loc_14071D0B7:                          ; CODE XREF: sub_14071D068+34↑j
                or      dl, 48h
                jmp     short loc_14071D09E
sub_14071D068   endp

; ---------------------------------------------------------------------------
byte_14071D0BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:0000000140106E18↑o

; =============== S U B R O U T I N E =======================================


sub_14071D0D0   proc near               ; DATA XREF: .rdata:00000001400011E8↑o
                                        ; .pdata:0000000140106E24↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, [rcx+18h]
                mov     rbx, rcx
                test    rdi, rdi
                jz      short loc_14071D100
                mov     rcx, rdi
                call    sub_1406BE154
                and     qword ptr [rdi+60h], 0
                mov     rcx, rdi
                and     qword ptr [rbx+18h], 0
                call    sub_1406199FC

loc_14071D100:                          ; CODE XREF: sub_14071D0D0+14↑j
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14071D115
                mov     rdx, [rbx+10h]
                mov     r8, rbx
                call    sub_14068F3DC

loc_14071D115:                          ; CODE XREF: sub_14071D0D0+37↑j
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_14071D12D
                mov     rdx, rbx
                call    sub_14068F1F0
                mov     rcx, [rbx]
                call    PsDereferenceSiloContext

loc_14071D12D:                          ; CODE XREF: sub_14071D0D0+4B↑j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071D0D0   endp

byte_14071D13B  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140106E24↑o

; =============== S U B R O U T I N E =======================================


sub_14071D144   proc near               ; CODE XREF: sub_140991EF0+230↓p
                                        ; DATA XREF: .pdata:0000000140106E30↑o
                lea     rax, sub_1407D3DF0
                mov     [rcx], rax
                xor     eax, eax
                retn
sub_14071D144   endp

; ---------------------------------------------------------------------------
                align 2
algn_14071D152:                         ; DATA XREF: .pdata:0000000140106E30↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14071D158   proc near               ; CODE XREF: sub_140991EF0+387↓p
                                        ; DATA XREF: .pdata:0000000140106E3C↑o
                movzx   eax, cs:word_140C0F3AC
                mov     [rcx], ax
                xor     eax, eax
                retn
sub_14071D158   endp

; ---------------------------------------------------------------------------
                align 2
algn_14071D166:                         ; DATA XREF: .pdata:0000000140106E3C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14071D170   proc near               ; DATA XREF: .pdata:0000000140106E48↑o
                                        ; PAGE:000000014098BC98↓o

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+20h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rbp, rdx
                and     qword ptr [r11-10h], 0
                mov     edx, 8
                mov     r8, cs:PsThreadType
                and     qword ptr [r11+18h], 0
                mov     sil, [rax+232h]
                lea     rax, [r11+18h]
                mov     r9b, sil
                mov     [r11-18h], rax
                call    ObReferenceObjectByHandle
                mov     edi, eax
                test    eax, eax
                js      short loc_14071D1F4
                mov     rbx, [rsp+38h+arg_10]
                test    dword ptr [rbx+74h], 400h
                jnz     short loc_14071D20C
                mov     r9b, sil
                mov     [rsp+38h+var_18], 1
                mov     r8b, sil
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_1406652B4
                mov     edi, eax

loc_14071D1EC:                          ; CODE XREF: sub_14071D170+A1↓j
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_14071D1F4:                          ; CODE XREF: sub_14071D170+51↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14071D20C:                          ; CODE XREF: sub_14071D170+5F↑j
                mov     edi, 0C0000008h
                jmp     short loc_14071D1EC
sub_14071D170   endp

; ---------------------------------------------------------------------------
byte_14071D213  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140106E48↑o

; =============== S U B R O U T I N E =======================================


sub_14071D21C   proc near               ; CODE XREF: sub_1406BA750+2F9↑p
                                        ; sub_1406BCE08+417↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rsi, [rcx+88h]
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                lea     r8, [rdi+180h]
                mov     rax, [r8+8]
                lea     r9, [rbx+50h]
                mov     [r9+8], rax
                mov     [r9], r8
                mov     rax, [r8+8]
                mov     [rax], r9
                mov     [r8+8], r9
                bts     dword ptr [rbx+28h], 10h
                inc     dword ptr [rdi+1D0h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_14071D296

loc_14071D27D:                          ; CODE XREF: sub_14071D21C+82↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14071D296:                          ; CODE XREF: sub_14071D21C+5F↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     short loc_14071D27D
sub_14071D21C   endp

; ---------------------------------------------------------------------------
byte_14071D2A0  db 10h dup(0CCh)        ; DATA XREF: .pdata:0000000140106E54↑o

; =============== S U B R O U T I N E =======================================


sub_14071D2B0   proc near               ; DATA XREF: .rdata:0000000140088908↑o
                                        ; .pdata:0000000140106E60↑o ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 000000014082E13C SIZE 0000003E BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rsi
                mov     [rax+10h], rdi
                mov     [rax+18h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     edi, r9d
                mov     r12, r8
                mov     r13d, edx
                mov     r14, rcx
                and     qword ptr [rax-28h], 0
                and     qword ptr [rax-30h], 0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C47FA8
                call    sub_14024C840
                mov     sil, al
                mov     [rsp+88h+var_38], al
                test    al, al
                jz      loc_14082E13C

loc_14071D30A:                          ; CODE XREF: sub_14071D2B0+110E9B↓j
                test    sil, sil
                jz      loc_14082E150
                test    edi, edi
                jnz     loc_14082E15A
                mov     rax, gs:188h
                mov     r15b, [rax+232h]
                cmp     r15b, 1
                jnz     loc_14082E164

loc_14071D335:                          ; DATA XREF: .rdata:00000001400888E4↑o
;   __try { // __except at loc_14071D34F
                mov     rax, 7FFFFFFF0000h
                cmp     r14, rax
                cmovb   rax, r14
                mov     qword ptr [rax], 0
                jmp     short loc_14071D35B
;   } // starts at 14071D335
; ---------------------------------------------------------------------------

loc_14071D34F:                          ; DATA XREF: .rdata:00000001400888E4↑o
;   __except(1) // owned by 14071D335
                mov     edi, eax
                mov     sil, [rsp+88h+var_38]
                jmp     loc_14071D3FF
; ---------------------------------------------------------------------------

loc_14071D35B:                          ; CODE XREF: sub_14071D2B0+9D↑j
                                        ; sub_14071D2B0+110EB8↓j
                mov     rdx, cs:qword_140C47C10
                and     [rsp+88h+var_40], 0
                lea     rax, [rsp+88h+var_28]
                mov     [rsp+88h+var_48], rax
                and     [rsp+88h+var_50], 0
                and     dword ptr [rsp+88h+var_58], 0
                mov     dword ptr [rsp+88h+var_60], 20h ; ' '
                mov     r9b, r15b
                mov     r8, r12
                mov     cl, r15b
                call    sub_14061EDD0
                mov     edi, eax
                test    eax, eax
                js      short loc_14071D3FF
                xorps   xmm0, xmm0
                mov     rcx, [rsp+88h+var_28]
                movups  xmmword ptr [rcx], xmm0
                movups  xmmword ptr [rcx+10h], xmm0
                and     qword ptr [rcx+8], 0
                lea     rax, [rsp+88h+var_30]
                mov     [rsp+88h+var_58], rax
                and     [rsp+88h+var_60], 0
                and     [rsp+88h+var_68], 0
                xor     r9d, r9d
                mov     r8d, r13d
                xor     edx, edx
                call    sub_14061EFE0
                mov     edi, eax
                and     [rsp+88h+var_28], 0
                test    eax, eax
                js      short loc_14071D3FF
                cmp     r15b, 1
                jnz     loc_14082E16D

loc_14071D3E4:                          ; DATA XREF: .rdata:00000001400888F4↑o
;   __try { // __except at loc_14071D3EE
                mov     rax, [rsp+88h+var_30]
                mov     [r14], rax
                jmp     short loc_14071D3F7
;   } // starts at 14071D3E4
; ---------------------------------------------------------------------------

loc_14071D3EE:                          ; DATA XREF: .rdata:00000001400888F4↑o
;   __except(1) // owned by 14071D3E4
                mov     edi, eax
                mov     sil, [rsp+88h+var_38]
                jmp     short loc_14071D3FF
; ---------------------------------------------------------------------------

loc_14071D3F7:                          ; CODE XREF: sub_14071D2B0+13C↑j
                                        ; sub_14071D2B0+110EC5↓j
                and     [rsp+88h+var_30], 0
                xor     edi, edi

loc_14071D3FF:                          ; CODE XREF: sub_14071D2B0+A6↑j
                                        ; sub_14071D2B0+E6↑j ...
                mov     rcx, [rsp+88h+var_30]
                test    rcx, rcx
                jnz     short loc_14071D450

loc_14071D409:                          ; CODE XREF: sub_14071D2B0+1A5↓j
                mov     rcx, [rsp+88h+var_28]
                test    rcx, rcx
                jnz     short loc_14071D457

loc_14071D413:                          ; CODE XREF: sub_14071D2B0+1AC↓j
                test    sil, sil
                jz      short loc_14071D432
                lea     rcx, qword_140C47FA8
                call    sub_14024C380
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14071D432:                          ; CODE XREF: sub_14071D2B0+166↑j
                mov     eax, edi
                lea     r11, [rsp+88h+var_18]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     r12, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14071D450:                          ; CODE XREF: sub_14071D2B0+157↑j
                call    NtClose
                jmp     short loc_14071D409
; ---------------------------------------------------------------------------

loc_14071D457:                          ; CODE XREF: sub_14071D2B0+161↑j
                call    PsDereferenceSiloContext
                jmp     short loc_14071D413
; } // starts at 14071D2B0
sub_14071D2B0   endp

; ---------------------------------------------------------------------------
byte_14071D45E  db 12h dup(0CCh)        ; DATA XREF: .rdata:0000000140088908↑o
                                        ; .pdata:0000000140106E60↑o
; Exported entry 547. FsRtlQueryCachedVdl

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

                public FsRtlQueryCachedVdl
FsRtlQueryCachedVdl proc near           ; DATA XREF: .rdata:0000000140088938↑o
                                        ; .pdata:0000000140106E6C↑o

var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = byte ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_60          = xmmword ptr -60h
var_50          = dword ptr -50h
var_20          = qword ptr -20h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082E17A SIZE 00000029 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                lea     rbp, [rsp-47h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     rdi, rcx
                xor     eax, eax
                xor     edx, edx
                mov     [rbp+57h+var_80], rax
                lea     rcx, [rbp+57h+var_90]
                xor     r8d, r8d
                movups  [rbp+57h+var_90], xmm0
                movups  [rbp+57h+var_78], xmm0
                call    KeInitializeEvent
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     rsi, rax
                xor     r9d, r9d
                lea     rax, [rbp+57h+var_78]
                xor     r8d, r8d
                mov     [rsp+0E0h+var_A0], rax
                mov     rdx, rsi
                lea     rax, [rbp+57h+var_90]
                mov     ecx, 90284h
                mov     [rsp+0E0h+var_A8], rax
                mov     [rsp+0E0h+var_B0], 0
                and     [rsp+0E0h+var_B8], 0
                and     [rsp+0E0h+var_C0], 0
                call    IoBuildDeviceIoControlRequest
                mov     rdx, rax
                test    rax, rax
                jz      loc_14082E17A
                movdqa  xmm0, cs:xmmword_140011E00
                lea     rax, [rbp+57h+var_60]
                movdqa  [rbp+57h+var_60], xmm0
                mov     rcx, rsi
                mov     [rbp+57h+var_50], 1
                mov     [rdx+18h], rax
                mov     rax, [rdx+0B8h]
                mov     [rax-18h], rdi
                mov     byte ptr [rax-48h], 0Dh
                mov     dword ptr [rax-38h], 18h
                mov     dword ptr [rax-40h], 40h ; '@'
                call    IofCallDriver
                mov     edx, eax
                cmp     eax, 103h
                jz      loc_14082E184

loc_14071D551:                          ; CODE XREF: FsRtlQueryCachedVdl+110D2E↓j
                mov     ecx, 0C0000000h
                mov     eax, edx
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_14071D581
                and     qword ptr [rbx], 0
                mov     eax, dword ptr [rbp+57h+var_60+8]
                test    eax, eax
                jz      short loc_14071D581
                lea     rcx, [rbp+57h+var_50]
                mov     r8d, eax

loc_14071D570:                          ; CODE XREF: FsRtlQueryCachedVdl+10F↓j
                mov     eax, [rcx+10h]
                test    al, 1
                jnz     short loc_14071D5A3

loc_14071D577:                          ; CODE XREF: FsRtlQueryCachedVdl+13D↓j
                add     rcx, 18h
                sub     r8, 1
                jnz     short loc_14071D570

loc_14071D581:                          ; CODE XREF: FsRtlQueryCachedVdl+EC↑j
                                        ; FsRtlQueryCachedVdl+F7↑j
                mov     eax, edx

loc_14071D583:                          ; CODE XREF: FsRtlQueryCachedVdl+110D0F↓j
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E0h+arg_10]
                add     rsp, 0D0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071D5A3:                          ; CODE XREF: FsRtlQueryCachedVdl+105↑j
                mov     rax, [rcx+8]
                add     rax, [rcx]
                mov     [rbx], rax
                jmp     short loc_14071D577
; } // starts at 14071D470
FsRtlQueryCachedVdl endp

; ---------------------------------------------------------------------------
algn_14071D5AF:                         ; DATA XREF: .rdata:0000000140088938↑o
                                        ; .pdata:0000000140106E6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071D5C0   proc near               ; DATA XREF: .rdata:0000000140088954↑o
                                        ; .pdata:0000000140106E78↑o ...

arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014082E1A4 SIZE 00000014 BYTES

                mov     r11, rsp
                push    rbx
                sub     rsp, 30h
                mov     rbx, gs:188h
                lea     rax, [r11+10h]
                and     qword ptr [r11-10h], 0
                mov     edx, 1
                mov     r8, cs:LpcPortObjectType
                and     qword ptr [r11+10h], 0
                mov     r9b, [rbx+232h]
                mov     [r11-18h], rax
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      short loc_14071D63A
                mov     edx, 10h
                mov     r8d, 70547350h
                lea     ecx, [rdx-7]
                call    ExAllocatePoolWithQuotaTag
                mov     rcx, rax
                test    rax, rax
                jz      loc_14082E1A4
                mov     rax, [rsp+38h+arg_8]
                mov     [rcx+8], rax
                mov     rax, [rbx+458h]
                mov     [rcx], rax
                xor     eax, eax
                mov     [rbx+458h], rcx

loc_14071D63A:                          ; CODE XREF: sub_14071D5C0+3D↑j
                                        ; sub_14071D5C0+110BF3↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071D5C0   endp

algn_14071D641:                         ; DATA XREF: .rdata:0000000140088954↑o
                                        ; .pdata:0000000140106E78↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14071D648   proc near               ; CODE XREF: sub_14060DA00+22AB↑p
                                        ; DATA XREF: .rdata:00000001400889A8↑o ...

; FUNCTION CHUNK AT 000000014082E1B8 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                xor     ecx, ecx
                mov     [r9], ecx
                cmp     r8d, 28h ; '('
                jb      loc_14082E1B8

loc_14071D657:                          ; DATA XREF: .rdata:0000000140088994↑o
;   __try { // __except at loc_14071D6B2
                mov     eax, cs:dword_140C45904
                mov     [rdx], eax
                mov     eax, cs:dword_140C45908
                mov     [rdx+4], eax
                mov     eax, cs:dword_140C4590C
                mov     [rdx+8], eax
                mov     eax, cs:dword_140C45884
                mov     [rdx+0Ch], eax
                mov     eax, cs:dword_140C45888
                mov     [rdx+10h], eax
                mov     eax, cs:dword_140C4588C
                mov     [rdx+14h], eax
                mov     eax, cs:dword_140C45890
                mov     [rdx+18h], eax
                mov     eax, cs:dword_140C458E4
                mov     [rdx+1Ch], eax
                mov     eax, cs:dword_140C458E8
                mov     [rdx+20h], eax
                mov     eax, cs:dword_140C458E0
                mov     [rdx+24h], eax
                jmp     short loc_14071D6B4
;   } // starts at 14071D657
; ---------------------------------------------------------------------------

loc_14071D6B2:                          ; DATA XREF: .rdata:0000000140088994↑o
;   __except(1) // owned by 14071D657
                jmp     short locret_14071D6BD
; ---------------------------------------------------------------------------

loc_14071D6B4:                          ; CODE XREF: sub_14071D648+68↑j
                                        ; sub_14071D648+110B75↓j
                mov     dword ptr [r9], 28h ; '('
                mov     eax, ecx

locret_14071D6BD:                       ; CODE XREF: sub_14071D648:loc_14071D6B2↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14071D648
sub_14071D648   endp

byte_14071D6BF  db 11h dup(0CCh)        ; DATA XREF: .rdata:00000001400889A8↑o
                                        ; .pdata:0000000140106E84↑o
; Exported entry 2513. SeCreateClientSecurityFromSubjectContext

; =============== S U B R O U T I N E =======================================


                public SeCreateClientSecurityFromSubjectContext
SeCreateClientSecurityFromSubjectContext proc near
                                        ; DATA XREF: .rdata:00000001400889D8↑o
                                        ; .pdata:0000000140106E90↑o

var_68          = byte ptr -68h
var_60          = dword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = byte ptr  8

; FUNCTION CHUNK AT 000000014082E1C2 SIZE 0000000B BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rbx, [rcx]
                xor     r14d, r14d
                xor     r15b, r15b
                mov     [rax+8], r14b
                mov     r12, r9
                mov     r13b, r8b
                mov     rsi, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jnz     short loc_14071D70E
                mov     rbx, [rcx+10h]

loc_14071D70E:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+38↑j
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_14071D787
                lea     ebp, [rdx+1]

loc_14071D721:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+E6↓j
                                        ; SeCreateClientSecurityFromSubjectContext+110AF8↓j
                mov     eax, [rdi+8]
                mov     r9d, ebp
                mov     [rsp+88h+var_38], r12
                mov     r8b, r13b
                mov     [rsp+88h+var_40], r14
                mov     rdx, rsi
                mov     [rsp+88h+var_48], r15b
                xor     r14d, r14d
                mov     [rsp+88h+var_50], r14
                mov     rcx, rbx
                mov     [rsp+88h+var_58], r14b
                mov     [rsp+88h+var_60], eax
                mov     [rsp+88h+var_68], r14b
                call    sub_140619C30
                mov     edi, eax
                test    eax, eax
                js      short loc_14071D7C1
                cmp     [rsi+8], r14b
                jz      short loc_14071D7C1

loc_14071D766:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+F9↓j
                lea     r11, [rsp+88h+var_28]
                mov     eax, edi
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

loc_14071D787:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+4C↑j
                mov     rax, [rdi+10h]
                lea     r8, [rsp+88h+arg_0]
                mov     rdx, [rdx+450h]
                mov     ebp, 2
                mov     r11, [rax+450h]
                mov     rcx, r11
                call    sub_140219E70
                cmp     [rsp+88h+arg_0], r14b
                jnz     loc_14071D721
                jmp     loc_14082E1C2
; ---------------------------------------------------------------------------

loc_14071D7C1:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+8E↑j
                                        ; SeCreateClientSecurityFromSubjectContext+94↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                jmp     short loc_14071D766
SeCreateClientSecurityFromSubjectContext endp

; ---------------------------------------------------------------------------
byte_14071D7CB  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400889D8↑o
                                        ; .pdata:0000000140106E90↑o

; =============== S U B R O U T I N E =======================================


sub_14071D7D4   proc near               ; CODE XREF: sub_140687200+FD8↑p
                                        ; DATA XREF: .rdata:0000000140088A38↑o ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014082E1CE SIZE 0000014F BYTES

; __unwind { // __C_specific_handler
                push    rbx
                sub     rsp, 40h
                mov     bl, r9b
                cmp     r8d, 18h
                jnz     loc_14082E1CE

loc_14071D7E7:                          ; DATA XREF: .rdata:0000000140088A24↑o
;   __try { // __except at loc_14071D7FC
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+48h+var_28], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   [rsp+48h+var_18], xmm1
                jmp     short loc_14071D7FE
;   } // starts at 14071D7E7
; ---------------------------------------------------------------------------

loc_14071D7FC:                          ; DATA XREF: .rdata:0000000140088A24↑o
;   __except(1) // owned by 14071D7E7
                jmp     short loc_14071D855
; ---------------------------------------------------------------------------

loc_14071D7FE:                          ; CODE XREF: sub_14071D7D4+26↑j
                cmp     dword ptr [rsp+48h+var_28], 1
                jnz     short loc_14071D86F
                mov     dl, bl
                mov     rcx, cs:qword_140D2E710
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      short loc_14071D876
                mov     ecx, dword ptr [rsp+48h+var_28+4]
                cmp     ecx, 0Ch
                jle     loc_14082E1D8
                sub     ecx, 11h
                jz      loc_14082E2FE
                sub     ecx, 1
                jz      loc_14082E2DF
                sub     ecx, 1
                jz      short loc_14071D85C
                sub     ecx, 1
                jnz     loc_14082E2B9
                mov     r8b, bl
                mov     edx, dword ptr [rsp+48h+var_18]
                mov     rcx, qword ptr [rsp+48h+var_28+8]
                call    sub_14071D884

loc_14071D855:                          ; CODE XREF: sub_14071D7D4:loc_14071D7FC↑j
                                        ; sub_14071D7D4+99↓j ...
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14071D85C:                          ; CODE XREF: sub_14071D7D4+65↑j
                mov     r8b, bl
                mov     edx, dword ptr [rsp+48h+var_18]
                mov     rcx, qword ptr [rsp+48h+var_28+8]
                call    sub_1407CD2AC
                jmp     short loc_14071D855
; ---------------------------------------------------------------------------

loc_14071D86F:                          ; CODE XREF: sub_14071D7D4+2F↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14071D855
; ---------------------------------------------------------------------------

loc_14071D876:                          ; CODE XREF: sub_14071D7D4+41↑j
                mov     eax, 0C0000022h
                jmp     short loc_14071D855
; } // starts at 14071D7D4
sub_14071D7D4   endp

; ---------------------------------------------------------------------------
byte_14071D87D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140088A38↑o
                                        ; .pdata:0000000140106E9C↑o

; =============== S U B R O U T I N E =======================================


sub_14071D884   proc near               ; CODE XREF: sub_14071D7D4+7C↑p
                                        ; DATA XREF: .rdata:0000000140088A74↑o ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014082E31E SIZE 000000AD BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_10], rax
                mov     r9, rcx
                xorps   xmm0, xmm0
                movups  [rsp+88h+var_40], xmm0
                movups  [rsp+88h+var_30], xmm0
                movups  [rsp+88h+var_20], xmm0
                and     [rsp+88h+var_58], 0
                and     [rsp+88h+var_68], 0
                xor     edi, edi
                mov     [rsp+88h+var_60], edi
                movups  [rsp+88h+var_50], xmm0
                cmp     edx, 10h
                jnz     loc_14082E31E

loc_14071D8D5:                          ; DATA XREF: .rdata:0000000140088A5C↑o
;   __try { // __except at loc_14071D90F
                test    r8b, r8b
                jz      short loc_14071D903
                test    r9b, 7
                jnz     short loc_14071D8FD
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                cmovnb  rcx, rax
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+0Fh]
                mov     [rcx+0Fh], al
                jmp     short loc_14071D903
; ---------------------------------------------------------------------------

loc_14071D8FD:                          ; CODE XREF: sub_14071D884+5A↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071D903:                          ; CODE XREF: sub_14071D884+54↑j
                                        ; sub_14071D884+77↑j
                movups  xmm0, xmmword ptr [r9]
                movdqu  [rsp+88h+var_50], xmm0
                jmp     short loc_14071D917
;   } // starts at 14071D8D5
; ---------------------------------------------------------------------------

loc_14071D90F:                          ; DATA XREF: .rdata:0000000140088A5C↑o
;   __except(1) // owned by 14071D8D5
                mov     ebx, eax
                mov     edi, [rsp+88h+var_60]
                jmp     short loc_14071D969
; ---------------------------------------------------------------------------

loc_14071D917:                          ; CODE XREF: sub_14071D884+89↑j
                mov     eax, dword ptr [rsp+88h+var_50]
                cmp     al, 1
                jnz     loc_14082E328
                test    eax, 0FFFFFC00h
                jnz     loc_14082E332
                bt      eax, 8
                jnb     short loc_14071D9A1
                lea     r9, [rsp+88h+var_68]
                mov     rcx, qword ptr [rsp+88h+var_50+8]
                call    sub_140361450
                mov     ebx, eax
                test    eax, eax
                js      short loc_14071D969
                mov     rcx, [rsp+88h+var_68]
                lock or dword ptr [rcx+87Ch], 40000h
                test    dword ptr [rsp+88h+var_50], 200h
                jnz     loc_14082E33C
                xor     ebx, ebx

loc_14071D969:                          ; CODE XREF: sub_14071D884+91↑j
                                        ; sub_14071D884+C3↑j ...
                test    edi, edi
                jnz     loc_14082E3B9

loc_14071D971:                          ; CODE XREF: sub_14071D884+110B42↓j
                mov     rcx, [rsp+88h+var_68]
                test    rcx, rcx
                jz      short loc_14071D980
                call    PsDereferenceSiloContext

loc_14071D980:                          ; CODE XREF: sub_14071D884+F5↑j
                mov     eax, ebx
                mov     rcx, [rsp+88h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+88h+arg_8]
                add     rsp, 80h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071D9A1:                          ; CODE XREF: sub_14071D884+AE↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_14071D969
; } // starts at 14071D884
sub_14071D884   endp

; ---------------------------------------------------------------------------
algn_14071D9A8:                         ; DATA XREF: .rdata:0000000140088A74↑o
                                        ; .pdata:0000000140106EA8↑o
                align 10h
; Exported entry 508. FsRtlMdlWriteCompleteDev

; =============== S U B R O U T I N E =======================================


                public FsRtlMdlWriteCompleteDev
FsRtlMdlWriteCompleteDev proc near      ; DATA XREF: .pdata:0000000140106EB4↑o
                sub     rsp, 28h
                mov     eax, [rcx+50h]
                test    al, 10h
                jnz     short loc_14071D9C8
                call    sub_140361498
                mov     al, 1

loc_14071D9C2:                          ; CODE XREF: FsRtlMdlWriteCompleteDev+1A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14071D9C8:                          ; CODE XREF: FsRtlMdlWriteCompleteDev+9↑j
                xor     al, al
                jmp     short loc_14071D9C2
FsRtlMdlWriteCompleteDev endp

; ---------------------------------------------------------------------------
byte_14071D9CC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106EB4↑o

; =============== S U B R O U T I N E =======================================


sub_14071D9D4   proc near               ; CODE XREF: sub_1402082A4+B6↑p
                                        ; DATA XREF: .pdata:0000000140106EC0↑o
                mov     rax, [rcx+28h]
                shr     rax, 0Ch
                retn
sub_14071D9D4   endp

; ---------------------------------------------------------------------------
                align 2
byte_14071D9DE  db 12h dup(0CCh)        ; DATA XREF: .pdata:0000000140106EC0↑o
; Exported entry 466. FsRtlInitializeTunnelCache

; =============== S U B R O U T I N E =======================================


                public FsRtlInitializeTunnelCache
FsRtlInitializeTunnelCache proc near    ; DATA XREF: .pdata:0000000140106ECC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     edx, 1
                mov     [rcx], edx
                mov     rbx, rcx
                mov     [rcx+8], rdi
                xor     r8d, r8d
                mov     [rcx+10h], edi
                add     rcx, 18h
                call    KeInitializeEvent
                lea     rax, [rbx+40h]
                mov     [rbx+38h], rdi
                mov     [rbx+50h], di
                mov     rbx, [rsp+28h+arg_0]
                mov     [rax+8], rax
                mov     [rax], rax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInitializeTunnelCache endp

algn_14071DA38:                         ; DATA XREF: .pdata:0000000140106ECC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071DA40   proc near               ; DATA XREF: .pdata:0000000140106ED8↑o
                                        ; sub_140A728B8+41↓o
                sub     rsp, 28h
                mov     rcx, rdx
                lea     rdx, [r8+8]
                add     rcx, 8
                mov     r8b, 1
                call    RtlCompareUnicodeString
                mov     ecx, eax
                xor     eax, eax
                test    ecx, ecx
                js      short loc_14071DA64
                setle   al
                inc     eax

loc_14071DA64:                          ; CODE XREF: sub_14071DA40+1D↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071DA40   endp

algn_14071DA6A:                         ; DATA XREF: .pdata:0000000140106ED8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14071DA70   proc near               ; DATA XREF: .rdata:0000000140088B50↑o
                                        ; .pdata:0000000140106EE4↑o ...

; FUNCTION CHUNK AT 00000001407E8ABE SIZE 0000002C BYTES
; FUNCTION CHUNK AT 000000014082E3CC SIZE 0000001E BYTES

; __unwind { // __C_specific_handler
                sub     rsp, 18h
                mov     r10, r8
                mov     r11, rcx
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      loc_14082E3CC

loc_14071DA90:                          ; DATA XREF: .rdata:0000000140088B3C↑o
;   __try { // __except at loc_14071DAE1
                mov     r9, 7FFFFFFF0000h
                mov     r8, r9
                cmp     rcx, r9
                cmovb   r8, rcx
                mov     eax, [r8]
                mov     [r8], eax
                mov     rcx, r9
                cmp     rdx, r9
                cmovb   rcx, rdx
                mov     eax, [rcx]
                mov     [rcx], eax
                cmp     r10, r9
                cmovb   r9, r10
                mov     eax, [r9]
                mov     [r9], eax
                mov     eax, cs:dword_140CFC418
                mov     [r11], eax
                mov     eax, cs:dword_140CFC4C0
                mov     [rdx], eax
                mov     eax, cs:dword_140CFC468
                mov     [r10], eax
                jmp     short loc_14071DAE3
;   } // starts at 14071DA90
; ---------------------------------------------------------------------------

loc_14071DAE1:                          ; DATA XREF: .rdata:0000000140088B3C↑o
;   __except(loc_1407E8ABE) // owned by 14071DA90
                jmp     short loc_14071DAE5
; ---------------------------------------------------------------------------

loc_14071DAE3:                          ; CODE XREF: sub_14071DA70+6F↑j
                                        ; sub_14071DA70+110975↓j
                xor     eax, eax

loc_14071DAE5:                          ; CODE XREF: sub_14071DA70:loc_14071DAE1↑j
                add     rsp, 18h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14071DA70
sub_14071DA70   endp

byte_14071DAEB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140088B50↑o
                                        ; .pdata:0000000140106EE4↑o

; =============== S U B R O U T I N E =======================================


sub_14071DAF4   proc near               ; CODE XREF: sub_14069CB10+310↑p
                                        ; DATA XREF: .rdata:0000000140088B8C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014082E3EA SIZE 00000019 BYTES

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
                mov     r13, r8
                mov     edi, edx
                mov     rsi, rcx
                xor     r15d, r15d
                xor     r8d, r8d
                mov     [rax-38h], r15
                xor     edx, edx
                lea     rcx, unk_140C19E00
                xor     r9d, r9d
                call    KeWaitForSingleObject
                mov     r8, cs:qword_140C19E80
                mov     r9d, r15d
                mov     ebx, r15d
                mov     rdx, [r8]
                cmp     rdx, r8
                jz      loc_14082E3F6
                or      r11, 0FFFFFFFFFFFFFFFFh

loc_14071DB50:                          ; CODE XREF: sub_14071DAF4+9C↓j
                mov     rcx, [rdx+30h]
                mov     rax, r11
                mov     r10d, r9d
                inc     r9d

loc_14071DB5D:                          ; CODE XREF: sub_14071DAF4+71↓j
                inc     rax
                cmp     [rcx+rax*2], r15w
                jnz     short loc_14071DB5D
                mov     r8, [rdx+28h]
                mov     rcx, r11

loc_14071DB6E:                          ; CODE XREF: sub_14071DAF4+82↓j
                inc     rcx
                cmp     [r8+rcx*2], r15w
                jnz     short loc_14071DB6E
                mov     rdx, [rdx]
                add     rax, rcx
                mov     r8, cs:qword_140C19E80
                lea     rbx, [rbx+rax*2]
                add     rbx, 4
                cmp     rdx, r8
                jnz     short loc_14071DB50
                test    r9d, r9d
                jz      loc_14082E3F6
                lea     rcx, [r10+r10*2]
                mov     rbp, rdi
                lea     r14, ds:10h[rcx*4]
                add     rbx, r14
                cmp     rdi, rbx
                jb      loc_14082E3EA
                mov     [rsi], r9d
                mov     r12d, r15d
                mov     rdi, [r8]
                cmp     rdi, r8
                jz      loc_14071DC53

loc_14071DBC8:                          ; CODE XREF: sub_14071DAF4+159↓j
                mov     eax, r12d
                lea     rcx, [r14+rsi]
                mov     rdx, rbp
                inc     r12d
                sub     rdx, r14
                lea     r15, [rax+rax*2]
                mov     eax, [rdi+10h]
                and     eax, 1
                mov     [rsi+r15*4+4], r14d
                mov     [rsi+r15*4+0Ch], eax
                mov     r8, [rdi+28h]
                call    sub_1402F1C38
                mov     rcx, [rdi+28h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                xor     edx, edx

loc_14071DBFF:                          ; CODE XREF: sub_14071DAF4+112↓j
                inc     rax
                cmp     [rcx+rax*2], dx
                jnz     short loc_14071DBFF
                lea     r14, [r14+rax*2]
                mov     rdx, rbp
                add     r14, 2
                mov     [rsi+r15*4+8], r14d
                sub     rdx, r14
                mov     r8, [rdi+30h]
                lea     rcx, [r14+rsi]
                call    sub_1402F1C38
                mov     rcx, [rdi+30h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                xor     edx, edx

loc_14071DC32:                          ; CODE XREF: sub_14071DAF4+145↓j
                inc     rax
                cmp     [rcx+rax*2], dx
                jnz     short loc_14071DC32
                mov     rdi, [rdi]
                lea     r14, [r14+rax*2]
                add     r14, 2
                cmp     rdi, cs:qword_140C19E80
                jnz     loc_14071DBC8

loc_14071DC53:                          ; CODE XREF: sub_14071DAF4+CE↑j
                                        ; sub_14071DAF4+1108FD↓j ...
                xor     edx, edx
                mov     [r13+0], ebx
                lea     rcx, unk_140C19E00
                call    KeReleaseMutex
                mov     rbx, [rsp+58h+arg_0]
                xor     eax, eax
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
sub_14071DAF4   endp

byte_14071DC85  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140088B8C↑o
                                        ; .pdata:0000000140106EF0↑o

; =============== S U B R O U T I N E =======================================


sub_14071DC8C   proc near               ; CODE XREF: sub_14060DA00+1217↑p
                                        ; DATA XREF: .rdata:0000000140088BCC↑o ...

var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014082E404 SIZE 0000001C BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9d
                mov     [r11+18h], r8d
                mov     [r11+10h], rdx
                mov     [r11+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     eax, r9d
                mov     rsi, rdx
                xorps   xmm0, xmm0
                movups  [rsp+98h+var_50], xmm0
                xor     edi, edi
                mov     [r11+8], dil
                neg     eax
                sbb     r13d, r13d
                and     r13d, 8
                add     r13d, 20h ; ' '
                mov     [rsp+98h+var_78], edi
                mov     rbx, [rsp+98h+arg_20]
                mov     [rbx], edi
                mov     [r11-60h], rdx
                lea     r8, [r11+8]
                xor     edx, edx
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    sub_140304080
                mov     r15, rax
                mov     [rsp+98h+var_58], rax
                test    rax, rax
                jz      loc_14082E404
                mov     eax, [rax+1B18h]
                mov     [rsp+98h+var_68], eax

loc_14071DD0B:                          ; DATA XREF: .rdata:0000000140088BB8↑o
;   __try { // __except at loc_14071DE83
                mov     [rsi+4], edi
                mov     r12d, edi
                mov     [rsp+98h+var_6C], edi
                mov     r14d, [rsp+98h+var_78]
                mov     rsi, [rsp+98h+var_60]

loc_14071DD1F:                          ; CODE XREF: sub_14071DC8C+1BD↓j
                cmp     r12d, eax
                jnb     loc_14071DE7F
                mov     r8d, r12d
                mov     rax, [r15+r8*8+1B20h]
                test    byte ptr [rax+0CCh], 50h
                jnz     loc_14071DE3D
                mov     esi, r14d
                add     rsi, [rsp+98h+arg_8]
                mov     [rsp+98h+var_60], rsi
                lea     ecx, [r14+r13]
                cmp     ecx, r14d
                jbe     loc_14071DE6E
                cmp     ecx, [rsp+98h+arg_10]
                ja      loc_14071DE6E
                mov     [rsp+98h+var_78], ecx
                mov     edx, [rax]
                mov     r9d, [rax+18h]
                mov     r14d, [rax+20h]
                mov     r10d, [rax+10h]
                mov     r11d, [rax+8]

loc_14071DD80:                          ; CODE XREF: sub_14071DC8C+F7↓j
                cmp     r9d, edx
                jnb     short loc_14071DD80
                mov     [rsi+4], edx
                sub     edx, r9d
                sub     edx, 2
                mov     [rsi+8], edx
                mov     [rsi+0Ch], r14d
                cmp     [rsp+98h+arg_18], edi
                jnz     loc_14071DE4E

loc_14071DDA2:                          ; CODE XREF: sub_14071DC8C+1CA↓j
                xorps   xmm0, xmm0
                movups  [rsp+98h+var_50], xmm0
                mov     rax, [r15+r8*8+1B20h]
                movzx   r9d, word ptr [rax+60h]
                mov     word ptr [rsp+98h+var_50], r9w
                mov     eax, 2
                add     eax, r9d
                movzx   edx, ax
                mov     word ptr [rsp+98h+var_50+2], dx
                mov     eax, r13d
                add     rax, rsi
                mov     qword ptr [rsp+98h+var_50+8], rax
                movups  xmm0, [rsp+98h+var_50]
                movdqu  xmmword ptr [rsi+10h], xmm0
                add     edx, 7
                and     edx, 0FFFFFFF8h
                mov     [rsp+98h+var_70], edx
                lea     r14d, [rdx+rcx]
                cmp     r14d, [rsp+98h+arg_10]
                ja      short loc_14071DE5B
                cmp     r14d, ecx
                jbe     short loc_14071DE5B
                mov     [rsp+98h+var_78], r14d
                mov     ebx, r9d
                mov     rdx, [r15+r8*8+1B20h]
                mov     r8d, r9d
                mov     rdx, [rdx+68h]
                mov     rcx, rax
                call    memmove
                shr     rbx, 1
                mov     rax, qword ptr [rsp+98h+var_50+8]
                mov     [rax+rbx*2], di
                mov     eax, [rsp+98h+var_70]
                add     eax, r13d
                mov     [rsi], eax
                mov     rbx, [rsp+98h+arg_20]
                jmp     short $+2
; ---------------------------------------------------------------------------

loc_14071DE3D:                          ; CODE XREF: sub_14071DC8C+AE↑j
                                        ; sub_14071DC8C+1AF↑j
                inc     r12d
                mov     [rsp+98h+var_6C], r12d
                mov     eax, [rsp+98h+var_68]
                jmp     loc_14071DD1F
; ---------------------------------------------------------------------------

loc_14071DE4E:                          ; CODE XREF: sub_14071DC8C+110↑j
                mov     [rsi+20h], r10d
                mov     [rsi+24h], r11d
                jmp     loc_14071DDA2
; ---------------------------------------------------------------------------

loc_14071DE5B:                          ; CODE XREF: sub_14071DC8C+16C↑j
                                        ; sub_14071DC8C+171↑j
                mov     [rsp+98h+var_78], r14d
                mov     [rbx], r14d
                mov     ebx, 0C0000004h
                mov     [rsp+98h+var_74], ebx
                jmp     short loc_14071DE97
; ---------------------------------------------------------------------------

loc_14071DE6E:                          ; CODE XREF: sub_14071DC8C+CB↑j
                                        ; sub_14071DC8C+D8↑j
                mov     [rsp+98h+var_78], ecx
                mov     [rbx], ecx
                mov     ebx, 0C0000004h
                mov     [rsp+98h+var_74], ebx
                jmp     short loc_14071DE97
; ---------------------------------------------------------------------------

loc_14071DE7F:                          ; CODE XREF: sub_14071DC8C+96↑j
                mov     [rsi], edi
                jmp     short loc_14071DE92
;   } // starts at 14071DD0B
; ---------------------------------------------------------------------------

loc_14071DE83:                          ; DATA XREF: .rdata:0000000140088BB8↑o
;   __except(1) // owned by 14071DD0B
                mov     ebx, eax
                mov     [rsp+98h+var_74], eax
                xor     edi, edi
                mov     r15, [rsp+98h+var_58]
                jmp     short loc_14071DE97
; ---------------------------------------------------------------------------

loc_14071DE92:                          ; CODE XREF: sub_14071DC8C+1F5↑j
                mov     [rbx], r14d
                mov     ebx, edi

loc_14071DE97:                          ; CODE XREF: sub_14071DC8C+1E0↑j
                                        ; sub_14071DC8C+1F1↑j ...
                cmp     [rsp+98h+arg_0], dil
                jnz     loc_14082E40E

loc_14071DEA5:                          ; CODE XREF: sub_14071DC8C+11078F↓j
                mov     eax, ebx

loc_14071DEA7:                          ; CODE XREF: sub_14071DC8C+11077D↓j
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14071DC8C
sub_14071DC8C   endp

algn_14071DEB8:                         ; DATA XREF: .rdata:0000000140088BCC↑o
                                        ; .pdata:0000000140106EFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_14071DEC0   proc near               ; CODE XREF: sub_1406C9390+236↑p
                                        ; DATA XREF: .rdata:0000000140088C00↑o ...

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_10          = byte ptr -10h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 000000014082E420 SIZE 000000E7 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rdi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-4Fh]
                sub     rsp, 90h
                mov     r13, [rbp+47h+arg_28]
                xorps   xmm0, xmm0
                xor     ebx, ebx
                mov     r14d, r9d
                mov     [rbp+47h+arg_28], rbx
                lea     r9, [rbp+47h+var_48]
                mov     [rbp+47h+var_60], rbx
                mov     r15, r8
                mov     r8d, [rbp+47h+arg_20]
                mov     [r13+0], ebx
                mov     rax, gs:188h
                movups  [rbp+47h+var_48], xmm0
                movups  [rbp+47h+var_38], xmm0
                mov     r12b, [rax+232h]
                movups  [rbp+47h+var_28], xmm0
                movups  [rbp+47h+var_58], xmm0
                call    sub_1406CE1B8
                mov     edi, eax
                test    eax, eax
                js      loc_14071E037
                cmp     dword ptr [rbp+47h+var_48+4], ebx
                jnz     loc_14082E4E2
                cmp     dword ptr [rbp+47h+var_28+4], ebx
                jnz     loc_14082E4E2
                test    r15, r15
                jz      loc_14082E4E2
                cmp     r14d, 10h
                jb      loc_14082E4E2
                mov     edi, dword ptr [rbp+47h+var_48+8]
                lea     eax, [rdi-2]
                cmp     eax, 1
                ja      loc_14082E4E2
                cmp     qword ptr [rbp+47h+var_38], rbx
                jz      loc_14082E4BB
                mov     rdx, qword ptr [rbp+47h+var_38]
                lea     rcx, [rbp+47h+var_58]
                call    RtlInitUnicodeStringEx
                mov     ebx, eax
                test    eax, eax
                js      short loc_14071DFFB
                xor     r8d, r8d
                lea     rdx, [rbp+47h+var_58]
                lea     rcx, [rbp+47h+var_58]
                call    RtlUpcaseUnicodeString
                xor     ecx, ecx
                mov     ebx, eax
                test    eax, eax
                js      short loc_14071DFFB
                mov     rdx, qword ptr [rbp+47h+var_38]
                lea     rax, [rbp+47h+arg_28]
                mov     [rsp+0A0h+var_68], rcx
                cmp     edi, 3
                mov     edi, dword ptr [rbp+47h+var_38+0Ch]
                mov     [rsp+0A0h+var_70], rax
                mov     byte ptr [rsp+0A0h+var_78], cl
                mov     rcx, cs:qword_140CF4378
                mov     dword ptr [rsp+0A0h+var_80], edi
                jz      loc_14082E420
                call    sub_1406CCD1C
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jz      loc_14082E4A1

loc_14071DFDD:                          ; CODE XREF: sub_14071DEC0+11056C↓j
                                        ; sub_14071DEC0+1105DC↓j
                test    ebx, ebx

loc_14071DFDF:                          ; CODE XREF: sub_14071DEC0+11061D↓j
                js      short loc_14071DFFB
                mov     rcx, [rbp+47h+arg_28]
                lea     rax, [rbp+47h+var_60]
                mov     r9b, r12b
                mov     [rsp+0A0h+var_80], rax
                mov     r8d, edi
                call    sub_1406D1E0C
                mov     ebx, eax

loc_14071DFFB:                          ; CODE XREF: sub_14071DEC0+C4↑j
                                        ; sub_14071DEC0+DC↑j ...
                mov     r8d, dword ptr [rbp+47h+var_28+8]
                mov     r9, r15
                mov     rdx, [rbp+47h+var_60]
                mov     ecx, ebx
                mov     [rsp+0A0h+var_78], r13
                mov     dword ptr [rsp+0A0h+var_80], r14d
                call    sub_1406CE120
                mov     rcx, [rbp+47h+arg_28]
                mov     edi, eax
                test    rcx, rcx
                jz      short loc_14071E027
                call    ZwClose

loc_14071E027:                          ; CODE XREF: sub_14071DEC0+160↑j
                test    edi, edi
                js      loc_14082E4EC
                test    ebx, ebx
                js      loc_14082E4EC

loc_14071E037:                          ; CODE XREF: sub_14071DEC0+6F↑j
                                        ; sub_14071DEC0+110633↓j ...
                lea     rcx, [rbp+47h+var_48]
                call    sub_1406CE0F0
                lea     r11, [rsp+0A0h+var_10]
                mov     eax, edi
                mov     rbx, [r11+20h]
                mov     rdi, [r11+28h]
                mov     r12, [r11+30h]
                mov     r13, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14071DEC0   endp

byte_14071E064  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140088C00↑o
                                        ; .pdata:0000000140106F08↑o

; =============== S U B R O U T I N E =======================================


sub_14071E06C   proc near               ; CODE XREF: NtSetInformationToken+A8E↑p
                                        ; NtSetInformationProcess+2171↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     ebx, edx
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+28h+var_28], 0
                mov     eax, [rdi+0C8h]
                test    ebx, ebx
                jz      short loc_14071E0FF
                bt      eax, 9
                jb      short loc_14071E0F3

loc_14071E0AB:                          ; CODE XREF: sub_14071E06C+91↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdi+38h], eax
                shr     rax, 20h
                mov     [rdi+3Ch], eax
                lock or [rsp+28h+var_28], 0
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071E0F3:                          ; CODE XREF: sub_14071E06C+3D↑j
                bts     eax, 0Ah

loc_14071E0F7:                          ; CODE XREF: sub_14071E06C+97↓j
                mov     [rdi+0C8h], eax
                jmp     short loc_14071E0AB
; ---------------------------------------------------------------------------

loc_14071E0FF:                          ; CODE XREF: sub_14071E06C+37↑j
                btr     eax, 0Ah
                jmp     short loc_14071E0F7
sub_14071E06C   endp

; ---------------------------------------------------------------------------
algn_14071E105:                         ; DATA XREF: .pdata:0000000140106F14↑o
                align 10h
; Exported entry 1979. RtlAddAtomToAtomTable

; =============== S U B R O U T I N E =======================================



RtlSetBit       proc near               ; DATA XREF: .pdata:00000001400D71B4↑o
                mov     rax, [rcx+8]
                bts     [rax], edx
                retn
RtlSetBit       endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14033FBA9:                         ; DATA XREF: .pdata:00000001400D71B4↑o
                align 10h
; Exported entry 1215. KeIsExecutingDpc

; =============== S U B R O U T I N E =======================================


                public KeIsExecutingDpc
KeIsExecutingDpc proc near              ; CODE XREF: sub_1402C8140:loc_1402C888D↑p
                                        ; DATA XREF: .pdata:00000001400D71C0↑o
                mov     eax, gs:32ACh
                and     eax, 10001h
                retn
KeIsExecutingDpc endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14033FBBF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400D71C0↑o
; Exported entry 1411. MmAreMdlPagesCached

; =============== S U B R O U T I N E =======================================


                public MmAreMdlPagesCached
MmAreMdlPagesCached proc near           ; CODE XREF: sub_1402EE384+69↑p
                                        ; DATA XREF: .pdata:00000001400D71CC↑o
                mov     edx, [rcx+2Ch]
                lea     r8, [rcx+30h]
                add     edx, [rcx+20h]
                mov     ecx, [rcx+28h]
                and     edx, 0FFFh
                add     rcx, 0FFFh
                add     rcx, rdx
                shr     rcx, 0Ch
                lea     r9, [r8+rcx*8]

loc_14033FBF5:                          ; CODE XREF: MmAreMdlPagesCached+78↓j
                mov     rdx, [r8]
                mov     rax, 0FFFFFFFFFh
                cmp     rdx, rax
                ja      short loc_14033FC51
                lea     rax, [rdx+rdx*2]
                add     rax, rax
                mov     rcx, 0FFFFFA8000000028h
                mov     rcx, [rcx+rax*8]
                shr     rcx, 32h
                and     ecx, 1
                jz      short loc_14033FC51
                lea     rcx, [rdx+rdx*2]
                add     rcx, rcx
                mov     rdx, 0FFFFFA8000000022h
                mov     cl, [rdx+rcx*8]
                and     cl, 0C0h
                cmp     cl, 40h ; '@'
                jnz     short loc_14033FC51
                add     r8, 8
                cmp     r8, r9
                jb      short loc_14033FBF5
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033FC51:                          ; CODE XREF: MmAreMdlPagesCached+35↑j
                                        ; MmAreMdlPagesCached+53↑j ...
                xor     eax, eax
                retn
MmAreMdlPagesCached endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14033FC55  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D71CC↑o

; =============== S U B R O U T I N E =======================================


sub_14033FC5C   proc near               ; CODE XREF: sub_140A4543C+489↓p
                                        ; DATA XREF: .pdata:00000001400D71D8↑o
                movups  xmm0, xmmword ptr [r8]
                lea     rax, [rdx+rdx*2]
                movups  xmm1, xmmword ptr [r8+10h]
                shl     rax, 4
                movups  xmm2, xmmword ptr [r8+20h]
                lea     rdx, [rax+rcx]
                cmp     rax, 1000h
                ja      short loc_14033FCA9

loc_14033FC7E:                          ; CODE XREF: sub_14033FC5C+39↓j
                cmp     rcx, rdx
                jz      short locret_14033FCB1
                movdqu  xmmword ptr [rcx], xmm0
                movdqu  xmmword ptr [rcx+10h], xmm1
                movdqu  xmmword ptr [rcx+20h], xmm2
                add     rcx, 30h ; '0'
                jmp     short loc_14033FC7E
; ---------------------------------------------------------------------------

loc_14033FC97:                          ; CODE XREF: sub_14033FC5C+50↓j
                movntdq xmmword ptr [rcx], xmm0
                movntdq xmmword ptr [rcx+10h], xmm1
                movntdq xmmword ptr [rcx+20h], xmm2
                add     rcx, 30h ; '0'

loc_14033FCA9:                          ; CODE XREF: sub_14033FC5C+20↑j
                cmp     rcx, rdx
                jnz     short loc_14033FC97
                sfence

locret_14033FCB1:                       ; CODE XREF: sub_14033FC5C+25↑j
                retn
sub_14033FC5C   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14033FCB3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D71D8↑o

; =============== S U B R O U T I N E =======================================


sub_14033FCBC   proc near               ; CODE XREF: NtSetInformationProcess:loc_1406A5C02↓p
                                        ; DATA XREF: .rdata:0000000140080140↑o ...

var_58          = qword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014047CACC SIZE 00000036 BYTES

; __unwind { // __C_specific_handler
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h

loc_14033FCCC:                          ; DATA XREF: .rdata:000000014008012C↑o
;   __try { // __except at loc_14033FCFE
                test    cl, 3
                jz      short loc_14033FCD7
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033FCD7:                          ; CODE XREF: sub_14033FCBC+13↑j
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                cmovb   rax, rcx
                mov     al, [rax]
                mov     rax, [rcx+30h]
                mov     [rsp+78h+var_48], rax
                mov     rax, [rcx+28h]
                mov     [rsp+78h+var_40], rax
                jmp     short loc_14033FD03
;   } // starts at 14033FCCC
; ---------------------------------------------------------------------------

loc_14033FCFE:                          ; DATA XREF: .rdata:000000014008012C↑o
;   __except(1) // owned by 14033FCCC
                jmp     loc_14033FF5A
; ---------------------------------------------------------------------------

loc_14033FD03:                          ; CODE XREF: sub_14033FCBC+40↑j
                sub     rax, [rsp+78h+var_48]
                mov     r15d, 0FFFFFFFFh
                cmp     rax, r15
                jnb     loc_14047CACC
                mov     r12d, 0C00000FFh
                mov     r13, gs:188h
                mov     rbx, [r13+220h]
                or      rsi, 0FFFFFFFFFFFFFFFFh
                add     [r13+1E6h], si
                lea     r14, [rbx+850h]
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                mov     rbx, [rbx+848h]
                lea     edi, [rsi+2]
                test    rbx, rbx
                jz      short loc_14033FDD4
                mov     edx, [rbx]
                mov     ecx, edi
                cmp     edx, edi
                jbe     short loc_14033FDD4
                lea     rax, [rbx+30h]
                mov     r8, [rsp+78h+var_48]

loc_14033FD6A:                          ; CODE XREF: sub_14033FCBC+BB↓j
                cmp     [rax], r8
                jnb     short loc_14033FD7B
                add     ecx, edi
                add     rax, 18h
                cmp     ecx, edx
                jb      short loc_14033FD6A
                jmp     short loc_14033FDD4
; ---------------------------------------------------------------------------

loc_14033FD7B:                          ; CODE XREF: sub_14033FCBC+B1↑j
                mov     eax, ecx
                lea     r9, [rax+rax*2]
                lea     r10, [rbx+10h]
                lea     r10, [r10+r9*8]
                cmp     [rbx+r9*8+18h], r8
                jnz     short loc_14033FDD4
                mov     rax, [rsp+78h+var_40]
                sub     eax, r8d
                cmp     [rbx+r9*8+20h], eax
                jnz     short loc_14033FDD4
                lea     esi, [rdx-1]
                cmp     ecx, esi
                jz      short loc_14033FDCB
                sub     edx, ecx
                sub     edx, edi
                lea     r8, [rdx+rdx*2]
                shl     r8, 3
                lea     eax, [rcx+1]
                mov     edx, eax
                add     rdx, 2
                lea     rax, [rdx+rax*2]
                lea     rdx, [rbx+rax*8]
                mov     rcx, r10
                call    memmove

loc_14033FDCB:                          ; CODE XREF: sub_14033FCBC+E8↑j
                xor     r12d, r12d
                mov     [rbx], esi
                or      rsi, 0FFFFFFFFFFFFFFFFh

loc_14033FDD4:                          ; CODE XREF: sub_14033FCBC+9B↑j
                                        ; sub_14033FCBC+A3↑j ...
                mov     rax, rsi
                lock xadd [r14], rax
                and     al, 6
                cmp     al, 2
                jz      loc_14033FFA1

loc_14033FDE6:                          ; CODE XREF: sub_14033FCBC+2ED↓j
                and     [rsp+78h+arg_18], 0
                mov     rbx, gs:188h
                mov     rcx, r14
                call    sub_140245330
                cmp     eax, edi
                jz      loc_14033FF6B

loc_14033FE07:                          ; CODE XREF: sub_14033FCBC+2BE↓j
                add     [rbx+1E6h], si
                add     [rbx+31Ah], dil
                mov     al, [rbx+31Ah]
                mov     [rsp+78h+arg_8], al
                xor     esi, esi
                mov     r8, r14
                mov     r9, 7FFFFFFFFFFFFFFCh
                and     r8, r9
                movsx   ecx, byte ptr [rbx+318h]
                movsx   edx, byte ptr [rbx+366h]
                or      edx, ecx
                xor     edx, 3Fh

loc_14033FE47:                          ; CODE XREF: sub_14033FCBC+1B2↓j
                                        ; sub_14033FCBC+1BA↓j ...
                bsr     ecx, edx
                mov     [rsp+78h+arg_10], ecx
                jz      short loc_14033FE9A
                mov     eax, edi
                shl     eax, cl
                not     eax
                and     edx, eax
                lea     rcx, [rcx+rcx*2]
                shl     rcx, 5
                add     rcx, [rbx+320h]
                test    [rcx+1Ah], dil
                jz      short loc_14033FE47
                mov     eax, [rcx+20h]
                test    dil, al
                jnz     short loc_14033FE47
                mov     rax, [rcx+20h]
                and     rax, r9
                cmp     rax, r8
                jnz     short loc_14033FE47
                cmp     [rcx+28h], r15d
                jnz     short loc_14033FE47
                and     byte ptr [rcx+1Ah], 0FEh
                mov     rax, [rcx+20h]
                test    rax, rax
                jz      short loc_14033FE47
                mov     rsi, rcx

loc_14033FE9A:                          ; CODE XREF: sub_14033FCBC+195↑j
                test    rsi, rsi
                jz      loc_14033FF7F
                mov     al, [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_14033FF8D

loc_14033FEBB:                          ; CODE XREF: sub_14033FCBC+2D9↓j
                mov     ecx, [rsi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                mov     [rsp+78h+arg_18], eax
                and     ecx, 0FFFE0000h
                mov     [rsi+58h], ecx
                and     byte ptr [rsi+19h], 0FEh
                mov     qword ptr [rsi+20h], 0
                sub     rsi, [rbx+320h]
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rsi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     [rsp+78h+arg_8], dil
                jnz     loc_14047CAF0
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_14033FF21:                          ; CODE XREF: sub_14033FCBC+2CA↓j
                                        ; sub_14033FCBC+13CE41↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+78h+arg_18]
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], di
                jnz     short loc_14033FF4F
                lea     rdx, [rbx+98h]
                cmp     [rdx], rdx
                jnz     short loc_14033FF9A

loc_14033FF4F:                          ; CODE XREF: sub_14033FCBC+285↑j
                                        ; sub_14033FCBC+2E3↓j
                mov     rcx, r13
                call    sub_140245770
                mov     eax, r12d

loc_14033FF5A:                          ; CODE XREF: sub_14033FCBC:loc_14033FCFE↑j
                                        ; sub_14033FCBC+13CE15↓j
                add     rsp, 40h
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
; ---------------------------------------------------------------------------

loc_14033FF6B:                          ; CODE XREF: sub_14033FCBC+145↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r15d, eax
                jmp     loc_14033FE07
; ---------------------------------------------------------------------------

loc_14033FF7F:                          ; CODE XREF: sub_14033FCBC+1E1↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_14033FF21
                jmp     loc_14047CAD6
; ---------------------------------------------------------------------------

loc_14033FF8D:                          ; CODE XREF: sub_14033FCBC+1F9↑j
                mov     rcx, rsi
                call    sub_14031EC80
                jmp     loc_14033FEBB
; ---------------------------------------------------------------------------

loc_14033FF9A:                          ; CODE XREF: sub_14033FCBC+291↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14033FF4F
; ---------------------------------------------------------------------------

loc_14033FFA1:                          ; CODE XREF: sub_14033FCBC+124↑j
                mov     rcx, r14
                call    ExfTryToWakePushLock
                jmp     loc_14033FDE6
; } // starts at 14033FCBC
sub_14033FCBC   endp

; ---------------------------------------------------------------------------
byte_14033FFAE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140080140↑o
                                        ; .pdata:00000001400D71E4↑o

; =============== S U B R O U T I N E =======================================


sub_14033FFB4   proc near               ; CODE XREF: sub_140216560+6FE↑p
                                        ; sub_14021A060+5D↑p ...

var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_48          = xmmword ptr -48h
var_38          = byte ptr -38h
var_28          = byte ptr -28h

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rdi, [rcx+30h]
                xorps   xmm0, xmm0
                mov     r14b, dl
                mov     rbp, rcx
                xor     eax, eax
                lea     rdx, [r11-48h]
                movups  [rsp+88h+var_48], xmm0
                mov     rcx, rdi
                mov     [r11-38h], rax
                mov     r12b, r9b
                mov     r15b, r8b
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rdi+0Ch]
                xor     ebx, ebx
                cmp     eax, [rdi+8]
                jnb     loc_140340107
                mov     rcx, [rdi+20h]
                test    rcx, rcx
                jz      short loc_140340016
                mov     rax, [rcx]
                mov     [rdi+20h], rax
                mov     eax, [rdi+0Ch]

loc_140340016:                          ; CODE XREF: sub_14033FFB4+56↑j
                mov     rsi, [rcx+8]
                inc     eax
                mov     [rdi+0Ch], eax

loc_14034001F:                          ; CODE XREF: sub_14033FFB4+15E↓j
                                        ; sub_14033FFB4+173↓j
                lea     rcx, [rsp+88h+var_48]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+88h+var_38]
                test    eax, eax
                jnz     short loc_1403400A8

loc_140340038:                          ; CODE XREF: sub_14033FFB4+F6↓j
                                        ; sub_14033FFB4+FE↓j ...
                mov     cr8, rdi
                test    r15b, r15b
                jz      short loc_140340060
                lea     rdi, [rbp+160h]
                mov     eax, 11h
                lock cmpxchg [rdi], rbx
                jnz     loc_140340117

loc_140340058:                          ; CODE XREF: sub_14033FFB4+16B↓j
                mov     rcx, rdi
                call    sub_140243660

loc_140340060:                          ; CODE XREF: sub_14033FFB4+8B↑j
                test    rsi, rsi
                jz      short loc_14034008E
                mov     rdx, [rbp+28h]
                neg     r14b
                mov     rcx, [rbp+20h]
                mov     [rsp+88h+var_50], r12b
                sbb     r8, r8
                mov     [rsp+88h+var_58], rsi
                xor     r9d, r9d
                mov     [rsp+88h+var_60], bl
                mov     [rsp+88h+var_68], rbx
                call    sub_1402C3040

loc_14034008E:                          ; CODE XREF: sub_14033FFB4+AF↑j
                lea     r11, [rsp+88h+var_28]
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

loc_1403400A8:                          ; CODE XREF: sub_14033FFB4+82↑j
                test    al, 1
                jz      short loc_140340038
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140340038
                cmp     dil, 0Fh
                ja      loc_140340038
                cmp     al, 2
                jb      loc_140340038
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+88h+var_38]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     loc_140340038
                mov     rcx, r10
                call    sub_1403F2EC4
                jmp     loc_140340038
; ---------------------------------------------------------------------------

loc_140340107:                          ; CODE XREF: sub_14033FFB4+49↑j
                mov     rsi, rbx
                test    r14b, r14b
                jnz     short loc_140340124
                inc     dword ptr [rdi+10h]
                jmp     loc_14034001F
; ---------------------------------------------------------------------------

loc_140340117:                          ; CODE XREF: sub_14033FFB4+9E↑j
                mov     rcx, rdi
                call    ExfReleasePushLockShared
                jmp     loc_140340058
; ---------------------------------------------------------------------------

loc_140340124:                          ; CODE XREF: sub_14033FFB4+159↑j
                inc     dword ptr [rdi+14h]
                jmp     loc_14034001F
sub_14033FFB4   endp

; ---------------------------------------------------------------------------
byte_14034012C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D71F0↑o

; =============== S U B R O U T I N E =======================================


sub_140340134   proc near               ; CODE XREF: sub_1402786F0+115↑p
                                        ; sub_140286D90+C15↑p ...

; FUNCTION CHUNK AT 000000014047CB02 SIZE 00000011 BYTES

                mov     r8, [rdx]
                mov     rax, r8
                shr     rax, 0Ch
                and     eax, 0Fh
                mov     rax, [rcx+rax*8+1B20h]
                movzx   ecx, word ptr [rax+0CCh]
                mov     eax, 1
                test    cl, 10h
                jnz     short locret_140340165
                test    cl, 20h
                jnz     loc_14047CB02

loc_140340163:                          ; CODE XREF: sub_140340134+13C9DA↓j
                xor     eax, eax

locret_140340165:                       ; CODE XREF: sub_140340134+24↑j
                                        ; sub_140340134+13C9D4↓j
                retn
sub_140340134   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140340167:                         ; DATA XREF: .pdata:00000001400D71FC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140340170   proc near               ; CODE XREF: sub_1406456F0+2AF↓p
                                        ; sub_1406456F0+4ED↓p ...
                xor     eax, eax
                cmp     rcx, cs:qword_140D24158
                setz    al
                retn
sub_140340170   endp

; ---------------------------------------------------------------------------
                align 2
byte_14034017E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7208↑o

; =============== S U B R O U T I N E =======================================


sub_140340184   proc near               ; CODE XREF: sub_14022B420+11BF↑p
                                        ; DATA XREF: .rdata:0000000140080300↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047CB14 SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     dword ptr [r8], 0
                lea     rbp, qword_140C4CB40
                and     qword ptr [rdx], 0
                mov     r14, r8
                cmp     cs:qword_140C4CB40, rbp
                mov     r15, rdx
                mov     rbx, rcx
                jz      loc_14034025F
                call    sub_140245330
                cmp     eax, 0Ch
                jnz     loc_140340256

loc_1403401CF:                          ; CODE XREF: sub_140340184+D5↓j
                xor     edi, edi
                lea     rcx, unk_140C4CB64
                call    ExAcquireSpinLockShared
                mov     rdx, cs:qword_140C4CB40
                movzx   esi, al

loc_1403401E7:                          ; CODE XREF: sub_140340184+74↓j
                cmp     rdx, rbp
                jz      short loc_140340213
                mov     r8, [rdx+10h]
                cmp     rbx, r8
                jnb     short loc_14034024E

loc_1403401F5:                          ; CODE XREF: sub_140340184+CE↓j
                mov     rdx, [rdx]
                jmp     short loc_1403401E7
; ---------------------------------------------------------------------------

loc_1403401FA:                          ; CODE XREF: sub_140340184+D0↓j
                mov     rax, [rdx+28h]
                sub     rbx, r8
                shr     rbx, 0Ch
                mov     rcx, [rax+8]
                bt      [rcx], ebx
                setb    al
                test    al, al
                jnz     short loc_140340263

loc_140340213:                          ; CODE XREF: sub_140340184+66↑j
                                        ; sub_140340184+F0↓j
                lea     rcx, unk_140C4CB64
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047CB14

loc_14034022D:                          ; CODE XREF: sub_140340184+13C992↓j
                                        ; sub_140340184+13C99E↓j ...
                mov     cr8, rsi
                mov     rax, rdi

loc_140340234:                          ; CODE XREF: sub_140340184+DD↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034024E:                          ; CODE XREF: sub_140340184+6F↑j
                cmp     rbx, [rdx+18h]
                ja      short loc_1403401F5
                jmp     short loc_1403401FA
; ---------------------------------------------------------------------------

loc_140340256:                          ; CODE XREF: sub_140340184+45↑j
                cmp     eax, 1
                jz      loc_1403401CF

loc_14034025F:                          ; CODE XREF: sub_140340184+37↑j
                xor     eax, eax
                jmp     short loc_140340234
; ---------------------------------------------------------------------------

loc_140340263:                          ; CODE XREF: sub_140340184+8D↑j
                mov     rax, [rdx+30h]
                mov     rdi, r8
                sub     rdi, [rdx+20h]
                mov     [r15], rax
                mov     [r14], ebx
                jmp     short loc_140340213
sub_140340184   endp

; ---------------------------------------------------------------------------
byte_140340276  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140080300↑o
                                        ; .pdata:00000001400D7214↑o

; =============== S U B R O U T I N E =======================================


sub_14034027C   proc near               ; CODE XREF: sub_1402335C0+881↑p
                                        ; sub_140281130+132↑p ...
                sub     rsp, 28h
                mov     eax, [rcx+30h]
                bt      eax, 14h
                jb      short loc_140340298

loc_140340289:                          ; CODE XREF: sub_14034027C+2C↓j
                call    sub_1402342C0
                test    eax, eax
                jnz     short loc_1403402AA

loc_140340292:                          ; CODE XREF: sub_14034027C+33↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140340298:                          ; CODE XREF: sub_14034027C+B↑j
                bt      eax, 16h
                jb      short loc_1403402AA
                and     eax, 0C0000h
                cmp     eax, 80000h
                jb      short loc_140340289

loc_1403402AA:                          ; CODE XREF: sub_14034027C+14↑j
                                        ; sub_14034027C+20↑j
                mov     eax, 1
                jmp     short loc_140340292
sub_14034027C   endp

; ---------------------------------------------------------------------------
algn_1403402B1:                         ; DATA XREF: .pdata:00000001400D7220↑o
                align 20h
; Exported entry 2236. RtlIntersectBitMapsEx

; =============== S U B R O U T I N E =======================================



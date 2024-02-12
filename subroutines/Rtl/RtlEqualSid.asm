RtlEqualSid     proc near               ; CODE XREF: sub_140202EC8+70↑p
                                        ; sub_1402057E8+6F↑p ...
                sub     rsp, 28h
                movzx   eax, word ptr [rcx]
                cmp     ax, [rdx]
                jnz     short loc_1402164BB
                mov     r8d, eax
                shr     r8, 8
                lea     r8, ds:8[r8*4]
                call    memcmp
                test    eax, eax
                setz    al

loc_1402164B5:                          ; CODE XREF: RtlEqualSid+2D↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402164BB:                          ; CODE XREF: RtlEqualSid+A↑j
                xor     al, al
                jmp     short loc_1402164B5
RtlEqualSid     endp

; ---------------------------------------------------------------------------
byte_1402164BF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA308↑o

; =============== S U B R O U T I N E =======================================


sub_1402164D0   proc near               ; CODE XREF: sub_140218580+44B↓p
                                        ; NtQuerySecurityAttributesToken+132↓p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                push    rbx
                sub     rsp, 30h
                xor     r11d, r11d
                lea     rax, [rcx+6]
                movzx   r10d, r8b
                mov     r8, [rsp+38h+arg_20]
                mov     rbx, r9
                mov     r9, [rsp+38h+arg_28]
                mov     byte ptr [r8], 0
                mov     [r9], r11
                cmp     rax, 2
                jbe     short loc_140216532
                mov     r8, cs:SeTokenObjectType
                lea     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], r11
                movzx   r9d, r10b
                mov     [rsp+38h+var_18], rax
                mov     [rsp+38h+arg_20], r11
                call    ObReferenceObjectByHandle
                mov     ecx, eax
                mov     rax, [rsp+38h+arg_20]
                mov     [rbx], rax

loc_140216529:                          ; CODE XREF: sub_1402164D0+78↓j
                mov     eax, ecx

loc_14021652B:                          ; CODE XREF: sub_1402164D0+76↓j
                                        ; sub_1402164D0+7F↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140216532:                          ; CODE XREF: sub_1402164D0+29↑j
                test    edx, 0FFFFFFE7h
                jnz     short loc_14021654A
                mov     rdx, rbx
                call    sub_140219D20
                mov     ecx, eax
                test    eax, eax
                js      short loc_14021652B
                jmp     short loc_140216529
; ---------------------------------------------------------------------------

loc_14021654A:                          ; CODE XREF: sub_1402164D0+68↑j
                mov     eax, 0C0000022h
                jmp     short loc_14021652B
sub_1402164D0   endp

; ---------------------------------------------------------------------------
algn_140216551:                         ; DATA XREF: .pdata:00000001400CA314↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140216560   proc near               ; DATA XREF: .pdata:00000001400CA320↑o
                                        ; PAGE:000000014098BAB8↓o

var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = byte ptr -1E8h
var_1E7         = byte ptr -1E7h
var_1E0         = qword ptr -1E0h
var_1D8         = dword ptr -1D8h
var_1D0         = xmmword ptr -1D0h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = dword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = xmmword ptr -170h
var_160         = xmmword ptr -160h
var_150         = qword ptr -150h
var_148         = dword ptr -148h
var_144         = dword ptr -144h
var_140         = dword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = xmmword ptr -128h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140418630 SIZE 00000016 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+228h+var_48], rax
                mov     rax, r9
                mov     [rsp+228h+var_180], rax
                mov     r15d, r8d
                mov     [rsp+228h+var_1D8], r15d
                mov     r13, rdx
                mov     [rsp+228h+var_138], rdx
                mov     rdi, rcx
                mov     [rsp+228h+var_188], rcx
                mov     [rsp+228h+var_198], rdx
                mov     dword ptr [rsp+228h+var_1E0], r15d
                mov     [rsp+228h+var_1A8], rax
                mov     rbx, [rsp+228h+arg_20]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+228h+var_170], xmm0
                movups  [rsp+228h+var_160], xmm0
                mov     [r11-150h], rax
                movups  [rsp+228h+var_1D0], xmm0
                mov     [rsp+228h+var_1C0], rax
                xorps   xmm1, xmm1
                movups  [rsp+228h+var_C8], xmm1
                movups  [rsp+228h+var_B8], xmm1
                movups  [rsp+228h+var_A8], xmm1
                movups  [rsp+228h+var_98], xmm1
                movups  [rsp+228h+var_88], xmm1
                movups  xmmword ptr [r11-78h], xmm1
                movups  xmmword ptr [r11-68h], xmm1
                movups  xmmword ptr [r11-58h], xmm1
                xor     r12d, r12d
                mov     [rsp+228h+var_1B0], r12d
                mov     r14d, r12d
                mov     [r11-130h], r12
                mov     rax, gs:188h
                mov     [rsp+228h+var_D8], rax
                movzx   esi, byte ptr [rax+232h]
                mov     [rsp+228h+var_1E8], sil
                mov     [rsp+228h+var_1E7], sil
                lea     rax, [r11-0C8h]
                mov     [rsp+228h+var_178], rax
                lea     eax, [r15-1]
                cmp     eax, 7FFFFFEh
                ja      loc_1402176C8
                test    sil, sil
                jz      loc_14021674A

loc_140216688:                          ; DATA XREF: .rdata:000000014004C9FC↑o
;   __try { // __except at loc_1402166F6
                mov     edx, r15d
                shl     rdx, 5
                lea     r8d, [r12+8]
                mov     rcx, r13
                call    ProbeForWrite
                mov     rcx, [rsp+228h+var_180]
                mov     r8, 7FFFFFFF0000h
                cmp     rcx, r8
                cmovnb  rcx, r8
                mov     eax, [rcx]
                mov     [rcx], eax
                test    bl, 7
                jnz     loc_140217766
                lea     rax, [rbx+18h]
                cmp     rax, r8
                ja      short loc_1402166D0
                cmp     rax, rbx
                jnb     short loc_1402166DB

loc_1402166D0:                          ; CODE XREF: sub_140216560+169↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1402166DB:                          ; CODE XREF: sub_140216560+16E↑j
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+228h+var_160], xmm0
                movsd   xmm1, qword ptr [rbx+10h]
                movsd   [rsp+228h+var_150], xmm1
                jmp     short loc_140216738
;   } // starts at 140216688
; ---------------------------------------------------------------------------

loc_1402166F6:                          ; DATA XREF: .rdata:000000014004C9FC↑o
                                        ; .rdata:000000014004CA1C↑o
;   __except(loc_140418630) // owned by 140216688
;   __except(loc_140418630) // owned by 140217766
                mov     r14d, eax
                xor     r12d, r12d
                movzx   esi, [rsp+228h+var_1E7]
                mov     [rsp+228h+var_1E8], sil
                mov     rdi, [rsp+228h+var_188]
                mov     rax, [rsp+228h+var_198]
                mov     [rsp+228h+var_138], rax
                mov     r15d, dword ptr [rsp+228h+var_1E0]
                mov     [rsp+228h+var_1D8], r15d
                mov     rax, [rsp+228h+var_1A8]
                mov     [rsp+228h+var_180], rax

loc_140216738:                          ; CODE XREF: sub_140216560+194↑j
                test    r14d, r14d
                jns     short loc_140216763
                mov     dword ptr [rsp+228h+var_150+4], r12d
                jmp     loc_1402176CE
; ---------------------------------------------------------------------------

loc_14021674A:                          ; CODE XREF: sub_140216560+122↑j
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+228h+var_160], xmm0
                movsd   xmm1, qword ptr [rbx+10h]
                movsd   [rsp+228h+var_150], xmm1

loc_140216763:                          ; CODE XREF: sub_140216560+1DB↑j
                mov     r8, cs:qword_140CFB168
                mov     [rsp+228h+var_1A0], r12
                mov     [rsp+228h+var_200], r12
                lea     rax, [rsp+228h+var_1A0]
                mov     [rsp+228h+var_208], rax
                movzx   r9d, sil
                mov     esi, 2
                mov     edx, esi
                mov     rcx, rdi
                call    ObReferenceObjectByHandle
                mov     r14d, eax
                mov     rbx, [rsp+228h+var_1A0]
                mov     [rsp+228h+var_1B8], rbx
                mov     [rsp+228h+var_130], rbx
                test    eax, eax
                js      loc_1402176CE
                cmp     r15d, 10h
                jbe     short loc_1402167FC
                mov     edx, r15d
                shl     rdx, 3
                mov     ecx, 200h
                mov     r8d, 656E6F4Eh
                call    ExAllocatePoolWithTag
                mov     [rsp+228h+var_178], rax
                test    rax, rax
                jnz     short loc_1402167FC
                mov     r15d, 10h
                mov     [rsp+228h+var_1D8], r15d
                lea     rax, [rsp+228h+var_C8]
                mov     [rsp+228h+var_178], rax

loc_1402167FC:                          ; CODE XREF: sub_140216560+25B↑j
                                        ; sub_140216560+27F↑j
                mov     rbx, [rbx+10h]
                mov     qword ptr [rsp+228h+var_1D0+8], rbx
                mov     qword ptr [rsp+228h+var_1D0], r12
                mov     r10, cr8
                mov     cr8, rsi
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140216859
                test    al, 1
                jz      short loc_140216859
                cmp     r10b, 0Fh
                ja      short loc_140216859
                mov     rax, gs:20h
                mov     r9, [rax+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, r10b
                inc     ecx
                mov     r13, 0FFFFFFFFFFFFFFFFh
                mov     rdx, r13
                shl     rdx, cl
                and     edx, 4
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     short loc_140216860
; ---------------------------------------------------------------------------

loc_140216859:                          ; CODE XREF: sub_140216560+2BA↑j
                                        ; sub_140216560+2BE↑j ...
                mov     r13, 0FFFFFFFFFFFFFFFFh

loc_140216860:                          ; CODE XREF: sub_140216560+2F7↑j
                mov     byte ptr [rsp+228h+var_1C0], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140216890
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140216890
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140216890
                call    sub_1403F2EC4

loc_140216890:                          ; CODE XREF: sub_140216560+318↑j
                                        ; sub_140216560+31E↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_1402168A8
                mov     rdx, rbx
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_14051652C
                jmp     short loc_1402168BF
; ---------------------------------------------------------------------------

loc_1402168A8:                          ; CODE XREF: sub_140216560+337↑j
                lea     rdx, [rsp+228h+var_1D0]
                xchg    rdx, [rbx]
                test    rdx, rdx
                jz      short loc_1402168BF
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_14025FC20

loc_1402168BF:                          ; CODE XREF: sub_140216560+346↑j
                                        ; sub_140216560+353↑j
                mov     rdx, [rsp+228h+var_1B8]
                mov     rcx, [rdx+10h]
                cmp     byte ptr [rcx+21h], 0
                jz      short loc_140216940
                lea     rcx, [rsp+228h+var_1D0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                movzx   ebx, byte ptr [rsp+228h+var_1C0]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140216931
                test    al, 1
                jz      short loc_140216931
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140216931
                cmp     bl, 0Fh
                ja      short loc_140216931
                cmp     al, sil
                jb      short loc_140216931
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rsp+228h+var_1C0]
                inc     ecx
                shl     r13, cl
                movzx   eax, r13w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140216931
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140216931:                          ; CODE XREF: sub_140216560+385↑j
                                        ; sub_140216560+389↑j ...
                mov     cr8, rbx
                mov     r14d, 80h
                jmp     loc_1402176CE
; ---------------------------------------------------------------------------

loc_140216940:                          ; CODE XREF: sub_140216560+36C↑j
                mov     rsi, [rsp+228h+var_1A0]
                lea     rax, [rsi+138h]
                mov     [rsp+228h+var_188], rax
                mov     eax, [rax]
                bt      eax, 9
                jnb     short loc_140216970
                mov     rcx, rsi
                call    sub_1402B72AC
                mov     rdx, [rsp+228h+var_1B8]
                mov     rcx, [rdx+10h]

loc_140216970:                          ; CODE XREF: sub_140216560+3FD↑j
                inc     dword ptr [rcx+1Ch]
                lea     rcx, [rsi+11Ch]
                mov     [rsp+228h+var_198], rcx
                lea     rdi, [rsi+120h]
                mov     [rsp+228h+var_1A8], rdi
                jmp     short loc_140216998
; ---------------------------------------------------------------------------

loc_140216993:                          ; CODE XREF: sub_140216560+ECA↓j
                                        ; sub_140216560+ED8↓j ...
                mov     rdx, [rsp+228h+var_1B8]

loc_140216998:                          ; CODE XREF: sub_140216560+431↑j
                mov     eax, [rdi]
                cmp     [rcx], eax
                jb      loc_14021745D
                mov     rax, [rdx+10h]
                cmp     byte ptr [rax+21h], 0
                jnz     loc_14021745D
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_1402169CD
                mov     rdx, [rsp+228h]
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_1405165EC
                jmp     short loc_140216A0A
; ---------------------------------------------------------------------------

loc_1402169CD:                          ; CODE XREF: sub_140216560+457↑j
                prefetchw byte ptr [rsp+228h+var_1D0]
                mov     rax, qword ptr [rsp+228h+var_1D0]
                test    rax, rax
                jnz     short loc_1402169FF
                mov     rcx, qword ptr [rsp+228h+var_1D0+8]
                lea     rax, [rsp+228h+var_1D0]
                lock cmpxchg [rcx], r12
                lea     rcx, [rsp+228h+var_1D0]
                cmp     rax, rcx
                jz      short loc_140216A0A
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_140313680

loc_1402169FF:                          ; CODE XREF: sub_140216560+47A↑j
                mov     qword ptr [rsp+228h+var_1D0], r12
                lock xor qword ptr [rax+8], 1

loc_140216A0A:                          ; CODE XREF: sub_140216560+46B↑j
                                        ; sub_140216560+493↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140216A35
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140216A35
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140216A35
                call    sub_1403F2EC4

loc_140216A35:                          ; CODE XREF: sub_140216560+4BD↑j
                                        ; sub_140216560+4C3↑j ...
                movzx   ebx, byte ptr [rsp+228h+var_1C0]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140216A90
                test    al, 1
                jz      short loc_140216A90
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140216A90
                cmp     bl, 0Fh
                ja      short loc_140216A90
                cmp     al, 2
                jb      short loc_140216A90
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rsp+228h+var_1C0]
                inc     ecx
                mov     rdx, r13
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140216A90
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140216A90:                          ; CODE XREF: sub_140216560+4E2↑j
                                        ; sub_140216560+4E6↑j ...
                mov     cr8, rbx
                test    byte ptr [rsp+228h+var_150+4], 1
                jz      loc_1402172E6
                mov     r15, qword ptr [rsp+228h+var_160]
                mov     edi, dword ptr [rsp+228h+var_150]
                mov     rcx, qword ptr [rsp+228h+var_160+8]
                xorps   xmm0, xmm0
                movups  [rsp+228h+var_128], xmm0
                movups  [rsp+228h+var_118], xmm0
                movups  [rsp+228h+var_108], xmm0
                movups  [rsp+228h+var_F8], xmm0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                movups  [rsp+228h+var_170], xmm0
                and     edi, 0FFFF0000h
                bt      edi, 11h
                jb      loc_1402172AB
                mov     r8, cs:qword_140CFC548
                mov     [rsp+228h+var_190], r12
                mov     [rsp+228h+var_200], r12
                lea     rax, [rsp+228h+var_190]
                mov     [rsp+228h+var_208], rax
                movzx   r9d, [rsp+228h+var_1E8]
                mov     edx, 1
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1402172AB
                bt      edi, 12h
                jnb     short loc_140216BBF
                mov     rax, [rsp+228h+var_190]
                mov     esi, 1
                lock xadd [rax+194h], esi
                inc     esi
                mov     rbx, [rsp+228h+var_190]
                cmp     qword ptr [rbx+198h], 0
                jz      short loc_140216BC7
                xor     edx, edx
                lea     rcx, [rbx+160h]
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rbx+198h]
                test    rcx, rcx
                jz      short loc_140216B95
                cmp     esi, [rcx+18h]
                jnz     short loc_140216B95
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_140216B95:                          ; CODE XREF: sub_140216560+624↑j
                                        ; sub_140216560+629↑j
                mov     rax, r13
                lock xadd [rbx+160h], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_140216BB3
                lea     rcx, [rbx+160h]
                call    ExfTryToWakePushLock

loc_140216BB3:                          ; CODE XREF: sub_140216560+645↑j
                lea     rcx, [rbx+160h]
                call    sub_140243660

loc_140216BBF:                          ; CODE XREF: sub_140216560+5E1↑j
                mov     rbx, [rsp+228h+var_190]

loc_140216BC7:                          ; CODE XREF: sub_140216560+60A↑j
                mov     qword ptr [rsp+228h+var_128], rbx
                or      edi, 4
                mov     dword ptr [rsp+228h+var_F8], edi
                mov     qword ptr [rsp+228h+var_108], r12
                mov     qword ptr [rsp+228h+var_118+8], r12
                mov     qword ptr [rsp+228h+var_108+8], r12
                movzx   r9d, [rsp+228h+var_1E8]
                xor     r8d, r8d
                mov     rdx, r15
                lea     rcx, [rsp+228h+var_128]
                call    sub_1406142C0
                test    eax, eax
                jns     short loc_140216C20
                mov     rcx, qword ptr [rsp+228h+var_128]
                call    PsDereferenceSiloContext
                jmp     loc_1402172AB
; ---------------------------------------------------------------------------

loc_140216C20:                          ; CODE XREF: sub_140216560+6AC↑j
                mov     rcx, qword ptr [rsp+228h+var_108]
                mov     qword ptr [rsp+228h+var_170], rcx
                mov     rax, qword ptr [rsp+228h+var_128]
                mov     qword ptr [rsp+228h+var_170+8], rax
                test    rcx, rcx
                jz      short loc_140216C89
                cmp     byte ptr [rsp+228h+var_F8+0Ah], 0
                jz      short loc_140216C68
                mov     r9b, 1
                movzx   r8d, r9b
                movzx   edx, byte ptr [rsp+228h+var_F8+0Bh]
                call    sub_14033FFB4
                jmp     loc_1402172AB
; ---------------------------------------------------------------------------

loc_140216C68:                          ; CODE XREF: sub_140216560+6ED↑j
                mov     rcx, [rcx+0F8h]
                mov     dword ptr [rsp+228h+var_208], 1
                mov     edx, 1
                mov     r8d, edx
                call    sub_1402CBA10
                jmp     loc_1402172AB
; ---------------------------------------------------------------------------

loc_140216C89:                          ; CODE XREF: sub_140216560+6E3↑j
                mov     rax, qword ptr [rsp+228h+var_118+8]
                test    rax, rax
                jz      loc_14021725F
                lea     r13, [rax+488h]
                mov     rbx, cr8
                mov     [rsp+228h+var_E0], rbx
                mov     r11d, 2
                mov     cr8, r11
                mov     eax, cs:dword_140CFC660
                lea     rdi, [r11-3]
                test    eax, eax
                jz      short loc_140216CF7
                test    al, 1
                jz      short loc_140216CF7
                cmp     bl, 0Fh
                ja      short loc_140216CF7
                mov     rax, gs:20h
                mov     r9, [rax+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, bl
                inc     ecx
                mov     rdx, rdi
                shl     rdx, cl
                and     edx, 4
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140216CF7:                          ; CODE XREF: sub_140216560+763↑j
                                        ; sub_140216560+767↑j ...
                mov     r10, gs:20h
                mov     [rsp+228h+var_1E0], r10
                xor     r15d, r15d
                mov     [rsp+228h+var_148], r15d
                lock bts dword ptr [r13+0], 7
                jnb     short loc_140216D49
                nop     dword ptr [rax+00000000h]

loc_140216D20:                          ; CODE XREF: sub_140216560+7D3↓j
                                        ; sub_140216560+7DC↓j
                lea     rcx, [rsp+228h+var_148]
                call    sub_1402C8C70
                mov     eax, [r13+0]
                test    al, al
                js      short loc_140216D20
                lock bts dword ptr [r13+0], 7
                jb      short loc_140216D20
                mov     r10, [rsp+228h+var_1E0]
                mov     r11d, 2

loc_140216D49:                          ; CODE XREF: sub_140216560+7B7↑j
                mov     eax, [r13+4]
                lea     ecx, [rax+1]
                cmp     ecx, [r13+18h]
                jg      loc_14021776C
                cmp     ecx, eax
                jl      loc_14021776C
                mov     [r13+4], ecx
                test    eax, eax
                jnz     short loc_140216D76
                lea     rcx, [r13+8]
                mov     rax, [rcx]
                cmp     rax, rcx
                jnz     short loc_140216DB5

loc_140216D76:                          ; CODE XREF: sub_140216560+808↑j
                mov     rbx, [rsp+228h+var_1E0]

loc_140216D7B:                          ; CODE XREF: sub_140216560+9B0↓j
                                        ; sub_140216560+CB6↓j ...
                lock and dword ptr [r13+0], 0FFFFFF7Fh
                mov     rax, [rsp+228h+var_E0]
                mov     byte ptr [rsp+228h+var_208], al
                mov     edx, 1
                mov     r9d, edx
                mov     r8d, edx
                mov     rcx, rbx
                call    sub_14023E110
                xor     r12d, r12d
                lea     r13, [r12-1]
                jmp     loc_1402172AB
; ---------------------------------------------------------------------------

loc_140216DB0:                          ; CODE XREF: sub_140216560+CF4↓j
                mov     r10, [rsp+228h+var_1E0]

loc_140216DB5:                          ; CODE XREF: sub_140216560+814↑j
                mov     r12, rax
                mov     rax, [rax]
                mov     [rsp+228h+var_E8], rax
                mov     rcx, [r12+8]
                cmp     [rax+8], r12
                jnz     loc_140217456
                cmp     [rcx], r12
                jnz     loc_140217456
                mov     [rcx], rax
                mov     [rax+8], rcx
                movzx   eax, byte ptr [r12+10h]
                cmp     al, 1
                jnz     loc_1402170F1
                movzx   r14d, word ptr [r12+12h]
                mov     rsi, [r12+18h]
                xor     dil, dil
                mov     rbx, gs:20h
                mov     [rsp+228h+var_144], r15d

loc_140216E0F:                          ; CODE XREF: sub_140216560+918↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140216E34
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140216E34
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140216E34
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_140216E34:                          ; CODE XREF: sub_140216560+8B9↑j
                                        ; sub_140216560+8BF↑j ...
                lock bts qword ptr [rsi+40h], 0
                jnb     short loc_140216E7A
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140216E62
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140216E62
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140216E62
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_140216E62:                          ; CODE XREF: sub_140216560+8E7↑j
                                        ; sub_140216560+8ED↑j ...
                lea     rcx, [rsp+228h+var_144]
                call    sub_1402C8C70
                mov     rax, [rsi+40h]
                test    rax, rax
                jnz     short loc_140216E62
                jmp     short loc_140216E0F
; ---------------------------------------------------------------------------

loc_140216E7A:                          ; CODE XREF: sub_140216560+8DB↑j
                movzx   eax, byte ptr [rsi+184h]
                cmp     al, 5
                jnz     short loc_140216EC1
                movzx   eax, byte ptr [rsi+70h]
                mov     ecx, eax
                and     ecx, 7
                cmp     ecx, 1
                jz      loc_140216F3B
                cmp     ecx, 4
                jz      loc_140216F3B
                test    ecx, ecx
                jnz     short loc_140216F1B
                and     al, 0FAh
                or      al, 2
                mov     [rsi+70h], al
                mov     [rsi+0C8h], r14
                mov     [rsi+3D0h], r15
                mov     dil, 1
                mov     [r12+11h], cl

loc_140216EC1:                          ; CODE XREF: sub_140216560+923↑j
                                        ; sub_140216560+9C7↓j
                mov     rbx, [rsp+228h+var_1E0]

loc_140216EC6:                          ; CODE XREF: sub_140216560+9D1↓j
                                        ; sub_140216560+9D9↓j ...
                mov     [rsi+40h], r15
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140216EF5
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140216EF5
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140216EF5
                call    sub_1403F2EC4

loc_140216EF5:                          ; CODE XREF: sub_140216560+97D↑j
                                        ; sub_140216560+983↑j ...
                movzx   eax, byte ptr [r12+11h]
                inc     al
                mov     [r12+11h], al
                test    dil, dil
                jz      loc_14021723A
                sub     dword ptr [r13+4], 1
                jz      loc_140216D7B
                jmp     loc_14021723A
; ---------------------------------------------------------------------------

loc_140216F1B:                          ; CODE XREF: sub_140216560+942↑j
                cmp     ecx, 5
                jnz     short loc_140216F29
                and     al, 0FEh
                or      al, 6
                mov     [rsi+70h], al
                jmp     short loc_140216EC1
; ---------------------------------------------------------------------------

loc_140216F29:                          ; CODE XREF: sub_140216560+9BE↑j
                mov     rbx, [rsp+228h+var_1E0]
                cmp     ecx, 3
                jnz     short loc_140216EC6
                mov     byte ptr [r12+11h], 2
                jmp     short loc_140216EC6
; ---------------------------------------------------------------------------

loc_140216F3B:                          ; CODE XREF: sub_140216560+931↑j
                                        ; sub_140216560+93A↑j
                mov     rcx, [rsi+0E8h]
                test    rcx, rcx
                jz      short loc_140216F6E
                movzx   eax, byte ptr [rcx]
                and     al, 7Fh
                cmp     al, 15h
                jnz     short loc_140216F6A
                and     dword ptr [rsi+21Ch], 0FFh
                mov     eax, [rsi+21Ch]
                lock inc dword ptr [rcx+rax*4+218h]
                jmp     short loc_140216F6E
; ---------------------------------------------------------------------------

loc_140216F6A:                          ; CODE XREF: sub_140216560+9EE↑j
                lock inc dword ptr [rcx+28h]

loc_140216F6E:                          ; CODE XREF: sub_140216560+9E5↑j
                                        ; sub_140216560+A08↑j
                mov     rdi, [rsi+2C8h]
                test    rdi, rdi
                jz      loc_14021707A
                mov     rbx, gs:20h
                mov     [rsp+228h+var_140], r15d

loc_140216F8F:                          ; CODE XREF: sub_140216560+AA9↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140216FB4
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140216FB4
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140216FB4
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_140216FB4:                          ; CODE XREF: sub_140216560+A39↑j
                                        ; sub_140216560+A3F↑j ...
                lock bts qword ptr [rdi+7C10h], 0
                jnb     short loc_14021700B
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140216FF0
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140216FF0
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140216FF0
                mov     rcx, rbx
                call    sub_1403F2EC4
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140216FF0:                          ; CODE XREF: sub_140216560+A6A↑j
                                        ; sub_140216560+A70↑j ...
                lea     rcx, [rsp+228h+var_140]
                call    sub_1402C8C70
                mov     rax, [rdi+7C10h]
                test    rax, rax
                jnz     short loc_140216FF0
                jmp     short loc_140216F8F
; ---------------------------------------------------------------------------

loc_14021700B:                          ; CODE XREF: sub_140216560+A5E↑j
                mov     rax, [rsi+2C8h]
                test    rax, rax
                jz      short loc_140217046
                lea     rax, [rsi+0D8h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_140217456
                cmp     [rcx], rax
                jnz     loc_140217456
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     [rsi+2C8h], r15

loc_140217046:                          ; CODE XREF: sub_140216560+AB5↑j
                lock and qword ptr [rdi+7C10h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14021707A
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14021707A
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14021707A
                call    sub_1403F2EC4

loc_14021707A:                          ; CODE XREF: sub_140216560+A18↑j
                                        ; sub_140216560+B02↑j ...
                movzx   eax, byte ptr [rsi+184h]
                cmp     al, 1
                jnz     short loc_140217089
                or      dword ptr [rsi+74h], 2

loc_140217089:                          ; CODE XREF: sub_140216560+B23↑j
                cmp     al, 5
                jnz     short loc_1402170B7
                mov     eax, ds:0FFFFF78000000320h
                sub     eax, [rsi+1B4h]
                mov     ecx, eax
                cmp     byte ptr [rsi+187h], 0
                jnz     short loc_1402170B0
                add     [rsi+3E0h], rcx
                jmp     short loc_1402170B7
; ---------------------------------------------------------------------------

loc_1402170B0:                          ; CODE XREF: sub_140216560+B45↑j
                add     [rsi+3E8h], rcx

loc_1402170B7:                          ; CODE XREF: sub_140216560+B2B↑j
                                        ; sub_140216560+B4E↑j
                mov     byte ptr [rsi+184h], 7
                lea     rcx, [rsi+0D8h]
                mov     rbx, [rsp+228h+var_1E0]
                mov     rax, [rbx+2D08h]
                mov     [rcx], rax
                mov     [rbx+2D08h], rcx
                mov     [rsi+0C8h], r14
                mov     [rsi+3D0h], r15
                mov     dil, 1
                jmp     loc_140216EC6
; ---------------------------------------------------------------------------

loc_1402170F1:                          ; CODE XREF: sub_140216560+88A↑j
                cmp     al, 2
                jnz     loc_140217221
                mov     byte ptr [r12+11h], 5
                mov     rbx, [r12+18h]
                mov     [r12], r15
                lea     rsi, [rbx+8]
                xor     r15b, r15b
                mov     rcx, cr8
                mov     cr8, r11
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140217153
                test    al, 1
                jz      short loc_140217153
                cmp     cl, 0Fh
                ja      short loc_140217153
                mov     rax, gs:20h
                mov     r9, [rax+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, cl
                inc     ecx
                mov     rdx, rdi
                shl     rdx, cl
                and     edx, 4
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140217153:                          ; CODE XREF: sub_140216560+BBF↑j
                                        ; sub_140216560+BC3↑j ...
                mov     r14, gs:20h
                mov     rdi, [r14+8]
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jz      short loc_140217183
                mov     rcx, rdi
                call    sub_1405131B4
                movzx   r8d, al
                mov     rdx, r12
                mov     rcx, rdi
                call    sub_1405A7A60

loc_140217183:                          ; CODE XREF: sub_140216560+C0A↑j
                mov     rcx, rbx
                call    sub_1402AF4F0
                cmp     [rsi], rsi
                jz      short loc_1402171BF
                mov     eax, [rbx+28h]
                cmp     eax, [rbx+2Ch]
                jnb     short loc_1402171BF
                mov     rax, [rdi+0E8h]
                cmp     rax, rbx
                jnz     short loc_1402171AD
                cmp     byte ptr [rdi+283h], 0Fh
                jz      short loc_1402171BF

loc_1402171AD:                          ; CODE XREF: sub_140216560+C42↑j
                mov     r8, r12
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_1402AF540
                movzx   r15d, al

loc_1402171BF:                          ; CODE XREF: sub_140216560+C2E↑j
                                        ; sub_140216560+C36↑j ...
                test    r15b, r15b
                jnz     short loc_140217205
                mov     r8d, [rbx+4]
                lea     eax, [r8+1]
                mov     [rbx+4], eax
                lea     rax, [rbx+18h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_140217456
                mov     [r12], rax
                mov     [r12+8], rdx
                mov     [rdx], r12
                mov     [rax+8], r12
                test    r8d, r8d
                jnz     short loc_140217205
                cmp     [rsi], rsi
                jz      short loc_140217205
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_1402C2EC0

loc_140217205:                          ; CODE XREF: sub_140216560+C62↑j
                                        ; sub_140216560+C93↑j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh
                sub     dword ptr [r13+4], 1
                mov     rbx, [rsp+228h+var_1E0]
                jz      loc_140216D7B
                xor     r15d, r15d
                jmp     short loc_14021723A
; ---------------------------------------------------------------------------

loc_140217221:                          ; CODE XREF: sub_140216560+B93↑j
                xor     r9d, r9d
                mov     r8d, 100h
                mov     rdx, r12
                mov     rcx, r10
                call    sub_14023CD30
                mov     rbx, [rsp+228h+var_1E0]

loc_14021723A:                          ; CODE XREF: sub_140216560+9A5↑j
                                        ; sub_140216560+9B6↑j ...
                mov     rax, [rsp+228h+var_E8]
                lea     rcx, [r13+8]
                cmp     rax, rcx
                mov     rdi, 0FFFFFFFFFFFFFFFFh
                lea     r11d, [rdi+3]
                jnz     loc_140216DB0
                jmp     loc_140216D7B
; ---------------------------------------------------------------------------

loc_14021725F:                          ; CODE XREF: sub_140216560+734↑j
                test    byte ptr [rsp+228h+var_108+8], 1
                jz      short loc_1402172AB
                mov     rcx, qword ptr [rsp+228h+var_108+8]
                test    rcx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_1402172A3
                and     rcx, 0FFFFFFFFFFFFFFFCh
                mov     r8b, 1
                xor     edx, edx
                call    KeSetEvent
                test    byte ptr [rsp+228h+var_108+8], 2
                jz      short loc_1402172A3
                mov     rcx, qword ptr [rsp+228h+var_108+8]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                call    PsDereferenceSiloContext

loc_1402172A3:                          ; CODE XREF: sub_140216560+D18↑j
                                        ; sub_140216560+D30↑j
                mov     qword ptr [rsp+228h+var_108+8], r12

loc_1402172AB:                          ; CODE XREF: sub_140216560+59E↑j
                                        ; sub_140216560+5D7↑j ...
                mov     rcx, gs:188h
                add     word ptr [rcx+1E4h], 1
                jnz     short loc_1402172D9
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jz      short loc_1402172D9
                cmp     word ptr [rcx+1E6h], 0
                jnz     short loc_1402172D9
                call    KiCheckForKernelApcDelivery

loc_1402172D9:                          ; CODE XREF: sub_140216560+D5C↑j
                                        ; sub_140216560+D68↑j ...
                mov     rdi, [rsp+228h+var_1A8]
                mov     r15d, [rsp+228h+var_1D8]

loc_1402172E6:                          ; CODE XREF: sub_140216560+53C↑j
                mov     rbx, [rsp+228h+var_1B8]
                mov     rcx, [rbx+10h]
                mov     byte ptr [rsp+228h+var_1F0], 1
                mov     [rsp+228h+var_1F8], r12
                movzx   eax, [rsp+228h+var_1E8]
                mov     byte ptr [rsp+228h+var_200], al
                lea     rax, [rsp+228h+var_1B0]
                mov     [rsp+228h+var_208], rax
                mov     r9d, r15d
                mov     r8, [rsp+228h+var_178]
                mov     rdx, [rsp+228h+var_138]
                mov     rcx, [rcx+8]
                call    sub_1402177E0
                mov     r14d, eax
                test    byte ptr [rsp+228h+var_150+4], 1
                jz      short loc_14021734A
                lea     rcx, [rsp+228h+var_170]
                call    sub_1406EB370
                and     dword ptr [rsp+228h+var_150+4], 0FFFFFFFEh

loc_14021734A:                          ; CODE XREF: sub_140216560+DD3↑j
                mov     rbx, [rbx+10h]
                mov     qword ptr [rsp+228h+var_1D0+8], rbx
                mov     qword ptr [rsp+228h+var_1D0], r12
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402173A3
                test    al, 1
                jz      short loc_1402173A3
                cmp     r10b, 0Fh
                ja      short loc_1402173A3
                mov     rax, gs:20h
                mov     r9, [rax+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, r10b
                inc     ecx
                mov     rdx, r13
                shl     rdx, cl
                and     edx, 4
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1402173A3:                          ; CODE XREF: sub_140216560+E0D↑j
                                        ; sub_140216560+E11↑j ...
                mov     byte ptr [rsp+228h+var_1C0], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_1402173D3
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_1402173D3
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_1402173D3
                call    sub_1403F2EC4

loc_1402173D3:                          ; CODE XREF: sub_140216560+E5B↑j
                                        ; sub_140216560+E61↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_1402173EB
                mov     rdx, rbx
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_14051652C
                jmp     short loc_140217402
; ---------------------------------------------------------------------------

loc_1402173EB:                          ; CODE XREF: sub_140216560+E7A↑j
                lea     rdx, [rsp+228h+var_1D0]
                xchg    rdx, [rbx]
                test    rdx, rdx
                jz      short loc_140217402
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_14025FC20

loc_140217402:                          ; CODE XREF: sub_140216560+E89↑j
                                        ; sub_140216560+E96↑j
                mov     rsi, [rsp+228h+var_1A0]
                cmp     r14d, 102h
                jnz     short loc_140217463
                mov     edx, 1
                mov     rcx, rsi
                call    sub_1403536B0
                test    al, al
                mov     rcx, [rsp+228h+var_198]
                jnz     loc_140216993
                mov     eax, [rsi+118h]
                cmp     [rdi], eax
                jbe     loc_140216993
                mov     rax, [rsp+228h+var_D8]
                add     rax, 4B0h
                cmp     [rax], rax
                jz      short loc_140217463
                jmp     loc_140216993
; ---------------------------------------------------------------------------

loc_140217456:                          ; CODE XREF: sub_140216560+86C↑j
                                        ; sub_140216560+875↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14021745D:                          ; CODE XREF: sub_140216560+43C↑j
                                        ; sub_140216560+44A↑j
                mov     r14d, 102h

loc_140217463:                          ; CODE XREF: sub_140216560+EB1↑j
                                        ; sub_140216560+EEF↑j
                mov     rax, [rsp+228h+var_1B8]
                mov     rax, [rax+10h]
                dec     dword ptr [rax+1Ch]
                cmp     r14d, 102h
                jnz     short loc_140217495
                dec     dword ptr [rdi]
                dec     dword ptr [rsi+124h]
                mov     rcx, rsi
                call    sub_140351B98
                mov     rdi, [rsp+228h+var_188]
                jmp     loc_14021752E
; ---------------------------------------------------------------------------

loc_140217495:                          ; CODE XREF: sub_140216560+F16↑j
                mov     rdi, [rsp+228h+var_188]
                mov     eax, [rdi]
                and     al, 7
                cmp     al, 4
                jz      loc_14021752E
                mov     r15, gs:188h
                mov     ecx, r12d
                mov     rsi, [rsp+228h+var_1A0]
                lea     rbx, [rsi+48h]
                mov     rax, rbx

loc_1402174C4:                          ; CODE XREF: sub_140216560+F72↓j
                cmp     [rax], r15
                jz      short loc_14021752E
                inc     ecx
                add     rax, 8
                cmp     ecx, 4
                jb      short loc_1402174C4
                mov     edx, 746C6644h
                mov     rcx, r15
                call    ObfReferenceObjectWithTag
                mov     eax, r12d

loc_1402174E4:                          ; CODE XREF: sub_140216560+F93↓j
                cmp     qword ptr [rbx], 0
                jz      short loc_140217529
                inc     eax
                add     rbx, 8
                cmp     eax, 4
                jb      short loc_1402174E4
                mov     edi, [rdi]
                and     edi, 7
                lea     rbx, [rsi+rdi*8]
                mov     rcx, [rbx+48h]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                mov     [rbx+48h], r15
                lea     ecx, [rdi+1]
                and     ecx, 3
                mov     rdi, [rsp+228h+var_188]
                mov     eax, [rdi]
                and     eax, 0FFFFFFF8h
                or      ecx, eax
                mov     [rdi], ecx
                jmp     short loc_14021752E
; ---------------------------------------------------------------------------

loc_140217529:                          ; CODE XREF: sub_140216560+F88↑j
                mov     [rsi+rax*8+48h], r15

loc_14021752E:                          ; CODE XREF: sub_140216560+F30↑j
                                        ; sub_140216560+F43↑j ...
                mov     rax, [rsp+228h+var_1B8]
                mov     rbx, [rax+10h]
                mov     rax, [rsp+228h+var_198]
                mov     eax, [rax]
                mov     rcx, [rsp+228h+var_1A8]
                cmp     [rcx], eax
                jnb     short loc_14021759E
                cmp     dword ptr [rbx+1Ch], 0
                jnz     short loc_14021759E
                cmp     dword ptr [rsi+134h], 0
                jz      short loc_1402175BB
                mov     edx, [rdi]
                bts     edx, 9
                mov     [rdi], edx
                mov     rax, [rbx+8]
                cmp     dword ptr [rax+4], 0
                jnz     short loc_1402175BB
                bt      edx, 0Ah
                jb      short loc_14021759E
                bts     edx, 0Ah
                mov     [rdi], edx
                mov     edx, 746C6644h
                mov     rcx, rsi
                call    ObfReferenceObjectWithTag
                lea     r8, [rsi+208h]
                lea     rdx, unk_140C16600
                mov     rcx, [rbx+8]
                call    sub_1402B75B4

loc_14021759E:                          ; CODE XREF: sub_140216560+FEB↑j
                                        ; sub_140216560+FF1↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_1402175D0
                mov     rdx, [rsp+228h]
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_1405165EC
                jmp     short loc_14021760D
; ---------------------------------------------------------------------------

loc_1402175BB:                          ; CODE XREF: sub_140216560+FFA↑j
                                        ; sub_140216560+100C↑j
                xor     r8d, r8d
                lea     rdx, [rsp+228h+var_1D0]
                mov     rcx, rsi
                call    sub_1402C2AA0
                jmp     loc_140217694
; ---------------------------------------------------------------------------

loc_1402175D0:                          ; CODE XREF: sub_140216560+1045↑j
                prefetchw byte ptr [rsp+228h+var_1D0]
                mov     rax, qword ptr [rsp+228h+var_1D0]
                test    rax, rax
                jnz     short loc_140217602
                mov     rcx, qword ptr [rsp+228h+var_1D0+8]
                lea     rax, [rsp+228h+var_1D0]
                lock cmpxchg [rcx], r12
                lea     rcx, [rsp+228h+var_1D0]
                cmp     rax, rcx
                jz      short loc_14021760D
                lea     rcx, [rsp+228h+var_1D0]
                call    sub_140313680

loc_140217602:                          ; CODE XREF: sub_140216560+107D↑j
                mov     qword ptr [rsp+228h+var_1D0], r12
                lock xor qword ptr [rax+8], 1

loc_14021760D:                          ; CODE XREF: sub_140216560+1059↑j
                                        ; sub_140216560+1096↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140217638
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140217638
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140217638
                call    sub_1403F2EC4

loc_140217638:                          ; CODE XREF: sub_140216560+10C0↑j
                                        ; sub_140216560+10C6↑j ...
                movzx   ebx, byte ptr [rsp+228h+var_1C0]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140217690
                test    al, 1
                jz      short loc_140217690
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140217690
                cmp     bl, 0Fh
                ja      short loc_140217690
                cmp     al, 2
                jb      short loc_140217690
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rsp+228h+var_1C0]
                inc     ecx
                shl     r13, cl
                movzx   eax, r13w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140217690
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140217690:                          ; CODE XREF: sub_140216560+10E5↑j
                                        ; sub_140216560+10E9↑j ...
                mov     cr8, rbx

loc_140217694:                          ; CODE XREF: sub_140216560+106B↑j
                test    r14d, r14d
                jnz     short loc_1402176CE
                cmp     [rsp+228h+var_1E8], r14b
                jz      short loc_1402176B8

loc_1402176A0:                          ; DATA XREF: .rdata:000000014004CA0C↑o
;   __try { // __except at loc_1402176B0
                mov     eax, [rsp+228h+var_1B0]
                mov     rcx, [rsp+228h+var_180]
                mov     [rcx], eax
                jmp     short loc_1402176CE
;   } // starts at 1402176A0
; ---------------------------------------------------------------------------

loc_1402176B0:                          ; DATA XREF: .rdata:000000014004CA0C↑o
;   __except(1) // owned by 1402176A0
                mov     r14d, eax
                xor     r12d, r12d
                jmp     short loc_1402176CE
; ---------------------------------------------------------------------------

loc_1402176B8:                          ; CODE XREF: sub_140216560+113E↑j
                mov     eax, [rsp+228h+var_1B0]
                mov     rcx, [rsp+228h+var_180]
                mov     [rcx], eax
                jmp     short loc_1402176CE
; ---------------------------------------------------------------------------

loc_1402176C8:                          ; CODE XREF: sub_140216560+119↑j
                mov     r14d, 0C000000Dh

loc_1402176CE:                          ; CODE XREF: sub_140216560+1E5↑j
                                        ; sub_140216560+251↑j ...
                lea     rcx, [rsp+228h+var_C8]
                mov     rax, [rsp+228h+var_178]
                cmp     rax, rcx
                jz      short loc_1402176EB
                mov     rcx, rax
                call    sub_14023C050

loc_1402176EB:                          ; CODE XREF: sub_140216560+1181↑j
                mov     rcx, [rsp+228h+var_130]
                test    rcx, rcx
                jz      short loc_140217702
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag

loc_140217702:                          ; CODE XREF: sub_140216560+1196↑j
                test    byte ptr [rsp+228h+var_150+4], 1
                jz      short loc_14021773F
                mov     [rsp+228h+var_1F0], r12
                mov     [rsp+228h+var_1F8], r12
                mov     [rsp+228h+var_200], r12
                mov     [rsp+228h+var_208], r12
                xor     r9d, r9d
                mov     r8, qword ptr [rsp+228h+var_160]
                mov     edx, dword ptr [rsp+228h+var_150]
                mov     rcx, qword ptr [rsp+228h+var_160+8]
                call    sub_140617520

loc_14021773F:                          ; CODE XREF: sub_140216560+11AA↑j
                mov     eax, r14d
                mov     rcx, [rsp+228h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1F0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140217766:                          ; CODE XREF: sub_140216560+15C↑j
                                        ; DATA XREF: .rdata:000000014004CA1C↑o
;   __try { // __except at loc_1402166F6
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4
;   } // starts at 140217766

loc_14021776C:                          ; CODE XREF: sub_140216560+7F4↑j
                                        ; sub_140216560+7FC↑j
                                        ; DATA XREF: ...
                mov     rcx, r13
                call    sub_140328240
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402177C4
                test    al, 1
                jz      short loc_1402177C4
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1402177C4
                cmp     bl, 0Fh
                ja      short loc_1402177C4
                cmp     al, 2
                jb      short loc_1402177C4
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, bl
                inc     ecx
                shl     rdi, cl
                movzx   eax, di
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1402177C4
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1402177C4:                          ; CODE XREF: sub_140216560+121C↑j
                                        ; sub_140216560+1220↑j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     ecx, 0C0000047h
                call    RtlRaiseStatus
sub_140216560   endp

; ---------------------------------------------------------------------------
                align 2
; } // starts at 140216560
algn_1402177D6:                         ; DATA XREF: .pdata:00000001400CA320↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402177E0   proc near               ; CODE XREF: sub_140216560+DC3↑p
                                        ; sub_140613C60+F9↓p ...

var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = xmmword ptr -0D8h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h

; FUNCTION CHUNK AT 0000000140426086 SIZE 000001F0 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+128h+var_48], rax
                mov     r10d, r9d
                mov     rbx, r8
                mov     [rsp+128h+var_C0], rbx
                mov     r13, rdx
                mov     [rsp+128h+var_E8], rdx
                mov     [rsp+128h+var_A8], rcx
                mov     [rsp+128h+var_98], rcx
                mov     [rsp+128h+var_90], rdx
                mov     [rsp+128h+var_88], rbx
                mov     rax, [rsp+128h+arg_20]
                mov     [rsp+128h+var_80], rax
                mov     r9, [rsp+128h+arg_30]
                xorps   xmm0, xmm0
                movups  [rsp+128h+var_D8], xmm0
                mov     [rsp+128h+var_100], r10d
                mov     [rsp+128h+var_108], rbx
                movzx   r8d, [rsp+128h+arg_38]
                movzx   edx, [rsp+128h+arg_28]
                call    KeRemoveQueueEx
                mov     r14d, eax
                mov     [rsp+128h+var_C8], eax
                xor     eax, eax
                mov     [rsp+128h+var_EC], eax
                xor     edi, edi
                lea     ecx, [rax+2]

loc_14021788A:                          ; CODE XREF: sub_1402177E0+18C↓j
                mov     [rsp+128h+var_F0], edi
                cmp     edi, r14d
                jnb     loc_140217971
                mov     esi, edi
                mov     rbx, [rbx+rdi*8]
                lea     rax, [rbx-101h]
                cmp     rax, 1
                jbe     loc_140217B7D
                cmp     rbx, 0C0h
                jz      loc_140217B7D
                cmp     rbx, 80h
                jz      loc_140217B7D
                movzx   eax, byte ptr [rbx+10h]
                test    al, al
                jz      loc_140217AC8
                cmp     al, 2
                jz      loc_1402179C8
                mov     r15, [rbx+20h]
                mov     r12, [rbx+18h]
                mov     eax, [rbx+28h]
                mov     dword ptr [rsp+128h+var_D8], eax
                mov     rax, [rbx+30h]
                mov     qword ptr [rsp+128h+var_D8+8], rax
                mov     rcx, rbx
                call    sub_140613E40

loc_1402178FC:                          ; CODE XREF: sub_1402177E0+2E3↓j
                                        ; sub_1402177E0+398↓j ...
                cmp     [rsp+128h+arg_28], 0
                jz      loc_1402179A4

loc_14021790A:                          ; DATA XREF: .rdata:000000014004CAC4↑o
;   __try { // __except at loc_14021792E
                shl     rsi, 5
                mov     [rsi+r13], r12
                mov     [rsi+r13+8], r15
                movups  xmm0, [rsp+128h+var_D8]
                movups  xmmword ptr [rsi+r13+10h], xmm0
                mov     rbx, [rsp+128h+var_C0]
                mov     ecx, 2
                jmp     short loc_14021796A
;   } // starts at 14021790A
; ---------------------------------------------------------------------------

loc_14021792E:                          ; DATA XREF: .rdata:000000014004CAC4↑o
;   __except(1) // owned by 14021790A
                mov     [rsp+128h+var_EC], eax
                mov     ecx, 2
                mov     r14d, [rsp+128h+var_C8]
                mov     edi, [rsp+128h+var_F0]
                mov     rax, [rsp+128h+var_98]
                mov     [rsp+128h+var_A8], rax
                mov     r13, [rsp+128h+var_90]
                mov     [rsp+128h+var_E8], r13
                mov     rbx, [rsp+128h+var_88]
                mov     [rsp+128h+var_C0], rbx

loc_14021796A:                          ; CODE XREF: sub_1402177E0+14C↑j
                                        ; sub_1402177E0+1E6↓j
                inc     edi
                jmp     loc_14021788A
; ---------------------------------------------------------------------------

loc_140217971:                          ; CODE XREF: sub_1402177E0+B1↑j
                mov     eax, [rsp+128h+var_EC]

loc_140217975:                          ; CODE XREF: sub_1402177E0+39F↓j
                mov     rcx, [rsp+128h+var_80]
                mov     [rcx], r14d
                mov     rcx, [rsp+128h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0F0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402179A4:                          ; CODE XREF: sub_1402177E0+124↑j
                shl     rsi, 5
                mov     [rsi+r13], r12
                mov     [rsi+r13+8], r15
                movups  xmm0, [rsp+128h+var_D8]
                movups  xmmword ptr [rsi+r13+10h], xmm0
                mov     rbx, [rsp+128h+var_C0]
                mov     ecx, 2
                jmp     short loc_14021796A
; ---------------------------------------------------------------------------

loc_1402179C8:                          ; CODE XREF: sub_1402177E0+F6↑j
                mov     r15, [rbx+38h]
                mov     r12, [rbx+30h]
                mov     eax, [rbx+48h]
                mov     dword ptr [rsp+128h+var_D8], eax
                mov     rax, [rbx+40h]
                mov     qword ptr [rsp+128h+var_D8+8], rax
                mov     rax, [rbx+50h]
                mov     [rsp+128h+var_A0], rax
                mov     r11, cr8
                mov     [rsp+128h+var_F8], r11
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042611A

loc_140217A07:                          ; CODE XREF: sub_1402177E0+20E93C↓j
                                        ; sub_1402177E0+20E946↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14042615F
                mov     rdx, gs:20h
                mov     [rsp+128h+var_B8], rdx
                mov     rcx, [rdx+84B8h]
                test    rcx, rcx
                jnz     loc_14042616E

loc_140217A32:                          ; CODE XREF: sub_1402177E0+20E992↓j
                                        ; sub_1402177E0+20E9A1↓j ...
                lock bts qword ptr [rbx+60h], 0
                jb      loc_140217BAE

loc_140217A3F:                          ; CODE XREF: sub_1402177E0+3EC↓j
                mov     byte ptr [rbx+68h], 0
                mov     qword ptr [rbx+58h], 0
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_1404261C5
                lock and qword ptr [rbx+60h], 0

loc_140217A5E:                          ; CODE XREF: sub_1402177E0+20E9FB↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404261E0

loc_140217A77:                          ; CODE XREF: sub_1402177E0+20EA04↓j
                                        ; sub_1402177E0+20EA13↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426208

loc_140217A85:                          ; CODE XREF: sub_1402177E0+20EA2A↓j
                                        ; sub_1402177E0+20EA36↓j ...
                movzx   eax, r11b
                mov     cr8, rax
                mov     edx, 746C6644h
                mov     rcx, [rsp+128h+var_A0]
                call    ObfDereferenceObjectWithTag
                mov     edx, 746C6644h
                mov     rcx, [rsp+128h+var_A8]
                call    ObfDereferenceObjectWithTag
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     r13, [rsp+128h+var_E8]
                jmp     loc_1402178FC
; ---------------------------------------------------------------------------

loc_140217AC8:                          ; CODE XREF: sub_1402177E0+EE↑j
                add     rbx, 0FFFFFFFFFFFFFF58h
                mov     r15, [rbx+60h]
                lea     rcx, [rbx+78h]
                mov     [rsp+128h+var_B8], rcx
                mov     r12, [rcx]
                movups  xmm0, xmmword ptr [rbx+30h]
                movups  [rsp+128h+var_D8], xmm0
                mov     eax, [rbx+10h]
                bt      eax, 0Dh
                jnb     loc_140217B84
                mov     [rsp+128h+var_B0], 0
                mov     [rsp+128h+var_E0], 0
                mov     r13, [rbx+58h]
                and     r13, 0FFFFFFFFFFFFFFF9h
                xorps   xmm0, xmm0
                movups  [rsp+128h+var_78], xmm0
                movups  [rsp+128h+var_68], xmm0
                movups  [rsp+128h+var_58], xmm0
                mov     qword ptr [rbx+60h], 0
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                lea     rax, [rbx+0C0h]
                mov     [rsp+128h+var_F8], rax
                cmp     r13, rdx
                jnz     loc_140426086
                lea     rdx, [rsp+128h+var_E0]
                mov     [rsp+128h+var_108], rdx
                mov     r9, rax
                lea     r8, [rsp+128h+var_E0]
                lea     rdx, [rsp+128h+var_B0]
                call    sub_14023D030
                mov     r13, [rsp+128h+var_E8]
                jmp     loc_1402178FC
; ---------------------------------------------------------------------------

loc_140217B7D:                          ; CODE XREF: sub_1402177E0+C8↑j
                                        ; sub_1402177E0+D5↑j ...
                mov     eax, ebx
                jmp     loc_140217975
; ---------------------------------------------------------------------------

loc_140217B84:                          ; CODE XREF: sub_1402177E0+30F↑j
                bt      eax, 0Fh
                jb      short loc_140217B97

loc_140217B8A:                          ; CODE XREF: sub_1402177E0+3C7↓j
                mov     rcx, rbx
                call    IoFreeIrp
                jmp     loc_1402178FC
; ---------------------------------------------------------------------------

loc_140217B97:                          ; CODE XREF: sub_1402177E0+3A8↑j
                lea     rcx, [rbx+58h]
                mov     edx, 0FFFFFFFFh
                call    sub_14033AC38
                test    eax, eax
                jz      short loc_140217B8A
                jmp     loc_1402178FC
; ---------------------------------------------------------------------------

loc_140217BAE:                          ; CODE XREF: sub_1402177E0+259↑j
                mov     rcx, [rdx+84B8h]
                test    rcx, rcx
                jnz     loc_14042619E

loc_140217BBE:                          ; CODE XREF: sub_1402177E0+20E9C2↓j
                                        ; sub_1402177E0+20E9D1↓j ...
                lea     rcx, [rbx+60h]
                call    sub_140300EA0

loc_140217BC7:                          ; CODE XREF: sub_1402177E0+20E989↓j
                mov     r11, [rsp+128h+var_F8]
                jmp     loc_140217A3F
; } // starts at 1402177E0
sub_1402177E0   endp

; ---------------------------------------------------------------------------
algn_140217BD1:                         ; DATA XREF: .rdata:000000014004CADC↑o
                                        ; .pdata:00000001400CA32C↑o
                align 20h
; Exported entry 1298. KeRemoveQueueEx

; =============== S U B R O U T I N E =======================================



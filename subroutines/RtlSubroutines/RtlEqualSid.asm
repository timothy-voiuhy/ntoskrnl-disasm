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


                public KeRemoveQueueEx
KeRemoveQueueEx proc near               ; CODE XREF: sub_1402177E0+93↑p
                                        ; KeRemoveQueue+22↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140426276 SIZE 000007A9 BYTES

                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rbx, gs:188h
                xor     ebp, ebp
                mov     rdi, rcx
                movsx   r13, dl
                mov     r10, r9
                mov     [rsp+98h+var_48], rbp
                movzx   r12d, r8b
                btr     dword ptr [rbx+74h], 2
                lea     ecx, [rbp+2]
                setb    al
                test    al, al
                jnz     short loc_140217C3E
                mov     r11, cr8
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426276

loc_140217C37:                          ; CODE XREF: KeRemoveQueueEx+20E698↓j
                                        ; KeRemoveQueueEx+20E6A2↓j ...
                mov     [rbx+186h], r11b

loc_140217C3E:                          ; CODE XREF: KeRemoveQueueEx+3F↑j
                                        ; DATA XREF: .rdata:000000014004CB08↑o ...
                mov     [rsp+98h+arg_8], rsi
                mov     rax, 0FFFFF780000003B0h
                mov     rdx, 0FFFFF78000000008h
                mov     r15d, 1
                test    r10, r10
                jz      loc_140217FC6
                cmp     [r10+4], ebp
                jl      loc_14021806F
                mov     rbp, [r10]
                mov     [rsp+98h+arg_18], r15d

loc_140217C7E:                          ; CODE XREF: KeRemoveQueueEx+3EF↓j
                                        ; KeRemoveQueueEx+4AC↓j
                mov     rax, [rbx+0E8h]
                cmp     rax, rdi
                jnz     short loc_140217C9D
                cmp     dword ptr [rdi+4], 0
                jnz     loc_140217EC4

loc_140217C94:                          ; CODE XREF: KeRemoveQueueEx+2EA↓j
                test    r10, r10
                jnz     loc_140217FD4

loc_140217C9D:                          ; CODE XREF: KeRemoveQueueEx+A8↑j
                                        ; KeRemoveQueueEx+3F8↓j ...
                movzx   r10d, byte ptr [rbx+186h]
                mov     [rsp+98h+var_50], r10

loc_140217CAA:                          ; CODE XREF: KeRemoveQueueEx+61F↓j
                mov     r14, [rsp+98h+var_50]
                mov     edi, 2

loc_140217CB4:                          ; CODE XREF: KeRemoveQueueEx+868↓j
                and     dword ptr [rbx+74h], 0FFFFFFEFh
                mov     byte ptr [rbx+70h], 0
                mov     [rbx+187h], r13b
                test    r12b, r12b
                jz      short loc_140217CCC
                or      dword ptr [rbx+74h], 10h

loc_140217CCC:                          ; CODE XREF: KeRemoveQueueEx+E6↑j
                mov     rsi, gs:20h
                mov     [rsp+98h+var_58], 0
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042671B

loc_140217CED:                          ; CODE XREF: KeRemoveQueueEx+803↓j
                                        ; KeRemoveQueueEx+20EB3F↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_1402183B6
                cmp     byte ptr [rbx+0C1h], 0
                jnz     loc_1402183EE

loc_140217D07:                          ; CODE XREF: KeRemoveQueueEx+816↓j
                                        ; KeRemoveQueueEx+81F↓j
                mov     rdi, [rsp+98h+arg_0]
                lea     r14, [rbx+140h]
                test    r12b, r12b
                jz      loc_140218091
                cmp     byte ptr [r13+rbx+72h], 0
                jnz     loc_14042680C
                test    r13b, r13b
                jz      short loc_140217D40
                lea     rax, [rbx+0A8h]
                cmp     [rax], rax
                jnz     loc_140218224

loc_140217D40:                          ; CODE XREF: KeRemoveQueueEx+14E↑j
                cmp     byte ptr [rbx+72h], 0
                jnz     loc_14042681C

loc_140217D4A:                          ; CODE XREF: KeRemoveQueueEx+4B8↓j
                                        ; KeRemoveQueueEx+4C7↓j
                mov     byte ptr [rbx+184h], 5
                mov     byte ptr [rbx+283h], 0Fh
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+1B4h], eax
                mov     qword ptr [rbx+40h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042682A

loc_140217D88:                          ; CODE XREF: KeRemoveQueueEx+20EC4E↓j
                                        ; KeRemoveQueueEx+20EC5D↓j ...
                xor     esi, esi

loc_140217D8A:                          ; CODE XREF: KeRemoveQueueEx+66B↓j
                test    rsi, rsi
                jnz     loc_140218204
                mov     r8, [rbx+0E8h]
                cmp     rdi, r8
                jnz     loc_140218149

loc_140217DA3:                          ; CODE XREF: KeRemoveQueueEx+574↓j
                mov     byte ptr [r14+10h], 3
                mov     r9d, 80h
                mov     byte ptr [r14+11h], 4
                xor     esi, esi
                mov     [r14+12h], r9w
                mov     [r14+20h], rdi
                lock bts dword ptr [rdi], 7
                jb      loc_140218121

loc_140217DC9:                          ; CODE XREF: KeRemoveQueueEx+564↓j
                cmp     dword ptr [rdi+4], 0
                jnz     loc_140218159

loc_140217DD3:                          ; CODE XREF: KeRemoveQueueEx+57F↓j
                                        ; KeRemoveQueueEx+20EC9C↓j
                test    [rdi+1], r15b
                jnz     loc_140426987
                mov     esi, [rsp+98h+arg_18]
                mov     rax, rbp
                cmp     esi, 2
                jz      loc_1402180AC
                test    esi, esi
                jnz     loc_140218382

loc_140217DF8:                          ; CODE XREF: KeRemoveQueueEx+528↓j
                lock dec dword ptr [rdi+28h]
                lea     rax, [rdi+8]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_1404269D5
                mov     [r14], rcx
                mov     [r14+8], rax
                mov     [rcx+8], r14
                mov     [rax], r14
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     r9, rbp
                mov     [rbx+24Bh], r15b
                mov     r8d, esi
                mov     [rsp+98h+var_78], 0
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_140240710
                mov     byte ptr [rbx+283h], 0
                mov     rcx, rax
                cmp     rax, 100h
                jz      loc_1402181D8
                mov     r14, [rsp+98h+arg_20]
                mov     ebp, [rsp+98h+arg_28]
                mov     [r14], rax
                cmp     ebp, r15d
                jbe     short loc_140217E98
                add     rax, 0FFFFFFFFFFFFFEFFh
                cmp     rax, r15
                jbe     short loc_140217E98
                mov     eax, 80h
                cmp     rcx, rax
                jz      short loc_140217E98
                cmp     rcx, 0C0h
                jz      short loc_140217E98
                cmp     dword ptr [rdi+4], 0
                jnz     loc_140218250

loc_140217E98:                          ; CODE XREF: KeRemoveQueueEx+28E↑j
                                        ; KeRemoveQueueEx+299↑j ...
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jnz     loc_140426713

loc_140217EA8:                          ; CODE XREF: KeRemoveQueueEx+639↓j
                                        ; KeRemoveQueueEx+20EE3A↓j
                mov     eax, r15d

loc_140217EAB:                          ; CODE XREF: KeRemoveQueueEx+3E1↓j
                                        ; KeRemoveQueueEx+20EE26↓j
                mov     rsi, [rsp+98h+arg_8]
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_140217EC3:                         ; DATA XREF: .pdata:00000001400CA344↑o
                                        ; .pdata:00000001400CA350↑o
                align 4

loc_140217EC4:                          ; CODE XREF: KeRemoveQueueEx+AE↑j
                                        ; DATA XREF: .pdata:00000001400CA350↑o ...
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                ja      loc_140217C94
                mov     [rsp+98h+var_68], 0
                lock bts dword ptr [rdi], 7
                jb      loc_140218365

loc_140217EE3:                          ; CODE XREF: KeRemoveQueueEx+79A↓j
                cmp     dword ptr [rdi+4], 0
                jz      loc_1402183AA
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                ja      loc_1402183AA
                mov     rdx, [rdi+18h]
                lea     r8, [rdi+18h]
                mov     r9, [rsp+98h+arg_20]
                xor     esi, esi
                mov     r10d, [rsp+98h+arg_28]

loc_140217F13:                          ; CODE XREF: KeRemoveQueueEx+53C↓j
                dec     dword ptr [rdi+4]
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_14042647A
                mov     rcx, [rdx+8]
                cmp     [rax+8], rdx
                jnz     loc_1404269D5
                cmp     [rcx], rdx
                jnz     loc_1404269D5
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     qword ptr [rdx], 0
                mov     [r9+rsi*8], rdx
                inc     esi
                mov     rdx, [r8]
                cmp     rdx, r8
                jnz     loc_140218113

loc_140217F59:                          ; CODE XREF: KeRemoveQueueEx+536↓j
                test    esi, esi
                jz      loc_1402183AA
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     rbp, gs:20h
                movzx   edi, byte ptr [rbx+186h]
                cmp     dil, 2
                jnb     loc_140426435
                cmp     qword ptr [rbp+10h], 0
                mov     r14, [rbp+8]
                jnz     loc_1402182B6
                mov     eax, [r14+74h]
                test    al, 40h
                jnz     loc_140426389

loc_140217F9D:                          ; CODE XREF: KeRemoveQueueEx+780↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404263DA

loc_140217FAB:                          ; CODE XREF: KeRemoveQueueEx+20E7FD↓j
                                        ; KeRemoveQueueEx+20E80B↓j ...
                mov     cr8, rdi

loc_140217FAF:                          ; CODE XREF: KeRemoveQueueEx+20E85A↓j
                                        ; KeRemoveQueueEx+20E869↓j ...
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jnz     loc_140426466

loc_140217FBF:                          ; CODE XREF: KeRemoveQueueEx+5ED↓j
                                        ; KeRemoveQueueEx+20E895↓j
                mov     eax, esi
                jmp     loc_140217EAB
; ---------------------------------------------------------------------------

loc_140217FC6:                          ; CODE XREF: KeRemoveQueueEx+83↑j
                xor     esi, esi
                mov     [rsp+98h+arg_18], esi
                jmp     loc_140217C7E
; ---------------------------------------------------------------------------

loc_140217FD4:                          ; CODE XREF: KeRemoveQueueEx+B7↑j
                cmp     qword ptr [r10], 0
                jnz     loc_140217C9D
                test    [rdi+1], r15b
                jnz     loc_140426498
                test    r12b, r12b
                jnz     loc_1404264AD

loc_140217FF1:                          ; CODE XREF: KeRemoveQueueEx+20E90A↓j
                mov     r9d, r15d
                movzx   r8d, r13b
                movzx   edx, r12b
                mov     rcx, rbx
                call    sub_140342DF0
                movsxd  rcx, eax
                test    eax, eax
                jnz     short loc_140218010
                mov     ecx, 102h

loc_140218010:                          ; CODE XREF: KeRemoveQueueEx+429↑j
                mov     r14, [rsp+98h+arg_20]
                mov     [r14], rcx
                test    r12b, r12b
                jnz     loc_140426547

loc_140218024:                          ; CODE XREF: KeRemoveQueueEx+20E8C8↓j
                                        ; KeRemoveQueueEx+20E970↓j
                mov     rsi, gs:20h
                movzx   edi, byte ptr [rbx+186h]
                cmp     dil, 2
                jnb     loc_1404266E9
                cmp     qword ptr [rsi+10h], 0
                mov     rbp, [rsi+8]
                jnz     loc_14021844D
                mov     eax, [rbp+74h]
                test    al, 40h
                jnz     loc_14042663C

loc_140218058:                          ; CODE XREF: KeRemoveQueueEx+908↓j
                                        ; KeRemoveQueueEx+20EAAC↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426691

loc_140218066:                          ; CODE XREF: KeRemoveQueueEx+20EAB4↓j
                                        ; KeRemoveQueueEx+20EAC2↓j ...
                mov     cr8, rdi
                jmp     loc_140217E98
; ---------------------------------------------------------------------------

loc_14021806F:                          ; CODE XREF: KeRemoveQueueEx+8D↑j
                mov     rax, [rax]
                mov     rbp, [rdx]
                sub     rbp, rax
                mov     [rsp+98h+arg_18], ecx
                mov     rax, [rbx+0F8h]
                add     rax, [r10]
                sub     rbp, rax
                jmp     loc_140217C7E
; ---------------------------------------------------------------------------

loc_140218091:                          ; CODE XREF: KeRemoveQueueEx+139↑j
                test    byte ptr [rbx+0C2h], 2
                jz      loc_140217D4A
                test    r13b, r13b
                jnz     loc_14021822B
                jmp     loc_140217D4A
; ---------------------------------------------------------------------------

loc_1402180AC:                          ; CODE XREF: KeRemoveQueueEx+20A↑j
                mov     rax, 0FFFFF780000003B0h
                mov     rcx, 0FFFFF78000000008h
                mov     rax, [rax]
                mov     rcx, [rcx]
                sub     rcx, [rbx+0F8h]
                mov     edx, [rbx+3B8h]
                sub     rcx, rax
                cmp     byte ptr [rbx+187h], 0
                mov     rax, rbp
                jz      short loc_140218105
                cmp     dword ptr [rbx+1E4h], 0
                jnz     short loc_140218105
                cmp     byte ptr [rbx+186h], 0
                jnz     short loc_140218105
                cmp     byte ptr [rbx+0C0h], 0
                jnz     short loc_140218105
                test    edx, edx
                jnz     loc_140426881

loc_140218105:                          ; CODE XREF: KeRemoveQueueEx+500↑j
                                        ; KeRemoveQueueEx+509↑j ...
                cmp     rcx, rax
                jbe     loc_140217DF8
                jmp     loc_14021838B
; ---------------------------------------------------------------------------

loc_140218113:                          ; CODE XREF: KeRemoveQueueEx+373↑j
                cmp     esi, r10d
                jnb     loc_140217F59
                jmp     loc_140217F13
; ---------------------------------------------------------------------------

loc_140218121:                          ; CODE XREF: KeRemoveQueueEx+1E3↑j
                                        ; KeRemoveQueueEx+555↓j ...
                inc     esi
                test    cs:dword_140CFB240, esi
                jz      loc_14042684E

loc_14021812F:                          ; CODE XREF: KeRemoveQueueEx+20EC76↓j
                                        ; KeRemoveQueueEx+20EC83↓j
                pause

loc_140218131:                          ; CODE XREF: KeRemoveQueueEx+20EC91↓j
                mov     eax, [rdi]
                test    al, al
                js      short loc_140218121
                lock bts dword ptr [rdi], 7
                jb      short loc_140218121
                mov     r9d, 80h
                jmp     loc_140217DC9
; ---------------------------------------------------------------------------

loc_140218149:                          ; CODE XREF: KeRemoveQueueEx+1BD↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14032F424
                jmp     loc_140217DA3
; ---------------------------------------------------------------------------

loc_140218159:                          ; CODE XREF: KeRemoveQueueEx+1ED↑j
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                ja      loc_140217DD3
                mov     r8d, [rsp+98h+arg_28]
                mov     rcx, rdi
                mov     rdx, [rsp+98h+arg_20]
                call    sub_14034EB54
                mov     esi, eax
                test    eax, eax
                jz      loc_140426876
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     r14, [rsp+98h+arg_20]

loc_140218196:                          ; CODE XREF: KeRemoveQueueEx+7C5↓j
                mov     byte ptr [rbx+283h], 0
                mov     rdi, gs:20h
                cmp     qword ptr [rdi+2D08h], 0
                jnz     loc_1404269DC

loc_1402181B4:                          ; CODE XREF: KeRemoveQueueEx+20EE11↓j
                movzx   r8d, r15b
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402D149C
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jz      loc_140217FBF
                jmp     loc_1404269F6
; ---------------------------------------------------------------------------

loc_1402181D8:                          ; CODE XREF: KeRemoveQueueEx+273↑j
                mov     r10, cr8
                mov     [rsp+98h+var_50], r10
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042689C

loc_1402181F8:                          ; CODE XREF: KeRemoveQueueEx+20ECBF↓j
                                        ; KeRemoveQueueEx+20ECC9↓j ...
                mov     [rbx+186h], r10b
                jmp     loc_140217CAA
; ---------------------------------------------------------------------------

loc_140218204:                          ; CODE XREF: KeRemoveQueueEx+1AD↑j
                mov     rcx, [rsp+98h+arg_20]
                mov     [rcx], rsi
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                jz      loc_140217EA8
                jmp     loc_140426A0B
; ---------------------------------------------------------------------------

loc_140218224:                          ; CODE XREF: KeRemoveQueueEx+15A↑j
                or      byte ptr [rbx+0C2h], 2

loc_14021822B:                          ; CODE XREF: KeRemoveQueueEx+4C1↑j
                mov     esi, 0C0h

loc_140218230:                          ; CODE XREF: KeRemoveQueueEx+20EC37↓j
                                        ; KeRemoveQueueEx+20EC45↓j
                mov     rcx, rbx
                call    sub_1403261B0
                mov     rcx, gs:20h
                movzx   edx, byte ptr [rsp+98h+var_50]
                call    sub_1402D1604
                jmp     loc_140217D8A
; ---------------------------------------------------------------------------

loc_140218250:                          ; CODE XREF: KeRemoveQueueEx+2B2↑j
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                mov     r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404268E2

loc_140218272:                          ; CODE XREF: KeRemoveQueueEx+20ED05↓j
                                        ; KeRemoveQueueEx+20ED0F↓j ...
                mov     rcx, rdi
                call    sub_1402AF4F0
                cmp     dword ptr [rdi+4], 0
                jz      short loc_140218294
                lea     r8d, [rbp-1]
                mov     rcx, rdi
                lea     rdx, [r14+8]
                call    sub_14034EB54
                lea     r15d, [rax+1]

loc_140218294:                          ; CODE XREF: KeRemoveQueueEx+69E↑j
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426924

loc_1402182A9:                          ; CODE XREF: KeRemoveQueueEx+20ED46↓j
                                        ; KeRemoveQueueEx+20ED52↓j ...
                movzx   eax, sil
                mov     cr8, rax
                jmp     loc_140217E98
; ---------------------------------------------------------------------------

loc_1402182B6:                          ; CODE XREF: KeRemoveQueueEx+3AB↑j
                xor     edx, edx
                mov     rcx, r14
                call    sub_1402423B0
                mov     r13, gs:20h
                mov     [rsp+98h+var_64], 0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_1404262C0

loc_1402182E1:                          ; CODE XREF: KeRemoveQueueEx+940↓j
                                        ; KeRemoveQueueEx+20E6E4↓j ...
                lock bts qword ptr [rbp+30h], 0
                jb      loc_1402184F3
                mov     r13, [rbp+10h]
                mov     qword ptr [rbp+10h], 0
                cli
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_1402CC660
                sti
                mov     [rbp+8], r13
                movzx   eax, byte ptr [r13+184h]
                cmp     al, r15b
                jz      loc_140426329

loc_14021831F:                          ; CODE XREF: KeRemoveQueueEx+20E76A↓j
                mov     byte ptr [r13+184h], 2
                mov     rdx, r14
                mov     rcx, rbp
                mov     byte ptr [r14+283h], 20h ; ' '
                mov     [r14+186h], dil
                call    sub_1402CE090
                movzx   r8d, dil
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1404058F0
                test    al, al
                jnz     loc_14021852B

loc_140218358:                          ; CODE XREF: KeRemoveQueueEx+96E↓j
                mov     r9, [rsp+98h+arg_20]
                jmp     loc_140217F9D
; ---------------------------------------------------------------------------

loc_140218365:                          ; CODE XREF: KeRemoveQueueEx+2FD↑j
                                        ; KeRemoveQueueEx+793↓j ...
                lea     rcx, [rsp+98h+var_68]
                call    sub_1402C8C70
                mov     eax, [rdi]
                test    al, al
                js      short loc_140218365
                lock bts dword ptr [rdi], 7
                jnb     loc_140217EE3
                jmp     short loc_140218365
; ---------------------------------------------------------------------------

loc_140218382:                          ; CODE XREF: KeRemoveQueueEx+212↑j
                test    rbp, rbp
                jnz     loc_14042688A

loc_14021838B:                          ; CODE XREF: KeRemoveQueueEx+52E↑j
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     r14, [rsp+98h+arg_20]
                mov     ecx, 102h
                mov     [r14], rcx

loc_1402183A2:                          ; CODE XREF: KeRemoveQueueEx+20EDF0↓j
                mov     esi, r15d
                jmp     loc_140218196
; ---------------------------------------------------------------------------

loc_1402183AA:                          ; CODE XREF: KeRemoveQueueEx+307↑j
                                        ; KeRemoveQueueEx+313↑j ...
                lock and dword ptr [rdi], 0FFFFFF7Fh
                jmp     loc_140217C9D
; ---------------------------------------------------------------------------

loc_1402183B6:                          ; CODE XREF: KeRemoveQueueEx+114↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_140426742

loc_1402183C6:                          ; CODE XREF: KeRemoveQueueEx+7F7↓j
                                        ; KeRemoveQueueEx+20EB66↓j ...
                lea     rcx, [rsp+98h+var_58]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_1402183C6
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      loc_140217CED
                jmp     loc_140426769
; ---------------------------------------------------------------------------

loc_1402183EE:                          ; CODE XREF: KeRemoveQueueEx+121↑j
                cmp     word ptr [rbx+1E6h], 0
                jnz     loc_140217D07
                cmp     r14b, r15b
                jnb     loc_140217D07
                mov     rcx, rbx
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140426784

loc_14021841B:                          ; CODE XREF: KeRemoveQueueEx+20EBA7↓j
                                        ; KeRemoveQueueEx+20EBB6↓j ...
                mov     cr8, r15
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     rcx, cr8
                mov     cr8, rdi
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404267C8

loc_140218441:                          ; CODE XREF: KeRemoveQueueEx+20EBEB↓j
                                        ; KeRemoveQueueEx+20EBF4↓j ...
                mov     [rbx+186h], r14b
                jmp     loc_140217CB4
; ---------------------------------------------------------------------------

loc_14021844D:                          ; CODE XREF: KeRemoveQueueEx+467↑j
                xor     edx, edx
                mov     rcx, rbp
                call    sub_1402423B0
                mov     r13, gs:20h
                mov     [rsp+98h+var_5C], 0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_140426555

loc_140218478:                          ; CODE XREF: KeRemoveQueueEx+20E979↓j
                                        ; KeRemoveQueueEx+20E988↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      loc_14042657C
                mov     r13, [rsi+10h]
                mov     qword ptr [rsi+10h], 0
                cli
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CC660
                sti
                mov     [rsi+8], r13
                movzx   eax, byte ptr [r13+184h]
                cmp     al, r15b
                jz      loc_1404265DE

loc_1402184B6:                          ; CODE XREF: KeRemoveQueueEx+20EA1F↓j
                mov     byte ptr [r13+184h], 2
                mov     rdx, rbp
                mov     rcx, rsi
                mov     byte ptr [rbp+283h], 20h ; ' '
                mov     [rbp+186h], dil
                call    sub_1402CE090
                movzx   r8d, dil
                mov     rdx, r13
                mov     rcx, rbp
                call    sub_1404058F0
                test    al, al
                jz      loc_140218058
                jmp     loc_140426604
; ---------------------------------------------------------------------------

loc_1402184F3:                          ; CODE XREF: KeRemoveQueueEx+708↑j
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_1404262E7

loc_140218503:                          ; CODE XREF: KeRemoveQueueEx+934↓j
                                        ; KeRemoveQueueEx+20E70B↓j ...
                lea     rcx, [rsp+98h+var_64]
                call    sub_1402C8C70
                mov     rax, [rbp+30h]
                test    rax, rax
                jnz     short loc_140218503
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jz      loc_1402182E1
                jmp     loc_14042630E
; ---------------------------------------------------------------------------

loc_14021852B:                          ; CODE XREF: KeRemoveQueueEx+772↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042634F

loc_140218539:                          ; CODE XREF: KeRemoveQueueEx+20E772↓j
                                        ; KeRemoveQueueEx+20E780↓j ...
                mov     cr8, r15
                and     dword ptr [r14+74h], 0FFFFFFBFh
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                jmp     loc_140218358
; ---------------------------------------------------------------------------

loc_140218553:                          ; CODE XREF: KeRemoveQueueEx+984↓j
                                        ; KeRemoveQueueEx+20E9A6↓j ...
                lea     rcx, [rsp+98h+var_5C]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_140218553
                jmp     loc_1404265B3
KeRemoveQueueEx endp

; ---------------------------------------------------------------------------
algn_14021856B:                         ; DATA XREF: .pdata:00000001400CA35C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140218580   proc near               ; CODE XREF: sub_14032B240+110↓p
                                        ; DATA XREF: .rdata:000000014004CC84↑o ...

var_298         = qword ptr -298h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = dword ptr -278h
var_270         = byte ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = byte ptr -250h
var_248         = byte ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = byte ptr -220h
var_218         = byte ptr -218h
var_217         = byte ptr -217h
var_214         = dword ptr -214h
var_210         = byte ptr -210h
var_20F         = byte ptr -20Fh
var_208         = dword ptr -208h
var_200         = byte ptr -200h
var_1FF         = byte ptr -1FFh
var_1FE         = byte ptr -1FEh
var_1FD         = byte ptr -1FDh
var_1F8         = dword ptr -1F8h
var_1F0         = dword ptr -1F0h
var_1EC         = dword ptr -1ECh
var_1E8         = qword ptr -1E8h
var_1E0         = dword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = dword ptr -1D0h
var_1CC         = dword ptr -1CCh
var_1C6         = byte ptr -1C6h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = dword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = dword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = dword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_12C         = dword ptr -12Ch
var_128         = dword ptr -128h
var_124         = dword ptr -124h
var_120         = qword ptr -120h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h
arg_58          = qword ptr  60h
arg_60          = byte ptr  68h
arg_68          = byte ptr  70h

; FUNCTION CHUNK AT 0000000140426A20 SIZE 000009F9 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 280h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+2B8h+var_40], rax
                mov     r15, r8
                mov     r10, rdx
                mov     [rsp+2B8h+var_F8], rdx
                mov     [rsp+2B8h+var_148], rcx
                mov     [rsp+2B8h+var_D0], rcx
                mov     [rsp+2B8h+var_C8], rdx
                mov     [rsp+2B8h+var_C0], r8
                mov     [rsp+2B8h+var_208], r9d
                mov     r13, [rsp+2B8h+arg_20]
                mov     [rsp+2B8h+var_B8], r13
                mov     r11d, [rsp+2B8h+arg_28]
                mov     [rsp+2B8h+var_1F8], r11d
                mov     rsi, [rsp+2B8h+arg_30]
                mov     r12, [rsp+2B8h+arg_38]
                mov     [rsp+2B8h+var_B0], r12
                mov     r14, [rsp+2B8h+arg_48]
                mov     [rsp+2B8h+var_180], r14
                mov     r8, [rsp+2B8h+arg_50]
                mov     [rsp+2B8h+var_1C0], r8
                mov     [rsp+2B8h+var_A8], r8
                mov     r9, [rsp+2B8h+arg_58]
                mov     [rsp+2B8h+var_1B8], r9
                mov     [rsp+2B8h+var_A0], r9
                xor     ebx, ebx
                mov     [rsp+2B8h+var_130], ebx
                mov     [rsp+2B8h+var_168], rbx
                mov     [rsp+2B8h+var_12C], ebx
                mov     [rsp+2B8h+var_128], ebx
                mov     [rsp+2B8h+var_1A0], rbx
                mov     [rsp+2B8h+var_124], ebx
                mov     [rsp+2B8h+var_1A8], rbx
                mov     [rsp+2B8h+var_214], ebx
                mov     [rsp+2B8h+var_1E8], rbx
                mov     [rsp+2B8h+var_1D8], rbx
                mov     [rsp+2B8h+var_150], rbx
                mov     [rsp+2B8h+var_1D0], ebx
                mov     [rsp+2B8h+var_1EC], ebx
                xorps   xmm0, xmm0
                movups  [rsp+2B8h+var_50], xmm0
                mov     [rsp+2B8h+var_158], rbx
                mov     [rsp+2B8h+var_190], rbx
                movups  [rsp+2B8h+var_118], xmm0
                movups  [rsp+2B8h+var_108], xmm0
                movups  [rsp+2B8h+var_F0], xmm0
                xor     r10b, r10b
                mov     [rsp+2B8h+var_210], r10b
                mov     [rsp+2B8h+var_188], rbx
                xor     eax, eax
                movups  [rsp+2B8h+var_70], xmm0
                mov     [rsp+2B8h+var_60], rax
                mov     [rsp+2B8h+var_58], eax
                mov     [rsp+2B8h+var_170], rbx
                movups  [rsp+2B8h+var_98], xmm0
                movups  [rsp+2B8h+var_88], xmm0
                mov     [rsp+2B8h+var_78], rax
                mov     [rsp+2B8h+var_160], rbx
                mov     [rsp+2B8h+var_200], al
                xor     dil, dil
                mov     [rsp+2B8h+var_20F], dil
                mov     [rsp+2B8h+var_1B0], ebx
                mov     [rsp+2B8h+var_1CC], r10d
                mov     [rsp+2B8h+var_1C6], r10b
                mov     [rsp+2B8h+var_138], rbx
                mov     [rsp+2B8h+var_1FD], al
                mov     [rsp+2B8h+var_1FF], al
                mov     [rsp+2B8h+var_1FE], al
                mov     [rsp+2B8h+var_120], rbx
                mov     [rsp+2B8h+var_140], rbx
                mov     [rsp+2B8h+var_1F0], 0C0000022h
                mov     [rsp+2B8h+var_178], 0FFFFFFFFh
                mov     dword ptr [rsp+2B8h+var_140], 0FFFFFFFFh
                mov     rax, gs:188h
                movzx   edx, byte ptr [rax+232h]
                mov     [rsp+2B8h+var_218], dl
                mov     [rsp+2B8h+var_217], dl
                test    dl, dl
                jz      loc_140426A20

loc_1402187DA:                          ; DATA XREF: .rdata:000000014004CBDC↑o
;   __try { // __except at loc_1402188FA
                cmp     [rsp+2B8h+arg_60], dil
                jnz     loc_14021887F
                mov     rcx, r9
                mov     rdi, 7FFFFFFF0000h
                cmp     r9, rdi
                jnb     loc_1402188CF

loc_1402187FE:                          ; CODE XREF: sub_140218580+352↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rcx, r8
                cmp     r8, rdi
                jnb     loc_1402188D7

loc_14021880E:                          ; CODE XREF: sub_140218580+35A↓j
                mov     eax, [rcx]
                mov     [rcx], eax

loc_140218812:                          ; CODE XREF: sub_140218580+34A↓j
                mov     rcx, r14
                cmp     r14, rdi
                jnb     loc_1402188DF

loc_14021881E:                          ; CODE XREF: sub_140218580+362↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     r14d, [rsp+2B8h+arg_40]
                mov     edx, r14d
                mov     r8d, 4
                mov     rcx, r12
                call    ProbeForWrite
                test    r12, r12
                jz      short loc_14021884A
                cmp     r14d, 14h
                jb      short loc_14021884A
                mov     [r12], ebx

loc_14021884A:                          ; CODE XREF: sub_140218580+2BE↑j
                                        ; sub_140218580+2C4↑j
                mov     rax, rsi
                test    sil, 3
                jnz     loc_1402188E7
                cmp     rsi, rdi
                jnb     loc_1402188ED

loc_140218860:                          ; CODE XREF: sub_140218580+370↓j
                movzx   eax, byte ptr [rax]
                movups  xmm0, xmmword ptr [rsi]
                movups  [rsp+2B8h+var_50], xmm0
                mov     eax, [rsp+2B8h+var_214]
                movzx   edx, [rsp+2B8h+var_218]
                jmp     short loc_1402188F5
; ---------------------------------------------------------------------------

loc_14021887F:                          ; CODE XREF: sub_140218580+262↑j
                test    r11d, r11d
                jnz     short loc_140218892
                mov     eax, 0C000000Dh
                mov     [rsp+2B8h+var_214], eax
                jmp     short loc_1402188F5
; ---------------------------------------------------------------------------

loc_140218892:                          ; CODE XREF: sub_140218580+302↑j
                mov     rdi, r11
                shl     rdi, 2
                mov     r8d, 4
                mov     rdx, rdi
                mov     rcx, r9
                call    ProbeForWrite
                mov     r8d, 4
                mov     rdx, rdi
                mov     rcx, [rsp+2B8h+var_1C0]
                call    ProbeForWrite
                mov     rdi, 7FFFFFFF0000h
                jmp     loc_140218812
; ---------------------------------------------------------------------------

loc_1402188CF:                          ; CODE XREF: sub_140218580+278↑j
                mov     rcx, rdi
                jmp     loc_1402187FE
; ---------------------------------------------------------------------------

loc_1402188D7:                          ; CODE XREF: sub_140218580+288↑j
                mov     rcx, rdi
                jmp     loc_14021880E
; ---------------------------------------------------------------------------

loc_1402188DF:                          ; CODE XREF: sub_140218580+298↑j
                mov     rcx, rdi
                jmp     loc_14021881E
; ---------------------------------------------------------------------------

loc_1402188E7:                          ; CODE XREF: sub_140218580+2D1↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402188ED:                          ; CODE XREF: sub_140218580+2DA↑j
                mov     rax, rdi
                jmp     loc_140218860
; ---------------------------------------------------------------------------

loc_1402188F5:                          ; CODE XREF: sub_140218580+2FD↑j
                                        ; sub_140218580+310↑j
                jmp     loc_140218980
;   } // starts at 1402187DA
; ---------------------------------------------------------------------------

loc_1402188FA:                          ; DATA XREF: .rdata:000000014004CBDC↑o
;   __except(1) // owned by 1402187DA
                mov     [rsp+2B8h+var_214], eax
                xor     ebx, ebx
                mov     [rsp+2B8h+var_1A8], rbx
                movzx   edx, [rsp+2B8h+var_217]
                mov     [rsp+2B8h+var_218], dl
                mov     [rsp+2B8h+var_1EC], ebx
                mov     [rsp+2B8h+var_210], bl
                mov     ecx, ebx
                mov     [rsp+2B8h+var_170], rbx
                mov     [rsp+2B8h+var_20F], bl
                movzx   ecx, [rsp+2B8h+var_1C6]
                mov     [rsp+2B8h+var_1CC], ecx
                mov     rcx, [rsp+2B8h+var_D0]
                mov     [rsp+2B8h+var_148], rcx
                mov     r8, [rsp+2B8h+var_C8]
                mov     [rsp+2B8h+var_F8], r8
                mov     r15, [rsp+2B8h+var_C0]
                mov     r13, [rsp+2B8h+var_B8]
                mov     r12, [rsp+2B8h+var_B0]

loc_140218980:                          ; CODE XREF: sub_140218580:loc_1402188F5↑j
                test    eax, eax
                js      loc_1402190D1
                mov     r14d, [rsp+2B8h+var_208]
                test    r14d, 0F0000000h
                jnz     loc_140426A34
                lea     rax, [rsp+2B8h+var_120]
                mov     [rsp+2B8h+var_290], rax
                lea     rax, [rsp+2B8h+var_1FD]
                mov     [rsp+2B8h+var_298], rax
                lea     r9, [rsp+2B8h+var_1E8]
                movzx   r8d, dl
                mov     edx, 8
                mov     rcx, r15
                call    sub_1402164D0
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                js      loc_140219723
                lea     rax, [r15+6]
                mov     rsi, [rsp+2B8h+var_1E8]
                cmp     rax, 2
                jbe     short loc_140218A0D
                cmp     dword ptr [rsi+0C0h], 2
                jnz     loc_1402196EF
                cmp     dword ptr [rsi+0C4h], 1
                jl      loc_140426A4D

loc_140218A0D:                          ; CODE XREF: sub_140218580+471↑j
                lea     r9, [rsp+2B8h+var_158]
                movzx   r15d, [rsp+2B8h+var_218]
                movzx   r8d, r15b
                mov     edx, [rsp+2B8h+var_1F8]
                mov     rcx, r13
                call    sub_14021CAB0
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                js      loc_14021971D
                lea     rax, [rsp+2B8h+var_1D8]
                mov     [rsp+2B8h+var_298], rax
                xor     r9d, r9d
                lea     r8d, [r9+1]
                movzx   edx, r15b
                mov     rcx, [rsp+2B8h+var_148]
                call    SeCaptureSecurityDescriptor
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                js      loc_14021971D
                cmp     [rsp+2B8h+var_1D8], 0
                jz      loc_140219711
                mov     rcx, [rsp+2B8h+var_1D8]
                lea     rax, [rcx+2]
                mov     [rsp+2B8h+var_148], rax
                movzx   edx, word ptr [rax]
                test    dx, dx
                jns     loc_140426A66
                mov     eax, [rcx+4]
                test    eax, eax
                jz      loc_140219711
                add     rax, rcx

loc_140218AB5:                          ; CODE XREF: sub_140218580+20E4F2↓j
                test    rax, rax
                jz      loc_140219711
                test    dx, dx
                jns     loc_140426A77
                mov     rcx, [rsp+2B8h+var_1D8]
                mov     eax, [rcx+8]
                test    eax, eax
                jz      loc_140219711
                add     rax, rcx

loc_140218ADD:                          ; CODE XREF: sub_140218580+20E503↓j
                test    rax, rax
                jz      loc_140219711
                cmp     [rsp+2B8h+var_1FD], 0
                jnz     loc_140219639
                mov     rax, [rsi+450h]

loc_140218AFB:                          ; CODE XREF: sub_140218580+10C1↓j
                lea     rcx, [rsp+2B8h+var_178]
                mov     [rsp+2B8h+var_288], rcx
                mov     byte ptr [rsp+2B8h+var_290], 1
                mov     [rsp+2B8h+var_298], rax
                mov     r9, rsi
                xor     r8d, r8d
                mov     rdx, [rsp+2B8h+var_1D8]
                call    sub_14021C9B0
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                js      loc_140219744
                mov     r15d, r14d
                btr     r15d, 19h
                mov     eax, r15d
                and     eax, [rsp+2B8h+var_178]
                cmp     eax, r15d
                jnz     loc_140426A88
                lea     rax, [rsp+2B8h+var_140]
                mov     [rsp+2B8h+var_298], rax
                mov     r9b, 1
                mov     r8, rsi
                lea     rdx, [rsp+2B8h+var_188]
                mov     rcx, [rsp+2B8h+var_1D8]
                call    sub_140249750
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                js      loc_140219744
                mov     eax, r15d
                and     eax, dword ptr [rsp+2B8h+var_140]
                cmp     eax, r15d
                jnz     loc_140426A92
                lea     rax, [rsp+2B8h+var_F0]
                mov     [rsp+2B8h+var_288], rax
                movzx   r13d, [rsp+2B8h+arg_68]
                mov     byte ptr [rsp+2B8h+var_290], r13b
                mov     byte ptr [rsp+2B8h+var_298], 1
                mov     r9, rsi
                xor     r8d, r8d
                mov     rdx, [rsp+2B8h+var_1D8]
                lea     rcx, [rsp+2B8h+var_50]
                call    sub_1402492A0
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                js      loc_140219744
                xor     r8b, r8b
                mov     [rsp+2B8h+var_210], r8b
                mov     edx, r14d
                lea     rcx, [rsp+2B8h+var_F0]
                call    sub_14021C970
                mov     ecx, eax
                test    eax, eax
                js      loc_140219102
                bt      r14d, 19h
                jb      loc_140219102

loc_140218C19:                          ; CODE XREF: sub_140218580+B8C↓j
                                        ; sub_140218580+B9D↓j ...
                test    eax, eax
                js      loc_140219397

loc_140218C21:                          ; CODE XREF: sub_140218580+E1A↓j
                movzx   edi, [rsp+2B8h+var_218]
                mov     byte ptr [rsp+2B8h+var_290], dil
                lea     rax, [rsp+2B8h+var_190]
                mov     [rsp+2B8h+var_298], rax
                mov     r9, rsi
                xor     r8d, r8d
                lea     rdx, [rsp+2B8h+var_1D0]
                lea     rcx, [rsp+2B8h+var_208]
                call    sub_14021C7F0
                mov     ecx, eax
                mov     r14d, [rsp+2B8h+var_208]
                test    r14d, r14d
                jz      loc_140426AB5

loc_140218C69:                          ; CODE XREF: sub_140218580+20E530↓j
                                        ; sub_140218580+20E556↓j
                movzx   r8d, [rsp+2B8h+var_210]

loc_140218C72:                          ; CODE XREF: sub_140218580+E28↓j
                test    ecx, ecx
                js      loc_140219646

loc_140218C7A:                          ; CODE XREF: sub_140218580+10C9↓j
                mov     r15, [rsp+2B8h+var_190]
                test    r15, r15
                jnz     loc_140426ADB
                cmp     [rsp+2B8h+arg_40], 14h
                jb      loc_140219475

loc_140218C99:                          ; DATA XREF: .rdata:000000014004CBEC↑o
;   __try { // __except at loc_140218C9F
                mov     [r12], r15
                jmp     short loc_140218CCE
;   } // starts at 140218C99
; ---------------------------------------------------------------------------

loc_140218C9F:                          ; DATA XREF: .rdata:000000014004CBEC↑o
;   __except(1) // owned by 140218C99
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                movzx   ebx, [rsp+2B8h+var_217]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   r12d, [rsp+2B8h+arg_60]
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_140218CCE:                          ; CODE XREF: sub_140218580+71D↑j
                                        ; sub_140218580+20E63B↓j
                mov     rax, [rsp+2B8h+var_F8]
                test    rax, rax
                jnz     loc_140219332

loc_140218CDF:                          ; CODE XREF: sub_140218580+DDB↓j
                lea     rcx, [rsp+2B8h+var_118]
                call    SeCaptureSubjectContext
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+2B8h+var_1E8]
                lea     r12, [rsi+30h]
                mov     dl, 1
                mov     rcx, [r12]
                call    ExAcquireResourceSharedLite
                movzx   r9d, r13b
                mov     rdx, [rsp+2B8h+var_1D8]
                mov     rcx, rsi
                call    sub_14021C610
                movzx   r13d, al
                cmp     cs:byte_140C11F00, 0
                jz      loc_140426BD5

loc_140218D38:                          ; CODE XREF: sub_140218580+20E65D↓j
                                        ; sub_140218580+20E66D↓j ...
                movzx   eax, cs:byte_140C1D325
                mov     rdi, [rsp+2B8h+var_148]
                test    al, al
                jnz     loc_140426CC0

loc_140218D4F:                          ; CODE XREF: sub_140218580+20E746↓j
                                        ; sub_140218580+20E752↓j ...
                mov     r14d, [rsp+2B8h+var_208]
                test    r14d, 2060000h
                jnz     loc_140219133

loc_140218D64:                          ; CODE XREF: sub_140218580+BB6↓j
                                        ; sub_140218580+BF1↓j
                mov     edi, [rsp+2B8h+var_1D0]

loc_140218D6B:                          ; CODE XREF: sub_140218580+C2D↓j
                test    r14d, r14d
                jz      loc_140219519

loc_140218D74:                          ; CODE XREF: sub_140218580+20E804↓j
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     eax, [rsp+2B8h+var_1EC]

loc_140218D83:                          ; CODE XREF: sub_140218580+20E818↓j
                cmp     [rsp+2B8h+arg_60], 0
                jnz     loc_140426DA3
                lea     rcx, [rsp+2B8h+var_130]
                mov     [rsp+2B8h+var_168], rcx
                lea     r15, [rsp+2B8h+var_12C]

loc_140218DA9:                          ; CODE XREF: sub_140218580+20E892↓j
                mov     dword ptr [rsp+2B8h+var_70], eax
                movzx   eax, [rsp+2B8h+arg_68]
                mov     [rsp+2B8h+var_220], al
                mov     [rsp+2B8h+var_228], rbx
                mov     [rsp+2B8h+var_230], rbx
                lea     rax, [rsp+2B8h+var_188]
                mov     [rsp+2B8h+var_238], rax
                lea     rax, [rsp+2B8h+var_70]
                mov     [rsp+2B8h+var_240], rax
                mov     [rsp+2B8h+var_248], r13b
                movzx   eax, [rsp+2B8h+arg_60]
                mov     [rsp+2B8h+var_250], al
                mov     [rsp+2B8h+var_258], r15
                mov     [rsp+2B8h+var_260], rbx
                mov     [rsp+2B8h+var_268], rcx
                movzx   eax, [rsp+2B8h+var_218]
                mov     [rsp+2B8h+var_270], al
                mov     [rsp+2B8h+var_278], edi
                lea     rax, [rsp+2B8h+var_50]
                mov     [rsp+2B8h+var_280], rax
                mov     edi, [rsp+2B8h+var_1F8]
                mov     dword ptr [rsp+2B8h+var_288], edi
                mov     rax, [rsp+2B8h+var_158]
                mov     [rsp+2B8h+var_290], rax
                mov     dword ptr [rsp+2B8h+var_298], r14d
                mov     r9, rsi
                mov     r8, qword ptr [rsp+2B8h+var_108]
                mov     rdx, [rsp+2B8h+var_150]
                mov     rcx, [rsp+2B8h+var_1D8]
                call    sub_140249E90
                movzx   eax, cs:byte_140C1D325
                test    al, al
                jnz     loc_140426E17

loc_140218E75:                          ; CODE XREF: sub_140218580+20E8A5↓j
                                        ; sub_140218580+20E8B3↓j
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                mov     r13, [rsp+2B8h+var_168]

loc_140218E8D:                          ; CODE XREF: sub_140218580+20EDF8↓j
                mov     rcx, [r12]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                lea     rcx, [rsp+2B8h+var_118]
                call    SeReleaseSubjectContext
                mov     edi, r14d
                and     edi, 2000000h
                jnz     loc_1402191B2
                cmp     [rsp+2B8h+var_210], dil
                jnz     loc_1402193AD

loc_140218EC5:                          ; CODE XREF: sub_140218580+DFE↓j
                                        ; sub_140218580+E0C↓j ...
                movzx   r12d, [rsp+2B8h+arg_60]

loc_140218ECE:                          ; CODE XREF: sub_140218580+C73↓j
                test    edi, edi
                jnz     loc_1402191F8

loc_140218ED6:                          ; CODE XREF: sub_140218580+CEB↓j
                                        ; DATA XREF: .rdata:000000014004CBFC↑o
;   __try { // __except at loc_140218FD0
                mov     eax, [r15]
                mov     rdx, [rsp+2B8h+var_1B8]
                mov     [rdx], eax
                mov     eax, [r13+0]
                mov     r8, [rsp+2B8h+var_1C0]
                mov     [r8], eax
                mov     eax, [r15]
                mov     [rsp+2B8h+var_1F0], eax
                movzx   eax, cs:byte_140C1D325
                movzx   r11d, [rsp+2B8h+var_20F]
                mov     r9, [rsp+2B8h+var_1A8]
                mov     rdi, [rsp+2B8h+var_1A0]
                test    al, al
                jnz     short loc_140218F89

loc_140218F20:                          ; CODE XREF: sub_140218580+A0C↓j
                                        ; sub_140218580+A12↓j ...
                test    r12b, r12b
                jz      loc_140218FAD
                mov     eax, 1
                mov     r10d, [rsp+2B8h+var_1F8]

loc_140218F36:                          ; CODE XREF: sub_140218580+A07↓j
                mov     [rsp+2B8h+var_1E0], eax
                cmp     eax, r10d
                jnb     short loc_140218FAD
                lea     rcx, ds:0[rax*4]
                mov     eax, [rcx+r15]
                mov     [rdx+rcx], eax
                mov     eax, [rcx+r13]
                mov     [r8+rcx], eax
                movzx   eax, cs:byte_140C1D325
                test    al, al
                jz      short loc_140218F7E
                test    r11b, r11b
                jz      short loc_140218F7E
                cmp     dword ptr [rcx+r15], 0
                jl      short loc_140218F7E
                mov     eax, [rcx+r9]
                mov     [rdx+rcx], eax
                mov     eax, [rcx+rdi]
                and     [r8+rcx], eax

loc_140218F7E:                          ; CODE XREF: sub_140218580+9E2↑j
                                        ; sub_140218580+9E7↑j ...
                mov     eax, [rsp+2B8h+var_1E0]
                inc     eax
                jmp     short loc_140218F36
; ---------------------------------------------------------------------------

loc_140218F89:                          ; CODE XREF: sub_140218580+99E↑j
                test    r11b, r11b
                jz      short loc_140218F20
                cmp     dword ptr [r15], 0
                jl      short loc_140218F20
                mov     eax, [r9]
                mov     [rdx], eax
                mov     eax, [rdi]
                and     [r8], eax
                mov     eax, [r9]
                mov     [rsp+2B8h+var_1F0], eax
                jmp     loc_140218F20
; ---------------------------------------------------------------------------

loc_140218FAD:                          ; CODE XREF: sub_140218580+9A3↑j
                                        ; sub_140218580+9C0↑j
                mov     edi, ebx
                mov     [rsp+2B8h+var_214], ebx
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   ebx, [rsp+2B8h+var_218]
                jmp     short loc_140218FFA
;   } // starts at 140218ED6
; ---------------------------------------------------------------------------

loc_140218FD0:                          ; DATA XREF: .rdata:000000014004CBFC↑o
;   __except(1) // owned by 140218ED6
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                movzx   ebx, [rsp+2B8h+var_217]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   r12d, [rsp+2B8h+arg_60]

loc_140218FFA:                          ; CODE XREF: sub_140218580+749↑j
                                        ; sub_140218580+A4E↑j ...
                cmp     [rsp+2B8h+var_1D8], 0
                jz      short loc_140219053
                test    rsi, rsi
                jz      short loc_140219053
                cmp     [rsp+2B8h+var_1FF], 0
                jnz     loc_140219290
                cmp     [rsp+2B8h+var_1FE], 0
                jnz     loc_140219290
                mov     ecx, dword ptr [rsp+2B8h+var_70+0Ch]
                test    ecx, ecx
                jnz     short loc_140219041
                test    dword ptr [rsi+0C8h], 4000h
                jnz     loc_140219270

loc_140219041:                          ; CODE XREF: sub_140218580+AAF↑j
                                        ; sub_140218580+D0A↓j ...
                test    edi, edi
                js      short loc_140219053
                cmp     [rsp+2B8h+var_1F0], 0
                jl      loc_1402190F5

loc_140219053:                          ; CODE XREF: sub_140218580+A83↑j
                                        ; sub_140218580+A88↑j ...
                test    r12b, r12b
                jnz     loc_1404273B6

loc_14021905C:                          ; CODE XREF: sub_140218580+20EE58↓j
                                        ; sub_140218580+20EE69↓j
                test    rsi, rsi
                jz      short loc_140219069
                mov     rcx, rsi
                call    PsDereferenceSiloContext

loc_140219069:                          ; CODE XREF: sub_140218580+ADF↑j
                mov     rcx, [rsp+2B8h+var_158]
                test    rcx, rcx
                jnz     loc_1404273EE

loc_14021907A:                          ; CODE XREF: sub_140218580+20EE74↓j
                mov     rcx, [rsp+2B8h+var_150]
                test    rcx, rcx
                jnz     loc_140219366

loc_14021908B:                          ; CODE XREF: sub_140218580+DF1↓j
                mov     rcx, [rsp+2B8h+var_1D8]
                test    rcx, rcx
                jz      short loc_1402190A3
                xor     r8d, r8d
                movzx   edx, bl
                call    SeReleaseSecurityDescriptor

loc_1402190A3:                          ; CODE XREF: sub_140218580+B16↑j
                cmp     [rsp+2B8h+var_200], 0
                jnz     loc_1404273F9

loc_1402190B1:                          ; CODE XREF: sub_140218580+20EE87↓j
                mov     rcx, [rsp+2B8h+var_138]
                test    rcx, rcx
                jnz     loc_14042740C

loc_1402190C2:                          ; CODE XREF: sub_140218580+20EE94↓j
                mov     rcx, [rsp+2B8h+var_188]
                call    sub_14021C418
                mov     eax, edi

loc_1402190D1:                          ; CODE XREF: sub_140218580+402↑j
                                        ; sub_140218580+20E4AF↓j
                mov     rcx, [rsp+2B8h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 280h
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

loc_1402190F5:                          ; CODE XREF: sub_140218580+ACD↑j
                test    ecx, ecx
                jnz     loc_140219053
                jmp     loc_1402194D4
; ---------------------------------------------------------------------------

loc_140219102:                          ; CODE XREF: sub_140218580+688↑j
                                        ; sub_140218580+693↑j
                test    dword ptr [rsi+0C8h], 4000h
                jz      loc_140218C19
                cmp     dword ptr [rsp+2B8h+var_F0+0Ch], 2000h
                ja      loc_140218C19
                mov     r8b, 1
                mov     [rsp+2B8h+var_210], r8b
                jmp     loc_140218C19
; ---------------------------------------------------------------------------

loc_140219133:                          ; CODE XREF: sub_140218580+7DE↑j
                test    r13b, r13b
                jz      loc_140218D64
                movzx   eax, word ptr [rdi]
                test    al, 4
                jz      loc_140426D63
                test    ax, ax
                mov     rax, [rsp+2B8h+var_1D8]
                jns     loc_140426D73
                mov     ecx, [rax+10h]
                test    ecx, ecx
                jz      loc_140426D6B
                mov     edx, ecx
                add     rdx, rax

loc_140219168:                          ; CODE XREF: sub_140218580+20E7E6↓j
                                        ; sub_140218580+20E7EE↓j ...
                xor     ecx, ecx
                call    sub_140329990
                test    al, al
                jnz     loc_140218D64
                bt      r14d, 19h
                jnb     loc_140219501
                mov     eax, 60000h
                mov     edi, [rsp+2B8h+var_1D0]
                or      edi, eax

loc_140219190:                          ; CODE XREF: sub_140218580+F94↓j
                mov     [rsp+2B8h+var_1EC], eax
                mov     [rsp+2B8h+var_1D0], edi
                and     r14d, 0FFF9FFFFh
                mov     [rsp+2B8h+var_208], r14d
                jmp     loc_140218D6B
; ---------------------------------------------------------------------------

loc_1402191B2:                          ; CODE XREF: sub_140218580+931↑j
                cmp     [rsp+2B8h+var_210], 0
                jnz     loc_140219376

loc_1402191C0:                          ; CODE XREF: sub_140218580+E12↓j
                movzx   r12d, [rsp+2B8h+arg_60]
                test    r12b, r12b
                jnz     loc_14042737D
                mov     eax, ebx

loc_1402191D4:                          ; CODE XREF: sub_140218580+20EE04↓j
                mov     dword ptr [rsp+2B8h+var_290], eax
                mov     [rsp+2B8h+var_298], rbx
                mov     r9, r15
                mov     r8, r13
                mov     edx, r14d
                lea     rcx, [rsp+2B8h+var_F0]
                call    sub_14034A630
                jmp     loc_140218ECE
; ---------------------------------------------------------------------------

loc_1402191F8:                          ; CODE XREF: sub_140218580+950↑j
                mov     edi, [rsp+2B8h+var_1F8]
                test    r12b, r12b
                jnz     loc_140427389
                mov     eax, ebx

loc_14021920A:                          ; CODE XREF: sub_140218580+20EE0B↓j
                lea     rcx, [rsp+2B8h+var_1FF]
                mov     [rsp+2B8h+var_288], rcx
                mov     dword ptr [rsp+2B8h+var_290], eax
                mov     [rsp+2B8h+var_298], rbx
                mov     r9, r15
                mov     r8, r13
                mov     edx, r14d
                mov     ecx, [rsp+2B8h+var_178]
                call    sub_140349524
                test    r12b, r12b
                jnz     loc_140427390
                mov     eax, ebx

loc_140219240:                          ; CODE XREF: sub_140218580+20EE12↓j
                lea     rcx, [rsp+2B8h+var_1FE]
                mov     [rsp+2B8h+var_288], rcx
                mov     dword ptr [rsp+2B8h+var_290], eax
                mov     [rsp+2B8h+var_298], rbx
                mov     r9, r15
                mov     r8, r13
                mov     edx, r14d
                mov     ecx, dword ptr [rsp+2B8h+var_140]
                call    sub_140349524
                jmp     loc_140218ED6
; ---------------------------------------------------------------------------

loc_140219270:                          ; CODE XREF: sub_140218580+ABB↑j
                test    edi, edi
                js      loc_140219053
                cmp     [rsp+2B8h+var_1F0], 0
                jl      short loc_140219290
                cmp     byte ptr [rsp+2B8h+var_60+7], 0
                jz      loc_140219041

loc_140219290:                          ; CODE XREF: sub_140218580+A92↑j
                                        ; sub_140218580+AA0↑j ...
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     dl, 1
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceSharedLite
                cmp     [rsp+2B8h+var_1F0], 0
                jge     loc_140427397
                xor     cl, cl

loc_1402192C3:                          ; CODE XREF: sub_140218580+20EE19↓j
                cmp     [rsp+2B8h+var_1FD], 0
                jnz     loc_14042739E
                mov     r9, [rsi+450h]

loc_1402192D8:                          ; CODE XREF: sub_140218580+20EE26↓j
                mov     r14d, [rsp+2B8h+var_208]
                mov     eax, r14d
                or      eax, [rsp+2B8h+var_1D0]
                mov     byte ptr [rsp+2B8h+var_280], 0
                mov     byte ptr [rsp+2B8h+var_288], cl
                mov     dword ptr [rsp+2B8h+var_290], eax
                mov     rax, [rsp+2B8h+var_1D8]
                mov     [rsp+2B8h+var_298], rax
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14034D950
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     edi, [rsp+2B8h+var_214]
                mov     ecx, dword ptr [rsp+2B8h+var_70+0Ch]
                jmp     loc_140219041
; ---------------------------------------------------------------------------

loc_140219332:                          ; CODE XREF: sub_140218580+759↑j
                lea     rcx, [rsp+2B8h+var_150]
                mov     [rsp+2B8h+var_288], rcx
                mov     byte ptr [rsp+2B8h+var_290], 1
                movzx   edx, dil
                mov     rcx, rax
                call    sub_1406B967C
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                test    eax, eax
                jns     loc_140218CDF
                jmp     loc_140426BC0
; ---------------------------------------------------------------------------

loc_140219366:                          ; CODE XREF: sub_140218580+B05↑j
                mov     r8b, 1
                movzx   edx, bl
                call    sub_1406B9780
                jmp     loc_14021908B
; ---------------------------------------------------------------------------

loc_140219376:                          ; CODE XREF: sub_140218580+C3A↑j
                cmp     byte ptr [rsp+2B8h+var_60+6], 0
                jnz     loc_140218EC5
                cmp     byte ptr [rsp+2B8h+var_60+5], 0
                jnz     loc_140218EC5
                jmp     loc_1402191C0
; ---------------------------------------------------------------------------

loc_140219397:                          ; CODE XREF: sub_140218580+69B↑j
                test    r8b, r8b
                jnz     loc_140218C21
                movzx   edi, [rsp+2B8h+var_218]
                jmp     loc_140218C72
; ---------------------------------------------------------------------------

loc_1402193AD:                          ; CODE XREF: sub_140218580+93F↑j
                cmp     byte ptr [rsp+2B8h+var_60+6], 0
                jnz     loc_140218EC5
                cmp     byte ptr [rsp+2B8h+var_60+5], 0
                jnz     loc_140218EC5

loc_1402193C9:                          ; DATA XREF: .rdata:000000014004CC0C↑o
;   __try { // __except at loc_140219446
                movzx   r12d, [rsp+2B8h+arg_60]
                mov     r8, [rsp+2B8h+var_1B8]
                test    r12b, r12b
                jnz     short loc_1402193F2
                mov     dword ptr [r8], 0C0000022h
                mov     rax, [rsp+2B8h+var_1C0]
                mov     [rax], ebx
                jmp     short loc_140219425
; ---------------------------------------------------------------------------

loc_1402193F2:                          ; CODE XREF: sub_140218580+E5D↑j
                mov     ecx, ebx
                mov     [rsp+2B8h+var_1E0], ebx
                mov     r9, [rsp+2B8h+var_1C0]

loc_140219403:                          ; CODE XREF: sub_140218580+EA3↓j
                cmp     ecx, [rsp+2B8h+var_1F8]
                jnb     short loc_140219425
                mov     eax, ecx
                mov     dword ptr [r8+rax*4], 0C0000022h
                mov     [r9+rax*4], ebx
                inc     ecx
                mov     [rsp+2B8h+var_1E0], ecx
                jmp     short loc_140219403
; ---------------------------------------------------------------------------

loc_140219425:                          ; CODE XREF: sub_140218580+E70↑j
                                        ; sub_140218580+E8A↑j
                mov     [rsp+2B8h+var_1F0], 0C0000022h
                mov     edi, ebx
                mov     [rsp+2B8h+var_214], ebx
                movzx   ebx, [rsp+2B8h+var_218]
                jmp     loc_140218FFA
;   } // starts at 1402193C9
; ---------------------------------------------------------------------------

loc_140219446:                          ; DATA XREF: .rdata:000000014004CC0C↑o
;   __except(1) // owned by 1402193C9
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                movzx   ebx, [rsp+2B8h+var_217]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   r12d, [rsp+2B8h+arg_60]
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_140219475:                          ; CODE XREF: sub_140218580+713↑j
                                        ; DATA XREF: .rdata:000000014004CC1C↑o
;   __try { // __except at loc_1402194A5
                mov     rcx, [rsp+2B8h+var_180]
                mov     dword ptr [rcx], 14h
                mov     edi, 0C0000023h
                mov     [rsp+2B8h+var_214], edi
                movzx   r12d, [rsp+2B8h+arg_60]
                movzx   ebx, [rsp+2B8h+var_218]
                jmp     loc_140218FFA
;   } // starts at 140219475
; ---------------------------------------------------------------------------

loc_1402194A5:                          ; DATA XREF: .rdata:000000014004CC1C↑o
;   __except(1) // owned by 140219475
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                movzx   ebx, [rsp+2B8h+var_217]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   r12d, [rsp+2B8h+arg_60]
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_1402194D4:                          ; CODE XREF: sub_140218580+B7D↑j
                test    dword ptr [rsi+0C8h], 4000h
                jz      loc_140219053
                mov     edx, r14d
                lea     rcx, [rsp+2B8h+var_70]
                call    sub_14035A970
                test    al, al
                jz      loc_140219053
                jmp     loc_1404273AB
; ---------------------------------------------------------------------------

loc_140219501:                          ; CODE XREF: sub_140218580+BFC↑j
                mov     eax, r14d
                mov     ecx, 60000h
                and     eax, ecx
                mov     edi, eax
                or      edi, [rsp+2B8h+var_1D0]
                jmp     loc_140219190
; ---------------------------------------------------------------------------

loc_140219519:                          ; CODE XREF: sub_140218580+7EE↑j
                cmp     [rsp+2B8h+var_200], 0
                jnz     loc_140426D7C

loc_140219527:                          ; CODE XREF: sub_140218580+20E80A↓j
                mov     rsi, [rsp+2B8h+var_1E8]
                test    dword ptr [rsi+0C8h], 2000h
                jz      loc_140426D8F

loc_14021953F:                          ; CODE XREF: sub_140218580+20E81E↓j
                                        ; DATA XREF: .rdata:000000014004CC2C↑o
;   __try { // __except at loc_1402195EF
                movzx   r12d, [rsp+2B8h+arg_60]
                test    r12b, r12b
                jnz     short loc_14021956F
                mov     r8, [rsp+2B8h+var_1B8]
                mov     rax, [rsp+2B8h+var_1C0]
                test    edi, edi
                jz      short loc_1402195C8
                mov     [r8], ebx
                mov     [rsp+2B8h+var_1F0], ebx
                mov     [rax], edi
                jmp     short loc_1402195DC
; ---------------------------------------------------------------------------

loc_14021956F:                          ; CODE XREF: sub_140218580+FCB↑j
                mov     ecx, ebx
                mov     [rsp+2B8h+var_1E0], ebx
                mov     rdx, [rsp+2B8h+var_A8]
                mov     r8, [rsp+2B8h+var_A0]

loc_140219588:                          ; CODE XREF: sub_140218580+1046↓j
                cmp     ecx, [rsp+2B8h+var_1F8]
                jnb     short loc_1402195DC
                mov     eax, ecx
                test    edi, edi
                jnz     short loc_1402195AF
                mov     dword ptr [r8+rax*4], 0C0000022h
                mov     [rsp+2B8h+var_1F0], 0C0000022h
                mov     [rdx+rax*4], ebx
                jmp     short loc_1402195BD
; ---------------------------------------------------------------------------

loc_1402195AF:                          ; CODE XREF: sub_140218580+1015↑j
                mov     [r8+rax*4], ebx
                mov     [rsp+2B8h+var_1F0], ebx
                mov     [rdx+rax*4], edi

loc_1402195BD:                          ; CODE XREF: sub_140218580+102D↑j
                inc     ecx
                mov     [rsp+2B8h+var_1E0], ecx
                jmp     short loc_140219588
; ---------------------------------------------------------------------------

loc_1402195C8:                          ; CODE XREF: sub_140218580+FDF↑j
                mov     dword ptr [r8], 0C0000022h
                mov     [rsp+2B8h+var_1F0], 0C0000022h
                mov     [rax], ebx

loc_1402195DC:                          ; CODE XREF: sub_140218580+FED↑j
                                        ; sub_140218580+100F↑j
                mov     edi, ebx
                mov     [rsp+2B8h+var_214], ebx
                movzx   ebx, [rsp+2B8h+var_218]
                jmp     short loc_140219619
;   } // starts at 14021953F
; ---------------------------------------------------------------------------

loc_1402195EF:                          ; DATA XREF: .rdata:000000014004CC2C↑o
;   __except(1) // owned by 14021953F
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                movzx   ebx, [rsp+2B8h+var_217]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   r12d, [rsp+2B8h+arg_60]

loc_140219619:                          ; CODE XREF: sub_140218580+106D↑j
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                lea     rcx, [rsp+2B8h+var_118]
                call    SeReleaseSubjectContext
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_140219639:                          ; CODE XREF: sub_140218580+56E↑j
                mov     rax, [rsp+2B8h+var_120]
                jmp     loc_140218AFB
; ---------------------------------------------------------------------------

loc_140219646:                          ; CODE XREF: sub_140218580+6F4↑j
                test    r8b, r8b
                jnz     loc_140218C7A

loc_14021964F:                          ; DATA XREF: .rdata:000000014004CC3C↑o
;   __try { // __except at loc_1402196C0
                movzx   r12d, [rsp+2B8h+arg_60]
                mov     r8, [rsp+2B8h+var_1B8]
                test    r12b, r12b
                jnz     short loc_140219674
                mov     [r8], ecx
                mov     rax, [rsp+2B8h+var_1C0]
                mov     [rax], ebx
                jmp     short loc_1402196A3
; ---------------------------------------------------------------------------

loc_140219674:                          ; CODE XREF: sub_140218580+10E3↑j
                mov     edx, ebx
                mov     [rsp+2B8h+var_1E0], ebx
                mov     r9, [rsp+2B8h+var_1C0]

loc_140219685:                          ; CODE XREF: sub_140218580+1121↓j
                cmp     edx, [rsp+2B8h+var_1F8]
                jnb     short loc_1402196A3
                mov     eax, edx
                mov     [r8+rax*4], ecx
                mov     [r9+rax*4], ebx
                inc     edx
                mov     [rsp+2B8h+var_1E0], edx
                jmp     short loc_140219685
; ---------------------------------------------------------------------------

loc_1402196A3:                          ; CODE XREF: sub_140218580+10F2↑j
                                        ; sub_140218580+110C↑j
                mov     [rsp+2B8h+var_1F0], ecx
                mov     edi, ebx
                mov     [rsp+2B8h+var_214], ebx
                movzx   ebx, [rsp+2B8h+var_218]
                jmp     loc_140218FFA
;   } // starts at 14021964F
; ---------------------------------------------------------------------------

loc_1402196C0:                          ; DATA XREF: .rdata:000000014004CC3C↑o
;   __except(1) // owned by 14021964F
                mov     edi, eax
                mov     [rsp+2B8h+var_214], eax
                movzx   ebx, [rsp+2B8h+var_217]
                mov     rsi, [rsp+2B8h+var_1E8]
                mov     r14d, [rsp+2B8h+var_208]
                movzx   r12d, [rsp+2B8h+arg_60]
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_1402196EF:                          ; CODE XREF: sub_140218580+47A↑j
                mov     edi, 0C000005Ch
                mov     [rsp+2B8h+var_214], edi
                movzx   ebx, [rsp+2B8h+var_218]

loc_140219703:                          ; CODE XREF: sub_140218580+11A1↓j
                                        ; sub_140218580+11CC↓j ...
                movzx   r12d, [rsp+2B8h+arg_60]
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_140219711:                          ; CODE XREF: sub_140218580+501↑j
                                        ; sub_140218580+52C↑j ...
                mov     edi, 0C0000079h
                mov     [rsp+2B8h+var_214], edi

loc_14021971D:                          ; CODE XREF: sub_140218580+4BC↑j
                                        ; sub_140218580+4F2↑j
                movzx   ebx, r15b
                jmp     short loc_140219703
; ---------------------------------------------------------------------------

loc_140219723:                          ; CODE XREF: sub_140218580+45B↑j
                mov     rsi, rbx
                mov     [rsp+2B8h+var_1E8], rbx
                movzx   ebx, [rsp+2B8h+var_218]
                movzx   r12d, [rsp+2B8h+arg_60]
                jmp     loc_140218FFA
; ---------------------------------------------------------------------------

loc_140219744:                          ; CODE XREF: sub_140218580+5B0↑j
                                        ; sub_140218580+604↑j ...
                movzx   ebx, [rsp+2B8h+var_218]
                jmp     short loc_140219703
; } // starts at 140218580
sub_140218580   endp

; ---------------------------------------------------------------------------
algn_14021974E:                         ; DATA XREF: .rdata:000000014004CC84↑o
                                        ; .pdata:00000001400CA368↑o
                align 20h
; Exported entry 1842. PsGetProcessInheritedFromUniqueProcessId

; =============== S U B R O U T I N E =======================================


                public PsGetProcessInheritedFromUniqueProcessId
PsGetProcessInheritedFromUniqueProcessId proc near
                                        ; CODE XREF: PsChargeProcessWakeCounter+1F↓p
                                        ; DATA XREF: .rdata:0000000140008FA0↑o ...
                mov     rax, [rcx+540h]
                retn
PsGetProcessInheritedFromUniqueProcessId endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140219769:                         ; DATA XREF: .pdata:00000001400CA374↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140219770   proc near               ; CODE XREF: sub_140617090+51↓p
                                        ; sub_1406FD6FC+52↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_58          = xmmword ptr -58h
var_48          = byte ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014042741A SIZE 0000003F BYTES

                mov     r11, rsp
                mov     [r11+18h], r8d
                mov     [r11+10h], rdx
                push    rdi
                sub     rsp, 90h

loc_140219783:                          ; DATA XREF: .rdata:000000014004CF50↑o
                                        ; .rdata:000000014004CF78↑o ...
                mov     [r11+20h], rbx
                mov     rbx, rcx

loc_14021978A:                          ; DATA XREF: .rdata:000000014004CF78↑o
                                        ; .rdata:000000014004CF88↑o ...
                mov     [r11-10h], rbp
                mov     ebp, [rcx+30h]
                mov     [r11-18h], rsi
                mov     rsi, [rcx+20h]
                mov     [r11-20h], r12
                mov     [r11-28h], r13
                movzx   r13d, r9b
                shr     ebp, 15h
                and     bpl, 1
                mov     [r11-30h], r14
                mov     [r11-38h], r15
                test    rsi, rsi
                jz      loc_140219982
                cmp     byte ptr [rcx+3Ah], 0
                jz      loc_1402199B8
                mov     rdi, [rsi+30h]
                lea     rdx, [r11-58h]
                movzx   r15d, byte ptr [rcx+3Bh]
                xorps   xmm0, xmm0
                xor     eax, eax
                mov     rcx, rdi
                movups  [rsp+98h+var_58], xmm0
                mov     [r11-48h], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rdi+0Ch]
                xor     r12d, r12d
                cmp     eax, [rdi+8]
                jnb     loc_1402199F8
                mov     rcx, [rdi+20h]
                test    rcx, rcx
                jz      short loc_14021980C
                mov     rax, [rcx]
                mov     [rdi+20h], rax
                mov     eax, [rdi+0Ch]

loc_14021980C:                          ; CODE XREF: sub_140219770+90↑j
                mov     r14, [rcx+8]
                inc     eax
                mov     [rdi+0Ch], eax

loc_140219815:                          ; CODE XREF: sub_140219770+293↓j
                                        ; sub_140219770+29B↓j
                lea     rcx, [rsp+98h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+98h+var_48]
                test    eax, eax
                jnz     loc_140219918

loc_140219832:                          ; CODE XREF: sub_140219770+1AA↓j
                                        ; sub_140219770+1B6↓j ...
                mov     cr8, rdi
                mov     eax, 11h
                lock cmpxchg [rsi+160h], r12
                jnz     loc_1402199D5

loc_14021984A:                          ; CODE XREF: sub_140219770+271↓j
                lea     rcx, [rsi+160h]
                call    sub_140243660
                test    r14, r14
                jz      short loc_140219885
                mov     rdx, [rsi+28h]
                neg     r15b
                mov     rcx, [rsi+20h]
                mov     [rsp+98h+var_60], 1
                sbb     r8, r8
                mov     [rsp+98h+var_68], r14
                xor     r9d, r9d
                mov     [rsp+98h+var_70], r12b
                mov     [rsp+98h+var_78], r12
                call    sub_1402C3040

loc_140219885:                          ; CODE XREF: sub_140219770+E9↑j
                                        ; sub_140219770+243↓j ...
                call    KeLeaveCriticalRegion
                mov     rax, [rsp+98h+arg_20]
                movzx   r9d, bpl
                mov     edx, [rsp+98h+arg_10]
                movzx   r8d, r13b
                mov     rcx, [rsp+98h+arg_8]
                mov     [rsp+98h+var_78], rax
                call    KeWaitForSingleObject
                mov     rcx, gs:188h
                mov     edi, eax
                dec     word ptr [rcx+1E4h]
                cmp     cs:byte_140CF4A08, 0
                mov     r15, [rsp+98h+var_38]
                mov     r14, [rsp+98h+var_30]
                mov     r13, [rsp+98h+var_28]
                mov     r12, [rsp+98h+var_20]
                mov     rsi, [rsp+98h+var_18]
                mov     rbp, [rsp+98h+var_10]
                jnz     loc_14042744C

loc_1402198F6:                          ; CODE XREF: sub_140219770+20DCE4↓j
                                        ; DATA XREF: .pdata:00000001400CA398↑o ...
                mov     rcx, [rbx+20h]
                mov     rbx, [rsp+98h+arg_18]
                test    rcx, rcx
                jz      short loc_14021990C

loc_140219907:                          ; DATA XREF: .pdata:00000001400CA3A4↑o
                                        ; .pdata:00000001400CA3B0↑o
                call    PsDereferenceSiloContext

loc_14021990C:                          ; CODE XREF: sub_140219770+195↑j
                mov     eax, edi
                add     rsp, 90h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140219918:                          ; CODE XREF: sub_140219770+BC↑j
                                        ; DATA XREF: .pdata:00000001400CA3B0↑o ...
                test    al, 1
                jz      loc_140219832
                mov     rax, cr8
                cmp     al, 0Fh
                ja      loc_140219832
                cmp     dil, 0Fh
                ja      loc_140219832
                cmp     al, 2
                jb      loc_140219832
                mov     r10, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+98h+var_48]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     loc_140219832
                mov     rcx, r10
                call    sub_1403F2EC4
                jmp     loc_140219832
; ---------------------------------------------------------------------------

loc_140219982:                          ; CODE XREF: sub_140219770+47↑j
                mov     rcx, [rcx+18h]
                test    rcx, rcx
                jz      short loc_1402199E6
                cmp     [rsp+98h+arg_28], 0
                mov     edx, 1
                mov     eax, 5
                mov     r8d, edx
                cmovnz  eax, edx
                add     rcx, 488h
                mov     dword ptr [rsp+98h+var_78], eax
                call    sub_1402CBA10
                jmp     loc_140219885
; ---------------------------------------------------------------------------

loc_1402199B8:                          ; CODE XREF: sub_140219770+51↑j
                mov     rcx, [rsi+0F8h]
                mov     edx, 1
                mov     r8d, edx
                mov     dword ptr [rsp+98h+var_78], edx
                call    sub_1402CBA10
                jmp     loc_140219885
; ---------------------------------------------------------------------------

loc_1402199D5:                          ; CODE XREF: sub_140219770+D4↑j
                lea     rcx, [rsi+160h]
                call    ExfReleasePushLockShared
                jmp     loc_14021984A
; ---------------------------------------------------------------------------

loc_1402199E6:                          ; CODE XREF: sub_140219770+219↑j
                mov     rcx, [rbx+28h]
                test    cl, 1
                jz      loc_140219885
                jmp     loc_14042741A
; ---------------------------------------------------------------------------

loc_1402199F8:                          ; CODE XREF: sub_140219770+83↑j
                mov     r14, r12
                test    r15b, r15b
                jnz     short loc_140219A08
                inc     dword ptr [rdi+10h]
                jmp     loc_140219815
; ---------------------------------------------------------------------------

loc_140219A08:                          ; CODE XREF: sub_140219770+28E↑j
                inc     dword ptr [rdi+14h]
                jmp     loc_140219815
sub_140219770   endp

; ---------------------------------------------------------------------------
algn_140219A10:                         ; DATA XREF: .pdata:00000001400CA3BC↑o
                align 20h
; Exported entry 339. ExTryAcquirePushLockExclusiveEx

; =============== S U B R O U T I N E =======================================


                public ExTryAcquirePushLockExclusiveEx
ExTryAcquirePushLockExclusiveEx proc near
                                        ; DATA XREF: .rdata:000000014004D294↑o
                                        ; .rdata:000000014004D2A8↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041C0A2 SIZE 0000003B BYTES

                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041C0A2
                test    dl, 2
                jnz     short loc_140219AA3
                mov     [rsp+38h+arg_10], edi

loc_140219A44:                          ; DATA XREF: .rdata:000000014004D294↑o
                                        ; .rdata:000000014004D2A8↑o ...
                mov     [rsp+38h+arg_0], rbx
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jz      short loc_140219AC6
                lock bts dword ptr [rbx+78h], 10h

loc_140219A6E:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+131↓j
                                        ; ExTryAcquirePushLockExclusiveEx+179↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+38h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140219A9E
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     loc_140219B6D

loc_140219A9E:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+6C↑j
                                        ; ExTryAcquirePushLockExclusiveEx+152↓j
                mov     rbx, [rsp+38h+arg_0]

loc_140219AA3:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+1E↑j
                                        ; DATA XREF: .pdata:00000001400CA3D4↑o ...
                lock bts qword ptr [rsi], 0
                jb      loc_140219B56
                test    rdi, rdi
                jz      short loc_140219AB8
                or      byte ptr [rdi+1Ah], 1

loc_140219AB8:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+92↑j
                mov     al, 1

loc_140219ABA:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+148↓j
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140219AC6:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+46↑j
                                        ; DATA XREF: .pdata:00000001400CA3E0↑o ...
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+38h+arg_8], edi
                test    al, al
                jz      loc_140219B77

loc_140219AD9:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+16E↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+38h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]

loc_140219AFB:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+188↓j
                                        ; ExTryAcquirePushLockExclusiveEx+2026A6↓j
                test    rdi, rdi
                jz      loc_140219B93
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_140219B35
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_14041C0CB

loc_140219B35:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+F1↑j
                mov     eax, 0FFFFFFFFh

loc_140219B3A:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+2026B8↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax
                jmp     loc_140219A6E
; ---------------------------------------------------------------------------

loc_140219B56:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+89↑j
                                        ; DATA XREF: .pdata:00000001400CA3EC↑o ...
                test    rdi, rdi
                jz      short loc_140219B66
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14031D1B0

loc_140219B66:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+139↑j
                xor     al, al
                jmp     loc_140219ABA
; ---------------------------------------------------------------------------

loc_140219B6D:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+78↑j
                                        ; DATA XREF: .pdata:00000001400CA3F8↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     loc_140219A9E
; ---------------------------------------------------------------------------

loc_140219B77:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+B3↑j
                cmp     [rbx+366h], dil
                jz      short loc_140219B9E
                mov     eax, edi
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_140219AD9
; ---------------------------------------------------------------------------

loc_140219B93:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+DE↑j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_140219A6E
; ---------------------------------------------------------------------------

loc_140219B9E:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+15E↑j
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      loc_140219AFB
                jmp     loc_14041C0BA
ExTryAcquirePushLockExclusiveEx endp

; ---------------------------------------------------------------------------
byte_140219BB3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA404↑o

; =============== S U B R O U T I N E =======================================


sub_140219BBC   proc near               ; CODE XREF: sub_1402F1894+84↓p
                                        ; sub_1402FBC28+1E↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042745A SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rbx, [rcx+5C0h]
                mov     r14, rdx
                and     dword ptr [rdx], 0
                mov     rdi, rcx
                test    rbx, rbx
                jnz     short loc_140219C00

loc_140219BE6:                          ; CODE XREF: sub_140219BBC+50↓j
                                        ; sub_140219BBC+9F↓j
                mov     rsi, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140219C00:                          ; CODE XREF: sub_140219BBC+28↑j
                mov     rax, gs:188h
                cmp     rdi, rax
                jz      short loc_140219BE6
                lea     rcx, dword_140C1DF40
                call    ExAcquireSpinLockShared
                mov     rbx, [rdi+5C0h]
                movzx   esi, al
                test    rbx, rbx
                jz      short loc_140219C3D
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     dword ptr [r14], 1

loc_140219C3D:                          ; CODE XREF: sub_140219BBC+6B↑j
                lea     rcx, dword_140C1DF40
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042745A

loc_140219C57:                          ; CODE XREF: sub_140219BBC+20D8A0↓j
                                        ; sub_140219BBC+20D8AC↓j ...
                mov     cr8, rsi
                jmp     short loc_140219BE6
sub_140219BBC   endp

; ---------------------------------------------------------------------------
byte_140219C5D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014004D32C↑o
                                        ; .pdata:00000001400CA410↑o

; =============== S U B R O U T I N E =======================================


sub_140219C64   proc near               ; CODE XREF: sub_140615D50+2EB↓p
                                        ; NtQueryInformationThread+50F↓p ...
                mov     eax, [rcx+480h]
                mov     [rdx], eax
                mov     eax, [rcx+430h]
                mov     [rdx+4], eax
                mov     rax, cs:qword_140D2E988
                xor     [rdx], rax
                retn
sub_140219C64   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140219C81:                         ; DATA XREF: .pdata:00000001400CA41C↑o
                align 10h
; Exported entry 1686. ObfReferenceObjectWithTag

; =============== S U B R O U T I N E =======================================


                public ObfReferenceObjectWithTag
ObfReferenceObjectWithTag proc near     ; CODE XREF: sub_140200540+47↑p
                                        ; sub_14020091C+42↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041C0DE SIZE 00000031 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140CFB010, 0
                mov     rsi, rcx
                mov     ebx, 1
                jnz     loc_14041C0DE

loc_140219CB4:                          ; CODE XREF: ObfReferenceObjectWithTag+202461↓j
                lock xadd [rsi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_14041C0F6
                mov     rsi, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObfReferenceObjectWithTag endp

byte_140219CDB  db 15h dup(0CCh)        ; DATA XREF: .rdata:000000014004D350↑o
                                        ; .pdata:00000001400CA428↑o
; Exported entry 1020. IoThreadToProcess
; Exported entry 1869. PsGetThreadProcess

; =============== S U B R O U T I N E =======================================


                public PsGetThreadProcess
PsGetThreadProcess proc near            ; CODE XREF: sub_140615D50+2C9↓p
                                        ; NtQueryInformationThread+43B↓p ...
                mov     rax, [rcx+220h] ; IoThreadToProcess
                retn
PsGetThreadProcess endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140219CF9:                         ; DATA XREF: .pdata:00000001400CA434↑o
                align 20h
; Exported entry 1710. PoEnergyEstimationEnabled

; =============== S U B R O U T I N E =======================================


                public PoEnergyEstimationEnabled
PoEnergyEstimationEnabled proc near     ; CODE XREF: sub_140603530:loc_1406035DA↓p
                                        ; sub_14060DA00:loc_1406104D5↓p ...
                mov     al, cs:byte_140C24EE0
                retn
PoEnergyEstimationEnabled endp

; ---------------------------------------------------------------------------
                align 8
algn_140219D08:                         ; DATA XREF: .pdata:00000001400CA440↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140219D10   proc near               ; CODE XREF: sub_1405F39EC+5A↓p
                                        ; sub_140618E00+A7↓p ...
                mov     eax, cs:dword_140C2AF04
                retn
sub_140219D10   endp

; ---------------------------------------------------------------------------
                align 8
algn_140219D18:                         ; DATA XREF: .pdata:00000001400CA44C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140219D20   proc near               ; CODE XREF: sub_1402164D0+6D↑p
                                        ; DATA XREF: .pdata:00000001400CA458↑o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 48h
                xor     ebp, ebp
                mov     [rsp+68h+arg_8], 0
                mov     [rdx], rbp
                mov     rdi, r9
                mov     [r8], bpl
                mov     rsi, r8
                mov     [r9], rbp
                mov     rbx, rdx
                mov     rax, gs:188h
                mov     [rsp+68h+var_38], ebp
                mov     [rsp+68h+var_34], ebp
                mov     [rsp+68h+arg_0], bpl
                cmp     rcx, 0FFFFFFFFFFFFFFFCh
                jz      loc_140219E1B
                cmp     rcx, 0FFFFFFFFFFFFFFFBh
                lea     rcx, [rsp+68h+arg_0]
                jz      short loc_140219D95
                mov     [rsp+68h+var_48], rcx
                lea     r9, [rsp+68h+var_38]
                mov     rcx, rax
                lea     r8, [rsp+68h+arg_8]
                lea     rdx, [rsp+68h+var_34]
                call    sub_14061A080
                cmp     [rsp+68h+var_34], 2
                mov     r11, rax
                jz      short loc_140219DC3
                jmp     short loc_140219DCD
; ---------------------------------------------------------------------------

loc_140219D95:                          ; CODE XREF: sub_140219D20+4B↑j
                mov     [rsp+68h+var_40], rcx
                lea     r9, [rsp+68h+arg_8]
                lea     rcx, [rsp+68h+var_38]
                xor     edx, edx
                mov     [rsp+68h+var_48], rcx
                lea     r8, [rsp+68h+arg_18]
                mov     rcx, rax
                call    sub_140652700
                mov     r11, rax
                test    rax, rax
                jz      short loc_140219E41

loc_140219DC3:                          ; CODE XREF: sub_140219D20+71↑j
                cmp     [rsp+68h+var_38], ebp
                jz      loc_140219E50

loc_140219DCD:                          ; CODE XREF: sub_140219D20+73↑j
                mov     r9, [r11+450h]
                lea     rcx, [rsp+68h+arg_0]
                mov     [rsi], bpl
                mov     [rdi], rbp
                mov     [rsp+68h+arg_10], bpl
                call    sub_140219F70
                lea     r8, [rsp+68h+arg_10]
                mov     rdx, r9
                mov     rcx, rax
                mov     rbp, rax
                call    sub_140219E70
                cmp     [rsp+68h+arg_10], 0
                jz      short loc_140219E39

loc_140219E0C:                          ; CODE XREF: sub_140219D20+11F↓j
                mov     [rbx], r11
                xor     eax, eax
                add     rsp, 48h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140219E1B:                          ; CODE XREF: sub_140219D20+3C↑j
                mov     rcx, [rax+0B8h]
                call    PsReferencePrimaryToken
                mov     r11, rax
                mov     [rbx], rax
                xor     eax, eax
                add     rsp, 48h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140219E39:                          ; CODE XREF: sub_140219D20+EA↑j
                mov     byte ptr [rsi], 1
                mov     [rdi], rbp
                jmp     short loc_140219E0C
; ---------------------------------------------------------------------------

loc_140219E41:                          ; CODE XREF: sub_140219D20+A1↑j
                mov     eax, 0C000007Ch
                add     rsp, 48h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140219E50:                          ; CODE XREF: sub_140219D20+A7↑j
                mov     rcx, rax
                call    PsDereferenceSiloContext
                mov     eax, 0C00000A6h
                add     rsp, 48h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140219D20   endp

algn_140219E67:                         ; DATA XREF: .pdata:00000001400CA458↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140219E70   proc near               ; CODE XREF: sub_140219D20+DD↑p
                                        ; sub_14021BD38+38↓p ...
                sub     rsp, 28h
                mov     byte ptr [r8], 0
                mov     r9, rdx
                mov     r10, rcx
                test    rcx, rcx
                jnz     short loc_140219E95

loc_140219E83:                          ; CODE XREF: sub_140219E70+2C↓j
                test    r9, r9
                jnz     short loc_140219EA5

loc_140219E88:                          ; CODE XREF: sub_140219E70+58↓j
                                        ; sub_140219E70+61↓j
                mov     al, 1
                mov     [r8], al
                xor     eax, eax

loc_140219E8F:                          ; CODE XREF: sub_140219E70+33↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140219E95:                          ; CODE XREF: sub_140219E70+11↑j
                call    sub_140219FF0
                test    al, al
                jnz     short loc_140219E83

loc_140219E9E:                          ; CODE XREF: sub_140219E70+3F↓j
                mov     eax, 0C000000Dh
                jmp     short loc_140219E8F
; ---------------------------------------------------------------------------

loc_140219EA5:                          ; CODE XREF: sub_140219E70+16↑j
                mov     rcx, r9
                call    sub_140219FF0
                test    al, al
                jz      short loc_140219E9E
                test    r10, r10
                jz      short loc_140219ECC
                mov     eax, [r9+8]
                cmp     [r10+8], eax
                jb      short loc_140219ED3
                mov     eax, [r9+0Ch]
                cmp     [r10+0Ch], eax
                jnb     short loc_140219E88
                jmp     short loc_140219ED3
; ---------------------------------------------------------------------------

loc_140219ECC:                          ; CODE XREF: sub_140219E70+44↑j
                cmp     dword ptr [r9+8], 0
                jbe     short loc_140219E88

loc_140219ED3:                          ; CODE XREF: sub_140219E70+4E↑j
                                        ; sub_140219E70+5A↑j
                xor     al, al
                mov     [r8], al
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140219E70   endp

byte_140219EE0  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA464↑o

; =============== S U B R O U T I N E =======================================


sub_140219EF0   proc near               ; CODE XREF: SeCreateClientSecurityEx+D4↓p
                                        ; SeCreateClientSecurity+D7↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     byte ptr [r8], 0
                mov     r10, rcx
                mov     rcx, rdx
                mov     qword ptr [r9], 0
                mov     rbx, r8
                call    sub_140219F70
                mov     r11, rax
                test    rax, rax
                jnz     short loc_140219F23

loc_140219F17:                          ; CODE XREF: sub_140219EF0+3D↓j
                test    r10, r10
                jnz     short loc_140219F31

loc_140219F1C:                          ; CODE XREF: sub_140219EF0+64↓j
                                        ; sub_140219EF0+6D↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140219F23:                          ; CODE XREF: sub_140219EF0+25↑j
                mov     rcx, r11
                call    sub_140219FF0
                test    al, al
                jnz     short loc_140219F17
                jmp     short loc_140219F5F
; ---------------------------------------------------------------------------

loc_140219F31:                          ; CODE XREF: sub_140219EF0+2A↑j
                mov     rcx, r10
                call    sub_140219FF0
                test    al, al
                jz      short loc_140219F5F
                test    r11, r11
                jz      short loc_140219F58
                mov     eax, [r10+8]
                cmp     [r11+8], eax
                jb      short loc_140219F5F
                mov     eax, [r10+0Ch]
                cmp     [r11+0Ch], eax
                jnb     short loc_140219F1C
                jmp     short loc_140219F5F
; ---------------------------------------------------------------------------

loc_140219F58:                          ; CODE XREF: sub_140219EF0+50↑j
                cmp     dword ptr [r10+8], 0
                jbe     short loc_140219F1C

loc_140219F5F:                          ; CODE XREF: sub_140219EF0+3F↑j
                                        ; sub_140219EF0+4B↑j ...
                mov     byte ptr [rbx], 1
                mov     [r9], r11
                jmp     short loc_140219F1C
sub_140219EF0   endp

; ---------------------------------------------------------------------------
algn_140219F67:                         ; DATA XREF: .pdata:00000001400CA470↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140219F70   proc near               ; CODE XREF: sub_140202EC8+28↑p
                                        ; sub_140219D20+C7↑p ...

; FUNCTION CHUNK AT 00000001404274BE SIZE 0000000C BYTES

                movzx   edx, byte ptr [rcx]
                xor     r8d, r8d
                sub     edx, 12h
                jz      loc_1404274BE
                sub     edx, 1Fh
                jz      short loc_140219FB0
                sub     edx, 20h ; ' '
                jz      short loc_140219FA7
                sub     edx, 1
                jz      short loc_140219FCB
                sub     edx, 0Fh
                jz      short loc_140219FC2
                sub     edx, 1
                jz      short loc_140219FB9
                sub     edx, 10h
                jz      short loc_140219FB9
                cmp     edx, 0Fh
                jz      short loc_140219FD4

loc_140219FA2:                          ; CODE XREF: sub_140219F70+3E↓j
                                        ; sub_140219F70+47↓j ...
                mov     rax, r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140219FA7:                          ; CODE XREF: sub_140219F70+17↑j
                mov     r8, cs:qword_140C1DA38
                jmp     short loc_140219FA2
; ---------------------------------------------------------------------------

loc_140219FB0:                          ; CODE XREF: sub_140219F70+12↑j
                mov     r8, cs:qword_140C1D9D0
                jmp     short loc_140219FA2
; ---------------------------------------------------------------------------

loc_140219FB9:                          ; CODE XREF: sub_140219F70+26↑j
                                        ; sub_140219F70+2B↑j
                mov     r8, cs:qword_140C1D9F8
                jmp     short loc_140219FA2
; ---------------------------------------------------------------------------

loc_140219FC2:                          ; CODE XREF: sub_140219F70+21↑j
                mov     r8, cs:qword_140C1D9D8
                jmp     short loc_140219FA2
; ---------------------------------------------------------------------------

loc_140219FCB:                          ; CODE XREF: sub_140219F70+1C↑j
                mov     r8, cs:qword_140C1D9E0
                jmp     short loc_140219FA2
; ---------------------------------------------------------------------------

loc_140219FD4:                          ; CODE XREF: sub_140219F70+30↑j
                mov     r8, cs:qword_140C1DA40
                jmp     short loc_140219FA2
sub_140219F70   endp

; ---------------------------------------------------------------------------
byte_140219FDD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA47C↑o

; =============== S U B R O U T I N E =======================================


sub_140219FF0   proc near               ; CODE XREF: sub_140219E70:loc_140219E95↑p
                                        ; sub_140219E70+38↑p ...

var_18          = dword ptr -18h
var_14          = word ptr -14h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                sub     rsp, 18h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+18h+var_10], rax
                cmp     byte ptr [rcx+1], 2
                mov     [rsp+18h+var_18], 0
                mov     [rsp+18h+var_14], 1300h
                jnz     short loc_14021A053
                cmp     byte ptr [rcx], 1
                jnz     short loc_14021A053
                mov     edx, [rcx+2]
                sub     edx, [rsp+18h+var_18]
                jnz     short loc_14021A02F
                movzx   edx, word ptr [rcx+6]
                movzx   eax, [rsp+18h+var_14]
                sub     edx, eax

loc_14021A02F:                          ; CODE XREF: sub_140219FF0+32↑j
                test    edx, edx
                jnz     short loc_14021A053
                cmp     [rcx+8], edx
                jz      short loc_14021A04D

loc_14021A038:                          ; CODE XREF: sub_140219FF0+61↓j
                mov     al, 1

loc_14021A03A:                          ; CODE XREF: sub_140219FF0+65↓j
                mov     rcx, [rsp+18h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 18h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021A04D:                          ; CODE XREF: sub_140219FF0+46↑j
                cmp     dword ptr [rcx+0Ch], 0
                jz      short loc_14021A038

loc_14021A053:                          ; CODE XREF: sub_140219FF0+25↑j
                                        ; sub_140219FF0+2A↑j ...
                xor     al, al
                jmp     short loc_14021A03A
; } // starts at 140219FF0
sub_140219FF0   endp

; ---------------------------------------------------------------------------
algn_14021A057:                         ; DATA XREF: .pdata:00000001400CA488↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021A060   proc near               ; CODE XREF: sub_140617520+233↓p
                                        ; sub_14061B84C+21↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404274CA SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                xor     ebx, ebx
                mov     rcx, [rcx+20h]
                test    rcx, rcx
                jnz     short loc_14021A0AF
                mov     rax, [rdi+18h]
                test    rax, rax
                jz      short loc_14021A0C4
                test    dl, dl
                lea     rcx, [rax+488h]
                lea     edx, [rbx+1]
                jnz     loc_1404274CA
                mov     [rsp+38h+var_18], 2

loc_14021A09B:                          ; CODE XREF: sub_14021A060+AE↓j
                                        ; sub_14021A060+20D479↓j
                mov     r8d, edx
                call    sub_1402CBA10

loc_14021A0A3:                          ; CODE XREF: sub_14021A060+62↓j
                                        ; sub_14021A060+6B↓j ...
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021A0AF:                          ; CODE XREF: sub_14021A060+16↑j
                cmp     [rdi+3Ah], bl
                jz      short loc_14021A0F9
                mov     r9b, dl
                mov     r8b, 1
                mov     dl, [rdi+3Bh]
                call    sub_14033FFB4
                jmp     short loc_14021A0A3
; ---------------------------------------------------------------------------

loc_14021A0C4:                          ; CODE XREF: sub_14021A060+1F↑j
                mov     rcx, [rdi+28h]
                test    cl, 1
                jz      short loc_14021A0A3
                cmp     rcx, 4
                jb      short loc_14021A0F3
                mov     r8b, dl
                and     rcx, 0FFFFFFFFFFFFFFFCh
                xor     edx, edx
                call    KeSetEvent
                mov     rcx, [rdi+28h]
                test    cl, 2
                jz      short loc_14021A0F3
                and     rcx, 0FFFFFFFFFFFFFFFCh
                call    PsDereferenceSiloContext

loc_14021A0F3:                          ; CODE XREF: sub_14021A060+71↑j
                                        ; sub_14021A060+88↑j
                mov     [rdi+28h], rbx
                jmp     short loc_14021A0A3
; ---------------------------------------------------------------------------

loc_14021A0F9:                          ; CODE XREF: sub_14021A060+52↑j
                mov     rcx, [rcx+0F8h]
                test    dl, dl
                mov     edx, 1
                setnz   bl
                mov     [rsp+38h+var_18], ebx
                jmp     short loc_14021A09B
sub_14021A060   endp

; ---------------------------------------------------------------------------
algn_14021A110:                         ; DATA XREF: .rdata:000000014004D918↑o
                                        ; .pdata:00000001400CA494↑o
                align 20h
; Exported entry 1258. KeQueryTotalCycleTimeThread

; =============== S U B R O U T I N E =======================================


                public KeQueryTotalCycleTimeThread
KeQueryTotalCycleTimeThread proc near   ; CODE XREF: NtQueryInformationThread+242↓p
                                        ; DATA XREF: .rdata:000000014004DC3C↑o ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = dword ptr -0E8h
var_E4          = byte ptr -0E4h
var_38          = qword ptr -38h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404274DE SIZE 0000026E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_38], rax
                mov     rsi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+138h+var_E8]
                mov     r8d, 0A8h
                call    memset
                mov     rax, gs:188h
                xor     r15d, r15d
                mov     [rsp+138h+var_F8], r15
                mov     [rsp+138h+var_100], r15
                cmp     rbx, rax
                jnz     loc_1404274DE
                cli
                mov     rdi, gs:20h
                mov     byte ptr [rdi+20h], 1
                rdtsc
                mov     r14, [rbx+48h]
                mov     ecx, 0FFFFFFFFh
                shl     rdx, 20h
                or      rax, rdx
                mov     r8, rax
                mov     rbp, rax
                sub     r8, [rdi+7EC0h]
                mov     eax, [rbx+50h]
                add     r14, r8
                add     rax, r8
                mov     [rbx+48h], r14
                cmp     rax, rcx
                ja      short loc_14021A218

loc_14021A1BB:                          ; CODE XREF: KeQueryTotalCycleTimeThread+FB↓j
                mov     [rdi+7EC0h], rbp
                test    byte ptr [rbx+2], 3Eh
                mov     [rbx+50h], eax
                jz      short loc_14021A1D6
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14028E100

loc_14021A1D6:                          ; CODE XREF: KeQueryTotalCycleTimeThread+A9↑j
                test    rsi, rsi
                jz      short loc_14021A1DE
                mov     [rsi], rbp

loc_14021A1DE:                          ; CODE XREF: KeQueryTotalCycleTimeThread+B9↑j
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14028DFE0
                sti
                mov     rax, r14

loc_14021A1F0:                          ; CODE XREF: KeQueryTotalCycleTimeThread+20D627↓j
                mov     rcx, [rsp+138h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+138h+arg_10]
                add     rsp, 110h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14021A218:                          ; CODE XREF: KeQueryTotalCycleTimeThread+99↑j
                mov     rax, rcx
                jmp     short loc_14021A1BB
; } // starts at 14021A120
KeQueryTotalCycleTimeThread endp

; ---------------------------------------------------------------------------
byte_14021A21D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014004DC3C↑o
                                        ; .pdata:00000001400CA4A0↑o

; =============== S U B R O U T I N E =======================================


sub_14021A224   proc near               ; CODE XREF: NtQueryInformationThread+474↓p
                                        ; DATA XREF: .rdata:000000014004DC68↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014042774C SIZE 000000F2 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, [rcx+220h]
                mov     rdi, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14042774C

loc_14021A265:                          ; CODE XREF: sub_14021A224+20D52A↓j
                                        ; sub_14021A224+20D534↓j ...
                lea     rcx, [r15+40h]
                call    ExAcquireSpinLockSharedAtDpcLevel
                mov     rbx, gs:20h
                and     [rsp+38h+arg_0], 0

loc_14021A27C:                          ; CODE XREF: sub_14021A224+FA↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14042778D

loc_14021A28C:                          ; CODE XREF: sub_14021A224+20D56D↓j
                                        ; sub_14021A224+20D57C↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      short loc_14021A2FB
                movsx   eax, byte ptr [r15+280h]
                movsx   ebx, byte ptr [rdi+233h]
                sub     ebx, eax
                movsx   eax, byte ptr [rdi+285h]
                test    al, al
                jnz     short loc_14021A2F4

loc_14021A2B1:                          ; CODE XREF: sub_14021A224+D5↓j
                mov     rcx, rdi
                call    sub_1403261B0
                lea     rcx, [r15+40h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404277DB

loc_14021A2D0:                          ; CODE XREF: sub_14021A224+20D5B9↓j
                                        ; sub_14021A224+20D5C5↓j ...
                movzx   ecx, sil
                mov     cr8, rcx
                mov     rbp, [rsp+38h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021A2F4:                          ; CODE XREF: sub_14021A224+8B↑j
                mov     ebx, eax
                shl     ebx, 4
                jmp     short loc_14021A2B1
; ---------------------------------------------------------------------------

loc_14021A2FB:                          ; CODE XREF: sub_14021A224+6F↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_1404277B4

loc_14021A30B:                          ; CODE XREF: sub_14021A224+F8↓j
                                        ; sub_14021A224+20D594↓j ...
                lea     rcx, [rsp+38h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_14021A30B
                jmp     loc_14021A27C
sub_14021A224   endp

; ---------------------------------------------------------------------------
algn_14021A323:                         ; DATA XREF: .rdata:000000014004DC68↑o
                                        ; .pdata:00000001400CA4AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021A330   proc near               ; CODE XREF: sub_1403930AC+5FB↓p
                                        ; sub_1404F0990+182↓p ...

var_128         = qword ptr -128h
var_120         = dword ptr -120h
var_118         = word ptr -118h
var_108         = dword ptr -108h
var_104         = byte ptr -104h
var_103         = byte ptr -103h
var_100         = qword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = byte ptr -0A8h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h
arg_38          = dword ptr  40h

; FUNCTION CHUNK AT 0000000140418650 SIZE 0000002C BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_18], r9d
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+148h+var_48], rax
                mov     r15d, r9d
                mov     rdi, r8
                mov     r12, rdx
                mov     [rsp+148h+var_F0], rdx
                mov     rsi, rcx
                mov     rax, [rsp+148h+arg_20]
                mov     [rsp+148h+var_D0], rax
                xor     eax, eax
                mov     ebx, eax
                mov     [rsp+148h+var_108], eax
                mov     [rsp+148h+var_100], rax
                mov     [rsp+148h+var_E8], rax
                mov     [rsp+148h+var_104], al
                xor     r13b, r13b
                mov     [rsp+148h+var_103], r13b
                mov     r14, [rcx]
                test    r14, r14
                jnz     short loc_14021A3A8
                call    sub_140707438
                mov     r14, rax
                mov     [rsi], rax

loc_14021A3A8:                          ; CODE XREF: sub_14021A330+6B↑j
                movzx   esi, [rsp+148h+arg_30]
                test    sil, sil
                jnz     short loc_14021A3D7
                cmp     r15d, 10000h
                jz      short loc_14021A3D7
                mov     rax, [r14+98h]
                mov     [rsp+148h+var_E8], rax
                mov     rcx, rax
                call    ExAcquireFastMutexUnsafe
                mov     [rsp+148h+var_104], 1

loc_14021A3D7:                          ; CODE XREF: sub_14021A330+83↑j
                                        ; sub_14021A330+8C↑j
                                        ; DATA XREF: ...
;   __try { // __finally(loc_140418650)
                mov     r11d, [r14+90h]
                bt      r11d, 10h
                jnb     loc_14021A535
                cmp     byte ptr [r12], 0Dh
                jnz     loc_14021A535
                lea     r8, [rsp+148h+var_100]
                mov     rdx, [r12+30h]
                mov     rcx, r14
                call    sub_14034C67C
                test    al, al
                jz      loc_14021A535
                bt      r11d, 11h
                jnb     short loc_14021A48A
                mov     rbx, [rsp+148h+var_100]
                mov     rcx, rbx
                call    sub_14021B14C
                lea     r10, [rbx+38h]
                mov     rcx, [r10]
                mov     rax, [r10+8]
                cmp     [rcx+8], r10
                jnz     short loc_14021A483
                cmp     [rax], r10
                jnz     short loc_14021A483
                mov     [rax], rcx
                mov     [rcx+8], rax
                lea     rax, [r14+78h]
                cmp     [rax], rax
                jnz     short loc_14021A453
                and     dword ptr [r14+90h], 0FFFCFFFFh

loc_14021A453:                          ; CODE XREF: sub_14021A330+116↑j
                cmp     qword ptr [rbx+28h], 0
                jz      short loc_14021A465
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_1403755C0

loc_14021A465:                          ; CODE XREF: sub_14021A330+128↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                xor     eax, eax
                mov     [rsp+148h+var_100], rax
                mov     rcx, r14
                call    sub_14021ACC0
                jmp     loc_14021AC54
; ---------------------------------------------------------------------------

loc_14021A483:                          ; CODE XREF: sub_14021A330+101↑j
                                        ; sub_14021A330+106↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14021A48A:                          ; CODE XREF: sub_14021A330+E3↑j
                lea     r12, [r14+58h]
                mov     rsi, [r12]

loc_14021A492:                          ; CODE XREF: sub_14021A330+185↓j
                cmp     rsi, r12
                jz      short loc_14021A4B7
                mov     rcx, rsi
                cmp     byte ptr [rsi+35h], 0
                jz      short loc_14021A4A9
                cmp     r15d, 3000h
                jz      short loc_14021A4B2

loc_14021A4A9:                          ; CODE XREF: sub_14021A330+16E↑j
                mov     rsi, [rsi+8]
                call    sub_1404F0D3C

loc_14021A4B2:                          ; CODE XREF: sub_14021A330+177↑j
                mov     rsi, [rsi]
                jmp     short loc_14021A492
; ---------------------------------------------------------------------------

loc_14021A4B7:                          ; CODE XREF: sub_14021A330+165↑j
                mov     rsi, [rsp+148h+var_100]
                mov     rcx, rsi
                call    sub_14021B14C
                lea     r10, [rsi+38h]
                mov     rcx, [r10]
                mov     rax, [r10+8]
                cmp     [rcx+8], r10
                jnz     loc_14021A690
                cmp     [rax], r10
                jnz     loc_14021A690
                mov     [rax], rcx
                mov     [rcx+8], rax
                lea     rax, [r14+78h]
                cmp     [rax], rax
                jnz     short loc_14021A4FD
                and     dword ptr [r14+90h], 0FFFCFFFFh

loc_14021A4FD:                          ; CODE XREF: sub_14021A330+1C0↑j
                cmp     qword ptr [rsi+28h], 0
                jz      short loc_14021A50F
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1403755C0

loc_14021A50F:                          ; CODE XREF: sub_14021A330+1D2↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                xor     eax, eax
                mov     [rsp+148h+var_100], rax
                mov     rcx, r14
                call    sub_14021ACC0
                mov     r12, [rsp+148h+var_F0]
                movzx   esi, [rsp+148h+arg_30]

loc_14021A535:                          ; CODE XREF: sub_14021A330+B3↑j
                                        ; sub_14021A330+BE↑j ...
                call    sub_1403EF954
                xor     ecx, ecx
                mov     r10d, ecx
                test    eax, eax
                setnz   r10b
                mov     edx, [rsp+148h+arg_38]
                mov     ecx, r15d
                call    sub_14061AD94
                test    r10d, r10d
                jz      loc_14021A697
                test    al, al
                jz      loc_14021AC54
                bt      r15d, 0Ch
                jb      short loc_14021A579
                cmp     r15d, 10000h
                jnz     loc_14021A6B1

loc_14021A579:                          ; CODE XREF: sub_14021A330+23A↑j
                mov     rax, [r12+30h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14021A6B1
                call    MmDoesFileHaveUserWritableReferences
                test    eax, eax
                jz      loc_14021A6B1
                cmp     r15d, 10000h
                jz      loc_14021AC65
                mov     rax, [rdi+18h]
                xor     r9d, r9d
                mov     [rax+8], r9d
                or      dword ptr [rax+0Ch], 4
                cmp     cs:dword_140C021A0, 5
                jbe     loc_14021AC54
                mov     rdx, 400000000000h
                lea     rcx, dword_140C021A0
                call    sub_140209F38
                test    al, al
                jz      loc_14021AC54
                mov     [rsp+148h+var_E0], 1
                lea     rax, [rsp+148h+var_E0]
                mov     [rsp+148h+var_88], rax
                mov     [rsp+148h+var_80], 8
                mov     [rsp+148h+var_F8], r15d
                lea     rax, [rsp+148h+var_F8]
                mov     [rsp+148h+var_78], rax
                mov     [rsp+148h+var_70], 4
                mov     eax, [r14+90h]
                mov     dword ptr [rsp+148h+var_F0], eax
                lea     rax, [rsp+148h+var_F0]
                mov     [rsp+148h+var_68], rax
                mov     [rsp+148h+var_60], 4
                mov     [rsp+148h+var_D8], 1000000h
                lea     rax, [rsp+148h+var_D8]
                mov     [rsp+148h+var_58], rax
                mov     [rsp+148h+var_50], 8
                lea     rax, [rsp+148h+var_A8]
                mov     [rsp+148h+var_128], rax
                mov     r9d, 6
                lea     rdx, byte_140023775
                lea     rcx, dword_140C021A0
                call    sub_1403761E4
                jmp     loc_14021AC54
; ---------------------------------------------------------------------------

loc_14021A690:                          ; CODE XREF: sub_14021A330+1A3↑j
                                        ; sub_14021A330+1AC↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14021A697:                          ; CODE XREF: sub_14021A330+227↑j
                test    al, al
                jnz     short loc_14021A6B1
                mov     dword ptr [rdi+30h], 0C00000E2h
                mov     dl, 1
                mov     rcx, rdi
                call    IofCompleteRequest
                jmp     loc_14021AC6E
; ---------------------------------------------------------------------------

loc_14021A6B1:                          ; CODE XREF: sub_14021A330+243↑j
                                        ; sub_14021A330+255↑j ...
                test    sil, sil
                jnz     short loc_14021A6D8
                mov     eax, [r14+90h]
                test    al, 40h
                jz      short loc_14021A6D8

loc_14021A6C1:                          ; CODE XREF: sub_14021A330+414↓j
                                        ; sub_14021A330+423↓j
                cmp     r15d, 10000h
                jnz     loc_14021AC54
                mov     ebx, 0C0000909h
                jmp     loc_14021AC6A
; ---------------------------------------------------------------------------

loc_14021A6D8:                          ; CODE XREF: sub_14021A330+384↑j
                                        ; sub_14021A330+38F↑j
                cmp     r15d, 10h
                jz      loc_14021AA3C
                cmp     r15d, 1000h
                jz      loc_14021AA63
                cmp     r15d, 3000h
                jz      short loc_14021A705
                cmp     r15d, 10000h
                jnz     loc_14021AC4F

loc_14021A705:                          ; CODE XREF: sub_14021A330+3C6↑j
                test    sil, sil
                jnz     short loc_14021A74A
                mov     ecx, [r14+90h]
                test    cl, 1
                jnz     short loc_14021A74A
                mov     eax, ecx
                and     eax, 1F0FFDFh
                cmp     eax, 1000h
                jz      short loc_14021A74A
                cmp     eax, 3000h
                jz      short loc_14021A74A
                cmp     eax, 0B000h
                jz      short loc_14021A74A
                cmp     eax, 103000h
                jz      short loc_14021A74A
                cmp     eax, 803000h
                jz      short loc_14021A74A
                bt      ecx, 10h
                jnb     loc_14021A6C1

loc_14021A74A:                          ; CODE XREF: sub_14021A330+3D8↑j
                                        ; sub_14021A330+3E4↑j ...
                mov     rax, [r12+30h]
                cmp     byte ptr [rax+49h], 0
                jnz     loc_14021A6C1
                test    sil, sil
                jnz     loc_14021A89F
                mov     eax, [r14+90h]
                and     eax, 1F0FFDFh
                cmp     eax, 1000h
                jz      short loc_14021A77C
                cmp     eax, 0B000h
                jnz     short loc_14021A7CF

loc_14021A77C:                          ; CODE XREF: sub_14021A330+443↑j
                lea     rsi, [r14+28h]
                mov     rbx, [rsi]

loc_14021A783:                          ; CODE XREF: sub_14021A330+4FB↓j
                cmp     rbx, rsi
                jz      short loc_14021A7CF
                mov     rax, [rbx+10h]
                mov     rdx, [rax+30h]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jz      loc_14021A828
                cmp     r15d, 10000h
                jnz     short loc_14021A7B8
                mov     ebx, 0C00000E3h
                jmp     loc_14021AC6A
; ---------------------------------------------------------------------------

loc_14021A7B8:                          ; CODE XREF: sub_14021A330+47C↑j
                mov     rcx, [rbx+8]
                mov     edx, 215h
                mov     r8d, 3000h
                mov     rcx, [rcx]
                call    sub_1404F0C3C

loc_14021A7CF:                          ; CODE XREF: sub_14021A330+44A↑j
                                        ; sub_14021A330+456↑j
                mov     eax, [r14+90h]
                and     eax, 1F0FFDFh
                sub     eax, 3000h
                test    eax, 0FFFF7FFFh
                jnz     short loc_14021A85A
                lea     rsi, [r14+38h]
                mov     rbx, [rsi]
                xchg    ax, ax

loc_14021A7F0:                          ; CODE XREF: sub_14021A330+565↓j
                cmp     rbx, rsi
                jz      short loc_14021A85A
                mov     rdx, [rbx+18h]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jz      loc_14021A892
                cmp     qword ptr [rbx+38h], 0
                jnz     short loc_14021A892
                cmp     r15d, 10000h
                jnz     short loc_14021A830
                mov     ebx, 0C00000E3h
                jmp     loc_14021AC6A
; ---------------------------------------------------------------------------

loc_14021A828:                          ; CODE XREF: sub_14021A330+46F↑j
                mov     rbx, [rbx]
                jmp     loc_14021A783
; ---------------------------------------------------------------------------

loc_14021A830:                          ; CODE XREF: sub_14021A330+4EC↑j
                mov     rcx, [rbx+8]
                xor     eax, eax
                mov     [rsp+148h+var_118], ax
                mov     [rsp+148h+var_120], eax
                mov     dword ptr [rsp+148h+var_128], eax
                mov     r9d, 3000h
                mov     r8d, 215h
                mov     rdx, r14
                mov     rcx, [rcx]
                call    sub_1403F0DB0

loc_14021A85A:                          ; CODE XREF: sub_14021A330+4B5↑j
                                        ; sub_14021A330+4C3↑j
                lea     rsi, [r14+48h]
                mov     rbx, [rsi]
                cmp     rbx, rsi
                jz      short loc_14021A89F

loc_14021A866:                          ; CODE XREF: sub_14021A330+56D↓j
                cmp     rbx, rsi
                jz      short loc_14021A89F
                mov     rdx, [rbx+18h]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jz      short loc_14021A89A
                cmp     r15d, 10000h
                jz      loc_14021AC65
                jmp     loc_14021AC54
; ---------------------------------------------------------------------------

loc_14021A892:                          ; CODE XREF: sub_14021A330+4D8↑j
                                        ; sub_14021A330+4E3↑j
                mov     rbx, [rbx]
                jmp     loc_14021A7F0
; ---------------------------------------------------------------------------

loc_14021A89A:                          ; CODE XREF: sub_14021A330+54E↑j
                mov     rbx, [rbx]
                jmp     short loc_14021A866
; ---------------------------------------------------------------------------

loc_14021A89F:                          ; CODE XREF: sub_14021A330+42C↑j
                                        ; sub_14021A330+534↑j ...
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r13, [rsp+148h+var_D0]
                mov     rax, [r13+0]
                mov     [rax+20h], rcx
                mov     rcx, [r12+30h]
                mov     rax, [r13+0]
                mov     [rax+18h], rcx
                lea     rcx, [r14+38h]
                mov     rdx, [r13+0]
                call    sub_14021AD94
                mov     ebx, eax
                mov     [rsp+148h+var_108], eax
                test    eax, eax
                jns     short loc_14021A8FF
                cmp     r15d, 10000h
                jz      loc_14021AC6E
                mov     [rdi+30h], eax
                mov     dl, 1
                mov     rcx, rdi
                call    IofCompleteRequest
                jmp     loc_14021AC6E
; ---------------------------------------------------------------------------

loc_14021A8FF:                          ; CODE XREF: sub_14021A330+5AE↑j
                cmp     r15d, 10000h
                jnz     short loc_14021A93D
                mov     rax, [r13+0]
                add     rax, 38h ; '8'
                lea     rcx, [r14+78h]
                mov     rdx, [rcx]
                cmp     [rdx+8], rcx
                jz      short loc_14021A924
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14021A924:                          ; CODE XREF: sub_14021A330+5EB↑j
                mov     [rax], rdx
                mov     [rax+8], rcx
                mov     [rdx+8], rax
                mov     [rcx], rax
                xor     ebx, ebx
                mov     [rsp+148h+var_108], ebx
                jmp     loc_14021AA13
; ---------------------------------------------------------------------------

loc_14021A93D:                          ; CODE XREF: sub_14021A330+5D6↑j
                mov     rcx, gs:188h
                mov     [rsp+148h+var_C8], rcx
                mov     rax, [r13+0]
                mov     [rax+28h], rcx
                mov     rax, [r13+0]
                mov     rcx, [rax+28h]
                mov     edx, 746C6644h
                call    ObfReferenceObjectWithTag
                mov     rax, [r13+0]
                mov     [rax+10h], rdi
                mov     rax, [rdi+0B8h]
                mov     [rsp+148h+var_C0], rax
                or      byte ptr [rax+3], 1
                mov     ebx, 103h
                mov     [rsp+148h+var_108], ebx
                xor     eax, eax
                mov     [rdi+30h], eax
                mov     [rdi+38h], r14
                movzx   esi, [rsp+148h+arg_28]
                test    sil, sil
                jz      short loc_14021A9B4
                mov     rax, [r13+0]
                mov     rcx, [rax+18h]
                mov     edx, 746C6644h
                call    ObfReferenceObjectWithTag

loc_14021A9B4:                          ; CODE XREF: sub_14021A330+670↑j
                mov     ecx, 7
                call    KeAcquireQueuedSpinLock
                mov     [rdi+45h], al
                cmp     byte ptr [rdi+44h], 0
                jz      short loc_14021A9F6
                test    sil, sil
                jz      short loc_14021A9E5
                cmp     [rsp+148h+arg_30], 0
                jz      short loc_14021A9E5
                xor     r8b, r8b
                mov     dl, 1
                mov     rcx, rdi
                call    sub_140340760
                jmp     short loc_14021AA13
; ---------------------------------------------------------------------------

loc_14021A9E5:                          ; CODE XREF: sub_14021A330+69A↑j
                                        ; sub_14021A330+6A4↑j
                mov     r8b, 1
                movzx   edx, r8b
                mov     rcx, rdi
                call    sub_140340760
                jmp     short loc_14021AA13
; ---------------------------------------------------------------------------

loc_14021A9F6:                          ; CODE XREF: sub_14021A330+695↑j
                lea     rax, sub_140340740
                xchg    rax, [rdi+68h]
                movzx   edx, byte ptr [rdi+45h]
                mov     ecx, 7
                call    KeReleaseQueuedSpinLock
                mov     ebx, [rsp+148h+var_108]

loc_14021AA13:                          ; CODE XREF: sub_14021A330+608↑j
                                        ; sub_14021A330+6B3↑j ...
                mov     qword ptr [r13+0], 0
                mov     rcx, r14
                call    sub_14021ACC0
                cmp     r15d, 10000h
                jnz     loc_14021AC6E
                or      [r14+90h], r15d
                jmp     loc_14021AC6E
; ---------------------------------------------------------------------------

loc_14021AA3C:                          ; CODE XREF: sub_14021A330+3AC↑j
                mov     eax, [r14+90h]
                test    al, 1
                jnz     short loc_14021AA63
                and     eax, 1F0FFDFh
                cmp     eax, 10h
                jz      short loc_14021AA63
                cmp     eax, 1000h
                jz      short loc_14021AA63
                cmp     eax, 1010h
                jnz     loc_14021AC54

loc_14021AA63:                          ; CODE XREF: sub_14021A330+3B9↑j
                                        ; sub_14021A330+715↑j ...
                test    sil, sil
                jnz     loc_14021AB9D
                mov     ecx, [r14+90h]
                test    cl, 1
                jnz     short loc_14021AAB8
                mov     eax, ecx
                and     eax, 1F0FFDFh
                cmp     eax, 10h
                jz      short loc_14021AAB8
                cmp     eax, 1000h
                jz      short loc_14021AAB8
                cmp     eax, 1010h
                jz      short loc_14021AAB8
                cmp     eax, 3000h
                jz      short loc_14021AAB8
                cmp     eax, 0B000h
                jz      short loc_14021AAB8
                cmp     eax, 103000h
                jz      short loc_14021AAB8
                cmp     eax, 803000h
                jz      short loc_14021AAB8
                bt      ecx, 10h
                jnb     loc_14021AC54

loc_14021AAB8:                          ; CODE XREF: sub_14021A330+746↑j
                                        ; sub_14021A330+752↑j ...
                test    sil, sil
                jnz     loc_14021AB9D
                lea     rsi, [r14+38h]
                mov     rbx, [rsi]
                cmp     rbx, rsi
                jnz     short loc_14021AADB
                lea     rax, [r14+48h]
                cmp     [rax], rax
                jz      short loc_14021AB23

loc_14021AAD6:                          ; CODE XREF: sub_14021A330+7C7↓j
                cmp     rbx, rsi
                jz      short loc_14021AAF9

loc_14021AADB:                          ; CODE XREF: sub_14021A330+79B↑j
                mov     rdx, [rbx+18h]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jnz     loc_14021AC54
                mov     rbx, [rbx]
                jmp     short loc_14021AAD6
; ---------------------------------------------------------------------------

loc_14021AAF9:                          ; CODE XREF: sub_14021A330+7A9↑j
                lea     rsi, [r14+48h]
                mov     rbx, [rsi]

loc_14021AB00:                          ; CODE XREF: sub_14021A330+7F1↓j
                cmp     rbx, rsi
                jz      short loc_14021AB23
                mov     rdx, [rbx+18h]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jnz     loc_14021AC54
                mov     rbx, [rbx]
                jmp     short loc_14021AB00
; ---------------------------------------------------------------------------

loc_14021AB23:                          ; CODE XREF: sub_14021A330+7A4↑j
                                        ; sub_14021A330+7D3↑j
                mov     eax, [r14+90h]
                and     eax, 1F0FFDFh
                cmp     eax, 10h
                jz      short loc_14021AB49
                cmp     eax, 1000h
                jz      short loc_14021AB49
                cmp     eax, 1010h
                jz      short loc_14021AB49
                cmp     eax, 0B000h
                jnz     short loc_14021AB9D

loc_14021AB49:                          ; CODE XREF: sub_14021A330+802↑j
                                        ; sub_14021A330+809↑j ...
                lea     rsi, [r14+28h]
                mov     rbx, [rsi]

loc_14021AB50:                          ; CODE XREF: sub_14021A330+8A3↓j
                cmp     rbx, rsi
                jz      short loc_14021AB9D
                mov     rdx, [rbx+10h]
                cmp     dword ptr [rdx+18h], 90240h
                jz      short loc_14021AB6D
                mov     rax, [r12+30h]
                cmp     [rdx+30h], rax
                jz      short loc_14021ABD0

loc_14021AB6D:                          ; CODE XREF: sub_14021A330+830↑j
                mov     rdx, [rdx+30h]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jz      short loc_14021ABD0
                mov     rcx, [rbx+8]
                mov     r8d, r15d
                and     r8d, 7000h
                mov     edx, 215h
                mov     rcx, [rcx]
                call    sub_1404F0C3C

loc_14021AB9D:                          ; CODE XREF: sub_14021A330+736↑j
                                        ; sub_14021A330+78B↑j ...
                mov     rax, [rdi+0B8h]
                mov     [rsp+148h+var_B8], rax
                or      byte ptr [rax+3], 1
                xor     eax, eax
                mov     [rdi+30h], eax
                lea     rax, [rdi+0A8h]
                lea     rcx, [r14+28h]
                mov     rdx, [rcx]
                cmp     [rdx+8], rcx
                jz      short loc_14021ABD8
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14021ABD0:                          ; CODE XREF: sub_14021A330+83B↑j
                                        ; sub_14021A330+850↑j
                mov     rbx, [rbx]
                jmp     loc_14021AB50
; ---------------------------------------------------------------------------

loc_14021ABD8:                          ; CODE XREF: sub_14021A330+897↑j
                mov     [rax], rdx
                mov     [rax+8], rcx
                mov     [rdx+8], rax
                mov     [rcx], rax
                mov     [rdi+38h], r14
                mov     rcx, r14
                call    sub_14021ACC0
                cmp     [rsp+148h+arg_28], 0
                jz      short loc_14021AC0B
                mov     rcx, [r12+30h]
                mov     edx, 746C6644h
                call    ObfReferenceObjectWithTag

loc_14021AC0B:                          ; CODE XREF: sub_14021A330+8CA↑j
                mov     ecx, 7
                call    KeAcquireQueuedSpinLock
                mov     [rdi+45h], al
                cmp     byte ptr [rdi+44h], 0
                jz      short loc_14021AC2A
                mov     dl, 1
                mov     rcx, rdi
                call    sub_1404F07E8
                jmp     short loc_14021AC43
; ---------------------------------------------------------------------------

loc_14021AC2A:                          ; CODE XREF: sub_14021A330+8EC↑j
                lea     rax, sub_1404F0C20
                xchg    rax, [rdi+68h]
                movzx   edx, byte ptr [rdi+45h]
                mov     ecx, 7
                call    KeReleaseQueuedSpinLock

loc_14021AC43:                          ; CODE XREF: sub_14021A330+8F8↑j
                mov     r13b, 1
                mov     ebx, 103h
                mov     [rsp+148h+var_108], ebx

loc_14021AC4F:                          ; CODE XREF: sub_14021A330+3CF↑j
                test    r13b, r13b
                jnz     short loc_14021AC6E

loc_14021AC54:                          ; CODE XREF: sub_14021A330+14E↑j
                                        ; sub_14021A330+22F↑j ...
                mov     dword ptr [rdi+30h], 0C00000E2h
                mov     dl, 1
                mov     rcx, rdi
                call    IofCompleteRequest

loc_14021AC65:                          ; CODE XREF: sub_14021A330+26F↑j
                                        ; sub_14021A330+557↑j
                mov     ebx, 0C00000E2h

loc_14021AC6A:                          ; CODE XREF: sub_14021A330+3A3↑j
                                        ; sub_14021A330+483↑j ...
                mov     [rsp+148h+var_108], ebx
;   } // starts at 14021A3D7

loc_14021AC6E:                          ; CODE XREF: sub_14021A330+37C↑j
                                        ; sub_14021A330+5B7↑j ...
                cmp     [rsp+148h+var_104], 0
                jz      short loc_14021AC88
                cmp     r15d, 10000h
                jz      short loc_14021AC88
                mov     rcx, [rsp+148h+var_E8]
                call    ExReleaseFastMutexUnsafe

loc_14021AC88:                          ; CODE XREF: sub_14021A330+943↑j
                                        ; sub_14021A330+94C↑j
                mov     eax, ebx
                mov     rcx, [rsp+148h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 110h
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
; } // starts at 14021A330
sub_14021A330   endp

algn_14021ACAE:                         ; DATA XREF: .pdata:00000001400CA4B8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021ACC0   proc near               ; CODE XREF: sub_14021A330+149↑p
                                        ; sub_14021A330+1F3↑p ...

var_8           = qword ptr -8

; FUNCTION CHUNK AT 000000014042783E SIZE 00000093 BYTES

                sub     rsp, 8
                mov     eax, [rcx+90h]
                lea     r10, [rcx+28h]
                mov     r11, [r10]
                mov     r9d, eax
                and     r9d, 1010000h
                mov     r8, rcx
                cmp     r11, r10
                jnz     loc_14042783E
                lea     rdx, [rcx+38h]
                cmp     [rdx], rdx
                jz      short loc_14021AD1A

loc_14021ACF0:                          ; CODE XREF: sub_14021ACC0+61↓j
                cmp     r11, r10
                jnz     loc_14042783E

loc_14021ACF9:                          ; CODE XREF: sub_14021ACC0+20CB93↓j
                lea     rcx, [r8+38h]
                cmp     [rcx], rcx
                jz      short loc_14021AD39

loc_14021AD02:                          ; CODE XREF: sub_14021ACC0+20CC06↓j
                and     eax, 20h
                or      eax, 3000h

loc_14021AD0A:                          ; CODE XREF: sub_14021ACC0+9E↓j
                                        ; sub_14021ACC0+C8↓j ...
                or      eax, r9d
                mov     [r8+90h], eax
                add     rsp, 8
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021AD1A:                          ; CODE XREF: sub_14021ACC0+2E↑j
                add     rcx, 48h ; 'H'
                cmp     [rcx], rcx
                jnz     short loc_14021ACF0
                and     eax, 20h
                or      eax, 1
                or      eax, r9d
                mov     [r8+90h], eax
                add     rsp, 8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021AD39:                          ; CODE XREF: sub_14021ACC0+40↑j
                cmp     r11, r10
                jnz     loc_140427859
                mov     r10, [r8+48h]
                lea     r11, [r8+48h]
                and     eax, 20h
                xor     edx, edx
                or      eax, 3000h
                mov     [r8+90h], eax
                cmp     r10, r11
                jz      short loc_14021AD0A

loc_14021AD60:                          ; CODE XREF: sub_14021ACC0+CA↓j
                test    edx, edx
                jnz     loc_1404278BA

loc_14021AD68:                          ; CODE XREF: sub_14021ACC0+20CC0C↓j
                mov     edx, [r10+30h]
                and     edx, 0F00000h
                mov     eax, edx
                or      eax, [r8+90h]
                mov     [r8+90h], eax
                mov     r10, [r10]
                cmp     r10, r11
                jz      short loc_14021AD0A
                jmp     short loc_14021AD60
sub_14021ACC0   endp

; ---------------------------------------------------------------------------
byte_14021AD8C  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014004DCCC↑o
                                        ; .pdata:00000001400CA4C4↑o

; =============== S U B R O U T I N E =======================================


sub_14021AD94   proc near               ; CODE XREF: sub_14021A330+5A1↑p
                                        ; sub_1403F0DB0+D0↓p
                                        ; DATA XREF: ...

var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

; FUNCTION CHUNK AT 00000001404278D2 SIZE 00000015 BYTES

                push    rbx
                sub     rsp, 50h
                mov     rax, [rcx]
                mov     rbx, rdx
                cmp     [rax+8], rcx
                jnz     FatalListEntryError_6
                mov     [rdx], rax
                xorps   xmm0, xmm0
                mov     [rdx+8], rcx
                mov     [rax+8], rdx
                mov     [rcx], rdx
                mov     rcx, [rdx+18h]
                movups  [rsp+58h+var_18], xmm0
                mov     qword ptr [rsp+58h+var_18+8], rdx
                lea     rdx, [rsp+58h+var_38]
                movups  [rsp+58h+var_38], xmm0
                movups  [rsp+58h+var_28], xmm0
                call    sub_14021ADF8
                mov     r10d, eax
                test    eax, eax
                js      loc_1404278D9

loc_14021ADE8:                          ; CODE XREF: sub_14021AD94+20CB4E↓j
                mov     eax, r10d
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021AD94   endp

algn_14021ADF2:                         ; DATA XREF: .rdata:000000014004DD30↑o
                                        ; .pdata:00000001400CA4D0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14021ADF8   proc near               ; CODE XREF: sub_14021AD94+44↑p
                                        ; DATA XREF: .rdata:000000014004DD50↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404278E8 SIZE 00000015 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                xor     r9b, r9b
                and     [rsp+28h+arg_0], rbx
                mov     rdi, rdx
                cmp     [rcx+0D0h], rbx
                jz      short loc_14021AE61
                lea     r8, [rsp+28h+arg_0]
                lea     edx, [rbx+6]
                call    sub_14021B460
                mov     r8, rax
                test    rax, rax
                jz      short loc_14021AE71

loc_14021AE2D:                          ; CODE XREF: sub_14021ADF8+9E↓j
                mov     rax, [rdi+28h]
                mov     [r8+28h], rax
                test    r9b, r9b
                jz      short loc_14021AE53
                mov     rcx, [rsp+28h+arg_0]
                mov     edx, 6
                call    sub_1403496B8
                mov     ebx, eax
                test    eax, eax
                js      loc_1404278E8

loc_14021AE53:                          ; CODE XREF: sub_14021ADF8+40↑j
                                        ; sub_14021ADF8+20CB00↓j
                mov     eax, ebx

loc_14021AE55:                          ; CODE XREF: sub_14021ADF8+77↓j
                                        ; sub_14021ADF8+A5↓j
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021AE61:                          ; CODE XREF: sub_14021ADF8+1E↑j
                lea     rdx, [rsp+28h+arg_0]
                call    sub_14021AEE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14021AE55

loc_14021AE71:                          ; CODE XREF: sub_14021ADF8+33↑j
                lea     rcx, unk_140CDBC00
                call    sub_14030E5D4
                mov     r8, rax
                test    rax, rax
                jz      short loc_14021AE98
                xorps   xmm0, xmm0
                mov     r9b, 1
                movups  xmmword ptr [rax], xmm0
                movups  xmmword ptr [rax+10h], xmm0
                movups  xmmword ptr [rax+20h], xmm0
                jmp     short loc_14021AE2D
; ---------------------------------------------------------------------------

loc_14021AE98:                          ; CODE XREF: sub_14021ADF8+8B↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14021AE55
sub_14021ADF8   endp

; ---------------------------------------------------------------------------
byte_14021AE9F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014004DD50↑o
                                        ; .pdata:00000001400CA4DC↑o

; =============== S U B R O U T I N E =======================================


sub_14021AEA8   proc near               ; CODE XREF: sub_14022B420+2B8↓p
                                        ; sub_14026F920+7F↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, [rcx]
                and     rbx, 0FFFFFFFFFFFFFFF0h
                jz      short loc_14021AEC4
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag

loc_14021AEC4:                          ; CODE XREF: sub_14021AEA8+D↑j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021AEA8   endp

algn_14021AECE:                         ; DATA XREF: .pdata:00000001400CA4E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021AEE0   proc near               ; CODE XREF: sub_14021ADF8+6E↑p
                                        ; sub_14021B078+2F↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404278FE SIZE 00000168 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, [rcx+0D0h]
                xor     ebp, ebp
                mov     rdi, rdx
                mov     rbx, rcx
                test    rax, rax
                jnz     loc_14021B025
                mov     r15, cr8
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                lea     r12, [rbp-1]
                test    eax, eax
                jnz     loc_1404278FE

loc_14021AF34:                          ; CODE XREF: sub_14021AEE0+20CA20↓j
                                        ; sub_14021AEE0+20CA2A↓j ...
                lea     rcx, [rbx+0B8h]
                call    KeAcquireSpinLockAtDpcLevel
                mov     rsi, [rbx+0D0h]
                test    rsi, rsi
                jnz     loc_14021AFD2
                lea     rcx, [rbx+0B8h]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042793F

loc_14021AF6A:                          ; CODE XREF: sub_14021AEE0+20CA61↓j
                                        ; sub_14021AEE0+20CA6D↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                mov     edx, 58h ; 'X'
                call    sub_14021B048
                mov     rsi, rax
                test    rax, rax
                jz      loc_14021B038
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+58h]
                call    memset
                mov     r15, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404279A6

loc_14021AFAC:                          ; CODE XREF: sub_14021AEE0+20CAC8↓j
                                        ; sub_14021AEE0+20CAD2↓j ...
                lea     rcx, [rbx+0B8h]
                call    KeAcquireSpinLockAtDpcLevel
                mov     rax, [rbx+0D0h]
                test    rax, rax
                jnz     loc_1404279E7
                mov     rax, rsi
                xchg    rax, [rbx+0D0h]

loc_14021AFD2:                          ; CODE XREF: sub_14021AEE0+6A↑j
                                        ; sub_14021AEE0+20CB0D↓j
                test    rdi, rdi
                jz      short loc_14021AFDA
                mov     [rdi], rsi

loc_14021AFDA:                          ; CODE XREF: sub_14021AEE0+F5↑j
                lea     rcx, [rbx+0B8h]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404279F2

loc_14021AFF4:                          ; CODE XREF: sub_14021AEE0+20CB14↓j
                                        ; sub_14021AEE0+20CB20↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                test    rbp, rbp
                jnz     loc_140427A56

loc_14021B005:                          ; CODE XREF: sub_14021AEE0+151↓j
                                        ; sub_14021AEE0+156↓j ...
                xor     eax, eax

loc_14021B007:                          ; CODE XREF: sub_14021AEE0+15D↓j
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021B025:                          ; CODE XREF: sub_14021AEE0+2E↑j
                cmp     rax, cs:off_140C04810
                jz      short loc_14021B038
                test    rdi, rdi
                jz      short loc_14021B005
                mov     [rdx], rax
                jmp     short loc_14021B005
; ---------------------------------------------------------------------------

loc_14021B038:                          ; CODE XREF: sub_14021AEE0+A2↑j
                                        ; sub_14021AEE0+14C↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14021B007
sub_14021AEE0   endp

; ---------------------------------------------------------------------------
byte_14021B03F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014004DEE4↑o
                                        ; .pdata:00000001400CA4F4↑o

; =============== S U B R O U T I N E =======================================


sub_14021B048   proc near               ; CODE XREF: sub_14021AEE0+97↑p
                                        ; sub_14021B078+8F↓p ...

; FUNCTION CHUNK AT 0000000140427A66 SIZE 00000046 BYTES

                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                jnz     loc_140427A66

loc_14021B059:                          ; CODE XREF: sub_14021B048+20CA36↓j
                mov     ecx, 200h
                mov     r8d, 20206F49h
                call    ExAllocatePoolWithTag

loc_14021B069:                          ; CODE XREF: sub_14021B048+20CA5F↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021B048   endp

byte_14021B06F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014004DF00↑o
                                        ; .pdata:00000001400CA500↑o

; =============== S U B R O U T I N E =======================================


sub_14021B078   proc near               ; CODE XREF: sub_140331088+51↓p
                                        ; sub_140341EC0+DB↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140427AAC SIZE 0000001F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-28h], 0
                mov     sil, r9b
                mov     r15d, r8d
                mov     ebp, edx
                mov     rdi, rcx
                test    r9b, r9b
                jz      short loc_14021B0B0
                xor     edx, edx
                call    sub_14021AEE0
                test    eax, eax
                js      short loc_14021B0E5

loc_14021B0B0:                          ; CODE XREF: sub_14021B078+2B↑j
                lea     r8, [rsp+48h+var_28]
                mov     edx, ebp
                mov     rcx, rdi
                call    sub_14021B460
                mov     r14, [rsp+48h+var_28]
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14021B0FF

loc_14021B0CC:                          ; CODE XREF: sub_14021B078+8A↓j
                                        ; sub_14021B078+B8↓j ...
                mov     rax, [rsp+48h+arg_20]
                test    rax, rax
                jz      short loc_14021B0D9
                mov     [rax], rbx

loc_14021B0D9:                          ; CODE XREF: sub_14021B078+5C↑j
                mov     rax, [rsp+48h+arg_28]
                test    rax, rax
                jnz     short loc_14021B13E

loc_14021B0E3:                          ; CODE XREF: sub_14021B078+C9↓j
                xor     eax, eax

loc_14021B0E5:                          ; CODE XREF: sub_14021B078+36↑j
                                        ; sub_14021B078+C4↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021B0FF:                          ; CODE XREF: sub_14021B078+52↑j
                test    sil, sil
                jz      short loc_14021B0CC
                mov     rdx, r15
                call    sub_14021B048
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14021B137
                mov     r8, r15
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r8, rbx
                mov     edx, ebp
                mov     rcx, r14
                call    sub_1403496B8
                test    eax, eax
                jns     short loc_14021B0CC
                jmp     loc_140427AAC
; ---------------------------------------------------------------------------

loc_14021B137:                          ; CODE XREF: sub_14021B078+9A↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14021B0E5
; ---------------------------------------------------------------------------

loc_14021B13E:                          ; CODE XREF: sub_14021B078+69↑j
                mov     [rax], r14
                jmp     short loc_14021B0E3
sub_14021B078   endp

; ---------------------------------------------------------------------------
byte_14021B143  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014004DF2C↑o
                                        ; .pdata:00000001400CA50C↑o

; =============== S U B R O U T I N E =======================================


sub_14021B14C   proc near               ; CODE XREF: sub_14021A330+ED↑p
                                        ; sub_14021A330+18F↑p ...
                sub     rsp, 28h
                mov     r9, rcx
                mov     rcx, [rcx+18h]
                call    sub_14021B42C
                test    rax, rax
                jz      short loc_14021B166
                and     qword ptr [rax+28h], 0

loc_14021B166:                          ; CODE XREF: sub_14021B14C+13↑j
                mov     rax, [r9]
                cmp     [rax+8], r9
                jnz     short loc_14021B185
                mov     rcx, [r9+8]
                cmp     [rcx], r9
                jnz     short loc_14021B185
                mov     [rcx], rax
                mov     [rax+8], rcx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021B185:                          ; CODE XREF: sub_14021B14C+21↑j
                                        ; sub_14021B14C+2A↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14021B14C   endp

; ---------------------------------------------------------------------------
byte_14021B18C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA518↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14021B194   proc near               ; CODE XREF: sub_14061BEE0+176↓p
                                        ; DATA XREF: .rdata:000000014004E030↑o ...

var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 0000000140427ACC SIZE 00000285 BYTES

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                test    dword ptr [rcx+10h], 1000000h
                mov     r15, rdx
                mov     [rbp+var_10], rax
                mov     rdi, rcx
                mov     rax, [rcx+38h]
                movups  [rbp+var_30], xmm0
                mov     [rbp+arg_0], rax
                movups  [rbp+var_20], xmm0
                mov     r14, [rax+28h]
                jnz     loc_14021B2B0

loc_14021B1E0:                          ; CODE XREF: sub_14021B194+120↓j
                or      rsi, 0FFFFFFFFFFFFFFFFh

loc_14021B1E4:                          ; CODE XREF: sub_14021B194+26F↓j
                lea     rcx, dword_140C4C800
                call    ExAcquireSpinLockExclusive
                mov     r13, [r14]
                movzx   ebx, al
                test    r13, r13
                jz      loc_14021B2B9
                lea     r12, [r13+48h]
                mov     rcx, r12
                call    ExTryAcquireSpinLockExclusiveAtDpcLevel
                lea     rcx, dword_140C4C800
                test    eax, eax
                jz      loc_14021B3EC
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     rdx, r13
                mov     rcx, rdi
                call    sub_1402D4F88
                mov     r15d, eax
                test    eax, eax
                js      loc_140427B2E
                mov     eax, [r13+38h]
                mov     ecx, eax
                shr     ecx, 1
                or      ecx, eax
                test    cl, 1
                jnz     loc_14021B2F9
                test    dword ptr [rdi+10h], 1000000h
                jz      short loc_14021B25E
                mov     edx, [rdi+14h]
                bt      edx, 14h
                jb      loc_14021B3CC

loc_14021B25E:                          ; CODE XREF: sub_14021B194+BB↑j
                                        ; sub_14021B194+24D↓j
                mov     rdx, r13
                mov     rcx, rdi
                call    sub_14026CCD8
                mov     rcx, r12
                mov     rdi, rax
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_140427C92

loc_14021B282:                          ; CODE XREF: sub_14021B194+20CB01↓j
                                        ; sub_14021B194+20CB0E↓j ...
                mov     cr8, rbx
                mov     rcx, rdi
                call    sub_1402D380C
                mov     rax, [rbp+arg_10]
                mov     [rax], r13

loc_14021B295:                          ; CODE XREF: sub_14021B194+163↓j
                xor     eax, eax

loc_14021B297:                          ; CODE XREF: sub_14021B194+233↓j
                                        ; sub_14021B194+20CAF9↓j
                mov     rbx, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14021B2B0:                          ; CODE XREF: sub_14021B194+46↑j
                add     r14, 10h
                jmp     loc_14021B1E0
; ---------------------------------------------------------------------------

loc_14021B2B9:                          ; CODE XREF: sub_14021B194+65↑j
                xor     r8d, r8d
                mov     [r14], r15
                xor     edx, edx
                mov     rcx, r14
                call    sub_140244C10
                test    rax, rax
                jz      short loc_14021B2D2
                or      byte ptr [rax+1Ah], 1

loc_14021B2D2:                          ; CODE XREF: sub_14021B194+138↑j
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140427CF3

loc_14021B2EC:                          ; CODE XREF: sub_14021B194+20CB61↓j
                                        ; sub_14021B194+20CB6D↓j ...
                mov     cr8, rbx
                mov     rax, [rbp+arg_10]
                mov     [rax], r15
                jmp     short loc_14021B295
; ---------------------------------------------------------------------------

loc_14021B2F9:                          ; CODE XREF: sub_14021B194+AE↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r14
                call    sub_140244C10
                mov     r15, rax
                test    rax, rax
                jz      short loc_14021B316
                mov     rcx, rax
                call    sub_1402F6340

loc_14021B316:                          ; CODE XREF: sub_14021B194+178↑j
                and     dword ptr [rbp+var_20+4], 0
                lea     rax, [rbp+var_20+8]
                mov     [rbp+var_10], rax
                mov     rcx, r12
                mov     word ptr [rbp+var_20], 107h
                lea     rax, [rbp+var_20+8]
                mov     qword ptr [rbp+var_20+8], rax
                mov     byte ptr [rbp+var_20+2], 6
                mov     dword ptr [rbp+var_30+8], 1
                mov     rax, [r13+50h]
                mov     qword ptr [rbp+var_30], rax
                lea     rax, [rbp+var_30]
                mov     [r13+50h], rax
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140427BA3

loc_14021B361:                          ; CODE XREF: sub_14021B194+20CA11↓j
                                        ; sub_14021B194+20CA1D↓j ...
                mov     cr8, rbx
                mov     eax, [rdi]
                test    al, 1
                jnz     short loc_14021B38E
                mov     rdx, gs:188h
                mov     rax, [rdi+0B8h]
                mov     rcx, [rbp+arg_0]
                mov     [rdx+4C0h], rax
                call    FsRtlReleaseFile
                and     dword ptr [rdi], 0FFFFFFFDh

loc_14021B38E:                          ; CODE XREF: sub_14021B194+1D5↑j
                mov     edx, 12h
                lea     rcx, [rbp+var_20]
                call    sub_1403245A8
                test    r15, r15
                jz      short loc_14021B3BA
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140244C10
                mov     rdx, r15
                mov     rcx, r14
                call    sub_14031D1B0

loc_14021B3BA:                          ; CODE XREF: sub_14021B194+20B↑j
                mov     rax, [rbp+arg_10]
                and     qword ptr [rax], 0
                mov     eax, 0C000022Dh
                jmp     loc_14021B297
; ---------------------------------------------------------------------------

loc_14021B3CC:                          ; CODE XREF: sub_14021B194+C4↑j
                shr     edx, 15h
                mov     rcx, r13
                not     edx
                and     edx, 1
                or      edx, 2
                call    sub_1402A8C1C
                test    eax, eax
                jnz     loc_14021B25E
                jmp     loc_140427C01
; ---------------------------------------------------------------------------

loc_14021B3EC:                          ; CODE XREF: sub_14021B194+80↑j
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140427ACC

loc_14021B3FF:                          ; CODE XREF: sub_14021B194+20C93A↓j
                                        ; sub_14021B194+20C946↓j ...
                mov     cr8, rbx
                jmp     loc_14021B1E4
sub_14021B194   endp

; ---------------------------------------------------------------------------
algn_14021B408:                         ; DATA XREF: .rdata:000000014004E030↑o
                                        ; .pdata:00000001400CA524↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021B410   proc near               ; CODE XREF: sub_14061BEE0+D9↓p
                                        ; DATA XREF: .pdata:00000001400CA530↑o
                sub     rsp, 28h
                xor     r8d, r8d
                lea     edx, [r8+8]
                call    sub_14021B460
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021B410   endp

byte_14021B426  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA530↑o

; =============== S U B R O U T I N E =======================================


sub_14021B42C   proc near               ; CODE XREF: sub_14021B14C+B↑p
                                        ; sub_140340340+40↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14021B447
                xor     r8d, r8d
                lea     edx, [r8+6]
                call    sub_14021B460

loc_14021B441:                          ; CODE XREF: sub_14021B42C+1D↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021B447:                          ; CODE XREF: sub_14021B42C+7↑j
                xor     eax, eax
                jmp     short loc_14021B441
sub_14021B42C   endp

; ---------------------------------------------------------------------------
algn_14021B44B:                         ; DATA XREF: .pdata:00000001400CA53C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021B460   proc near               ; CODE XREF: sub_14021ADF8+28↑p
                                        ; sub_14021B078+42↑p ...
                mov     rcx, [rcx+0D0h]
                test    rcx, rcx
                jz      short loc_14021B484
                cmp     rcx, cs:off_140C04810
                jz      short loc_14021B489
                movsxd  rax, edx
                mov     rax, [rcx+rax*8+8]
                test    r8, r8
                jnz     short loc_14021B48D
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021B484:                          ; CODE XREF: sub_14021B460+A↑j
                test    r8, r8
                jnz     short loc_14021B492

loc_14021B489:                          ; CODE XREF: sub_14021B460+13↑j
                                        ; sub_14021B460+39↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021B48D:                          ; CODE XREF: sub_14021B460+20↑j
                mov     [r8], rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021B492:                          ; CODE XREF: sub_14021B460+27↑j
                mov     qword ptr [r8], 0
                jmp     short loc_14021B489
sub_14021B460   endp

; ---------------------------------------------------------------------------
byte_14021B49B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA548↑o

; =============== S U B R O U T I N E =======================================


sub_14021B4A4   proc near               ; CODE XREF: PsRestoreImpersonation+41↓p
                                        ; PsRestoreImpersonation:loc_14061CC73↓p
                                        ; DATA XREF: ...
                mov     rax, [rcx+458h]
                retn
sub_14021B4A4   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14021B4AD:                         ; DATA XREF: .pdata:00000001400CA554↑o
                align 20h
; Exported entry 1671. ObReferenceObjectByPointerWithTag

; =============== S U B R O U T I N E =======================================


                public ObReferenceObjectByPointerWithTag
ObReferenceObjectByPointerWithTag proc near
                                        ; CODE XREF: ObOpenObjectByPointer+8E↓p
                                        ; IoRegisterPlugPlayNotification+56↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140427D52 SIZE 00000033 BYTES

                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, rcx
                test    r8, r8
                jz      short loc_14021B538
                lea     rax, [rcx-30h]
                shr     rax, 8
                movzx   ecx, al
                movzx   eax, byte ptr [rsi-18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                lea     rax, qword_140CFCE60
                cmp     [rax+rcx*8], r8
                jnz     short loc_14021B53D

loc_14021B4FB:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+7B↓j
                cmp     cs:dword_140CFB010, 0

loc_14021B502:                          ; DATA XREF: .rdata:000000014004E3E0↑o
                                        ; .rdata:000000014004E3F4↑o ...
                mov     [rsp+38h+arg_0], rbx
                mov     ebx, 1
                jnz     loc_140427D52

loc_14021B512:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+20C8A7↓j
                lock xadd [rsi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_140427D6C
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax

loc_14021B52C:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+82↓j
                                        ; DATA XREF: .pdata:00000001400CA56C↑o ...
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14021B538:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+10↑j
                test    r9b, r9b
                jz      short loc_14021B4FB

loc_14021B53D:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+39↑j
                mov     eax, 0C0000024h
                jmp     short loc_14021B52C
ObReferenceObjectByPointerWithTag endp

; ---------------------------------------------------------------------------
byte_14021B544  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA578↑o

; =============== S U B R O U T I N E =======================================


sub_14021B54C   proc near               ; CODE XREF: sub_14020394C+B8↑p
                                        ; sub_14021B6A0+1B6↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rax, cr8
                mov     edx, ecx
                mov     r8d, 74416553h
                add     rdx, 40h ; '@'
                cmp     al, 2
                sbb     ecx, ecx
                and     ecx, 0FFFFFE01h
                add     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14021B58D
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+40h]
                call    memset

loc_14021B58D:                          ; CODE XREF: sub_14021B54C+31↑j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021B54C   endp

algn_14021B597:                         ; DATA XREF: .pdata:00000001400CA584↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021B5A0   proc near               ; CODE XREF: sub_14060DA00+2CE7↓p
                                        ; RtlIsSandboxedToken+BF↓p ...
                xor     al, al
                retn
sub_14021B5A0   endp

; ---------------------------------------------------------------------------
                align 4
byte_14021B5A4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA590↑o

; =============== S U B R O U T I N E =======================================


sub_14021B5AC   proc near               ; CODE XREF: sub_14030D258+119↓p
                                        ; NtDuplicateToken+B7↓p
                                        ; DATA XREF: ...

arg_10          = qword ptr  18h

; __unwind { // __C_specific_handler
                sub     rsp, 28h
                xor     r9d, r9d
                mov     [r8], r9b
                test    dl, dl
                jnz     short loc_14021B5CD
                test    rcx, rcx
                jz      short loc_14021B5C5
                cmp     [rcx+20h], r9
                jnz     short loc_14021B608

loc_14021B5C5:                          ; CODE XREF: sub_14021B5AC+11↑j
                                        ; sub_14021B5AC:loc_14021B604↓j ...
                xor     eax, eax

loc_14021B5C7:                          ; CODE XREF: sub_14021B5AC:loc_14021B606↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021B5CD:                          ; CODE XREF: sub_14021B5AC+C↑j
                                        ; DATA XREF: .rdata:000000014004E770↑o
;   __try { // __except at loc_14021B606
                test    rcx, rcx
                jz      short loc_14021B604
                test    cl, 3
                jnz     short loc_14021B5FE
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                cmovb   rax, rcx
                mov     al, [rax]
                mov     rax, [rcx+20h]
                mov     [rsp+28h+arg_10], rax
                cmp     rax, r9
                jz      short loc_14021B604
                mov     byte ptr [r8], 1
                jmp     short loc_14021B604
; ---------------------------------------------------------------------------

loc_14021B5FE:                          ; CODE XREF: sub_14021B5AC+29↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4

loc_14021B604:                          ; CODE XREF: sub_14021B5AC+24↑j
                                        ; sub_14021B5AC+4A↑j ...
                jmp     short loc_14021B5C5
;   } // starts at 14021B5CD
; ---------------------------------------------------------------------------

loc_14021B606:                          ; DATA XREF: .rdata:000000014004E770↑o
;   __except(1) // owned by 14021B5CD
                jmp     short loc_14021B5C7
; ---------------------------------------------------------------------------

loc_14021B608:                          ; CODE XREF: sub_14021B5AC+17↑j
                mov     byte ptr [r8], 1
                jmp     short loc_14021B5C5
; } // starts at 14021B5AC
sub_14021B5AC   endp

; ---------------------------------------------------------------------------
algn_14021B60E:                         ; DATA XREF: .pdata:00000001400CA59C↑o
                align 20h
; Exported entry 1193. KeInitializeSemaphore

; =============== S U B R O U T I N E =======================================


                public KeInitializeSemaphore
KeInitializeSemaphore proc near         ; CODE XREF: sub_14061E0A0+CA↓p
                                        ; sub_14068C748+484↓p ...
                lea     rax, [rcx+8]
                mov     byte ptr [rcx], 5
                mov     [rax+8], rax
                mov     [rax], rax
                mov     byte ptr [rcx+2], 8
                mov     [rcx+4], edx
                mov     [rcx+18h], r8d
                retn
KeInitializeSemaphore endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14021B63B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400CA5A8↑o
; Exported entry 2402. RtlSubAuthorityCountSid

; =============== S U B R O U T I N E =======================================



RtlClearBit     proc near               ; DATA XREF: .pdata:00000001400D6FF8↑o
                mov     rax, [rcx+8]
                btr     [rax], edx
                retn
RtlClearBit     endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14033E179:                         ; DATA XREF: .pdata:00000001400D6FF8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033E180   proc near               ; CODE XREF: sub_140260E80+589↑p
                                        ; DATA XREF: .pdata:00000001400D7004↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14d, edx
                mov     eax, 40000h
                mov     rbp, rdx
                mov     rdi, rcx
                and     r14d, 3FFFFh
                xor     edx, edx
                sub     eax, r14d
                add     rcx, 68h ; 'h'
                mov     [r9], eax
                mov     rsi, r8
                xor     ebx, ebx
                call    ExAcquirePushLockSharedEx
                cmp     qword ptr [rdi+20h], 2000000h
                jg      short loc_14033E21C
                mov     rax, [rdi+58h]
                mov     ecx, ebp
                shr     rcx, 12h
                mov     rax, [rax+rcx*8]

loc_14033E1DB:                          ; CODE XREF: sub_14033E180+A7↓j
                mov     [rsi], rax
                test    rax, rax
                jz      short loc_14033E1F4
                mov     rcx, rax
                call    sub_140262EC4
                mov     rdx, [rsi]
                mov     ebx, r14d
                add     rbx, [rdx]

loc_14033E1F4:                          ; CODE XREF: sub_14033E180+61↑j
                xor     edx, edx
                lea     rcx, [rdi+68h]
                call    ExReleasePushLockEx
                mov     rbp, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033E21C:                          ; CODE XREF: sub_14033E180+4B↑j
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14033E230
                jmp     short loc_14033E1DB
sub_14033E180   endp

; ---------------------------------------------------------------------------
algn_14033E229:                         ; DATA XREF: .pdata:00000001400D7004↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033E230   proc near               ; CODE XREF: sub_140262B20+19C↑p
                                        ; sub_14033E180+A2↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     rbx, [rcx+58h]
                xor     r8d, r8d
                mov     r11, rdx
                mov     rdx, [rcx+20h]
                lea     r9d, [r8+19h]

loc_14033E247:                          ; CODE XREF: sub_14033E230+2F↓j
                mov     r10d, r9d
                mov     eax, 1
                add     r9d, 7
                inc     r8d
                mov     ecx, r9d
                shl     rax, cl
                cmp     rdx, rax
                jg      short loc_14033E247
                mov     rax, r11
                mov     ecx, r10d
                sar     rax, cl
                mov     rax, [rbx+rax*8]

loc_14033E26E:                          ; CODE XREF: sub_14033E230+6D↓j
                test    rax, rax
                jz      short loc_14033E29F
                test    r8d, r8d
                jz      short loc_14033E29F
                mov     ecx, r10d
                mov     edx, 1
                shl     rdx, cl
                add     r10d, 0FFFFFFF9h
                dec     rdx
                dec     r8d
                and     r11, rdx
                mov     ecx, r10d
                mov     rdx, r11
                sar     rdx, cl
                mov     rax, [rax+rdx*8]
                jmp     short loc_14033E26E
; ---------------------------------------------------------------------------

loc_14033E29F:                          ; CODE XREF: sub_14033E230+41↑j
                                        ; sub_14033E230+46↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033E230   endp

algn_14033E2A6:                         ; DATA XREF: .pdata:00000001400D7010↑o
                align 10h
; Exported entry 878. IoGetSiloParameters

; =============== S U B R O U T I N E =======================================


                public IoGetSiloParameters
IoGetSiloParameters proc near           ; DATA XREF: .pdata:00000001400D701C↑o
                mov     rdx, [rcx+0D0h]
                xor     eax, eax
                test    rdx, rdx
                jnz     short loc_14033E2C0

locret_14033E2BE:                       ; CODE XREF: IoGetSiloParameters+17↓j
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14033E2C0:                          ; CODE XREF: IoGetSiloParameters+C↑j
                cmp     rdx, cs:off_140C04810
                jz      short locret_14033E2BE
                mov     rax, [rdx+40h]
                retn
IoGetSiloParameters endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14033E2CF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D701C↑o

; =============== S U B R O U T I N E =======================================


sub_14033E2D8   proc near               ; CODE XREF: FsRtlNotifyFilterChangeDirectory+11B↓p
                                        ; sub_1406F4230+20↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, rcx
                xor     esi, esi
                mov     rbp, rdx
                lea     r14d, [rsi+7]
                mov     ecx, r14d
                call    KeAcquireQueuedSpinLock
                mov     [rdi+45h], al
                test    rbp, rbp
                jnz     short loc_14033E348
                cmp     [rdi+44h], sil
                jnz     short loc_14033E36C
                lea     rcx, sub_14033E3F0
                xchg    rcx, [rdi+68h]
                mov     dl, [rdi+45h]
                mov     ecx, r14d
                call    KeReleaseQueuedSpinLock

loc_14033E329:                          ; CODE XREF: sub_14033E2D8+89↓j
                                        ; sub_14033E2D8+92↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033E348:                          ; CODE XREF: sub_14033E2D8+33↑j
                mov     rbx, rsi
                mov     rcx, r14
                xchg    rbx, [rdi+68h]
                mov     dl, [rdi+45h]
                mov     [rdi+38h], rsi
                call    KeReleaseQueuedSpinLock
                test    rbx, rbx
                jz      short loc_14033E329
                lock dec dword ptr [rbp+70h]
                mov     sil, 1
                jmp     short loc_14033E329
; ---------------------------------------------------------------------------

loc_14033E36C:                          ; CODE XREF: sub_14033E2D8+39↑j
                mov     rdx, rdi
                xor     ecx, ecx
                call    sub_14033E3F0
                jmp     short loc_14033E329
sub_14033E2D8   endp

; ---------------------------------------------------------------------------
algn_14033E378:                         ; DATA XREF: .pdata:00000001400D7028↑o
                align 20h
; Exported entry 1786. PsChargePoolQuota

; =============== S U B R O U T I N E =======================================


                public PsChargePoolQuota
PsChargePoolQuota proc near             ; CODE XREF: FsRtlNotifyFilterReportChange+26E↓p
                                        ; FsRtlNotifyFilterReportChangeLiteEx+22C↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    PsChargeProcessPoolQuota
                test    eax, eax
                js      short loc_14033E393
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E393:                          ; CODE XREF: PsChargePoolQuota+B↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
PsChargePoolQuota endp

byte_14033E39B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400D7034↑o
; Exported entry 1789. PsChargeProcessPoolQuota

; =============== S U B R O U T I N E =======================================


                public PsChargeProcessPoolQuota
PsChargeProcessPoolQuota proc near      ; CODE XREF: PsChargePoolQuota+4↑p
                                        ; sub_14033E3F0+27B↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     eax, edx
                mov     rdx, rcx
                mov     r9, r8
                jz      short loc_14033E3E1
                mov     rcx, [rcx+568h]
                xor     r8d, r8d
                cmp     eax, 1
                setz    r8b
                call    sub_140232470

loc_14033E3DB:                          ; CODE XREF: PsChargeProcessPoolQuota+33↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E3E1:                          ; CODE XREF: PsChargeProcessPoolQuota+13↑j
                xor     eax, eax
                jmp     short loc_14033E3DB
PsChargeProcessPoolQuota endp

; ---------------------------------------------------------------------------
algn_14033E3E5:                         ; DATA XREF: .pdata:00000001400D7040↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033E3F0   proc near               ; CODE XREF: sub_14033E2D8+99↑p
                                        ; DATA XREF: .rdata:000000014007FD98↑o ...

var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041AFEE SIZE 00000088 BYTES
; FUNCTION CHUNK AT 000000014047C242 SIZE 00000018 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rdx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     r13, rdx
                xor     edi, edi
                mov     [rax-70h], rdi
                mov     [rsp+0B8h+var_84], edi
                mov     rsi, [rdx+38h]
                mov     [rsp+0B8h+var_50], rsi
                mov     [rsp+0B8h+var_48], rsi
                mov     [rax+18h], rsi
                mov     eax, edi
                xchg    rax, [rdx+68h]
                mov     [rdx+38h], rdi
                mov     dl, [rdx+45h]
                lea     ecx, [rdi+7]
                call    KeReleaseQueuedSpinLock
                mov     rax, gs:188h
                or      ecx, 0FFFFFFFFh
                add     [rax+1E4h], cx
                mov     rax, [rsp+0B8h+arg_10]
                mov     r14, [rax]
                mov     [rsp+0B8h+arg_18], r14
                mov     rbx, gs:188h
                cmp     rbx, [r14+38h]
                jz      short loc_14033E47F
                mov     rcx, r14
                call    ExAcquireFastMutexUnsafe
                mov     [r14+38h], rbx

loc_14033E47F:                          ; CODE XREF: sub_14033E3F0+81↑j
                inc     dword ptr [r14+40h]

loc_14033E483:                          ; DATA XREF: .rdata:000000014007FD84↑o
;   __try { // __finally(loc_14041B021)
                lea     rcx, [r13+0A8h]
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_14033E4B0
                mov     rdx, [rcx+8]
                cmp     [rax+8], rcx
                jnz     loc_14033E53C
                cmp     [rdx], rcx
                jnz     loc_14033E53C
                mov     [rdx], rax
                mov     [rax+8], rdx

loc_14033E4B0:                          ; CODE XREF: sub_14033E3F0+A0↑j
                mov     rax, [r13+0B8h]
                mov     [rsp+0B8h+var_40], rax
                or      byte ptr [rax+3], 1
                mov     rbx, [rsp+0B8h+arg_10]
                mov     rcx, [rbx+58h]
                test    rcx, rcx
                jnz     short loc_14033E543

loc_14033E4D1:                          ; CODE XREF: sub_14033E3F0+157↓j
                                        ; sub_14033E3F0+19E↓j ...
                mov     dword ptr [r13+30h], 0C0000120h
                mov     dl, 1
                mov     rcx, r13
                call    IofCompleteRequest
                lock dec dword ptr [rbx+70h]
                cmp     [rbx+70h], edi
                jnz     loc_14033E725
                mov     rbx, [rsp+0B8h+arg_10]
                cmp     [rbx+50h], rdi
                jz      short loc_14033E515
                mov     edx, [rbx+64h]
                mov     rcx, [rbx+78h]
                call    PsReturnProcessPagedPoolQuota
                xor     edx, edx
                mov     rcx, [rbx+50h]
                call    ExFreePoolWithTag

loc_14033E515:                          ; CODE XREF: sub_14033E3F0+10C↑j
                test    byte ptr [rbx+48h], 40h
                jnz     short loc_14033E524
                cmp     [rbx+88h], rdi
                jz      short loc_14033E52D

loc_14033E524:                          ; CODE XREF: sub_14033E3F0+129↑j
                mov     rax, [rbx+18h]
                mov     [rsp+0B8h+var_70], rax

loc_14033E52D:                          ; CODE XREF: sub_14033E3F0+132↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_14033E725
; ---------------------------------------------------------------------------

loc_14033E53C:                          ; CODE XREF: sub_14033E3F0+AA↑j
                                        ; sub_14033E3F0+B3↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14033E543:                          ; CODE XREF: sub_14033E3F0+DF↑j
                cmp     [rbx+50h], rdi
                jnz     short loc_14033E4D1
                mov     r10, [r13+8]
                test    r10, r10
                jz      short loc_14033E58A
                test    byte ptr [r10+0Ah], 5
                jz      short loc_14033E55F
                mov     rax, [r10+18h]
                jmp     short loc_14033E580
; ---------------------------------------------------------------------------

loc_14033E55F:                          ; CODE XREF: sub_14033E3F0+167↑j
                mov     [rsp+0B8h+var_90], 40000010h
                mov     [rsp+0B8h+var_98], edi
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                mov     rcx, r10
                call    MmMapLockedPagesSpecifyCache
                mov     rcx, [rsi+58h]

loc_14033E580:                          ; CODE XREF: sub_14033E3F0+16D↑j
                mov     [rsp+0B8h+var_60], rax
                cmp     rax, rcx
                jz      short loc_14033E594

loc_14033E58A:                          ; CODE XREF: sub_14033E3F0+160↑j
                cmp     rcx, [r13+18h]
                jnz     loc_14033E4D1

loc_14033E594:                          ; CODE XREF: sub_14033E3F0+198↑j
                mov     [rsp+0B8h+var_78], rdi
                mov     [rsp+0B8h+var_88], edi
                mov     r15, rdi
                mov     [rsp+0B8h+var_78], rdi
                mov     esi, edi
                mov     [rsp+0B8h+var_88], edi
                lea     rax, [rbx+30h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      loc_14033E63E
                mov     rax, [rcx+10h]
                mov     [rsp+0B8h+var_58], rax
                mov     edx, [rax+8]
                cmp     edx, [rbx+68h]
                jb      short loc_14033E64B
                mov     rax, [rcx-90h]
                mov     esi, edx
                test    rax, rax
                jz      short loc_14033E5E4
                mov     r15, rax
                mov     [rsp+0B8h+var_78], rax
                jmp     short loc_14033E62B
; ---------------------------------------------------------------------------

loc_14033E5E4:                          ; CODE XREF: sub_14033E3F0+1E8↑j
                mov     rcx, [rcx-0A0h]
                test    rcx, rcx
                jz      short loc_14033E62B
                test    byte ptr [rcx+0Ah], 5
                jz      short loc_14033E601
                mov     r15, [rcx+18h]
                mov     [rsp+0B8h+var_78], r15
                jmp     short loc_14033E62B
; ---------------------------------------------------------------------------

loc_14033E601:                          ; CODE XREF: sub_14033E3F0+204↑j
                mov     [rsp+0B8h+var_90], 40000010h
                mov     [rsp+0B8h+var_98], edi
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                mov     r15, rax
                mov     [rsp+0B8h+var_78], rax
                mov     rax, [rsp+0B8h+var_58]
                mov     esi, [rax+8]

loc_14033E62B:                          ; CODE XREF: sub_14033E3F0+1F2↑j
                                        ; sub_14033E3F0+1FE↑j ...
                mov     [rsp+0B8h+var_88], esi
                mov     eax, [rbx+60h]
                cmp     esi, eax
                jbe     short loc_14033E64B
                mov     esi, eax
                mov     [rsp+0B8h+var_88], eax
                jmp     short loc_14033E64B
; ---------------------------------------------------------------------------

loc_14033E63E:                          ; CODE XREF: sub_14033E3F0+1C5↑j
                mov     eax, [rbx+60h]
                cmp     eax, [rbx+68h]
                cmovnb  esi, eax
                mov     [rsp+0B8h+var_88], esi

loc_14033E64B:                          ; CODE XREF: sub_14033E3F0+1DA↑j
                                        ; sub_14033E3F0+244↑j ...
                test    esi, esi
                jz      loc_14033E6FF
                mov     [rsp+0B8h+var_80], edi

loc_14033E657:                          ; DATA XREF: .rdata:000000014007FD74↑o
;     __try { // __except at loc_14033E6C1
                test    r15, r15
                jnz     short loc_14033E6A3
                mov     rcx, [rbx+78h]
                mov     r15d, esi
                mov     r8d, esi
                mov     edx, 1
                call    PsChargeProcessPoolQuota
                test    eax, eax
                jns     short loc_14033E67C
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 4

loc_14033E67C:                          ; CODE XREF: sub_14033E3F0+282↑j
                mov     [rsp+0B8h+var_80], 1
                mov     r8d, 4E725346h
                mov     rdx, r15
                mov     ecx, 11h
                call    ExAllocatePoolWithTag
                mov     r15, rax
                mov     [rsp+0B8h+var_78], rax
                mov     [rbx+50h], rax

loc_14033E6A3:                          ; CODE XREF: sub_14033E3F0+26A↑j
                mov     r8d, [rbx+68h]
                mov     rdx, [rbx+58h]
                mov     rcx, r15
                call    memmove
                mov     [rbx+64h], esi
                mov     [rbx+58h], r15
                mov     rax, [rsp+0B8h+var_50]
                jmp     short loc_14033E6F9
;     } // starts at 14033E657
; ---------------------------------------------------------------------------

loc_14033E6C1:                          ; DATA XREF: .rdata:000000014007FD74↑o
;   __except(loc_14041AFEE) // owned by 14033E657
                mov     rbx, [rsp+0B8h+arg_10]
                cmp     [rsp+0B8h+var_80], 0
                jz      short loc_14033E6DD
                mov     edx, [rsp+0B8h+var_88]
                mov     rcx, [rbx+78h]
                call    PsReturnProcessPagedPoolQuota

loc_14033E6DD:                          ; CODE XREF: sub_14033E3F0+2DE↑j
                or      word ptr [rbx+48h], 2
                xor     edi, edi
                mov     r13, [rsp+0B8h+arg_8]
                mov     r14, [rsp+0B8h+arg_18]
                mov     rax, [rsp+0B8h+var_48]

loc_14033E6F9:                          ; CODE XREF: sub_14033E3F0+2CF↑j
                movzx   eax, word ptr [rax+48h]
                jmp     short loc_14033E708
; ---------------------------------------------------------------------------

loc_14033E6FF:                          ; CODE XREF: sub_14033E3F0+25D↑j
                or      word ptr [rbx+48h], 2
                movzx   eax, word ptr [rbx+48h]

loc_14033E708:                          ; CODE XREF: sub_14033E3F0+30D↑j
                test    al, 2
                jz      loc_14033E4D1
                mov     [rbx+58h], rdi
                mov     [rbx+50h], rdi
                and     qword ptr [rbx+68h], 0
                mov     [rbx+64h], edi
                jmp     loc_14033E4D1
;   } // starts at 14033E483
; ---------------------------------------------------------------------------

loc_14033E725:                          ; CODE XREF: sub_14033E3F0+FA↑j
                                        ; sub_14033E3F0+147↑j
                                        ; DATA XREF: ...
                add     dword ptr [r14+40h], 0FFFFFFFFh
                jnz     short loc_14033E738
                mov     [r14+38h], rdi
                mov     rcx, r14
                call    ExReleaseFastMutexUnsafe

loc_14033E738:                          ; CODE XREF: sub_14033E3F0+33A↑j
                mov     rbx, [rsp+0B8h+var_70]
                test    rbx, rbx
                jnz     loc_14047C242

loc_14033E746:                          ; CODE XREF: sub_14033E3F0+13DE65↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+0B8h+arg_0]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033E3F0
sub_14033E3F0   endp

algn_14033E76D:                         ; DATA XREF: .rdata:000000014007FD98↑o
                                        ; .pdata:00000001400D704C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=160h

sub_14033E780   proc near               ; DATA XREF: .rdata:00000001400087B8↑o
                                        ; .rdata:0000000140008808↑o ...

var_240         = dword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = word ptr -228h
var_226         = dword ptr -226h
var_222         = word ptr -222h
var_220         = byte ptr -220h
var_218         = qword ptr -218h
var_170         = byte ptr -170h
var_168         = qword ptr -168h
var_C0          = byte ptr -0C0h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014047C25A SIZE 00000113 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                lea     rbp, [rsp-160h]
                sub     rsp, 260h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+160h+var_10], rax
                xor     edi, edi
                lea     rcx, [rbp+160h+var_170]
                mov     ebx, 0A8h
                mov     [rsp+260h+var_226], edi
                mov     r8d, ebx
                mov     [rsp+260h+var_222], di
                xor     edx, edx
                mov     [rsp+260h+var_240], edi
                call    memset
                mov     r8d, ebx
                lea     rcx, [rbp+160h+var_C0]
                xor     edx, edx
                call    memset
                mov     r8d, ebx
                lea     rcx, [rsp+260h+var_220]
                xor     edx, edx
                call    memset
                cmp     cs:dword_140C1E67C, edi
                jnz     loc_14047C25A

loc_14033E7F9:                          ; CODE XREF: sub_14033E780+13DB3D↓j
                mov     al, 1

loc_14033E7FB:                          ; CODE XREF: sub_14033E780+13DBE8↓j
                mov     rcx, [rbp+160h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+260h+var_s0]
                mov     rbx, [r11+10h]
                mov     rdi, [r11+18h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033E780
sub_14033E780   endp

byte_14033E820  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007FDE4↑o
                                        ; .pdata:00000001400D7058↑o

; =============== S U B R O U T I N E =======================================


sub_14033E828   proc near               ; CODE XREF: sub_140239520+A0A↑p
                                        ; sub_14023A910+2D3↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rbx, rdx
                mov     rsi, rcx
                lea     rdx, [r8+8]
                add     rcx, 10h
                mov     rdi, r8
                call    RtlRbRemoveNode
                lea     r9, [rsp+28h+arg_10]
                mov     rdx, rbx
                lea     r8, [rsp+28h+arg_0]
                mov     rcx, rdi
                call    sub_14023A830
                mov     edx, [rdi]
                xor     edx, dword ptr cs:xmmword_140C1DC20
                mov     rbx, [rsp+28h+arg_8]
                xor     edx, edi
                movzx   ecx, dx
                sub     eax, ecx
                add     eax, [rsp+28h+arg_0]
                sub     [rsi+38h], rax
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033E828   endp

algn_14033E88F:                         ; DATA XREF: .pdata:00000001400D7064↑o
                align 20h
; Exported entry 227. ExGetCurrentProcessorCounts

; =============== S U B R O U T I N E =======================================


                public ExGetCurrentProcessorCounts
ExGetCurrentProcessorCounts proc near   ; DATA XREF: .pdata:00000001400D7070↑o
                mov     r10, gs:20h
                mov     rax, [r10+18h]
                mov     r9d, [rax+28Ch]
                mov     [rcx], r9d
                mov     eax, [r10+7E88h]
                add     eax, [r10+7E84h]
                mov     [rdx], eax
                mov     eax, [r10+24h]
                mov     [r8], eax
                retn
ExGetCurrentProcessorCounts endp

; ---------------------------------------------------------------------------
                align 10h
algn_14033E8D0:                         ; DATA XREF: .pdata:00000001400D7070↑o
                align 20h
; Exported entry 2036. RtlCopyBitMapEx

; =============== S U B R O U T I N E =======================================



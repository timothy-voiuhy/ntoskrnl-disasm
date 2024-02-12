XIPDispatch     proc near               ; DATA XREF: .pdata:00000001400FA1E8↑o
                mov     eax, 0C000000Eh
                retn
XIPDispatch     endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1405B9A87:                         ; DATA XREF: .pdata:00000001400FA1E8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405B9A90   proc near               ; DATA XREF: .pdata:00000001400FA1F4↑o
                                        ; PAGE:000000014098B358↓o

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 0E0h
                mov     r10d, r9d
                mov     rbx, r8
                mov     r11, rcx
                mov     r8, [rsp+0E8h+arg_20]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+0E8h+var_28], xmm0
                mov     [rsp+0E8h+var_18], rax
                mov     rax, gs:188h
                mov     r9b, [rax+232h]
                cmp     edx, 7
                jz      short loc_1405B9AE7
                mov     eax, 0C0000003h
                jmp     loc_1405B9D6C
; ---------------------------------------------------------------------------

loc_1405B9AE7:                          ; CODE XREF: sub_1405B9A90+4B↑j
                test    r9b, r9b
                jz      short loc_1405B9B2E

loc_1405B9AEC:                          ; DATA XREF: .rdata:00000001400C57F0↑o
;   __try { // __except at loc_1405B9B29
                test    bl, 3
                jz      short loc_1405B9AF7
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405B9AF7:                          ; CODE XREF: sub_1405B9A90+5F↑j
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     rbx, rdx
                cmovb   rcx, rbx
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+77h]
                mov     [rcx+77h], al
                test    r8, r8
                jz      short loc_1405B9B27
                cmp     r8, rdx
                cmovb   rdx, r8
                mov     dword ptr [rdx], 78h ; 'x'

loc_1405B9B27:                          ; CODE XREF: sub_1405B9A90+88↑j
                jmp     short loc_1405B9B3A
;   } // starts at 1405B9AEC
; ---------------------------------------------------------------------------

loc_1405B9B29:                          ; DATA XREF: .rdata:00000001400C57F0↑o
;   __except(1) // owned by 1405B9AEC
                jmp     loc_1405B9D6C
; ---------------------------------------------------------------------------

loc_1405B9B2E:                          ; CODE XREF: sub_1405B9A90+5A↑j
                test    r8, r8
                jz      short loc_1405B9B3A
                mov     dword ptr [r8], 78h ; 'x'

loc_1405B9B3A:                          ; CODE XREF: sub_1405B9A90:loc_1405B9B27↑j
                                        ; sub_1405B9A90+A1↑j
                cmp     r10d, 78h ; 'x'
                jz      short loc_1405B9B4A
                mov     eax, 0C0000004h
                jmp     loc_1405B9D6C
; ---------------------------------------------------------------------------

loc_1405B9B4A:                          ; CODE XREF: sub_1405B9A90+AE↑j
                mov     r8, cs:qword_140CFB168
                and     [rsp+0E8h+var_B8], 0
                and     [rsp+0E8h+var_C0], 0
                lea     rax, [rsp+0E8h+var_B8]
                mov     [rsp+0E8h+var_C8], rax
                mov     edx, 8
                mov     rcx, r11
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1405B9D6C
                xor     eax, eax
                mov     byte ptr [rsp+0E8h+var_98+0Fh], al
                mov     dword ptr [rsp+0E8h+var_78+0Ch], eax
                mov     dword ptr [rsp+0E8h+var_38+4], eax
                mov     rdi, [rsp+0E8h+var_B8]
                lea     rdx, [rsp+0E8h+var_28]
                mov     rcx, [rdi+10h]
                call    KeAcquireInStackQueuedSpinLock
                xorps   xmm0, xmm0
                movdqa  [rsp+0E8h+var_A8], xmm0
                mov     rax, [rdi+70h]
                mov     qword ptr [rsp+0E8h+var_98], rax
                and     word ptr [rsp+0E8h+var_98+8], 0
                mov     al, [rdi+138h]
                shr     al, 3
                and     al, 1
                mov     byte ptr [rsp+0E8h+var_98+0Ah], al
                mov     rdx, [rdi+10h]
                mov     ecx, [rdx+1Ch]
                test    ecx, ecx
                setz    byte ptr [rsp+0E8h+var_98+0Bh]
                cmp     dword ptr [rdi+130h], 0
                setnbe  byte ptr [rsp+0E8h+var_98+0Ch]
                mov     al, [rdx+20h]
                mov     byte ptr [rsp+0E8h+var_98+0Dh], al
                mov     al, [rdx+21h]
                mov     byte ptr [rsp+0E8h+var_98+0Eh], al
                mov     eax, [rdi+134h]
                mov     dword ptr [rsp+0E8h+var_88], eax
                mov     eax, [rdi+118h]
                mov     dword ptr [rsp+0E8h+var_88+4], eax
                mov     eax, [rdi+11Ch]
                mov     dword ptr [rsp+0E8h+var_88+8], eax
                mov     eax, [rdi+128h]
                mov     dword ptr [rsp+0E8h+var_88+0Ch], eax
                mov     dword ptr [rsp+0E8h+var_78], ecx
                mov     eax, [rdi+124h]
                mov     dword ptr [rsp+0E8h+var_78+4], eax
                mov     eax, [rdx+18h]
                mov     dword ptr [rsp+0E8h+var_78+8], eax
                and     qword ptr [rsp+0E8h+var_68], 0
                mov     rax, [rdi+18h]
                mov     qword ptr [rsp+0E8h+var_68+8], rax
                mov     rax, [rdi+20h]
                mov     qword ptr [rsp+0E8h+var_58], rax
                mov     rax, [rdi+30h]
                mov     rcx, [rax+440h]
                mov     qword ptr [rsp+0E8h+var_58+8], rcx
                mov     rax, [rdi+38h]
                mov     qword ptr [rsp+0E8h+var_48], rax
                mov     rax, [rdi+40h]
                mov     qword ptr [rsp+0E8h+var_48+8], rax
                mov     eax, [rdi+140h]
                mov     dword ptr [rsp+0E8h+var_38], eax
                lea     rcx, [rsp+0E8h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rsi, [rsp+0E8h+var_18]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B9CFD
                test    al, 1
                jz      short loc_1405B9CFD
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B9CFD
                cmp     sil, 0Fh
                ja      short loc_1405B9CFD
                cmp     al, 2
                jb      short loc_1405B9CFD
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rsp+0E8h+var_18]
                inc     ecx
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B9CF8
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B9CF8:                          ; CODE XREF: sub_1405B9A90+25E↑j
                mov     rdi, [rsp+0E8h+var_B8]

loc_1405B9CFD:                          ; CODE XREF: sub_1405B9A90+215↑j
                                        ; sub_1405B9A90+219↑j ...
                movzx   eax, sil
                mov     cr8, rax
                mov     edx, 746C6644h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                nop

loc_1405B9D13:                          ; DATA XREF: .rdata:00000001400C5800↑o
;   __try { // __except at loc_1405B9D6A
                movaps  xmm0, [rsp+0E8h+var_A8]
                movups  xmmword ptr [rbx], xmm0
                movaps  xmm1, [rsp+0E8h+var_98]
                movups  xmmword ptr [rbx+10h], xmm1
                movaps  xmm0, [rsp+0E8h+var_88]
                movups  xmmword ptr [rbx+20h], xmm0
                movaps  xmm1, [rsp+0E8h+var_78]
                movups  xmmword ptr [rbx+30h], xmm1
                movaps  xmm0, [rsp+0E8h+var_68]
                movups  xmmword ptr [rbx+40h], xmm0
                movaps  xmm1, [rsp+0E8h+var_58]
                movups  xmmword ptr [rbx+50h], xmm1
                movaps  xmm0, [rsp+0E8h+var_48]
                movups  xmmword ptr [rbx+60h], xmm0
                movsd   xmm0, [rsp+0E8h+var_38]
                movsd   qword ptr [rbx+70h], xmm0
                jmp     short $+2
;   } // starts at 1405B9D13
; ---------------------------------------------------------------------------

loc_1405B9D6A:                          ; CODE XREF: sub_1405B9A90+2D8↑j
                                        ; DATA XREF: .rdata:00000001400C5800↑o
;   __except(loc_1405B9D82) // owned by 1405B9D13
                xor     eax, eax

loc_1405B9D6C:                          ; CODE XREF: sub_1405B9A90+52↑j
                                        ; sub_1405B9A90:loc_1405B9B29↑j ...
                lea     r11, [rsp+0E8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2
; } // starts at 1405B9A90

loc_1405B9D82:                          ; DATA XREF: .rdata:00000001400C5800↑o
                                        ; .pdata:00000001400FA1F4↑o ...
;   __except filter // owned by 1405B9D13
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                call    ExSystemExceptionFilter
                nop
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B9A90   endp

algn_1405B9D98:                         ; DATA XREF: .pdata:00000001400FA200↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405B9DA0   proc near               ; DATA XREF: .pdata:00000001400FA20C↑o
                                        ; sub_14023C8E0+49↑o ...

var_18          = dword ptr -18h

                mov     r11, rsp
                push    rbx
                sub     rsp, 50h
                mov     rbx, rcx
                xor     ecx, ecx
                mov     [rsp+58h+var_18], ecx
                mov     [r11-20h], rcx
                mov     [r11-28h], rcx
                lea     rcx, aResourcetimeou ; "ResourceTimeout"
                mov     edx, [rbx+30h]
                mov     eax, [rbx+34h]
                mov     r9, [rbx+20h]
                mov     r8, [rbx+28h]
                mov     [r11-30h], rax
                mov     [r11-38h], rdx
                mov     edx, 1CCh
                call    DbgkWerCaptureLiveKernelDump
                mov     rcx, rbx
                call    sub_14023C050
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B9DA0   endp

byte_1405B9DEF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA20C↑o

; =============== S U B R O U T I N E =======================================


sub_1405B9DF8   proc near               ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+1B3↑p
                                        ; sub_1405B5AA4+3A↑p
                                        ; DATA XREF: ...
                cmp     dword ptr [rcx+40h], 1
                jz      short loc_1405B9E02
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405B9E02:                          ; CODE XREF: sub_1405B9DF8+4↑j
                mov     edx, 80h
                mov     al, 1
                or      [rcx+1Ah], dx
                retn
sub_1405B9DF8   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1405B9E0F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA218↑o

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_1405B9E18   proc near               ; CODE XREF: sub_1407011C0+1269C6↓p
                                        ; sub_1407011C0+1269D9↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                movsxd  r8, ecx
                mov     ecx, 12Ah
                lea     edx, [r9+2]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B9E18   endp

algn_1405B9E37:                         ; DATA XREF: .pdata:00000001400FA224↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1C0h

sub_1405B9E40   proc near               ; CODE XREF: sub_1407011C0:loc_140827B9F↓p
                                        ; sub_1407CE390+941A6↓p
                                        ; DATA XREF: ...

var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = dword ptr -290h
var_288         = xmmword ptr -288h
var_278         = xmmword ptr -278h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = xmmword ptr -240h
var_230         = qword ptr -230h
var_228         = word ptr -228h
var_220         = byte ptr -220h
var_218         = dword ptr -218h
var_214         = byte ptr -214h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                lea     rbp, [rax-1C8h]
                sub     rsp, 2C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1C0h+var_10], rax
                xor     eax, eax
                mov     [rsp+2C0h+var_260], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+1C0h+var_230], rax
                xor     edi, edi
                mov     [rbp+1C0h+var_228], ax
                xor     edx, edx
                mov     qword ptr [rsp+2C0h+var_290], rdi
                mov     r8d, 210h
                mov     [rsp+2C0h+var_248], 240h
                lea     rcx, [rbp+1C0h+var_220]
                movups  [rsp+2C0h+var_288+8], xmm0
                call    memset
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+2C0h+var_288], edi
                lea     rdx, aRegistryMachin_26 ; "\\REGISTRY\\MACHINE\\SYSTEM\\CurrentCon"...
                lea     rcx, [rsp+2C0h+var_288+8]
                movups  [rsp+2C0h+var_278+8], xmm0
                call    RtlInitUnicodeString
                lea     rax, [rsp+2C0h+var_288+8]
                mov     [rsp+2C0h+var_258], rdi
                xorps   xmm0, xmm0
                mov     [rsp+2C0h+var_250], rax
                lea     r8, [rsp+2C0h+var_260]
                mov     edx, 2001Fh
                lea     rcx, [rsp+2C0h+var_290]
                movdqu  [rbp+1C0h+var_240], xmm0
                lea     esi, [rdi+30h]
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1405B9FDB
                lea     rdx, aInstalllanguag ; "InstallLanguage"
                lea     rcx, [rsp+2C0h+var_288+8]
                call    RtlInitUnicodeString
                movzx   edx, cs:word_140D2E680
                lea     r8d, [rdi+3]

loc_1405B9F1C:                          ; CODE XREF: sub_1405B9E40+101↓j
                movzx   ecx, dx
                mov     eax, 37h ; '7'
                and     cx, 0Fh
                cmp     cx, 9
                cmovbe  ax, si
                shr     dx, 4
                add     ax, cx
                mov     word ptr [rbp+r8*2+1C0h+var_230], ax
                sub     r8, 1
                jns     short loc_1405B9F1C
                mov     rcx, qword ptr [rsp+2C0h+var_290]
                lea     rax, [rsp+2C0h+var_288]
                mov     [rsp+2C0h+var_298], rax
                lea     r9, [rbp+1C0h+var_220]
                mov     r8d, 2
                mov     dword ptr [rsp+2C0h+var_2A0], 210h
                lea     rdx, [rsp+2C0h+var_288+8]
                call    ZwQueryValueKey
                test    eax, eax
                js      short loc_1405B9FAB
                lea     rdx, aPreviousinstal ; "PreviousInstallLanguage"
                lea     rcx, [rsp+2C0h+var_278+8]
                call    RtlInitUnicodeString
                mov     eax, [rbp+1C0h+var_218]
                lea     rdx, [rsp+2C0h+var_278+8]
                mov     rcx, qword ptr [rsp+2C0h+var_290]
                mov     r9d, 1
                mov     dword ptr [rsp+2C0h+var_298], eax
                xor     r8d, r8d
                lea     rax, [rbp+1C0h+var_214]
                mov     [rsp+2C0h+var_2A0], rax
                call    ZwSetValueKey

loc_1405B9FAB:                          ; CODE XREF: sub_1405B9E40+130↑j
                mov     rcx, qword ptr [rsp+2C0h+var_290]
                lea     rax, [rbp+1C0h+var_230]
                mov     dword ptr [rsp+2C0h+var_298], 0Ah
                lea     rdx, [rsp+2C0h+var_288+8]
                mov     r9d, 1
                mov     [rsp+2C0h+var_2A0], rax
                xor     r8d, r8d
                call    ZwSetValueKey
                test    eax, eax
                mov     ebx, eax
                cmovns  ebx, edi

loc_1405B9FDB:                          ; CODE XREF: sub_1405B9E40+BA↑j
                mov     rcx, qword ptr [rsp+2C0h+var_290]
                test    rcx, rcx
                jz      short loc_1405B9FEA
                call    ZwClose

loc_1405B9FEA:                          ; CODE XREF: sub_1405B9E40+1A3↑j
                mov     eax, ebx
                mov     rcx, [rbp+1C0h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2C0h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405B9E40
sub_1405B9E40   endp

byte_1405BA015  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA230↑o

; =============== S U B R O U T I N E =======================================


sub_1405BA01C   proc near               ; CODE XREF: sub_1402369F0+1F6A93↑p
                                        ; DATA XREF: .pdata:00000001400FA23C↑o

var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     edi, ecx
                mov     r15d, r8d
                mov     rbp, rdx
                and     ecx, 1
                jnz     short loc_1405BA059
                bt      cs:dword_140CFC550, 0Ah
                setb    r9b
                bt      edi, 9
                setnb   al
                test    al, r9b
                jz      short loc_1405BA059
                bts     edi, 9

loc_1405BA059:                          ; CODE XREF: sub_1405BA01C+1F↑j
                                        ; sub_1405BA01C+37↑j
                mov     rdx, cr8
                neg     ecx
                sbb     al, al
                add     al, 2
                cmp     dl, al
                jbe     short loc_1405BA084
                movsxd  r8, edi
                mov     r9, rbp
                movzx   edx, dl
                mov     ecx, 0C1h
                mov     [rsp+98h+var_78], 30h ; '0'
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BA084:                          ; CODE XREF: sub_1405BA01C+49↑j
                mov     edx, 80000000h
                mov     r8d, 1
                mov     ecx, edi
                call    sub_1402E791C
                mov     r12d, 1000h
                mov     dword ptr [rsp+98h+var_78], 4
                mov     r9d, r12d
                mov     r8d, r12d
                mov     edx, r12d
                lea     rcx, [rax+100h]
                call    sub_14029BC30
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1405BA0C8
                xor     ebp, ebp
                jmp     loc_1405BA33E
; ---------------------------------------------------------------------------

loc_1405BA0C8:                          ; CODE XREF: sub_1405BA01C+A3↑j
                mov     rbx, 0FFFFF78000000320h
                lea     rcx, [rax+10h]
                mov     r8d, 0FF0h
                mov     rbx, [rbx]
                movzx   edx, bl
                or      edx, 1
                call    memset
                mov     eax, edi
                lea     r14, [rbp-8]
                and     eax, 40h
                cmovz   r14, rbp
                and     qword ptr [rsi+8], 0
                or      bl, 1
                mov     [rsi], r14d
                mov     [rsi+2], bl
                mov     [rsi+4], r15d
                test    eax, eax
                jz      short loc_1405BA111
                bts     dword ptr [rsi], 0Eh

loc_1405BA111:                          ; CODE XREF: sub_1405BA01C+EF↑j
                mov     rbp, rsi
                sub     rbp, r14
                add     rbp, r12
                and     rbp, 0FFFFFFFFFFFFFFF0h
                bt      edi, 0Ah
                jnb     short loc_1405BA131
                mov     r8, r14
                xor     edx, edx
                mov     rcx, rbp
                call    memset

loc_1405BA131:                          ; CODE XREF: sub_1405BA01C+106↑j
                mov     rcx, rsi
                call    sub_1402A33A0
                xor     r12d, r12d
                xorps   xmm0, xmm0
                movups  [rsp+98h+var_50], xmm0
                lea     r13d, [r12+20h]
                cmp     eax, r13d
                cmovnz  r12d, eax
                xor     eax, eax
                mov     [rsp+98h+var_40], rax
                mov     eax, cs:dword_140CFB0F8
                cmp     r15d, eax
                jnz     short loc_1405BA163
                int     3               ; Trap to Debugger

loc_1405BA163:                          ; CODE XREF: sub_1405BA01C+144↑j
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                test    al, 41h
                jz      short loc_1405BA185
                mov     ecx, 0E20h
                mov     [rsp+98h+var_78], r14
                mov     r9, rsi
                mov     r8d, r15d
                mov     edx, r12d
                call    sub_1405A7F64

loc_1405BA185:                          ; CODE XREF: sub_1405BA01C+14F↑j
                mov     edx, r12d
                and     edx, r13d
                mov     [rsp+98h+arg_18], edx
                jnz     short loc_1405BA1B7
                mov     eax, gs:1A4h
                lea     r11, qword_140C16980
                mov     r9, cs:qword_140C16978
                mov     r10, cs:qword_140C16960
                mov     r11, [r11+rax*8]
                jmp     short loc_1405BA1CC
; ---------------------------------------------------------------------------

loc_1405BA1B7:                          ; CODE XREF: sub_1405BA01C+176↑j
                mov     r11, cs:qword_140C19188
                mov     r9, cs:qword_140C16968
                mov     r10, cs:qword_140C19190

loc_1405BA1CC:                          ; CODE XREF: sub_1405BA01C+199↑j
                imul    rcx, r15, 9E5Fh
                mov     [rsp+98h+var_60], r10
                mov     rdi, rcx
                mov     [rsp+98h+var_68], r9
                shr     rdi, 20h
                xor     edi, ecx
                mov     [rsp+98h+var_58], r11
                and     edi, r9d
                mov     ecx, edi
                mov     [rsp+98h+arg_0], ecx

loc_1405BA1F7:                          ; CODE XREF: sub_1405BA01C+214↓j
                                        ; sub_1405BA01C+235↓j ...
                mov     r8d, edi
                imul    rsi, r8, 38h ; '8'
                lea     rbx, [rsi+r11]
                mov     eax, [rbx]
                cmp     eax, r15d
                jz      loc_1405BA31D
                test    eax, eax
                jnz     loc_1405BA2FD
                test    edx, edx
                jnz     short loc_1405BA239
                mov     rax, cs:qword_140C191C8
                mov     ecx, [rsi+rax]
                test    ecx, ecx
                jz      short loc_1405BA232
                mov     [rbx], ecx

loc_1405BA229:                          ; CODE XREF: sub_1405BA01C+2DC↓j
                mov     ecx, [rsp+98h+arg_0]
                jmp     short loc_1405BA1F7
; ---------------------------------------------------------------------------

loc_1405BA232:                          ; CODE XREF: sub_1405BA01C+209↑j
                mov     ecx, [rsp+98h+arg_0]

loc_1405BA239:                          ; CODE XREF: sub_1405BA01C+1FB↑j
                lea     rax, [r10-1]
                cmp     r8, rax
                jz      loc_1405BA2FD
                test    edx, edx
                jz      short loc_1405BA253
                xor     eax, eax
                lock cmpxchg [rbx], r15d
                jmp     short loc_1405BA1F7
; ---------------------------------------------------------------------------

loc_1405BA253:                          ; CODE XREF: sub_1405BA01C+22C↑j
                lea     rdx, [rsp+98h+var_50]
                lea     rcx, qword_140C191A0
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, cs:qword_140C191C8
                cmp     dword ptr [rsi+rcx], 0
                jnz     short loc_1405BA278
                mov     [rsi+rcx], r15d
                mov     [rbx], r15d

loc_1405BA278:                          ; CODE XREF: sub_1405BA01C+253↑j
                lea     rcx, [rsp+98h+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+98h+var_40]
                test    eax, eax
                jz      short loc_1405BA2DE
                test    al, 1
                jz      short loc_1405BA2DE
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405BA2DE
                cmp     bl, 0Fh
                ja      short loc_1405BA2DE
                cmp     al, 2
                jb      short loc_1405BA2DE
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rsp+98h+var_40]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405BA2DE
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405BA2DE:                          ; CODE XREF: sub_1405BA01C+273↑j
                                        ; sub_1405BA01C+277↑j ...
                mov     cr8, rbx
                mov     edx, [rsp+98h+arg_18]
                mov     r9, [rsp+98h+var_68]
                mov     r10, [rsp+98h+var_60]
                mov     r11, [rsp+98h+var_58]
                jmp     loc_1405BA229
; ---------------------------------------------------------------------------

loc_1405BA2FD:                          ; CODE XREF: sub_1405BA01C+1F3↑j
                                        ; sub_1405BA01C+224↑j
                lea     eax, [rdi+1]
                and     eax, r9d
                mov     edi, eax
                cmp     eax, ecx
                jnz     loc_1405BA1F7
                mov     r8d, r12d
                mov     rdx, r14
                mov     ecx, r15d
                call    sub_140347CEC
                jmp     short loc_1405BA33E
; ---------------------------------------------------------------------------

loc_1405BA31D:                          ; CODE XREF: sub_1405BA01C+1EB↑j
                test    r12b, 1
                jnz     short loc_1405BA32E
                mov     eax, 10h
                lea     r13d, [rax-8]
                jmp     short loc_1405BA333
; ---------------------------------------------------------------------------

loc_1405BA32E:                          ; CODE XREF: sub_1405BA01C+305↑j
                mov     eax, 28h ; '('

loc_1405BA333:                          ; CODE XREF: sub_1405BA01C+310↑j
                lock inc qword ptr [rbx+rax]
                lock xadd [rbx+r13], r14

loc_1405BA33E:                          ; CODE XREF: sub_1405BA01C+A7↑j
                                        ; sub_1405BA01C+2FF↑j
                mov     rbx, [rsp+98h+arg_8]
                mov     rax, rbp
                add     rsp, 60h
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
sub_1405BA01C   endp

algn_1405BA35A:                         ; DATA XREF: .pdata:00000001400FA23C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405BA360   proc near               ; CODE XREF: sub_1409C88F0:loc_1409C88FD↓p
                                        ; sub_1409D65E0+266↓p ...
                sub     rsp, 28h
                call    sub_1402A327C
                mov     rcx, rax
                call    sub_1403CD99C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BA360   endp

algn_1405BA377:                         ; DATA XREF: .pdata:00000001400FA248↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405BA380   proc near               ; CODE XREF: sub_14023C050+1F276B↑p
                                        ; DATA XREF: .pdata:00000001400FA254↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12, rcx
                mov     rdi, rdx
                mov     rcx, rdx
                call    sub_1402A33A0
                mov     r8d, edx
                xor     r14d, r14d
                cmp     eax, 20h ; ' '
                mov     rcx, rdi
                cmovnz  r14d, eax
                and     r8d, 0FFFh
                mov     eax, 1000h
                sub     eax, r8d
                xor     r8d, r8d
                mov     edx, eax
                mov     ebp, eax
                call    sub_1402E909C
                mov     r15d, r14d
                and     r15d, 1
                mov     rdx, cr8
                mov     eax, r15d
                neg     eax
                sbb     cl, cl
                add     cl, 2
                cmp     dl, cl
                jbe     short loc_1405BA40F
                movzx   edx, dl
                mov     r9, rdi
                mov     ecx, 0C1h
                mov     [rsp+48h+var_28], 31h ; '1'
                mov     r8d, 1
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BA40F:                          ; CODE XREF: sub_1405BA380+6D↑j
                mov     rsi, rdi
                and     rsi, 0FFFFFFFFFFFFF000h
                movzx   ebx, word ptr [rsi]
                and     ebx, 1FFFh
                lea     rax, [rbx+0Fh]
                and     rax, 0FFFFFFFFFFFFFFF0h
                cmp     rax, rbp
                jz      short loc_1405BA44C
                mov     r9, rbp
                mov     [rsp+48h+var_28], 21h ; '!'
                mov     r8d, ebx
                mov     rdx, rdi
                mov     ecx, 0C1h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BA44C:                          ; CODE XREF: sub_1405BA380+AD↑j
                mov     edx, [rsi]
                mov     ecx, edx
                and     ecx, 4000h
                mov     eax, ecx
                neg     eax
                sbb     r8, r8
                and     r8d, 8
                add     r8, 10h
                add     r8, rsi
                cmp     r8, rdi
                jnb     short loc_1405BA47D
                mov     al, [rsi+2]

loc_1405BA470:                          ; CODE XREF: sub_1405BA380+FB↓j
                cmp     [r8], al
                jnz     short loc_1405BA4EA
                inc     r8
                cmp     r8, rdi
                jb      short loc_1405BA470

loc_1405BA47D:                          ; CODE XREF: sub_1405BA380+EB↑j
                test    ecx, ecx
                jz      short loc_1405BA495
                mov     r9d, 1
                mov     r8d, r14d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1405A1F40

loc_1405BA495:                          ; CODE XREF: sub_1405BA380+FF↑j
                mov     ebp, [rsi+4]
                mov     eax, cs:dword_140CFB0F8
                cmp     ebp, eax
                jnz     short loc_1405BA4A3
                int     3               ; Trap to Debugger

loc_1405BA4A3:                          ; CODE XREF: sub_1405BA380+120↑j
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                test    al, 41h
                jz      short loc_1405BA4C5
                mov     ecx, 0E22h
                mov     [rsp+48h+var_28], rbx
                mov     r9, rdi
                mov     r8d, ebp
                mov     edx, r14d
                call    sub_1405A7F64

loc_1405BA4C5:                          ; CODE XREF: sub_1405BA380+12B↑j
                mov     r9d, r14d
                and     r9d, 20h
                jnz     short loc_1405BA504
                mov     eax, gs:1A4h
                lea     r11, qword_140C16980
                mov     r10, cs:qword_140C16978
                mov     r11, [r11+rax*8]
                jmp     short loc_1405BA512
; ---------------------------------------------------------------------------

loc_1405BA4EA:                          ; CODE XREF: sub_1405BA380+F3↑j
                mov     r9, rdx
                mov     [rsp+48h+var_28], 23h ; '#'
                mov     rdx, rdi
                mov     ecx, 0C1h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BA504:                          ; CODE XREF: sub_1405BA380+14C↑j
                mov     r11, cs:qword_140C19188
                mov     r10, cs:qword_140C16968

loc_1405BA512:                          ; CODE XREF: sub_1405BA380+168↑j
                imul    rcx, rbp, 9E5Fh
                mov     rdx, rcx
                shr     rdx, 20h
                xor     edx, ecx
                and     edx, r10d
                mov     edi, edx

loc_1405BA527:                          ; CODE XREF: sub_1405BA380+1D2↓j
                                        ; sub_1405BA380+1DE↓j
                mov     eax, edx
                imul    rcx, rax, 38h ; '8'
                lea     r8, [rcx+r11]
                mov     eax, [r8]
                cmp     eax, ebp
                jz      short loc_1405BA56F
                test    eax, eax
                jnz     short loc_1405BA554
                test    r9d, r9d
                jnz     short loc_1405BA554
                mov     rax, cs:qword_140C191C8
                mov     ecx, [rcx+rax]
                test    ecx, ecx
                jz      short loc_1405BA554
                mov     [r8], ecx
                jmp     short loc_1405BA527
; ---------------------------------------------------------------------------

loc_1405BA554:                          ; CODE XREF: sub_1405BA380+1BA↑j
                                        ; sub_1405BA380+1BF↑j ...
                lea     eax, [rdx+1]
                and     eax, r10d
                mov     edx, eax
                cmp     eax, edi
                jnz     short loc_1405BA527
                mov     r8d, r14d
                mov     rdx, rbx
                mov     ecx, ebp
                call    sub_1403496E4
                jmp     short loc_1405BA593
; ---------------------------------------------------------------------------

loc_1405BA56F:                          ; CODE XREF: sub_1405BA380+1B6↑j
                mov     eax, r15d
                neg     eax
                sbb     rcx, rcx
                and     ecx, 18h
                lock inc qword ptr [rcx+r8+18h]
                neg     rbx
                neg     r15d
                sbb     rax, rax
                and     eax, 18h
                lock xadd [rax+r8+8], rbx

loc_1405BA593:                          ; CODE XREF: sub_1405BA380+1ED↑j
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_1402A2F40
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
sub_1405BA380   endp

algn_1405BA5C1:                         ; DATA XREF: .pdata:00000001400FA254↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405BA5C8   proc near               ; CODE XREF: sub_1409D753C+42↓p
                                        ; DATA XREF: .pdata:00000001400FA260↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

                mov     rax, rsp
                sub     rsp, 58h
                xor     edx, edx
                mov     r10, rcx
                mov     [rax-18h], rdx
                mov     [rax+20h], edx
                mov     [rax+18h], edx
                mov     [rax+10h], dx
                mov     [rax+8], dl
                test    rcx, 0FFFh
                jnz     short loc_1405BA638
                call    sub_1402A33A0
                cmp     eax, 20h ; ' '
                lea     r9, [rsp+58h+arg_18]
                mov     rcx, r10
                cmovnz  edx, eax
                lea     rax, [rsp+58h+arg_0]
                mov     [rsp+58h+var_20], rax
                xor     r8d, r8d
                lea     rax, [rsp+58h+arg_8]
                mov     [rsp+58h+var_28], rax
                lea     rax, [rsp+58h+var_18]
                mov     [rsp+58h+var_30], rax
                lea     rax, [rsp+58h+arg_10]
                mov     [rsp+58h+var_38], rax
                call    sub_1405B3EB8
                mov     rax, [rsp+58h+var_18]
                jmp     short loc_1405BA643
; ---------------------------------------------------------------------------

loc_1405BA638:                          ; CODE XREF: sub_1405BA5C8+24↑j
                movzx   eax, word ptr [rcx-0Eh]
                movzx   eax, al
                shl     rax, 4

loc_1405BA643:                          ; CODE XREF: sub_1405BA5C8+6E↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BA5C8   endp

algn_1405BA649:                         ; DATA XREF: .pdata:00000001400FA260↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405BA650   proc near               ; CODE XREF: sub_14039154C+10CB53↑p
                                        ; sub_140394334+10A955↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, [rcx+40h]
                mov     rdi, rcx
                test    bl, 2
                jz      loc_1405BA6FC
                lea     rsi, [rcx+8]
                mov     rcx, [rsi]
                cmp     rcx, rsi
                jz      short loc_1405BA6F6

loc_1405BA67F:                          ; CODE XREF: sub_1405BA650+A4↓j
                mov     eax, [rcx+24h]
                mov     rbp, [rcx]
                cmp     eax, 200h
                jnz     short loc_1405BA6AC
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_1405BA712
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     short loc_1405BA712
                mov     [rdx], rax
                mov     [rax+8], rdx
                call    sub_1405BA768
                jmp     short loc_1405BA6EE
; ---------------------------------------------------------------------------

loc_1405BA6AC:                          ; CODE XREF: sub_1405BA650+3A↑j
                mov     eax, [rcx+24h]
                test    eax, eax
                jnz     short loc_1405BA6EE
                mov     rax, [rcx]
                mov     dword ptr [rcx+28h], 1
                cmp     [rax+8], rcx
                jnz     short loc_1405BA712
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     short loc_1405BA712
                mov     [rdx], rax
                mov     [rax+8], rdx
                lea     rax, [rdi+18h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     short loc_1405BA712
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx

loc_1405BA6EE:                          ; CODE XREF: sub_1405BA650+5A↑j
                                        ; sub_1405BA650+61↑j
                mov     rcx, rbp
                cmp     rbp, rsi
                jnz     short loc_1405BA67F

loc_1405BA6F6:                          ; CODE XREF: sub_1405BA650+2D↑j
                and     ebx, 0FFFFFFFDh
                mov     [rdi+40h], ebx

loc_1405BA6FC:                          ; CODE XREF: sub_1405BA650+1D↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405BA712:                          ; CODE XREF: sub_1405BA650+43↑j
                                        ; sub_1405BA650+4C↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1405BA650   endp

; ---------------------------------------------------------------------------
algn_1405BA719:                         ; DATA XREF: .pdata:00000001400FA26C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405BA720   proc near               ; CODE XREF: sub_140391D68+10C58F↑p
                                        ; sub_140391D68+10C5A4↑p ...
                sub     rsp, 28h
                mov     r10, rcx
                mov     r8d, 1
                bsr     ecx, edx
                shl     r8d, cl
                lea     eax, [rcx-2]
                mov     r9, [r10+rax*8]
                mov     r11d, eax
                mov     eax, edx
                xor     r8, rax
                and     qword ptr [r9+r8*8+8], 0
                sub     qword ptr [r9], 1
                jnz     short loc_1405BA75B
                and     qword ptr [r10+r11*8], 0
                mov     rcx, r9
                call    sub_14023C050

loc_1405BA75B:                          ; CODE XREF: sub_1405BA720+2C↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BA720   endp

algn_1405BA761:                         ; DATA XREF: .pdata:00000001400FA278↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1405BA768   proc near               ; CODE XREF: sub_1405BA650+55↑p
                                        ; DATA XREF: .pdata:00000001400FA284↑o

var_20          = qword ptr -20h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_8           = dword ptr  48h
arg_10          = dword ptr  50h
arg_18          = dword ptr  58h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                mov     r13, rcx
                mov     ecx, 0FFFFh
                call    KeQueryMaximumProcessorCountEx
                and     [rbp+var_10], 0
                mov     rbx, gs:188h
                mov     r14d, eax
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [rbx+1E6h], ax
                lea     edx, [rax+2]
                add     [rbx+31Ah], dl
                cmp     [rbx+31Ah], dl
                jz      short loc_1405BA7D6
                mov     rax, cr8
                and     [rsp+40h+var_20], 0
                lea     r8, qword_140C15FA8
                movzx   r9d, al
                mov     rdx, rbx
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BA7D6:                          ; CODE XREF: sub_1405BA768+49↑j
                and     [rbp+arg_18], 0
                lea     rdi, qword_140C15FA8
                mov     cl, [rbx+318h]
                or      r15d, 0FFFFFFFFh
                test    cl, cl
                jnz     short loc_1405BA807
                cmp     [rbx+366h], cl
                jz      short loc_1405BA832
                xor     eax, eax
                xchg    al, [rbx+366h]
                mov     cl, [rbx+318h]
                or      cl, al

loc_1405BA807:                          ; CODE XREF: sub_1405BA768+85↑j
                movzx   ecx, cl
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rbp+arg_18], eax
                mov     [rbx+318h], cl
                lea     rsi, [rax+rax*2]
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jnz     short loc_1405BA84D

loc_1405BA82A:                          ; CODE XREF: sub_1405BA768+D6↓j
                                        ; sub_1405BA768+E3↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     short loc_1405BA8A8
; ---------------------------------------------------------------------------

loc_1405BA832:                          ; CODE XREF: sub_1405BA768+8D↑j
                xor     esi, esi
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      short loc_1405BA82A
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1403F8778
                jmp     short loc_1405BA82A
; ---------------------------------------------------------------------------

loc_1405BA84D:                          ; CODE XREF: sub_1405BA768+C0↑j
                lea     rdi, qword_140C15FA8
                mov     rax, 0FFFF800000000000h
                cmp     rdi, rax
                jb      short loc_1405BA88E
                mov     rax, rdi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     [rax+rcx], dl
                jnz     short loc_1405BA88E
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     short loc_1405BA891
; ---------------------------------------------------------------------------

loc_1405BA88E:                          ; CODE XREF: sub_1405BA768+F9↑j
                                        ; sub_1405BA768+116↑j
                mov     eax, r15d

loc_1405BA891:                          ; CODE XREF: sub_1405BA768+124↑j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1405BA8A8:                          ; CODE XREF: sub_1405BA768+C8↑j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+var_10]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     eax, 1
                add     [rbx+1E6h], ax
                jnz     short loc_1405BA8DC
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405BA8DC
                call    KiCheckForKernelApcDelivery

loc_1405BA8DC:                          ; CODE XREF: sub_1405BA768+161↑j
                                        ; sub_1405BA768+16D↑j
                lock bts qword ptr [rdi], 0
                jnb     short loc_1405BA8F2
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5F10

loc_1405BA8F2:                          ; CODE XREF: sub_1405BA768+17A↑j
                test    rsi, rsi
                jz      short loc_1405BA8FF
                mov     eax, 1
                or      [rsi+1Ah], al

loc_1405BA8FF:                          ; CODE XREF: sub_1405BA768+18D↑j
                test    r14d, r14d
                jz      short loc_1405BA951
                xor     esi, esi
                lea     r15d, [rsi+1]

loc_1405BA90A:                          ; CODE XREF: sub_1405BA768+1E3↓j
                mov     edx, [r13+20h]
                mov     r8d, r15d
                mov     rax, cs:qword_140C15FC0
                bsr     ecx, edx
                mov     r9, [rsi+rax]
                shl     r8d, cl
                add     ecx, 0FFFFFFFEh
                xor     r8d, edx
                mov     [rbp+var_C], ecx
                mov     rax, [r9+rcx*8]
                mov     rcx, r9
                mov     rbx, [rax+r8*8+8]
                call    sub_1405BA720
                mov     rcx, rbx
                call    sub_14023C050
                lea     rsi, [rsi+8]
                sub     r14, r15
                jnz     short loc_1405BA90A
                or      r15d, 0FFFFFFFFh

loc_1405BA951:                          ; CODE XREF: sub_1405BA768+19A↑j
                mov     edx, [r13+20h]
                mov     rcx, cs:qword_140C15FA0
                call    sub_1405BA720
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rax, rsi
                lock xadd cs:qword_140C15FA8, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405BA97F
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1405BA97F:                          ; CODE XREF: sub_1405BA768+20D↑j
                and     [rbp+arg_10], 0
                mov     rcx, rdi
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r9d, 1
                cmp     eax, r9d
                jnz     short loc_1405BA9B4
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r15d, eax
                mov     r9d, 1

loc_1405BA9B4:                          ; CODE XREF: sub_1405BA768+235↑j
                add     [rbx+1E6h], si
                add     [rbx+31Ah], r9b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rdi
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      edx, ecx
                and     r8, r10
                xor     edx, 3Fh
                jmp     short loc_1405BAA33
; ---------------------------------------------------------------------------

loc_1405BA9EE:                          ; CODE XREF: sub_1405BA768+2D1↓j
                lea     rsi, [rcx+rcx*2]
                mov     eax, r9d
                shl     rsi, 5
                add     rsi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rsi+1Ah], r9b
                jz      short loc_1405BAA33
                mov     eax, [rsi+20h]
                test    r9b, al
                jnz     short loc_1405BAA33
                mov     rax, [rsi+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     short loc_1405BAA33
                cmp     [rsi+28h], r15d
                jnz     short loc_1405BAA33
                and     byte ptr [rsi+1Ah], 0FEh
                mov     rax, [rsi+20h]
                test    rax, rax
                jnz     short loc_1405BAA62

loc_1405BAA33:                          ; CODE XREF: sub_1405BA768+284↑j
                                        ; sub_1405BA768+2A2↑j ...
                bsr     ecx, edx
                mov     [rbp+arg_8], ecx
                jnz     short loc_1405BA9EE

loc_1405BAA3B:                          ; CODE XREF: sub_1405BA768+2FD↓j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1405BAADE
                and     [rsp+40h+var_20], 0
                mov     r8, rdi
                mov     r9d, r15d
                mov     rdx, rbx
                mov     ecx, 162h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405BAA62:                          ; CODE XREF: sub_1405BA768+2C9↑j
                test    rsi, rsi
                jz      short loc_1405BAA3B
                mov     al, [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1405BAA89
                mov     rcx, rsi
                call    sub_14031EC80
                mov     r9d, 1

loc_1405BAA89:                          ; CODE XREF: sub_1405BA768+311↑j
                mov     eax, [rsi+58h]
                and     eax, 1FFFFh
                mov     [rbp+arg_10], eax
                and     dword ptr [rsi+58h], 0FFFE0000h
                and     byte ptr [rsi+19h], 0FEh
                mov     qword ptr [rsi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rsi, [rbx+320h]
                imul    rsi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r9b
                jnz     short loc_1405BAB2A
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1405BAADE:                          ; CODE XREF: sub_1405BA768+2DA↑j
                                        ; sub_1405BA768+3D0↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+arg_10]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     eax, 1
                add     [rbx+1E6h], ax
                jnz     short loc_1405BAB12
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405BAB12
                call    KiCheckForKernelApcDelivery

loc_1405BAB12:                          ; CODE XREF: sub_1405BA768+397↑j
                                        ; sub_1405BA768+3A3↑j
                mov     rcx, r13
                call    sub_14023C050
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405BAB2A:                          ; CODE XREF: sub_1405BA768+364↑j
                mov     ecx, edx
                mov     eax, r9d
                shl     al, cl
                lock or [rbx+366h], al
                jmp     short loc_1405BAADE
sub_1405BA768   endp

; ---------------------------------------------------------------------------
algn_1405BAB3A:                         ; DATA XREF: .pdata:00000001400FA284↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405BAB40   proc near               ; CODE XREF: sub_1405BAB8C+5B↓p
                                        ; sub_1405BAB8C+146↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rdx, rcx
                mov     ecx, 1
                mov     r8d, 4E4C53h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1405BAB75
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rax
                call    memset

loc_1405BAB75:                          ; CODE XREF: sub_1405BAB40+26↑j
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BAB40   endp

byte_1405BAB84  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA290↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1E0h

sub_1405BAB8C   proc near               ; CODE XREF: sub_1403A483C+101836↑p
                                        ; DATA XREF: .pdata:00000001400FA29C↑o

var_2C0         = qword ptr -2C0h
var_2B8         = dword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A0         = qword ptr -2A0h
var_298         = xmmword ptr -298h
var_288         = xmmword ptr -288h
var_278         = xmmword ptr -278h
var_268         = xmmword ptr -268h
var_258         = xmmword ptr -258h
var_240         = byte ptr -240h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-1C0h]
                sub     rsp, 2C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1E0h+var_30], rax
                xorps   xmm1, xmm1
                xorps   xmm0, xmm0
                xor     edi, edi
                mov     r15, r9
                mov     r12, r8
                xor     r14d, r14d
                movups  [rsp+2E0h+var_288], xmm0
                lea     ebx, [rdi+54h]
                mov     ecx, ebx
                movups  [rsp+2E0h+var_278], xmm1
                movups  [rsp+2E0h+var_268], xmm1
                movups  [rbp+1E0h+var_258], xmm1
                call    sub_1405BAB40
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1405BAC23
                and     dword ptr [rsp+2E0h+var_2A0], edi
                lea     rax, [rsp+2E0h+var_2A0]
                mov     r9d, ebx
                mov     [rsp+2E0h+var_2C0], rax
                mov     r8, rsi
                lea     edx, [rdi+1]
                lea     rcx, [rdi-6]
                call    ZwQueryInformationToken
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BADDA
                mov     rdi, [rsi]
                jmp     short loc_1405BAC28
; ---------------------------------------------------------------------------

loc_1405BAC23:                          ; CODE XREF: sub_1405BAB8C+66↑j
                mov     ebx, 0C0000017h

loc_1405BAC28:                          ; CODE XREF: sub_1405BAB8C+95↑j
                test    ebx, ebx
                js      loc_1405BADDA
                mov     al, [rdi+1]
                cmp     al, 2
                jb      short loc_1405BAC4A
                cmp     al, 5
                jnz     short loc_1405BAC58
                cmp     dword ptr [rdi+8], 15h
                jnz     short loc_1405BAC58
                cmp     dword ptr [rdi+18h], 1F7h
                jnz     short loc_1405BAC58

loc_1405BAC4A:                          ; CODE XREF: sub_1405BAB8C+A9↑j
                and     [r15], r14d
                mov     ebx, 0C0000136h
                mov     r14d, 1

loc_1405BAC58:                          ; CODE XREF: sub_1405BAB8C+AD↑j
                                        ; sub_1405BAB8C+B3↑j ...
                test    ebx, ebx
                js      loc_1405BADCB
                mov     r8b, 1
                lea     rcx, [rsp+2E0h+var_288]
                mov     rdx, rdi
                call    RtlConvertSidToUnicodeString
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BADCB
                and     dword ptr [rsp+2E0h+var_2A0], 0
                lea     rax, [rsp+2E0h+var_2A0]
                mov     [rsp+2E0h+var_2B0], rax
                lea     r8, aRegistryMachin_27 ; "\\Registry\\Machine\\SYSTEM\\CurrentCon"...
                lea     rax, [rbp+1E0h+var_240]
                mov     [rsp+2E0h+var_2B8], 208h
                xor     r9d, r9d
                mov     [rsp+2E0h+var_2C0], rax
                lea     rdx, aTargetntpath_0 ; "TargetNtPath"
                lea     rcx, aGlobalizationu ; "GlobalizationUserSettings"
                call    RtlGetPersistedStateLocation
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BADC1
                movzx   ebx, word ptr [rsp+2E0h+var_288]
                add     bx, 4
                add     bx, word ptr [rsp+2E0h+var_2A0]
                movzx   ecx, bx
                call    sub_1405BAB40
                mov     rdi, rax
                test    rax, rax
                jz      loc_1405BADBC
                xorps   xmm0, xmm0
                lea     rdx, [rbp+1E0h+var_240]
                movups  [rsp+2E0h+var_298], xmm0
                lea     rcx, [rsp+2E0h+var_298]
                mov     word ptr [rsp+2E0h+var_298+2], bx
                mov     qword ptr [rsp+2E0h+var_298+8], rax
                call    RtlAppendUnicodeToString
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BADB2
                lea     rdx, qword_140415220
                lea     rcx, [rsp+2E0h+var_298]
                call    RtlAppendUnicodeToString
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BADB2
                lea     rdx, [rsp+2E0h+var_288]
                lea     rcx, [rsp+2E0h+var_298]
                call    RtlAppendUnicodeStringToString
                mov     ebx, eax
                test    eax, eax
                js      short loc_1405BADB2
                and     qword ptr [rsp+2E0h+var_278+8], 0
                lea     rax, [rsp+2E0h+var_298]
                and     [rsp+2E0h+var_2A0], 0
                lea     r8, [rsp+2E0h+var_278]
                xorps   xmm0, xmm0
                mov     qword ptr [rsp+2E0h+var_268], rax
                mov     edx, 20019h
                mov     dword ptr [rsp+2E0h+var_278], 30h ; '0'
                lea     rcx, [rsp+2E0h+var_2A0]
                mov     dword ptr [rbp+1E0h+var_268+8], 240h
                movdqu  [rbp+1E0h+var_258], xmm0
                call    ZwOpenKey
                test    eax, eax
                js      short loc_1405BADA9
                mov     rcx, [rsp+2E0h+var_2A0]
                call    ZwClose
                lea     r8, [rsp+2E0h+var_278]
                mov     dword ptr [r15], 2
                mov     edx, 8
                mov     rcx, r12
                call    ZwOpenKey
                mov     ebx, eax
                jmp     short loc_1405BADB2
; ---------------------------------------------------------------------------

loc_1405BADA9:                          ; CODE XREF: sub_1405BAB8C+1F4↑j
                mov     r14d, 1
                mov     [r15], r14d

loc_1405BADB2:                          ; CODE XREF: sub_1405BAB8C+17B↑j
                                        ; sub_1405BAB8C+196↑j ...
                mov     rcx, rdi
                call    sub_14023C050
                jmp     short loc_1405BADC1
; ---------------------------------------------------------------------------

loc_1405BADBC:                          ; CODE XREF: sub_1405BAB8C+151↑j
                mov     ebx, 0C0000017h

loc_1405BADC1:                          ; CODE XREF: sub_1405BAB8C+12F↑j
                                        ; sub_1405BAB8C+22E↑j
                lea     rcx, [rsp+2E0h+var_288]
                call    RtlFreeUnicodeString

loc_1405BADCB:                          ; CODE XREF: sub_1405BAB8C+CE↑j
                                        ; sub_1405BAB8C+E8↑j
                test    r14d, r14d
                jz      short loc_1405BADDA
                mov     rdx, r12
                call    sub_1405BAE1C
                mov     ebx, eax

loc_1405BADDA:                          ; CODE XREF: sub_1405BAB8C+8C↑j
                                        ; sub_1405BAB8C+9E↑j ...
                test    rsi, rsi
                jz      short loc_1405BADE7
                mov     rcx, rsi
                call    sub_14023C050

loc_1405BADE7:                          ; CODE XREF: sub_1405BAB8C+251↑j
                mov     eax, ebx
                mov     rcx, [rbp+1E0h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2E0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405BAB8C
sub_1405BAB8C   endp

byte_1405BAE15  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA29C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1405BAE1C   proc near               ; CODE XREF: sub_1403A483C+101844↑p
                                        ; sub_1405BAB8C+247↑p
                                        ; DATA XREF: ...

var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
arg_0           = dword ptr  10h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

                mov     [rsp-8+arg_0], ecx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-37h]
                sub     rsp, 0A0h
                xor     r14d, r14d
                mov     rsi, rdx
                cmp     cs:dword_140CFA014, r14d
                xorps   xmm0, xmm0
                jz      short loc_1405BAE93
                lea     rdx, unk_140CF7530
                lea     rcx, [rbp+57h+var_60]
                movups  [rbp+57h+var_60], xmm0
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_60]
                mov     [rbp+57h+var_50], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_40], rax
                lea     r8, [rbp+57h+var_50]
                mov     [rbp+57h+var_38], 240h
                lea     edx, [r14+8]
                mov     [rbp+57h+var_48], r14
                mov     rcx, rsi
                movdqu  [rbp+57h+var_30], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                jmp     loc_1405BB092
; ---------------------------------------------------------------------------

loc_1405BAE93:                          ; CODE XREF: sub_1405BAE1C+26↑j
                lea     rdx, aRegistryMachin_28 ; "\\Registry\\Machine\\System\\CurrentCon"...
                mov     [rbp+57h+arg_10], r14
                lea     rcx, [rbp+57h+var_80]
                movups  [rbp+57h+var_80], xmm0
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_80]
                mov     [rbp+57h+var_50], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_40], rax
                lea     r8, [rbp+57h+var_50]
                mov     [rbp+57h+var_38], 240h
                mov     edx, 8
                mov     [rbp+57h+var_48], r14
                lea     rcx, [rbp+57h+arg_10]
                movdqu  [rbp+57h+var_30], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BB084
                xorps   xmm0, xmm0
                mov     [rbp+57h+arg_0], r14d
                lea     rdx, aRedirectedkey ; "RedirectedKey"
                lea     rcx, [rbp+57h+var_70]
                movups  [rbp+57h+var_70], xmm0
                call    RtlInitUnicodeString
                mov     rcx, [rbp+57h+arg_10]
                lea     rax, [rbp+57h+arg_0]
                xor     r9d, r9d
                mov     [rsp+0C0h+var_98], rax
                lea     rdx, [rbp+57h+var_70]
                mov     [rsp+0C0h+var_A0], r14d
                lea     ebx, [r9+2]
                mov     r8d, ebx
                call    ZwQueryValueKey
                mov     ecx, [rbp+57h+arg_0]
                test    ecx, ecx
                jz      loc_1405BB03E
                cmp     eax, 0C0000023h
                jz      short loc_1405BAF48
                cmp     eax, 80000005h
                jnz     loc_1405BB03E

loc_1405BAF48:                          ; CODE XREF: sub_1405BAE1C+11F↑j
                call    sub_1405BAB40
                mov     rdi, rax
                test    rax, rax
                jz      loc_1405BB037
                mov     ecx, [rbp+57h+arg_0]
                lea     rax, [rbp+57h+arg_0]
                mov     [rsp+0C0h+var_98], rax
                lea     rdx, [rbp+57h+var_70]
                mov     [rsp+0C0h+var_A0], ecx
                mov     r9, rdi
                mov     rcx, [rbp+57h+arg_10]
                mov     r8d, ebx
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1405BB02D
                cmp     dword ptr [rdi+4], 1
                jnz     loc_1405BB022
                xorps   xmm0, xmm0
                mov     [rbp+57h+arg_18], r14
                lea     rdx, [rdi+0Ch]
                lea     rcx, [rbp+57h+var_90]
                movups  [rbp+57h+var_90], xmm0
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_50], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_40], rax
                lea     r8, [rbp+57h+var_50]
                mov     [rbp+57h+var_38], 240h
                mov     edx, 8
                mov     [rbp+57h+var_48], r14
                lea     rcx, [rbp+57h+arg_18]
                movdqu  [rbp+57h+var_30], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      short loc_1405BB02D
                mov     eax, 0AAh
                lea     rcx, unk_140CF7530
                xorps   xmm0, xmm0
                movups  [rbp+57h+var_60], xmm0
                mov     word ptr [rbp+57h+var_60+2], ax
                mov     qword ptr [rbp+57h+var_60+8], rcx
                cmp     ax, word ptr [rbp+57h+var_90]
                jb      short loc_1405BB01C
                lea     rdx, [rbp+57h+var_90]
                lea     rcx, [rbp+57h+var_60]
                call    RtlCopyUnicodeString
                mov     cs:dword_140CFA014, 1

loc_1405BB01C:                          ; CODE XREF: sub_1405BAE1C+1E7↑j
                mov     rax, [rbp+57h+arg_18]
                jmp     short loc_1405BB02A
; ---------------------------------------------------------------------------

loc_1405BB022:                          ; CODE XREF: sub_1405BAE1C+16E↑j
                mov     rax, [rbp+57h+arg_10]
                mov     [rbp+57h+arg_10], r14

loc_1405BB02A:                          ; CODE XREF: sub_1405BAE1C+204↑j
                mov     [rsi], rax

loc_1405BB02D:                          ; CODE XREF: sub_1405BAE1C+164↑j
                                        ; sub_1405BAE1C+1C6↑j
                mov     rcx, rdi
                call    sub_14023C050
                jmp     short loc_1405BB084
; ---------------------------------------------------------------------------

loc_1405BB037:                          ; CODE XREF: sub_1405BAE1C+137↑j
                mov     ebx, 0C0000017h
                jmp     short loc_1405BB084
; ---------------------------------------------------------------------------

loc_1405BB03E:                          ; CODE XREF: sub_1405BAE1C+114↑j
                                        ; sub_1405BAE1C+126↑j
                mov     eax, 0AAh
                lea     rcx, unk_140CF7530
                xorps   xmm0, xmm0
                movups  [rbp+57h+var_60], xmm0
                mov     word ptr [rbp+57h+var_60+2], ax
                mov     qword ptr [rbp+57h+var_60+8], rcx
                cmp     ax, word ptr [rbp+57h+var_80]
                jb      short loc_1405BB076
                lea     rdx, [rbp+57h+var_80]
                lea     rcx, [rbp+57h+var_60]
                call    RtlCopyUnicodeString
                mov     cs:dword_140CFA014, 1

loc_1405BB076:                          ; CODE XREF: sub_1405BAE1C+241↑j
                mov     rax, [rbp+57h+arg_10]
                mov     ebx, r14d
                mov     [rsi], rax
                mov     [rbp+57h+arg_10], r14

loc_1405BB084:                          ; CODE XREF: sub_1405BAE1C+C9↑j
                                        ; sub_1405BAE1C+219↑j ...
                mov     rcx, [rbp+57h+arg_10]
                test    rcx, rcx
                jz      short loc_1405BB092
                call    ZwClose

loc_1405BB092:                          ; CODE XREF: sub_1405BAE1C+72↑j
                                        ; sub_1405BAE1C+26F↑j
                mov     eax, ebx
                add     rsp, 0A0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BAE1C   endp

byte_1405BB0A3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA2A8↑o

; =============== S U B R O U T I N E =======================================


sub_1405BB0AC   proc near               ; CODE XREF: WheaConfigureErrorSource+6BA2↓p
                                        ; DATA XREF: .pdata:00000001400FA2B4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140CDAF9C
                xor     edi, edi
                mov     rbx, cs:qword_140CDAFA8
                mov     esi, ecx
                test    eax, eax
                jle     short loc_1405BB11F

loc_1405BB0D0:                          ; CODE XREF: sub_1405BB0AC+71↓j
                cmp     [rbx+68h], esi
                jnz     short loc_1405BB112
                cmp     byte ptr [rbx+58h], 0
                jz      short loc_1405BB112
                cmp     dword ptr [rbx+6Ch], 1
                jnz     short loc_1405BB112
                mov     rcx, rbx
                call    sub_1407AF484
                test    eax, eax
                js      short loc_1405BB112
                mov     edx, 1
                mov     dword ptr [rbx+6Ch], 2
                mov     rcx, rbx
                call    sub_1403BADD0
                test    eax, eax
                jns     short loc_1405BB10E
                mov     dword ptr [rbx+6Ch], 1
                jmp     short loc_1405BB112
; ---------------------------------------------------------------------------

loc_1405BB10E:                          ; CODE XREF: sub_1405BB0AC+57↑j
                mov     byte ptr [rbx+58h], 0

loc_1405BB112:                          ; CODE XREF: sub_1405BB0AC+27↑j
                                        ; sub_1405BB0AC+2D↑j ...
                mov     rbx, [rbx]
                inc     edi
                cmp     edi, cs:dword_140CDAF9C
                jl      short loc_1405BB0D0

loc_1405BB11F:                          ; CODE XREF: sub_1405BB0AC+22↑j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BB0AC   endp

algn_1405BB132:                         ; DATA XREF: .pdata:00000001400FA2B4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405BB138   proc near               ; CODE XREF: sub_1403BAB08:loc_1404ACB18↑p
                                        ; DATA XREF: .pdata:00000001400FA2C0↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     rax, gs:18h
                mov     rbp, rcx
                mov     rdi, [rax+84A0h]
                test    rdi, rdi
                jz      loc_1405BB1F0
                mov     edx, [rcx+18h]
                mov     rcx, [rdi+8]
                call    sub_1405BBD54
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1405BB1F0
                lock inc dword ptr [rax+18h]
                and     [rsp+48h+arg_8], 0
                lea     rdx, [rsp+48h+arg_8]
                mov     rcx, rax
                call    sub_1405BB8D4
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1405BB1F0
                xor     r8d, r8d
                mov     rcx, rbx
                lea     edx, [r8+2]
                call    sub_1403BAF10
                test    rax, rax
                jz      short loc_1405BB1CE
                mov     r8, [rbx+38h]
                lea     rcx, [rbx+60h]
                mov     r9d, [rsp+48h+arg_8]
                mov     rdx, rbp
                mov     [rsp+48h+var_28], r8
                add     r9d, 0FFFFFFD8h
                lea     r8, [rsi+28h]
                call    sub_1404079D0

loc_1405BB1CE:                          ; CODE XREF: sub_1405BB138+72↑j
                lock dec dword ptr [rbx+5Ch]
                lea     rdx, [rsi+28h]
                mov     ecx, 3
                call    sub_1405BBB78
                mov     rcx, [rdi+10h]
                mov     rdx, rsi
                call    sub_1405BDA28
                mov     al, 1
                jmp     short loc_1405BB1F2
; ---------------------------------------------------------------------------

loc_1405BB1F0:                          ; CODE XREF: sub_1405BB138+28↑j
                                        ; sub_1405BB138+40↑j ...
                xor     al, al

loc_1405BB1F2:                          ; CODE XREF: sub_1405BB138+B6↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BB138   endp

byte_1405BB206  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA2C0↑o

; =============== S U B R O U T I N E =======================================


sub_1405BB20C   proc near               ; CODE XREF: sub_1403BAB08+F1FB7↑p
                                        ; DATA XREF: .pdata:00000001400FA2CC↑o

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
                mov     rax, gs:18h
                mov     rsi, rcx
                mov     rdi, [rax+84A0h]
                test    rdi, rdi
                jz      short loc_1405BB297
                mov     ebp, [rcx+14h]
                mov     r8d, 61656857h
                add     ebp, 28h ; '('
                mov     ecx, 1
                mov     edx, ebp
                mov     r14d, ebp
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1405BB297
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     [rbx+10h], ebp
                lea     rcx, [rbx+28h]
                mov     dword ptr [rbx+18h], 2
                mov     rdx, rsi
                mov     r8d, [rsi+14h]
                call    memmove
                mov     rcx, [rdi+10h]
                mov     rdx, rbx
                call    sub_1405BDA28
                mov     al, 1
                jmp     short loc_1405BB299
; ---------------------------------------------------------------------------

loc_1405BB297:                          ; CODE XREF: sub_1405BB20C+2F↑j
                                        ; sub_1405BB20C+52↑j
                xor     al, al

loc_1405BB299:                          ; CODE XREF: sub_1405BB20C+89↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BB20C   endp

byte_1405BB2B5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA2CC↑o

; =============== S U B R O U T I N E =======================================


sub_1405BB2BC   proc near               ; CODE XREF: sub_1405BBA60+1C↓p
                                        ; DATA XREF: .pdata:00000001400FA2D8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, rcx
                cmp     dword ptr [rcx], 52455043h
                jnz     short loc_1405BB346
                movzx   ecx, word ptr [rcx+0Ah]
                lea     eax, [rcx+rcx*8]
                lea     eax, ds:80h[rax*8]
                cmp     [rbx+14h], eax
                jb      short loc_1405BB346
                lea     rsi, [rbx+80h]
                mov     ebp, edi
                test    ecx, ecx
                jz      short loc_1405BB346

loc_1405BB2FD:                          ; CODE XREF: sub_1405BB2BC+69↓j
                lea     rcx, [rsi+10h]
                mov     r8d, 10h
                lea     rdx, xmmword_1400308A0
                call    RtlCompareMemory
                cmp     rax, 10h
                jz      short loc_1405BB329
                movzx   eax, word ptr [rbx+0Ah]
                add     rsi, 48h ; 'H'
                inc     ebp
                cmp     ebp, eax
                jb      short loc_1405BB2FD
                jmp     short loc_1405BB346
; ---------------------------------------------------------------------------

loc_1405BB329:                          ; CODE XREF: sub_1405BB2BC+5B↑j
                mov     eax, [rsi]
                mov     edx, [rsi+4]
                add     edx, eax
                cmp     [rbx+14h], edx
                jb      short loc_1405BB346
                lea     rcx, [rbx+rax]
                cmp     dword ptr [rcx], 41454857h
                cmovnz  rcx, rdi
                mov     rdi, rcx

loc_1405BB346:                          ; CODE XREF: sub_1405BB2BC+1F↑j
                                        ; sub_1405BB2BC+32↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rdi
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405BB2BC   endp

byte_1405BB35F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400FA2D8↑o
; Exported entry 2666. WheaGetErrorSource

; =============== S U B R O U T I N E =======================================



RtlAddAce       proc near               ; CODE XREF: sub_140201C7C+122↑p
                                        ; sub_1403F81A0+205↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014080013A SIZE 00000050 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-28h], 0
                mov     rdi, r9
                mov     ebp, r8d
                mov     esi, edx
                mov     rbx, rcx
                call    RtlValidAcl
                test    al, al
                jz      loc_140800154
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rbx
                call    RtlFirstFreeAce
                test    al, al
                jz      loc_140800154
                movzx   eax, byte ptr [rbx]
                mov     rcx, rdi
                mov     r14d, [rsp+48h+arg_20]
                movzx   r15d, sil
                mov     r11d, r14d
                cmp     r15b, al
                cmovbe  r15d, eax
                lea     rdx, [r14+rdi]
                xor     r12d, r12d
                cmp     rdi, rdx
                jnb     short loc_14062459D

loc_140624584:                          ; CODE XREF: RtlAddAce+8B↓j
                mov     al, [rcx]
                cmp     al, 3
                ja      loc_14080013A

loc_14062458E:                          ; CODE XREF: RtlAddAce+1DBC35↓j
                                        ; RtlAddAce:loc_14080014E↓j
                movzx   eax, word ptr [rcx+2]
                inc     r12d
                add     rcx, rax
                cmp     rcx, rdx
                jb      short loc_140624584

loc_14062459D:                          ; CODE XREF: RtlAddAce+72↑j
                cmp     rcx, rdx
                ja      loc_140800154
                mov     r8, [rsp+48h+var_28]
                test    r8, r8
                jz      short loc_14062462E
                movzx   ecx, word ptr [rbx+2]
                lea     rax, [r14+r8]
                add     rcx, rbx
                cmp     rax, rcx
                ja      short loc_14062462E
                xor     ecx, ecx
                lea     rdx, [rbx+8]
                test    ebp, ebp
                jnz     short loc_140624616

loc_1406245CA:                          ; CODE XREF: RtlAddAce+10E↓j
                                        ; RtlAddAce+1DBC5F↓j
                sub     r8d, edx
                sub     r8d, 1
                movsxd  r9, r8d
                jns     short loc_140624625

loc_1406245D6:                          ; CODE XREF: RtlAddAce+1DBC75↓j
                test    r14d, r14d
                jz      short loc_1406245EC
                sub     rdi, rdx

loc_1406245DE:                          ; CODE XREF: RtlAddAce+DA↓j
                mov     al, [rdi+rdx]
                mov     [rdx], al
                inc     rdx
                sub     r11, 1
                jnz     short loc_1406245DE

loc_1406245EC:                          ; CODE XREF: RtlAddAce+C9↑j
                add     [rbx+4], r12w
                xor     eax, eax
                mov     [rbx], r15b

loc_1406245F6:                          ; CODE XREF: RtlAddAce+123↓j
                                        ; RtlAddAce+1DBC49↓j
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
                align 2

loc_140624616:                          ; CODE XREF: RtlAddAce+B8↑j
                movzx   r9d, word ptr [rbx+4]

loc_14062461B:                          ; CODE XREF: RtlAddAce+1DBC59↓j
                cmp     ecx, r9d
                jnb     short loc_1406245CA
                jmp     loc_14080015E
; ---------------------------------------------------------------------------

loc_140624625:                          ; CODE XREF: RtlAddAce+C4↑j
                lea     r10d, [r8+r14]
                jmp     loc_140800174
; ---------------------------------------------------------------------------

loc_14062462E:                          ; CODE XREF: RtlAddAce+9E↑j
                                        ; RtlAddAce+AE↑j
                mov     eax, 0C0000023h
                jmp     short loc_1406245F6
RtlAddAce       endp

; ---------------------------------------------------------------------------
algn_140624635:                         ; DATA XREF: .rdata:000000014004F1C0↑o
                                        ; .pdata:00000001400FDD64↑o
                align 20h
; Exported entry 2565. SeSetSecurityDescriptorInfo

; =============== S U B R O U T I N E =======================================


                public SeSetSecurityDescriptorInfo
SeSetSecurityDescriptorInfo proc near   ; CODE XREF: ObSetSecurityDescriptorInfo+7A↓p
                                        ; sub_14076986C+AB↓p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                xor     r10d, r10d
                cmp     [r9], r10
                jz      short loc_140624675
                mov     rax, [rsp+48h+arg_28]
                mov     edx, [rdx]
                mov     [rsp+48h+var_10], r10
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], eax
                mov     [rsp+48h+var_28], r10d
                call    sub_140623930

loc_14062466F:                          ; CODE XREF: SeSetSecurityDescriptorInfo+3A↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140624675:                          ; CODE XREF: SeSetSecurityDescriptorInfo+A↑j
                mov     eax, 0C00000D7h
                jmp     short loc_14062466F
SeSetSecurityDescriptorInfo endp

; ---------------------------------------------------------------------------
byte_14062467C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400FDD70↑o
; Exported entry 1678. ObSetSecurityDescriptorInfo

; =============== S U B R O U T I N E =======================================


                public ObSetSecurityDescriptorInfo
ObSetSecurityDescriptorInfo proc near   ; CODE XREF: sub_140625030+115↓p
                                        ; sub_140701D70+C0↓p
                                        ; DATA XREF: ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014080018A SIZE 0000001A BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, gs:188h
                xor     esi, esi
                mov     rbx, r8
                mov     [rsp+58h+arg_0], esi
                mov     rdi, rdx
                mov     [rsp+58h+var_20], rsi
                mov     r14, rcx
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                add     rcx, 0FFFFFFFFFFFFFFE0h
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [rsp+58h+arg_28]
                lea     r9, [rsp+58h+var_28]
                mov     rbp, [r14-8]
                mov     r8, rbx
                mov     [rsp+58h+var_30], rax
                and     rbp, 0FFFFFFFFFFFFFFF0h
                mov     eax, [rsp+58h+arg_20]
                mov     rdx, rdi
                mov     rcx, r14
                mov     [rsp+58h+var_38], eax
                mov     [rsp+58h+var_28], rbp
                call    SeSetSecurityDescriptorInfo
                mov     ebx, eax
                test    eax, eax
                js      loc_14080018A
                mov     rcx, [rsp+58h+var_28]
                lea     r8d, [rsi+10h]
                lea     rdx, [rsp+58h+var_20]
                call    ObLogSecurityDescriptor
                mov     ebx, eax
                test    eax, eax
                js      short loc_140624782
                mov     rcx, [rsp+58h+var_28]
                lea     rdx, [rsp+58h+arg_0]
                call    sub_140624FB0
                mov     ebx, eax
                test    eax, eax
                js      short loc_140624782
                mov     edx, [rsp+58h+arg_0]
                mov     rcx, r14
                call    sub_140624F28
                mov     ebx, eax
                test    eax, eax
                js      short loc_140624782
                mov     rcx, [rsp+58h+var_20]
                mov     eax, esi
                mov     rdx, rcx
                or      rdx, 0Fh
                test    rcx, rcx
                cmovnz  rax, rdx
                xchg    rax, [r14-8]
                mov     [rsp+58h+var_20], rsi
                test    rbp, rbp
                jz      short loc_140624782
                and     eax, 0Fh
                lea     esi, [rax+1]

loc_140624782:                          ; CODE XREF: ObSetSecurityDescriptorInfo+A0↑j
                                        ; ObSetSecurityDescriptorInfo+B5↑j ...
                xor     edx, edx
                lea     rcx, [r14-20h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rsp+58h+var_20]
                test    rcx, rcx
                jnz     loc_140800194

loc_1406247A9:                          ; CODE XREF: ObSetSecurityDescriptorInfo+1DBB0F↓j
                test    rbp, rbp
                jz      short loc_1406247BC
                test    esi, esi
                jz      short loc_1406247BC
                mov     edx, esi
                mov     rcx, rbp
                call    ObDereferenceSecurityDescriptor

loc_1406247BC:                          ; CODE XREF: ObSetSecurityDescriptorInfo+11C↑j
                                        ; ObSetSecurityDescriptorInfo+120↑j
                mov     rcx, [rsp+58h+var_28]
                test    rcx, rcx
                jz      short loc_1406247CD
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406247CD:                          ; CODE XREF: ObSetSecurityDescriptorInfo+134↑j
                mov     rbp, [rsp+58h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObSetSecurityDescriptorInfo endp

algn_1406247E9:                         ; DATA XREF: .rdata:000000014004F1EC↑o
                                        ; .pdata:00000001400FDD7C↑o
                align 10h
; Exported entry 1676. ObReleaseObjectSecurity

; =============== S U B R O U T I N E =======================================


                public ObReleaseObjectSecurity
ObReleaseObjectSecurity proc near       ; CODE XREF: sub_1403F81A0+298↑p
                                        ; sub_140625AB8+11B↓p ...
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_140624807
                test    dl, dl
                jnz     short loc_14062480D
                mov     edx, 1
                call    ObDereferenceSecurityDescriptor

loc_140624807:                          ; CODE XREF: ObReleaseObjectSecurity+7↑j
                                        ; ObReleaseObjectSecurity+24↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14062480D:                          ; CODE XREF: ObReleaseObjectSecurity+B↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_140624807
ObReleaseObjectSecurity endp

; ---------------------------------------------------------------------------
algn_140624816:                         ; DATA XREF: .pdata:00000001400FDD88↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140624820   proc near               ; CODE XREF: sub_1405CF780+15↑p
                                        ; sub_140679960+4E9↓p ...

var_A8          = qword ptr -0A8h
var_A0          = byte ptr -0A0h
var_98          = byte ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408001A4 SIZE 00000020 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rsi
                push    r12
                push    r15
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_40], rax
                xor     eax, eax
                mov     [rsp+0C8h+var_90], edx
                mov     r12, rcx
                mov     [rsp+0C8h+var_50], rax
                xor     ecx, ecx
                mov     [rsp+0C8h+var_48], eax
                xorps   xmm0, xmm0
                mov     [rsp+0C8h+var_88], rcx
                mov     [rsp+0C8h+var_98], cl
                lea     rdx, [rsp+0C8h+var_88]
                mov     [rsp+0C8h+var_80], rcx
                mov     r15, r8
                mov     [rsp+0C8h+var_94], ecx
                lea     r8, [rsp+0C8h+var_98]
                mov     rcx, r12
                mov     [rsp+0C8h+var_58], rax
                xor     r9d, r9d
                movups  [rsp+0C8h+var_78], xmm0
                movups  [rsp+0C8h+var_68], xmm0
                call    sub_140624BE0
                mov     rsi, [rsp+0C8h+var_88]
                mov     ebp, eax
                test    eax, eax
                js      short loc_1406248E7
                test    rsi, rsi
                jz      short loc_140624906
                movzx   eax, word ptr [rsi+2]
                test    al, 4
                jz      short loc_1406248E7
; } // starts at 140624820

loc_1406248AB:                          ; DATA XREF: .rdata:000000014004F218↑o
                                        ; .rdata:000000014004F22C↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+0C8h+var_28], rdi
                test    ax, ax
                jns     loc_1408001A4
                mov     eax, [rsi+10h]
                test    eax, eax
                jz      short loc_1406248DF
                lea     rdi, [rsi+rax]

loc_1406248C7:                          ; CODE XREF: sub_140624820+1DB988↓j
                test    rdi, rdi
                jz      short loc_1406248DF
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_14021C0B0
                test    rax, rax
                jz      short loc_140624925

loc_1406248DF:                          ; CODE XREF: sub_140624820+A1↑j
                                        ; sub_140624820+AA↑j ...
                mov     rdi, [rsp+0C8h+var_28]
; } // starts at 1406248AB

loc_1406248E7:                          ; CODE XREF: sub_140624820+7C↑j
                                        ; sub_140624820+89↑j
                                        ; DATA XREF: ...
; __unwind { // __GSHandlerCheck
                test    rsi, rsi
                jz      short loc_140624904
                cmp     [rsp+0C8h+var_98], 0
                mov     rcx, rsi
                jnz     loc_1408001B7
                mov     edx, 1
                call    ObDereferenceSecurityDescriptor

loc_140624904:                          ; CODE XREF: sub_140624820+CA↑j
                                        ; sub_140624820+1DB99F↓j
                mov     eax, ebp

loc_140624906:                          ; CODE XREF: sub_140624820+81↑j
                mov     rcx, [rsp+0C8h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                pop     r15
                pop     r12
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406248E7
; ---------------------------------------------------------------------------

loc_140624925:                          ; CODE XREF: sub_140624820+BD↑j
                                        ; DATA XREF: .rdata:000000014004F25C↑o ...
; __unwind { // __GSHandlerCheck
                mov     r9d, 2
                lea     rdx, [rsp+0C8h+var_50]
                mov     rcx, rdi
                lea     r8d, [r9+0Ah]
                call    RtlQueryInformationAcl
                mov     ebp, eax
                test    eax, eax
                js      short loc_1406248DF
                mov     r9d, 1
                lea     rdx, [rsp+0C8h+var_94]
                mov     rcx, rdi
                lea     r8d, [r9+3]
                call    RtlQueryInformationAcl
                mov     ebp, eax
                test    eax, eax
                js      short loc_1406248DF
                mov     [rsp+0C8h+var_30], r13
                mov     rcx, r15
                mov     [rsp+0C8h+var_38], r14
                call    RtlLengthSid
                mov     r13d, dword ptr [rsp+0C8h+var_50+4]
                mov     ecx, 1
                mov     r8d, 63416553h
                lea     ebp, [r13+0Bh]
                add     ebp, eax
                and     ebp, 0FFFFFFFCh
                mov     edx, ebp
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_1408001AD
; } // starts at 140624925

loc_1406249A3:                          ; DATA XREF: .rdata:000000014004F25C↑o
                                        ; .rdata:000000014004F26C↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+0C8h+arg_8], rbx
                mov     edx, ebp
                mov     ebx, [rsp+0C8h+var_94]
                mov     rcx, rax
                mov     r8d, ebx
                call    RtlCreateAcl
                mov     ebp, eax
                test    eax, eax
                js      loc_140624A4E
                lea     r8, [rsp+0C8h+var_80]
                xor     edx, edx
                mov     rcx, rdi
                call    RtlGetAce
                mov     ebp, eax
                test    eax, eax
                js      short loc_140624A4E
                mov     r9, [rsp+0C8h+var_80]
                lea     eax, [r13-8]
                xor     r8d, r8d
                mov     dword ptr [rsp+0C8h+var_A8], eax
                mov     edx, ebx
                mov     rcx, r14
                call    RtlAddAce
                mov     ebp, eax
                test    eax, eax
                js      short loc_140624A4E
                mov     r9d, [rsp+0C8h+var_90]
                xor     r8d, r8d
                mov     [rsp+0C8h+var_A0], 0
                mov     edx, ebx
                mov     rcx, r14
                mov     [rsp+0C8h+var_A8], r15
                call    sub_140622B20
                mov     ebp, eax
                test    eax, eax
                js      short loc_140624A4E
                xor     r9d, r9d
                mov     byte ptr [rsp+0C8h+var_78], 1
                mov     r8, r14
                lea     rcx, [rsp+0C8h+var_78]
                mov     dl, 1
                call    RtlSetDaclSecurityDescriptor
                mov     ebp, eax
                test    eax, eax
                js      short loc_140624A4E
                lea     r8, [rsp+0C8h+var_78]
                mov     edx, 4
                mov     rcx, r12
                call    ObSetSecurityObjectByPointer
                mov     ebp, eax

loc_140624A4E:                          ; CODE XREF: sub_140624820+1A0↑j
                                        ; sub_140624820+1B9↑j ...
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                mov     rbx, [rsp+0C8h+arg_8]
; } // starts at 1406249A3

loc_140624A60:                          ; CODE XREF: sub_140624820+1DB992↓j
                                        ; DATA XREF: .pdata:00000001400FDDC4↑o ...
; __unwind { // __GSHandlerCheck
                mov     r13, [rsp+0C8h+var_30]
                mov     r14, [rsp+0C8h+var_38]
                jmp     loc_1406248DF
; } // starts at 140624A60
sub_140624820   endp

; ---------------------------------------------------------------------------
algn_140624A75:                         ; DATA XREF: .pdata:00000001400FDDD0↑o
                align 20h
; Exported entry 1649. ObDereferenceSecurityDescriptor

; =============== S U B R O U T I N E =======================================


                public ObDereferenceSecurityDescriptor
ObDereferenceSecurityDescriptor proc near
                                        ; CODE XREF: sub_1402F0A40+85↑p
                                        ; sub_1405ED834+2C8↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408001C4 SIZE 00000018 BYTES

                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                lea     rbx, [rcx-20h]
                prefetchw byte ptr [rbx+8]
                mov     rax, [rbx+8]
                mov     rcx, rax
                mov     esi, edx
                sub     rcx, rdi
                test    rcx, rcx
                jle     short loc_140624ABB

loc_140624AA3:                          ; CODE XREF: ObDereferenceSecurityDescriptor+113↓j
                lock cmpxchg [rbx+8], rcx
                mov     rcx, rax
                jnz     loc_140624B8D

loc_140624AB2:                          ; CODE XREF: ObDereferenceSecurityDescriptor+FE↓j
                add     rsp, 20h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140624ABB:                          ; CODE XREF: ObDereferenceSecurityDescriptor+21↑j
                                        ; ObDereferenceSecurityDescriptor+119↓j
                                        ; DATA XREF: ...
                mov     [rsp+38h+arg_0], rbp
                mov     [rsp+38h+arg_8], r14
                mov     [rsp+38h+arg_10], r15
                test    rcx, rcx
                jnz     loc_1408001C4

loc_140624AD3:                          ; CODE XREF: ObDereferenceSecurityDescriptor+1DB74B↓j
                mov     eax, [rbx+10h]
                mov     r15, gs:188h
                movzx   ebp, al
                lea     rax, unk_140D25A00
                shl     rbp, 4
                add     rbp, rax
                dec     word ptr [r15+1E4h]
                lea     r14, [rbp+8]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                neg     edi
                movsxd  rax, edi
                lock xadd [rbx+8], rax
                sub     rax, rsi
                test    rax, rax
                jg      loc_140624B9E
                jnz     loc_1408001D0
                mov     rcx, [r14]
                cmp     rcx, rbx
                jz      short loc_140624B39

loc_140624B2B:                          ; CODE XREF: ObDereferenceSecurityDescriptor+B7↓j
                mov     rax, [rcx]
                mov     r14, rcx
                mov     rcx, rax
                cmp     rax, rbx
                jnz     short loc_140624B2B

loc_140624B39:                          ; CODE XREF: ObDereferenceSecurityDescriptor+A9↑j
                mov     rax, [rbx]
                mov     [r14], rax
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbp+0], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140624B83

loc_140624B52:                          ; CODE XREF: ObDereferenceSecurityDescriptor+10B↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     edx, 6353624Fh
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140624B6F:                          ; CODE XREF: ObDereferenceSecurityDescriptor+141↓j
                mov     r14, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_0]
                mov     r15, [rsp+38h+arg_10]
                jmp     loc_140624AB2
; ---------------------------------------------------------------------------

loc_140624B83:                          ; CODE XREF: ObDereferenceSecurityDescriptor+D0↑j
                                        ; DATA XREF: .pdata:00000001400FDDE8↑o ...
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_140624B52
; ---------------------------------------------------------------------------

loc_140624B8D:                          ; CODE XREF: ObDereferenceSecurityDescriptor+2C↑j
                                        ; DATA XREF: .pdata:00000001400FDDF4↑o ...
                sub     rcx, rsi
                test    rcx, rcx
                jg      loc_140624AA3
                jmp     loc_140624ABB
; ---------------------------------------------------------------------------

loc_140624B9E:                          ; CODE XREF: ObDereferenceSecurityDescriptor+97↑j
                                        ; ObDereferenceSecurityDescriptor+1DB757↓j
                                        ; DATA XREF: ...
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbp+0], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140624BC3

loc_140624BB1:                          ; CODE XREF: ObDereferenceSecurityDescriptor+14B↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                jmp     short loc_140624B6F
; ---------------------------------------------------------------------------

loc_140624BC3:                          ; CODE XREF: ObDereferenceSecurityDescriptor+12F↑j
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_140624BB1
ObDereferenceSecurityDescriptor endp

; ---------------------------------------------------------------------------
algn_140624BCD:                         ; DATA XREF: .pdata:00000001400FDE0C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140624BE0   proc near               ; CODE XREF: sub_140624820+6E↑p
                                        ; sub_140625AB8+63↓p ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_38          = dword ptr -38h
var_28          = byte ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408001DC SIZE 00000060 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rbx, rdx
                lea     rax, [rcx-30h]
                shr     rax, 8
                lea     r14, qword_140CFCE60
                movzx   edx, al
                movzx   r15d, r9b
                movzx   eax, byte ptr [rcx-18h]
                mov     rsi, r8
                xor     rdx, rax
                mov     rbp, rcx
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                lea     rax, sub_140625030
                mov     r14, [r14+rdx*8]
                cmp     [r14+98h], rax
                jnz     short loc_140624C7A
                add     rcx, 0FFFFFFFFFFFFFFD0h
                call    sub_140624DB0
                mov     [rbx], rax
                mov     byte ptr [rsi], 0
                cmp     qword ptr [rbx], 0
                jz      loc_1408001DC

loc_140624C59:                          ; CODE XREF: sub_140624BE0+1DB609↓j
                xor     eax, eax

loc_140624C5B:                          ; CODE XREF: sub_140624BE0+138↓j
                                        ; sub_140624BE0+1DB657↓j
                lea     r11, [rsp+88h+var_28]
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
                align 2

loc_140624C7A:                          ; CODE XREF: sub_140624BE0+5E↑j
                mov     eax, cs:dword_140C0F1E0
                mov     ecx, 1
                mov     edx, eax
                mov     [rsp+88h+var_38], 1BFh
                mov     r8d, 7153624Fh
                mov     [rsp+88h+arg_0], eax
                call    ExAllocatePoolWithTag
                mov     [rbx], rax
                test    rax, rax
                jz      loc_140800232
                mov     byte ptr [rsi], 1
                lea     rdx, [rbp-8]
                mov     ecx, [r14+64h]
                lea     r13, [r14+4Ch]
                mov     rax, [r14+98h]
                lea     r8, [rsp+88h+var_38]
                mov     r9, [rbx]
                mov     [rsp+88h+var_48], r15b
                mov     [rsp+88h+var_50], r13
                mov     [rsp+88h+var_58], ecx
                lea     rcx, [rsp+88h+arg_0]
                mov     [rsp+88h+var_60], rdx
                mov     edx, 1
                mov     [rsp+88h+var_68], rcx
                mov     rcx, rbp
                call    sub_1404079D0
                mov     r12d, eax
                cmp     eax, 0C0000023h
                jz      short loc_140624D1D

loc_140624D02:                          ; CODE XREF: sub_140624BE0+1BF↓j
                test    r12d, r12d
                js      loc_1408001EE
                cmp     qword ptr [rbx], 0
                jz      loc_140800200

loc_140624D15:                          ; CODE XREF: sub_140624BE0+1DB61B↓j
                                        ; sub_140624BE0+1DB62B↓j
                mov     eax, r12d
                jmp     loc_140624C5B
; ---------------------------------------------------------------------------

loc_140624D1D:                          ; CODE XREF: sub_140624BE0+120↑j
                mov     rcx, [rbx]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     eax, [rsp+88h+arg_0]
                mov     ecx, 1
                mov     edx, eax
                mov     byte ptr [rsi], 0
                mov     r8d, 7153624Fh
                mov     cs:dword_140C0F1E0, eax
                call    ExAllocatePoolWithTag
                mov     [rbx], rax
                test    rax, rax
                jz      loc_140800232
                mov     byte ptr [rsi], 1
                lea     r8, [rsp+88h+var_38]
                mov     ecx, [r14+64h]
                mov     edx, 1
                mov     rax, [r14+98h]
                mov     r9, [rbx]
                mov     [rsp+88h+var_48], r15b
                mov     [rsp+88h+var_50], r13
                mov     [rsp+88h+var_58], ecx
                lea     rcx, [rbp-8]
                mov     [rsp+88h+var_60], rcx
                lea     rcx, [rsp+88h+arg_0]
                mov     [rsp+88h+var_68], rcx
                mov     rcx, rbp
                call    sub_1404079D0
                mov     r12d, eax
                jmp     loc_140624D02
sub_140624BE0   endp

; ---------------------------------------------------------------------------
algn_140624DA4:                         ; DATA XREF: .rdata:000000014004F398↑o
                                        ; .pdata:00000001400FDE18↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140624DB0   proc near               ; CODE XREF: sub_140624BE0+64↑p
                                        ; sub_140627364+72↓p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080023C SIZE 00000096 BYTES

                mov     [rsp+arg_10], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                prefetchw byte ptr [rcx+28h]
                mov     r8, [rcx+28h]
                test    r8b, 0Fh
                jz      short loc_140624DDE

loc_140624DCB:                          ; CODE XREF: sub_140624DB0+B6↓j
                lea     rdx, [r8-1]
                mov     rax, r8
                lock cmpxchg [rcx+28h], rdx
                jnz     loc_140624E61

loc_140624DDE:                          ; CODE XREF: sub_140624DB0+19↑j
                                        ; sub_140624DB0+BC↓j
                mov     rbx, r8
                and     r8d, 0Fh
                and     rbx, 0FFFFFFFFFFFFFFF0h
                cmp     r8d, 1
                jbe     short loc_140624DFE

loc_140624DEF:                          ; CODE XREF: sub_140624DB0+51↓j
                                        ; sub_140624DB0+AA↓j ...
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140624DFE:                          ; CODE XREF: sub_140624DB0+3D↑j
                test    rbx, rbx
                jz      short loc_140624DEF
                cmp     r8d, 1
                jnz     loc_14080023C
                mov     eax, 0Fh
                lock xadd [rbx-18h], rax
                test    rax, rax
                jg      short loc_140624E24
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140624E24:                          ; CODE XREF: sub_140624DB0+6B↑j
                                        ; sub_140624DB0+1DB4F6↓j
                prefetchw byte ptr [rdi+28h]
                mov     rax, [rdi+28h]
                mov     rcx, rax
                and     ecx, 0Fh
                add     rcx, 0Fh
                cmp     rcx, 0Fh
                ja      loc_1408002BF

loc_140624E40:                          ; CODE XREF: sub_140624DB0+1DB509↓j
                mov     rcx, rax
                and     rcx, 0FFFFFFFFFFFFFFF0h
                cmp     rbx, rcx
                jnz     loc_1408002BF
                lea     rcx, [rax+0Fh]
                lock cmpxchg [rdi+28h], rcx
                jz      short loc_140624DEF
                jmp     loc_1408002AB
; ---------------------------------------------------------------------------

loc_140624E61:                          ; CODE XREF: sub_140624DB0+28↑j
                mov     r8, rax
                test    al, 0Fh
                jnz     loc_140624DCB
                jmp     loc_140624DDE
sub_140624DB0   endp

; ---------------------------------------------------------------------------
algn_140624E71:                         ; DATA XREF: .rdata:000000014004F3B8↑o
                                        ; .pdata:00000001400FDE24↑o
                align 20h
; Exported entry 2338. RtlQueryInformationAcl

; =============== S U B R O U T I N E =======================================



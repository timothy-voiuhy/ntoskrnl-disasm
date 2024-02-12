FsRtlPrivateLock proc near              ; CODE XREF: FsRtlProcessFileLock+15E↓p
                                        ; DATA XREF: .rdata:000000014007B0A0↑o ...

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = byte ptr -88h
var_87          = byte ptr -87h
var_86          = byte ptr -86h
var_85          = byte ptr -85h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = byte ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

; FUNCTION CHUNK AT 00000001404199CE SIZE 00000129 BYTES
; FUNCTION CHUNK AT 00000001404739E0 SIZE 000000DD BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+10h], rdx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     r12, r9
                mov     r13, r8
                mov     r15, rdx
                mov     rbx, rcx
                mov     rdi, [rsp+0B8h+arg_48]
                mov     [rsp+0B8h+var_86], 0
                and     qword ptr [rax-78h], 0
                xor     esi, esi
                mov     [rax-70h], rsi
                mov     [rsp+0B8h+var_88], 0FFh
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-68h], xmm0
                movups  xmmword ptr [rax-58h], xmm0
                movups  xmmword ptr [rax-48h], xmm0

loc_140326AD7:                          ; DATA XREF: .rdata:000000014007B08C↑o
;   __try { // __finally(loc_1404199CE)
                test    rdi, rdi
                setz    dl
                mov     r14, [rcx+18h]
                mov     [rax-78h], r14
                test    r14, r14
                jnz     short loc_140326B04
                call    sub_140327E20
                test    al, al
                jz      loc_140326BD7
                mov     byte ptr [rbx+10h], 1
                mov     r14, [rbx+18h]
                mov     [rsp+0B8h+var_78], r14

loc_140326B04:                          ; CODE XREF: FsRtlPrivateLock+68↑j
                mov     rdx, [r13+0]
                mov     [rsp+0B8h+var_68], rdx
                mov     r8, [r12]
                mov     [rsp+0B8h+var_60], r8
                lea     rcx, [r8-1]
                add     rcx, rdx
                mov     [rsp+0B8h+var_40], rcx
                mov     eax, [rsp+0B8h+arg_28]
                mov     [rsp+0B8h+var_54], eax
                mov     [rsp+0B8h+var_50], r15
                mov     rax, [rsp+0B8h+arg_20]
                mov     [rsp+0B8h+var_48], rax
                mov     bl, [rsp+0B8h+arg_38]
                mov     [rsp+0B8h+var_58], bl
                lea     rsi, [r14+18h]
                mov     [rsp+0B8h+var_70], rsi
                xor     r12d, r12d
                cmp     rcx, rdx
                jb      loc_140326BEC

loc_140326B5F:                          ; CODE XREF: FsRtlPrivateLock+16F↓j
                mov     [rsp+0B8h+var_86], 1
                mov     rcx, rsi
                call    KeAcquireSpinLockRaiseToDpc
                mov     [rsp+0B8h+var_88], al
                lea     rdx, [rsp+0B8h+var_68]
                mov     rcx, rsi
                test    bl, bl
                jnz     short loc_140326BB6
                call    sub_14032750C

loc_140326B81:                          ; CODE XREF: FsRtlPrivateLock+13B↓j
                mov     [rsp+0B8h+var_85], al
                test    al, al
                jz      short loc_140326BBD
                lea     r8, [rsp+0B8h+var_68]
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140326D50
                test    al, al
                jz      loc_140326CD2
                mov     rbx, [rsp+0B8h+arg_40]
                mov     [rbx], r12d

loc_140326BAC:                          ; CODE XREF: FsRtlPrivateLock+155↓j
                                        ; FsRtlPrivateLock+183↓j ...
                mov     [rsp+0B8h+var_87], 1
                jmp     loc_140326CF7
; ---------------------------------------------------------------------------

loc_140326BB6:                          ; CODE XREF: FsRtlPrivateLock+FA↑j
                call    sub_1403279EC
                jmp     short loc_140326B81
; ---------------------------------------------------------------------------

loc_140326BBD:                          ; CODE XREF: FsRtlPrivateLock+107↑j
                cmp     [rsp+0B8h+arg_30], r12b
                jz      short loc_140326C05
                mov     rbx, [rsp+0B8h+arg_40]
                mov     dword ptr [rbx], 0C0000055h
                jmp     short loc_140326BAC
; ---------------------------------------------------------------------------

loc_140326BD7:                          ; CODE XREF: FsRtlPrivateLock+71↑j
                xor     r12d, r12d

loc_140326BDA:                          ; CODE XREF: FsRtlPrivateLock+188↓j
                                        ; FsRtlPrivateLock+255↓j
                mov     [rsp+0B8h+var_87], r12b
                mov     rbx, [rsp+0B8h+arg_40]
                jmp     loc_140326CF7
; ---------------------------------------------------------------------------

loc_140326BEC:                          ; CODE XREF: FsRtlPrivateLock+D9↑j
                test    r8, r8
                jz      loc_140326B5F
                mov     rbx, [rsp+0B8h+arg_40]
                mov     dword ptr [rbx], 0C00001A1h
                jmp     short loc_140326BAC
; ---------------------------------------------------------------------------

loc_140326C05:                          ; CODE XREF: FsRtlPrivateLock+145↑j
                test    rdi, rdi
                jz      short loc_140326BDA
                lea     rcx, unk_140CDBB00
                call    sub_14030E5D4
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_140326C39
                mov     dl, [rsp+0B8h+var_88]
                mov     rcx, rsi
                call    KeReleaseSpinLock
                mov     [rsp+0B8h+var_86], r12b
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_140326C39:                          ; CODE XREF: FsRtlPrivateLock+19C↑j
                mov     [rax+18h], rdi
                mov     rax, [rsp+0B8h+arg_50]
                mov     [rcx+10h], rax
                mov     rax, [r14+8]
                mov     [rcx+8], rax
                mov     rax, [rdi+0B8h]
                mov     [rsp+0B8h+var_38], rax
                or      byte ptr [rax+3], 1
                mov     [rcx], r12
                cmp     [rsi+18h], r12
                jnz     short loc_140326C73
                mov     [rsi+18h], rcx
                jmp     short loc_140326C7A
; ---------------------------------------------------------------------------

loc_140326C73:                          ; CODE XREF: FsRtlPrivateLock+1EB↑j
                mov     rax, [rsi+20h]
                mov     [rax], rcx

loc_140326C7A:                          ; CODE XREF: FsRtlPrivateLock+1F1↑j
                mov     [rsi+20h], rcx
                mov     [rdi+38h], r14
                lea     rax, sub_1404EFE60
                xchg    rax, [rdi+68h]
                cmp     [rdi+44h], r12b
                jz      short loc_140326CB5
                mov     rax, r12
                xchg    rax, [rdi+68h]
                test    rax, rax
                jz      short loc_140326CB5
                mov     al, [rsp+0B8h+var_88]
                mov     [rdi+45h], al
                mov     rdx, rdi
                xor     ecx, ecx
                call    sub_1404EFE60
                mov     [rsp+0B8h+var_86], r12b

loc_140326CB5:                          ; CODE XREF: FsRtlPrivateLock+211↑j
                                        ; FsRtlPrivateLock+21D↑j
                mov     rbx, [rsp+0B8h+arg_40]
                mov     dword ptr [rbx], 103h
                mov     r14, [rsp+0B8h+var_78]
                mov     rsi, [rsp+0B8h+var_70]
                jmp     loc_140326BAC
; ---------------------------------------------------------------------------

loc_140326CD2:                          ; CODE XREF: FsRtlPrivateLock+11B↑j
                test    rdi, rdi
                jz      loc_140326BDA
                mov     dl, [rsp+0B8h+var_88]
                mov     rcx, rsi
                call    KeReleaseSpinLock
                mov     [rsp+0B8h+var_86], r12b
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 140326AD7
; ---------------------------------------------------------------------------

loc_140326CF7:                          ; CODE XREF: FsRtlPrivateLock+131↑j
                                        ; FsRtlPrivateLock+167↑j
                                        ; DATA XREF: ...
                cmp     [rsp+0B8h+var_86], r12b
                jz      short loc_140326D1D
                mov     rcx, rsi
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404739E0

loc_140326D14:                          ; CODE XREF: FsRtlPrivateLock+14CF62↓j
                                        ; FsRtlPrivateLock+14CF6E↓j ...
                movzx   eax, [rsp+0B8h+var_88]
                mov     cr8, rax

loc_140326D1D:                          ; CODE XREF: FsRtlPrivateLock+27C↑j
                test    rdi, rdi
                jnz     loc_140473A49

loc_140326D26:                          ; CODE XREF: FsRtlPrivateLock+14CFCF↓j
                                        ; FsRtlPrivateLock+14D038↓j
                mov     al, [rsp+0B8h+var_87]
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140326A80
FsRtlPrivateLock endp

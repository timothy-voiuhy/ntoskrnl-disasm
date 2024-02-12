CcZeroData      proc near               ; CODE XREF: FsRtlCopyWrite+309↓p
                                        ; FsRtlPrepareMdlWriteDev+28B↓p
                                        ; DATA XREF: ...

var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 0000000140418E4B SIZE 00000020 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9b
                mov     [r11+18h], r8
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r14b, r9b
                mov     r13, rdx
                mov     rsi, rcx
                mov     rcx, [rdx]
                mov     [r11+10h], rcx
                xor     r12d, r12d
                mov     [r11-80h], r12
                mov     [r11+8], r12b
                mov     [r11-78h], r12
                mov     [rsp+0B8h+var_88], r12b
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+0B8h+var_58], xmm0
                mov     [r11-48h], rax
                mov     eax, [rsi+50h]
                test    al, 10h
                jnz     loc_1402F2BE4
                cmp     [rsi+30h], r12
                mov     r15b, r12b
                jz      loc_1402F2BE4

loc_1402F2857:                          ; CODE XREF: CcZeroData+3F7↓j
                mov     rbx, [r8]
                sub     rbx, rcx

loc_1402F285D:                          ; DATA XREF: .rdata:000000014006E504↑o
;   __try { // __finally(loc_140418E4B)
                lea     rdx, [rsp+0B8h+var_58]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rsi
                call    sub_1402F2BF4
                mov     [rsp+0B8h+var_78], rax
                mov     ecx, 1
                lock xadd [rax+3C8h], rcx
                inc     rcx
                cmp     rcx, 1
                jle     loc_1402F2A3C

loc_1402F2896:                          ; CODE XREF: CcZeroData+253↓j
                mov     [rsp+0B8h+var_88], 1
                lea     rcx, [rsp+0B8h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rdi, [rsp+0B8h+var_48]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1402F2A48

loc_1402F28B8:                          ; CODE XREF: CcZeroData+25A↓j
                                        ; CcZeroData+266↓j ...
                movzx   eax, dil
                mov     cr8, rax
                test    r15b, r15b
                jnz     loc_1402F29A6
                cmp     rbx, 200000h
                jg      loc_1402F29A6
                mov     rax, [rsp+0B8h+var_78]
                mov     rcx, [rax+8]
                mov     rax, [rcx]
                cmp     qword ptr [rax+1BC0h], 800h
                jb      loc_1402F2AAF

loc_1402F28F3:                          ; CODE XREF: CcZeroData+1B9↓j
                                        ; CcZeroData+2C6↓j
                mov     rcx, rsi
                call    IoGetRelatedDeviceObject
                movzx   r12d, word ptr [rax+130h]
                test    r12d, r12d
                jz      loc_1402F2AC1
                mov     rcx, rsi
                call    IoGetRelatedDeviceObject
                movzx   edi, word ptr [rax+130h]
                dec     edi

loc_1402F291D:                          ; CODE XREF: CcZeroData+2D3↓j
                test    r15b, r15b
                jnz     loc_1402F29E8

loc_1402F2926:                          ; CODE XREF: CcZeroData+20A↓j
                mov     rax, [rsp+0B8h+var_78]
                mov     rcx, [rax+8]
                mov     rax, [rcx]
                mov     rcx, [rax+1BC0h]
                cmp     rcx, 800h
                jb      loc_1402F2B58

loc_1402F2946:                          ; CODE XREF: CcZeroData+3B5↓j
                                        ; CcZeroData+3C2↓j
                cmp     rbx, 200000h
                jg      loc_1402F29FF

loc_1402F2953:                          ; CODE XREF: CcZeroData+247↓j
                                        ; CcZeroData+3A9↓j ...
                test    ebx, ebx
                jz      short loc_1402F297A
                mov     r9b, [rsp+0B8h+arg_18]
                mov     r8d, ebx
                lea     rdx, [rsp+0B8h+arg_8]
                mov     rcx, rsi
                call    sub_1402F2C28
                test    al, al
                jz      loc_1402F2BBF

loc_1402F297A:                          ; CODE XREF: CcZeroData+165↑j
                mov     eax, ebx
                add     [rsp+0B8h+arg_8], rax

loc_1402F2984:                          ; CODE XREF: CcZeroData+208↓j
                mov     rax, [rsp+0B8h+arg_10]
                mov     rax, [rax]
                cmp     [rsp+0B8h+arg_8], rax
                jl      short loc_1402F29B4

loc_1402F2999:                          ; CODE XREF: CcZeroData+1F6↓j
                mov     [rsp+0B8h+arg_0], 1
                jmp     loc_1402F2BBF
; ---------------------------------------------------------------------------

loc_1402F29A6:                          ; CODE XREF: CcZeroData+D3↑j
                                        ; CcZeroData+E0↑j ...
                test    r14b, r14b
                jnz     loc_1402F28F3
                jmp     loc_1402F2BBF
; ---------------------------------------------------------------------------

loc_1402F29B4:                          ; CODE XREF: CcZeroData+1A7↑j
                mov     [rsp+0B8h+var_80], rax
                mov     [rsp+0B8h+var_80], rax
                mov     ecx, edi
                add     rax, rcx
                mov     [rsp+0B8h+var_80], rax
                not     edi
                and     dword ptr [rsp+0B8h+var_80], edi
                mov     r9d, r12d
                lea     r8, [rsp+0B8h+var_80]
                lea     rdx, [rsp+0B8h+arg_8]
                mov     rcx, rsi
                call    CcZeroDataOnDisk
                jmp     short loc_1402F2999
; ---------------------------------------------------------------------------

loc_1402F29E8:                          ; CODE XREF: CcZeroData+130↑j
                test    dword ptr [rsp+0B8h+arg_8], edi
                jnz     loc_1402F2AC8

loc_1402F29F5:                          ; CODE XREF: CcZeroData+35D↓j
                test    r15b, r15b
                jnz     short loc_1402F2984
                jmp     loc_1402F2926
; ---------------------------------------------------------------------------

loc_1402F29FF:                          ; CODE XREF: CcZeroData+15D↑j
                mov     rax, [rsp+0B8h+arg_8]
                mov     qword ptr [rsp+0B8h+var_68], rax
                lea     rcx, [rax+200000h]
                mov     qword ptr [rsp+0B8h+var_68], rcx
                mov     eax, edi
                add     rax, rcx
                mov     qword ptr [rsp+0B8h+var_68], rax
                mov     eax, edi
                not     eax
                mov     ebx, dword ptr [rsp+0B8h+var_68]
                and     ebx, eax
                mov     dword ptr [rsp+0B8h+var_68], ebx
                sub     ebx, dword ptr [rsp+0B8h+arg_8]
                jmp     loc_1402F2953
; ---------------------------------------------------------------------------

loc_1402F2A3C:                          ; CODE XREF: CcZeroData+A0↑j
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------
                jmp     loc_1402F2896
; ---------------------------------------------------------------------------

loc_1402F2A48:                          ; CODE XREF: CcZeroData+C2↑j
                test    al, 1
                jz      loc_1402F28B8
                mov     rax, cr8
                cmp     al, 0Fh
                ja      loc_1402F28B8
                cmp     dil, 0Fh
                ja      loc_1402F28B8
                cmp     al, 2
                jb      loc_1402F28B8
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rsp+0B8h+var_48]
                inc     ecx
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     loc_1402F28B8
                mov     rcx, r10
                call    sub_1403F2EC4
                jmp     loc_1402F28B8
; ---------------------------------------------------------------------------

loc_1402F2AAF:                          ; CODE XREF: CcZeroData+FD↑j
                cmp     rbx, 2000h
                jle     loc_1402F28F3
                jmp     loc_1402F29A6
; ---------------------------------------------------------------------------

loc_1402F2AC1:                          ; CODE XREF: CcZeroData+116↑j
                xor     edi, edi
                jmp     loc_1402F291D
; ---------------------------------------------------------------------------

loc_1402F2AC8:                          ; CODE XREF: CcZeroData+1FF↑j
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_68], xmm0
                mov     rax, [rsp+0B8h+arg_8]
                mov     [rsp+0B8h+arg_8], rax
                mov     ecx, edi
                add     rax, rcx
                mov     [rsp+0B8h+arg_8], rax
                mov     eax, edi
                not     eax
                mov     r14d, dword ptr [rsp+0B8h+arg_8]
                and     r14d, eax
                mov     dword ptr [rsp+0B8h+arg_8], r14d
                sub     r14d, [r13+0]
                mov     r9b, [rsp+0B8h+arg_18]
                mov     r8d, r14d
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_1402F2C28
                test    al, al
                jz      loc_1402F2BBF
                mov     rcx, [rsi+28h]
                lea     rax, [rsp+0B8h+var_68]
                mov     [rsp+0B8h+var_90], rax
                mov     [rsp+0B8h+var_98], 0
                xor     r9d, r9d
                mov     r8d, r14d
                mov     rdx, r13
                call    sub_140260E80
                mov     ecx, dword ptr [rsp+0B8h+var_68]
                test    ecx, ecx
                jns     loc_1402F29F5
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_1402F2B58:                          ; CODE XREF: CcZeroData+150↑j
                cmp     rbx, 2000h
                jle     short loc_1402F2B9E
                mov     r14d, dword ptr [rsp+0B8h+arg_8]
                test    edi, r14d
                jz      short loc_1402F2B9E
                mov     rax, [rsp+0B8h+arg_8]
                mov     [rsp+0B8h+var_70], rax
                mov     [rsp+0B8h+var_70], rax
                mov     ecx, edi
                add     rcx, rax
                mov     [rsp+0B8h+var_70], rcx
                mov     eax, edi
                not     eax
                mov     ebx, ecx
                and     ebx, eax
                mov     dword ptr [rsp+0B8h+var_70], ebx
                sub     ebx, r14d
                jmp     loc_1402F2953
; ---------------------------------------------------------------------------

loc_1402F2B9E:                          ; CODE XREF: CcZeroData+36F↑j
                                        ; CcZeroData+37C↑j
                cmp     rcx, 800h
                jnb     loc_1402F2946
                cmp     rbx, 2000h
                jle     loc_1402F2946
                xor     ebx, ebx
                jmp     loc_1402F2953
;   } // starts at 1402F285D
; ---------------------------------------------------------------------------

loc_1402F2BBF:                          ; CODE XREF: CcZeroData+184↑j
                                        ; CcZeroData+1B1↑j ...
                mov     rcx, [rsp+0B8h+var_78]
                call    sub_1402F9FAC
                mov     al, [rsp+0B8h+arg_0]
                add     rsp, 80h
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

loc_1402F2BE4:                          ; CODE XREF: CcZeroData+54↑j
                                        ; CcZeroData+61↑j
                mov     r15b, 1
                jmp     loc_1402F2857
; } // starts at 1402F27F0
CcZeroData      endp

; ---------------------------------------------------------------------------
byte_1402F2BEC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D323C↑o

; =============== S U B R O U T I N E =======================================


sub_1402F2BF4   proc near               ; CODE XREF: CcZeroData+81↑p
                                        ; CcDeferWrite+88↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rcx, [rcx+28h]
                test    rcx, rcx
                jz      short loc_1402F2C15
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_1402F2C15
                call    sub_140265960

loc_1402F2C0F:                          ; CODE XREF: sub_1402F2BF4+2C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F2C15:                          ; CODE XREF: sub_1402F2BF4+B↑j
                                        ; sub_1402F2BF4+14↑j
                mov     rax, cs:qword_140CFC760
                mov     rax, [rax+8]
                jmp     short loc_1402F2C0F
sub_1402F2BF4   endp

; ---------------------------------------------------------------------------
algn_1402F2C22:                         ; DATA XREF: .pdata:00000001400D3248↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402F2C28   proc near               ; CODE XREF: CcZeroData+17D↑p
                                        ; CcZeroData+329↑p
                                        ; DATA XREF: ...

var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = byte ptr  10h

; FUNCTION CHUNK AT 0000000140418E71 SIZE 0000004D BYTES
; FUNCTION CHUNK AT 000000014046392C SIZE 0000001E BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 90h
                movzx   r14d, r9b
                mov     esi, r8d
                mov     r15, rcx
                xor     edi, edi
                and     [r11-38h], rdi
                mov     rax, [rdx]
                mov     [r11-30h], rax
                and     [r11-40h], rdi
                and     [r11-28h], rdi
                and     [r11-48h], rdi
                mov     byte ptr [r11+10h], 1
                and     [rsp+0A8h+var_58], edi

loc_1402F2C6B:                          ; CODE XREF: sub_1402F2C28+172↓j
                                        ; DATA XREF: .rdata:000000014006E550↑o
;   __try { // __finally(loc_140418E71)
                mov     r8d, esi
                sub     r8d, edi
                lea     rcx, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_68], rcx
                lea     rcx, [rsp+0A8h+var_28]
                mov     [rsp+0A8h+var_70], rcx
                lea     rcx, [rsp+0A8h+var_40]
                mov     [rsp+0A8h+var_78], rcx
                mov     [rsp+0A8h+var_80], r14d
                mov     byte ptr [rsp+0A8h+var_88], 1
                xor     r9d, r9d
                lea     rdx, [rsp+0A8h+var_30]
                mov     rcx, r15
                call    sub_1402720A0
                test    al, al
                jz      loc_1402F2DA2
                mov     rax, [rsp+0A8h+var_38]
                sub     eax, dword ptr [rsp+0A8h+var_30]
                mov     [rsp+0A8h+var_54], eax
                add     edi, eax
                mov     [rsp+0A8h+var_50], edi
                and     [rsp+0A8h+var_88], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, eax
                mov     rcx, [rsp+0A8h+var_28]
                call    IoAllocateMdl
                mov     [rsp+0A8h+var_48], rax
                test    rax, rax
                jz      loc_1402F2DB3
                mov     rax, gs:188h
                movzx   ebx, byte ptr [rax+51Dh]
                add     ebx, 2
                mov     [rsp+0A8h+var_58], ebx
                mov     rax, gs:188h
                mov     byte ptr [rax+51Dh], 1
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [rsp+0A8h+var_48]
                call    sub_140221A30
                mov     rax, gs:188h
                sub     bl, 2
                mov     [rax+51Dh], bl
                and     [rsp+0A8h+var_58], 0
                mov     rax, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_30], rax
                mov     edx, [rsp+0A8h+var_54]
                mov     rcx, [rsp+0A8h+var_28]
                call    sub_1402A6470
                xor     edx, edx
                mov     rcx, [rsp+0A8h+var_40]
                call    CcSetDirtyPinnedData
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, [rsp+0A8h+var_40]
                call    sub_1402F78B0
                and     [rsp+0A8h+var_40], 0
                mov     rcx, [rsp+0A8h+var_48]
                call    MmUnlockPages
                mov     rcx, [rsp+0A8h+var_48]
                call    IoFreeMdl
                xor     ebx, ebx
                mov     [rsp+0A8h+var_48], rbx
                mov     edi, [rsp+0A8h+var_50]
                cmp     esi, edi
                ja      loc_1402F2C6B
                jmp     short loc_1402F2DBE
; ---------------------------------------------------------------------------

loc_1402F2DA2:                          ; CODE XREF: sub_1402F2C28+86↑j
                mov     [rsp+0A8h+arg_8], 0
                xor     ebx, ebx
                mov     [rsp+0A8h+var_48], rbx
                jmp     short loc_1402F2DBE
; ---------------------------------------------------------------------------

loc_1402F2DB3:                          ; CODE XREF: sub_1402F2C28+C2↑j
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 1402F2C6B

loc_1402F2DBE:                          ; CODE XREF: sub_1402F2C28+178↑j
                                        ; sub_1402F2C28+189↑j
                                        ; DATA XREF: ...
                mov     rcx, [rsp+0A8h+var_40]
                test    rcx, rcx
                jnz     loc_14046392C

loc_1402F2DCC:                          ; CODE XREF: sub_1402F2C28+170D0F↓j
                test    rbx, rbx
                jnz     loc_14046393C

loc_1402F2DD5:                          ; CODE XREF: sub_1402F2C28+170D1D↓j
                mov     al, [rsp+0A8h+arg_8]
                lea     r11, [rsp+0A8h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402F2C28
sub_1402F2C28   endp

byte_1402F2DF6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014006E564↑o
                                        ; .pdata:00000001400D3254↑o

; =============== S U B R O U T I N E =======================================


sub_1402F2DFC   proc near               ; CODE XREF: CcPreparePinWrite+72↓p
                                        ; DATA XREF: .rdata:000000014006E634↑o ...

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140418EC4 SIZE 00000049 BYTES
; FUNCTION CHUNK AT 000000014046394A SIZE 0000006D BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9
                mov     [r11+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r12d, r8d
                mov     r13, rdx
                and     qword ptr [r11-70h], 0
                mov     r10d, [rdx]
                and     r10d, 0FFFh
                mov     eax, r8d
                add     rax, 0FFFh
                add     r10, rax
                shr     r10, 0Ch
                mov     [r11-78h], r10d
                mov     r14, gs:188h
                mov     [rsp+0A8h+var_60], r14
                mov     byte ptr [r11+18h], 1
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+0A8h+var_58], xmm0
                mov     [r11-48h], rax
                mov     rax, [rcx+28h]
                mov     rbx, [rax+8]
                mov     edi, 20000h
                test    [rbx+98h], edi
                jz      loc_1402F2FA0
                mov     esi, 0Fh

loc_1402F2E7E:                          ; CODE XREF: sub_1402F2DFC+1EC↓j
                mov     ecx, [r14+508h]
                movzx   eax, byte ptr [r14+51Ch]
                lea     r15d, [rax+rcx*4]
                mov     [rsp+0A8h+arg_8], r15d
                mov     rdi, [rsp+0A8h+arg_20]
                mov     [rsp+0A8h+var_80], rdi
                lea     rax, [rsp+0A8h+var_70]
                mov     [rsp+0A8h+var_88], rax
                mov     r9d, 1
                mov     r8d, r12d
                mov     rdx, r13
                mov     rcx, [rsp+0A8h+arg_0]
                call    sub_1406A0BD4
                nop

loc_1402F2ECA:                          ; DATA XREF: .rdata:000000014006E620↑o
;   __try { // __finally(loc_140418EC4)
                mov     rdi, [rdi]
                mov     [rsp+0A8h+var_68], rdi
                mov     ebx, [rsp+0A8h+var_78]
                mov     r12d, 1

loc_1402F2EDC:                          ; CODE XREF: sub_1402F2DFC+13F↓j
                test    ebx, ebx
                jz      short loc_1402F2F51
                mov     [rsp+0A8h+arg_10], r12b
                mov     [r14+51Ch], r12b
                dec     ebx
                cmp     ebx, [r14+508h]
                jbe     short loc_1402F2F08
                mov     eax, ebx
                cmp     ebx, esi
                cmova   eax, esi
                mov     [r14+508h], eax

loc_1402F2F08:                          ; CODE XREF: sub_1402F2DFC+FC↑j
                lea     r9, [rsp+0A8h+arg_10]
                mov     r8d, 5
                mov     rdx, r12
                mov     rcx, rdi
                call    sub_140274000
                cmp     [rsp+0A8h+arg_10], 0
                jz      short loc_1402F2F3D

loc_1402F2F2B:                          ; CODE XREF: sub_1402F2DFC+153↓j
                add     rdi, 1000h
                mov     [rsp+0A8h+var_68], rdi
                mov     [rsp+0A8h+var_78], ebx
                jmp     short loc_1402F2EDC
; ---------------------------------------------------------------------------

loc_1402F2F3D:                          ; CODE XREF: sub_1402F2DFC+12D↑j
                xor     r9d, r9d
                lea     r8d, [r9+4]
                mov     rdx, r12
                mov     rcx, rdi
                call    sub_140274000
                jmp     short loc_1402F2F2B
;   } // starts at 1402F2ECA
; ---------------------------------------------------------------------------

loc_1402F2F51:                          ; CODE XREF: sub_1402F2DFC+E2↑j
                                        ; DATA XREF: .rdata:000000014006E620↑o
                mov     al, r15b
                and     al, 3
                mov     [r14+51Ch], al
                shr     r15d, 2
                mov     [r14+508h], r15d
                mov     rax, gs:188h
                mov     ecx, [rax+54Ch]
                add     gs:8150h, ecx
                mov     rax, [rsp+0A8h+var_70]
                mov     rcx, [rsp+0A8h+arg_18]
                mov     [rcx], rax
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402F2FA0:                          ; CODE XREF: sub_1402F2DFC+77↑j
                mov     rcx, rbx
                call    sub_140265960
                lea     rcx, [rax+80h]
                lea     rdx, [rsp+0A8h+var_58]
                call    KeAcquireInStackQueuedSpinLock
                or      [rbx+98h], edi
                lea     rcx, [rsp+0A8h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rbx, [rsp+0A8h+var_48]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046394A

loc_1402F2FDC:                          ; CODE XREF: sub_1402F2DFC+170B50↓j
                mov     esi, 0Fh

loc_1402F2FE1:                          ; CODE XREF: sub_1402F2DFC+170B62↓j
                                        ; sub_1402F2DFC+170B6B↓j ...
                movzx   eax, bl
                mov     cr8, rax
                jmp     loc_1402F2E7E
; } // starts at 1402F2DFC
sub_1402F2DFC   endp

; ---------------------------------------------------------------------------
algn_1402F2FED:                         ; DATA XREF: .rdata:000000014006E634↑o
                                        ; .pdata:00000001400D3260↑o
                align 20h
; Exported entry  82. CcSetDirtyPinnedData

; =============== S U B R O U T I N E =======================================



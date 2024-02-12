IoDeleteDevice  proc near               ; CODE XREF: sub_14069B0C8+1C↓p
                                        ; sub_140731FB8+1D↓p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404630E8 SIZE 00000021 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+30h]
                xor     esi, esi
                and     [rsp+28h+arg_0], esi
                xor     edi, edi
                mov     rbx, rcx
                test    al, 40h
                jnz     loc_1402F08CA

loc_1402F0825:                          ; CODE XREF: IoDeleteDevice+DE↓j
                                        ; IoDeleteDevice+F8↓j ...
                mov     rdx, [rbx+8]
                mov     r8, rsi
                add     rdx, 38h ; '8'
                xor     ecx, ecx
                call    sub_14069B7AC
                test    rdi, rdi
                jnz     loc_1402F091E

loc_1402F0840:                          ; CODE XREF: IoDeleteDevice+128↓j
                mov     eax, cs:dword_140C2A6E0
                test    al, 90h
                jnz     loc_1404630E8

loc_1402F084E:                          ; CODE XREF: IoDeleteDevice+1728F6↓j
                test    dword ptr [rbx+30h], 800h
                jnz     loc_1404630FB

loc_1402F085B:                          ; CODE XREF: IoDeleteDevice+172904↓j
                mov     rdi, [rbx+28h]
                test    rdi, rdi
                jnz     loc_1402F093A

loc_1402F0868:                          ; CODE XREF: IoDeleteDevice+14C↓j
                mov     eax, [rbx+30h]
                test    al, 40h
                jnz     loc_1402F092D

loc_1402F0873:                          ; CODE XREF: IoDeleteDevice+135↓j
                mov     rcx, rbx
                call    sub_1402F0958
                mov     rcx, rbx
                call    sub_14069B0F8
                mov     edi, 0Ah
                mov     ecx, edi
                call    KeAcquireQueuedSpinLock
                mov     rcx, [rbx+138h]
                or      dword ptr [rcx+20h], 2
                cmp     dword ptr [rbx+4], 0
                jnz     short loc_1402F08BE
                mov     r8b, al
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402F0A40

loc_1402F08AD:                          ; CODE XREF: IoDeleteDevice+C8↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402F08BE:                          ; CODE XREF: IoDeleteDevice+9E↑j
                mov     dl, al
                mov     rcx, rdi
                call    KeReleaseQueuedSpinLock
                jmp     short loc_1402F08AD
; ---------------------------------------------------------------------------

loc_1402F08CA:                          ; CODE XREF: IoDeleteDevice+1F↑j
                lea     r9, [rsp+28h+arg_0]
                xor     r8d, r8d
                xor     edx, edx
                call    ObQueryNameString
                cmp     eax, 0C0000004h
                jnz     loc_1402F0825
                mov     edx, [rsp+28h+arg_0]
                mov     ecx, 1
                call    sub_14036D5A0
                mov     rdi, rax
                test    rax, rax
                jz      loc_1402F0825
                mov     r8d, [rsp+28h+arg_0]
                lea     r9, [rsp+28h+arg_0]
                mov     rdx, rax
                mov     rcx, rbx
                call    ObQueryNameString
                test    eax, eax
                cmovns  rsi, rdi
                jmp     loc_1402F0825
; ---------------------------------------------------------------------------

loc_1402F091E:                          ; CODE XREF: IoDeleteDevice+3A↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_1402F0840
; ---------------------------------------------------------------------------

loc_1402F092D:                          ; CODE XREF: IoDeleteDevice+6D↑j
                mov     rcx, rbx
                call    ObMakeTemporaryObject
                jmp     loc_1402F0873
; ---------------------------------------------------------------------------

loc_1402F093A:                          ; CODE XREF: IoDeleteDevice+62↑j
                mov     rcx, rdi
                call    sub_1403CE94C
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_1402F0868
IoDeleteDevice  endp

; ---------------------------------------------------------------------------
algn_1402F0951:                         ; DATA XREF: .rdata:000000014006D910↑o
                                        ; .pdata:00000001400D2F9C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402F0958   proc near               ; CODE XREF: IoDeleteDevice+76↑p
                                        ; DATA XREF: .rdata:000000014006D940↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046310A SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, [rcx+138h]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    PoRegisterDeviceForIdleDetection
                mov     rbx, [rsi+18h]
                test    rbx, rbx
                jnz     short loc_1402F0995

loc_1402F0984:                          ; CODE XREF: sub_1402F0958+D6↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F0995:                          ; CODE XREF: sub_1402F0958+2A↑j
                mov     rcx, cs:qword_140CFC530
                call    MmLockPagableSectionByHandle
                lea     rcx, dword_140C23C20
                call    ExAcquireFastMutex
                lea     rcx, qword_140C23B10
                call    KeAcquireSpinLockRaiseToDpc
                lea     rcx, [rbx+48h]
                movzx   edi, al
                mov     rdx, [rcx]
                test    rdx, rdx
                jz      short loc_1402F09E7
                mov     r8, [rcx+8]
                cmp     [rdx+8], rcx
                jnz     short loc_1402F0A33
                cmp     [r8], rcx
                jnz     short loc_1402F0A33
                mov     [r8], rdx
                mov     [rdx+8], r8
                and     qword ptr [rcx], 0
                and     qword ptr [rbx+50h], 0

loc_1402F09E7:                          ; CODE XREF: sub_1402F0958+6E↑j
                and     qword ptr [rsi+18h], 0
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                lea     rcx, qword_140C23B10
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046310A

loc_1402F0A10:                          ; CODE XREF: sub_1402F0958+1727B4↓j
                                        ; sub_1402F0958+1727C0↓j ...
                mov     cr8, rdi
                lea     rcx, dword_140C23C20
                call    KeReleaseGuardedMutex
                mov     rcx, cs:qword_140CFC530
                xor     edx, edx
                call    sub_140261960
                jmp     loc_1402F0984
; ---------------------------------------------------------------------------

loc_1402F0A33:                          ; CODE XREF: sub_1402F0958+78↑j
                                        ; sub_1402F0958+7D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1402F0958   endp

; ---------------------------------------------------------------------------
algn_1402F0A3A:                         ; DATA XREF: .rdata:000000014006D940↑o
                                        ; .pdata:00000001400D2FA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402F0A40   proc near               ; CODE XREF: sub_140234870+15D↑p
                                        ; IoDetachDevice+5C↑p ...

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_2E          = byte ptr -2Eh
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  40h
arg_8           = byte ptr  48h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 000000014046316E SIZE 0000014A BYTES

                mov     [rsp-38h+arg_10], rbx
                mov     [rsp-38h+arg_8], dl
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, [rcx+138h]
                xor     ebx, ebx
                mov     rsi, [rcx+8]
                mov     rdi, rcx
                mov     r14b, r8b
                mov     r13b, bl
                mov     r15b, 1
                mov     ecx, [rax+20h]
                test    cl, 4
                jnz     loc_14046316E
                lea     r12d, [rbx+0Ah]
                test    cl, 2
                jz      loc_1402F0BA4
                test    r15b, cl
                jnz     loc_1404631AF

loc_1402F0A99:                          ; CODE XREF: sub_1402F0A40+17277B↓j
                mov     r15b, bl

loc_1402F0A9C:                          ; CODE XREF: sub_1402F0A40+172775↓j
                mov     rax, [rdi+18h]
                mov     [rbp+arg_0], rax
                test    rax, rax
                jnz     short loc_1402F0B11

loc_1402F0AA9:                          ; CODE XREF: sub_1402F0A40+15C↓j
                mov     dl, r14b
                mov     rcx, r12
                call    KeReleaseQueuedSpinLock
                mov     rcx, [rdi+110h]
                test    rcx, rcx
                jz      short loc_1402F0ACA
                mov     edx, 1
                call    ObDereferenceSecurityDescriptor

loc_1402F0ACA:                          ; CODE XREF: sub_1402F0A40+7E↑j
                mov     rcx, [rdi+8]
                xor     r8d, r8d
                mov     rdx, rdi
                call    sub_1402F0BFC
                mov     edx, 746C6644h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                mov     r13b, 1
                test    r15b, r15b
                jnz     loc_1404631DE

loc_1402F0AF2:                          ; CODE XREF: sub_1402F0A40+1A1↓j
                                        ; sub_1402F0A40+172873↓j
                mov     al, r13b

loc_1402F0AF5:                          ; CODE XREF: sub_1402F0A40+154↓j
                                        ; sub_1402F0A40+17276A↓j
                mov     rbx, [rsp+80h+arg_10]
                add     rsp, 80h
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
; ---------------------------------------------------------------------------

loc_1402F0B11:                          ; CODE XREF: sub_1402F0A40+67↑j
                mov     rax, [rax+8]
                xor     edx, edx
                mov     rcx, rdi
                mov     r13, [rax+50h]
                call    sub_140234540
                mov     dl, r14b
                mov     rcx, r12
                call    KeReleaseQueuedSpinLock
                test    r13, r13
                jz      short loc_1402F0B6C
                cmp     dword ptr [r13+0], 68h ; 'h'
                jbe     short loc_1402F0B6C
                mov     r13, [r13+68h]
                test    r13, r13
                jz      short loc_1402F0B6C
                mov     eax, cs:dword_140C2A6E0
                test    al, 10h
                jnz     loc_1404631C0
                mov     r14, rbx

loc_1402F0B54:                          ; CODE XREF: sub_1402F0A40+172788↓j
                mov     rcx, [rbp+arg_0]
                mov     rdx, rdi
                mov     rax, r13
                call    sub_1404079D0
                test    r14, r14
                jnz     loc_1404631CD

loc_1402F0B6C:                          ; CODE XREF: sub_1402F0A40+F1↑j
                                        ; sub_1402F0A40+F8↑j ...
                mov     rcx, r12
                call    KeAcquireQueuedSpinLock
                xor     edx, edx
                mov     rcx, rdi
                mov     r14b, al
                call    sub_1402F0DCC
                cmp     [rdi+18h], rbx
                jz      short loc_1402F0B99

loc_1402F0B87:                          ; CODE XREF: sub_1402F0A40+162↓j
                                        ; sub_1402F0A40+1727B8↓j
                mov     dl, r14b
                mov     rcx, r12
                call    KeReleaseQueuedSpinLock
                mov     al, bl
                jmp     loc_1402F0AF5
; ---------------------------------------------------------------------------

loc_1402F0B99:                          ; CODE XREF: sub_1402F0A40+145↑j
                cmp     [rdi+4], ebx
                jz      loc_1402F0AA9
                jmp     short loc_1402F0B87
; ---------------------------------------------------------------------------

loc_1402F0BA4:                          ; CODE XREF: sub_1402F0A40+4A↑j
                                        ; sub_1402F0A40+1727AF↓j
                mov     r8, [rsi+8]
                mov     rdx, r8
                test    r8, r8
                jz      short loc_1402F0BBC

loc_1402F0BB0:                          ; CODE XREF: sub_1402F0A40+1727E1↓j
                cmp     [rdx+4], ebx
                jz      loc_1404631FD

loc_1402F0BB9:                          ; CODE XREF: sub_1402F0A40+1727C1↓j
                                        ; sub_1402F0A40+1727D4↓j
                mov     r15b, bl

loc_1402F0BBC:                          ; CODE XREF: sub_1402F0A40+16E↑j
                                        ; sub_1402F0A40+1727E7↓j
                mov     eax, [rsi+10h]
                test    al, al
                jns     short loc_1402F0BCE
                test    r8, r8
                movzx   r15d, r15b
                cmovnz  r15d, ebx

loc_1402F0BCE:                          ; CODE XREF: sub_1402F0A40+181↑j
                test    r15b, r15b
                jnz     short loc_1402F0BEC

loc_1402F0BD3:                          ; CODE XREF: sub_1402F0A40+1B2↓j
                mov     dl, r14b
                mov     rcx, r12
                call    KeReleaseQueuedSpinLock
                test    r15b, r15b
                jz      loc_1402F0AF2
                jmp     loc_14046322C
; ---------------------------------------------------------------------------

loc_1402F0BEC:                          ; CODE XREF: sub_1402F0A40+191↑j
                or      eax, 1
                mov     [rsi+10h], eax
                jmp     short loc_1402F0BD3
sub_1402F0A40   endp

; ---------------------------------------------------------------------------
byte_1402F0BF4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006D96C↑o
                                        ; .pdata:00000001400D2FB4↑o

; =============== S U B R O U T I N E =======================================


sub_1402F0BFC   proc near               ; CODE XREF: sub_1402F0A40+94↑p
                                        ; IoCreateDevice+2CD↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rcx
                mov     bl, r8b
                mov     ecx, 0Ah
                mov     rdi, rdx
                call    KeAcquireQueuedSpinLock
                mov     dl, al
                test    bl, bl
                jz      short loc_1402F0C4B
                mov     r8, [rsi+8]
                mov     [rdi+10h], r8
                mov     [rsi+8], rdi

loc_1402F0C30:                          ; CODE XREF: sub_1402F0BFC+6C↓j
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F0C4B:                          ; CODE XREF: sub_1402F0BFC+26↑j
                mov     rcx, [rdi+8]
                add     rcx, 8
                jmp     short loc_1402F0C59
; ---------------------------------------------------------------------------

loc_1402F0C55:                          ; CODE XREF: sub_1402F0BFC+63↓j
                lea     rcx, [rax+10h]

loc_1402F0C59:                          ; CODE XREF: sub_1402F0BFC+57↑j
                mov     rax, [rcx]
                cmp     rax, rdi
                jnz     short loc_1402F0C55
                mov     rax, [rdi+10h]
                mov     [rcx], rax
                jmp     short loc_1402F0C30
sub_1402F0BFC   endp

; ---------------------------------------------------------------------------
algn_1402F0C6A:                         ; DATA XREF: .pdata:00000001400D2FC0↑o
                align 10h
; Exported entry 1752. PoRegisterDeviceForIdleDetection

; =============== S U B R O U T I N E =======================================



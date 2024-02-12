PsGetVersion    proc near               ; CODE XREF: sub_1408C2F20+28↓p
                                        ; sub_1408C3000+28↓p ...

; FUNCTION CHUNK AT 000000014049620C SIZE 00000022 BYTES

                test    rcx, rcx
                jz      short loc_14037F74B
                mov     dword ptr [rcx], 0Ah

loc_14037F74B:                          ; CODE XREF: PsGetVersion+3↑j
                test    rdx, rdx
                jnz     short loc_14037F777

loc_14037F750:                          ; CODE XREF: PsGetVersion+3A↓j
                test    r8, r8
                jnz     loc_14049620C

loc_14037F759:                          ; CODE XREF: PsGetVersion+116AD8↓j
                test    r9, r9
                jnz     loc_14049621D

loc_14037F762:                          ; CODE XREF: PsGetVersion+116AE9↓j
                mov     eax, cs:NtBuildNumber
                and     eax, 0F0000000h
                cmp     eax, 0C0000000h
                setz    al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037F777:                          ; CODE XREF: PsGetVersion+E↑j
                and     dword ptr [rdx], 0
                jmp     short loc_14037F750
PsGetVersion    endp

; ---------------------------------------------------------------------------
byte_14037F77C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DB3D8↑o

; =============== S U B R O U T I N E =======================================


sub_14037F784   proc near               ; CODE XREF: sub_1407704B8+28↓p
                                        ; sub_1407704B8+9B↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rdi, [rbx]
                cmp     rdi, rbx
                jnz     short loc_14037F7C0
                xor     edi, edi

loc_14037F7A5:                          ; CODE XREF: sub_14037F784+55↓j
                mov     dl, al
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rdi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14037F7C0:                          ; CODE XREF: sub_14037F784+1D↑j
                mov     rcx, [rdi]
                cmp     [rcx+8], rdi
                jnz     short loc_14037F7DB
                mov     rdx, [rdi+8]
                cmp     [rdx], rdi
                jnz     short loc_14037F7DB
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                jmp     short loc_14037F7A5
; ---------------------------------------------------------------------------

loc_14037F7DB:                          ; CODE XREF: sub_14037F784+43↑j
                                        ; sub_14037F784+4C↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14037F784   endp

; ---------------------------------------------------------------------------
algn_14037F7E2:                         ; DATA XREF: .pdata:00000001400DB3E4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14037F7E8   proc near               ; CODE XREF: sub_1402947A0+4C6↑p
                                        ; sub_140769E10+DC9C3↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049622E SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402DAA00
                mov     rcx, rbx
                movzx   edi, al
                call    sub_14027B630
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049622E

loc_14037F822:                          ; CODE XREF: sub_14037F7E8+116A48↓j
                                        ; sub_14037F7E8+116A54↓j ...
                mov     cr8, rdi
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037F7E8   endp

algn_14037F832:                         ; DATA XREF: .rdata:0000000140094EB0↑o
                                        ; .pdata:00000001400DB3F0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14037F838   proc near               ; CODE XREF: sub_140738A8C:loc_140738AF5↓p
                                        ; DATA XREF: .rdata:0000000140094ED0↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140496292 SIZE 00000063 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+var_18], 0
                lea     rcx, byte_140C44A68
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                lea     rcx, qword_140C44A88
                call    KeAcquireSpinLockRaiseToDpc
                mov     rdi, cs:qword_140C44A58
                lea     rcx, qword_140C44A58
                movzx   ebx, al
                mov     rax, [rdi]
                cmp     [rdi+8], rcx
                jnz     short loc_14037F8C0
                cmp     [rax+8], rdi
                jnz     short loc_14037F8C0
                mov     cs:qword_140C44A58, rax
                mov     [rax+8], rcx
                lea     rcx, qword_140C44A88
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140496292

loc_14037F8AD:                          ; CODE XREF: sub_14037F838+116A5C↓j
                                        ; sub_14037F838+116A68↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, rdi
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14037F8C0:                          ; CODE XREF: sub_14037F838+48↑j
                                        ; sub_14037F838+4E↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14037F838   endp

; ---------------------------------------------------------------------------
algn_14037F8C7:                         ; DATA XREF: .rdata:0000000140094ED0↑o
                                        ; .pdata:00000001400DB3FC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14037F8D0   proc near               ; CODE XREF: IoUnregisterPlugPlayNotification+6↓p
                                        ; IoUnregisterPlugPlayNotificationEx+6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404962F6 SIZE 0000009E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbx, [rcx+40h]
                mov     rdi, rcx
                lea     rcx, dword_140C43380
                mov     bpl, dl
                xor     r12b, r12b
                call    ExAcquireFastMutex
                cmp     cs:byte_140D2D003, r12b
                jnz     loc_14037F9BB

loc_14037F912:                          ; CODE XREF: sub_14037F8D0+11A↓j
                lea     rcx, dword_140C43380
                call    KeReleaseGuardedMutex
                test    bpl, bpl
                jnz     short loc_14037F978
                test    rbx, rbx
                jz      short loc_14037F930
                mov     rcx, rbx
                call    ExAcquireFastMutex

loc_14037F930:                          ; CODE XREF: sub_14037F8D0+56↑j
                                        ; sub_14037F8D0+C3↓j
                cmp     byte ptr [rdi+3Ah], 0
                jnz     loc_140496365

loc_14037F93A:                          ; CODE XREF: sub_14037F8D0+116A98↓j
                mov     byte ptr [rdi+3Ah], 1
                test    bpl, bpl
                jnz     short loc_14037F995

loc_14037F943:                          ; CODE XREF: sub_14037F8D0+DF↓j
                                        ; sub_14037F8D0+E9↓j
                mov     rcx, rdi
                call    sub_14069C948

loc_14037F94B:                          ; CODE XREF: sub_14037F8D0+116AA1↓j
                test    rbx, rbx
                jz      short loc_14037F958
                mov     rcx, rbx
                call    KeReleaseGuardedMutex

loc_14037F958:                          ; CODE XREF: sub_14037F8D0+7E↑j
                                        ; sub_14037F8D0+116ABF↓j
                mov     rbx, [rsp+48h+arg_0]
                xor     eax, eax
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
                align 8

loc_14037F978:                          ; CODE XREF: sub_14037F8D0+51↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rdi+48h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                jmp     short loc_14037F930
; ---------------------------------------------------------------------------

loc_14037F995:                          ; CODE XREF: sub_14037F8D0+71↑j
                mov     rcx, [rdi+48h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    rbx, rbx
                jz      short loc_14037F943
                mov     rcx, rbx
                call    ExAcquireFastMutex
                jmp     short loc_14037F943
; ---------------------------------------------------------------------------

loc_14037F9BB:                          ; CODE XREF: sub_14037F8D0+3C↑j
                lea     rcx, dword_140C45560
                call    ExAcquireFastMutex
                mov     rsi, cs:qword_140D2EB20
                lea     r13, qword_140D2EB20

loc_14037F9D5:                          ; CODE XREF: sub_14037F8D0+116A81↓j
                                        ; sub_14037F8D0+116A89↓j
                cmp     rsi, r13
                jnz     loc_1404962F6
                lea     rcx, dword_140C45560
                call    KeReleaseGuardedMutex
                jmp     loc_14037F912
sub_14037F8D0   endp

; ---------------------------------------------------------------------------
byte_14037F9EF  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140094F00↑o
                                        ; .pdata:00000001400DB408↑o

; =============== S U B R O U T I N E =======================================


sub_14037F9F8   proc near               ; CODE XREF: sub_1406F5218+327↓p
                                        ; DATA XREF: .pdata:00000001400DB414↑o
                sub     rsp, 28h
                call    sub_14037FA10
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037F9F8   endp

algn_14037FA07:                         ; DATA XREF: .pdata:00000001400DB414↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14037FA10   proc near               ; CODE XREF: sub_14037F9F8+4↑p
                                        ; sub_14033CF64+13E8F1↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_18          = byte ptr -18h
var_14          = dword ptr -14h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041B972 SIZE 00000027 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 40h
                mov     r14, rcx
                xor     bl, bl
                test    rcx, rcx
                jz      loc_14037FBC3
                call    sub_14033D104
                and     [rsp+48h+var_28], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, unk_140C1DCC0
                call    KeWaitForSingleObject
                nop

loc_14037FA57:                          ; DATA XREF: .rdata:0000000140094F30↑o
;   __try { // __finally(loc_14041B972)
                mov     edi, cs:dword_140C1DCFC
                test    edi, edi
                jz      short loc_14037FA92
                mov     [rsp+48h+var_14], edi

loc_14037FA65:                          ; CODE XREF: sub_14037FA10+80↓j
                test    edi, edi
                jle     loc_14037FB8F
                lea     r15d, [rdi-1]
                movsxd  rsi, r15d
                shl     rsi, 6
                mov     rax, cs:qword_140C1DCA0
                add     rsi, rax
                cmp     [rsi+8], r14
                jz      short loc_14037FAA1

loc_14037FA88:                          ; CODE XREF: sub_14037FA10+17A↓j
                mov     edi, r15d
                mov     [rsp+48h+var_14], r15d
                jmp     short loc_14037FA65
; ---------------------------------------------------------------------------

loc_14037FA92:                          ; CODE XREF: sub_14037FA10+4F↑j
                mov     bl, 1
                jmp     short loc_14037FA98
; ---------------------------------------------------------------------------

loc_14037FA96:                          ; CODE XREF: sub_14037FA10+12C↓j
                xor     bl, bl

loc_14037FA98:                          ; CODE XREF: sub_14037FA10+84↑j
                mov     [rsp+48h+var_18], bl
                jmp     loc_14037FB8F
; ---------------------------------------------------------------------------

loc_14037FAA1:                          ; CODE XREF: sub_14037FA10+76↑j
                mov     rcx, [rsi+20h]
                lea     rax, [rcx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      short loc_14037FACC
                call    MmUnmapViewInSystemSpace
                mov     rcx, [rsi+28h]
                test    rcx, rcx
                jz      short loc_14037FAC7
                call    ZwClose
                and     qword ptr [rsi+28h], 0

loc_14037FAC7:                          ; CODE XREF: sub_14037FA10+AB↑j
                and     qword ptr [rsi+20h], 0

loc_14037FACC:                          ; CODE XREF: sub_14037FA10+9D↑j
                mov     ebx, cs:dword_140C1DCFC
                cmp     edi, ebx
                jz      short loc_14037FAEC
                mov     r8d, ebx
                sub     r8d, edi
                shl     r8, 6
                lea     rdx, [rsi+40h]
                mov     rcx, rsi
                call    memmove

loc_14037FAEC:                          ; CODE XREF: sub_14037FA10+C4↑j
                lea     ecx, [rbx-1]
                mov     cs:dword_140C1DCFC, ecx
                test    ecx, ecx
                jnz     short loc_14037FB13
                xor     edx, edx
                mov     rcx, cs:qword_140C1DCA0
                call    ExFreePoolWithTag
                and     cs:qword_140C1DCA0, 0
                xor     eax, eax
                jmp     short loc_14037FB7E
; ---------------------------------------------------------------------------

loc_14037FB13:                          ; CODE XREF: sub_14037FA10+E7↑j
                mov     eax, cs:dword_140C1DCF8
                add     eax, 0FFFFFFE0h
                cmp     ecx, eax
                jnb     short loc_14037FB84
                mov     edx, eax
                shl     rdx, 6
                mov     ecx, 1
                mov     r8d, 69507472h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14037FA96
                mov     r8d, cs:dword_140C1DCF8
                add     r8d, 0FFFFFFE0h
                shl     r8, 6
                mov     rdx, cs:qword_140C1DCA0
                mov     rcx, rax
                call    memmove
                xor     edx, edx
                mov     rcx, cs:qword_140C1DCA0
                call    ExFreePoolWithTag
                mov     cs:qword_140C1DCA0, rdi
                mov     eax, cs:dword_140C1DCF8
                add     eax, 0FFFFFFE0h

loc_14037FB7E:                          ; CODE XREF: sub_14037FA10+101↑j
                mov     cs:dword_140C1DCF8, eax

loc_14037FB84:                          ; CODE XREF: sub_14037FA10+10E↑j
                mov     bl, 1
                mov     [rsp+48h+var_18], bl
                jmp     loc_14037FA88
;   } // starts at 14037FA57
; ---------------------------------------------------------------------------

loc_14037FB8F:                          ; CODE XREF: sub_14037FA10+57↑j
                                        ; sub_14037FA10+8C↑j
                                        ; DATA XREF: ...
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+1]
                lea     rcx, unk_140C1DCC0
                call    KeReleaseMutant
                mov     al, bl

loc_14037FBA7:                          ; CODE XREF: sub_14037FA10+1B5↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                mov     r14, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037FBC3:                          ; CODE XREF: sub_14037FA10+21↑j
                xor     al, al
                jmp     short loc_14037FBA7
; } // starts at 14037FA10
sub_14037FA10   endp

; ---------------------------------------------------------------------------
algn_14037FBC7:                         ; DATA XREF: .pdata:00000001400DB420↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14037FBD0   proc near               ; CODE XREF: sub_140264660+440↑p
                                        ; sub_140265B50+1D7E16↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rbx, rcx

loc_14037FBDE:                          ; CODE XREF: sub_14037FBD0+26↓j
                mov     rcx, [rbx+18h]
                call    sub_140264D40
                test    rax, rax
                jz      short loc_14037FBF8
                lea     rcx, [rsp+28h+arg_0]
                call    sub_1402C8C70
                jmp     short loc_14037FBDE
; ---------------------------------------------------------------------------

loc_14037FBF8:                          ; CODE XREF: sub_14037FBD0+1A↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037FBD0   endp

byte_14037FBFF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DB42C↑o

; =============== S U B R O U T I N E =======================================


sub_14037FC08   proc near               ; CODE XREF: sub_140335A38+1D0↑p
                                        ; DATA XREF: .rdata:0000000140094F70↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140496394 SIZE 0000003E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rcx
                mov     r9, r8
                mov     ecx, [rdx+18h]
                mov     rdi, r8
                dec     ecx
                mov     rbx, r8
                shl     rcx, 4
                mov     r14, rdx
                add     rcx, [rdx]
                and     r9d, 1
                mov     rax, [rcx]
                mov     rsi, [rcx-8]
                cmovnz  rdi, rax
                and     rbx, 0FFFFFFFFFFFFFFFEh
                test    r9, r9
                cmovz   rbx, rax
                mov     eax, [rbx]
                movzx   r15d, ax
                mov     rax, r8
                and     rax, 0FFFFFFFFFFFFFFFEh
                test    r9, r9
                cmovz   rax, r8
                cmp     rbx, rax
                jnz     short loc_14037FC7B
                sub     rsi, 10h
                mov     [rcx-8], rsi

loc_14037FC7B:                          ; CODE XREF: sub_14037FC08+69↑j
                or      r12d, 0FFFFFFFFh
                cmp     byte ptr [rbx+3], 0
                jz      loc_14049639E
                mov     rax, rbp
                lea     rcx, [rbp+10h]
                neg     rax
                sbb     rax, rax
                and     rax, rcx
                mov     rax, [rax]
                cmp     [rax], r12d
                jnz     loc_140496394
                mov     rax, [rdi+8]

loc_14037FCA9:                          ; CODE XREF: sub_14037FC08+116791↓j
                jnz     short loc_14037FCAF
                mov     [rbx+8], rax

loc_14037FCAF:                          ; CODE XREF: sub_14037FC08:loc_14037FCA9↑j
                mov     eax, [rdi]
                movzx   r8d, ax
                lea     rax, [rbx+10h]
                lea     rcx, [rax+r15*4]
                shl     r8, 2

loc_14037FCC1:                          ; CODE XREF: sub_14037FC08+1167C5↓j
                lea     rdx, [rdi+10h]
                call    memmove
                movzx   eax, word ptr [rdi]
                add     ax, r15w
                cmp     byte ptr [rbx+3], 0
                mov     [rbx], ax
                jz      short loc_14037FD14
                mov     rax, rbp
                lea     rcx, [rbp+10h]
                neg     rax
                sbb     rbx, rbx
                add     rsi, 8
                and     rbx, rcx
                mov     rax, [rbx]
                cmp     [rax], r12d
                jz      short loc_14037FD14
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140598AF0
                mov     rax, [rbx]
                cmp     [rax], r12d
                jz      short loc_14037FD14
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140598C34

loc_14037FD14:                          ; CODE XREF: sub_14037FC08+D0↑j
                                        ; sub_14037FC08+EC↑j ...
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_14037FFF0
                add     [r14+18h], r12d
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_140335A38
                inc     dword ptr [r14+18h]
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037FC08   endp

algn_14037FD52:                         ; DATA XREF: .rdata:0000000140094F70↑o
                                        ; .pdata:00000001400DB438↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14037FD58   proc near               ; CODE XREF: sub_140335C88+1FA↑p
                                        ; DATA XREF: .rdata:0000000140094FA0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404963D2 SIZE 0000004B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rcx
                mov     r9, r8
                mov     ecx, [rdx+18h]
                mov     rdi, r8
                dec     ecx
                mov     rbx, r8
                shl     rcx, 4
                mov     r14, rdx
                add     rcx, [rdx]
                and     r9d, 1
                mov     rax, [rcx]
                mov     rsi, [rcx-8]
                cmovnz  rdi, rax
                and     rbx, 0FFFFFFFFFFFFFFFEh
                test    r9, r9
                cmovz   rbx, rax
                mov     eax, [rbx]
                movzx   r15d, ax
                mov     rax, r8
                and     rax, 0FFFFFFFFFFFFFFFEh
                test    r9, r9
                cmovz   rax, r8
                cmp     rbx, rax
                jz      loc_1404963D2

loc_14037FDC7:                          ; CODE XREF: sub_14037FD58+116682↓j
                or      r12d, 0FFFFFFFFh
                cmp     byte ptr [rbx+3], 0
                jz      loc_1404963E9
                mov     rax, rbp
                lea     rcx, [rbp+10h]
                neg     rax
                sbb     rax, rax
                and     rax, rcx
                mov     rax, [rax]
                cmp     [rax], r12d
                jnz     loc_1404963DF
                mov     rax, [rdi+8]

loc_14037FDF5:                          ; CODE XREF: sub_14037FD58+11668C↓j
                jnz     short loc_14037FDFB
                mov     [rbx+8], rax

loc_14037FDFB:                          ; CODE XREF: sub_14037FD58:loc_14037FDF5↑j
                mov     eax, [rdi]
                movzx   r8d, ax
                lea     rax, [rbx+10h]
                lea     rcx, [rax+r15*4]
                shl     r8, 2

loc_14037FE0D:                          ; CODE XREF: sub_14037FD58+1166C0↓j
                lea     rdx, [rdi+10h]
                call    memmove
                movzx   eax, word ptr [rdi]
                add     ax, r15w
                cmp     byte ptr [rbx+3], 0
                mov     [rbx], ax
                jz      short loc_14037FE60
                mov     rax, rbp
                lea     rcx, [rbp+10h]
                neg     rax
                sbb     rbx, rbx
                add     rsi, 8
                and     rbx, rcx
                mov     rax, [rbx]
                cmp     [rax], r12d
                jz      short loc_14037FE60
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140598AF0
                mov     rax, [rbx]
                cmp     [rax], r12d
                jz      short loc_14037FE60
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140598C34

loc_14037FE60:                          ; CODE XREF: sub_14037FD58+CC↑j
                                        ; sub_14037FD58+E8↑j ...
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_14037FFF0
                add     [r14+18h], r12d
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_140335C88
                inc     dword ptr [r14+18h]
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037FD58   endp

byte_14037FE9E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140094FA0↑o
                                        ; .pdata:00000001400DB444↑o

; =============== S U B R O U T I N E =======================================


sub_14037FEA4   proc near               ; CODE XREF: sub_140335330+1E0↑p
                                        ; DATA XREF: .rdata:0000000140094FD0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049641E SIZE 0000004B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rcx
                mov     r9, r8
                mov     ecx, [rdx+18h]
                mov     rdi, r8
                dec     ecx
                mov     rbx, r8
                shl     rcx, 4
                mov     r14, rdx
                add     rcx, [rdx]
                and     r9d, 1
                mov     rax, [rcx]
                mov     rsi, [rcx-8]
                cmovnz  rdi, rax
                and     rbx, 0FFFFFFFFFFFFFFFEh
                test    r9, r9
                cmovz   rbx, rax
                mov     eax, [rbx]
                movzx   r15d, ax
                mov     rax, r8
                and     rax, 0FFFFFFFFFFFFFFFEh
                test    r9, r9
                cmovz   rax, r8
                cmp     rbx, rax
                jz      loc_14049641E

loc_14037FF13:                          ; CODE XREF: sub_14037FEA4+116582↓j
                or      r12d, 0FFFFFFFFh
                cmp     byte ptr [rbx+3], 0
                jz      loc_140496435
                mov     rax, rbp
                lea     rcx, [rbp+10h]
                neg     rax
                sbb     rax, rax
                and     rax, rcx
                mov     rax, [rax]
                cmp     [rax], r12d
                jnz     loc_14049642B
                mov     rax, [rdi+8]

loc_14037FF41:                          ; CODE XREF: sub_14037FEA4+11658C↓j
                jnz     short loc_14037FF47
                mov     [rbx+8], rax

loc_14037FF47:                          ; CODE XREF: sub_14037FEA4:loc_14037FF41↑j
                mov     eax, [rdi]
                movzx   r8d, ax
                lea     rax, [rbx+10h]
                lea     rcx, [rax+r15*8]
                shl     r8, 3

loc_14037FF59:                          ; CODE XREF: sub_14037FEA4+1165C0↓j
                lea     rdx, [rdi+10h]
                call    memmove
                movzx   eax, word ptr [rdi]
                add     ax, r15w
                cmp     byte ptr [rbx+3], 0
                mov     [rbx], ax
                jz      short loc_14037FFAC
                mov     rax, rbp
                lea     rcx, [rbp+10h]
                neg     rax
                sbb     rbx, rbx
                add     rsi, 8
                and     rbx, rcx
                mov     rax, [rbx]
                cmp     [rax], r12d
                jz      short loc_14037FFAC
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140598AF0
                mov     rax, [rbx]
                cmp     [rax], r12d
                jz      short loc_14037FFAC
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140598C34

loc_14037FFAC:                          ; CODE XREF: sub_14037FEA4+CC↑j
                                        ; sub_14037FEA4+E8↑j ...
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_14037FFF0
                add     [r14+18h], r12d
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_140335330
                inc     dword ptr [r14+18h]
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037FEA4   endp

algn_14037FFEA:                         ; DATA XREF: .rdata:0000000140094FD0↑o
                                        ; .pdata:00000001400DB450↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14037FFF0   proc near               ; CODE XREF: sub_140335330+10F↑p
                                        ; sub_140335A38+10E↑p ...
                sub     rsp, 28h
                movzx   r8d, byte ptr [rdx+3]
                lea     rax, [rcx+10h]
                neg     rcx
                sbb     rcx, rcx
                and     rcx, rax
                call    sub_140380018
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14037FFF0   endp

algn_140380011:                         ; DATA XREF: .pdata:00000001400DB45C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140380018   proc near               ; CODE XREF: sub_14037FFF0+16↑p
                                        ; sub_140598D48+83↓p ...

; FUNCTION CHUNK AT 000000014049646A SIZE 00000017 BYTES

                sub     rsp, 28h
                mov     r9, rdx
                mov     rdx, [rcx]
                test    r8d, r8d
                jz      short loc_14038003D
                mov     rax, [rdx+48h]
                dec     dword ptr [rdx+28h]
                mov     rcx, [rax]
                mov     eax, [rdx+4]
                cmp     rcx, rax
                jb      loc_14049646A

loc_14038003D:                          ; CODE XREF: sub_140380018+D↑j
                xor     edx, edx
                mov     rcx, r9
                call    ExFreePoolWithTag

loc_140380047:                          ; CODE XREF: sub_140380018+116464↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140380018   endp

algn_14038004D:                         ; DATA XREF: .rdata:0000000140094FEC↑o
                                        ; .pdata:00000001400DB468↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140380060   proc near               ; DATA XREF: .pdata:00000001400DB474↑o
                                        ; sub_140A6C348+57↓o

arg_0           = dword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                lea     r9, [rsp+28h+arg_0]
                add     rcx, 28h ; '('
                xor     r8d, r8d
                mov     dl, 1
                call    RtlHashUnicodeString
                mov     eax, [rsp+28h+arg_0]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140380060   endp

byte_140380086  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DB474↑o

; =============== S U B R O U T I N E =======================================


sub_14038008C   proc near               ; CODE XREF: sub_14033D1DC+B0↑p
                                        ; sub_1405BE4A8+93↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140496482 SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                xor     r11d, r11d
                lea     rax, [rdx-1]
                cmp     rax, 7FFFFFFEh
                mov     r10d, r11d
                mov     ebx, 80070057h
                cmova   r10d, ebx
                test    r10d, r10d
                js      loc_140496482
                cmp     r9, 7FFFFFFEh
                ja      short loc_140380110
                test    rdx, rdx
                jz      short loc_1403800E7
                sub     r9, rdx
                sub     r8, rcx

loc_1403800C7:                          ; CODE XREF: sub_14038008C+59↓j
                lea     rax, [r9+rdx]
                test    rax, rax
                jz      short loc_1403800E7
                movzx   eax, word ptr [r8+rcx]
                test    ax, ax
                jz      short loc_1403800E7
                mov     [rcx], ax
                add     rcx, 2
                sub     rdx, 1
                jnz     short loc_1403800C7

loc_1403800E7:                          ; CODE XREF: sub_14038008C+33↑j
                                        ; sub_14038008C+42↑j ...
                test    rdx, rdx
                lea     rax, [rcx-2]
                cmovnz  rax, rcx
                neg     rdx
                sbb     r10d, r10d
                not     r10d
                and     r10d, 8007007Ah
                mov     [rax], r11w

loc_140380106:                          ; CODE XREF: sub_14038008C+1163F9↓j
                                        ; sub_14038008C+116403↓j
                mov     rbx, [rsp+arg_0]
                mov     eax, r10d
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140380110:                          ; CODE XREF: sub_14038008C+2E↑j
                mov     r10d, ebx
                jmp     loc_14049648B
sub_14038008C   endp

; ---------------------------------------------------------------------------
algn_140380118:                         ; DATA XREF: .rdata:0000000140095090↑o
                                        ; .pdata:00000001400DB480↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140380120   proc near               ; CODE XREF: sub_1402F6470+679↑p
                                        ; sub_140381708+115838↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140496494 SIZE 00000018 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     esi, esi
                mov     r14d, r8d
                mov     ebp, edx
                mov     rbx, rcx
                lea     r15d, [rsi+1]
                test    edx, edx
                jz      short loc_1403801B3
                lea     rdi, [rcx+0D0h]

loc_140380151:                          ; CODE XREF: sub_140380120+91↓j
                mov     r10, [rdi]
                cmp     r10, rdi
                jz      short loc_1403801B3
                cmp     [r10+8], rdi
                jnz     loc_140380238
                mov     rax, [r10]
                cmp     [rax+8], r10
                jnz     loc_140380238
                mov     [rdi], rax
                mov     [rax+8], rdi
                mov     rax, r15
                add     [rbx+0CCh], r15d
                lock xadd [rbx+3C8h], rax
                add     rax, r15
                cmp     rax, r15
                jle     loc_140496494

loc_140380196:                          ; CODE XREF: sub_140380120+11637B↓j
                and     qword ptr [r10], 0
                or      r8d, 0FFFFFFFFh
                mov     r9, [rbx+8]
                xor     edx, edx
                mov     rcx, r10
                call    sub_1402FAB2C
                add     esi, r15d
                cmp     esi, ebp
                jb      short loc_140380151

loc_1403801B3:                          ; CODE XREF: sub_140380120+28↑j
                                        ; sub_140380120+37↑j
                xor     esi, esi
                test    r14d, r14d
                jnz     short loc_1403801D4

loc_1403801BA:                          ; CODE XREF: sub_140380120+C1↓j
                                        ; sub_140380120+114↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403801D4:                          ; CODE XREF: sub_140380120+98↑j
                lea     rdi, [rbx+130h]

loc_1403801DB:                          ; CODE XREF: sub_140380120+116↓j
                mov     r10, [rdi]
                cmp     r10, rdi
                jz      short loc_1403801BA
                cmp     [r10+8], rdi
                jnz     short loc_140380238
                mov     rax, [r10]
                cmp     [rax+8], r10
                jnz     short loc_140380238
                mov     [rdi], rax
                mov     [rax+8], rdi
                mov     rax, r15
                add     [rbx+140h], r15d
                lock xadd [rbx+3C8h], rax
                add     rax, r15
                cmp     rax, r15
                jle     loc_1404964A0

loc_140380218:                          ; CODE XREF: sub_140380120+116387↓j
                and     qword ptr [r10], 0
                or      r8d, 0FFFFFFFFh
                mov     r9, [rbx+8]
                xor     edx, edx
                mov     rcx, r10
                call    sub_1402FAB2C
                add     esi, r15d
                cmp     esi, r14d
                jnb     short loc_1403801BA
                jmp     short loc_1403801DB
; ---------------------------------------------------------------------------

loc_140380238:                          ; CODE XREF: sub_140380120+3D↑j
                                        ; sub_140380120+4A↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140380120   endp

; ---------------------------------------------------------------------------
byte_14038023F  db 11h dup(0CCh)        ; DATA XREF: .rdata:0000000140095124↑o
                                        ; .pdata:00000001400DB48C↑o
; Exported entry 731. IoAllocateErrorLogEntry

; =============== S U B R O U T I N E =======================================



CcUnpinData     proc near               ; CODE XREF: CcPinRead+1D2↑p
                                        ; CcPinMappedData+1C0↑p ...

arg_0           = qword ptr  8

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    cl, 1
                jz      short loc_1406A0D56
                and     rbx, 0FFFFFFFFFFFFFFFEh
                mov     dl, 1
                mov     rcx, rbx

loc_1406A0D47:                          ; CODE XREF: CcUnpinData+32↓j
                xor     r8d, r8d
                call    sub_1402F78B0
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406A0D56:                          ; CODE XREF: CcUnpinData+C↑j
                mov     eax, 2FAh
                cmp     [rcx], ax
                jz      short loc_1406A0D64
                xor     edx, edx
                jmp     short loc_1406A0D47
; ---------------------------------------------------------------------------

loc_1406A0D64:                          ; CODE XREF: CcUnpinData+2E↑j
                mov     rax, [rcx+10h]

loc_1406A0D68:                          ; DATA XREF: .rdata:000000014006ED3C↑o
                                        ; .rdata:000000014006ED4C↑o ...
                mov     [rsp+28h+arg_0], rdi
                lea     rdi, [rcx+10h]
                test    rax, rax
                jz      short loc_1406A0D8B

loc_1406A0D76:                          ; CODE XREF: CcUnpinData+59↓j
                mov     rcx, rax
                call    CcUnpinData
                mov     rax, [rdi+8]
                lea     rdi, [rdi+8]
                test    rax, rax
                jnz     short loc_1406A0D76

loc_1406A0D8B:                          ; CODE XREF: CcUnpinData+44↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rdi, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_1406A0DA0  db 0CCh                 ; DATA XREF: .pdata:00000001401021BC↑o
                                        ; .pdata:00000001401021C8↑o
CcUnpinData     endp

algn_1406A0DA1:                         ; DATA XREF: .pdata:00000001401021C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406A0DB0   proc near               ; DATA XREF: .rdata:000000014006EE08↑o
                                        ; .pdata:00000001401021D4↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140817D66 SIZE 00000080 BYTES

                push    rbx
                sub     rsp, 20h
                cmp     cs:dword_140D2D010, 0
                mov     rbx, rcx
                jnz     loc_140817D66

loc_1406A0DC6:                          ; CODE XREF: sub_1406A0DB0+176FC5↓j
                                        ; sub_1406A0DB0+176FD3↓j
                mov     rcx, [rbx+448h]
                test    rcx, rcx
                jnz     loc_140817D88

loc_1406A0DD6:                          ; CODE XREF: sub_1406A0DB0+176FF4↓j
                cmp     cs:byte_140C543A0, 0
                jnz     loc_140817DA9

loc_1406A0DE3:                          ; CODE XREF: sub_1406A0DB0+177002↓j
                mov     eax, [rbx+0C8h]
                test    al, 20h
                jnz     short loc_1406A0E48
                mov     rdx, [rbx+438h]
                test    rdx, rdx
                jnz     loc_1406A0F05

loc_1406A0DFD:                          ; CODE XREF: sub_1406A0DB0+15D↓j
                mov     rdx, [rbx+440h]
                test    rdx, rdx
                jnz     loc_1406A0F25

loc_1406A0E0D:                          ; CODE XREF: sub_1406A0DB0+181↓j
                mov     rdx, [rbx+480h]
                test    rdx, rdx
                jnz     loc_140817DB7

loc_1406A0E1D:                          ; CODE XREF: sub_1406A0DB0+177014↓j
                mov     rdx, [rbx+0D8h]
                prefetchw byte ptr [rdx+18h]
                mov     rax, [rdx+18h]
                lea     rcx, [rax-1]
                test    rcx, rcx
                jle     loc_1406A0F40

loc_1406A0E39:                          ; CODE XREF: sub_1406A0DB0+1BB↓j
                lock cmpxchg [rdx+18h], rcx
                mov     rcx, rax
                jnz     loc_1406A0F65

loc_1406A0E48:                          ; CODE XREF: sub_1406A0DB0+3B↑j
                                        ; sub_1406A0DB0+1B0↓j
                mov     rcx, [rbx+488h]
                test    rcx, rcx
                jnz     loc_1406A0EFB

loc_1406A0E58:                          ; CODE XREF: sub_1406A0DB0+150↓j
                mov     rcx, [rbx+458h]
                test    rcx, rcx
                jnz     loc_1406A0F36

loc_1406A0E68:                          ; CODE XREF: sub_1406A0DB0+18B↓j
                cmp     byte ptr [rbx+76h], 2
                jz      loc_140817DD5

loc_1406A0E72:                          ; CODE XREF: sub_1406A0DB0+177031↓j
                mov     rcx, [rbx+470h]
                test    rcx, rcx
                jz      short loc_1406A0E83
                call    sub_1402F8604

loc_1406A0E83:                          ; CODE XREF: sub_1406A0DB0+CC↑j
                mov     rcx, [rbx+308h]
                call    sub_1402F8510
                mov     rcx, [rbx+308h]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     rcx, [rbx+0B0h]
                test    rcx, rcx
                jz      short loc_1406A0EB0
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406A0EB0:                          ; CODE XREF: sub_1406A0DB0+F7↑j
                cmp     qword ptr [rbx+318h], 0
                jnz     short loc_1406A0F1B

loc_1406A0EBA:                          ; CODE XREF: sub_1406A0DB0+173↓j
                mov     rcx, [rbx+310h]
                test    rcx, rcx
                jnz     short loc_1406A0F12

loc_1406A0EC6:                          ; CODE XREF: sub_1406A0DB0+169↓j
                mov     rcx, [rbx+30h]
                test    rcx, rcx
                jz      short loc_1406A0EDF
                call    ExDeleteResourceLite
                mov     rcx, [rbx+30h]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406A0EDF:                          ; CODE XREF: sub_1406A0DB0+11D↑j
                mov     rcx, [rbx+450h]
                test    rcx, rcx
                jnz     short loc_1406A0EF2

loc_1406A0EEB:                          ; CODE XREF: sub_1406A0DB0+149↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406A0EF2:                          ; CODE XREF: sub_1406A0DB0+139↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406A0EEB
; ---------------------------------------------------------------------------

loc_1406A0EFB:                          ; CODE XREF: sub_1406A0DB0+A2↑j
                call    PsDereferenceSiloContext
                jmp     loc_1406A0E58
; ---------------------------------------------------------------------------

loc_1406A0F05:                          ; CODE XREF: sub_1406A0DB0+47↑j
                mov     ecx, [rbx+78h]
                call    sub_1406A0F7C
                jmp     loc_1406A0DFD
; ---------------------------------------------------------------------------

loc_1406A0F12:                          ; CODE XREF: sub_1406A0DB0+114↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406A0EC6
; ---------------------------------------------------------------------------

loc_1406A0F1B:                          ; CODE XREF: sub_1406A0DB0+108↑j
                mov     rcx, rbx
                call    sub_1402F8AE0
                jmp     short loc_1406A0EBA
; ---------------------------------------------------------------------------

loc_1406A0F25:                          ; CODE XREF: sub_1406A0DB0+57↑j
                mov     rcx, [rbx+0D8h]
                call    sub_1406A10C0
                jmp     loc_1406A0E0D
; ---------------------------------------------------------------------------

loc_1406A0F36:                          ; CODE XREF: sub_1406A0DB0+B2↑j
                call    PsDereferenceSiloContext
                jmp     loc_1406A0E68
; ---------------------------------------------------------------------------

loc_1406A0F40:                          ; CODE XREF: sub_1406A0DB0+83↑j
                                        ; sub_1406A0DB0+1C1↓j
                jnz     loc_140817DC9

loc_1406A0F46:                          ; CODE XREF: sub_1406A0DB0+177020↓j
                mov     rax, [rdx+8]
                lea     rcx, [rsp+28h+arg_0]
                mov     rdx, [rdx+0A0h]
                mov     [rsp+28h+arg_0], rax
                call    sub_1407067E0
                jmp     loc_1406A0E48
; ---------------------------------------------------------------------------

loc_1406A0F65:                          ; CODE XREF: sub_1406A0DB0+92↑j
                dec     rcx
                test    rcx, rcx
                jg      loc_1406A0E39
                jmp     short loc_1406A0F40
sub_1406A0DB0   endp

; ---------------------------------------------------------------------------
byte_1406A0F73  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006EE08↑o
                                        ; .pdata:00000001401021D4↑o

; =============== S U B R O U T I N E =======================================


sub_1406A0F7C   proc near               ; CODE XREF: NtSetInformationToken+701↑p
                                        ; sub_1406A0DB0+158↑p ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140817DE6 SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     esi, ecx
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+48h+arg_10], r15
                mov     rdi, rdx
                mov     ebp, r15d
                cmp     ecx, 5
                jnb     loc_140817DE6
                lea     rcx, [rsi+rsi*4]
                lea     rax, unk_140C25D40
                lea     rax, [rax+rcx*8]
                mov     [rsp+48h+arg_10], rax

loc_1406A0FBD:                          ; CODE XREF: sub_1406A0F7C+176EC1↓j
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                mov     rcx, [rsp+48h+arg_10]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, rbx
                lock xadd [rdi+18h], rax
                add     rax, rbx
                test    rax, rax
                jle     short loc_1406A102B

loc_1406A0FEA:                          ; CODE XREF: sub_1406A0F7C+176ECD↓j
                mov     rax, [rsp+48h+arg_10]
                lock xadd [rax], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_1406A101F

loc_1406A0FFC:                          ; CODE XREF: sub_1406A0F7C+AD↓j
                mov     rcx, [rsp+48h+arg_10]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                xor     eax, eax

loc_1406A100D:                          ; CODE XREF: sub_1406A0F7C+123↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A101F:                          ; CODE XREF: sub_1406A0F7C+7E↑j
                mov     rcx, [rsp+48h+arg_10]
                call    ExfTryToWakePushLock
                jmp     short loc_1406A0FFC
; ---------------------------------------------------------------------------

loc_1406A102B:                          ; CODE XREF: sub_1406A0F7C+6C↑j
                jnz     loc_140817E42
                mov     rsi, [rsp+48h+arg_10]
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, [rsi+18h]
                call    RtlRemoveEntryHashTable
                mov     r14b, al
                test    al, al
                jz      short loc_1406A10B0
                mov     ecx, [rdi+28h]
                mov     rax, [rsi+10h]
                dec     ecx
                btr     [rax], ecx

loc_1406A1058:                          ; CODE XREF: sub_1406A0F7C+139↓j
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_1406A10A4

loc_1406A1065:                          ; CODE XREF: sub_1406A0F7C+132↓j
                mov     rcx, [rsp+48h+arg_10]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                test    r14b, r14b
                jz      short loc_1406A109D
                mov     rcx, [rdi+30h]
                test    rcx, rcx
                jz      short loc_1406A109D
                mov     edx, [rdi+28h]
                call    sub_14034D4D4
                mov     rcx, [rdi+30h]
                call    sub_14034D4EC
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1406A109D:                          ; CODE XREF: sub_1406A0F7C+FB↑j
                                        ; sub_1406A0F7C+104↑j
                mov     eax, ebp
                jmp     loc_1406A100D
; ---------------------------------------------------------------------------

loc_1406A10A4:                          ; CODE XREF: sub_1406A0F7C+E7↑j
                mov     rcx, [rsp+48h+arg_10]
                call    ExfTryToWakePushLock
                jmp     short loc_1406A1065
; ---------------------------------------------------------------------------

loc_1406A10B0:                          ; CODE XREF: sub_1406A0F7C+CE↑j
                mov     ebp, 0C0000001h
                jmp     short loc_1406A1058
sub_1406A0F7C   endp

; ---------------------------------------------------------------------------
algn_1406A10B7:                         ; DATA XREF: .rdata:000000014006EF84↑o
                                        ; .pdata:00000001401021E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406A10C0   proc near               ; CODE XREF: sub_1402028C0+21C9B6↑p
                                        ; NtSetInformationToken+720↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140817E4E SIZE 0000003C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                lea     rbx, [rcx+58h]
                xor     esi, esi
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rbp, rdx
                add     [rax+1E4h], di
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, rdi
                lock xadd [rbp+18h], rax
                add     rax, rdi
                test    rax, rax
                jle     short loc_1406A1154

loc_1406A1111:                          ; CODE XREF: sub_1406A10C0+176D95↓j
                lock xadd [rbx], rdi
                test    dil, 2
                jnz     loc_140817E72

loc_1406A1120:                          ; CODE XREF: sub_1406A10C0+176DB6↓j
                                        ; sub_1406A10C0+176DC5↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax

loc_1406A1138:                          ; CODE XREF: sub_1406A10C0+FE↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406A1154:                          ; CODE XREF: sub_1406A10C0+4F↑j
                jnz     loc_140817E4E
                mov     rcx, [rbx+8]
                xor     r8d, r8d
                mov     rdx, rbp
                call    RtlRemoveEntryHashTable
                mov     r14b, al
                lock xadd [rbx], rdi
                test    dil, 2
                jnz     loc_140817E5A

loc_1406A117B:                          ; CODE XREF: sub_1406A10C0+176D9E↓j
                                        ; sub_1406A10C0+176DAD↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    r14b, r14b
                jz      short loc_1406A11C3
                mov     rdx, [rbp+40h]
                mov     ecx, [rbp+38h]
                call    sub_14031186C
                mov     rcx, [rbp+40h]
                test    rcx, rcx
                jz      short loc_1406A11B2
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406A11B2:                          ; CODE XREF: sub_1406A10C0+E9↑j
                xor     edx, edx
                mov     rcx, rbp
                call    ExFreePoolWithTag

loc_1406A11BC:                          ; CODE XREF: sub_1406A10C0+108↓j
                mov     eax, esi
                jmp     loc_1406A1138
; ---------------------------------------------------------------------------

loc_1406A11C3:                          ; CODE XREF: sub_1406A10C0+D4↑j
                mov     esi, 0C0000001h
                jmp     short loc_1406A11BC
sub_1406A10C0   endp

; ---------------------------------------------------------------------------
algn_1406A11CA:                         ; DATA XREF: .rdata:000000014006EFCC↑o
                                        ; .pdata:00000001401021EC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406A11D0   proc near               ; CODE XREF: sub_140266E30+1F5↑p
                                        ; sub_14037EFCC+53↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140817E8A SIZE 00000057 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, [rcx]
                lea     r15, [rcx+40h]
                mov     ebx, [rcx+38h]
                mov     rsi, rcx
                xor     ecx, ecx
                cmp     [r15], rcx
                mov     eax, ecx
                mov     edi, [rbp+0Ch]
                setnz   al
                lea     rdx, [rsi+80h]
                mov     [rsp+48h+arg_0], eax
                mov     eax, ebx
                and     al, 0A0h
                cmp     al, 80h
                cmovnz  rdx, rcx
                mov     rcx, rsi
                call    sub_1402FAF84
                mov     r12d, ebx
                mov     r14, rax
                and     r12d, 80h
                jnz     short loc_1406A1244
                test    dword ptr cs:xmmword_140CFC480+4, 400001h
                jnz     loc_140817EB4
                jmp     short loc_1406A125A
; ---------------------------------------------------------------------------

loc_1406A1244:                          ; CODE XREF: sub_1406A11D0+60↑j
                mov     eax, 2000h
                test    ax, di
                jnz     loc_140817E8A

loc_1406A1252:                          ; CODE XREF: sub_1406A11D0+176CDF↓j
                mov     rcx, r14
                call    sub_1402D380C

loc_1406A125A:                          ; CODE XREF: sub_1406A11D0+72↑j
                                        ; sub_1406A11D0+176CEF↓j
                mov     rcx, rsi
                call    sub_1402FAE8C
                xor     edx, edx
                mov     rcx, rsi
                mov     r13, rax
                call    sub_14026B9D8
                mov     edx, ebx
                xor     edi, edi
                and     dl, 82h
                mov     r14, rax
                cmp     dl, 80h
                jnz     short loc_1406A128B
                xor     edx, edx
                mov     rcx, r15
                call    sub_1402FA100
                mov     rdi, rax

loc_1406A128B:                          ; CODE XREF: sub_1406A11D0+AC↑j
                test    r12d, r12d
                jnz     short loc_1406A12FD
                mov     rcx, rsi
                call    sub_1406A1358

loc_1406A1298:                          ; CODE XREF: sub_1406A11D0+130↓j
                                        ; sub_1406A11D0+148↓j
                test    r14, r14
                jnz     loc_140817EC4

loc_1406A12A1:                          ; CODE XREF: sub_1406A11D0+176D0C↓j
                test    byte ptr [rsi+38h], 20h
                setz    cl
                test    bl, 80h
                setnz   al
                test    al, cl
                jz      short loc_1406A12F9
                mov     rbx, [rsi+78h]
                shl     rbx, 3

loc_1406A12BA:                          ; CODE XREF: sub_1406A11D0+12B↓j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402FAD30
                test    rdi, rdi
                jnz     short loc_1406A131D

loc_1406A12C9:                          ; CODE XREF: sub_1406A11D0+155↓j
                test    rbx, rbx
                jnz     short loc_1406A1327

loc_1406A12CE:                          ; CODE XREF: sub_1406A11D0+15F↓j
                xor     edx, edx
                mov     rcx, rbp
                call    ExFreePoolWithTag
                mov     rbx, [rsp+48h+arg_8]
                mov     rax, r13
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
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

loc_1406A12F9:                          ; CODE XREF: sub_1406A11D0+E0↑j
                xor     ebx, ebx
                jmp     short loc_1406A12BA
; ---------------------------------------------------------------------------

loc_1406A12FD:                          ; CODE XREF: sub_1406A11D0+BE↑j
                test    bl, 20h
                jz      short loc_1406A1298
                mov     rcx, [rsi+60h]
                xor     edx, edx
                call    sub_1402FB4E0
                mov     rcx, [rbp+40h]
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     loc_1406A1298
; ---------------------------------------------------------------------------

loc_1406A131D:                          ; CODE XREF: sub_1406A11D0+F7↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                jmp     short loc_1406A12C9
; ---------------------------------------------------------------------------

loc_1406A1327:                          ; CODE XREF: sub_1406A11D0+FC↑j
                mov     rcx, rbx
                call    sub_140319B24
                jmp     short loc_1406A12CE
sub_1406A11D0   endp

; ---------------------------------------------------------------------------
algn_1406A1331:                         ; DATA XREF: .rdata:000000014006F3B0↑o
                                        ; .pdata:00000001401021F8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406A1338   proc near               ; CODE XREF: sub_1402FAD64+68↑p
                                        ; sub_140535280+48F↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 0000000140817EE2 SIZE 00000021 BYTES

                push    rbx
                sub     rsp, 20h
                call    sub_14026B65C
                test    eax, eax
                jnz     loc_140817EE2

loc_1406A134B:                          ; CODE XREF: sub_1406A1338+176BB6↓j
                                        ; sub_1406A1338+176BC6↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406A1338   endp

algn_1406A1352:                         ; DATA XREF: .rdata:000000014006F3FC↑o
                                        ; .pdata:0000000140102204↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406A1358   proc near               ; CODE XREF: sub_1406A11D0+C3↑p
                                        ; DATA XREF: .pdata:0000000140102210↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                lea     rbx, [rcx+80h]

loc_1406A136C:                          ; CODE XREF: sub_1406A1358+3B↓j
                cmp     qword ptr [rbx+8], 0
                jz      short loc_1406A1389
                lea     rcx, [rbx+38h]
                xor     edx, edx
                call    sub_1402FB4E0
                mov     rcx, [rbx+8]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406A1389:                          ; CODE XREF: sub_1406A1358+19↑j
                mov     rax, [rbx+10h]
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1406A136C
                mov     rcx, rdi
                call    sub_1402685A8
                test    eax, eax
                jnz     short loc_1406A13AD

loc_1406A13A1:                          ; CODE XREF: sub_1406A1358+5A↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A13AD:                          ; CODE XREF: sub_1406A1358+47↑j
                call    sub_14054BCD8
                jmp     short loc_1406A13A1
sub_1406A1358   endp

; ---------------------------------------------------------------------------
byte_1406A13B4  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102210↑o

; =============== S U B R O U T I N E =======================================


sub_1406A13BC   proc near               ; CODE XREF: sub_14061D310+1FA↑p
                                        ; DATA XREF: .pdata:000000014010221C↑o

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0D8h
                mov     edi, [rcx+10h]
                xorps   xmm0, xmm0
                mov     rbp, rcx
                movups  xmmword ptr [rax-70h], xmm0
                movups  xmmword ptr [rax-60h], xmm0
                bt      edi, 18h
                jnb     short loc_1406A13F7
                mov     eax, 0C0000020h
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A13F7:                          ; CODE XREF: sub_1406A13BC+2F↑j
                mov     bl, [rcx+0C0h]
                mov     eax, 8000000h
                mov     byte ptr [rsp+118h+arg_10], bl
                test    bl, bl
                jz      short loc_1406A145F
                test    edi, 2BF7FFFFh
                jnz     short loc_1406A1455
                bt      edi, 1Ah
                jnb     short loc_1406A1455
                test    eax, edi
                jnz     short loc_1406A1455
                mov     ecx, 80080000h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406A1455
                mov     ecx, 50000000h
                mov     eax, edi
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1406A1455
                mov     eax, [rbp+1Ch]
                and     al, 7
                cmp     al, 4
                jz      short loc_1406A144C
                mov     eax, 0C0000045h
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A144C:                          ; CODE XREF: sub_1406A13BC+84↑j
                mov     eax, [rbp+20h]
                and     al, 7
                cmp     al, 4
                jz      short loc_1406A1471

loc_1406A1455:                          ; CODE XREF: sub_1406A13BC+57↑j
                                        ; sub_1406A13BC+5D↑j ...
                mov     eax, 0C000000Dh
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A145F:                          ; CODE XREF: sub_1406A13BC+4F↑j
                test    edi, edi
                jns     short loc_1406A1493
                test    eax, edi
                jnz     short loc_1406A1471
                mov     eax, 0C00000F4h
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A1471:                          ; CODE XREF: sub_1406A13BC+97↑j
                                        ; sub_1406A13BC+A9↑j
                mov     dl, [rbp+48h]
                mov     rcx, cs:qword_140D2E718
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_1406A148E
                mov     eax, 0C0000061h
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A148E:                          ; CODE XREF: sub_1406A13BC+C6↑j
                mov     eax, 8000000h

loc_1406A1493:                          ; CODE XREF: sub_1406A13BC+A5↑j
                mov     rsi, [rbp+98h]
                mov     r8d, 1
                mov     [rsp+118h+var_90], r8
                test    bl, bl
                jz      short loc_1406A14C0
                test    rsi, rsi
                jnz     loc_1406A1CFA
                mov     r12d, edi
                mov     esi, r8d
                and     r12d, eax
                jmp     short loc_1406A1505
; ---------------------------------------------------------------------------

loc_1406A14C0:                          ; CODE XREF: sub_1406A13BC+EE↑j
                test    rsi, rsi
                jz      loc_1406A1CFA
                mov     r12d, edi
                and     r12d, eax
                mov     eax, r12d
                neg     eax
                mov     rax, 0FFFFF001000h
                sbb     rcx, rcx
                and     rcx, rax
                add     rcx, 0FFFFFFFFFFFFF000h
                cmp     rsi, rcx
                jbe     short loc_1406A14FA
                mov     eax, 0C0000040h
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A14FA:                          ; CODE XREF: sub_1406A13BC+132↑j
                add     rsi, 0FFFh
                shr     rsi, 0Ch

loc_1406A1505:                          ; CODE XREF: sub_1406A13BC+102↑j
                mov     rbx, gs:188h
                xor     r14b, r14b
                mov     r13, [rbp+0B0h]
                and     [rsp+118h+var_98], 0
                and     [rsp+118h+var_D0], 0
                mov     [rsp+118h+arg_8], r14b
                mov     [rsp+118h+var_B0], rbx
                test    r13, r13
                jz      short loc_1406A153F
                mov     r13, [r13+0]
                jmp     short loc_1406A1546
; ---------------------------------------------------------------------------

loc_1406A153F:                          ; CODE XREF: sub_1406A13BC+17B↑j
                lea     r13, unk_140C50C00

loc_1406A1546:                          ; CODE XREF: sub_1406A13BC+181↑j
                mov     [rsp+118h+var_A8], r13
                lea     r15, cs:140000000h
                test    r12d, r12d
                jz      loc_1406A16B9
                bt      edi, 13h
                jnb     short loc_1406A156B
                test    sil, 0Fh
                jnz     loc_1406A1CFA

loc_1406A156B:                          ; CODE XREF: sub_1406A13BC+1A3↑j
                test    edi, edi
                jns     short loc_1406A157C
                test    rsi, 1FFh
                jnz     loc_1406A1CFA

loc_1406A157C:                          ; CODE XREF: sub_1406A13BC+1B1↑j
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, r13
                call    sub_140232160
                test    eax, eax
                jnz     short loc_1406A1598
                mov     eax, 0C000012Dh
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A1598:                          ; CODE XREF: sub_1406A13BC+1D0↑j
                test    edi, edi
                jns     loc_1406A16B3
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, r13
                call    sub_1402D4174
                test    eax, eax
                jz      loc_1406A1BE3
                mov     r9d, [rbp+0ACh]
                mov     [rsp+118h+arg_8], 1
                test    r9d, r9d
                jnz     short loc_1406A15E1
                mov     eax, [rbx+24Ch]
                mov     rax, ds:rva qword_140CFDCC0[r15+rax*8]
                mov     r9d, [rax+7F14h]
                jmp     short loc_1406A15E4
; ---------------------------------------------------------------------------

loc_1406A15E1:                          ; CODE XREF: sub_1406A13BC+20C↑j
                dec     r9d

loc_1406A15E4:                          ; CODE XREF: sub_1406A13BC+223↑j
                movzx   edx, cs:word_140CFB000
                mov     r8d, 200h
                mov     rax, cs:qword_140C4DD18
                mov     ecx, edx
                and     [rsp+118h+var_E8], 0
                imul    ecx, r9d
                lea     r14, [rax+rcx*4]
                mov     rcx, r13
                lea     rax, [rsp+118h+var_70]
                mov     [rsp+118h+var_F0], rax
                lea     r15, [r14+rdx*4]
                mov     eax, [rbp+20h]
                mov     rdx, rsi
                mov     dword ptr [rsp+118h+var_F8], eax
                call    sub_14055DC5C
                mov     rbx, rax
                cmp     rax, rsi
                jz      short loc_1406A167C

loc_1406A1632:                          ; CODE XREF: sub_1406A13BC+2B5↓j
                add     r14, 4
                cmp     r14, r15
                jz      short loc_1406A1673
                and     [rsp+118h+var_E8], 0
                lea     rax, [rsp+118h+var_70]
                mov     r9d, [r14]
                mov     rdx, rsi
                mov     [rsp+118h+var_F0], rax
                sub     rdx, rbx
                mov     eax, [rbp+20h]
                mov     r8d, 200h
                mov     rcx, r13
                mov     dword ptr [rsp+118h+var_F8], eax
                call    sub_14055DC5C
                add     rbx, rax
                cmp     rbx, rsi
                jnz     short loc_1406A1632

loc_1406A1673:                          ; CODE XREF: sub_1406A13BC+27D↑j
                cmp     rbx, rsi
                jnz     loc_1406A1BDB

loc_1406A167C:                          ; CODE XREF: sub_1406A13BC+274↑j
                mov     rcx, [rsp+118h+var_70]
                mov     r8d, 1
                test    rcx, rcx
                jz      short loc_1406A16B9
                mov     rbp, [rsp+118h+var_D0]

loc_1406A1694:                          ; CODE XREF: sub_1406A13BC+2E6↓j
                add     rbp, r8
                call    sub_140363A00
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1406A1694
                mov     [rsp+118h+var_D0], rbp
                mov     rbp, [rsp+118h+arg_0]
                jmp     short loc_1406A16B9
; ---------------------------------------------------------------------------

loc_1406A16B3:                          ; CODE XREF: sub_1406A13BC+1DE↑j
                mov     r8d, 1

loc_1406A16B9:                          ; CODE XREF: sub_1406A13BC+199↑j
                                        ; sub_1406A13BC+2D1↑j ...
                and     [rsp+118h+arg_18], 0
                mov     eax, edi
                and     eax, 88000000h
                mov     dword ptr [rsp+118h+arg_0], eax
                cmp     eax, 8000000h
                jnz     short loc_1406A16E1
                mov     [rsp+118h+var_D8], rsi
                mov     r15, r8
                jmp     short loc_1406A170F
; ---------------------------------------------------------------------------

loc_1406A16E1:                          ; CODE XREF: sub_1406A13BC+319↑j
                mov     r14d, edi
                mov     ecx, 100000h
                sar     r14d, 1Fh
                xor     edx, edx
                and     r14d, ecx
                mov     rax, rsi
                add     r14d, ecx
                shr     r14, 3
                div     r14
                mov     [rsp+118h+var_D8], r14
                mov     r15, rax
                test    rdx, rdx
                jz      short loc_1406A170F
                add     r15, r8

loc_1406A170F:                          ; CODE XREF: sub_1406A13BC+323↑j
                                        ; sub_1406A13BC+34E↑j
                imul    rdx, r15, 58h ; 'X'
                mov     ecx, 40h ; '@'
                mov     r8d, 61436D4Dh
                sub     rdx, 0FFFFFFFFFFFFFF80h
                call    sub_140268720
                mov     [rsp+118h+var_78], rax
                mov     rbx, rax
                test    rax, rax
                jz      loc_1406A1BDB
                mov     edx, 50h ; 'P'
                mov     ecx, 100h
                mov     r8d, 6765534Dh
                call    sub_140268720
                mov     [rsp+118h+var_A0], rax
                mov     r14, rax
                test    rax, rax
                jz      loc_1406A1B61
                and     qword ptr [rax+48h], 0
                mov     eax, 3FFh
                movzx   edx, word ptr [r13+0]
                xor     dx, [rbx+3Ch]
                and     dx, ax
                mov     [rbx+60h], r15d
                xor     [rbx+3Ch], dx
                lea     rax, [rbx+8]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     eax, 1
                mov     ecx, [rbx+38h]
                mov     [rbx+70h], rax
                mov     [rbx+18h], rax
                mov     [rbx+30h], rax
                mov     [rbx], r14
                bt      edi, 15h
                jnb     short loc_1406A17AD
                or      ecx, 40h
                mov     [rbx+38h], ecx

loc_1406A17AD:                          ; CODE XREF: sub_1406A13BC+3E9↑j
                mov     eax, 1000h
                bt      edi, 1Ah
                jnb     short loc_1406A17BD
                or      ecx, eax
                mov     [rbx+38h], ecx

loc_1406A17BD:                          ; CODE XREF: sub_1406A13BC+3FA↑j
                test    r12d, r12d
                jz      short loc_1406A17C9
                bts     ecx, 0Dh
                mov     [rbx+38h], ecx

loc_1406A17C9:                          ; CODE XREF: sub_1406A13BC+404↑j
                bt      edi, 13h
                jnb     short loc_1406A17D6
                bts     ecx, 1Fh
                mov     [rbx+38h], ecx

loc_1406A17D6:                          ; CODE XREF: sub_1406A13BC+411↑j
                mov     eax, [rbp+0ACh]
                xor     edx, edx
                and     qword ptr [rbx+68h], 0
                shl     eax, 14h
                xor     eax, ecx
                and     eax, 3F00000h
                lea     r8d, [rdx+48h]
                xor     eax, ecx
                mov     rcx, r14
                mov     [rbx+38h], eax
                call    memset
                mov     r8d, 10000000h
                mov     r9d, 40000000h
                test    r8d, edi
                jz      short loc_1406A1816
                mov     eax, 8000h
                jmp     short loc_1406A1820
; ---------------------------------------------------------------------------

loc_1406A1816:                          ; CODE XREF: sub_1406A13BC+451↑j
                test    r9d, edi
                jz      short loc_1406A1825
                mov     eax, 4000h

loc_1406A1820:                          ; CODE XREF: sub_1406A13BC+458↑j
                or      [r14+0Ch], ax

loc_1406A1825:                          ; CODE XREF: sub_1406A13BC+45D↑j
                mov     al, [rbp+20h]
                add     al, al
                xor     al, [r14+0Eh]
                and     al, 3Eh
                xor     [r14+0Eh], al
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     eax, [rcx+440h]
                mov     ecx, 3FFh
                mov     [r14+30h], eax
                mov     rax, rsi
                shl     rax, 0Ch
                mov     [r14+18h], rax
                mov     rax, rsi
                shr     rax, 20h
                xor     ax, [r14+0Ch]
                and     ax, cx
                mov     [r14], rbx
                xor     [r14+0Ch], ax
                cmp     byte ptr [rsp+118h+arg_10], 0
                mov     [r14+8], esi
                jz      short loc_1406A18E8
                mov     eax, [rbp+10h]
                mov     edx, 1
                test    eax, eax
                jns     short loc_1406A1894
                lea     ecx, [rdx+1]
                jmp     short loc_1406A18A0
; ---------------------------------------------------------------------------

loc_1406A1894:                          ; CODE XREF: sub_1406A13BC+4D1↑j
                bt      eax, 13h
                mov     ecx, 0
                cmovb   ecx, edx

loc_1406A18A0:                          ; CODE XREF: sub_1406A13BC+4D6↑j
                test    r8d, eax
                jz      short loc_1406A18AA
                or      ecx, 10h
                jmp     short loc_1406A18B2
; ---------------------------------------------------------------------------

loc_1406A18AA:                          ; CODE XREF: sub_1406A13BC+4E7↑j
                test    r9d, eax
                jz      short loc_1406A18B2
                or      ecx, 8

loc_1406A18B2:                          ; CODE XREF: sub_1406A13BC+4EC↑j
                                        ; sub_1406A13BC+4F1↑j
                mov     eax, [rbp+0C4h]
                mov     r8d, ecx
                mov     r9b, [rbp+48h]
                or      r8d, 4
                and     al, dl
                lea     rax, [rsp+118h+var_98]
                cmovz   r8d, ecx
                mov     [rsp+118h+var_F8], rax
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1408D6260
                test    eax, eax
                js      loc_1406A1B61

loc_1406A18E8:                          ; CODE XREF: sub_1406A13BC+4C5↑j
                lea     rax, [rbx+80h]
                mov     [rsp+118h+arg_10], rsi
                xor     r11d, r11d
                mov     [rsp+118h+var_C0], rax
                xor     r10d, r10d
                mov     [rsp+118h+var_C8], r11
                mov     [rsp+118h+var_B8], r10
                mov     rdx, rax
                mov     r9, rax
                test    r15, r15
                jz      loc_1406A1A2D

loc_1406A191B:                          ; CODE XREF: sub_1406A13BC+66B↓j
                mov     rax, [rdx+50h]
                mov     r9, rdx
                mov     r8, [rsp+118h+var_D8]
                and     rax, 0FFFFFFFFFFFFFFF9h
                or      rax, 1
                mov     [rdx], rbx
                mov     [rdx+50h], rax
                mov     rax, [rsp+118h+arg_10]
                movzx   ecx, word ptr [rbp+20h]
                cmp     rax, r8
                mov     [rsp+118h+var_80], rdx
                cmovbe  r8, rax
                mov     [rdx+24h], r11d
                movzx   eax, word ptr [rdx+20h]
                add     cx, cx
                and     ax, word ptr [rsp+118h+var_90]
                sub     [rsp+118h+arg_10], r8
                or      cx, ax
                and     cx, 3Fh
                mov     [rdx+2Ch], r8d
                mov     rax, r11
                shr     rax, 20h
                shl     ax, 6
                or      cx, ax
                mov     rax, r8
                shl     rax, 3
                mov     [rdx+20h], cx
                mov     [rsp+118h+var_88], rax
                test    r12d, r12d
                jz      short loc_1406A1A04
                mov     r8d, 74536D4Dh
                mov     rdx, rax
                mov     ecx, 112h
                call    sub_140268720
                mov     [rsp+118h+arg_18], rax
                test    rax, rax
                jz      loc_1406A1B61
                test    edi, edi
                jns     short loc_1406A19E5
                mov     rdx, [rsp+118h+var_88]
                mov     rcx, rax
                call    MmObtainChargesToLockPagedPool
                test    eax, eax
                jz      loc_1406A1B52
                mov     rax, [rsp+118h+arg_18]

loc_1406A19E5:                          ; CODE XREF: sub_1406A13BC+607↑j
                mov     rdx, [rsp+118h+var_C0]
                mov     r9, [rsp+118h+var_80]
                mov     r10, [rsp+118h+var_B8]
                mov     r11, [rsp+118h+var_C8]
                mov     r8d, [rdx+2Ch]
                mov     [rdx+8], rax

loc_1406A1A04:                          ; CODE XREF: sub_1406A13BC+5DF↑j
                add     rdx, 58h ; 'X'
                mov     eax, r8d
                add     r11, rax
                mov     [rsp+118h+var_C0], rdx
                inc     r10
                mov     [rsp+118h+var_C8], r11
                mov     [r9+10h], rdx
                mov     [rsp+118h+var_B8], r10
                cmp     r10, r15
                jb      loc_1406A191B

loc_1406A1A2D:                          ; CODE XREF: sub_1406A13BC+559↑j
                and     qword ptr [r9+10h], 0
                mov     rax, [rsp+118h+arg_18]
                mov     [r14+40h], rax
                test    r12d, r12d
                jz      loc_1406A1CB6
                mov     rax, [rsp+118h+var_B0]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E6h], cx
                lea     r12, [r14+28h]
                xor     edx, edx
                mov     rcx, r12
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402FB68C
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [r12], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1406A1A88
                mov     rcx, r12
                call    ExfTryToWakePushLock

loc_1406A1A88:                          ; CODE XREF: sub_1406A13BC+6C2↑j
                mov     rcx, r12
                call    sub_140243660
                mov     rcx, [rsp+118h+var_B0]
                call    sub_140245770
                test    edi, edi
                jns     loc_1406A1C8C
                mov     eax, 1000h
                or      [r14+0Ch], ax
                bts     dword ptr [rbx+5Ch], 10h
                test    r15, r15
                jz      loc_1406A1CB6
                mov     r14, [rsp+118h+var_D0]
                lea     rsi, [rbx+0B0h]
                mov     ebx, 1
                lea     r13, cs:140000000h

loc_1406A1AD2:                          ; CODE XREF: sub_1406A13BC+8B6↓j
                mov     r12, [rsi-28h]
                mov     edx, [rsi-4]
                mov     rcx, r12
                shl     rdx, 3
                call    MmLockPreChargedPagedPool
                mov     eax, [rsi]
                and     eax, 3FFFFFFFh
                bts     eax, 1Eh
                mov     [rsi], eax
                test    r14, r14
                jz      short loc_1406A1B05
                sub     r14, rbx
                and     eax, 3FFFFFFFh
                bts     eax, 1Fh
                mov     [rsi], eax

loc_1406A1B05:                          ; CODE XREF: sub_1406A13BC+739↑j
                mov     ecx, [rsi-4]
                xor     eax, eax
                mov     rdi, r12
                mov     edx, ebx
                rep stosq
                lea     rcx, [rsi+8]
                call    sub_1402FB4E0
                and     [rsp+118h+arg_0], 0
                cmp     dword ptr [rsi-4], 0
                jz      loc_1406A1C6B

loc_1406A1B2E:                          ; CODE XREF: sub_1406A13BC+8A4↓j
                xor     edx, edx
                lea     eax, [rdx+1]

loc_1406A1B33:                          ; CODE XREF: sub_1406A13BC+78F↓j
                mov     rcx, [rsp+rdx*8+118h+var_70]
                test    rcx, rcx
                jnz     loc_1406A1C20
                add     rdx, rax
                cmp     rdx, 4
                jb      short loc_1406A1B33
                jmp     loc_1406A1C2D
; ---------------------------------------------------------------------------

loc_1406A1B52:                          ; CODE XREF: sub_1406A13BC+61B↑j
                mov     rcx, [rsp+118h+arg_18]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406A1B61:                          ; CODE XREF: sub_1406A13BC+39F↑j
                                        ; sub_1406A13BC+526↑j ...
                xor     ebp, ebp
                test    r15, r15
                jz      short loc_1406A1BAF
                mov     r14d, dword ptr [rsp+118h+arg_0]
                lea     rdi, [rbx+88h]

loc_1406A1B77:                          ; CODE XREF: sub_1406A13BC+7EC↓j
                mov     rcx, [rdi]
                test    rcx, rcx
                jz      short loc_1406A1BAA
                cmp     r14d, 88000000h
                jnz     short loc_1406A1B97
                mov     edx, [rdi+24h]
                shl     rdx, 3
                call    MmReturnChargesToLockPagedPool
                mov     rcx, [rdi]

loc_1406A1B97:                          ; CODE XREF: sub_1406A13BC+7CA↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                add     rdi, 58h ; 'X'
                inc     rbp
                cmp     rbp, r15
                jb      short loc_1406A1B77

loc_1406A1BAA:                          ; CODE XREF: sub_1406A13BC+7C1↑j
                mov     r14, [rsp+118h+var_A0]

loc_1406A1BAF:                          ; CODE XREF: sub_1406A13BC+7AA↑j
                cmp     [rsp+118h+var_98], 0
                jz      short loc_1406A1BC2
                mov     rcx, rbx
                call    sub_14054BCD8

loc_1406A1BC2:                          ; CODE XREF: sub_1406A13BC+7FC↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                test    r14, r14
                jz      short loc_1406A1BDB
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_1406A1BDB:                          ; CODE XREF: sub_1406A13BC+2BA↑j
                                        ; sub_1406A13BC+379↑j ...
                mov     r14b, [rsp+118h+arg_8]

loc_1406A1BE3:                          ; CODE XREF: sub_1406A13BC+1F4↑j
                test    r12d, r12d
                jz      short loc_1406A1C16
                xor     r8d, r8d
                lea     rdx, [rsp+118h+var_70]
                mov     rcx, r13
                call    sub_1402FFFC8
                test    r14b, r14b
                jz      short loc_1406A1C0B
                mov     rdx, rsi
                mov     rcx, r13
                call    sub_140207B8C

loc_1406A1C0B:                          ; CODE XREF: sub_1406A13BC+842↑j
                mov     rdx, rsi
                mov     rcx, r13
                call    sub_14026B700

loc_1406A1C16:                          ; CODE XREF: sub_1406A13BC+82A↑j
                mov     eax, 0C000009Ah
                jmp     loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A1C20:                          ; CODE XREF: sub_1406A13BC+782↑j
                call    sub_140363A00
                mov     [rsp+rdx*8+118h+var_70], rax

loc_1406A1C2D:                          ; CODE XREF: sub_1406A13BC+791↑j
                mov     r8d, [rbp+20h]
                mov     eax, edx
                mov     rdx, r12
                mov     rdi, ds:rva qword_14001A848[r13+rax*8]
                call    sub_1403F3ABC
                mov     rcx, [rsp+118h+arg_0]
                lea     r12, [r12+rdi*8]
                mov     eax, [rsi-4]
                add     rcx, rdi
                mov     [rsp+118h+arg_0], rcx
                cmp     rcx, rax
                jnz     loc_1406A1B2E
                mov     ebx, 1

loc_1406A1C6B:                          ; CODE XREF: sub_1406A13BC+76C↑j
                add     rsi, 58h ; 'X'
                sub     r15, rbx
                jnz     loc_1406A1AD2
                mov     rbx, [rsp+118h+var_78]
                mov     r14, [rsp+118h+var_A0]
                mov     r13, [rsp+118h+var_A8]
                jmp     short loc_1406A1CB6
; ---------------------------------------------------------------------------

loc_1406A1C8C:                          ; CODE XREF: sub_1406A13BC+6E0↑j
                lea     rdi, [rbx+80h]
                mov     r9d, 1
                mov     rcx, [rdi+8]
                mov     r8, rdi
                mov     rdx, rsi
                call    sub_1406A1D1C
                lea     rcx, [rdi+38h]
                mov     edx, 1
                call    sub_1402FB4E0

loc_1406A1CB6:                          ; CODE XREF: sub_1406A13BC+685↑j
                                        ; sub_1406A13BC+6F8↑j ...
                mov     [rbp+40h], rbx
                mov     eax, 1
                lock add [r13+550h], rax
                or      dword ptr [rbp+0], 4
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     rax, rcx
                lock cmpxchg [r14+18h], rcx
                mov     [rbp+80h], rax
                test    dword ptr cs:xmmword_140CFC480+4, 400001h
                jz      short loc_1406A1CF6
                lea     edx, [rcx+2]
                mov     rcx, rbx
                call    sub_1408C8F30

loc_1406A1CF6:                          ; CODE XREF: sub_1406A13BC+92D↑j
                xor     eax, eax
                jmp     short loc_1406A1CFF
; ---------------------------------------------------------------------------

loc_1406A1CFA:                          ; CODE XREF: sub_1406A13BC+F3↑j
                                        ; sub_1406A13BC+107↑j ...
                mov     eax, 0C00000F2h

loc_1406A1CFF:                          ; CODE XREF: sub_1406A13BC+36↑j
                                        ; sub_1406A13BC+8B↑j ...
                add     rsp, 0D8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406A13BC   endp

byte_1406A1D14  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010221C↑o

; =============== S U B R O U T I N E =======================================


sub_1406A1D1C   proc near               ; CODE XREF: sub_1402FB078+7F↑p
                                        ; sub_1406A13BC+8E7↑p ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_40          = dword ptr -40h
var_8           = byte ptr -8

; FUNCTION CHUNK AT 0000000140817F04 SIZE 00000049 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 90h
                mov     rsi, rdx
                mov     rbx, r8
                xor     edx, edx
                mov     rbp, rcx
                lea     rcx, [rax-68h]
                mov     r14d, r9d
                lea     r8d, [rdx+60h]
                call    memset
                mov     rdi, [rbx]
                mov     r10d, 1
                shl     rsi, 3
                mov     r8d, 1000h
                cmp     qword ptr [rdi+40h], 0
                jz      short loc_1406A1DB4
                mov     rcx, rbx
                mov     edx, r10d
                call    sub_1402FB65C

loc_1406A1D78:                          ; CODE XREF: sub_1406A1D1C+AE↓j
                mov     rbx, rax

loc_1406A1D7B:                          ; CODE XREF: sub_1406A1D1C+F6↓j
                cmp     rsi, r8
                jnb     short loc_1406A1DCC

loc_1406A1D80:                          ; CODE XREF: sub_1406A1D1C+EF↓j
                                        ; sub_1406A1D1C+17622C↓j
                test    rsi, rsi
                jz      short loc_1406A1D95
                shr     rsi, 3
                mov     rdi, rbp
                mov     rcx, rsi
                mov     rax, rbx
                rep stosq

loc_1406A1D95:                          ; CODE XREF: sub_1406A1D1C+67↑j
                lea     r11, [rsp+98h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406A1DB4:                          ; CODE XREF: sub_1406A1D1C+4F↑j
                xor     edx, edx
                test    [rdi+38h], r8d
                jnz     short loc_1406A1E10
                movzx   ecx, word ptr [rbx+20h]
                shr     ecx, 1
                and     ecx, 1Fh
                call    sub_14027C6A0
                jmp     short loc_1406A1D78
; ---------------------------------------------------------------------------

loc_1406A1DCC:                          ; CODE XREF: sub_1406A1D1C+62↑j
                test    r14d, r14d
                jz      loc_140817F04
                mov     rax, rbx
                test    rbx, rbx
                jz      short loc_1406A1E17

loc_1406A1DDD:                          ; CODE XREF: sub_1406A1D1C+10B↓j
                mov     r8d, edx
                mov     rcx, rbp
                xor     r8, r10
                mov     rdx, rsi
                shl     r8, 0Ah
                add     r8, 2
                or      r8, rax
                call    sub_14034CA34
                mov     rax, rsi
                and     rax, 0FFFFFFFFFFFFF000h
                add     rbp, rax
                and     esi, 0FFFh
                jmp     loc_1406A1D80
; ---------------------------------------------------------------------------

loc_1406A1E10:                          ; CODE XREF: sub_1406A1D1C+9E↑j
                xor     ebx, ebx
                jmp     loc_1406A1D7B
; ---------------------------------------------------------------------------

loc_1406A1E17:                          ; CODE XREF: sub_1406A1D1C+BF↑j
                mov     ecx, 4
                call    sub_14027C6A0
                and     rax, 0FFFFFFFFFFFFFC1Fh
                jmp     short loc_1406A1DDD
sub_1406A1D1C   endp

; ---------------------------------------------------------------------------
algn_1406A1E29:                         ; DATA XREF: .rdata:000000014006F50C↑o
                                        ; .pdata:0000000140102228↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406A1E30   proc near               ; CODE XREF: sub_140693A90+3E8↑p
                                        ; DATA XREF: .rdata:000000014006F58C↑o ...

var_78          = byte ptr -78h
var_77          = byte ptr -77h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140817F4E SIZE 00000295 BYTES

                mov     [rsp+arg_18], r9d
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], ecx
                push    rbx
                push    rbp
                push    r14
                push    r15
                sub     rsp, 78h
                mov     r10, [rdx]
                lea     r14, [rdx+80h]
                mov     rax, [r14+8]
                mov     ebp, ecx
                mov     ecx, [r14+2Ch]
                mov     r11d, r9d
                mov     rbx, rdx
                mov     [rsp+98h+var_60], r10
                lea     r15, [rax+rcx*8]
                movzx   eax, byte ptr [r10+0Eh]
                and     al, 0CFh
                or      al, 0Eh
                mov     [r10+0Eh], al
                bt      ebp, 15h
                jb      loc_140817F4E
                mov     rax, [r10+38h]

loc_1406A1E86:                          ; DATA XREF: .rdata:000000014006F58C↑o
                                        ; .rdata:000000014006F5A0↑o ...
                mov     [rsp+98h+arg_10], rsi
                mov     [rsp+98h+var_28], rdi
                mov     rdi, [rsp+98h+arg_20]
                mov     [rsp+98h+var_30], r12
                mov     [rsp+98h+var_38], r13
                mov     r13d, [r14+2Ch]
                mov     esi, [rdi+0Ch]
                shl     r13d, 0Ch
                add     r13, [r10+20h]
                mov     [rsp+98h+var_48], rax
                mov     eax, [rax+38h]
                mov     [rsp+98h+var_68], esi
                lea     edx, [rax+1]
                test    r9d, r9d
                jz      loc_1408181AF
                lea     r12, [r8+14h]
                mov     r8d, [rsp+98h+arg_28]
                mov     [rsp+98h+var_50], r12
                nop     dword ptr [rax]

loc_1406A1EE0:                          ; CODE XREF: sub_1406A1E30+321↓j
                mov     r9d, [r12-0Ch]
                test    r9d, r9d
                mov     eax, [r12-4]
                cmovz   r9d, eax
                mov     [rsp+98h+var_6C], r9d
                test    eax, eax
                jz      loc_1406A224C

loc_1406A1EFE:                          ; CODE XREF: sub_1406A1E30+421↓j
                                        ; sub_1406A1E30+17619F↓j
                mov     ecx, [r12]
                add     eax, ecx
                cmp     eax, ecx
                jb      loc_14081819B
                lea     rax, [r14+38h]
                mov     [rax], rbx
                mov     [r14+10h], rax
                mov     r14, rax
                mov     [rsp+98h+var_58], rax
                mov     eax, [r12-8]
                add     rax, [rdi]
                cmp     r13, rax
                jnz     loc_140818187
                test    r9d, r9d
                jz      loc_140818187
                lea     eax, [r9-1]
                add     eax, esi
                cmp     eax, r9d
                jbe     loc_140818173
                mov     ecx, esi
                mov     eax, r9d
                lea     rdx, [rcx-1]
                add     rdx, rax
                dec     rcx
                shr     rdx, 0Ch
                not     rcx
                shr     rcx, 0Ch
                and     ecx, edx
                mov     [r14+2Ch], ecx
                cmp     ecx, r8d
                ja      loc_14081815F
                mov     eax, ecx
                cmp     r11d, 1
                jz      loc_1406A21B9

loc_1406A1F7D:                          ; CODE XREF: sub_1406A1E30+38C↓j
                                        ; sub_1406A1E30+1761AB↓j
                mov     dword ptr [r14+20h], 0
                sub     r8d, eax
                mov     r11d, [r12]
                shr     r11d, 9
                mov     [r14+24h], r11d
                mov     edx, [rdi+8]
                mov     r10d, [r12-4]
                dec     r10d
                mov     [rsp+98h+var_70], r8d
                mov     r8d, [r12]
                lea     ecx, [rdx+r8]
                neg     edx
                add     r10d, ecx
                and     r10d, edx
                cmp     r10d, r8d
                jb      loc_14081814B
                mov     eax, r10d
                mov     [r14+8], r15
                shr     eax, 9
                sub     eax, r11d
                mov     [r14+28h], eax
                mov     eax, 1FFh
                and     r10w, ax
                shl     r10w, 4
                mov     [r14+22h], r10w
                mov     r8d, [r12+10h]
                mov     ecx, r8d
                shr     ecx, 1Dh
                mov     eax, r8d
                and     ecx, 1
                mov     edx, ecx
                or      edx, 2
                and     eax, 40000000h
                cmovz   edx, ecx
                mov     ecx, edx
                or      ecx, 4
                test    r8d, r8d
                cmovns  ecx, edx
                mov     eax, ecx
                or      eax, 8
                and     r8d, 10000000h
                cmovz   eax, ecx
                lea     rcx, qword_1400117E8
                movsx   edx, byte ptr [rax+rcx]
                test    dl, 2
                jnz     loc_1406A21AB

loc_1406A202D:                          ; CODE XREF: sub_1406A1E30+384↓j
                movzx   eax, dx
                mov     rcx, r14
                add     ax, ax
                xor     ax, [r14+20h]
                and     ax, 3Eh
                xor     [r14+20h], ax
                call    sub_1402FB65C
                mov     ecx, edx
                mov     rdi, rax
                call    sub_14027C6A0
                mov     rsi, rax
                mov     eax, [r12]
                test    eax, eax
                jz      loc_1406A225C

loc_1406A2062:                          ; CODE XREF: sub_1406A1E30+42F↓j
                mov     r10d, [r12-4]
                xor     r8b, r8b
                add     eax, r10d
                mov     [rsp+98h+var_74], r10d
                xor     cl, cl
                mov     [rsp+98h+var_64], eax
                mov     [rsp+98h+var_77], r8b
                mov     [rsp+98h+var_78], cl
                test    dl, 4
                jnz     loc_1406A218F

loc_1406A208A:                          ; CODE XREF: sub_1406A1E30+376↓j
                                        ; sub_1406A1E30+452↓j
                mov     rax, [rsp+98h+var_58]
                xor     r14d, r14d
                xor     r12d, r12d
                cmp     [rax+2Ch], r12d
                jbe     short loc_1406A2113
                mov     rbp, rax
                xchg    ax, ax

loc_1406A20A0:                          ; CODE XREF: sub_1406A1E30+2DA↓j
                cmp     r14d, r9d
                jnb     loc_1406A2212
                cmp     r8b, 1
                jz      loc_1406A2287

loc_1406A20B3:                          ; CODE XREF: sub_1406A1E30+460↓j
                cmp     cl, 1
                jz      loc_1406A2156

loc_1406A20BC:                          ; CODE XREF: sub_1406A1E30+32F↓j
                mov     rcx, r15
                call    sub_1402433C0
                cmp     r14d, [rsp+98h+var_74]
                jnb     loc_1406A2164
                inc     qword ptr [rbx+78h]
                mov     rdx, rdi
                test    eax, eax
                jnz     loc_140817FE0

loc_1406A20DE:                          ; CODE XREF: sub_1406A1E30+176200↓j
                                        ; sub_1406A1E30+17620A↓j ...
                mov     [r15], rdx

loc_1406A20E1:                          ; CODE XREF: sub_1406A1E30+34B↓j
                                        ; sub_1406A1E30+35A↓j ...
                mov     r9d, [rsp+98h+var_6C]
                add     r14d, 1000h
                movzx   ecx, [rsp+98h+var_78]
                add     r15, 8
                movzx   r8d, [rsp+98h+var_77]
                add     r13, 1000h
                inc     r12d
                cmp     r12d, [rbp+2Ch]
                jb      short loc_1406A20A0
                mov     ebp, [rsp+98h+arg_0]

loc_1406A2113:                          ; CODE XREF: sub_1406A1E30+269↑j
                mov     r12, [rsp+98h+var_50]
                mov     r11d, [rsp+98h+arg_18]
                add     r12, 28h ; '('
                mov     rdi, [rsp+98h+arg_20]
                add     r11d, 0FFFFFFFFh
                mov     [rsp+98h+arg_18], r11d
                mov     [rsp+98h+var_50], r12
                jz      loc_1406A21C7
                mov     r14, [rsp+98h+var_58]
                mov     r8d, [rsp+98h+var_70]
                mov     esi, [rsp+98h+var_68]
                jmp     loc_1406A1EE0
; ---------------------------------------------------------------------------

loc_1406A2156:                          ; CODE XREF: sub_1406A1E30+286↑j
                mov     rax, [rsp+98h+var_60]
                inc     qword ptr [rax+30h]
                jmp     loc_1406A20BC
; ---------------------------------------------------------------------------

loc_1406A2164:                          ; CODE XREF: sub_1406A1E30+299↑j
                mov     rdx, rsi
                test    eax, eax
                jnz     loc_140818052

loc_1406A216F:                          ; CODE XREF: sub_1406A1E30+176272↓j
                                        ; sub_1406A1E30+17627C↓j ...
                mov     [r15], rdx

loc_1406A2172:                          ; CODE XREF: sub_1406A1E30+176253↓j
                movzx   eax, [rsp+98h+var_78]
                or      al, [rsp+98h+var_77]
                jnz     loc_1406A20E1
                mov     rax, [rsp+98h+var_60]
                inc     qword ptr [rax+10h]
                jmp     loc_1406A20E1
; ---------------------------------------------------------------------------

loc_1406A218F:                          ; CODE XREF: sub_1406A1E30+254↑j
                and     edx, 5
                cmp     dl, 5
                jnz     loc_1406A2264
                mov     cl, 1
                mov     [rsp+98h+var_74], r10d
                mov     [rsp+98h+var_78], cl
                jmp     loc_1406A208A
; ---------------------------------------------------------------------------

loc_1406A21AB:                          ; CODE XREF: sub_1406A1E30+1F7↑j
                mov     rax, [rsp+98h+var_48]
                mov     byte ptr [rax+32h], 1
                jmp     loc_1406A202D
; ---------------------------------------------------------------------------

loc_1406A21B9:                          ; CODE XREF: sub_1406A1E30+147↑j
                cmp     ecx, r8d
                jz      loc_1406A1F7D
                jmp     loc_140817FD4
; ---------------------------------------------------------------------------

loc_1406A21C7:                          ; CODE XREF: sub_1406A1E30+30D↑j
                mov     rax, [rsp+98h+var_48]
                mov     ecx, [rsp+98h+var_70]
                mov     edx, [rsp+98h+var_64]
                mov     eax, [rax+38h]

loc_1406A21D7:                          ; CODE XREF: sub_1406A1E30+176386↓j
                cmp     edx, eax
                ja      loc_1408181BB
                mov     eax, [rdi+0Ch]
                shr     eax, 0Ch
                cmp     ecx, eax
                jnb     loc_1408181CF
                xor     eax, eax

loc_1406A21EF:                          ; CODE XREF: sub_1406A1E30+176316↓j
                                        ; sub_1406A1E30+17632A↓j ...
                mov     r12, [rsp+98h+var_30]
                mov     rdi, [rsp+98h+var_28]
                mov     rsi, [rsp+98h+arg_10]
                mov     r13, [rsp+98h+var_38]

loc_1406A2206:                          ; CODE XREF: sub_1406A1E30+176160↓j
                                        ; sub_1406A1E30+176174↓j ...
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406A2212:                          ; CODE XREF: sub_1406A1E30+273↑j
                                        ; DATA XREF: .pdata:000000014010224C↑o ...
                mov     rbx, cs:qword_14001D278
                mov     rcx, r15
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1408180C4

loc_1406A2229:                          ; CODE XREF: sub_1406A1E30+1762E6↓j
                                        ; sub_1406A1E30+1762EF↓j ...
                mov     [r15], rbx

loc_1406A222C:                          ; CODE XREF: sub_1406A1E30+1762C7↓j
                mov     eax, [rbp+34h]
                mov     rbx, [rsp+98h+arg_8]
                lea     ecx, [rax+1]
                xor     ecx, eax
                and     ecx, 3FFFFFFFh
                xor     ecx, eax
                mov     [rbp+34h], ecx
                jmp     loc_1406A20E1
; ---------------------------------------------------------------------------

loc_1406A224C:                          ; CODE XREF: sub_1406A1E30+C8↑j
                cmp     dword ptr [r12], 0
                jz      loc_1406A1EFE
                jmp     loc_140817FBD
; ---------------------------------------------------------------------------

loc_1406A225C:                          ; CODE XREF: sub_1406A1E30+22C↑j
                mov     rdi, rsi
                jmp     loc_1406A2062
; ---------------------------------------------------------------------------

loc_1406A2264:                          ; CODE XREF: sub_1406A1E30+365↑j
                or      word ptr [r14+22h], 2
                mov     r8b, 1
                or      dword ptr [rbx+38h], 20000h
                mov     eax, [r12-4]
                mov     [rsp+98h+var_74], eax
                mov     [rsp+98h+var_77], r8b
                jmp     loc_1406A208A
; ---------------------------------------------------------------------------

loc_1406A2287:                          ; CODE XREF: sub_1406A1E30+27D↑j
                mov     rax, [rsp+98h+var_60]
                inc     qword ptr [rax+10h]
                jmp     loc_1406A20B3
sub_1406A1E30   endp

; ---------------------------------------------------------------------------
byte_1406A2295  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140102258↑o

; =============== S U B R O U T I N E =======================================


sub_1406A229C   proc near               ; CODE XREF: sub_140682180+16A↑p
                                        ; sub_140682340+DB↑p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408181E4 SIZE 00000037 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                test    dword ptr [rcx+464h], 2000h
                mov     esi, r9d
                mov     r15d, r8d
                mov     r14, rdx
                mov     rdi, rcx
                jnz     loc_1408181E4

loc_1406A22CC:                          ; CODE XREF: sub_1406A229C+175F6C↓j
                mov     r13, [r14+0B8h]
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406A24D0
                mov     ecx, esi
                mov     ebx, esi
                shr     ebx, 1
                and     esi, 4
                and     ebx, 1
                and     ecx, 1
                add     ecx, ecx
                mov     rbp, rax
                or      ebx, ecx
                mov     r12d, 122h
                or      ebx, esi
                mov     eax, 0C000010Ah
                mov     esi, r12d
                test    rbp, rbp
                jz      loc_1406A240E
                test    bl, 1
                jnz     loc_1406A2497
                mov     edx, 65547350h
                mov     [rsp+68h+arg_0], rbp
                mov     rcx, rbp
                xor     esi, esi
                call    ObfReferenceObjectWithTag
                xor     r12d, r12d

loc_1406A232C:                          ; CODE XREF: sub_1406A229C+DC↓j
                cmp     rbp, r14
                jz      short loc_1406A2367
                test    bl, 4
                jnz     loc_1406A23D1
                lea     rcx, [rbp+4F8h]
                call    sub_14024C840
                test    al, al
                jz      loc_1406A245A
                or      ebx, 8

loc_1406A2351:                          ; CODE XREF: sub_1406A229C+145↓j
                                        ; sub_1406A229C+1DA↓j
                test    bl, 8
                jz      short loc_1406A2367
                inc     r12d
                xor     r8d, r8d
                mov     edx, r15d
                mov     rcx, rbp
                call    sub_1406AB230

loc_1406A2367:                          ; CODE XREF: sub_1406A229C+93↑j
                                        ; sub_1406A229C+B8↑j
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_1406A24D0
                mov     rbp, rax
                test    rax, rax
                jnz     short loc_1406A232C
                test    r12d, r12d
                jz      short loc_1406A238B
                cmp     rdi, r13
                jnz     short loc_1406A238B
                xor     ecx, ecx
                call    sub_1402B906C

loc_1406A238B:                          ; CODE XREF: sub_1406A229C+E1↑j
                                        ; sub_1406A229C+E6↑j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406A2900
                mov     r12, [rsp+68h+arg_0]

loc_1406A239A:                          ; CODE XREF: sub_1406A229C+133↓j
                mov     rbp, rax
                cmp     rax, r14
                jz      short loc_1406A23BF
                test    bl, 4
                jnz     short loc_1406A23BF
                test    dword ptr [rax+510h], 8000h
                jnz     short loc_1406A23BF
                lea     rcx, [rax+4F8h]
                call    sub_14024C380

loc_1406A23BF:                          ; CODE XREF: sub_1406A229C+104↑j
                                        ; sub_1406A229C+109↑j ...
                cmp     rbp, r12
                jz      short loc_1406A23E6
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_1406A2900
                jmp     short loc_1406A239A
; ---------------------------------------------------------------------------

loc_1406A23D1:                          ; CODE XREF: sub_1406A229C+98↑j
                mov     eax, [rbp+514h]
                shr     eax, 3
                xor     eax, ebx
                and     eax, 8
                xor     ebx, eax
                jmp     loc_1406A2351
; ---------------------------------------------------------------------------

loc_1406A23E6:                          ; CODE XREF: sub_1406A229C+126↑j
                mov     edx, 6E457350h
                mov     rcx, rbp
                call    ObfDereferenceObjectWithTag
                mov     rax, r12
                mov     edx, 65547350h
                mov     r12d, 122h

loc_1406A2401:                          ; CODE XREF: sub_1406A229C+205↓j
                mov     rcx, rax
                call    ObfDereferenceObjectWithTag
                test    bl, 2
                jnz     short loc_1406A247B

loc_1406A240E:                          ; CODE XREF: sub_1406A229C+6A↑j
                                        ; sub_1406A229C+1E6↓j ...
                cmp     rdi, r13
                jnz     short loc_1406A2445

loc_1406A2413:                          ; CODE XREF: sub_1406A229C+1B0↓j
                                        ; sub_1406A229C+1BC↓j
                cmp     esi, r12d
                jz      loc_1406A24A6
                cmp     qword ptr [rdi+578h], 0
                jnz     loc_14081820D

loc_1406A242A:                          ; CODE XREF: sub_1406A229C+216↓j
                                        ; sub_1406A229C+227↓j ...
                mov     rbx, [rsp+68h+arg_10]
                mov     eax, esi
                add     rsp, 30h
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

loc_1406A2445:                          ; CODE XREF: sub_1406A229C+175↑j
                cmp     r15d, 40010004h
                jnz     short loc_1406A2413
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140771C40
                jmp     short loc_1406A2413
; ---------------------------------------------------------------------------

loc_1406A245A:                          ; CODE XREF: sub_1406A229C+AC↑j
                lock bts dword ptr [rbp+510h], 0Fh
                setb    al
                movzx   ecx, al
                shl     ecx, 4
                xor     ecx, ebx
                and     ecx, 10h
                xor     ebx, ecx
                and     ebx, 0FFFFFFF7h
                jmp     loc_1406A2351
; ---------------------------------------------------------------------------

loc_1406A247B:                          ; CODE XREF: sub_1406A229C+170↑j
                cmp     [r14+220h], rdi
                jnz     short loc_1406A240E
                xor     r8d, r8d
                mov     edx, r15d
                mov     rcx, r14
                call    sub_1406AB230
                jmp     loc_1406A240E
; ---------------------------------------------------------------------------

loc_1406A2497:                          ; CODE XREF: sub_1406A229C+73↑j
                mov     esi, eax
                mov     edx, 6E457350h
                mov     rax, rbp
                jmp     loc_1406A2401
; ---------------------------------------------------------------------------

loc_1406A24A6:                          ; CODE XREF: sub_1406A229C+17A↑j
                                        ; sub_1406A229C+175F7A↓j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406847AC
                test    al, al
                jnz     loc_1406A242A
                cmp     esi, r12d
                mov     eax, 0C000010Ah
                cmovz   esi, eax
                jmp     loc_1406A242A
sub_1406A229C   endp

; ---------------------------------------------------------------------------
algn_1406A24C8:                         ; DATA XREF: .rdata:000000014006F7D0↑o
                                        ; .pdata:0000000140102264↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406A24D0   proc near               ; CODE XREF: sub_1406A229C+3C↑p
                                        ; sub_1406A229C+D1↑p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12, gs:188h
                lea     r14, [rcx+5E0h]
                xor     r13d, r13d
                mov     rbp, rdx
                mov     r15d, r13d
                mov     edi, r13d
                dec     word ptr [r12+1E4h]
                lea     rsi, [rcx+438h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                test    rbp, rbp
                jz      short loc_1406A25A4
                mov     rbx, [rbp+4F0h]

loc_1406A252E:                          ; CODE XREF: sub_1406A24D0+D8↓j
                                        ; sub_1406A24D0+E8↓j
                cmp     rbx, r14
                jz      short loc_1406A2550
                lea     r15, [rbx-4E8h]
                mov     edx, 6E457350h
                mov     rcx, r15
                call    ObReferenceObjectSafeWithTag
                test    al, al
                jz      short loc_1406A25B4
                mov     edi, 1

loc_1406A2550:                          ; CODE XREF: sub_1406A24D0+61↑j
                mov     eax, 11h
                lock cmpxchg [rsi], r13
                jnz     short loc_1406A25AA

loc_1406A255C:                          ; CODE XREF: sub_1406A24D0+E2↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, r12
                call    sub_14021E1F0
                test    rbp, rbp
                jz      short loc_1406A257E
                mov     edx, 6E457350h
                mov     rcx, rbp
                call    ObfDereferenceObjectWithTag

loc_1406A257E:                          ; CODE XREF: sub_1406A24D0+9F↑j
                mov     rbx, [rsp+48h+arg_8]
                neg     edi
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                sbb     rax, rax
                and     rax, r15
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406A25A4:                          ; CODE XREF: sub_1406A24D0+55↑j
                mov     rbx, [r14+8]
                jmp     short loc_1406A252E
; ---------------------------------------------------------------------------

loc_1406A25AA:                          ; CODE XREF: sub_1406A24D0+8A↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     short loc_1406A255C
; ---------------------------------------------------------------------------

loc_1406A25B4:                          ; CODE XREF: sub_1406A24D0+79↑j
                mov     rbx, [rbx+8]
                jmp     loc_1406A252E
sub_1406A24D0   endp

; ---------------------------------------------------------------------------
byte_1406A25BD  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140102270↑o

; =============== S U B R O U T I N E =======================================


sub_1406A25C4   proc near               ; CODE XREF: NtSetInformationProcess+1F46↓p
                                        ; sub_14090BA08+93↓p
                                        ; DATA XREF: ...

var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = byte ptr -80h
var_78          = dword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_58          = byte ptr -58h
var_38          = dword ptr -38h
var_8           = byte ptr -8
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014081821C SIZE 0000001A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 0B0h
                mov     rsi, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     rbp, rcx
                lea     rcx, [rax-58h]
                mov     ebx, r9d
                lea     r8d, [rdx+48h]
                call    memset
                mov     r9d, [rsp+0B8h+arg_20]
                mov     eax, r9d
                neg     eax
                mov     [rsp+0B8h+var_38], ebx
                mov     eax, 40000000h
                sbb     r10d, r10d
                and     r10d, 0FFFFFFFEh
                add     r10d, 4
                neg     r9d
                sbb     ecx, ecx
                and     ecx, eax
                add     ecx, 80000000h
                test    eax, ecx
                jnz     loc_14081821C

loc_1406A262F:                          ; CODE XREF: sub_1406A25C4+175C62↓j
                xor     eax, eax
                mov     r9, rdi
                mov     [rsp+0B8h+var_68], rax
                mov     r8, rsi
                mov     [rsp+0B8h+var_70], eax
                mov     rdx, rbp
                mov     [rsp+0B8h+var_78], ecx
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+0B8h+var_80], al
                lea     rax, [rsp+0B8h+var_58]
                mov     [rsp+0B8h+var_88], rax
                mov     [rsp+0B8h+var_90], r10d
                mov     [rsp+0B8h+var_98], 2000h
                call    sub_1406A268C

loc_1406A266B:                          ; CODE XREF: sub_1406A25C4+175C6D↓j
                lea     r11, [rsp+0B8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406A25C4   endp

byte_1406A2685  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006F81C↑o
                                        ; .pdata:000000014010227C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=40h

sub_1406A268C   proc near               ; CODE XREF: sub_1406A25C4+A2↑p
                                        ; DATA XREF: .rdata:000000014006F84C↑o ...

var_128         = qword ptr -128h
var_120         = dword ptr -120h
var_118         = qword ptr -118h
var_110         = byte ptr -110h
var_108         = dword ptr -108h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B0          = qword ptr -0B0h
var_98          = qword ptr -98h
var_74          = dword ptr -74h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_18          = qword ptr  28h
arg_20          = dword ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h
arg_38          = byte ptr  48h
arg_40          = dword ptr  50h
arg_48          = dword ptr  58h
arg_50          = qword ptr  60h

; FUNCTION CHUNK AT 0000000140818236 SIZE 000000BC BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], r9
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-48h]
                sub     rsp, 110h
                mov     rbx, r8
                mov     rdi, rcx
                mov     r8d, 80h
                lea     rcx, [rbp+40h+var_B0]
                xor     edx, edx
                call    memset
                mov     r12d, [rbp+40h+arg_40]
                lea     rax, [rbp+40h+var_C0]
                mov     r13b, [rbp+40h+arg_38]
                xor     esi, esi
                mov     r15, [rbp+40h+arg_30]
                mov     r8, rbx
                mov     r14d, [rbp+40h+arg_20]
                mov     rcx, rdi
                and     qword ptr [rsp+78h], 0
                and     [rbp+40h+var_C0], 0
                mov     [rsp+60h], rax
                lea     rax, [rbp+40h+var_B0]
                mov     [rsp+140h+var_E8], rax
                mov     rax, [rbp+40h+arg_50]
                mov     [rsp+140h+var_F0], rax
                mov     eax, [rbp+40h+arg_48]
                mov     dword ptr [rsp+140h+var_F8], eax
                mov     eax, [rbp+40h+arg_28]
                mov     [rsp+140h+var_100], r12d
                mov     byte ptr [rsp+140h+var_108], r13b
                mov     qword ptr [rsp+140h+var_110], r15
                mov     dword ptr [rsp+140h+var_118], eax
                mov     rax, [rbp+40h+arg_18]
                mov     [rsp+140h+var_D0], rsi
                mov     [rsp+140h+var_120], r14d
                mov     r9, [rax]
                mov     rax, [rbp+40h+arg_8]
                mov     rdx, [rax]
                call    sub_14063DF30
                xor     edi, edi
                mov     ebx, eax
                test    eax, eax
                js      loc_140818270
                mov     rcx, [r15+18h]
                test    rcx, rcx
                jnz     loc_140818236

loc_1406A2768:                          ; CODE XREF: sub_1406A268C+175BB3↓j
                                        ; sub_1406A268C+175BDE↓j
                cmp     byte ptr [r15+30h], 1
                jz      loc_140818281

loc_1406A2773:                          ; CODE XREF: sub_1406A268C+175C03↓j
                test    r12d, r12d
                jns     loc_1408182B1
                test    [rbp+40h+var_74], 40000000h
                mov     [rsp+140h+var_D0], rdi
                jnz     loc_14081829C

loc_1406A278E:                          ; CODE XREF: sub_1406A268C+175C20↓j
                lea     r8, [rsp+78h]
                xor     edx, edx
                lea     rcx, [rbp+40h+var_B0]
                call    sub_14063CB90
                test    eax, eax
                mov     [rbp+40h+var_60], rdi
                mov     ebx, eax
                mov     [rbp+40h+var_64], edi
                cmovns  ebx, edi

loc_1406A27AC:                          ; CODE XREF: sub_1406A268C+175C38↓j
                test    ebx, ebx
                js      loc_140818270
                mov     rcx, [rbp+40h+arg_8]
                mov     rax, [rsp+78h]
                mov     [rcx], rax
                mov     rcx, [rbp+40h+arg_18]
                mov     rax, [rbp+40h+var_98]
                mov     [rcx], rax

loc_1406A27CB:                          ; CODE XREF: sub_1406A268C+175BF0↓j
                                        ; sub_1406A268C+175C43↓j
                cmp     rsi, 2
                jnb     loc_1408182D4

loc_1406A27D5:                          ; CODE XREF: sub_1406A268C+175C51↓j
                mov     rcx, [rbp+40h+var_C0]
                test    rcx, rcx
                jnz     loc_1408182E2

loc_1406A27E2:                          ; CODE XREF: sub_1406A268C+175C61↓j
                mov     eax, ebx
                mov     rbx, [rsp+140h+arg_0]
                add     rsp, 110h
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
sub_1406A268C   endp

byte_1406A2800  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006F84C↑o
                                        ; .pdata:0000000140102288↑o

; =============== S U B R O U T I N E =======================================


sub_1406A2808   proc near               ; CODE XREF: sub_140507AB4+52↑p
                                        ; sub_1406A9550+C1↓p
                                        ; DATA XREF: ...

var_98          = byte ptr -98h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_18          = byte ptr -18h
var_8           = byte ptr -8

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 0B0h
                mov     rax, gs:188h
                mov     rbp, rdx
                mov     r14, rcx
                xor     edx, edx
                mov     r8d, 88h
                lea     rcx, [rsp+0B8h+var_98]
                xor     edi, edi
                mov     rsi, [rax+0B8h]
                call    memset
                xor     r8d, r8d
                mov     [rsp+0B8h+var_40], r14
                xor     edx, edx
                mov     [rsp+0B8h+var_38], rbp
                lea     rcx, [rsp+0B8h+var_30]
                mov     [rsp+0B8h+var_18], dil
                call    KeInitializeEvent
                xor     edx, edx

loc_1406A2877:                          ; CODE XREF: sub_1406A2808+94↓j
                mov     rcx, rsi
                call    sub_1406A2900
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1406A289E
                mov     r8, rbp
                mov     rdx, r14
                mov     rcx, rax
                call    sub_1402FCAC8
                test    eax, eax
                jnz     short loc_1406A28BF

loc_1406A2899:                          ; CODE XREF: sub_1406A2808+C6↓j
                mov     rdx, rbx
                jmp     short loc_1406A2877
; ---------------------------------------------------------------------------

loc_1406A289E:                          ; CODE XREF: sub_1406A2808+7D↑j
                lea     r11, [rsp+0B8h+var_8]
                mov     eax, edi
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A28BF:                          ; CODE XREF: sub_1406A2808+8F↑j
                lea     rdx, [rsp+0B8h+var_98]
                mov     rcx, rbx
                call    sub_1406A9968
                or      edi, eax
                jmp     short loc_1406A2899
sub_1406A2808   endp

; ---------------------------------------------------------------------------
byte_1406A28D0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140102294↑o

; =============== S U B R O U T I N E =======================================


sub_1406A28D8   proc near               ; CODE XREF: sub_1406A2A00+64↓p
                                        ; NtSetInformationProcess+C1D↓p
                                        ; DATA XREF: ...
                test    edx, edx
                jnz     short loc_1406A28ED
                lock btr dword ptr [rcx+278h], 0

loc_1406A28E5:                          ; CODE XREF: sub_1406A28D8+1E↓j
                setb    al
                movzx   eax, al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A28ED:                          ; CODE XREF: sub_1406A28D8+2↑j
                lock bts dword ptr [rcx+278h], 0
                jmp     short loc_1406A28E5
sub_1406A28D8   endp

; ---------------------------------------------------------------------------
algn_1406A28F8:                         ; DATA XREF: .pdata:00000001401022A0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406A2900   proc near               ; CODE XREF: NtSetInformationThread+81E↑p
                                        ; NtSetInformationThread+850↑p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12, gs:188h
                lea     r13, [rcx+5E0h]
                xor     ebx, ebx
                mov     rdi, rdx
                mov     r15d, ebx
                mov     r14d, ebx
                dec     word ptr [r12+1E4h]
                lea     rbp, [rcx+438h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockSharedEx
                test    rdi, rdi
                jz      loc_1406A29DB
                mov     rsi, [rdi+4E8h]

loc_1406A2961:                          ; CODE XREF: sub_1406A2900+DF↓j
                cmp     rsi, r13
                jz      short loc_1406A2984

loc_1406A2966:                          ; CODE XREF: sub_1406A2900+F1↓j
                lea     r15, [rsi-4E8h]
                mov     edx, 6E457350h
                mov     rcx, r15
                call    ObReferenceObjectSafeWithTag
                test    al, al
                jz      short loc_1406A29EB
                mov     r14d, 1

loc_1406A2984:                          ; CODE XREF: sub_1406A2900+64↑j
                                        ; sub_1406A2900+F7↓j
                mov     eax, 11h
                lock cmpxchg [rbp+0], rbx
                jnz     short loc_1406A29E1

loc_1406A2991:                          ; CODE XREF: sub_1406A2900+E9↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, r12
                call    sub_14021E1F0
                test    rdi, rdi
                jz      short loc_1406A29B3
                mov     edx, 6E457350h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag

loc_1406A29B3:                          ; CODE XREF: sub_1406A2900+A4↑j
                mov     rbp, [rsp+48h+arg_10]
                test    r14d, r14d
                mov     rsi, [rsp+48h+arg_18]
                cmovnz  rbx, r15
                mov     rax, rbx
                mov     rbx, [rsp+48h+arg_8]
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

loc_1406A29DB:                          ; CODE XREF: sub_1406A2900+54↑j
                mov     rsi, [r13+0]
                jmp     short loc_1406A2961
; ---------------------------------------------------------------------------

loc_1406A29E1:                          ; CODE XREF: sub_1406A2900+8F↑j
                mov     rcx, rbp
                call    ExfReleasePushLockShared
                jmp     short loc_1406A2991
; ---------------------------------------------------------------------------

loc_1406A29EB:                          ; CODE XREF: sub_1406A2900+7C↑j
                mov     rsi, [rsi]
                cmp     rsi, r13
                jnz     loc_1406A2966
                jmp     short loc_1406A2984
sub_1406A2900   endp

; ---------------------------------------------------------------------------
algn_1406A29F9:                         ; DATA XREF: .pdata:00000001401022AC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406A2A00   proc near               ; CODE XREF: NtSetInformationProcess+77B↓p
                                        ; DATA XREF: .pdata:00000001401022B8↑o

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
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     esi, r8d
                add     [rdx+1E4h], bx
                mov     r14, rdx
                mov     rbp, rcx
                lea     rdi, [rcx+438h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                cmp     [rbp+5F8h], esi
                jz      short loc_1406A2A69
                mov     [rbp+5F8h], esi
                lea     eax, [rbx+2]
                shr     esi, 2
                mov     rcx, rbp
                and     esi, eax
                cmp     qword ptr [rbp+580h], 0
                cmovnz  esi, eax
                mov     edx, esi
                call    sub_1406A28D8

loc_1406A2A69:                          ; CODE XREF: sub_1406A2A00+44↑j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_1406A2AA2

loc_1406A2A76:                          ; CODE XREF: sub_1406A2A00+AA↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, r14
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406A2AA2:                          ; CODE XREF: sub_1406A2A00+74↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_1406A2A76
sub_1406A2A00   endp

; ---------------------------------------------------------------------------
algn_1406A2AAC:                         ; DATA XREF: .pdata:00000001401022B8↑o
                align 20h
; Exported entry 1620. NtSetInformationProcess

; =============== S U B R O U T I N E =======================================



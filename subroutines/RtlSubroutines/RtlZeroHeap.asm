RtlZeroHeap     proc near               ; DATA XREF: .pdata:0000000140122130↑o

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_40          = dword ptr -40h
arg_0           = dword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rbx, rcx
                xor     esi, esi
                mov     r14d, esi
                mov     [rsp+0C8h+var_90], rsi
                mov     [rsp+0C8h+arg_18], rcx
                mov     [rsp+0C8h+var_98], sil
                cmp     dword ptr [rcx+10h], 0DDEEDDEEh
                jnz     short loc_14091715C
                xor     eax, eax

loc_140917148:                          ; CODE XREF: RtlZeroHeap+451↓j
                add     rsp, 90h
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

loc_14091715C:                          ; CODE XREF: RtlZeroHeap+34↑j
                or      edx, [rcx+74h]
                mov     [rsp+0C8h+arg_0], esi
                mov     [rsp+0C8h+arg_10], esi

loc_14091716D:                          ; DATA XREF: .rdata:00000001400C06D0↑o
;   __try { // __finally(loc_140917584)
                test    dl, 1
                jnz     short loc_140917185
                mov     dl, 1
                mov     rcx, [rcx+160h]
                call    ExAcquireResourceExclusiveLite
                mov     [rsp+0C8h+var_98], 1

loc_140917185:                          ; CODE XREF: RtlZeroHeap+60↑j
                                        ; DATA XREF: .rdata:00000001400C06C0↑o
;     __try { // __except at loc_140917517
                lea     rax, [rbx+120h]
                mov     r13, [rax]

loc_14091718F:                          ; CODE XREF: RtlZeroHeap+3F9↓j
                cmp     r13, rax
                jz      loc_14091750E
                mov     r15, [r13+28h]
                mov     [rsp+0C8h+var_88], r15

loc_1409171A1:                          ; CODE XREF: RtlZeroHeap:loc_140917406↓j
                cmp     r15, [r13+30h]
                jnb     loc_1409174FE
                test    r14, r14
                jz      short loc_1409171CF
                cmp     [rbx+7Ch], esi
                jz      short loc_1409171FB
                mov     cl, [r14+0Ah]
                xor     cl, [r14+9]
                xor     cl, [r14+8]
                mov     [r14+0Bh], cl
                mov     eax, [rbx+88h]
                xor     [r14+8], eax

loc_1409171CF:                          ; CODE XREF: RtlZeroHeap+9E↑j
                cmp     [rbx+7Ch], esi
                jz      short loc_1409171FB
                mov     eax, [rbx+88h]
                xor     [r15+8], eax
                mov     cl, [r15+0Ah]
                xor     cl, [r15+9]
                xor     cl, [r15+8]
                cmp     [r15+0Bh], cl
                jz      short loc_1409171FB
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_140593848

loc_1409171FB:                          ; CODE XREF: RtlZeroHeap+A3↑j
                                        ; RtlZeroHeap+C2↑j ...
                mov     r14, r15
                mov     [rsp+0C8h+var_90], r15
                movzx   r8d, word ptr [r15+8]
                mov     edx, r8d
                shl     rdx, 4
                mov     cl, [r15+0Ah]
                test    cl, 1
                jnz     loc_1409174D3
                mov     rdi, r15
                mov     [rsp+0C8h+var_60], r15
                test    cl, 8
                jz      loc_14091740B
                lea     r10, [r15+10h]
                mov     r14, [r10]
                mov     r12, [r15+18h]
                mov     rax, [r12]
                mov     r9, [r14+8]
                cmp     rax, r9
                jnz     loc_1409173E4
                cmp     rax, r10
                jnz     loc_1409173E4
                sub     [rbx+0C0h], r8
                mov     rdx, [rbx+138h]
                test    rdx, rdx
                jz      short loc_1409172A0
                mov     [rsp+0C8h+var_80], rsi
                movzx   r8d, word ptr [r15+8]

loc_14091726F:                          ; CODE XREF: RtlZeroHeap+1C8↓j
                mov     ecx, [rdx+8]
                cmp     r8, rcx
                jnb     short loc_14091727C
                mov     rax, r8
                jmp     short loc_140917287
; ---------------------------------------------------------------------------

loc_14091727C:                          ; CODE XREF: RtlZeroHeap+165↑j
                mov     rax, [rdx]
                test    rax, rax
                jnz     short loc_1409172D5
                lea     eax, [rcx-1]

loc_140917287:                          ; CODE XREF: RtlZeroHeap+16A↑j
                mov     [rsp+0C8h+var_80], rax
                mov     [rsp+0C8h+var_A0], r8
                mov     dword ptr [rsp+0C8h+var_A8], eax
                mov     r9, r10
                mov     rcx, rbx
                call    sub_140594310

loc_1409172A0:                          ; CODE XREF: RtlZeroHeap+153↑j
                mov     [r12], r14
                mov     [r14+8], r12
                movzx   r12d, word ptr [r15+8]
                mov     [r15+0Ah], sil
                mov     [r15+0Fh], sil
                lea     r14, [rbx+150h]
                cmp     [rbx+138h], rsi
                jz      short loc_1409172DA
                mov     edx, r12d
                mov     rcx, rbx
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_1409172DD
; ---------------------------------------------------------------------------

loc_1409172D5:                          ; CODE XREF: RtlZeroHeap+172↑j
                mov     rdx, rax
                jmp     short loc_14091726F
; ---------------------------------------------------------------------------

loc_1409172DA:                          ; CODE XREF: RtlZeroHeap+1B3↑j
                mov     r8, [r14]

loc_1409172DD:                          ; CODE XREF: RtlZeroHeap+1C3↑j
                                        ; RtlZeroHeap+228↓j
                cmp     r14, r8
                jz      short loc_14091733A
                cmp     [rbx+7Ch], esi
                jz      short loc_140917328
                mov     ecx, [r8-8]
                mov     [rsp+0C8h+var_40], ecx
                test    [rbx+7Ch], ecx
                jz      short loc_140917306
                mov     eax, [rbx+88h]
                xor     eax, ecx
                mov     [rsp+0C8h+var_40], eax

loc_140917306:                          ; CODE XREF: RtlZeroHeap+1E5↑j
                movzx   eax, word ptr [rsp+0C8h+var_40]
                mov     r15, [rsp+0C8h+var_88]
                mov     rdi, [rsp+0C8h+var_60]
                mov     ecx, [rsp+0C8h+arg_10]
                mov     [rsp+0C8h+arg_0], ecx
                jmp     short loc_14091732D
; ---------------------------------------------------------------------------

loc_140917328:                          ; CODE XREF: RtlZeroHeap+1D5↑j
                movzx   eax, word ptr [r8-8]

loc_14091732D:                          ; CODE XREF: RtlZeroHeap+216↑j
                movzx   eax, ax
                cmp     r12, rax
                jbe     short loc_14091733A
                mov     r8, [r8]
                jmp     short loc_1409172DD
; ---------------------------------------------------------------------------

loc_14091733A:                          ; CODE XREF: RtlZeroHeap+1D0↑j
                                        ; RtlZeroHeap+223↑j
                lea     r14, [rdi+10h]
                mov     rax, [r8+8]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14091735A
                mov     [r14], r8
                mov     [r14+8], rax
                mov     [rax], r14
                mov     [r8+8], r14
                jmp     short loc_140917371
; ---------------------------------------------------------------------------

loc_14091735A:                          ; CODE XREF: RtlZeroHeap+238↑j
                mov     [rsp+0C8h+var_A0], rsi
                mov     [rsp+0C8h+var_A8], rcx
                xor     r9d, r9d
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_140917371:                          ; CODE XREF: RtlZeroHeap+248↑j
                movzx   eax, word ptr [rdi+8]
                add     [rbx+0C0h], rax
                mov     rdx, [rbx+138h]
                test    rdx, rdx
                jz      short loc_1409173C3
                mov     [rsp+0C8h+var_78], rsi
                movzx   r8d, word ptr [rdi+8]

loc_140917392:                          ; CODE XREF: RtlZeroHeap+2D2↓j
                mov     ecx, [rdx+8]
                cmp     r8, rcx
                jnb     short loc_14091739F
                mov     rax, r8
                jmp     short loc_1409173AA
; ---------------------------------------------------------------------------

loc_14091739F:                          ; CODE XREF: RtlZeroHeap+288↑j
                mov     rax, [rdx]
                test    rax, rax
                jnz     short loc_1409173DF
                lea     eax, [rcx-1]

loc_1409173AA:                          ; CODE XREF: RtlZeroHeap+28D↑j
                mov     [rsp+0C8h+var_78], rax
                mov     [rsp+0C8h+var_A0], r8
                mov     dword ptr [rsp+0C8h+var_A8], eax
                mov     r9, r14
                mov     rcx, rbx
                call    sub_140594040

loc_1409173C3:                          ; CODE XREF: RtlZeroHeap+276↑j
                cmp     [rbx+7Ch], esi
                jz      short loc_1409173FE
                mov     cl, [rdi+0Ah]
                xor     cl, [rdi+9]
                xor     cl, [rdi+8]
                mov     [rdi+0Bh], cl
                mov     eax, [rbx+88h]
                xor     [rdi+8], eax
                jmp     short loc_1409173FE
; ---------------------------------------------------------------------------

loc_1409173DF:                          ; CODE XREF: RtlZeroHeap+295↑j
                mov     rdx, rax
                jmp     short loc_140917392
; ---------------------------------------------------------------------------

loc_1409173E4:                          ; CODE XREF: RtlZeroHeap+133↑j
                                        ; RtlZeroHeap+13C↑j
                mov     [rsp+0C8h+var_A0], rsi
                mov     [rsp+0C8h+var_A8], rax
                mov     r8, r10
                mov     rdx, rbx
                mov     ecx, 0Dh
                call    sub_1405937F4

loc_1409173FE:                          ; CODE XREF: RtlZeroHeap+2B6↑j
                                        ; RtlZeroHeap+2CD↑j
                mov     r14, rsi
                mov     [rsp+0C8h+var_90], rsi

loc_140917406:                          ; CODE XREF: RtlZeroHeap+3DB↓j
                jmp     loc_1409171A1
; ---------------------------------------------------------------------------

loc_14091740B:                          ; CODE XREF: RtlZeroHeap+117↑j
                add     rdx, 0FFFFFFFFFFFFFFE0h
                lea     r8, [r15+20h]
                test    byte ptr [rbx+70h], 40h
                setnz   al
                shr     cl, 2
                and     al, cl
                test    al, 1
                jz      short loc_140917486
                mov     [rsp+0C8h+var_70], rdx
                mov     [rsp+0C8h+var_58], r8
                shr     rdx, 2
                mov     [rsp+0C8h+var_70], rdx
                test    rdx, rdx
                jz      loc_1409174D3
                test    r8b, 4
                jz      short loc_140917460
                mov     dword ptr [r8], 0FEEEFEEEh
                sub     rdx, 1
                mov     [rsp+0C8h+var_70], rdx
                jz      short loc_1409174D3
                add     r8, 4
                mov     [rsp+0C8h+var_58], r8

loc_140917460:                          ; CODE XREF: RtlZeroHeap+333↑j
                mov     rcx, rdx
                shr     rcx, 1
                mov     rax, 0FEEEFEEEFEEEFEEEh
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jz      short loc_1409174D3
                mov     dword ptr [r8+rdx*4-4], 0FEEEFEEEh
                jmp     short loc_1409174D3
; ---------------------------------------------------------------------------

loc_140917486:                          ; CODE XREF: RtlZeroHeap+311↑j
                mov     [rsp+0C8h+var_68], rdx
                mov     [rsp+0C8h+var_50], r8
                shr     rdx, 2
                mov     [rsp+0C8h+var_68], rdx
                test    rdx, rdx
                jz      short loc_1409174D3
                test    r8b, 4
                jz      short loc_1409174BB
                mov     [r8], esi
                sub     rdx, 1
                mov     [rsp+0C8h+var_68], rdx
                jz      short loc_1409174D3
                add     r8, 4
                mov     [rsp+0C8h+var_50], r8

loc_1409174BB:                          ; CODE XREF: RtlZeroHeap+392↑j
                mov     rcx, rdx
                shr     rcx, 1
                mov     rdi, r8
                xor     eax, eax
                rep stosq
                test    dl, 1
                jz      short loc_1409174D3
                mov     [r8+rdx*4-4], esi

loc_1409174D3:                          ; CODE XREF: RtlZeroHeap+106↑j
                                        ; RtlZeroHeap+329↑j ...
                cmp     byte ptr [r15+0Fh], 3
                jnz     short loc_1409174F0
                lea     rcx, [r15+10h]
                lea     r15, [rcx+30h]
                add     r15, [rcx+28h]

loc_1409174E6:                          ; CODE XREF: RtlZeroHeap+3EC↓j
                mov     [rsp+0C8h+var_88], r15
                jmp     loc_140917406
; ---------------------------------------------------------------------------

loc_1409174F0:                          ; CODE XREF: RtlZeroHeap+3C8↑j
                movzx   eax, word ptr [r15+8]
                shl     rax, 4
                add     r15, rax
                jmp     short loc_1409174E6
; ---------------------------------------------------------------------------

loc_1409174FE:                          ; CODE XREF: RtlZeroHeap+95↑j
                mov     r13, [r13+0]
                lea     rax, [rbx+120h]
                jmp     loc_14091718F
; ---------------------------------------------------------------------------

loc_14091750E:                          ; CODE XREF: RtlZeroHeap+82↑j
                mov     edi, [rsp+0C8h+arg_0]
                jmp     short loc_140917528
;     } // starts at 140917185
; ---------------------------------------------------------------------------

loc_140917517:                          ; DATA XREF: .rdata:00000001400C06C0↑o
;   __except(loc_140917566) // owned by 140917185
                mov     edi, eax
                xor     esi, esi
                mov     r14, [rsp+0C8h+var_90]
                mov     rbx, [rsp+0C8h+arg_18]
;   } // starts at 14091716D

loc_140917528:                          ; CODE XREF: RtlZeroHeap+405↑j
                                        ; DATA XREF: .rdata:00000001400C06D0↑o
                test    r14, r14
                jz      short loc_14091754C
                cmp     [rbx+7Ch], esi
                jz      short loc_14091754C
                mov     dl, [r14+0Ah]
                xor     dl, [r14+9]
                xor     dl, [r14+8]
                mov     [r14+0Bh], dl
                mov     edx, [rbx+88h]
                xor     [r14+8], edx

loc_14091754C:                          ; CODE XREF: RtlZeroHeap+41B↑j
                                        ; RtlZeroHeap+420↑j
                cmp     [rsp+0C8h+var_98], sil
                jz      short loc_14091755F
                mov     rcx, [rbx+160h]
                call    ExReleaseResourceLite

loc_14091755F:                          ; CODE XREF: RtlZeroHeap+441↑j
                mov     eax, edi
                jmp     loc_140917148
; } // starts at 140917110
; ---------------------------------------------------------------------------

loc_140917566:                          ; DATA XREF: .rdata:00000001400C06C0↑o
                                        ; .pdata:0000000140122130↑o ...
;   __except filter // owned by 140917185
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                mov     rdx, rcx
                mov     rax, [rcx]
                mov     ecx, [rax]
                call    sub_1405936DC
                nop
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140917584:                          ; DATA XREF: .rdata:00000001400C06D0↑o
                                        ; .pdata:000000014012213C↑o ...
;   __finally // owned by 14091716D
                push    rbp
                push    rdi
                sub     rsp, 38h
                mov     rbp, rdx
                mov     rdx, [rbp+38h]
                test    rdx, rdx
                jz      short loc_1409175B9
                mov     rdi, [rbp+0E8h]
                cmp     dword ptr [rdi+7Ch], 0
                jz      short loc_1409175B9
                mov     cl, [rdx+0Ah]
                xor     cl, [rdx+9]
                xor     cl, [rdx+8]
                mov     [rdx+0Bh], cl
                mov     eax, [rdi+88h]
                xor     [rdx+8], eax

loc_1409175B9:                          ; CODE XREF: RtlZeroHeap+485↑j
                                        ; RtlZeroHeap+492↑j
                cmp     byte ptr [rbp+30h], 0
                jz      short loc_1409175D3
                mov     rcx, [rbp+0E8h]
                mov     rcx, [rcx+160h]
                call    ExReleaseResourceLite
                nop

loc_1409175D3:                          ; CODE XREF: RtlZeroHeap+4AD↑j
                add     rsp, 38h
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlZeroHeap     endp

byte_1409175DB  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140122148↑o

; =============== S U B R O U T I N E =======================================


sub_1409175E4   proc near               ; CODE XREF: RtlDestroyHeap+D7A71↑p
                                        ; DATA XREF: .pdata:0000000140122154↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 30h
                mov     eax, [rcx+14h]
                mov     rbx, rcx
                test    al, 1
                jnz     short loc_140917658
                lea     r8, [rcx+18h]
                mov     rax, [r8]
                mov     rcx, [r8+8]
                mov     r9, [rax+8]
                mov     rdx, [rcx]
                cmp     rdx, r9
                jnz     short loc_140917619
                cmp     rdx, r8
                jnz     short loc_140917619
                mov     [rcx], rax
                mov     [rax+8], rcx
                jmp     short loc_14091762E
; ---------------------------------------------------------------------------

loc_140917619:                          ; CODE XREF: sub_1409175E4+25↑j
                                        ; sub_1409175E4+2A↑j
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rdx
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14091762E:                          ; CODE XREF: sub_1409175E4+33↑j
                mov     rax, [rbx+30h]
                lea     r8, [rsp+38h+arg_0]
                and     [rsp+38h+arg_0], 0
                lea     rdx, [rsp+38h+arg_8]
                mov     r9d, 8000h
                mov     [rsp+38h+arg_8], rax
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwFreeVirtualMemory
                jmp     short loc_14091765A
; ---------------------------------------------------------------------------

loc_140917658:                          ; CODE XREF: sub_1409175E4+E↑j
                xor     eax, eax

loc_14091765A:                          ; CODE XREF: sub_1409175E4+72↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409175E4   endp

algn_140917661:                         ; DATA XREF: .pdata:0000000140122154↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140917668   proc near               ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102BA5↑p
                                        ; DATA XREF: .pdata:0000000140122160↑o

var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = dword ptr -30h
var_2C          = qword ptr -2Ch
var_24          = dword ptr -24h
var_20          = word ptr -20h
var_1E          = dword ptr -1Eh
var_1A          = word ptr -1Ah
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_8           = qword ptr -8
arg_8           = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rdi
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_8], rax
                and     [rbp+57h+var_B0], 0
                lea     r9, [rbp+57h+var_B0]
                and     [rbp+57h+var_A8], 0
                xor     eax, eax
                and     [rbp+57h+var_94], 0
                xorps   xmm1, xmm1
                and     [rbp+57h+var_7C], 0
                mov     rdi, rcx
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_48], rax
                lea     edx, [rax+28h]
                mov     r8d, 200h
                or      rcx, 0FFFFFFFFFFFFFFFFh
                movups  [rbp+57h+var_40], xmm0
                movups  [rbp+57h+var_68], xmm1
                movups  [rbp+57h+var_58], xmm1
                call    NtOpenProcessTokenEx
                test    eax, eax
                js      loc_1409177D4
                and     dword ptr [rbp+57h+var_A0+4], 0
                lea     r8, [rbp+57h+var_30]
                and     [rsp+0E0h+var_B8], 0
                mov     r9d, 10h
                mov     rcx, [rbp+57h+var_B0]
                xor     edx, edx
                and     [rsp+0E0h+var_C0], 0
                mov     dword ptr [rbp+57h+var_A0], 9
                mov     rax, [rbp+57h+var_A0]
                mov     [rbp+57h+var_2C], rax
                mov     [rbp+57h+var_30], 1
                mov     [rbp+57h+var_24], 2
                call    NtAdjustPrivilegesToken
                test    eax, eax
                js      loc_1409177CB
                and     [rbp+57h+var_90], 0
                lea     r9, [rbp+57h+var_40]
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+0E0h+var_B8], 21h ; '!'
                lea     r8, [rbp+57h+var_98]
                mov     [rbp+57h+var_98], 30h ; '0'
                mov     edx, 180000h
                mov     [rbp+57h+var_80], 240h
                lea     rcx, [rbp+57h+var_A8]
                mov     [rbp+57h+var_88], rdi
                movdqu  [rbp+57h+var_78], xmm0
                mov     dword ptr [rsp+0E0h+var_C0], 7
                call    NtOpenFile
                test    eax, eax
                js      short loc_1409177CB
                mov     edx, 1
                lea     rcx, [rbp+57h+var_68]
                call    RtlCreateSecurityDescriptor
                mov     eax, cs:dword_14002DF08
                lea     rdx, [rbp+57h+var_20]
                mov     [rbp+57h+var_1E], eax
                lea     rcx, [rbp+57h+var_68]
                movzx   eax, cs:word_14002DF0C
                xor     r8d, r8d
                mov     [rbp+57h+var_1A], ax
                mov     [rbp+57h+var_20], 201h
                mov     [rbp+57h+var_18], 20h ; ' '
                mov     [rbp+57h+var_14], 220h
                call    RtlSetOwnerSecurityDescriptor
                mov     rcx, [rbp+57h+var_A8]
                test    eax, eax
                js      short loc_1409177C6
                lea     r8, [rbp+57h+var_68]
                mov     edx, 1
                call    NtSetSecurityObject
                mov     rcx, [rbp+57h+var_A8]

loc_1409177C6:                          ; CODE XREF: sub_140917668+14A↑j
                call    NtClose

loc_1409177CB:                          ; CODE XREF: sub_140917668+AF↑j
                                        ; sub_140917668+FC↑j
                mov     rcx, [rbp+57h+var_B0]
                call    NtClose

loc_1409177D4:                          ; CODE XREF: sub_140917668+65↑j
                mov     rcx, [rbp+57h+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rdi, [rsp+0E0h+arg_8]
                add     rsp, 0E0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140917668
sub_140917668   endp

algn_1409177F2:                         ; DATA XREF: .pdata:0000000140122160↑o
                align 20h
; Exported entry 2277. RtlLCIDToCultureName

; =============== S U B R O U T I N E =======================================



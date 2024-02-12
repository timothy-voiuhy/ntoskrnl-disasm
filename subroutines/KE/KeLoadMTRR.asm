KeLoadMTRR      proc near               ; CODE XREF: sub_140997074+108↑p
                                        ; sub_1409A3230+4↓p
                                        ; DATA XREF: ...

var_98          = byte ptr -98h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
var_8           = dword ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A7DE0 SIZE 00000028 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                pushfq
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_38], rax
                cmp     cs:byte_140C2B230, 0
                mov     r14, rcx
                jz      loc_14099B6E9
                call    sub_14099B9B4
                test    al, al
                jz      loc_1409A7DE0

loc_14099B5BE:                          ; CODE XREF: KeLoadMTRR+C877↓j
                cmp     cs:qword_140C2B240, 0
                jz      short loc_14099B5EC
                lea     rcx, [rsp+0B8h+var_98]
                call    sub_14099B8A8
                mov     rax, gs:20h
                mov     r8, cs:qword_140C2B240
                cmp     dword ptr [rax+24h], 0
                jz      loc_14099B71C

loc_14099B5EC:                          ; CODE XREF: KeLoadMTRR+56↑j
                                        ; KeLoadMTRR+1D3↓j ...
                cli
                mov     edi, [rsp+0B8h+var_8]
                mov     rcx, r14
                shr     edi, 9
                and     dil, 1
                call    sub_14099B754
                mov     r15, cr0
                mov     rax, r15
                btr     rax, 1Dh
                bts     rax, 1Eh
                mov     cr0, rax
                wbinvd
                mov     rsi, cr4
                mov     rbp, rsi
                and     ebp, 80h
                jnz     loc_1409A7DF8
                call    KeFlushCurrentTbImmediately

loc_14099B630:                          ; CODE XREF: KeLoadMTRR+C893↓j
                mov     rbx, cs:qword_140C2B220
                mov     ecx, 2FFh
                btr     rbx, 0Bh
                mov     rdx, rbx
                mov     rax, rbx
                shr     rdx, 20h
                wrmsr
                mov     r11, cs:qword_140C2B228
                xor     r12d, r12d
                test    r11b, r11b
                jz      short loc_14099B6A4
                xor     r9d, r9d
                mov     r10d, 201h

loc_14099B665:                          ; CODE XREF: KeLoadMTRR+132↓j
                mov     r8, cs:qword_140C2B238
                lea     ecx, [r10-1]
                add     r9, r9
                mov     rdx, [r8+r9*8]
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r8+r9*8+8]
                mov     ecx, r10d
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                inc     r12d
                movzx   eax, r11b
                mov     r9d, r12d
                add     r10d, 2
                cmp     r9, rax
                jb      short loc_14099B665

loc_14099B6A4:                          ; CODE XREF: KeLoadMTRR+EA↑j
                mov     rcx, cs:qword_140C2B240
                test    rcx, rcx
                jz      short loc_14099B6B5
                call    sub_14099B79C

loc_14099B6B5:                          ; CODE XREF: KeLoadMTRR+13E↑j
                bts     rbx, 0Bh
                mov     ecx, 2FFh
                mov     rdx, rbx
                mov     rax, rbx
                shr     rdx, 20h
                wrmsr
                wbinvd
                call    KeFlushCurrentTbImmediately
                mov     cr0, r15
                test    rbp, rbp
                jnz     short loc_14099B748

loc_14099B6DB:                          ; CODE XREF: KeLoadMTRR+1DB↓j
                mov     rcx, r14
                call    sub_14099B754
                test    dil, dil
                jz      short loc_14099B6E9
                sti

loc_14099B6E9:                          ; CODE XREF: KeLoadMTRR+3B↑j
                                        ; KeLoadMTRR+176↑j
                xor     eax, eax
                mov     rcx, [rsp+0B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14099B71C:                          ; CODE XREF: KeLoadMTRR+76↑j
                xor     edx, edx
                lea     rax, [rsp+0B8h+var_98]
                sub     r8, rax
                lea     rcx, [rsp+0B8h+var_98]

loc_14099B72B:                          ; CODE XREF: KeLoadMTRR+1D1↓j
                mov     rax, [rcx]
                cmp     [r8+rcx], rax
                jnz     loc_1409A7DEC
                inc     edx
                add     rcx, 8
                cmp     edx, 0Bh
                jb      short loc_14099B72B
                jmp     loc_14099B5EC
; ---------------------------------------------------------------------------

loc_14099B748:                          ; CODE XREF: KeLoadMTRR+169↑j
                mov     cr4, rsi
                jmp     short loc_14099B6DB
; } // starts at 14099B570
KeLoadMTRR      endp

; ---------------------------------------------------------------------------
byte_14099B74D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014009D0C4↑o
                                        ; .pdata:0000000140126924↑o

; =============== S U B R O U T I N E =======================================


sub_14099B754   proc near               ; CODE XREF: KeLoadMTRR+8E↑p
                                        ; KeLoadMTRR+16E↑p
                                        ; DATA XREF: ...
                mov     rdx, gs:20h
                mov     eax, [rcx]
                mov     r8, [rcx+10h]
                cmp     [rdx+24h], eax
                jz      short loc_14099B77E
                mov     edx, [r8]
                lock inc dword ptr [rcx+8]
                jmp     short loc_14099B773
; ---------------------------------------------------------------------------

loc_14099B771:                          ; CODE XREF: sub_14099B754+24↓j
                pause

loc_14099B773:                          ; CODE XREF: sub_14099B754+1B↑j
                mov     eax, [r8]
                cmp     eax, edx
                jz      short loc_14099B771
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14099B77C:                          ; CODE XREF: sub_14099B754+30↓j
                pause

loc_14099B77E:                          ; CODE XREF: sub_14099B754+12↑j
                mov     eax, [rcx+8]
                cmp     eax, [rcx+4]
                jnz     short loc_14099B77C
                mov     dword ptr [rcx+8], 0
                lock inc dword ptr [r8]
                retn
sub_14099B754   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14099B793  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140126930↑o

; =============== S U B R O U T I N E =======================================


sub_14099B79C   proc near               ; CODE XREF: KeLoadMTRR+140↑p
                                        ; DATA XREF: .pdata:000000014012693C↑o

; FUNCTION CHUNK AT 00000001409A7E08 SIZE 00000068 BYTES

                xor     r8d, r8d
                mov     r11b, 1
                cmp     cs:byte_140C2B231, r11b
                mov     r9, rcx
                mov     r10d, 0C0010010h
                jz      loc_1409A7E08
                mov     rax, gs:20h
                cmp     [rax+8Dh], r11b
                jz      loc_1409A7E23

loc_14099B7CE:                          ; CODE XREF: sub_14099B79C+C69C↓j
                                        ; sub_14099B79C+C6B5↓j
                mov     rdx, [r9]
                mov     ecx, 250h
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+8]
                mov     ecx, 258h
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+10h]
                mov     ecx, 259h
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+18h]
                mov     ecx, 268h
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+20h]
                mov     ecx, 269h
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+28h]
                mov     ecx, 26Ah
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+30h]
                mov     ecx, 26Bh
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+38h]
                mov     ecx, 26Ch
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+40h]
                mov     ecx, 26Dh
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+48h]
                mov     ecx, 26Eh
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                mov     rdx, [r9+50h]
                mov     ecx, 26Fh
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                cmp     cs:byte_140C2B231, r11b
                jz      loc_1409A7E56
                retn
sub_14099B79C   endp

; ---------------------------------------------------------------------------
                align 2
algn_14099B8A2:                         ; DATA XREF: .pdata:000000014012693C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14099B8A8   proc near               ; CODE XREF: KeLoadMTRR+5D↑p
                                        ; sub_140A4F1B0+101↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001409A7E72 SIZE 0000005E BYTES

                xor     r8d, r8d
                mov     r11b, 1
                cmp     cs:byte_140C2B231, r11b
                mov     r9, rcx
                mov     r10d, 0C0010010h
                jz      loc_1409A7E72
                mov     rax, gs:20h
                cmp     [rax+8Dh], r11b
                jz      loc_1409A7E88

loc_14099B8DA:                          ; CODE XREF: sub_14099B8A8+C5F5↓j
                                        ; sub_14099B8A8+C60E↓j
                mov     ecx, 250h
                rdmsr
                shl     rdx, 20h
                mov     ecx, 258h
                or      rax, rdx
                mov     [r9], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 259h
                or      rax, rdx
                mov     [r9+8], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 268h
                or      rax, rdx
                mov     [r9+10h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 269h
                or      rax, rdx
                mov     [r9+18h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 26Ah
                or      rax, rdx
                mov     [r9+20h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 26Bh
                or      rax, rdx
                mov     [r9+28h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 26Ch
                or      rax, rdx
                mov     [r9+30h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 26Dh
                or      rax, rdx
                mov     [r9+38h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 26Eh
                or      rax, rdx
                mov     [r9+40h], rax
                rdmsr
                shl     rdx, 20h
                mov     ecx, 26Fh
                or      rax, rdx
                mov     [r9+48h], rax
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r9+50h], rax
                cmp     cs:byte_140C2B231, r11b
                jz      loc_1409A7EBB
                retn
sub_14099B8A8   endp

; ---------------------------------------------------------------------------
                align 2
byte_14099B9AE  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140126948↑o

; =============== S U B R O U T I N E =======================================


sub_14099B9B4   proc near               ; CODE XREF: KeLoadMTRR+41↑p
                                        ; DATA XREF: .pdata:0000000140126954↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     rax, gs:20h
                cmp     dword ptr [rax+24h], 0
                jz      short loc_14099B9E5

loc_14099B9D2:                          ; CODE XREF: sub_14099B9B4+40↓j
                                        ; sub_14099B9B4+AE↓j
                mov     al, 1

loc_14099B9D4:                          ; CODE XREF: sub_14099B9B4+B5↓j
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14099B9E5:                          ; CODE XREF: sub_14099B9B4+1C↑j
                mov     rax, cs:qword_140C2B228
                xor     r10d, r10d
                movzx   ebx, al
                test    al, al
                jz      short loc_14099B9D2
                xor     r9d, r9d
                mov     r11d, 201h

loc_14099B9FF:                          ; CODE XREF: sub_14099B9B4+AC↓j
                lea     ecx, [r11-1]
                rdmsr
                shl     rdx, 20h
                mov     ecx, r11d
                or      rax, rdx
                mov     r8, rax
                rdmsr
                mov     rsi, cs:qword_140C2B238
                add     r9, r9
                shl     rdx, 20h
                or      rax, rdx
                mov     rdx, rax
                mov     rdi, [rsi+r9*8+8]
                shr     rdx, 0Bh
                mov     rcx, rdi
                shr     rcx, 0Bh
                and     edx, 1
                and     ecx, 1
                cmp     rdx, rcx
                jnz     short loc_14099BA67
                test    rdx, rdx
                jz      short loc_14099BA53
                cmp     r8, [rsi+r9*8]
                jnz     short loc_14099BA67
                cmp     rax, rdi
                jnz     short loc_14099BA67

loc_14099BA53:                          ; CODE XREF: sub_14099B9B4+92↑j
                inc     r10d
                add     r11d, 2
                mov     r9d, r10d
                cmp     r9, rbx
                jb      short loc_14099B9FF
                jmp     loc_14099B9D2
; ---------------------------------------------------------------------------

loc_14099BA67:                          ; CODE XREF: sub_14099B9B4+8D↑j
                                        ; sub_14099B9B4+98↑j ...
                xor     al, al
                jmp     loc_14099B9D4
sub_14099B9B4   endp

; ---------------------------------------------------------------------------
byte_14099BA6E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140126954↑o

; =============== S U B R O U T I N E =======================================


sub_14099BA74   proc near               ; CODE XREF: sub_140997250+C9↑p
                                        ; sub_1409A2998+23↓p ...

var_28          = dword ptr -28h
arg_0           = byte ptr  8

; FUNCTION CHUNK AT 00000001409A7ED2 SIZE 0000002B BYTES

                push    rbx
                sub     rsp, 20h
                mov     al, cs:byte_140C507C4
                mov     [rsp+28h+arg_0], 0
                test    al, al
                jz      short loc_14099BA96

loc_14099BA89:                          ; CODE XREF: sub_14099BA74+61↓j
                mov     al, cs:byte_140C507C5
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099BA96:                          ; CODE XREF: sub_14099BA74+13↑j
                lea     r9, [rsp+28h+arg_0]
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1403A0F60
                neg     al
                sbb     cl, cl
                and     cl, [rsp+28h+arg_0]
                mov     [rsp+28h+arg_0], cl
                cmp     cl, 2
                jnz     loc_1409A7ED2
                call    sub_1403CF4A4
                mov     bl, al

loc_14099BAC3:                          ; CODE XREF: sub_14099BA74+C46C↓j
                                        ; sub_14099BA74+C47D↓j ...
                mov     cs:byte_140C507C5, bl
                lock or [rsp+28h+var_28], 0
                mov     cs:byte_140C507C4, 1
                jmp     short loc_14099BA89
sub_14099BA74   endp

; ---------------------------------------------------------------------------
algn_14099BAD7:                         ; DATA XREF: .rdata:000000014009D164↑o
                                        ; .pdata:0000000140126960↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14099BAE0   proc near               ; CODE XREF: sub_140997074+DF↑p
                                        ; sub_1409A1940:loc_1409A1984↓p
                                        ; DATA XREF: ...

arg_0           = byte ptr  10h
arg_8           = byte ptr  18h
arg_10          = byte ptr  20h
arg_18          = byte ptr  28h

; FUNCTION CHUNK AT 00000001409A7EFE SIZE 000000D0 BYTES

                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     r9, [rbp+arg_8]
                mov     [rbp+arg_10], 0
                lea     r8, [rbp+arg_0]
                mov     [rbp+arg_0], 0
                lea     rdx, [rbp+arg_18]
                mov     [rbp+arg_18], 0
                lea     rcx, [rbp+arg_10]
                mov     [rbp+arg_8], 0
                call    sub_1403A0F60
                neg     al
                mov     r9b, 1
                sbb     cl, cl
                and     cl, [rbp+arg_8]
                cmp     cl, r9b
                jz      loc_1409A7EFE

loc_14099BB21:                          ; CODE XREF: sub_14099BAE0+C4AB↓j
                                        ; sub_14099BAE0+C4B5↓j ...
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14099BAE0   endp

algn_14099BB28:                         ; DATA XREF: .rdata:000000014009D1D8↑o
                                        ; .pdata:000000014012696C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14099BB30   proc near               ; CODE XREF: sub_140997250+DC↑p
                                        ; sub_1409A2A24+10A↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A7FCE SIZE 000000CE BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 20h
                mov     rbx, rdx
                mov     byte ptr [rax+18h], 0
                mov     rdi, rcx
                lea     r9, [rax+18h]
                xor     edx, edx
                xor     ecx, ecx
                xor     r8d, r8d
                call    sub_1403A0F60
                neg     al
                sbb     dl, dl
                and     dl, [rsp+38h+arg_10]
                mov     [rsp+38h+arg_10], dl
                cmp     dl, 1
                jz      loc_1409A7FCE

loc_14099BB77:                          ; CODE XREF: sub_14099BB30+C4A5↓j
                                        ; sub_14099BB30+C4B2↓j
                mov     rbp, cr8
                mov     r12d, 0Fh
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                or      r14, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1409A7FE7

loc_14099BB97:                          ; CODE XREF: sub_14099BB30+C4B9↓j
                                        ; sub_14099BB30+C4C2↓j ...
                mov     eax, cs:dword_140CF4D74
                mov     sil, 1
                test    eax, eax
                jnz     loc_1409A8031
                cmp     byte ptr [rdi+30h], 5
                jnz     loc_1409A802A

loc_14099BBB2:                          ; CODE XREF: sub_14099BB30+C504↓j
                mov     r8, rbx
                mov     dl, sil
                mov     rcx, rdi
                call    sub_1403A0BE8
                mov     rcx, rbx
                call    sub_1403A0BB8
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14099BBDD
                test    sil, sil
                jz      short loc_14099BBDD
                and     dword ptr [rax+70h], 0
                mov     byte ptr [rax+78h], 0

loc_14099BBDD:                          ; CODE XREF: sub_14099BB30+9E↑j
                                        ; sub_14099BB30+A3↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1409A8039

loc_14099BBEB:                          ; CODE XREF: sub_14099BB30+C50B↓j
                                        ; sub_14099BB30+C518↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                test    sil, sil
                jz      short loc_14099BC12
                mov     al, cs:byte_140C50690
                test    al, al
                jz      short loc_14099BC12
                mov     rax, cr8
                cmp     al, 2
                ja      short loc_14099BC2C
                mov     rcx, rbx
                call    sub_1403A0A9C

loc_14099BC12:                          ; CODE XREF: sub_14099BB30+C6↑j
                                        ; sub_14099BB30+D0↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14099BC2C:                          ; CODE XREF: sub_14099BB30+D8↑j
                test    rdi, rdi
                jz      short loc_14099BC12
                cmp     qword ptr [rdi+10h], 0
                jz      short loc_14099BC12
                cmp     qword ptr [rdi+18h], 0
                jz      short loc_14099BC12
                lea     rcx, [rdi+28h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeInsertQueueDpc
                jmp     short loc_14099BC12
sub_14099BB30   endp

; ---------------------------------------------------------------------------
byte_14099BC4F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009D204↑o
                                        ; .pdata:0000000140126978↑o

; =============== S U B R O U T I N E =======================================


sub_14099BC58   proc near               ; CODE XREF: sub_140997250+99↑p
                                        ; sub_140997250+C4↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A809C SIZE 00000063 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     al, cs:byte_140C12065
                mov     rbx, rdx
                mov     rbp, rcx
                test    al, al
                jz      loc_14099BD2F
                mov     rax, cs:qword_140C49D60
                mov     esi, 179h
                mov     edx, esi
                xor     r8d, r8d
                mov     rcx, rbx
                call    sub_1404079D0
                bt      rax, 8
                jb      loc_1409A809C

loc_14099BCA8:                          ; CODE XREF: sub_14099BC58+C45D↓j
                call    sub_1403A0D38
                test    al, al
                jnz     loc_1409A80BA
                mov     eax, cs:dword_140C50678
                inc     eax
                mov     cs:dword_140C50678, eax

loc_14099BCC3:                          ; CODE XREF: sub_14099BC58+C4A2↓j
                mov     al, cs:byte_140C506A8
                test    al, al
                jz      loc_14099BD5D

loc_14099BCD1:                          ; CODE XREF: sub_14099BC58+116↓j
                movzx   esi, cs:byte_140C506A8
                xor     edi, edi
                test    esi, esi
                jz      short loc_14099BD2F
                lea     r14, [rbp+54h]

loc_14099BCE2:                          ; CODE XREF: sub_14099BC58+D5↓j
                cmp     cs:byte_140C50660, 0
                jz      short loc_14099BCFB
                call    cs:PshedIsSystemWheaEnabled
                nop     dword ptr [rax+rax+00h]
                test    al, al
                jz      short loc_14099BD05

loc_14099BCFB:                          ; CODE XREF: sub_14099BC58+91↑j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1403A0E60

loc_14099BD05:                          ; CODE XREF: sub_14099BC58+A1↑j
                movzx   eax, byte ptr [rbp+2Bh]
                cmp     esi, eax
                jbe     short loc_14099BD73
                mov     r8, [rbp+54h]

loc_14099BD11:                          ; CODE XREF: sub_14099BC58+11E↓j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1403A0ED8
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1403A0EA8
                inc     edi
                add     r14, 1Ch
                cmp     edi, esi
                jb      short loc_14099BCE2

loc_14099BD2F:                          ; CODE XREF: sub_14099BC58+26↑j
                                        ; sub_14099BC58+84↑j
                mov     al, cs:byte_140C12064
                mov     rcx, cr4
                test    al, al
                jz      short loc_14099BD78
                or      rcx, 40h

loc_14099BD40:                          ; CODE XREF: sub_14099BC58+124↓j
                mov     cr4, rcx
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14099BD5D:                          ; CODE XREF: sub_14099BC58+73↑j
                mov     ecx, esi
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     cs:byte_140C506A8, al
                jmp     loc_14099BCD1
; ---------------------------------------------------------------------------

loc_14099BD73:                          ; CODE XREF: sub_14099BC58+B3↑j
                mov     r8, [r14]
                jmp     short loc_14099BD11
; ---------------------------------------------------------------------------

loc_14099BD78:                          ; CODE XREF: sub_14099BC58+E2↑j
                xor     rcx, 40h
                jmp     short loc_14099BD40
sub_14099BC58   endp

; ---------------------------------------------------------------------------
byte_14099BD7E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009D328↑o
                                        ; .pdata:0000000140126984↑o

; =============== S U B R O U T I N E =======================================


sub_14099BD84   proc near               ; CODE XREF: HalStartNextProcessor+36↑p
                                        ; HalStartDynamicProcessor+90↑p ...

var_68          = dword ptr -68h
var_58          = byte ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_8           = dword ptr -8
arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 00000001409A8100 SIZE 00000084 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+10h], edx
                pushfq
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xor     edi, edi
                mov     r13, r9
                cmp     cs:dword_140CF4D7C, edi
                mov     ebx, r8d
                mov     r12d, ecx
                mov     [rax-50h], rdi
                mov     esi, edi
                mov     [rax-58h], rdi
                mov     ebp, edi
                jnz     loc_1409A8100

loc_14099BDC5:                          ; CODE XREF: sub_14099BD84+C388↓j
                lea     rdx, [rsp+88h+arg_8]
                mov     ecx, ebx
                call    sub_1403A22A4
                mov     ecx, eax
                mov     al, cs:byte_140C4A248
                test    al, al
                jnz     loc_14099BF31
                test    bl, 2
                jnz     loc_14099BF31
                mov     cs:byte_140C4BD21, dil

loc_14099BDF4:                          ; CODE XREF: sub_14099BD84+1BD↓j
                test    ecx, ecx
                js      loc_1409A8112
                shr     ebx, 2
                and     bl, 1
                mov     cs:byte_140C4BD20, bl
                call    sub_1403A1970
                cmp     cs:byte_140C4BD21, sil
                mov     dil, al
                mov     r14, cs:qword_140C49FD8
                mov     [rsp+88h+var_48], r14
                jnz     short loc_14099BE48
                cmp     cs:byte_140C4BD20, sil
                jnz     short loc_14099BE48
                mov     r8d, r12d
                lea     rcx, [rsp+88h+var_58]
                call    sub_14099BFCC
                test    eax, eax
                js      loc_1409A8112
                lea     rbp, [rsp+88h+var_58]

loc_14099BE48:                          ; CODE XREF: sub_14099BD84+9F↑j
                                        ; sub_14099BD84+A8↑j
                mov     r9, rbp
                lea     rdx, [rsp+88h+var_50]
                mov     r8, r13
                lea     rcx, [rsp+88h+var_48]
                call    sub_1403A1570
                xor     r13d, r13d
                mov     bl, r13b
                test    dil, dil
                jnz     short loc_14099BE76
                cli
                mov     ebx, [rsp+88h+var_8]
                shr     ebx, 9
                and     bl, 1

loc_14099BE76:                          ; CODE XREF: sub_14099BD84+E2↑j
                mov     [r14+4], r13b
                call    PsGetHostSilo
                test    eax, eax
                js      short loc_14099BEEC
                test    dil, dil
                jnz     loc_1409A811C
                mov     rcx, cs:qword_140C50778
                mov     eax, 0C0000001h
                mov     r10, [rcx+80h]
                test    r10, r10
                jz      loc_1409A8159
                mov     r9d, [rsp+88h+var_50]
                mov     r8, r14
                mov     edx, [rsp+88h+arg_8]
                mov     rax, r10
                mov     rcx, [rcx+10h]
                call    sub_1404079D0

loc_14099BEC3:                          ; CODE XREF: sub_14099BD84+C3A8↓j
                test    eax, eax
                js      loc_1409A8159
                mov     dl, dil
                lea     rcx, [r14+4]
                call    sub_1403A14FC
                mov     esi, eax
                cmp     eax, 4
                jnz     loc_1409A8131

loc_14099BEE2:                          ; CODE XREF: sub_14099BD84+C3D0↓j
                                        ; sub_14099BD84+C3FB↓j
                test    dil, dil
                jnz     short loc_14099BEEC
                test    bl, bl
                jz      short loc_14099BEEC
                sti

loc_14099BEEC:                          ; CODE XREF: sub_14099BD84+FD↑j
                                        ; sub_14099BD84+161↑j ...
                cmp     cs:byte_140C4BD21, r13b
                jnz     short loc_14099BF0B
                cmp     cs:byte_140C4BD20, r13b
                jnz     short loc_14099BF0B
                test    rbp, rbp
                jz      short loc_14099BF0B
                mov     rcx, rbp
                call    sub_14099BF60

loc_14099BF0B:                          ; CODE XREF: sub_14099BD84+16F↑j
                                        ; sub_14099BD84+178↑j ...
                mov     cs:byte_140C4BD20, r13b
                mov     eax, esi

loc_14099BF14:                          ; CODE XREF: sub_14099BD84+C393↓j
                lea     r11, [rsp+88h+var_38]
                mov     rbx, [r11+40h]
                mov     rbp, [r11+50h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14099BF31:                          ; CODE XREF: sub_14099BD84+5A↑j
                                        ; sub_14099BD84+63↑j
                cmp     ecx, 0C0000708h
                mov     cs:byte_140C4BD21, 1
                cmovz   ecx, edi
                jmp     loc_14099BDF4
sub_14099BD84   endp

; ---------------------------------------------------------------------------
algn_14099BF46:                         ; DATA XREF: .rdata:000000014009D4D8↑o
                                        ; .pdata:0000000140126990↑o
                align 10h
; Exported entry 1162. KeForceEnableNx

; =============== S U B R O U T I N E =======================================



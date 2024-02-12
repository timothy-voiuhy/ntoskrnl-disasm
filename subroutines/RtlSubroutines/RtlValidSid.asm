RtlValidSid     proc near               ; CODE XREF: sub_1403C08C4+498↑p
                                        ; sub_140598224+26↑p ...
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                jbe     short loc_140622E00
                movzx   eax, byte ptr [rcx]
                and     al, 0Fh
                cmp     al, 1
                jnz     short loc_140622E00
                cmp     byte ptr [rcx+1], 0Fh
                ja      short loc_140622E00
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140622E00:                          ; CODE XREF: RtlValidSid+D↑j
                                        ; RtlValidSid+16↑j ...
                xor     al, al
                retn
RtlValidSid     endp

; ---------------------------------------------------------------------------
                align 4
algn_140622E04:                         ; DATA XREF: .pdata:00000001400FDC74↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_140622E10   proc near               ; CODE XREF: sub_1406218D0+308↑p
                                        ; sub_140623470+191↓p
                                        ; DATA XREF: ...

var_F0          = byte ptr -0F0h
var_EF          = byte ptr -0EFh
var_EE          = byte ptr -0EEh
var_EC          = dword ptr -0ECh
var_E8          = word ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = word ptr -88h
var_86          = dword ptr -86h
var_82          = word ptr -82h
var_80          = dword ptr -80h
var_58          = byte ptr -58h
var_50          = dword ptr -50h
var_38          = qword ptr -38h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = dword ptr  58h
arg_50          = qword ptr  60h
arg_58          = qword ptr  68h
arg_60          = qword ptr  70h
arg_68          = qword ptr  78h
arg_70          = qword ptr  80h
arg_78          = qword ptr  88h

; FUNCTION CHUNK AT 00000001407FF602 SIZE 000002B7 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-7]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+37h+var_38], rax
                mov     r10, [rbp+37h+arg_30]
                mov     r11, r9
                mov     rbx, [rbp+37h+arg_20]
                mov     rdi, rcx
                mov     rcx, [rbp+37h+arg_28]
                movzx   r12d, dl
                mov     rsi, [rbp+37h+arg_50]
                mov     r13, [rbp+37h+arg_58]
                mov     r14, [rbp+37h+arg_60]
                mov     r15, [rbp+37h+arg_78]
                mov     [rsp+110h+var_EF], r8b
                mov     r8, r11
                mov     [rsp+110h+var_EC], 0
                mov     eax, [rsp+110h+var_EC]
                mov     [rbp+37h+var_86], eax
                mov     [rsp+110h+var_E8], 300h
                movzx   eax, [rsp+110h+var_E8]
                mov     [rbp+37h+var_82], ax
                xor     eax, eax
                test    rcx, rcx
                mov     [rbp+37h+var_98], r9
                mov     r9, [rbp+37h+arg_70]
                cmovnz  r8, rcx
                mov     [rsp+110h+var_EE], dl
                mov     rdx, [rbp+37h+arg_68]
                test    r10, r10
                mov     [rbp+37h+var_A8], r8
                mov     r8, rbx
                cmovnz  r8, r10
                mov     [rbp+37h+var_A0], rbx
                mov     [rbp+37h+var_B0], r8
                mov     [rsp+110h+var_E0], r9
                mov     [rsp+110h+var_F0], 0
                mov     [rbp+37h+var_88], 101h
                mov     [rbp+37h+var_80], eax
                mov     [r9], al
                test    rdx, rdx
                jnz     loc_1406230ED

loc_140622EE7:                          ; CODE XREF: sub_140622E10+2DF↓j
                mov     [r15], al
                movzx   ecx, byte ptr [rdi]
                movzx   ebx, word ptr [rdi+2]
                cmp     cl, 0Ah
                jbe     loc_140622F8B
                lea     eax, [rcx-0Dh]
                cmp     al, 1
                jbe     loc_1407FF602
                mov     rcx, [rsi]
                mov     r8d, ebx
                movzx   eax, word ptr [r14+2]
                sub     rax, rcx
                add     rax, r14
                cmp     rbx, rax
                jg      loc_14062312D
                mov     rdx, rdi
                call    memmove

loc_140622F27:                          ; CODE XREF: sub_140622E10+1AC↓j
                                        ; sub_140622E10+2D8↓j ...
                cmp     byte ptr [r15], 0
                jnz     short loc_140622F46
                test    ebx, ebx
                jz      short loc_140622F46
                mov     rax, [rsi]
                and     byte ptr [rax+1], 0E0h
                test    r12b, r12b
                jnz     loc_1406230F4

loc_140622F41:                          ; CODE XREF: sub_140622E10+2EB↓j
                inc     word ptr [r14+4]

loc_140622F46:                          ; CODE XREF: sub_140622E10+11B↑j
                                        ; sub_140622E10+11F↑j ...
                cmp     ebx, 0FFFFh
                ja      loc_1407FF8B2
                cmp     byte ptr [r15], 0
                jnz     short loc_140622F5D

loc_140622F58:                          ; CODE XREF: sub_140622E10+1DC983↓j
                mov     eax, ebx
                add     [rsi], rax

loc_140622F5D:                          ; CODE XREF: sub_140622E10+146↑j
                mov     [r13+0], ebx
                mov     al, 1

loc_140622F63:                          ; CODE XREF: sub_140622E10+1DCAA4↓j
                mov     rcx, [rbp+37h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+110h+arg_8]
                add     rsp, 0E0h
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

loc_140622F8B:                          ; CODE XREF: sub_140622E10+E4↑j
                                        ; sub_140622E10+1DC7F4↓j
                mov     [rsp+110h+var_D0], rax
                mov     [rbp+37h+var_90], rax
                mov     [rsp+110h+var_B8], eax
                cmp     cl, 3
                ja      loc_140623136
                lea     rdx, [rdi+8]
                mov     r8d, 8
                mov     [rsp+110h+var_C8], rdx
                mov     [rsp+110h+var_D8], r8

loc_140622FB5:                          ; CODE XREF: sub_140622E10+36C↓j
                                        ; sub_140622E10+1DC878↓j ...
                mov     [rsp+110h+var_C0], rdi

loc_140622FBA:                          ; CODE XREF: sub_140622E10+1DC912↓j
                                        ; sub_140622E10+1DC920↓j ...
                test    ebx, ebx
                jz      loc_140622F27
                mov     eax, [rdi+4]
                lea     rcx, [rsp+110h+var_E4]
                mov     rdx, [rbp+37h+arg_38]
                mov     [rsp+110h+var_EC], eax
                mov     [rsp+110h+var_E4], eax
                call    RtlMapGenericMask
                movzx   eax, byte ptr [rdi]
                cmp     al, 0Ah
                ja      loc_1406231DD
                mov     ecx, 673h
                bt      ecx, eax
                jnb     loc_1406231DD
                mov     rax, [rbp+37h+arg_38]
                mov     eax, [rax+0Ch]

loc_140622FFB:                          ; CODE XREF: sub_140622E10+3D8↓j
                and     eax, [rsp+110h+var_E4]
                cmp     eax, [rsp+110h+var_EC]
                jz      short loc_14062300D
                mov     rcx, [rsp+110h+var_E0]
                mov     byte ptr [rcx], 1

loc_14062300D:                          ; CODE XREF: sub_140622E10+1F3↑j
                and     eax, 11FFFFFh
                mov     [rsp+110h+var_EC], eax
                jz      loc_1406231A4

loc_14062301C:                          ; CODE XREF: sub_140622E10+3A4↓j
                mov     r12, [rsp+110h+var_C8]
                lea     rdx, [rbp+37h+var_88]
                mov     rcx, r12
                call    sub_1406231FC
                test    al, al
                jnz     loc_140623100

loc_140623035:                          ; CODE XREF: sub_140622E10+3C2↓j
                                        ; sub_140622E10+1DCA05↓j
                mov     rax, [rsp+110h+var_E0]

loc_14062303A:                          ; CODE XREF: sub_140622E10+318↓j
                cmp     [rsp+110h+var_F0], 0
                jnz     loc_1407FF820

loc_140623045:                          ; CODE XREF: sub_140622E10+1DCA13↓j
                mov     rdx, [rsp+110h+var_C0]

loc_14062304A:                          ; CODE XREF: sub_140622E10+1DCA47↓j
                                        ; sub_140622E10+1DCA74↓j
                mov     r12, [rsi]
                test    r12, r12
                jz      loc_14062312D
                movzx   ecx, word ptr [r14+2]
                sub     rcx, r12
                mov     eax, ebx
                add     rcx, r14
                cmp     rax, rcx
                jg      loc_14062312D
                mov     edi, dword ptr [rsp+110h+var_D8]
                mov     rcx, r12
                mov     r8d, edi
                call    memmove
                add     r12, rdi
                mov     rdi, [rsp+110h+var_D0]
                test    rdi, rdi
                jnz     loc_1407FF889

loc_14062308C:                          ; CODE XREF: sub_140622E10+1DCA9D↓j
                mov     rdi, [rsp+110h+var_C8]
                mov     rcx, r12
                mov     rdx, rdi
                movzx   r8d, byte ptr [rdi+1]
                lea     r8, ds:8[r8*4]
                call    memmove
                movzx   eax, byte ptr [rdi+1]
                mov     rdx, [rbp+37h+var_90]
                lea     r12, [r12+rax*4]
                add     r12, 8
                test    rdx, rdx
                jnz     loc_140623181

loc_1406230C2:                          ; CODE XREF: sub_140622E10+378↓j
                                        ; sub_140622E10+38F↓j
                sub     r12d, [rsi]
                cmp     ebx, r12d
                jb      loc_1407FF8B2
                mov     rax, [rsi]
                mov     ebx, r12d
                mov     ecx, [rsp+110h+var_EC]
                movzx   r12d, [rsp+110h+var_EE]
                mov     [rax+2], bx
                mov     rax, [rsi]
                mov     [rax+4], ecx
                jmp     loc_140622F27
; ---------------------------------------------------------------------------

loc_1406230ED:                          ; CODE XREF: sub_140622E10+D1↑j
                mov     [rdx], al
                jmp     loc_140622EE7
; ---------------------------------------------------------------------------

loc_1406230F4:                          ; CODE XREF: sub_140622E10+12B↑j
                mov     rax, [rsi]
                or      byte ptr [rax+1], 10h
                jmp     loc_140622F41
; ---------------------------------------------------------------------------

loc_140623100:                          ; CODE XREF: sub_140622E10+21F↑j
                mov     eax, [r12+8]
                test    eax, eax
                jnz     loc_1406231C1
                mov     rax, [rbp+37h+var_98]

loc_140623111:                          ; CODE XREF: sub_140622E10+3E1↓j
                                        ; sub_140622E10+1DC9F9↓j ...
                mov     [rsp+110h+var_C8], rax
                movzx   eax, byte ptr [rax+1]
                lea     ebx, [rbx+rax*4]
                mov     rax, [rsp+110h+var_E0]
                add     ebx, 0FFFFFFFCh
                mov     byte ptr [rax], 1
                jmp     loc_14062303A
; ---------------------------------------------------------------------------

loc_14062312D:                          ; CODE XREF: sub_140622E10+109↑j
                                        ; sub_140622E10+240↑j ...
                mov     byte ptr [r15], 1
                jmp     loc_140622F46
; ---------------------------------------------------------------------------

loc_140623136:                          ; CODE XREF: sub_140622E10+18B↑j
                lea     eax, [rcx-9]
                test    al, 0FAh
                jnz     loc_1407FF609
                lea     rax, [rdi+8]
                mov     ecx, 8
                mov     [rsp+110h+var_D8], rcx
                mov     rcx, rax
                mov     [rsp+110h+var_C8], rax
                call    RtlLengthSid
                mov     ecx, eax
                lea     rax, [rdi+8]
                add     rcx, rax
                mov     [rbp+37h+var_90], rcx
                mov     rcx, rax
                call    RtlLengthSid
                mov     ecx, ebx
                sub     ecx, eax
                sub     ecx, 8
                mov     [rsp+110h+var_B8], ecx
                jmp     loc_140622FB5
; ---------------------------------------------------------------------------

loc_140623181:                          ; CODE XREF: sub_140622E10+2AC↑j
                movsxd  rax, [rsp+110h+var_B8]
                test    eax, eax
                jle     loc_1406230C2
                mov     r8, rax
                mov     rcx, r12
                mov     rdi, rax
                call    memmove
                add     r12, rdi
                jmp     loc_1406230C2
; ---------------------------------------------------------------------------

loc_1406231A4:                          ; CODE XREF: sub_140622E10+206↑j
                mov     rcx, [rsp+110h+var_C8]
                lea     rdx, [rbp+37h+var_88]
                call    sub_1406231FC
                test    al, al
                jnz     loc_14062301C
                xor     ebx, ebx
                jmp     loc_140622F27
; ---------------------------------------------------------------------------

loc_1406231C1:                          ; CODE XREF: sub_140622E10+2F7↑j
                sub     eax, 1
                jz      loc_1407FF80E
                sub     eax, 1
                jz      short loc_1406231ED
                cmp     eax, 1
                jnz     loc_140623035
                jmp     loc_1407FF805
; ---------------------------------------------------------------------------

loc_1406231DD:                          ; CODE XREF: sub_140622E10+1D0↑j
                                        ; sub_140622E10+1DE↑j
                mov     rax, [rbp+37h+arg_38]
                mov     eax, [rax+0Ch]
                bts     eax, 18h
                jmp     loc_140622FFB
; ---------------------------------------------------------------------------

loc_1406231ED:                          ; CODE XREF: sub_140622E10+3BD↑j
                mov     rax, [rbp+37h+var_A8]
                jmp     loc_140623111
; } // starts at 140622E10
sub_140622E10   endp

; ---------------------------------------------------------------------------
byte_1406231F6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014004EEDC↑o
                                        ; .pdata:00000001400FDC80↑o

; =============== S U B R O U T I N E =======================================


sub_1406231FC   proc near               ; CODE XREF: sub_140622E10+218↑p
                                        ; sub_140622E10+39D↑p ...

var_18          = dword ptr -18h
var_14          = word ptr -14h
var_10          = qword ptr -10h

; FUNCTION CHUNK AT 00000001407FF8BA SIZE 0000004F BYTES

; __unwind { // __GSHandlerCheck
                sub     rsp, 18h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+18h+var_10], rax
                mov     al, [rdx]
                cmp     [rcx], al
                jnz     short loc_140623245
                mov     al, [rdx+2]
                cmp     [rcx+2], al
                jnz     short loc_140623245
                mov     al, [rdx+3]
                cmp     [rcx+3], al
                jnz     short loc_140623245
                mov     al, [rdx+4]
                cmp     [rcx+4], al
                jnz     short loc_140623245
                mov     al, [rdx+5]
                cmp     [rcx+5], al
                jnz     short loc_140623245
                mov     al, [rdx+6]
                cmp     [rcx+6], al
                jnz     short loc_140623245
                mov     al, [rdx+7]
                cmp     [rcx+7], al
                jz      short loc_14062325A

loc_140623245:                          ; CODE XREF: sub_1406231FC+17↑j
                                        ; sub_1406231FC+1F↑j ...
                xor     al, al

loc_140623247:                          ; CODE XREF: sub_1406231FC+9C↓j
                mov     rcx, [rsp+18h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 18h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14062325A:                          ; CODE XREF: sub_1406231FC+47↑j
                movzx   r10d, byte ptr [rcx+1]
                cmp     r10b, [rdx+1]
                jnz     short loc_140623245
                xor     r8d, r8d
                mov     [rsp+18h+var_14], 0B00h
                mov     [rsp+18h+var_18], r8d
                test    r10b, r10b
                jz      short loc_140623296
                cmp     r10b, 0Bh
                jz      loc_1407FF8BA

loc_140623282:                          ; CODE XREF: sub_1406231FC+1DC6E3↓j
                mov     eax, 1

loc_140623287:                          ; CODE XREF: sub_1406231FC+1DC6DD↓j
                mov     r11, r10
                sub     r11, rax
                test    r11, r11
                jg      loc_1407FF8E4

loc_140623296:                          ; CODE XREF: sub_1406231FC+7A↑j
                                        ; sub_1406231FC+1DC708↓j
                mov     al, 1
                jmp     short loc_140623247
; } // starts at 1406231FC
sub_1406231FC   endp

; ---------------------------------------------------------------------------
algn_14062329A:                         ; DATA XREF: .rdata:000000014004EF00↑o
                                        ; .pdata:00000001400FDC8C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406232A0   proc near               ; CODE XREF: sub_140620D00+369↑p
                                        ; DATA XREF: .rdata:000000014004EF2C↑o ...

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = dword ptr  50h
arg_50          = dword ptr  58h
arg_58          = byte ptr  60h
arg_60          = qword ptr  68h
arg_68          = qword ptr  70h
arg_70          = qword ptr  78h

; FUNCTION CHUNK AT 00000001407FF90A SIZE 00000010 BYTES

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8b
                mov     [rax+10h], dl
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 88h
                xor     edi, edi
                lea     rbx, [rcx+8]
                mov     esi, edi
                mov     [rax-54h], edi
                mov     r14, rcx
                mov     [rax-50h], edi
                mov     ebp, edi
                mov     [rax+8], dil
                mov     rax, [rsp+0C8h+arg_70]
                mov     [rsp+0C8h+var_58], dil
                mov     [rax], sil
                cmp     di, [rcx+4]
                jnb     loc_1406233F8
                mov     r15, [rsp+0C8h+arg_68]
                mov     r12d, [rsp+0C8h+arg_48]
                mov     r13, [rsp+0C8h+arg_40]

loc_14062330A:                          ; CODE XREF: sub_1406232A0+14B↓j
                cmp     byte ptr [rbx], 11h
                mov     eax, [rsp+0C8h+arg_50]
                jz      loc_140623423
                cmp     eax, 3
                jz      loc_1406233DB

loc_140623323:                          ; CODE XREF: sub_1406232A0+199↓j
                mov     r9, [rsp+0C8h+arg_18]
                lea     rax, [rsp+0C8h+arg_0]
                movzx   r8d, [rsp+0C8h+arg_10]
                mov     rcx, rbx
                movzx   edx, [rsp+0C8h+arg_8]
                mov     [rsp+0C8h+var_60], rax
                lea     rax, [rsp+0C8h+var_50]
                mov     [rsp+0C8h+var_68], rax
                lea     rax, [rsp+0C8h+var_54]
                mov     [rsp+0C8h+var_70], r15
                mov     [rsp+0C8h+var_78], rax
                mov     rax, [rsp+0C8h+arg_38]
                mov     [rsp+0C8h+var_80], r12d
                mov     [rsp+0C8h+var_88], r13
                mov     [rsp+0C8h+var_90], rax
                mov     rax, [rsp+0C8h+arg_30]
                mov     [rsp+0C8h+var_98], rax
                mov     rax, [rsp+0C8h+arg_28]
                mov     [rsp+0C8h+var_A0], rax
                mov     rax, [rsp+0C8h+arg_20]
                mov     [rsp+0C8h+var_A8], rax
                call    sub_140623470
                cmp     eax, 0C0000023h
                jz      loc_140623441
                test    eax, eax
                js      short loc_14062340E

loc_1406233B7:                          ; CODE XREF: sub_1406232A0+1A6↓j
                cmp     [rsp+0C8h+arg_0], 0
                jnz     loc_1407FF90A

loc_1406233C5:                          ; CODE XREF: sub_1406232A0+1DC675↓j
                mov     eax, [rsp+0C8h+var_54]
                add     edi, eax
                mov     ecx, [rsp+0C8h+var_50]
                cmp     eax, esi
                ja      short loc_1406233D9
                sub     esi, eax
                cmp     esi, ecx
                ja      short loc_1406233DB

loc_1406233D9:                          ; CODE XREF: sub_1406232A0+131↑j
                mov     esi, ecx

loc_1406233DB:                          ; CODE XREF: sub_1406232A0+7D↑j
                                        ; sub_1406232A0+137↑j ...
                movzx   eax, word ptr [rbx+2]
                inc     ebp
                add     rbx, rax
                movzx   eax, word ptr [r14+4]
                cmp     ebp, eax
                jb      loc_14062330A

loc_1406233F1:                          ; CODE XREF: sub_1406232A0+19F↓j
                cmp     [rsp+0C8h+var_58], 0
                jnz     short loc_14062344B

loc_1406233F8:                          ; CODE XREF: sub_1406232A0+4C↑j
                cmp     [rsp+0C8h+arg_58], 0
                jnz     short loc_14062344B
                mov     rax, [rsp+0C8h+arg_60]
                mov     [rax], edi
                xor     eax, eax

loc_14062340E:                          ; CODE XREF: sub_1406232A0+115↑j
                                        ; sub_1406232A0+1BD↓j
                add     rsp, 88h
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
; ---------------------------------------------------------------------------

loc_140623423:                          ; CODE XREF: sub_1406232A0+74↑j
                cmp     eax, 3
                jnz     short loc_1406233DB
                xor     r8d, r8d
                lea     edx, [rax+0Eh]
                mov     rcx, r15
                call    RtlFindAceByType
                test    rax, rax
                jz      loc_140623323
                jmp     short loc_1406233F1
; ---------------------------------------------------------------------------

loc_140623441:                          ; CODE XREF: sub_1406232A0+10D↑j
                mov     [rsp+0C8h+var_58], 1
                jmp     loc_1406233B7
; ---------------------------------------------------------------------------

loc_14062344B:                          ; CODE XREF: sub_1406232A0+156↑j
                                        ; sub_1406232A0+160↑j
                mov     rcx, [rsp+0C8h+arg_60]
                lea     edx, [rsi+rdi]
                mov     eax, 0C0000023h
                mov     [rcx], edx
                jmp     short loc_14062340E
sub_1406232A0   endp

; ---------------------------------------------------------------------------
byte_14062345F  db 11h dup(0CCh)        ; DATA XREF: .rdata:000000014004EF2C↑o
                                        ; .pdata:00000001400FDC98↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_140623470   proc near               ; CODE XREF: sub_1406232A0+103↑p
                                        ; DATA XREF: .rdata:000000014004EF5C↑o ...

var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = byte ptr  20h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = dword ptr  58h
arg_50          = qword ptr  60h
arg_58          = qword ptr  68h
arg_60          = qword ptr  70h
arg_68          = qword ptr  78h

; FUNCTION CHUNK AT 00000001407FF91A SIZE 0000000A BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_18], r9
                mov     [rsp-8+arg_10], r8b
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-7]
                sub     rsp, 0A0h
                mov     r8, [rbp+37h+arg_68]
                xor     edi, edi
                xor     r9b, r9b
                mov     [rbp+37h+var_40], rdi
                mov     [rbp+37h+var_4C], edi
                movzx   r11d, dl
                mov     [rbp+37h+var_50], r9b
                mov     r13, rcx
                mov     [r8], dil
                mov     r14d, edi
                mov     [rbp+37h+arg_8], dil
                mov     r12d, edi
                mov     r10d, edi
                test    dl, dl
                jnz     loc_14062364E

loc_1406234CC:                          ; CODE XREF: sub_140623470+1E4↓j
                                        ; sub_140623470+1F0↓j
                xor     r15b, r15b

loc_1406234CF:                          ; CODE XREF: sub_140623470+1F9↓j
                mov     rsi, [rbp+37h+arg_58]
                mov     ecx, edi
                mov     [rbp+37h+var_48], rdi
                movzx   edx, word ptr [rsi+4]
                lea     rbx, [rsi+8]
                test    edx, edx
                jz      short loc_14062350D
                movzx   r8d, word ptr [rsi+2]
                add     r8, rsi

loc_1406234F0:                          ; CODE XREF: sub_140623470+94↓j
                cmp     rbx, r8
                jnb     loc_1407FF91A
                movzx   eax, word ptr [rbx+2]
                inc     ecx
                add     rbx, rax
                cmp     ecx, edx
                jb      short loc_1406234F0
                mov     r8, [rbp+37h+arg_68]

loc_14062350D:                          ; CODE XREF: sub_140623470+76↑j
                movzx   eax, word ptr [rsi+2]
                add     rax, rsi
                cmp     rbx, rax
                ja      loc_1407FF91A
                mov     [rbp+37h+var_48], rbx
                test    rbx, rbx
                jz      loc_1407FF91A
                movzx   eax, byte ptr [r13+1]
                mov     ecx, 0FFFFh
                test    r11b, r11b
                jnz     short loc_140623582
                test    al, 1
                jnz     short loc_140623586

loc_14062353D:                          ; CODE XREF: sub_140623470+114↓j
                                        ; sub_140623470+1D9↓j ...
                test    r15b, r15b
                jnz     loc_14062366E

loc_140623546:                          ; CODE XREF: sub_140623470+217↓j
                                        ; sub_140623470+249↓j ...
                mov     rax, [rbp+37h+arg_50]
                mov     [rax], r14d
                mov     rax, [rbp+37h+arg_60]
                mov     [rax], r12d
                cmp     [rbp+37h+arg_8], dil
                jnz     loc_14062376B

loc_140623564:                          ; CODE XREF: sub_140623470+300↓j
                mov     eax, edi

loc_140623566:                          ; CODE XREF: sub_140623470+1DC4AF↓j
                mov     rbx, [rsp+0D0h+arg_0]
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140623582:                          ; CODE XREF: sub_140623470+C7↑j
                test    al, 2
                jz      short loc_14062353D

loc_140623586:                          ; CODE XREF: sub_140623470+CB↑j
                mov     r9, [rbp+37h+arg_18]
                lea     rax, [rbp+37h+arg_8]
                movzx   edx, [rbp+37h+arg_10]
                mov     rcx, r13
                mov     [rsp+0D0h+var_58], rax
                lea     rax, [rbp+37h+var_50]
                mov     [rsp+0D0h+var_60], rax
                lea     rax, [rbp+37h+var_4C]
                mov     [rsp+0D0h+var_68], r8
                movzx   r8d, r15b
                mov     [rsp+0D0h+var_70], rsi
                mov     [rsp+0D0h+var_78], rax
                lea     rax, [rbp+37h+var_48]
                mov     [rsp+0D0h+var_80], rax
                mov     eax, [rbp+37h+arg_48]
                mov     [rsp+0D0h+var_88], eax
                mov     rax, [rbp+37h+arg_40]
                mov     [rsp+0D0h+var_90], rax
                mov     rax, [rbp+37h+arg_38]
                mov     [rsp+0D0h+var_98], rax
                mov     rax, [rbp+37h+arg_30]
                mov     [rsp+0D0h+var_A0], rax
                mov     rax, [rbp+37h+arg_28]
                mov     [rsp+0D0h+var_A8], rax
                mov     rax, [rbp+37h+arg_20]
                mov     [rsp+0D0h+var_B0], rax
                mov     [rbp+37h+var_40], rbx
                call    sub_140622E10
                test    al, al
                jz      loc_1407FF91A
                mov     r10d, [rbp+37h+var_4C]
                cmp     [rbp+37h+arg_8], dil
                jnz     loc_140623775
                test    r10d, r10d
                jz      loc_140623775
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140623790
                mov     ecx, 0FFFFh
                test    al, al
                jnz     loc_14062371D
                mov     r10d, [rbp+37h+var_4C]

loc_140623641:                          ; CODE XREF: sub_140623470+30A↓j
                movzx   r9d, [rbp+37h+var_50]
                mov     r14d, r10d
                jmp     loc_14062353D
; ---------------------------------------------------------------------------

loc_14062364E:                          ; CODE XREF: sub_140623470+56↑j
                movzx   eax, byte ptr [rcx+1]
                test    al, 4
                jnz     loc_1406234CC
                test    al, 1
                jnz     short loc_140623666
                test    al, 2
                jz      loc_1406234CC

loc_140623666:                          ; CODE XREF: sub_140623470+1EC↑j
                mov     r15b, 1
                jmp     loc_1406234CF
; ---------------------------------------------------------------------------

loc_14062366E:                          ; CODE XREF: sub_140623470+D0↑j
                test    r10d, r10d
                jz      short loc_14062367C
                test    r9b, r9b
                jz      loc_14062373C

loc_14062367C:                          ; CODE XREF: sub_140623470+201↑j
                cmp     byte ptr [r13+0], 8
                ja      short loc_14062368D
                cmp     [r13+4], edi
                jz      loc_140623546

loc_14062368D:                          ; CODE XREF: sub_140623470+211↑j
                movzx   eax, word ptr [r13+2]
                add     r14d, eax
                cmp     r14d, ecx
                ja      loc_1407FF91A
                mov     r8d, eax
                movzx   eax, word ptr [rsi+2]
                sub     rax, [rbp+37h+var_48]
                add     rax, rsi
                cmp     r8, rax
                jg      loc_14062377F
                cmp     [rbp+37h+arg_8], dil
                jnz     loc_140623546
                mov     rcx, [rbp+37h+var_48]
                mov     rdx, r13
                call    memmove
                mov     rax, [rbp+37h+var_48]
                or      byte ptr [rax+1], 8
                inc     word ptr [rsi+4]
                cmp     [rbp+37h+arg_10], dil
                jz      loc_140623546
                mov     rax, [rbp+37h+var_48]
                mov     rcx, rsi
                or      byte ptr [rax+1], 10h
                mov     rdx, [rbp+37h+var_48]
                call    sub_140623790
                test    al, al
                jz      loc_140623546
                mov     eax, 0FFFFh
                add     [rsi+4], ax
                movzx   eax, word ptr [r13+2]
                sub     r14d, eax
                cmp     r12d, eax
                cmova   eax, r12d
                mov     r12d, eax
                jmp     loc_140623546
; ---------------------------------------------------------------------------

loc_14062371D:                          ; CODE XREF: sub_140623470+1C7↑j
                mov     r12d, [rbp+37h+var_4C]
                mov     r10d, edi
                add     [rsi+4], cx
                mov     r14d, edi
                movzx   r9d, [rbp+37h+var_50]
                mov     [rbp+37h+var_4C], edi
                mov     [rbp+37h+var_48], rbx
                jmp     loc_14062353D
; ---------------------------------------------------------------------------

loc_14062373C:                          ; CODE XREF: sub_140623470+206↑j
                cmp     [rbp+37h+arg_8], dil
                jnz     loc_140623546
                mov     rcx, [rbp+37h+var_40]
                movzx   eax, byte ptr [r13+1]
                and     al, 3
                or      al, [rcx+1]
                mov     [rcx+1], al
                cmp     [rbp+37h+arg_10], dil
                jz      loc_140623546
                or      al, 10h
                mov     [rcx+1], al
                jmp     loc_140623546
; ---------------------------------------------------------------------------

loc_14062376B:                          ; CODE XREF: sub_140623470+EE↑j
                mov     edi, 0C0000023h
                jmp     loc_140623564
; ---------------------------------------------------------------------------

loc_140623775:                          ; CODE XREF: sub_140623470+1A6↑j
                                        ; sub_140623470+1AF↑j
                mov     ecx, 0FFFFh
                jmp     loc_140623641
; ---------------------------------------------------------------------------

loc_14062377F:                          ; CODE XREF: sub_140623470+23F↑j
                mov     [rbp+37h+arg_8], 1
                jmp     loc_140623546
sub_140623470   endp

; ---------------------------------------------------------------------------
algn_140623788:                         ; DATA XREF: .rdata:000000014004EF5C↑o
                                        ; .pdata:00000001400FDCA4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140623790   proc near               ; CODE XREF: sub_140623470+1BB↑p
                                        ; sub_140623470+280↑p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407FF924 SIZE 00000037 BYTES

                push    rbp
                push    rsi
                sub     rsp, 48h
                movzx   eax, byte ptr [rdx]
                mov     rsi, rdx
                mov     rbp, rcx
                cmp     al, 8
                ja      loc_140623912
                cmp     al, 4
                jz      loc_140623912
                movzx   edx, byte ptr [rdx+1]
                test    dl, 10h
                jz      loc_140623912
                movzx   eax, word ptr [rbp+4]
                movzx   ecx, dl

loc_1406237C4:                          ; DATA XREF: .rdata:000000014004EF90↑o
                                        ; .rdata:000000014004EFA4↑o ...
                mov     [rsp+58h+arg_10], rbx
                movzx   r8d, dl
                mov     [rsp+58h+var_18], rdi
                lea     rbx, [rbp+8]
                mov     [rsp+58h+var_20], r12
                and     cl, 2
                mov     r12d, [rsi+4]
                and     r8b, 1
                mov     [rsp+58h+var_28], r13
                xor     edi, edi
                dec     eax
                mov     [rsp+58h+var_30], r14
                and     dl, 8
                mov     [rsp+58h+var_38], r15
                test    eax, eax
                jle     loc_14062389F
                test    cl, cl
                lea     r10, cs:140000000h
                mov     r14d, r12d
                mov     r13d, r12d
                cmovz   r14d, edi
                test    r8b, r8b
                cmovz   r13d, edi
                test    dl, dl
                cmovnz  r12d, edi

loc_140623824:                          ; CODE XREF: sub_140623790+10D↓j
                movzx   ecx, byte ptr [rbx]
                mov     r15d, r14d
                cmp     cl, 8
                ja      short loc_14062388C
                cmp     cl, 4
                jz      short loc_14062388C
                movzx   r9d, byte ptr [rbx+1]
                test    r9b, 10h
                jz      short loc_14062388C
                movzx   edx, byte ptr [rsi]
                cmp     cl, 5
                jnb     loc_1407FF924
                lea     eax, [rdx-5]
                cmp     al, 3
                jbe     short loc_14062388C
                movzx   eax, byte ptr [rcx+r10+984CC8h]
                cmp     [rdx+r10+984CC8h], al
                jnz     short loc_14062388C
                cmp     byte ptr [rdx+r10+984FB8h], 0
                jnz     loc_1407FF948

loc_140623874:                          ; CODE XREF: sub_140623790+1DC1C6↓j
                lea     rdx, [rbx+8]
                lea     rcx, [rsi+8]
                call    RtlEqualSid
                test    al, al
                jnz     short loc_1406238C7

loc_140623885:                          ; CODE XREF: sub_140623790+178↓j
                                        ; sub_140623790+1DC1AD↓j
                lea     r10, cs:140000000h

loc_14062388C:                          ; CODE XREF: sub_140623790+9D↑j
                                        ; sub_140623790+A2↑j ...
                movzx   eax, word ptr [rbx+2]
                inc     edi
                add     rbx, rax
                movzx   eax, word ptr [rbp+4]
                dec     eax
                cmp     edi, eax
                jl      short loc_140623824

loc_14062389F:                          ; CODE XREF: sub_140623790+6E↑j
                xor     al, al

loc_1406238A1:                          ; CODE XREF: sub_140623790+180↓j
                mov     r14, [rsp+58h+var_30]
                mov     r13, [rsp+58h+var_28]
                mov     r12, [rsp+58h+var_20]
                mov     rdi, [rsp+58h+var_18]
                mov     rbx, [rsp+58h+arg_10]
                mov     r15, [rsp+58h+var_38]

loc_1406238BF:                          ; DATA XREF: .pdata:00000001400FDCBC↑o
                                        ; .pdata:00000001400FDCC8↑o
                add     rsp, 48h
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406238C7:                          ; CODE XREF: sub_140623790+F3↑j
                                        ; sub_140623790+1DC1B3↓j
                                        ; DATA XREF: ...
                movzx   edx, byte ptr [rbx+1]
                mov     r8d, [rbx+4]
                movzx   eax, dl
                not     r8d
                mov     r14d, r8d
                mov     ecx, r8d
                and     r14d, r15d
                and     al, 2
                movzx   eax, dl
                cmovz   r14d, r15d
                and     ecx, r13d
                and     al, 1
                cmovz   ecx, r13d
                and     r8d, r12d
                and     dl, 8
                mov     r13d, ecx
                cmovnz  r8d, r12d
                mov     eax, r8d
                mov     r12d, r8d
                or      eax, ecx
                or      eax, r14d
                jnz     loc_140623885
                mov     al, 1
                jmp     short loc_1406238A1
; ---------------------------------------------------------------------------

loc_140623912:                          ; CODE XREF: sub_140623790+12↑j
                                        ; sub_140623790+1A↑j ...
                xor     al, al
                add     rsp, 48h
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140623790   endp

byte_14062391C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400FDCE0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0C0h

sub_140623930   proc near               ; CODE XREF: sub_1405FAB94+178↑p
                                        ; SeSetSecurityDescriptorInfo+2A↓p ...

var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = dword ptr -178h
var_174         = dword ptr -174h
var_170         = dword ptr -170h
var_16C         = byte ptr -16Ch
var_16B         = byte ptr -16Bh
var_16A         = byte ptr -16Ah
var_169         = byte ptr -169h
var_168         = byte ptr -168h
var_167         = byte ptr -167h
var_166         = byte ptr -166h
var_165         = byte ptr -165h
var_164         = byte ptr -164h
var_163         = byte ptr -163h
var_162         = byte ptr -162h
var_161         = byte ptr -161h
var_160         = byte ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_12C         = word ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = byte ptr -70h
var_68          = dword ptr -68h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  10h
arg_20          = dword ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407FF95C SIZE 000007DD BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                push    rbp
                push    rsi
                lea     rbp, [r11-0C8h]
                sub     rsp, 1B8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0C0h+var_40], rax
                mov     eax, [rbp+0C0h+arg_28]
                xorps   xmm0, xmm0
; } // starts at 140623930

loc_14062395D:                          ; DATA XREF: .rdata:000000014004F044↑o
                                        ; .rdata:000000014004F058↑o ...
; __unwind { // __GSHandlerCheck
                mov     [r11+8], rbx
                mov     rsi, r9
                mov     [r11-18h], rdi
                mov     ebx, edx
                xor     edx, edx
                mov     [r11-20h], r12
                mov     [r11-28h], r13
                xor     r12b, r12b
                mov     [rbp+0C0h+var_130], eax
                mov     r13, r8
                mov     rax, [rbp+0C0h+arg_30]
                mov     [r11-30h], r14
                mov     r14d, edx
                mov     r11, [rbp+0C0h+arg_38]
                mov     [rbp+0C0h+var_108], rax
                movzx   eax, word ptr [r8+2]
                mov     [rbp+0C0h+var_118], r9
                mov     [rbp+0C0h+var_110], r8
                mov     [rbp+0C0h+var_E0], r11
                mov     [rsp+1C0h+var_160], 0
                mov     [rsp+1C0h+var_161], 0
                mov     byte ptr [rsp+1C0h+var_158], 0
                mov     byte ptr [rsp+61h], 0
                mov     byte ptr [rsp+67h], 0
                mov     byte ptr [rsp+62h], 0
                mov     byte ptr [rsp+63h], 0
                mov     byte ptr [rsp+64h], 0
                mov     byte ptr [rsp+65h], 0
                mov     byte ptr [rsp+66h], 0
                mov     [rbp+0C0h+var_A8], edx
                mov     [rbp+0C0h+var_A0], rdx
                mov     [rbp+0C0h+var_100], rdx
                mov     [rbp+0C0h+var_140], rdx
                mov     [rbp+0C0h+var_D8], rdx
                mov     [rbp+0C0h+var_138], rdx
                mov     [rbp+0C0h+var_C8], rdx
                mov     [rbp+0C0h+var_128], rdx
                mov     [rbp+0C0h+var_D0], rdx
                mov     [rsp+78h], rdx
                mov     [rbp+0C0h+var_C0], rdx
                mov     [rbp+0C0h+var_120], rdx
                mov     [rbp+0C0h+var_B8], rdx
                mov     [rbp+0C0h+var_B0], rdx
                mov     [rsp+1C0h+var_164], dl
                mov     byte ptr [rbp+0C0h+var_EC], dl
                mov     [rbp+0C0h+var_F0], r12d
                mov     dword ptr [rsp+1C0h+var_168], edx
                mov     [rsp+1C0h+var_170], 8000h
                mov     [rbp+0C0h+var_98], rdx
                movups  [rbp+0C0h+var_90], xmm0
                movups  [rbp+0C0h+var_80], xmm0
                test    al, 10h
                jnz     loc_140623F99
                mov     edi, edx

loc_140623A3E:                          ; CODE XREF: sub_140623930+682↓j
                                        ; sub_140623930+A4F↓j ...
                mov     rcx, [r9]
                mov     [rsp+1C0h+var_150], rdi
                mov     [rsp+1C0h+var_30], r15
                movzx   eax, word ptr [rcx+2]
                test    al, 10h
                jz      loc_1406240FC
                test    ax, ax
                jns     loc_1407FF965
                mov     eax, [rcx+0Ch]
                test    eax, eax
                jz      loc_140624374
                lea     r15, [rcx+rax]

loc_140623A72:                          ; CODE XREF: sub_140623930+7CF↓j
                                        ; sub_140623930+A47↓j ...
                test    r11, r11
                jnz     short loc_140623A8B
                lea     rcx, [rbp+0C0h+var_90]
                call    SeCaptureSubjectContext
                mov     rcx, [rsi]
                lea     r11, [rbp+0C0h+var_90]
                mov     [rbp+0C0h+var_E0], r11

loc_140623A8B:                          ; CODE XREF: sub_140623930+145↑j
                mov     rax, rcx
                cmp     [rcx+2], r14w
                jge     loc_1407FF96E
                movzx   r8d, word ptr [r13+2]
                test    r8b, r8b
                js      loc_1407FF978
                xor     r10b, r10b

loc_140623AAA:                          ; CODE XREF: sub_140623930+1DC04B↓j
                mov     [rsp+1C0h+var_163], r10b
                test    r8b, 40h
                jnz     loc_1407FF980
                mov     [rsp+1C0h+var_162], r14b

loc_140623ABE:                          ; CODE XREF: sub_140623930+1DC055↓j
                mov     edx, ebx
                and     edx, 80h
                bt      ebx, 8
                jb      loc_1407FF98A
                xor     r9b, r9b

loc_140623AD3:                          ; CODE XREF: sub_140623930+1DC05D↓j
                bt      ebx, 10h
                jb      loc_1407FF992

loc_140623ADD:                          ; CODE XREF: sub_140623930+1DC082↓j
                                        ; sub_140623930+1DC08B↓j ...
                test    bl, 1
                jnz     loc_140624254
                cmp     [rcx+2], r14w
                jge     loc_1407FF9FB
                mov     eax, [rcx+4]
                test    eax, eax
                jz      loc_14080012F
                lea     rdi, [rcx+rax]

loc_140623B00:                          ; CODE XREF: sub_140623930+1DC0CF↓j
                mov     [rbp+0C0h+var_E8], rdi
                test    rdi, rdi

loc_140623B07:                          ; CODE XREF: sub_140623930+971↓j
                jz      loc_14080012F

loc_140623B0D:                          ; CODE XREF: sub_140623930+95A↓j
                mov     rcx, rdi
                call    RtlValidSid
                test    al, al
                jz      loc_14080012F
                test    bl, 2
                jnz     loc_140624353
                mov     rax, [rsi]
                cmp     [rax+2], r14w
                jge     loc_1407FFA0C
                mov     ecx, [rax+8]
                test    ecx, ecx
                jz      loc_1407FFA15
                lea     r12, [rax+rcx]

loc_140623B43:                          ; CODE XREF: sub_140623930+A3F↓j
                                        ; sub_140623930+1DC0E0↓j
                test    r12, r12
                jz      loc_1407FFA15
                mov     rcx, r12
                call    RtlValidSid
                test    al, al
                jz      loc_1407FFA15
                test    ebx, 1F8h
                jnz     loc_140623E6E
                mov     r14, r15
                mov     [rsp+1C0h+var_150], r15
                mov     r15, [rbp+0C0h+var_128]

loc_140623B74:                          ; CODE XREF: sub_140623930+703↓j
                mov     r10d, 140Ch
                test    bl, 4
                jz      loc_140624038
                movzx   ecx, word ptr [r13+2]
                movzx   eax, cx
                movzx   r9d, cx
                and     ax, 4
                test    byte ptr [rbp+0C0h+arg_20], 1
                jnz     loc_1407FFEBF
                test    ax, ax
                jz      loc_1407FFF70
                test    cx, cx
                js      loc_140623FC7
                mov     r15, [r13+20h]

loc_140623BB6:                          ; CODE XREF: sub_140623930+6A7↓j
                                        ; sub_140623930+1DC643↓j ...
                mov     edx, [rsp+1C0h+var_170]
                mov     eax, ecx
                and     eax, 1000h
                or      eax, 4
                or      edx, eax
                mov     eax, 500h
                and     cx, ax
                mov     [rsp+1C0h+var_170], edx
                cmp     cx, ax
                jz      loc_140624166

loc_140623BDB:                          ; CODE XREF: sub_140623930+83E↓j
                                        ; sub_140623930+1DC63B↓j
                cmp     [rsp+1C0h+var_163], 0
                jnz     loc_1407FFF80

loc_140623BE6:                          ; CODE XREF: sub_140623930+730↓j
                                        ; sub_140623930+1DC6EE↓j ...
                movzx   eax, byte ptr [rdi+1]
                lea     r13d, ds:8[rax*4]
                movzx   eax, byte ptr [r12+1]
                lea     ecx, ds:8[rax*4]
                mov     dword ptr [rbp+0C0h+var_F8], ecx
                test    r14, r14
                jz      loc_140624104
                movzx   esi, word ptr [r14+2]
                add     esi, 3
                and     esi, 0FFFFFFFCh

loc_140623C16:                          ; CODE XREF: sub_140623930+7D6↓j
                test    r15, r15
                jz      loc_14080003C
                movzx   r14d, word ptr [r15+2]
                add     r14d, 3
                and     r14d, 0FFFFFFFCh

loc_140623C2C:                          ; CODE XREF: sub_140623930+1DC70F↓j
                add     ecx, 14h
                lea     edx, [r14+rsi]
                add     edx, ecx
                mov     r8d, 64536553h
                mov     ecx, [rbp+0C0h+var_130]
                add     edx, r13d
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140800044
                xor     eax, eax
                lea     rdi, [rbx+14h]
                cmp     byte ptr [rbp+0C0h+var_F0], al
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx], xmm0
                mov     [rbx+10h], eax
                mov     eax, [rsp+1C0h+var_170]
                mov     byte ptr [rbx], 1
                jnz     loc_14080004E

loc_140623C71:                          ; CODE XREF: sub_140623930+1DC726↓j
                or      ax, [rbx+2]
                mov     r8d, 4000h
                mov     rdx, [rbp+0C0h+var_110]
                movzx   ecx, ax
                mov     [rbx+2], ax
                test    [rdx+2], r8w
                jnz     loc_14080005B

loc_140623C91:                          ; CODE XREF: sub_140623930+1DC73A↓j
                mov     rax, [rsp+1C0h+var_150]
                test    rax, rax
                jz      loc_14062410B
                movzx   r8d, word ptr [rax+2]
                mov     rdx, rax
                mov     rcx, rdi
                call    memmove
                mov     rdx, [rbp+0C0h+var_108]
                mov     rcx, rdi
                call    sub_1406211A0
                mov     eax, edi
                sub     eax, ebx
                mov     [rbx+0Ch], eax
                mov     rax, [rsp+1C0h+var_150]
                movzx   ecx, word ptr [rax+2]
                cmp     esi, ecx
                ja      loc_14080006F

loc_140623CD3:                          ; CODE XREF: sub_140623930+1DC750↓j
                mov     eax, esi
                add     rdi, rax

loc_140623CD8:                          ; CODE XREF: sub_140623930+7E2↓j
                test    byte ptr [rsp+1C0h+var_170], 10h
                mov     rsi, [rbp+0C0h+var_118]
                jnz     short loc_140623CF6
                mov     rax, [rsi]
                movzx   ecx, word ptr [rax+2]
                mov     eax, 2830h
                and     cx, ax
                or      [rbx+2], cx

loc_140623CF6:                          ; CODE XREF: sub_140623930+3B1↑j
                test    r15, r15
                jz      loc_140800085
                movzx   r8d, word ptr [r15+2]
                mov     rdx, r15
                mov     rcx, rdi
                call    memmove
                mov     rdx, [rbp+0C0h+var_108]
                mov     rcx, rdi
                call    sub_1406211A0
                mov     eax, edi
                sub     eax, ebx
                mov     [rbx+10h], eax
                movzx   ecx, word ptr [r15+2]
                cmp     r14d, ecx
                ja      loc_140800091

loc_140623D30:                          ; CODE XREF: sub_140623930+1DC772↓j
                mov     eax, r14d
                add     rdi, rax

loc_140623D36:                          ; CODE XREF: sub_140623930+1DC75C↓j
                test    byte ptr [rsp+1C0h+var_170], 4
                jz      loc_140624065

loc_140623D41:                          ; CODE XREF: sub_140623930+74C↓j
                                        ; sub_140623930+7C7↓j
                mov     rdx, [rbp+0C0h+var_E8]
                mov     rcx, rdi
                mov     r8d, r13d
                call    memmove
                mov     eax, edi
                sub     eax, ebx
                mov     [rbx+4], eax
                mov     eax, r13d
                add     rdi, rax
                cmp     [rsp+1C0h+var_161], 0
                jnz     short loc_140623D73
                mov     rax, [rsi]
                movzx   ecx, word ptr [rax+2]
                and     cx, 1
                or      [rbx+2], cx

loc_140623D73:                          ; CODE XREF: sub_140623930+432↑j
                mov     r8d, dword ptr [rbp+0C0h+var_F8]
                mov     rdx, r12
                mov     rcx, rdi
                call    memmove
                sub     edi, ebx
                cmp     [rsp+1C0h+var_160], 0
                mov     [rbx+8], edi
                jnz     short loc_140623D9D
                mov     rax, [rsi]
                movzx   edx, word ptr [rax+2]
                and     dx, 2
                or      [rbx+2], dx

loc_140623D9D:                          ; CODE XREF: sub_140623930+45C↑j
                mov     [rsi], rbx
                xor     esi, esi

loc_140623DA2:                          ; CODE XREF: sub_140623930+773↓j
                                        ; sub_140623930+1DC719↓j
                mov     r14, [rsp+1C0h+var_150]

loc_140623DA7:                          ; CODE XREF: sub_140623930+1DC6E4↓j
                cmp     byte ptr [rsp+61h], 0
                jnz     loc_1408000BD

loc_140623DB2:                          ; CODE XREF: sub_140623930+1DC1F8↓j
                                        ; sub_140623930+1DC799↓j
                mov     r15, [rbp+0C0h+var_128]

loc_140623DB6:                          ; CODE XREF: sub_140623930+6E1↓j
                                        ; sub_140623930+1DC2B6↓j ...
                mov     r12, [rbp+0C0h+var_138]

loc_140623DBA:                          ; CODE XREF: sub_140623930+1DC386↓j
                mov     rdi, [rsp+78h]

loc_140623DBF:                          ; CODE XREF: sub_140623930+1DC481↓j
                mov     rbx, [rbp+0C0h+var_120]

loc_140623DC3:                          ; CODE XREF: sub_140623930+1DC550↓j
                mov     rax, [rbp+0C0h+var_140]
                test    rax, rax
                jnz     loc_140624126

loc_140623DD0:                          ; CODE XREF: sub_140623930+7FB↓j
                                        ; sub_140623930+1DC7A9↓j
                test    r15, r15
                jnz     loc_140623FB7

loc_140623DD9:                          ; CODE XREF: sub_140623930+68C↓j
                                        ; sub_140623930+1DC7B9↓j
                test    r12, r12
                jnz     loc_140624146

loc_140623DE2:                          ; CODE XREF: sub_140623930+81B↓j
                                        ; sub_140623930+1DC7C9↓j
                test    rdi, rdi
                jnz     loc_140624136

loc_140623DEB:                          ; CODE XREF: sub_140623930+80B↓j
                                        ; sub_140623930+1DC7D9↓j
                test    rbx, rbx
                jnz     loc_140624156

loc_140623DF4:                          ; CODE XREF: sub_140623930+82B↓j
                                        ; sub_140623930+1DC7E9↓j
                test    r14, r14
                jz      short loc_140623E04
                cmp     byte ptr [rsp+67h], 0
                jnz     loc_140624117

loc_140623E04:                          ; CODE XREF: sub_140623930+4C7↑j
                                        ; sub_140623930+7F1↓j
                cmp     byte ptr [rsp+1C0h+var_158], 0
                jnz     loc_14080011E

loc_140623E0F:                          ; CODE XREF: sub_140623930+1DC043↓j
                                        ; sub_140623930+1DC0EA↓j ...
                mov     r15, [rsp+1C0h+var_30]
                lea     rax, [rbp+0C0h+var_90]
                mov     r14, [rsp+1C0h+var_28]
                mov     r13, [rsp+1C0h+var_20]
                mov     r12, [rsp+1C0h+var_18]
                mov     rdi, [rsp+1B0h]
                mov     rbx, [rsp+1C0h+arg_0]
                cmp     [rbp+0C0h+var_E0], rax
                jnz     short loc_140623E52
; } // starts at 14062395D

loc_140623E49:                          ; DATA XREF: .pdata:00000001400FDCF8↑o
                                        ; .pdata:00000001400FDD04↑o
; __unwind { // __GSHandlerCheck
                lea     rcx, [rbp+0C0h+var_90]
                call    SeReleaseSubjectContext

loc_140623E52:                          ; CODE XREF: sub_140623930+517↑j
                mov     eax, esi
                mov     rcx, [rbp+0C0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1B8h
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2
; } // starts at 140623E49

loc_140623E6E:                          ; CODE XREF: sub_140623930+232↑j
                                        ; DATA XREF: .pdata:00000001400FDD04↑o ...
; __unwind { // __GSHandlerCheck
                mov     eax, ebx
                and     eax, 10h
                mov     dword ptr [rbp+0C0h+var_F8], eax
                jz      short loc_140623EC4
                mov     dword ptr [rsp+1C0h+var_16C], r14d

loc_140623E7D:                          ; CODE XREF: sub_140623930+592↓j
                mov     rcx, [rsp+1C0h+var_150]
                lea     r8, [rsp+1C0h+var_16C]
                mov     edx, 11h
                call    RtlFindAceByType
                mov     r13, rax
                test    rax, rax
                jnz     loc_140624173
                mov     rax, [rbp+0C0h+var_B0]

loc_140623EA1:                          ; CODE XREF: sub_140623930+85C↓j
                movzx   r8d, [rsp+1C0h+var_164]
                mov     rdx, rax
                mov     rcx, [rbp+0C0h+var_E0]
                call    sub_140706410
                test    al, al
                jz      loc_1407FFA1F
                inc     dword ptr [rsp+1C0h+var_16C]
                test    r13, r13
                jnz     short loc_140623E7D

loc_140623EC4:                          ; CODE XREF: sub_140623930+546↑j
                mov     rcx, [rbp+0C0h+var_E0]
                call    sub_14021BD38
                mov     r13, rax
                mov     eax, ebx
                and     eax, 80h
                mov     dword ptr [rbp+0C0h+var_B0], eax
                jnz     loc_1406242A6

loc_140623EE0:                          ; CODE XREF: sub_140623930+9D3↓j
                mov     ecx, ebx
                and     ecx, 100h
                mov     dword ptr [rsp+1C0h+var_16C], ecx
                jnz     loc_1407FFA33

loc_140623EF2:                          ; CODE XREF: sub_140623930+1DC140↓j
                mov     r13d, [rbp+0C0h+arg_20]
                mov     r9d, 0A00h
                mov     r8, [rbp+0C0h+var_110]
                and     r13d, 2
                test    bl, 8
                jnz     loc_14062420F
                mov     r11, r15
                mov     [rbp+0C0h+var_140], r15

loc_140623F17:                          ; CODE XREF: sub_140623930+1DC1EB↓j
                mov     r10, [rsp+1C0h+var_150]

loc_140623F1C:                          ; CODE XREF: sub_140623930+911↓j
                                        ; sub_140623930+91F↓j
                test    bl, 20h
                jnz     loc_1406241C3
                mov     r9d, [rsp+1C0h+var_170]
                mov     [rbp+0C0h+var_128], r15

loc_140623F2E:                          ; CODE XREF: sub_140623930+8C7↓j
                                        ; sub_140623930+8DA↓j ...
                test    bl, 40h
                jnz     loc_1407FFBEB
                mov     [rbp+0C0h+var_138], r15

loc_140623F3B:                          ; CODE XREF: sub_140623930+1DC379↓j
                                        ; sub_140623930+1DC3AC↓j ...
                cmp     dword ptr [rbp+0C0h+var_B0], r14d
                jnz     loc_140624308
                mov     rdx, r15

loc_140623F48:                          ; CODE XREF: sub_140623930+1DC470↓j
                mov     [rsp+78h], rdx

loc_140623F4D:                          ; CODE XREF: sub_140623930+A0B↓j
                                        ; sub_140623930+A1E↓j
                test    ecx, ecx
                jnz     loc_1407FFDB6
                mov     r8, r15
                mov     [rbp+0C0h+var_120], r15
                mov     esi, 0A00h

loc_140623F61:                          ; CODE XREF: sub_140623930+1DC58A↓j
                mov     r13, [rbp+0C0h+var_110]
                cmp     dword ptr [rbp+0C0h+var_F8], r14d
                jz      short loc_140623FDC
                movzx   ecx, word ptr [r13+2]
                mov     eax, ecx
                and     cx, si
                and     eax, 2000h
                or      eax, 10h
                or      r9d, eax
                mov     [rsp+1C0h+var_170], r9d
                cmp     cx, si
                jnz     short loc_140623FDF
                mov     eax, 800h
                or      r9d, eax
                mov     [rsp+1C0h+var_170], r9d
                jmp     short loc_140623FDF
; } // starts at 140623E6E
; ---------------------------------------------------------------------------

loc_140623F99:                          ; CODE XREF: sub_140623930+106↑j
                                        ; DATA XREF: .pdata:00000001400FDD10↑o ...
; __unwind { // __GSHandlerCheck
                test    ax, ax
                jns     loc_1407FF95C
                mov     eax, [r8+0Ch]
                test    eax, eax
                jz      loc_14062437C
                lea     rdi, [rax+r8]
                jmp     loc_140623A3E
; } // starts at 140623F99
; ---------------------------------------------------------------------------

loc_140623FB7:                          ; CODE XREF: sub_140623930+4A3↑j
                                        ; DATA XREF: .pdata:00000001400FDD1C↑o ...
; __unwind { // __GSHandlerCheck
                cmp     byte ptr [rsp+63h], 0
                jz      loc_140623DD9
                jmp     loc_1408000DE
; ---------------------------------------------------------------------------

loc_140623FC7:                          ; CODE XREF: sub_140623930+27C↑j
                mov     eax, [r13+10h]
                test    eax, eax
                jz      loc_1407FFF78
                lea     r15, [rax+r13]
                jmp     loc_140623BB6
; ---------------------------------------------------------------------------

loc_140623FDC:                          ; CODE XREF: sub_140623930+639↑j
                mov     r10, r15

loc_140623FDF:                          ; CODE XREF: sub_140623930+658↑j
                                        ; sub_140623930+667↑j
                mov     r15, [rbp+0C0h+var_128]
                lea     rax, [rbp+0C0h+var_100]
                mov     r9, [rbp+0C0h+var_138]
                mov     rcx, r11
                mov     [rsp+1C0h+var_188], r14
                mov     [rsp+1C0h+var_190], rax
                mov     [rsp+1C0h+var_198], r8
                mov     r8, r15
                mov     [rsp+1C0h+var_1A0], rdx
                mov     rdx, r10
                call    sub_140621260
                mov     esi, eax
                test    eax, eax
                js      loc_140623DB6
                cmp     [rbp+0C0h+var_140], r14
                mov     r14, [rbp+0C0h+var_100]
                mov     [rsp+1C0h+var_150], r14
                jz      loc_140624197

loc_14062402A:                          ; CODE XREF: sub_140623930+86A↓j
                                        ; sub_140623930+876↓j ...
                mov     rsi, [rbp+0C0h+var_118]
                mov     byte ptr [rsp+67h], 1
                jmp     loc_140623B74
; ---------------------------------------------------------------------------

loc_140624038:                          ; CODE XREF: sub_140623930+24D↑j
                mov     rax, [rsi]
                movzx   ecx, word ptr [rax+2]
                test    cl, 4
                jz      loc_140800023
                test    cx, cx
                jns     loc_140800033
                mov     ecx, [rax+10h]
                test    ecx, ecx
                jz      loc_14080002B
                lea     r15, [rax+rcx]
                jmp     loc_140623BE6
; ---------------------------------------------------------------------------

loc_140624065:                          ; CODE XREF: sub_140623930+40B↑j
                mov     rax, [rsi]
                movzx   ecx, word ptr [rax+2]
                mov     eax, 140Ch
                and     cx, ax
                or      [rbx+2], cx
                cmp     byte ptr [rbp+0C0h+var_EC], 0
                jz      loc_140623D41
                mov     r8b, 1
                mov     [rbp+0C0h+var_130], 0
                lea     rdx, [rbp+0C0h+var_130]
                mov     [rbp+0C0h+var_12C], 300h
                lea     rcx, [rbp+0C0h+var_70]
                call    RtlInitializeSid
                mov     esi, eax
                test    eax, eax
                js      loc_140623DA2
                mov     [rbp+0C0h+var_68], 4
                mov     dword ptr [rsp+1C0h+var_16C], 0

loc_1406240B8:                          ; CODE XREF: sub_140623930+1DC788↓j
                movzx   eax, word ptr [rbx+2]
                test    al, 4
                jz      loc_140624393
                test    ax, ax
                jns     loc_1406243A1
                mov     eax, [rbx+10h]
                test    eax, eax
                jz      loc_14062439A
                lea     rcx, [rbx+rax]

loc_1406240DC:                          ; CODE XREF: sub_140623930+A65↓j
                                        ; sub_140623930+A6C↓j ...
                lea     r8, [rsp+1C0h+var_16C]
                lea     rdx, [rbp+0C0h+var_70]
                call    sub_14021C0B0
                test    rax, rax
                jnz     loc_1408000A7
                mov     rsi, [rbp+0C0h+var_118]
                jmp     loc_140623D41
; ---------------------------------------------------------------------------

loc_1406240FC:                          ; CODE XREF: sub_140623930+124↑j
                mov     r15, rdx
                jmp     loc_140623A72
; ---------------------------------------------------------------------------

loc_140624104:                          ; CODE XREF: sub_140623930+2D5↑j
                xor     esi, esi
                jmp     loc_140623C16
; ---------------------------------------------------------------------------

loc_14062410B:                          ; CODE XREF: sub_140623930+369↑j
                mov     dword ptr [rbx+0Ch], 0
                jmp     loc_140623CD8
; ---------------------------------------------------------------------------

loc_140624117:                          ; CODE XREF: sub_140623930+4CE↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_140623E04
; ---------------------------------------------------------------------------

loc_140624126:                          ; CODE XREF: sub_140623930+49A↑j
                cmp     byte ptr [rsp+62h], 0
                jz      loc_140623DD0
                jmp     loc_1408000CE
; ---------------------------------------------------------------------------

loc_140624136:                          ; CODE XREF: sub_140623930+4B5↑j
                cmp     byte ptr [rsp+65h], 0
                jz      loc_140623DEB
                jmp     loc_1408000FE
; ---------------------------------------------------------------------------

loc_140624146:                          ; CODE XREF: sub_140623930+4AC↑j
                cmp     byte ptr [rsp+64h], 0
                jz      loc_140623DE2
                jmp     loc_1408000EE
; ---------------------------------------------------------------------------

loc_140624156:                          ; CODE XREF: sub_140623930+4BE↑j
                cmp     byte ptr [rsp+66h], 0
                jz      loc_140623DF4
                jmp     loc_14080010E
; ---------------------------------------------------------------------------

loc_140624166:                          ; CODE XREF: sub_140623930+2A5↑j
                bts     edx, 0Ah
                mov     [rsp+1C0h+var_170], edx
                jmp     loc_140623BDB
; ---------------------------------------------------------------------------

loc_140624173:                          ; CODE XREF: sub_140623930+567↑j
                movzx   ecx, byte ptr [r13+1]
                add     rax, 8
                test    dword ptr [r13+4], 0FFFFFFF8h
                mov     [rbp+0C0h+var_B0], rax
                mov     [rsp+1C0h+var_164], cl
                jz      loc_140623EA1
                jmp     loc_1407FFA1F
; ---------------------------------------------------------------------------

loc_140624197:                          ; CODE XREF: sub_140623930+6F4↑j
                test    r14, r14
                jz      loc_14062402A
                cmp     word ptr [r14+4], 0
                jnz     loc_14062402A
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                xor     r14d, r14d
                mov     [rsp+1C0h+var_150], r14
                jmp     loc_14062402A
; ---------------------------------------------------------------------------

loc_1406241C3:                          ; CODE XREF: sub_140623930+5EF↑j
                movzx   edx, word ptr [r8+2]
                test    r13d, r13d
                jnz     loc_1407FFB2D
                mov     r9d, [rsp+1C0h+var_170]
                mov     eax, edx
                and     eax, 2000h
                mov     [rbp+0C0h+var_128], r10
                or      eax, 10h
                or      r9d, eax
                mov     eax, 0A00h
                and     dx, ax
                mov     [rsp+1C0h+var_170], r9d
                cmp     dx, ax
                jnz     loc_140623F2E
                mov     eax, 800h
                or      r9d, eax
                mov     [rsp+1C0h+var_170], r9d
                jmp     loc_140623F2E
; ---------------------------------------------------------------------------

loc_14062420F:                          ; CODE XREF: sub_140623930+5DA↑j
                movzx   edx, word ptr [r8+2]
                test    r13d, r13d
                jnz     loc_1407FFA75
                mov     r10, [rsp+1C0h+var_150]
                mov     eax, edx
                and     eax, 2000h
                mov     [rbp+0C0h+var_140], r10
                or      eax, 8010h
                and     dx, r9w
                mov     [rsp+1C0h+var_170], eax
                mov     r11, r10
                cmp     dx, r9w
                jnz     loc_140623F1C
                bts     eax, 0Bh
                mov     [rsp+1C0h+var_170], eax
                jmp     loc_140623F1C
; ---------------------------------------------------------------------------

loc_140624254:                          ; CODE XREF: sub_140623930+1B0↑j
                mov     eax, ebx
                shr     eax, 2
                not     al
                and     al, 1
                mov     [rbp+0C0h+var_EC], eax
                test    r8w, r8w
                jns     loc_140624384
                mov     eax, [r13+4]
                test    eax, eax
                jz      loc_1407FF9F4
                lea     rdi, [rax+r13]

loc_14062427A:                          ; CODE XREF: sub_140623930+A58↓j
                                        ; sub_140623930+1DC0C6↓j
                test    byte ptr [rbp+0C0h+arg_20], 8
                mov     [rbp+0C0h+var_E8], rdi
                mov     [rsp+1C0h+var_161], 1
                jnz     loc_140623B0D
                movzx   r8d, r10b
                mov     rdx, rdi
                mov     rcx, r11
                call    sub_14070166C
                test    al, al
                jmp     loc_140623B07
; ---------------------------------------------------------------------------

loc_1406242A6:                          ; CODE XREF: sub_140623930+5AA↑j
                test    r13, r13
                jz      loc_1407FFA29
                mov     dword ptr [rsp+1C0h+var_16C], r14d

loc_1406242B4:                          ; CODE XREF: sub_140623930+9D1↓j
                mov     rcx, [rsp+1C0h+var_150]
                lea     r8, [rsp+1C0h+var_16C]
                mov     edx, 14h
                call    RtlFindAceByType
                mov     [rbp+0C0h+var_140], rax
                test    rax, rax
                jz      short loc_1406242FA
                test    dword ptr [rax+4], 0FF000000h
                jnz     loc_1407FFA1F
                lea     rdx, [rax+8]
                mov     rcx, r13
                lea     r9, [rbp+0C0h+var_A8]
                call    sub_140361F40
                test    al, al
                jz      loc_1407FFA29
                mov     rax, [rbp+0C0h+var_140]

loc_1406242FA:                          ; CODE XREF: sub_140623930+99F↑j
                inc     dword ptr [rsp+1C0h+var_16C]
                test    rax, rax
                jnz     short loc_1406242B4
                jmp     loc_140623EE0
; ---------------------------------------------------------------------------

loc_140624308:                          ; CODE XREF: sub_140623930+60F↑j
                movzx   edx, word ptr [r8+2]
                test    r13d, r13d
                jnz     loc_1407FFCF4
                mov     eax, edx
                mov     [rsp+78h], r10
                and     eax, 2000h
                or      eax, 10h
                or      r9d, eax
                mov     eax, 0A00h
                and     dx, ax
                mov     [rsp+1C0h+var_170], r9d
                cmp     dx, ax
                mov     rdx, r10
                jnz     loc_140623F4D
                mov     eax, 800h
                or      r9d, eax
                mov     [rsp+1C0h+var_170], r9d
                jmp     loc_140623F4D
; ---------------------------------------------------------------------------

loc_140624353:                          ; CODE XREF: sub_140623930+1F0↑j
                cmp     [r13+2], r14w
                jge     short loc_14062438D
                mov     eax, [r13+8]
                test    eax, eax
                jz      loc_1407FFA04
                lea     r12, [rax+r13]

loc_14062436A:                          ; CODE XREF: sub_140623930+A61↓j
                                        ; sub_140623930+1DC0D7↓j
                mov     [rsp+1C0h+var_160], 1
                jmp     loc_140623B43
; ---------------------------------------------------------------------------

loc_140624374:                          ; CODE XREF: sub_140623930+138↑j
                mov     r15, rdx
                jmp     loc_140623A72
; } // starts at 140623FB7
; ---------------------------------------------------------------------------

loc_14062437C:                          ; CODE XREF: sub_140623930+678↑j
                                        ; DATA XREF: .pdata:00000001400FDD28↑o ...
; __unwind { // __GSHandlerCheck
                mov     rdi, rdx
                jmp     loc_140623A3E
; } // starts at 14062437C
; ---------------------------------------------------------------------------

loc_140624384:                          ; CODE XREF: sub_140623930+934↑j
                                        ; DATA XREF: .pdata:00000001400FDD34↑o ...
; __unwind { // __GSHandlerCheck
                mov     rdi, [r13+8]
                jmp     loc_14062427A
; ---------------------------------------------------------------------------

loc_14062438D:                          ; CODE XREF: sub_140623930+A28↑j
                mov     r12, [r13+10h]
                jmp     short loc_14062436A
; ---------------------------------------------------------------------------

loc_140624393:                          ; CODE XREF: sub_140623930+78E↑j
                xor     ecx, ecx
                jmp     loc_1406240DC
; ---------------------------------------------------------------------------

loc_14062439A:                          ; CODE XREF: sub_140623930+7A2↑j
                xor     ecx, ecx
                jmp     loc_1406240DC
; ---------------------------------------------------------------------------

loc_1406243A1:                          ; CODE XREF: sub_140623930+797↑j
                mov     rcx, [rbx+20h]
                jmp     loc_1406240DC
; } // starts at 140624384
sub_140623930   endp

; ---------------------------------------------------------------------------
algn_1406243AA:                         ; DATA XREF: .pdata:00000001400FDD40↑o
                align 10h
; Exported entry 2456. RtlValidSecurityDescriptor

; =============== S U B R O U T I N E =======================================



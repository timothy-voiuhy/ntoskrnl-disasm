SeTokenIsAdmin  proc near               ; CODE XREF: IoComputeRedirectionTrustLevel:loc_1403F17E1↑p
                                        ; sub_140202D3C+21C699↑p ...

var_28          = byte ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140820C0C SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                test    dword ptr [rcx+0C8h], 4000h
                mov     rbx, rcx
                jnz     short loc_1406D8F15
                cmp     dword ptr [rcx+0C0h], 2
                jz      short loc_1406D8F19

loc_1406D8EC7:                          ; CODE XREF: SeTokenIsAdmin+80↓j
                mov     rsi, cs:qword_140D2E688
                xor     r9d, r9d
                mov     [rsp+48h+var_18], 0
                mov     r8, rsi
                mov     [rsp+48h+var_20], 0
                xor     edx, edx
                mov     [rsp+48h+var_28], 0
                call    sub_14021C4F0
                mov     dil, al
                test    al, al
                jz      short loc_1406D8F01
                mov     rcx, rbx
                call    SeTokenIsRestricted
                test    al, al
                jnz     loc_140820C0C

loc_1406D8F01:                          ; CODE XREF: SeTokenIsAdmin+4F↑j
                                        ; SeTokenIsAdmin+147D8E↓j
                mov     al, dil

loc_1406D8F04:                          ; CODE XREF: SeTokenIsAdmin+77↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D8F15:                          ; CODE XREF: SeTokenIsAdmin+1C↑j
                                        ; SeTokenIsAdmin+82↓j
                xor     al, al
                jmp     short loc_1406D8F04
; ---------------------------------------------------------------------------

loc_1406D8F19:                          ; CODE XREF: SeTokenIsAdmin+25↑j
                cmp     dword ptr [rcx+0C4h], 2
                jge     short loc_1406D8EC7
                jmp     short loc_1406D8F15
SeTokenIsAdmin  endp

; ---------------------------------------------------------------------------
byte_1406D8F24  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140076E10↑o
                                        ; .pdata:0000000140103B90↑o

; =============== S U B R O U T I N E =======================================


sub_1406D8F2C   proc near               ; CODE XREF: NtDuplicateToken+30F↑p
                                        ; sub_1406B6208+A1D↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140820C34 SIZE 000000A9 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, rcx
                mov     byte ptr [r8], 0
                mov     esi, [rdx+0C8h]
                mov     ecx, 800h
                mov     rbx, rdx
                test    ecx, esi
                jz      short loc_1406D8F6A
                test    [rdi+0C8h], ecx
                jz      loc_1406D9074

loc_1406D8F6A:                          ; CODE XREF: sub_1406D8F2C+30↑j
                mov     rcx, rbx
                call    SeTokenIsRestricted
                test    al, al
                jnz     loc_140820C34

loc_1406D8F7A:                          ; CODE XREF: sub_1406D8F2C+147D18↓j
                mov     rcx, rbx
                call    SeTokenIsWriteRestricted
                test    al, al
                jnz     loc_140820C49

loc_1406D8F8A:                          ; CODE XREF: sub_1406D8F2C+147D2D↓j
                mov     rcx, rbx
                call    SeTokenIsRestricted
                test    al, al
                jnz     loc_140820C5E

loc_1406D8F9A:                          ; CODE XREF: sub_1406D8F2C+147D44↓j
                mov     rax, [rbx+48h]
                not     rax
                test    [rdi+48h], rax
                jnz     loc_1406D9074
                mov     rax, [rbx+40h]
                not     rax
                test    [rdi+40h], rax
                jnz     loc_1406D9074
                mov     eax, [rdi+0C8h]
                not     esi
                and     eax, esi
                bt      eax, 0Ch
                jb      loc_1406D9074
                mov     rcx, rbx
                call    SeTokenIsRestricted
                test    al, al
                jnz     loc_140820C75

loc_1406D8FE0:                          ; CODE XREF: sub_1406D8F2C+147D55↓j
                                        ; sub_1406D8F2C+147DAC↓j
                mov     r14d, [rbx+7Ch]
                xor     esi, esi
                test    r14d, r14d
                jz      short loc_1406D9007
                mov     r12, [rbx+98h]

loc_1406D8FF2:                          ; CODE XREF: sub_1406D8F2C+D9↓j
                mov     ecx, esi
                add     rcx, rcx
                mov     eax, [r12+rcx*8+8]
                test    al, 10h
                jnz     short loc_1406D9027

loc_1406D9000:                          ; CODE XREF: sub_1406D8F2C+104↓j
                                        ; sub_1406D8F2C+13A↓j ...
                inc     esi
                cmp     esi, r14d
                jb      short loc_1406D8FF2

loc_1406D9007:                          ; CODE XREF: sub_1406D8F2C+BD↑j
                mov     rax, [rsp+58h+arg_10]
                mov     byte ptr [rax], 1
                xor     eax, eax

loc_1406D9011:                          ; CODE XREF: sub_1406D8F2C+14D↓j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 20h
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

loc_1406D9027:                          ; CODE XREF: sub_1406D8F2C+D2↑j
                mov     r15d, [rdi+7Ch]
                xor     ebx, ebx
                test    r15d, r15d
                jz      short loc_1406D9000
                mov     rax, [r12+rcx*8]
                mov     r13, [rdi+98h]
                mov     [rsp+58h+arg_8], rax

loc_1406D9042:                          ; CODE XREF: sub_1406D8F2C+138↓j
                mov     edx, ebx
                mov     rcx, rax
                add     rdx, rdx
                mov     ebp, ebx
                mov     rdx, [r13+rdx*8+0]
                call    RtlEqualSid
                test    al, al
                jnz     short loc_1406D9068
                mov     rax, [rsp+58h+arg_8]
                inc     ebx
                cmp     ebx, r15d
                jb      short loc_1406D9042
                jmp     short loc_1406D9000
; ---------------------------------------------------------------------------

loc_1406D9068:                          ; CODE XREF: sub_1406D8F2C+12C↑j
                add     rbp, rbp
                mov     eax, [r13+rbp*8+8]
                test    al, 10h
                jnz     short loc_1406D9000

loc_1406D9074:                          ; CODE XREF: sub_1406D8F2C+38↑j
                                        ; sub_1406D8F2C+79↑j ...
                mov     eax, 0C0000061h
                jmp     short loc_1406D9011
sub_1406D8F2C   endp

; ---------------------------------------------------------------------------
byte_1406D907B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140076E3C↑o
                                        ; .pdata:0000000140103B9C↑o

; =============== S U B R O U T I N E =======================================


sub_1406D9084   proc near               ; CODE XREF: sub_1406D8B70+250↑p
                                        ; DATA XREF: .pdata:0000000140103BA8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebp, [rcx]
                xor     ebx, ebx
                mov     esi, [rdx]
                mov     r15, rdx
                test    ebp, ebp
                jz      loc_1406D913A

loc_1406D90AD:                          ; CODE XREF: sub_1406D9084+B8↓j
                lea     r14, [rcx+8]
                mov     rdi, [r14]

loc_1406D90B4:                          ; CODE XREF: sub_1406D9084+82↓j
                cmp     rdi, r14
                jz      short loc_1406D9108
                mov     rcx, rdi
                call    sub_1406D9150
                test    al, al
                jz      short loc_1406D9101
                lea     rdx, [rdi+20h]
                mov     rcx, r15
                call    sub_140205E90
                test    rax, rax
                jz      short loc_1406D90E5
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1406D9184
                test    al, al
                jnz     short loc_1406D9103

loc_1406D90E5:                          ; CODE XREF: sub_1406D9084+50↑j
                                        ; sub_1406D9084+B4↓j ...
                mov     rbp, [rsp+38h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D9101:                          ; CODE XREF: sub_1406D9084+3F↑j
                dec     ebp

loc_1406D9103:                          ; CODE XREF: sub_1406D9084+5F↑j
                mov     rdi, [rdi]
                jmp     short loc_1406D90B4
; ---------------------------------------------------------------------------

loc_1406D9108:                          ; CODE XREF: sub_1406D9084+33↑j
                lea     r14, [r15+8]
                mov     rdi, [r14]
                jmp     short loc_1406D9126
; ---------------------------------------------------------------------------

loc_1406D9111:                          ; CODE XREF: sub_1406D9084+A5↓j
                mov     rcx, rdi
                call    sub_1406D9150
                mov     rdi, [rdi]
                lea     ecx, [rsi-1]
                test    al, al
                cmovnz  ecx, esi
                mov     esi, ecx

loc_1406D9126:                          ; CODE XREF: sub_1406D9084+8B↑j
                cmp     rdi, r14
                jnz     short loc_1406D9111
                cmp     ebp, esi
                movzx   ebx, bl
                mov     ecx, 1
                cmovz   ebx, ecx
                jmp     short loc_1406D90E5
; ---------------------------------------------------------------------------

loc_1406D913A:                          ; CODE XREF: sub_1406D9084+23↑j
                test    esi, esi
                jnz     loc_1406D90AD
                lea     ebx, [rsi+1]
                jmp     short loc_1406D90E5
sub_1406D9084   endp

; ---------------------------------------------------------------------------
algn_1406D9147:                         ; DATA XREF: .pdata:0000000140103BA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406D9150   proc near               ; CODE XREF: sub_1406D9084+38↑p
                                        ; sub_1406D9084+90↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     eax, [rcx+34h]
                test    al, 40h
                jnz     short loc_1406D917A
                lea     rdx, [rcx+20h]
                mov     r8b, 1
                lea     rcx, qword_140002340
                call    RtlPrefixUnicodeString
                test    al, al
                jnz     short loc_1406D917A
                mov     al, 1

loc_1406D9174:                          ; CODE XREF: sub_1406D9150+2C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D917A:                          ; CODE XREF: sub_1406D9150+9↑j
                                        ; sub_1406D9150+20↑j
                xor     al, al
                jmp     short loc_1406D9174
sub_1406D9150   endp

; ---------------------------------------------------------------------------
byte_1406D917E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140103BB4↑o

; =============== S U B R O U T I N E =======================================


sub_1406D9184   proc near               ; CODE XREF: sub_1406D9084+58↑p
                                        ; sub_14096DEE0+43↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140820CDE SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, [rdx+3Ch]
                xor     edi, edi
                mov     rbp, rdx
                mov     rsi, rcx
                mov     r15d, edi
                cmp     [rcx+3Ch], eax
                jnz     short loc_1406D9206
                movzx   eax, word ptr [rdx+30h]
                cmp     [rcx+30h], ax
                jnz     short loc_1406D9206
                mov     eax, [rdx+34h]
                cmp     [rcx+34h], eax
                jnz     short loc_1406D9206
                lea     r14, [rcx+48h]
                mov     rbx, [r14]

loc_1406D91C8:                          ; CODE XREF: sub_1406D9184+7D↓j
                cmp     rbx, r14
                jz      short loc_1406D9203
                movzx   r8d, word ptr [rsi+30h]
                test    r8w, r8w
                jz      short loc_1406D91EE
                cmp     r8w, 2
                jbe     short loc_1406D9223
                cmp     r8w, 5
                ja      loc_140820CDE

loc_1406D91EA:                          ; CODE XREF: sub_1406D9184+147B70↓j
                lea     r15, [rbx+28h]

loc_1406D91EE:                          ; CODE XREF: sub_1406D9184+52↑j
                                        ; sub_1406D9184+A3↓j ...
                mov     rdx, r15
                mov     rcx, rbp
                call    sub_140203B44
                test    rax, rax
                jz      short loc_1406D9206
                mov     rbx, [rbx]
                jmp     short loc_1406D91C8
; ---------------------------------------------------------------------------

loc_1406D9203:                          ; CODE XREF: sub_1406D9184+47↑j
                mov     dil, 1

loc_1406D9206:                          ; CODE XREF: sub_1406D9184+29↑j
                                        ; sub_1406D9184+33↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     al, dil
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

loc_1406D9223:                          ; CODE XREF: sub_1406D9184+59↑j
                                        ; sub_1406D9184+147B5F↓j
                mov     r15, [rbx+28h]
                jmp     short loc_1406D91EE
sub_1406D9184   endp

; ---------------------------------------------------------------------------
algn_1406D9229:                         ; DATA XREF: .rdata:0000000140076E84↑o
                                        ; .pdata:0000000140103BC0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406D9230   proc near               ; CODE XREF: sub_1406D8B70+239↑p
                                        ; sub_1406B75D8+16430F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140820CFA SIZE 000000CA BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                xor     cl, cl
                xor     dl, dl
                xor     r8b, r8b
                xor     r9b, r9b
                xor     al, al
                xor     sil, sil
                xor     bpl, bpl
                xor     r10b, r10b
                cmp     rdi, rbx
                jnz     loc_140820CFA

loc_1406D9268:                          ; CODE XREF: sub_1406D9230+147B2D↓j
                                        ; sub_1406D9230+147B6D↓j ...
                mov     al, 1

loc_1406D926A:                          ; CODE XREF: sub_1406D9230+147B8F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D9230   endp

byte_1406D9280  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140076EAC↑o
                                        ; .pdata:0000000140103BCC↑o

; =============== S U B R O U T I N E =======================================


sub_1406D9288   proc near               ; CODE XREF: sub_1406D8B70+222↑p
                                        ; sub_1406D8B70+148030↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140820DC4 SIZE 000000C6 BYTES

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], r9d
                mov     [rax+10h], edx
                mov     [rax+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14d, r9d
                mov     r13, r8
                mov     edi, edx
                mov     rax, rcx
                cmp     edx, r9d
                jnz     short loc_1406D9315
                xor     ebx, ebx
                test    edx, edx
                jz      short loc_1406D92F5
                mov     r15, rcx
                lea     rsi, [r8+8]
                sub     r15, r8

loc_1406D92C9:                          ; CODE XREF: sub_1406D9288+66↓j
                mov     rdx, [rsi-8]
                mov     rcx, [r15+rsi-8]
                call    RtlEqualSid
                test    al, al
                jz      short loc_1406D92F0
                mov     ecx, [r15+rsi]
                xor     ecx, [rsi]
                test    cl, 14h
                jnz     short loc_1406D92F0
                inc     ebx
                add     rsi, 10h
                cmp     ebx, edi
                jb      short loc_1406D92C9

loc_1406D92F0:                          ; CODE XREF: sub_1406D9288+51↑j
                                        ; sub_1406D9288+5C↑j
                mov     rax, [rsp+58h+arg_0]

loc_1406D92F5:                          ; CODE XREF: sub_1406D9288+35↑j
                cmp     ebx, edi
                jnz     loc_140820DC4

loc_1406D92FD:                          ; CODE XREF: sub_1406D9288+147B9E↓j
                                        ; sub_1406D9288+147BFD↓j
                mov     al, 1

loc_1406D92FF:                          ; CODE XREF: sub_1406D9288+8F↓j
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 20h
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

loc_1406D9315:                          ; CODE XREF: sub_1406D9288+2F↑j
                                        ; sub_1406D9288+147B86↓j ...
                xor     al, al
                jmp     short loc_1406D92FF
sub_1406D9288   endp

; ---------------------------------------------------------------------------
algn_1406D9319:                         ; DATA XREF: .rdata:0000000140076ED8↑o
                                        ; .pdata:0000000140103BD8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406D9320   proc near               ; DATA XREF: .rdata:0000000140076F08↑o
                                        ; .pdata:0000000140103BE4↑o ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140820E8A SIZE 0000009F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+68h+arg_0], rax
                movzx   esi, r9b
                mov     eax, [rcx+1Ch]
                mov     rbx, rdx
                mov     rdi, rcx
                movups  [rsp+68h+var_38], xmm0
                test    al, 2
                jnz     loc_1406D9519

loc_1406D9360:                          ; CODE XREF: sub_1406D9320+208↓j
                mov     r14, [rsp+68h+arg_30]
                cmp     word ptr [r14], 0
                jz      loc_1406D9487
                mov     rax, [r14+8]
                cmp     word ptr [rax], 5Ch ; '\'
                jnz     loc_140820EB6

loc_1406D9381:                          ; CODE XREF: sub_1406D9320+16E↓j
                                        ; sub_1406D9320+147B7B↓j ...
                mov     eax, [rdi+1Ch]
                mov     rbx, [rsp+68h+arg_48]
                test    al, 8
                jnz     loc_140820EC0

loc_1406D9394:                          ; CODE XREF: sub_1406D9320+147BA9↓j
                test    al, 4
                jnz     loc_140820ECE

loc_1406D939C:                          ; CODE XREF: sub_1406D9320+147BBA↓j
                lea     r15, [rdi+8]
                test    al, 10h
                jnz     loc_1406D9533

loc_1406D93A8:                          ; CODE XREF: sub_1406D9320+23B↓j
                movzx   ebp, word ptr [r15]
                test    ebp, ebp
                jz      short loc_1406D93C5
                mov     rax, [r15+8]
                mov     ecx, ebp
                shr     rcx, 1
                cmp     word ptr [rax+rcx*2-2], 5Ch ; '\'
                jz      loc_140820EDF

loc_1406D93C5:                          ; CODE XREF: sub_1406D9320+8E↑j
                                        ; sub_1406D9320+147BC4↓j ...
                movzx   eax, word ptr [r14]
                lea     ebx, [rax+rbp]
                cmp     ebx, 0FFF0h
                ja      loc_140820F00
                mov     rsi, [rsp+68h+arg_28]
                movzx   r13d, word ptr [rsi+2]
                cmp     r13w, bx
                jbe     loc_1406D94D7
                mov     r12, [rsi+8]

loc_1406D93F3:                          ; CODE XREF: sub_1406D9320+1DF↓j
                test    ax, ax
                jz      short loc_1406D940A
                mov     rdx, [r14+8]
                mov     ecx, ebp
                add     rcx, r12
                movzx   r8d, ax
                call    memmove

loc_1406D940A:                          ; CODE XREF: sub_1406D9320+D6↑j
                mov     rdx, [r15+8]
                mov     rcx, r12
                mov     r8d, ebp
                call    memmove
                xor     ecx, ecx
                movzx   eax, bx
                shr     rax, 1
                mov     [r12+rax*2], cx
                mov     rcx, [rsi+8]
                cmp     r12, rcx
                jnz     loc_1406D9504

loc_1406D9433:                          ; CODE XREF: sub_1406D9320+1E7↓j
                                        ; sub_1406D9320+1F4↓j
                mov     rcx, [rsp+68h+arg_0]
                mov     rax, [rsp+68h+arg_50]
                mov     [rsi+8], r12
                mov     [rsi], bx
                mov     [rsi+2], r13w
                test    rcx, rcx
                jnz     loc_1406D9560
                mov     [rax], rdi
                mov     eax, [rdi+1Ch]
                test    al, 1
                jnz     loc_140820F1F
                mov     eax, 104h

loc_1406D9468:                          ; CODE XREF: sub_1406D9320+1B5↓j
                                        ; sub_1406D9320+248↓j ...
                lea     r11, [rsp+68h+var_28]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D9487:                          ; CODE XREF: sub_1406D9320+4D↑j
                cmp     rbx, cs:qword_140C259E8
                jnz     loc_1406D9381
                mov     eax, [rdi+1Ch]
                test    al, 1
                jnz     loc_140820E94

loc_1406D949F:                          ; CODE XREF: sub_1406D9320+147B81↓j
                movzx   r9d, sil
                mov     r8, rbx
                xor     edx, edx
                mov     rcx, rdi
                call    ObReferenceObjectByPointer
                mov     ebx, eax
                test    eax, eax
                js      loc_140820EA6
                mov     rcx, [rsp+68h+arg_50]
                mov     [rcx], rdi

loc_1406D94C5:                          ; CODE XREF: sub_1406D9320+230↓j
                                        ; sub_1406D9320+147B6F↓j ...
                mov     rcx, [rsp+68h+arg_0]
                test    rcx, rcx
                jnz     loc_140820F14

loc_1406D94D3:                          ; CODE XREF: sub_1406D9320+147BFA↓j
                mov     eax, ebx
                jmp     short loc_1406D9468
; ---------------------------------------------------------------------------

loc_1406D94D7:                          ; CODE XREF: sub_1406D9320+C9↑j
                lea     r13d, [rbx+2]
                mov     ecx, 1
                movzx   edx, r13w
                mov     r8d, 6D4E624Fh
                call    ExAllocatePoolWithTag
                mov     r12, rax
                test    rax, rax
                jz      loc_140820F0A
                movzx   eax, word ptr [r14]
                jmp     loc_1406D93F3
; ---------------------------------------------------------------------------

loc_1406D9504:                          ; CODE XREF: sub_1406D9320+10D↑j
                test    rcx, rcx
                jz      loc_1406D9433
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     loc_1406D9433
; ---------------------------------------------------------------------------

loc_1406D9519:                          ; CODE XREF: sub_1406D9320+3A↑j
                lea     rcx, [r8+20h]
                movzx   edx, sil
                call    RtlIsSandboxedToken
                test    al, al
                jnz     loc_1406D9360
                jmp     loc_140820E8A
; ---------------------------------------------------------------------------

loc_1406D9533:                          ; CODE XREF: sub_1406D9320+82↑j
                mov     rax, [r15]
                lea     r9, [rsp+68h+arg_0]
                mov     rdx, [rdi+10h]
                lea     r8, [rsp+68h+var_38]
                mov     rcx, rdi
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      loc_1406D94C5
                lea     r15, [rsp+68h+var_38]
                jmp     loc_1406D93A8
; ---------------------------------------------------------------------------

loc_1406D9560:                          ; CODE XREF: sub_1406D9320+12F↑j
                mov     [rax], rcx
                mov     eax, 118h
                jmp     loc_1406D9468
sub_1406D9320   endp

; ---------------------------------------------------------------------------
byte_1406D956D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140076F08↑o
                                        ; .pdata:0000000140103BE4↑o

; =============== S U B R O U T I N E =======================================


sub_1406D9574   proc near               ; CODE XREF: sub_1406D6AE8+65C↑p
                                        ; DATA XREF: .pdata:0000000140103BF0↑o
                sub     rsp, 28h
                lea     rcx, dword_140C47A80
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D9574   endp

algn_1406D9598:                         ; DATA XREF: .pdata:0000000140103BF0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406D95A0   proc near               ; CODE XREF: sub_1406D6AE8+62F↑p
                                        ; DATA XREF: .pdata:0000000140103BFC↑o
                sub     rsp, 28h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140C47A80
                call    ExAcquireFastMutexUnsafe
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D95A0   endp

byte_1406D95C6  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140103BFC↑o

; =============== S U B R O U T I N E =======================================


sub_1406D95CC   proc near               ; CODE XREF: sub_1406D6AE8+24C↑p
                                        ; sub_1406E2D40+1E4↓p ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820F2A SIZE 0000003A BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     rax, cs:qword_140C48640
                xor     r14d, r14d
                mov     rsi, rdx
                mov     [r11-20h], r14
                xor     r9d, r9d
                mov     [r11+18h], r14d
                mov     [r11+20h], r14
                mov     r8, [rax]
                lea     edx, [r14+1]
                lea     rax, [r11+20h]
                mov     [r11-28h], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      loc_1406D96BE
                mov     ebp, 110h

loc_1406D961E:                          ; CODE XREF: sub_1406D95CC+147981↓j
                mov     r8d, 62534D43h
                mov     rdx, rbp
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1406D96B2
                mov     rcx, [rsp+48h+arg_18]
                lea     r9, [rsp+48h+arg_10]
                mov     r8d, ebp
                mov     [rsp+48h+var_28], r14b
                mov     rdx, rax
                call    sub_1406C14C0
                mov     ebx, eax
                test    eax, eax
                js      loc_140820F2A
                mov     [rsi], r14w
                movzx   eax, word ptr [rdi]
                mov     ecx, eax
                mov     [rsi+2], ax
                call    sub_140704930
                mov     [rsi+8], rax
                test    rax, rax
                jz      short loc_1406D96D2
                mov     rdx, rdi
                mov     rcx, rsi
                call    RtlAppendUnicodeStringToString
                movzx   edx, word ptr [rsi]
                mov     ebx, eax
                test    dx, dx
                jz      short loc_1406D96A3
                mov     r8, [rsi+8]

loc_1406D9691:                          ; CODE XREF: sub_1406D95CC+14798D↓j
                movzx   eax, dx
                shr     rax, 1
                cmp     [r8+rax*2-2], r14w
                jz      loc_140820F52

loc_1406D96A3:                          ; CODE XREF: sub_1406D95CC+BF↑j
                                        ; sub_1406D95CC+10B↓j ...
                test    rdi, rdi
                jz      short loc_1406D96B2
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1406D96B2:                          ; CODE XREF: sub_1406D95CC+6B↑j
                                        ; sub_1406D95CC+DA↑j
                mov     rcx, [rsp+48h+arg_18]
                call    PsDereferenceSiloContext
                mov     eax, ebx

loc_1406D96BE:                          ; CODE XREF: sub_1406D95CC+47↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D96D2:                          ; CODE XREF: sub_1406D95CC+AA↑j
                mov     ebx, 0C0000017h
                jmp     short loc_1406D96A3
sub_1406D95CC   endp

; ---------------------------------------------------------------------------
algn_1406D96D9:                         ; DATA XREF: .rdata:0000000140076F54↑o
                                        ; .pdata:0000000140103C08↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_1406D96E0   proc near               ; CODE XREF: sub_14072078C+48↓p
                                        ; sub_140796A54+9F0↓p
                                        ; DATA XREF: ...

var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_120         = dword ptr -120h
var_11C         = byte ptr -11Ch
var_118         = dword ptr -118h
var_110         = qword ptr -110h
var_108         = xmmword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = word ptr -0C8h
var_C6          = word ptr -0C6h
var_C0          = qword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = byte ptr -68h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820F64 SIZE 00000408 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_38], rax
                xor     r13d, r13d
                mov     [rsp+160h+var_110], rcx
                xorps   xmm0, xmm0
                mov     [rsp+160h+var_120], r13d
                mov     r14, rdx
                mov     [rbp+60h+var_C0], r13
                mov     rsi, rcx
                mov     [rbp+60h+var_C6], r13w
                xorps   xmm1, xmm1
                mov     [rsp+160h+var_F8], r13
                xor     edx, edx
                mov     [rbp+60h+var_A4], r13d
                lea     rcx, [rsp+160h+var_108]
                mov     [rbp+60h+var_8C], r13d
                movups  [rbp+60h+var_78], xmm0
                mov     [rsp+160h+var_118], 8
                movups  [rsp+160h+var_F0], xmm0
                movups  [rsp+160h+var_108], xmm1
                movups  [rbp+60h+var_B8], xmm0
                call    RtlInitUnicodeString
                xor     edx, edx
                lea     rcx, [rsp+160h+var_F0]
                call    RtlInitUnicodeString
                mov     edx, [r14+40h]
                lea     r12d, [r13+1]
                mov     ecx, edx
                and     ecx, 9DECE5FFh
                test    cl, 3
                jz      loc_1406D9F89

loc_1406D9784:                          ; CODE XREF: sub_1406D96E0+8B1↓j
                                        ; sub_1406D96E0+8BA↓j
                mov     r15d, ecx
                mov     eax, ecx
                bts     r15d, 7
                mov     r8d, 1000000h
                and     eax, 40000h
                cmovz   r15d, ecx
                bt      r15d, 13h
                jb      loc_140820F64

loc_1406D97A8:                          ; CODE XREF: sub_1406D96E0+147887↓j
                                        ; sub_1406D96E0+147892↓j
                mov     r10d, 400h
                mov     r9d, 100h
                test    r10d, r15d
                jnz     loc_1406DA1C8

loc_1406D97BD:                          ; CODE XREF: sub_1406D96E0+B24↓j
                                        ; sub_1406D96E0+1478A4↓j
                mov     eax, r15d
                and     eax, 3
                cmp     al, 3
                jz      loc_1406D9F7F
                mov     ecx, 0C000h
                mov     eax, r15d
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_1406D9F7F
                test    r15d, 700h
                jnz     short loc_1406D97F3
                cmp     [r14+88h], r13
                jz      loc_1406D9F7F

loc_1406D97F3:                          ; CODE XREF: sub_1406D96E0+104↑j
                mov     eax, r15d
                and     eax, 6
                cmp     al, 6
                jz      loc_1406D9F7F
                mov     ecx, r15d
                and     ecx, 2
                jnz     loc_1406D9F9F

loc_1406D980D:                          ; CODE XREF: sub_1406D96E0+8C3↓j
                mov     eax, 0Ch
                test    r15b, 20h
                jnz     loc_1406D9F71

loc_1406D981C:                          ; CODE XREF: sub_1406D96E0+899↓j
                test    r15b, 40h
                jnz     loc_1406DA0D1

loc_1406D9826:                          ; CODE XREF: sub_1406D96E0+A04↓j
                                        ; sub_1406D96E0+A1A↓j
                mov     eax, 0C00000h
                mov     ebx, r15d
                and     ebx, eax
                cmp     ebx, eax
                jz      loc_1406D9F7F
                test    r15b, 8
                jnz     loc_1406DA019

loc_1406D9842:                          ; CODE XREF: sub_1406D96E0+9B4↓j
                mov     ecx, 3000000h
                mov     eax, edx
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_1406D9F7F
                mov     ecx, edx
                and     ecx, r10d
                bt      edx, 1Ah
                jb      loc_140820F89

loc_1406D9862:                          ; CODE XREF: sub_1406D96E0+1478B1↓j
                bt      edx, 10h
                jb      loc_1406D9F7F
                test    byte ptr [r14+50h], 4
                jnz     loc_140820F96

loc_1406D9877:                          ; CODE XREF: sub_1406D96E0+1478DA↓j
                mov     rcx, r14
                call    sub_1406DD058
                mov     edi, eax
                test    eax, eax
                js      loc_1408211E6
                mov     ecx, r15d
                xor     edx, edx
                and     ecx, 100h
                bts     ecx, 0Ah
                shr     ecx, 3
                mov     r13d, ecx
                or      r13d, 40h
                cmp     [r14+80h], dx
                cmovz   r13d, ecx
                lea     rcx, [r14+90h]
                cmp     [rcx], dx
                jbe     loc_1406D9F7F
                cmp     [r14+98h], rdx
                jz      loc_1406D9F7F
                lea     rdx, [rsp+160h+var_108]
                call    sub_1406D3E6C
                mov     edi, eax
                test    eax, eax
                jnz     loc_1408211E6
                lea     r8, [rsp+160h+var_120]
                mov     rcx, rsi
                lea     rdx, [rsp+160h+var_108]
                call    sub_1406DCFC4
                xor     r10d, r10d
                test    eax, eax
                jz      loc_140820FBF
                mov     rax, [r14+18h]
                sub     rax, qword ptr cs:xmmword_14000A340
                jnz     short loc_1406D9914
                mov     rax, [r14+20h]
                sub     rax, qword ptr cs:xmmword_14000A340+8

loc_1406D9914:                          ; CODE XREF: sub_1406D96E0+227↑j
                test    rax, rax
                jz      loc_1406D9FF4
                movups  xmm0, xmmword ptr [r14+18h]
                movdqu  [rbp+60h+var_78], xmm0

loc_1406D9927:                          ; CODE XREF: sub_1406D96E0+924↓j
                test    ebx, ebx
                jnz     short loc_1406D995F
                mov     rax, gs:188h
                cmp     [rax+232h], r10b
                jz      short loc_1406D995A
                mov     rcx, gs:188h
                mov     rcx, [rcx+0B8h]
                call    sub_1402A9C50
                test    eax, eax
                jnz     loc_1406DA00F

loc_1406D995A:                          ; CODE XREF: sub_1406D96E0+25B↑j
                bts     r15d, 17h

loc_1406D995F:                          ; CODE XREF: sub_1406D96E0+249↑j
                                        ; sub_1406D96E0+934↓j
                mov     rdi, [rsi+1C8h]
                mov     rbx, qword ptr [rbp+60h+var_78]
                mov     rsi, qword ptr [rbp+60h+var_78+8]
                mov     rax, rbx
                sub     rax, cs:qword_14000AD48
                mov     [rbp+60h+var_D8], rdi
                jnz     short loc_1406D9988
                mov     rax, rsi
                sub     rax, cs:qword_14000AD50

loc_1406D9988:                          ; CODE XREF: sub_1406D96E0+29C↑j
                test    rax, rax
                jz      loc_1406DA20F
                mov     rax, rbx
                sub     rax, cs:qword_14000ADD8
                jnz     short loc_1406D99A7
                mov     rax, rsi
                sub     rax, cs:qword_14000ADE0

loc_1406D99A7:                          ; CODE XREF: sub_1406D96E0+2BB↑j
                test    rax, rax
                jz      loc_1406DA20F
                mov     rcx, rbx
                sub     rcx, qword ptr cs:xmmword_14098F2C0
                jnz     short loc_1406D99C6
                mov     rcx, rsi
                sub     rcx, qword ptr cs:xmmword_14098F2C0+8

loc_1406D99C6:                          ; CODE XREF: sub_1406D96E0+2DA↑j
                test    rcx, rcx
                jz      loc_140820FC9
                mov     rax, rbx
                sub     rax, cs:qword_14000ADF8
                jnz     short loc_1406D99E5
                mov     rax, rsi
                sub     rax, cs:qword_14000AE00

loc_1406D99E5:                          ; CODE XREF: sub_1406D96E0+2F9↑j
                test    rax, rax
                jz      loc_1406DA27F
                mov     rcx, qword ptr [rsp+160h+var_108+8]
                lea     rdx, aEventlogSecuri ; "Eventlog-Security"
                call    _wcsicmp
                test    eax, eax
                jz      loc_140821026

loc_1406D9A07:                          ; CODE XREF: sub_1406D96E0+147965↓j
                mov     rcx, [rsp+160h+var_110]
                mov     edi, 4
                mov     eax, [rcx+10h]
                cmp     eax, edi
                jbe     short loc_1406D9A3C

loc_1406D9A18:                          ; CODE XREF: sub_1406D96E0+35A↓j
                xor     r8d, r8d
                mov     edx, edi
                call    sub_140608410
                xor     edx, edx
                test    rax, rax
                jnz     loc_1406D9DA3

loc_1406D9A2D:                          ; CODE XREF: sub_1406D96E0+6EA↓j
                mov     rcx, [rsp+160h+var_110]
                add     edi, r12d
                mov     eax, [rcx+10h]
                cmp     edi, eax
                jb      short loc_1406D9A18

loc_1406D9A3C:                          ; CODE XREF: sub_1406D96E0+336↑j
                mov     rbx, rcx

loc_1406D9A3F:                          ; CODE XREF: sub_1406D96E0+147977↓j
                cmp     edi, eax
                jb      loc_140820FBF
                mov     [rsp+160h+var_120], 4
                cmp     eax, 4
                jbe     short loc_1406D9A7D
                mov     r8, [rbp+60h+var_D8]
                mov     rdx, r8
                or      rdx, r12

loc_1406D9A5E:                          ; CODE XREF: sub_1406D96E0+39B↓j
                mov     ecx, [rsp+160h+var_120]
                mov     rax, r12
                lock cmpxchg [r8+rcx*8], rdx
                jz      short loc_1406D9A7D
                mov     ecx, [rsp+160h+var_120]
                add     ecx, r12d
                mov     [rsp+160h+var_120], ecx
                cmp     ecx, [rbx+10h]
                jb      short loc_1406D9A5E

loc_1406D9A7D:                          ; CODE XREF: sub_1406D96E0+372↑j
                                        ; sub_1406D96E0+38B↑j
                mov     r9d, [rbx+10h]
                cmp     [rsp+160h+var_120], r9d
                jnb     loc_14082105C

loc_1406D9A8C:                          ; CODE XREF: sub_1406D96E0+BF4↓j
                mov     eax, [rsp+160h+var_120]
                mov     edx, r12d
                mov     rcx, [rbx+1C0h]
                mov     rcx, [rcx+rax*8]
                call    ExAcquireRundownProtectionCacheAwareEx
                lea     rdx, [rsp+160h+var_F8]
                lea     rcx, [rbp+60h+var_78]
                call    sub_1406298E0
                mov     rcx, [rsp+160h+var_F8]
                xor     r8d, r8d
                mov     edx, r13d
                call    sub_140609060
                xor     r13d, r13d
                mov     edi, eax
                test    eax, eax
                js      loc_1408211C2
                mov     rax, cs:qword_14000ADE8
                sub     rax, qword ptr [rbp+60h+var_78]
                jnz     short loc_1406D9AE6
                mov     rax, cs:qword_14000ADF0
                sub     rax, qword ptr [rbp+60h+var_78+8]

loc_1406D9AE6:                          ; CODE XREF: sub_1406D96E0+3F9↑j
                test    rax, rax
                jz      loc_1408210F6
                mov     r8d, 10h
                lea     rdx, [rbp+60h+var_78]
                lea     rcx, qword_14000AE18
                call    memcmp
                neg     eax
                sbb     cl, cl
                and     cl, 8
                add     cl, r12b
                mov     [rsp+160h+var_11C], cl

loc_1406D9B13:                          ; CODE XREF: sub_1406D96E0+147A1B↓j
                test    dword ptr [r14+40h], 2000000h
                jnz     loc_1406DA2D9

loc_1406D9B21:                          ; CODE XREF: sub_1406D96E0+BFE↓j
                                        ; sub_1406D96E0+C3C↓j
                mov     edx, r15d
                lea     rcx, [rsp+160h+var_108]
                call    sub_1406DCBDC
                mov     edx, 6
                mov     rcx, r14
                mov     rsi, rax
                call    sub_1406DCA1C
                test    rax, rax
                jnz     loc_14082111B

loc_1406D9B47:                          ; CODE XREF: sub_1406D96E0+147A4A↓j
                                        ; sub_1406D96E0+147A64↓j
                lea     rcx, [rsp+160h+var_108]
                call    RtlFreeUnicodeString
                test    rsi, rsi
                jz      loc_140821245
                movups  xmm0, [rbp+60h+var_78]
                movdqu  xmmword ptr [rsi+124h], xmm0
                mov     eax, [r14+3Ch]
                mov     [rsi+134h], eax
                test    [r14+50h], r12b
                jnz     loc_14082124F

loc_1406D9B7A:                          ; CODE XREF: sub_1406D96E0+147B77↓j
                mov     eax, [r14+28h]
                mov     [rsi+0D8h], eax
                test    byte ptr [r14+50h], 2
                jnz     loc_14082125C

loc_1406D9B8F:                          ; CODE XREF: sub_1406D96E0+147B8E↓j
                test    byte ptr [r14+50h], 8
                jnz     loc_140821273

loc_1406D9B9A:                          ; CODE XREF: sub_1406D96E0+147B9B↓j
                mov     eax, [r14+44h]
                test    eax, eax
                jnz     loc_1406D9FB8
                bt      r15d, 8
                jb      loc_1406DA105

loc_1406D9BB1:                          ; CODE XREF: sub_1406D96E0+8DE↓j
                                        ; sub_1406D96E0+A3D↓j
                mov     eax, [r14+4Ch]
                mov     ecx, eax
                test    eax, eax
                jnz     loc_140821280

loc_1406D9BBF:                          ; CODE XREF: sub_1406D96E0+147BAB↓j
                                        ; sub_1406D96E0+147BB8↓j
                mov     eax, [rsp+160h+var_120]
                mov     [rsi+0E4h], ecx
                lea     rcx, [r14+80h]
                mov     [rsi], eax
                mov     [rsi+438h], rbx
                cmp     [rcx], r13w
                jbe     short loc_1406D9BFC
                cmp     [r14+88h], r13
                jz      short loc_1406D9BFC
                lea     rdx, [rsp+160h+var_F0]
                call    sub_1406D3E6C
                mov     edi, eax
                test    eax, eax
                js      loc_14082114A

loc_1406D9BFC:                          ; CODE XREF: sub_1406D96E0+4FD↑j
                                        ; sub_1406D96E0+506↑j
                mov     eax, [r14+70h]
                lea     rdi, [rsi+138h]
                test    al, 2
                jnz     loc_1406D9FC3

loc_1406D9C0F:                          ; CODE XREF: sub_1406D96E0+8ED↓j
                mov     eax, [rsi+0Ch]
                lea     r13, [rsi+0A8h]
                movups  xmm0, [rsp+160h+var_F0]
                xor     edx, edx
                lea     rcx, [rsp+160h+var_F0]
                test    al, 8
                jnz     loc_1406DA09F
                movdqu  xmmword ptr [r13+0], xmm0
                call    RtlInitUnicodeString

loc_1406D9C38:                          ; CODE XREF: sub_1406D96E0+9EC↓j
                mov     rcx, gs:188h
                lea     r9, [rsi+2D0h]
                mov     eax, 0Ch
                mov     [rbp+60h+var_CC], 2
                xor     r8d, r8d
                mov     [rbp+60h+var_D0], eax
                lea     rdx, [rbp+60h+var_D0]
                mov     [rbp+60h+var_C8], 101h
                call    SeCreateClientSecurity
                mov     edi, eax
                test    eax, eax
                js      loc_14082114A
                test    dword ptr [rsi+0Ch], 100h
                jnz     loc_1406D9FAB
                lock and dword ptr [rsi+340h], 0FFFFFFF7h

loc_1406D9C88:                          ; CODE XREF: sub_1406D96E0+8D3↓j
                mov     eax, [r14+70h]
                test    al, 2
                jnz     loc_1406D9FD2

loc_1406D9C94:                          ; CODE XREF: sub_1406D96E0+8FE↓j
                test    r12b, al
                jnz     loc_1406D9FE3

loc_1406D9C9D:                          ; CODE XREF: sub_1406D96E0+90F↓j
                mov     ecx, 4000h
                test    ecx, eax
                jnz     loc_1406DA327

loc_1406D9CAA:                          ; CODE XREF: sub_1406D96E0+C4E↓j
                mov     rcx, rsi
                call    sub_1406DCA60
                mov     edx, [rsp+160h+var_118]
                cmp     edx, 8
                jb      loc_1406DA122

loc_1406D9CBF:                          ; CODE XREF: sub_1406D96E0+A8C↓j
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1406DC9DC
                xor     edx, edx
                mov     edi, eax
                test    eax, eax
                js      loc_14082114A
                mov     eax, [r14+34h]
                test    eax, eax
                jz      short loc_1406D9CE4
                mov     [rsi+0F0h], eax

loc_1406D9CE4:                          ; CODE XREF: sub_1406D96E0+5FC↑j
                mov     eax, [r14+38h]
                test    eax, eax
                jz      short loc_1406D9CF2
                mov     [rsi+0FCh], eax

loc_1406D9CF2:                          ; CODE XREF: sub_1406D96E0+60A↑j
                mov     eax, [r14+30h]
                test    eax, eax
                jz      short loc_1406D9D0D
                mov     ecx, 4000h
                cmp     eax, ecx
                ja      loc_1408212A5

loc_1406D9D07:                          ; CODE XREF: sub_1406D96E0+147BCB↓j
                shl     eax, 0Ah
                mov     [rsi+4], eax

loc_1406D9D0D:                          ; CODE XREF: sub_1406D96E0+618↑j
                test    byte ptr [r14+50h], 4
                jnz     loc_1408212B0

loc_1406D9D18:                          ; CODE XREF: sub_1406D96E0+147BEB↓j
                cmp     [r13+0], dx
                jbe     short loc_1406D9D48
                lock or [rsi+344h], r12d
                mov     rax, gs:188h
                mov     rcx, rsi
                mov     [rsi+30h], rax
                call    sub_1406DB2B8
                xor     edx, edx
                mov     edi, eax
                test    eax, eax
                js      loc_14082114A

loc_1406D9D48:                          ; CODE XREF: sub_1406D96E0+63D↑j
                mov     ecx, [rsi+4]
                mov     r8d, 1000h
                cmp     ecx, r8d
                jb      loc_1406DA333

loc_1406D9D5A:                          ; CODE XREF: sub_1406D96E0+C65↓j
                                        ; sub_1406D96E0+147BFB↓j
                mov     eax, ecx
                mov     edx, 0FFFFh
                sub     rax, 48h ; 'H'
                cmp     rax, rdx
                jnb     short loc_1406D9D6D
                lea     edx, [rcx-48h]

loc_1406D9D6D:                          ; CODE XREF: sub_1406D96E0+688↑j
                and     edx, 0FFFFFFF8h
                mov     rcx, rsi
                mov     [rsi+8], edx
                call    sub_1406DA3B0
                xor     r13d, r13d
                mov     edi, eax
                test    eax, eax
                js      loc_1408212E0
                mov     ecx, [rsi+134h]
                test    ecx, ecx
                jz      short loc_1406D9DCF
                test    dword ptr [rsi+0Ch], 2000h
                jnz     short loc_1406D9DCF
                mov     edx, ecx
                shl     rdx, 14h
                jmp     short loc_1406D9DD4
; ---------------------------------------------------------------------------

loc_1406D9DA3:                          ; CODE XREF: sub_1406D96E0+347↑j
                mov     rcx, [rax+124h]
                sub     rcx, rbx
                jnz     short loc_1406D9DB9
                mov     rcx, [rax+12Ch]
                sub     rcx, rsi

loc_1406D9DB9:                          ; CODE XREF: sub_1406D96E0+6CD↑j
                test    rcx, rcx
                mov     rcx, rax
                jz      loc_14082104A
                call    sub_1406084E4
                jmp     loc_1406D9A2D
; ---------------------------------------------------------------------------

loc_1406D9DCF:                          ; CODE XREF: sub_1406D96E0+6B0↑j
                                        ; sub_1406D96E0+6B9↑j
                mov     edx, 0A00000h

loc_1406D9DD4:                          ; CODE XREF: sub_1406D96E0+6C1↑j
                mov     eax, [rsi+0FCh]
                imul    eax, [rsi+4]
                lea     ecx, [rax+rax]
                cmp     rdx, rcx
                cmovbe  rdx, rcx
                mov     rcx, rsi
                mov     [rsi+1B0h], rdx
                mov     rdx, [rsp+160h+var_F8]
                call    sub_1406DA358
                lea     rcx, [rsp+160h+var_F8]
                mov     edi, eax
                call    sub_140629E14
                test    edi, edi
                js      loc_1408212E0
                lock add [rbx+101Ch], r12d
                mov     r15, [rsp+160h+var_110]
                mov     edx, r12d
                mov     ebx, [rsp+160h+var_120]
                mov     rcx, [r15+1C0h]
                mov     rcx, [rcx+rbx*8]
                call    ExAcquireRundownProtectionCacheAwareEx
                test    dword ptr [rsi+0Ch], 400h
                jnz     loc_1406D9EC9
                xorps   xmm0, xmm0
                mov     [rbp+60h+var_A8], 30h ; '0'
                movdqu  [rbp+60h+var_88], xmm0
                mov     [rbp+60h+var_A0], r13
                mov     [rbp+60h+var_90], 200h
                mov     [rbp+60h+var_98], r13
                call    PsGetCurrentServerSilo
                mov     qword ptr [rbp+60h+var_B8], rax
                lea     r8, [rbp+60h+var_A8]
                lea     rax, [rbp+60h+var_B8]
                mov     qword ptr [rbp+60h+var_B8+8], rsi
                mov     [rsp+160h+var_130], rax
                lea     rcx, [rbp+60h+var_C0]
                lea     rax, sub_1406DA480
                xor     r9d, r9d
                mov     [rsp+160h+var_138], rax
                mov     edx, 1FFFFFh
                mov     [rsp+160h+var_140], r13
                call    PsCreateSystemThread
                mov     edi, eax
                test    eax, eax
                js      loc_1408212ED
                mov     rcx, [rbp+60h+var_C0]
                call    ZwClose
                lea     rcx, [rsi+1D8h]
                mov     [rsp+160h+var_140], r13
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     edi, eax

loc_1406D9EC9:                          ; CODE XREF: sub_1406D96E0+75B↑j
                mov     rcx, cs:qword_140C19990
                lea     rdx, qword_14000AE08
                call    EtwEventEnabled
                test    al, al
                jnz     loc_140821326

loc_1406D9EE4:                          ; CODE XREF: sub_1406D96E0+147C56↓j
                lea     rcx, [rsi+288h]
                mov     [rsp+160h+var_140], r13
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     rcx, [rbp+60h+var_D8]
                xor     r8d, r8d
                mov     rax, rsi
                xchg    rax, [rcx+rbx*8]
                mov     rcx, rsi
                lea     edx, [r8+5]
                call    sub_1406AF6DC
                test    dword ptr [rsi+0Ch], 2000000h
                jnz     loc_1406DA171

loc_1406D9F24:                          ; CODE XREF: sub_1406D96E0+ADD↓j
                                        ; sub_1406D96E0+147C6D↓j
                movzx   eax, [rsp+160h+var_11C]
                cmp     al, 9
                jnz     loc_140821355

loc_1406D9F31:                          ; CODE XREF: sub_1406D96E0+147C87↓j
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1406D7224
                mov     dl, r12b
                mov     rcx, rsi
                call    sub_1406084E4

loc_1406D9F47:                          ; CODE XREF: sub_1406D96E0+147B60↓j
                                        ; sub_1406D96E0+147C41↓j
                mov     eax, edi
                mov     rcx, [rbp+60h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_10]
                add     rsp, 130h
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

loc_1406D9F71:                          ; CODE XREF: sub_1406D96E0+136↑j
                cmp     [r14+3Ch], r13d
                jz      short loc_1406D9F7F
                test    al, dl
                jz      loc_1406D981C

loc_1406D9F7F:                          ; CODE XREF: sub_1406D96E0+E5↑j
                                        ; sub_1406D96E0+F7↑j ...
                mov     edi, 0C000000Dh
                jmp     loc_1408211E6
; ---------------------------------------------------------------------------

loc_1406D9F89:                          ; CODE XREF: sub_1406D96E0+9E↑j
                test    cl, 8
                jnz     short loc_1406D9F97
                test    cl, 4
                jz      loc_1406D9784

loc_1406D9F97:                          ; CODE XREF: sub_1406D96E0+8AC↑j
                or      ecx, r12d
                jmp     loc_1406D9784
; ---------------------------------------------------------------------------

loc_1406D9F9F:                          ; CODE XREF: sub_1406D96E0+127↑j
                cmp     [r14+3Ch], r13d
                jnz     loc_1406D980D
                jmp     short loc_1406D9F7F
; ---------------------------------------------------------------------------

loc_1406D9FAB:                          ; CODE XREF: sub_1406D96E0+59A↑j
                lock or dword ptr [rsi+340h], 8
                jmp     loc_1406D9C88
; ---------------------------------------------------------------------------

loc_1406D9FB8:                          ; CODE XREF: sub_1406D96E0+4C0↑j
                mov     [rsi+0E0h], eax
                jmp     loc_1406D9BB1
; ---------------------------------------------------------------------------

loc_1406D9FC3:                          ; CODE XREF: sub_1406D96E0+529↑j
                mov     eax, [r14+60h]
                mov     [rdi], eax
                mov     [r14+60h], r13d
                jmp     loc_1406D9C0F
; ---------------------------------------------------------------------------

loc_1406D9FD2:                          ; CODE XREF: sub_1406D96E0+5AE↑j
                lock or dword ptr [rsi+340h], 2
                mov     eax, [r14+70h]
                jmp     loc_1406D9C94
; ---------------------------------------------------------------------------

loc_1406D9FE3:                          ; CODE XREF: sub_1406D96E0+5B7↑j
                lock or [rsi+340h], r12d
                mov     eax, [r14+70h]
                jmp     loc_1406D9C9D
; ---------------------------------------------------------------------------

loc_1406D9FF4:                          ; CODE XREF: sub_1406D96E0+237↑j
                lea     rcx, [rbp+60h+var_78]
                call    ExUuidCreate
                xor     r10d, r10d
                mov     edi, eax
                test    eax, eax
                jns     loc_1406D9927
                jmp     loc_1408211E6
; ---------------------------------------------------------------------------

loc_1406DA00F:                          ; CODE XREF: sub_1406D96E0+274↑j
                bts     r15d, 16h
                jmp     loc_1406D995F
; ---------------------------------------------------------------------------

loc_1406DA019:                          ; CODE XREF: sub_1406D96E0+15C↑j
                cmp     [r14+88h], r13
                jz      loc_1406D9F7F
                test    ecx, ecx
                jnz     loc_1406D9F7F
                cmp     [r14+3Ch], r13d
                jz      loc_1406D9F7F
                mov     eax, [r14+70h]
                test    al, 2
                jnz     loc_1406D9F7F
                bt      edx, 19h
                jb      loc_1406D9F7F
                mov     rax, [r14+18h]
                sub     rax, cs:qword_14000AD48
                jnz     short loc_1406DA066
                mov     rax, [r14+20h]
                sub     rax, cs:qword_14000AD50

loc_1406DA066:                          ; CODE XREF: sub_1406D96E0+979↑j
                test    rax, rax
                jz      loc_1406D9F7F
                mov     rax, [r14+18h]
                sub     rax, cs:qword_14000ADD8
                jnz     short loc_1406DA087
                mov     rax, [r14+20h]
                sub     rax, cs:qword_14000ADE0

loc_1406DA087:                          ; CODE XREF: sub_1406D96E0+99A↑j
                test    rax, rax
                jz      loc_1406D9F7F
                test    r15b, 4
                jz      loc_1406D9842
                jmp     loc_1406D9F7F
; ---------------------------------------------------------------------------

loc_1406DA09F:                          ; CODE XREF: sub_1406D96E0+547↑j
                lea     rbx, [rsi+0B8h]
                movdqu  xmmword ptr [rbx], xmm0
                call    RtlInitUnicodeString
                mov     r8, r13
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1406DDCC4
                mov     edi, eax
                test    eax, eax
                js      loc_14082114A
                mov     rbx, [rsp+160h+var_110]
                jmp     loc_1406D9C38
; ---------------------------------------------------------------------------

loc_1406DA0D1:                          ; CODE XREF: sub_1406D96E0+140↑j
                mov     eax, [r14+70h]
                test    al, 2
                jz      loc_1406D9F7F
                test    r15d, 402h
                jnz     loc_1406D9826
                test    r9d, r15d
                jz      loc_1406D9F7F
                cmp     [r14+88h], r13
                jz      loc_1406D9826
                jmp     loc_1406D9F7F
; ---------------------------------------------------------------------------

loc_1406DA105:                          ; CODE XREF: sub_1406D96E0+4CB↑j
                mov     al, r15b
                and     al, 10h
                neg     al
                sbb     ecx, ecx
                and     ecx, 3E7h
                add     ecx, r12d
                mov     [rsi+0E0h], ecx
                jmp     loc_1406D9BB1
; ---------------------------------------------------------------------------

loc_1406DA122:                          ; CODE XREF: sub_1406D96E0+5D9↑j
                bts     dword ptr [rsi+0Ch], 19h
                mov     [rsi+342h], dl
                cmp     edx, r12d
                ja      short loc_1406DA13A
                lock or dword ptr [rsi+340h], 20h

loc_1406DA13A:                          ; CODE XREF: sub_1406D96E0+A50↑j
                mov     al, byte ptr [rsp+160h+var_120]
                mov     [rbx+rdx*2+1070h], al
                mov     eax, [rsi+0D8h]
                sub     eax, r12d
                cmp     eax, 4
                jnb     loc_14082129D
                mov     al, [rsi+0D8h]

loc_1406DA15D:                          ; CODE XREF: sub_1406D96E0+147BC0↓j
                mov     [rbx+rdx*2+1071h], al
                lock bts [rbx+1080h], edx
                jmp     loc_1406D9CBF
; ---------------------------------------------------------------------------

loc_1406DA171:                          ; CODE XREF: sub_1406D96E0+83E↑j
                cmp     r15, cs:qword_140CFB008
                jnz     short loc_1406DA1AE
                mov     r8b, r12b
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_140793DA8
                mov     edi, eax
                test    eax, eax
                js      loc_14082133B
                mov     eax, [rsp+160h+var_118]
                lea     rcx, [rax+rax*4]
                lea     rax, unk_140C198E0
                mov     [rax+rcx*4], r12w
                mov     dword ptr [rax+rcx*4+4], 2Ah ; '*'

loc_1406DA1AE:                          ; CODE XREF: sub_1406D96E0+A98↑j
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_14079251C
                mov     edi, eax
                test    eax, eax
                jns     loc_1406D9F24
                jmp     loc_14082133B
; ---------------------------------------------------------------------------

loc_1406DA1C8:                          ; CODE XREF: sub_1406D96E0+D7↑j
                cmp     [r14+88h], r13
                jnz     loc_1406D9F7F
                test    r15d, 4000Fh
                jnz     loc_1406D9F7F
                mov     ecx, r15d
                mov     eax, r15d
                btr     ecx, 8
                and     eax, r9d
                cmovz   ecx, r15d
                mov     r15d, ecx
                cmp     [r14+44h], r13d
                jnz     loc_140820F77

loc_1406DA200:                          ; CODE XREF: sub_1406D96E0+14789B↓j
                cmp     [r14+4Ch], r13d
                jz      loc_1406D97BD
                jmp     loc_140820F80
; ---------------------------------------------------------------------------

loc_1406DA20F:                          ; CODE XREF: sub_1406D96E0+2AB↑j
                                        ; sub_1406D96E0+2CA↑j
                lea     rcx, [rsp+160h+var_108]
                call    RtlFreeUnicodeString
                sub     rbx, cs:qword_14000AD48
                jnz     short loc_1406DA22C
                mov     rbx, rsi
                sub     rbx, cs:qword_14000AD50

loc_1406DA22C:                          ; CODE XREF: sub_1406D96E0+B40↑j
                xor     esi, esi
                test    rbx, rbx
                jz      loc_1408210DA
                lea     ebx, [rsi+2]
                mov     [rsp+160h+var_118], r12d
                lea     rdx, aCircularKernel ; "Circular Kernel Context Logger"

loc_1406DA246:                          ; CODE XREF: sub_1406D96E0+147A07↓j
                lea     rcx, [rsp+160h+var_108]
                mov     [rsp+160h+var_120], ebx
                call    RtlCreateUnicodeString
                test    al, al
                jz      loc_1408210EC
                bts     r15d, 7
                bt      r15d, 18h
                jb      loc_1406D9F7F
                mov     rdx, rdi
                mov     ecx, ebx
                or      rdx, r12
                mov     rax, r12
                lock cmpxchg [rdi+rcx*8], rdx
                jmp     short loc_1406DA2C9
; ---------------------------------------------------------------------------

loc_1406DA27F:                          ; CODE XREF: sub_1406D96E0+308↑j
                mov     [rsp+160h+var_120], 3
                bt      r15d, 18h
                jb      loc_1406D9F7F
                lea     rcx, [rsp+160h+var_108]
                call    RtlFreeUnicodeString
                lea     rdx, aEventlogSecuri ; "Eventlog-Security"
                lea     rcx, [rsp+160h+var_108]
                call    RtlCreateUnicodeString
                test    al, al
                jz      loc_1408210EC
                bts     r15d, 7
                mov     rcx, rdi
                or      rcx, r12
                mov     rax, r12
                lock cmpxchg [rdi+18h], rcx

loc_1406DA2C9:                          ; CODE XREF: sub_1406D96E0+B9D↑j
                                        ; sub_1406D96E0+147941↓j
                jnz     loc_140820FBF
                mov     rbx, [rsp+160h+var_110]
                jmp     loc_1406D9A8C
; ---------------------------------------------------------------------------

loc_1406DA2D9:                          ; CODE XREF: sub_1406D96E0+43B↑j
                cmp     [rsp+160h+var_118], 8
                jnz     loc_1406D9B21
                mov     edx, 80h
                lea     rcx, qword_14000AD48
                call    sub_140942B80
                mov     edi, eax
                test    eax, eax
                js      loc_1408211C2
                mov     eax, 2
                mov     [rsp+160h+var_118], eax

loc_1406DA308:                          ; CODE XREF: sub_1406D96E0+147A26↓j
                bt      [rbx+1080h], eax
                jb      loc_140821100

loc_1406DA315:                          ; CODE XREF: sub_1406D96E0+147A2C↓j
                mov     [rsp+160h+var_118], eax
                cmp     eax, 8
                jnz     loc_1406D9B21
                jmp     loc_140821111
; ---------------------------------------------------------------------------

loc_1406DA327:                          ; CODE XREF: sub_1406D96E0+5C4↑j
                lock or [rsi+340h], ecx
                jmp     loc_1406D9CAA
; ---------------------------------------------------------------------------

loc_1406DA333:                          ; CODE XREF: sub_1406D96E0+674↑j
                cmp     [r13+0], dx
                ja      loc_1408212D0
                test    dword ptr [rsi+0Ch], 400h
                jz      loc_1406D9D5A
                jmp     loc_1408212D0
; } // starts at 1406D96E0
sub_1406D96E0   endp

; ---------------------------------------------------------------------------
byte_1406DA350  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140076F8C↑o
                                        ; .pdata:0000000140103C14↑o

; =============== S U B R O U T I N E =======================================


sub_1406DA358   proc near               ; CODE XREF: sub_1406D96E0+717↑p
                                        ; DATA XREF: .pdata:0000000140103C20↑o

arg_10          = qword ptr  18h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rax, rdx
                mov     rbx, rcx
                lea     rdx, [rsp+28h+arg_10]
                mov     rcx, rax
                mov     r8d, 10h
                call    ObLogSecurityDescriptor
                mov     ecx, eax
                test    eax, eax
                js      short loc_1406DA394
                mov     rax, [rsp+28h+arg_10]
                test    rax, rax
                jnz     short loc_1406DA39D
                and     [rbx+320h], rax

loc_1406DA394:                          ; CODE XREF: sub_1406DA358+29↑j
                                        ; sub_1406DA358+50↓j
                mov     eax, ecx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DA39D:                          ; CODE XREF: sub_1406DA358+33↑j
                add     rax, 0Fh
                mov     [rbx+320h], rax
                jmp     short loc_1406DA394
sub_1406DA358   endp

; ---------------------------------------------------------------------------
algn_1406DA3AA:                         ; DATA XREF: .pdata:0000000140103C20↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406DA3B0   proc near               ; CODE XREF: sub_1406D96E0+696↑p
                                        ; DATA XREF: .rdata:0000000140076FAC↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014082136C SIZE 00000025 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140214FB8
                mov     rcx, rbx
                mov     r10d, eax
                call    sub_1406DC944
                mov     edi, [rbx+0F0h]
                lea     edx, [r10+r10]
                mov     r9d, [rbx+0Ch]
                lea     r8d, [rdx+4]
                bt      r9d, 1Ah
                cmovnb  r8d, edx
                cmp     eax, r8d
                mov     ecx, r8d
                cmovnb  ecx, eax
                mov     eax, [rbx+0FCh]
                cmp     eax, r8d
                cmovbe  eax, r8d
                cmp     eax, ecx
                cmovnb  eax, ecx
                cmp     edi, r8d
                mov     [rbx+0FCh], eax
                cmovbe  edi, r8d
                cmp     edi, ecx
                cmovnb  edi, ecx
                mov     [rbx+0F0h], edi
                cmp     edi, eax
                ja      loc_14082136C

loc_1406DA423:                          ; CODE XREF: sub_1406DA3B0+146FC4↓j
                bt      r9d, 0Ah
                jb      short loc_1406DA45B

loc_1406DA42A:                          ; CODE XREF: sub_1406DA3B0+B3↓j
                bt      r9d, 12h
                jb      short loc_1406DA44D
                mov     ecx, [rbx+0E4h]
                test    ecx, ecx
                jnz     loc_140821379

loc_1406DA43F:                          ; CODE XREF: sub_1406DA3B0+146FD0↓j
                                        ; sub_1406DA3B0+146FDC↓j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1403118EC
                cmp     eax, edi
                jb      short loc_1406DA465

loc_1406DA44D:                          ; CODE XREF: sub_1406DA3B0+7F↑j
                xor     eax, eax

loc_1406DA44F:                          ; CODE XREF: sub_1406DA3B0+BA↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DA45B:                          ; CODE XREF: sub_1406DA3B0+78↑j
                mov     eax, edi
                mov     [rbx+0FCh], eax
                jmp     short loc_1406DA42A
; ---------------------------------------------------------------------------

loc_1406DA465:                          ; CODE XREF: sub_1406DA3B0+9B↑j
                mov     eax, 0C0000017h
                jmp     short loc_1406DA44F
sub_1406DA3B0   endp

; ---------------------------------------------------------------------------
algn_1406DA46C:                         ; DATA XREF: .rdata:0000000140076FAC↑o
                                        ; .pdata:0000000140103C2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406DA480   proc near               ; DATA XREF: .pdata:0000000140103C38↑o
                                        ; sub_1405A8210+A5↑o ...

var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
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
                sub     rsp, 50h
                mov     rbx, [rcx+8]
                mov     rax, gs:188h
                mov     [rbx+30h], rax
                mov     rcx, [rcx]
                call    PsAttachSiloToCurrentThread
                mov     rcx, gs:188h
                mov     edx, 0Fh
                mov     rsi, rax
                mov     [rsp+78h+arg_0], rax
                call    KeSetActualBasePriorityThread
                lea     r12, [rbx+1D8h]
                xor     r8d, r8d
                mov     rcx, r12
                xor     edx, edx
                call    KeSetEvent
                xor     ebp, ebp
                lea     rcx, [rbx+208h]
                lea     r13, [rbx+1F0h]
                mov     [rsp+78h+var_30], rcx
                mov     [rsp+78h+var_38], r13
                cmp     [rbx+150h], ebp
                jz      loc_1406DA81A

loc_1406DA50D:                          ; CODE XREF: sub_1406DA480+38C↓j
                cmp     [rbx+0E0h], ebp
                lea     rdx, [rsp+78h+var_38]
                mov     ecx, ebp
                mov     [rsp+78h+var_40], rbp
                setnbe  cl
                mov     [rsp+78h+var_48], rbp
                xor     r9d, r9d
                mov     byte ptr [rsp+78h+var_50], bpl
                inc     ecx
                mov     byte ptr [rsp+78h+var_58], bpl
                mov     r14d, ebp
                lea     r8d, [r9+1]
                call    KeWaitForMultipleObjects
                cmp     eax, 1
                jnz     short loc_1406DA55F
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1403118B8
                mov     rcx, r13
                call    KeResetEvent
                mov     r14d, 1

loc_1406DA55F:                          ; CODE XREF: sub_1406DA480+C5↑j
                cmp     cs:dword_140D2D0B0, ebp
                jz      short loc_1406DA56F
                lock or dword ptr [rbx+340h], 4

loc_1406DA56F:                          ; CODE XREF: sub_1406DA480+E5↑j
                mov     rcx, rbx
                call    sub_140607594
                mov     r15d, [rbx+344h]
                and     r15d, 4
                jz      short loc_1406DA59C
                cmp     [rbx+0E0h], ebp
                jbe     short loc_1406DA596
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1403118B8

loc_1406DA596:                          ; CODE XREF: sub_1406DA480+10A↑j
                mov     r14d, 1

loc_1406DA59C:                          ; CODE XREF: sub_1406DA480+102↑j
                mov     eax, [rbx+340h]
                test    al, 4
                jnz     short loc_1406DA5B6
                mov     edx, r14d
                mov     rcx, rbx
                call    sub_1406079BC
                jmp     loc_1406DA806
; ---------------------------------------------------------------------------

loc_1406DA5B6:                          ; CODE XREF: sub_1406DA480+124↑j
                mov     eax, [rbx+344h]
                test    al, al
                jns     short loc_1406DA5DE
                lock and dword ptr [rbx+344h], 0FFFFFF7Fh
                cmp     [rbx+330h], rbp
                jz      short loc_1406DA5DE
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1406DAF7C

loc_1406DA5DE:                          ; CODE XREF: sub_1406DA480+13E↑j
                                        ; sub_1406DA480+152↑j
                test    dword ptr [rbx+0Ch], 100h
                jz      short loc_1406DA5F1
                lock or dword ptr [rbx+340h], 8
                jmp     short loc_1406DA5F9
; ---------------------------------------------------------------------------

loc_1406DA5F1:                          ; CODE XREF: sub_1406DA480+165↑j
                lock and dword ptr [rbx+340h], 0FFFFFFF7h

loc_1406DA5F9:                          ; CODE XREF: sub_1406DA480+16F↑j
                mov     eax, [rbx+340h]
                test    al, 8
                jz      short loc_1406DA63F
                mov     rcx, rbx
                call    sub_1406DABE0
                mov     edi, eax
                test    eax, eax
                js      loc_1406DA7BA
                mov     rcx, rbx
                call    sub_1406DAA88
                mov     rcx, rbx
                call    sub_1406DA95C
                cmp     [rbx+168h], ebp
                jbe     short loc_1406DA63F
                cmp     [rbx+1B8h], ebp
                jbe     short loc_1406DA63F
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402BE0BC

loc_1406DA63F:                          ; CODE XREF: sub_1406DA480+181↑j
                                        ; sub_1406DA480+1AB↑j ...
                mov     eax, [rbx+344h]
                test    al, 40h
                jz      short loc_1406DA659
                lock and dword ptr [rbx+344h], 0FFFFFFBFh
                mov     rcx, rbx
                call    sub_1406DADF4

loc_1406DA659:                          ; CODE XREF: sub_1406DA480+1C7↑j
                mov     eax, [rbx+344h]
                test    al, 8
                jz      short loc_1406DA683
                mov     rcx, rbx
                call    sub_1406DD7A4
                lock and dword ptr [rbx+344h], 0FFFFFFF7h
                xor     r8d, r8d
                mov     [rbx+38h], ebp
                xor     edx, edx
                mov     rcx, r12
                call    KeSetEvent

loc_1406DA683:                          ; CODE XREF: sub_1406DA480+1E1↑j
                mov     eax, [rbx+344h]
                test    al, 3
                jz      loc_1406DA723
                mov     eax, [rbx+344h]
                mov     sil, 1
                test    al, 2
                jz      short loc_1406DA6AC
                cmp     [rbx+330h], rbp
                movzx   esi, sil
                cmovnz  esi, ebp

loc_1406DA6AC:                          ; CODE XREF: sub_1406DA480+21C↑j
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1406DB2B8
                mov     [rbx+38h], eax
                mov     edi, eax
                test    eax, eax
                jns     short loc_1406DA708
                mov     ebp, [rbx+0Ch]
                test    bpl, 8
                jz      short loc_1406DA706
                mov     rcx, cs:qword_140C19990
                lea     rdx, qword_14000F6B8
                call    EtwEventEnabled
                test    al, al
                jz      short loc_1406DA706
                lea     rax, [rbx+0A8h]
                mov     dword ptr [rsp+78h+var_48], ebp
                mov     [rsp+78h+var_50], edi
                lea     r9, [rbx+98h]
                lea     rdx, qword_14000F6B8
                mov     [rsp+78h+var_58], rax
                call    sub_14093B21C

loc_1406DA706:                          ; CODE XREF: sub_1406DA480+246↑j
                                        ; sub_1406DA480+25D↑j
                xor     ebp, ebp

loc_1406DA708:                          ; CODE XREF: sub_1406DA480+23D↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r12
                call    KeSetEvent
                test    edi, edi
                jns     short loc_1406DA723
                cmp     sil, 1
                jz      loc_1406DA7BA

loc_1406DA723:                          ; CODE XREF: sub_1406DA480+20B↑j
                                        ; sub_1406DA480+297↑j
                mov     edx, r14d
                mov     rcx, rbx
                call    sub_1406079BC
                mov     edi, eax
                mov     eax, [rbx+344h]
                test    al, 1
                jz      short loc_1406DA751
                test    edi, edi
                js      short loc_1406DA751
                test    r14d, r14d
                jnz     short loc_1406DA751
                lea     edx, [r14+1]
                mov     rcx, rbx
                call    sub_1406079BC
                mov     edi, eax

loc_1406DA751:                          ; CODE XREF: sub_1406DA480+2B8↑j
                                        ; sub_1406DA480+2BC↑j ...
                mov     eax, [rbx+344h]
                bt      eax, 0Ch
                jnb     short loc_1406DA799
                lock and dword ptr [rbx+344h], 0FFFFEFFFh
                cmp     [rbx+330h], rbp
                jz      short loc_1406DA799
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406DAF7C
                mov     edi, eax
                test    eax, eax
                jns     short loc_1406DA786
                mov     [rbx+38h], eax
                jmp     short loc_1406DA799
; ---------------------------------------------------------------------------

loc_1406DA786:                          ; CODE XREF: sub_1406DA480+2FF↑j
                mov     rcx, [rbx+330h]
                call    ZwClose
                mov     [rbx+330h], rbp

loc_1406DA799:                          ; CODE XREF: sub_1406DA480+2DB↑j
                                        ; sub_1406DA480+2EF↑j ...
                test    r15d, r15d
                jz      short loc_1406DA7B6
                lock and dword ptr [rbx+344h], 0FFFFFFFBh
                xor     r8d, r8d
                mov     [rbx+38h], edi
                xor     edx, edx
                mov     rcx, r12
                call    KeSetEvent

loc_1406DA7B6:                          ; CODE XREF: sub_1406DA480+31C↑j
                test    edi, edi
                jns     short loc_1406DA806

loc_1406DA7BA:                          ; CODE XREF: sub_1406DA480+18F↑j
                                        ; sub_1406DA480+29D↑j
                mov     rcx, cs:qword_140C19990
                lea     rdx, qword_14000F6E8
                call    EtwEventEnabled
                test    al, al
                jz      short loc_1406DA7FB
                mov     eax, [rbx+3Ch]
                lea     rcx, [rbx+0A8h]
                mov     dword ptr [rsp+78h+var_40], eax
                lea     r9, [rbx+98h]
                mov     eax, [rbx+0Ch]
                mov     dword ptr [rsp+78h+var_48], eax
                mov     [rsp+78h+var_50], edi
                mov     [rsp+78h+var_58], rcx
                call    sub_14093B738

loc_1406DA7FB:                          ; CODE XREF: sub_1406DA480+34F↑j
                mov     rcx, rbx
                mov     [rbx+38h], edi
                call    sub_1406B3A1C

loc_1406DA806:                          ; CODE XREF: sub_1406DA480+131↑j
                                        ; sub_1406DA480+338↑j
                cmp     [rbx+150h], ebp
                jnz     loc_1406DA50D
                mov     rsi, [rsp+78h+arg_0]

loc_1406DA81A:                          ; CODE XREF: sub_1406DA480+87↑j
                mov     edx, 1
                mov     rcx, rbx
                call    sub_1406079BC
                mov     r14d, 103h
                jmp     short loc_1406DA877
; ---------------------------------------------------------------------------

loc_1406DA82F:                          ; CODE XREF: sub_1406DA480+3FB↓j
                cmp     edi, r14d
                jz      short loc_1406DA882
                mov     ecx, [rbx+0F8h]
                test    ecx, ecx
                jle     short loc_1406DA87D
                mov     ecx, [rbx+0F4h]
                mov     eax, [rbx+0F8h]
                cmp     eax, ecx
                jle     short loc_1406DA87D
                lea     rax, qword_140010688
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+78h+var_58], rax
                xor     edx, edx
                mov     rcx, r13
                call    KeWaitForSingleObject
                mov     edx, 1
                mov     rcx, rbx
                call    sub_1406079BC

loc_1406DA877:                          ; CODE XREF: sub_1406DA480+3AD↑j
                mov     edi, eax
                test    eax, eax
                jns     short loc_1406DA82F

loc_1406DA87D:                          ; CODE XREF: sub_1406DA480+3BC↑j
                                        ; sub_1406DA480+3CC↑j
                cmp     edi, r14d
                jnz     short loc_1406DA89C

loc_1406DA882:                          ; CODE XREF: sub_1406DA480+3B2↑j
                mov     eax, [rbx+340h]
                test    al, 8
                jz      short loc_1406DA897
                mov     edi, ebp
                cmp     [rbx+178h], rbp
                jz      short loc_1406DA89C

loc_1406DA897:                          ; CODE XREF: sub_1406DA480+40A↑j
                mov     edi, 0C0000001h

loc_1406DA89C:                          ; CODE XREF: sub_1406DA480+400↑j
                                        ; sub_1406DA480+415↑j
                cmp     [rbx+330h], rbp
                jz      short loc_1406DA8C2
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406DAF7C
                mov     rcx, [rbx+330h]
                call    ZwClose
                mov     [rbx+330h], rbp

loc_1406DA8C2:                          ; CODE XREF: sub_1406DA480+423↑j
                cmp     [rbx+178h], rbp
                jz      short loc_1406DA8E6
                mov     rcx, rbx
                call    sub_14072246C
                mov     rcx, [rbx+178h]
                call    ZwClose
                mov     [rbx+178h], rbp

loc_1406DA8E6:                          ; CODE XREF: sub_1406DA480+449↑j
                xor     r8d, r8d
                mov     [rbx+38h], edi
                xor     edx, edx
                mov     rcx, r12
                call    KeSetEvent
                test    edi, edi
                jns     short loc_1406DA920
                mov     rcx, cs:qword_140C19990
                lea     rdx, qword_14000ACB0
                call    EtwEventEnabled
                test    al, al
                jz      short loc_1406DA920
                mov     r8, rbx
                lea     rdx, qword_14000ACB0
                call    sub_14093B53C

loc_1406DA920:                          ; CODE XREF: sub_1406DA480+478↑j
                                        ; sub_1406DA480+48F↑j
                mov     rcx, rbx
                call    sub_1406DD1C8
                mov     rcx, rsi
                call    PsDetachSiloFromCurrentThread
                mov     ecx, edi
                call    PsTerminateSystemThread
                lea     r11, [rsp+78h+var_28]
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
                db 0CCh
sub_1406DA480   endp

byte_1406DA956  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140103C38↑o

; =============== S U B R O U T I N E =======================================


sub_1406DA95C   proc near               ; CODE XREF: sub_1406DA480+1A0↑p
                                        ; DATA XREF: .rdata:0000000140076FF4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140821392 SIZE 000000B1 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                cmp     dword ptr [rcx+1B8h], 0
                mov     rdi, rcx
                jnz     short loc_1406DA996

loc_1406DA97D:                          ; CODE XREF: sub_1406DA95C+41↓j
                                        ; sub_1406DA95C+111↓j
                xor     eax, eax

loc_1406DA97F:                          ; CODE XREF: sub_1406DA95C+146A3B↓j
                                        ; sub_1406DA95C+146AE2↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406DA996:                          ; CODE XREF: sub_1406DA95C+1F↑j
                cmp     dword ptr [rcx+168h], 0
                jz      short loc_1406DA97D
                mov     edx, [rcx+4]
                mov     r8d, 50777445h
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140821392
                mov     r8d, [rdi+4]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     edx, [rdi+1B8h]
                test    edx, edx
                jz      loc_1406DAA5B
                mov     r14d, 3

loc_1406DA9E0:                          ; CODE XREF: sub_1406DA95C+FD↓j
                cmp     dword ptr [rdi+168h], 0
                jz      loc_1408213D6
                mov     rbx, [rdi+198h]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1407BE170
                mov     rcx, rdi
                test    eax, eax
                js      loc_1408213E3
                mov     rdx, rsi
                call    sub_1405FD824
                test    eax, eax
                js      loc_1408213C9
                mov     eax, [rdi+340h]
                test    al, 1
                jz      short loc_1406DAA2B
                cmp     [rsi+36h], r14w
                jz      short loc_1406DAA72

loc_1406DAA2B:                          ; CODE XREF: sub_1406DA95C+C6↑j
                                        ; sub_1406DA95C+122↓j
                mov     edx, [rdi+1B8h]
                mov     r8, [rdi+1A8h]
                dec     edx
                mov     [rdi+1B8h], edx
                mov     eax, [rsi+30h]
                sub     r8, rax
                cmp     dword ptr [rdi+10h], 0
                mov     [rdi+1A8h], r8
                jl      loc_14082139C

loc_1406DAA57:                          ; CODE XREF: sub_1406DA95C+146A57↓j
                                        ; sub_1406DA95C+146A68↓j
                test    edx, edx
                jnz     short loc_1406DA9E0

loc_1406DAA5B:                          ; CODE XREF: sub_1406DA95C+78↑j
                                        ; sub_1406DA95C+146A82↓j
                mov     rcx, rdi
                call    sub_1407CBBB8

loc_1406DAA63:                          ; CODE XREF: sub_1406DA95C+146A7C↓j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                jmp     loc_1406DA97D
; ---------------------------------------------------------------------------

loc_1406DAA72:                          ; CODE XREF: sub_1406DA95C+CD↑j
                movups  xmm0, xmmword ptr [rsi+38h]
                movdqu  xmmword ptr [rdi+1C0h], xmm0
                jmp     short loc_1406DAA2B
sub_1406DA95C   endp

; ---------------------------------------------------------------------------
byte_1406DAA80  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140076FF4↑o
                                        ; .pdata:0000000140103C44↑o

; =============== S U B R O U T I N E =======================================


sub_1406DAA88   proc near               ; CODE XREF: sub_1406DA480+198↑p
                                        ; DATA XREF: .rdata:000000014007701C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140821444 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+344h]
                lea     rsi, [rcx+2C0h]
                mov     rbx, rcx
                test    al, 20h
                jnz     short loc_1406DAAD4

loc_1406DAAB0:                          ; CODE XREF: sub_1406DAA88+D5↓j
                mov     eax, [rbx+344h]
                test    al, 10h
                jnz     loc_1406DAB62

loc_1406DAABE:                          ; CODE XREF: sub_1406DAA88+14D↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406DAAD4:                          ; CODE XREF: sub_1406DAA88+26↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     rdi, [rbx+170h]
                xor     edx, edx
                and     qword ptr [rbx+170h], 0
                mov     rcx, rsi
                call    ExReleasePushLockEx
                mov     rax, [rdi+28h]
                and     qword ptr [rdi+28h], 0
                movups  xmm0, xmmword ptr [rbx+1C0h]
                movdqu  xmmword ptr [rax+50h], xmm0
                lea     rax, [rbx+158h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     FatalListEntryError_86
                mov     [rdi], rax
                mov     [rdi+8], rcx
                mov     [rcx], rdi
                mov     [rax+8], rdi
                inc     dword ptr [rbx+168h]
                and     byte ptr [rdi+5Ah], 0F7h
                lock or dword ptr [rbx+344h], 40h
                and     dword ptr [rbx+38h], 0
                lock and dword ptr [rbx+344h], 0FFFFFFDFh
                lea     rcx, [rbx+1D8h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     loc_1406DAAB0
; ---------------------------------------------------------------------------

loc_1406DAB62:                          ; CODE XREF: sub_1406DAA88+30↑j
                xor     edx, edx
                mov     rcx, rsi
                mov     ebp, 0C0000296h
                call    ExAcquirePushLockExclusiveEx
                mov     rdi, [rbx+170h]
                xor     edx, edx
                and     qword ptr [rbx+170h], 0
                mov     rcx, rsi
                call    ExReleasePushLockEx
                lea     rdx, [rbx+158h]
                mov     rcx, [rdx]

loc_1406DAB94:                          ; CODE XREF: sub_1406DAA88+119↓j
                cmp     rcx, rdx
                jz      short loc_1406DABB9
                cmp     rdi, rcx
                jz      short loc_1406DABA3

loc_1406DAB9E:                          ; CODE XREF: sub_1406DAA88+11F↓j
                                        ; sub_1406DAA88+12F↓j
                mov     rcx, [rcx]
                jmp     short loc_1406DAB94
; ---------------------------------------------------------------------------

loc_1406DABA3:                          ; CODE XREF: sub_1406DAA88+114↑j
                test    byte ptr [rdi+5Ah], 1
                jnz     short loc_1406DAB9E
                lock or dword ptr [rbx+344h], 4
                or      byte ptr [rdi+5Ah], 1
                xor     ebp, ebp
                jmp     short loc_1406DAB9E
; ---------------------------------------------------------------------------

loc_1406DABB9:                          ; CODE XREF: sub_1406DAA88+10F↑j
                mov     [rbx+38h], ebp
                lock and dword ptr [rbx+344h], 0FFFFFFEFh
                lea     rcx, [rbx+1D8h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     loc_1406DAABE
sub_1406DAA88   endp

; ---------------------------------------------------------------------------
algn_1406DABDA:                         ; DATA XREF: .rdata:000000014007701C↑o
                                        ; .pdata:0000000140103C50↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406DABE0   proc near               ; CODE XREF: sub_1406DA480+186↑p
                                        ; DATA XREF: .rdata:0000000140077048↑o ...

var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014082144C SIZE 00000081 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                lea     r14, [rcx+178h]
                xor     r15d, r15d
                xorps   xmm0, xmm0
                mov     rbx, rcx
                movups  [rsp+68h+var_38], xmm0
                cmp     [r14], r15
                jz      short loc_1406DAC2C
                xor     eax, eax

loc_1406DAC12:                          ; CODE XREF: sub_1406DABE0+1D1↓j
                                        ; sub_1406DABE0+146871↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406DAC2C:                          ; CODE XREF: sub_1406DABE0+2E↑j
                xor     edx, edx
                lea     rcx, [rsp+68h+var_38]
                call    RtlInitUnicodeString
                lea     rsi, [rbx+180h]
                mov     r12d, 1
                cmp     [rsi], r15w
                jnz     loc_1406DAD4A
                mov     rcx, [rbx+0A0h]
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1406DAC5A:                          ; CODE XREF: sub_1406DABE0+82↓j
                inc     rax
                cmp     [rcx+rax*2], r15w
                jnz     short loc_1406DAC5A
                add     eax, 9
                mov     r8d, 50777445h
                mov     ecx, r12d
                lea     rbp, ds:2[rax*2]
                mov     rdx, rbp
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14082144C
                mov     r9, [rbx+0A0h]
                lea     r8, aEtwrtWsEtl ; "EtwRT%ws.etl"
                mov     rdx, rbp
                mov     rcx, rax
                call    sub_14021C308
                mov     rcx, rdi
                test    eax, eax
                jnz     loc_140821456
                movzx   eax, word ptr [rdi]

loc_1406DACB3:                          ; CODE XREF: sub_1406DABE0+12B↓j
                test    ax, ax
                jz      short loc_1406DAD0D
                cmp     ax, 22h ; '"'
                jz      loc_140821467
                cmp     ax, 2Fh ; '/'
                jz      loc_140821467
                cmp     ax, 3Ah ; ':'
                jz      loc_140821467
                cmp     ax, 3Ch ; '<'
                jz      loc_140821467
                cmp     ax, 3Dh ; '='
                jbe     short loc_1406DAD04
                cmp     ax, 3Fh ; '?'
                jbe     loc_140821467
                cmp     ax, 5Ch ; '\'
                jz      loc_140821467
                cmp     ax, 7Ch ; '|'
                jz      loc_140821467

loc_1406DAD04:                          ; CODE XREF: sub_1406DABE0+104↑j
                                        ; sub_1406DABE0+14688F↓j
                add     rcx, 2
                movzx   eax, word ptr [rcx]
                jmp     short loc_1406DACB3
; ---------------------------------------------------------------------------

loc_1406DAD0D:                          ; CODE XREF: sub_1406DABE0+D6↑j
                mov     rdx, cs:off_140D2D308 ; "%SystemRoot%\\system32\\Logfiles\\WMI\\"...
                mov     rcx, rsi
                call    RtlCreateUnicodeString
                test    al, al
                jz      loc_140821474
                mov     rdx, rdi
                lea     rcx, [rsp+68h+var_38]
                call    RtlInitUnicodeString
                lea     r9, [rsp+68h+var_38]
                xor     r8d, r8d
                mov     rdx, rsi
                mov     cl, r12b
                call    sub_1406DD7E0
                mov     edi, eax
                test    eax, eax
                js      short loc_1406DADA5

loc_1406DAD4A:                          ; CODE XREF: sub_1406DABE0+69↑j
                test    [rbx+340h], r12b
                lea     r8, [rsp+68h+arg_0]
                movzx   eax, r15b
                mov     rdx, rsi
                cmovnz  eax, r12d
                mov     [rsp+68h+var_40], r12b
                xor     r9d, r9d
                mov     [rsp+68h+arg_0], al
                mov     rcx, r14
                mov     [rsp+68h+var_48], r12b
                call    sub_1406DB8FC
                mov     edi, eax
                test    eax, eax
                js      short loc_1406DADA5
                mov     eax, 48h ; 'H'
                mov     [rbx+198h], rax
                mov     [rbx+190h], rax
                mov     [rbx+1A0h], rax
                mov     eax, [rbx+340h]
                test    r12b, al
                jnz     short loc_1406DADB6

loc_1406DADA5:                          ; CODE XREF: sub_1406DABE0+168↑j
                                        ; sub_1406DABE0+19E↑j ...
                lea     rcx, [rsp+68h+var_38]
                call    RtlFreeUnicodeString
                mov     eax, edi
                jmp     loc_1406DAC12
; ---------------------------------------------------------------------------

loc_1406DADB6:                          ; CODE XREF: sub_1406DABE0+1C3↑j
                mov     rcx, rbx
                call    sub_1407C750C
                mov     edi, eax
                test    eax, eax
                js      loc_14082147E
                cmp     [rbx+1B8h], r15d
                ja      short loc_1406DADDA

loc_1406DADD1:                          ; CODE XREF: sub_1406DABE0+20B↓j
                test    edi, edi
                jns     short loc_1406DADA5
                jmp     loc_14082147E
; ---------------------------------------------------------------------------

loc_1406DADDA:                          ; CODE XREF: sub_1406DABE0+1EF↑j
                lea     rdx, [rbx+140h]
                mov     rcx, rbx
                call    sub_1407CEED8
                mov     edi, eax
                jmp     short loc_1406DADD1
sub_1406DABE0   endp

; ---------------------------------------------------------------------------
byte_1406DADED  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140077048↑o
                                        ; .pdata:0000000140103C5C↑o

; =============== S U B R O U T I N E =======================================


sub_1406DADF4   proc near               ; CODE XREF: sub_1406DA480+1D4↑p
                                        ; DATA XREF: .rdata:0000000140077094↑o ...

var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408214CE SIZE 000000B3 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                lea     rbp, [rcx+2C0h]
                mov     rbx, rcx
                mov     rcx, rbp
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, rbx
                call    sub_1406DAF00
                mov     r14d, eax
                test    eax, eax
                jnz     short loc_1406DAE7D
                xor     edi, edi
                mov     ebx, 8000001Ah

loc_1406DAE3A:                          ; CODE XREF: sub_1406DADF4+F0↓j
                                        ; sub_1406DADF4+1466DF↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbp+0], rax
                test    al, 2
                jnz     loc_14082156B

loc_1406DAE4C:                          ; CODE XREF: sub_1406DADF4+146779↓j
                                        ; sub_1406DADF4+146788↓j
                mov     rcx, rbp
                call    sub_140243660
                test    rdi, rdi
                jnz     loc_1406DAEE9

loc_1406DAE5D:                          ; CODE XREF: sub_1406DADF4+FF↓j
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DAE7D:                          ; CODE XREF: sub_1406DADF4+3D↑j
                mov     rdx, r14
                mov     ecx, 1
                mov     r8d, 62777445h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408214CE
                mov     r8d, r14d
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_1406DD124
                lea     r15, [rbx+158h]
                mov     rsi, [r15]
                cmp     rsi, r15
                jnz     loc_1408214D8

loc_1406DAEBD:                          ; CODE XREF: sub_1406DADF4+14675C↓j
                mov     rax, [rbx+80h]

loc_1406DAEC4:                          ; CODE XREF: sub_1406DADF4+146772↓j
                test    rax, rax
                jnz     loc_140821555

loc_1406DAECD:                          ; CODE XREF: sub_1406DADF4+146765↓j
                add     rbx, 70h ; 'p'
                mov     rax, [rbx]
                jmp     short loc_1406DAEDD
; ---------------------------------------------------------------------------

loc_1406DAED6:                          ; CODE XREF: sub_1406DADF4+EC↓j
                mov     byte ptr [rax+10h], 1
                mov     rax, [rax]

loc_1406DAEDD:                          ; CODE XREF: sub_1406DADF4+E0↑j
                cmp     rax, rbx
                jnz     short loc_1406DAED6
                xor     ebx, ebx
                jmp     loc_1406DAE3A
; ---------------------------------------------------------------------------

loc_1406DAEE9:                          ; CODE XREF: sub_1406DADF4+63↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_1406DAE5D
sub_1406DADF4   endp

; ---------------------------------------------------------------------------
algn_1406DAEF8:                         ; DATA XREF: .rdata:0000000140077094↑o
                                        ; .pdata:0000000140103C68↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406DAF00   proc near               ; CODE XREF: sub_1406DADF4+33↑p
                                        ; sub_14093E410+63↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 0000000140821582 SIZE 0000002B BYTES

                mov     r10, rcx
                xor     edx, edx
                add     rcx, 70h ; 'p'
                mov     r11d, 0FFFFFFF8h
                mov     r8, [rcx]
                cmp     r8, rcx
                jnz     short loc_1406DAF43

loc_1406DAF17:                          ; CODE XREF: sub_1406DAF00+71↓j
                lea     r9, [r10+400h]
                mov     r8, [r9]

loc_1406DAF21:                          ; CODE XREF: sub_1406DAF00+146698↓j
                cmp     r8, r9
                jnz     loc_140821582
                mov     eax, [r10+88h]
                test    eax, eax
                jnz     loc_14082159D

loc_1406DAF39:                          ; CODE XREF: sub_1406DAF00+1466A8↓j
                test    edx, edx
                lea     eax, [rdx+48h]
                cmovz   eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DAF43:                          ; CODE XREF: sub_1406DAF00+15↑j
                lea     rax, unk_140C4C0A0
                or      rdx, 0FFFFFFFFFFFFFFFFh

loc_1406DAF4E:                          ; CODE XREF: sub_1406DAF00+55↓j
                inc     rdx
                cmp     byte ptr [rax+rdx], 0
                jnz     short loc_1406DAF4E
                add     edx, 18h
                and     edx, r11d

loc_1406DAF5D:                          ; CODE XREF: sub_1406DAF00+6F↓j
                mov     eax, [r8+14h]
                mov     r8, [r8]
                add     eax, 13h
                and     eax, r11d
                add     edx, eax
                cmp     r8, rcx
                jnz     short loc_1406DAF5D
                jmp     short loc_1406DAF17
sub_1406DAF00   endp

; ---------------------------------------------------------------------------
byte_1406DAF73  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140103C74↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406DAF7C   proc near               ; CODE XREF: sub_1406DA480+159↑p
                                        ; sub_1406DA480+2F6↑p ...

var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = byte ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001408215AE SIZE 000000C3 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_28], rax
                xor     eax, eax
                mov     [rbp+57h+var_80], dl
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_30], rax
                lea     r13, [rcx+70h]
                xor     r14d, r14d
                mov     rbx, rcx
                movups  [rbp+57h+var_40], xmm0
                movups  [rbp+57h+var_68], xmm0
                cmp     [r13+0], r13
                jnz     loc_1406DB1DC
                lea     rax, [rcx+400h]
                cmp     [rax], rax
                jnz     loc_1406DB1DC
                cmp     [rcx+88h], r14d
                jnz     loc_1406DB1DC
                mov     r12b, r14b
                cmp     [rcx+508h], r14
                jnz     loc_1406DB1DC

loc_1406DB002:                          ; CODE XREF: sub_1406DAF7C+263↓j
                mov     rcx, [rcx+330h]
                lea     r8, [rbp+57h+var_40]
                mov     r9d, 18h
                mov     dword ptr [rsp+0D0h+var_B0], 3
                lea     rdx, [rbp+57h+var_68]
                call    ZwQueryVolumeInformationFile
                test    eax, eax
                js      loc_1406DB1AE
                mov     ecx, dword ptr [rbp+57h+var_30+4]
                mov     [rbp+57h+var_70], ecx
                lea     eax, [rcx-1]
                not     eax
                lea     r15d, [rcx+17Fh]
                and     r15d, eax
                mov     [rbp+57h+var_6C], eax
                mov     esi, r15d
                test    r12b, r12b
                jnz     loc_1406DB1E4

loc_1406DB050:                          ; CODE XREF: sub_1406DAF7C+26B↓j
                mov     edx, esi
                mov     ecx, 1
                add     rdx, 0FFFh
                mov     r8d, 50777445h
                and     rdx, 0FFFFFFFFFFFFF000h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408215AE
                mov     rcx, [rbx+330h]
                lea     rax, [rbp+57h+var_78]
                mov     [rsp+0D0h+var_90], r14
                xor     r9d, r9d
                mov     [rsp+0D0h+var_98], rax
                xor     r8d, r8d
                mov     dword ptr [rsp+0D0h+var_A0], r15d
                lea     rax, [rbp+57h+var_68]
                mov     qword ptr [rsp+0D0h+var_A8], rdi
                xor     edx, edx
                mov     [rsp+0D0h+var_B0], rax
                mov     [rbp+57h+var_78], r14
                call    ZwReadFile
                mov     r14d, eax
                test    eax, eax
                js      loc_1406DB1A1
                xor     r14d, r14d
                mov     eax, r15d
                mov     [rbp+57h+var_78], rax
                cmp     [rbp+57h+var_80], r14b
                jnz     short loc_1406DB128
                mov     eax, [rbx+108h]
                mov     rcx, rbx
                mov     [rdi+8Ch], eax
                call    sub_140214FB8
                mov     [rdi+74h], eax
                lea     rcx, [rdi+78h]
                mov     eax, [rbx+100h]
                add     [rdi+98h], eax
                call    KeQuerySystemTimePrecise
                mov     edx, [rbx+10Ch]
                mov     rcx, rbx
                call    sub_1406DC138
                test    al, al
                jnz     loc_1408215B8
                add     [rdi+17Ch], edx

loc_1406DB118:                          ; CODE XREF: sub_1406DAF7C+146642↓j
                mov     eax, cs:NtBuildNumber
                movzx   ecx, ax
                mov     [rdi+70h], ecx
                mov     rax, [rbp+57h+var_78]

loc_1406DB128:                          ; CODE XREF: sub_1406DAF7C+152↑j
                mov     r15d, [rdi+4]
                cmp     r15d, eax
                jbe     loc_1406DB247
                test    r12b, r12b
                jnz     loc_1406DB1EC

loc_1406DB13E:                          ; CODE XREF: sub_1406DAF7C+2CE↓j
                                        ; sub_1406DAF7C+2D7↓j ...
                mov     ecx, [rbp+57h+var_70]
                mov     [rsp+0D0h+var_90], r14
                mov     [rbp+57h+var_78], r14
                mov     eax, [rdi+30h]
                cmp     eax, esi
                cmovnb  eax, esi
                dec     ecx
                add     ecx, eax
                xor     r9d, r9d
                and     ecx, [rbp+57h+var_6C]
                lea     rax, [rbp+57h+var_78]
                mov     [rsp+0D0h+var_98], rax
                xor     r8d, r8d
                mov     dword ptr [rsp+0D0h+var_A0], ecx
                lea     rax, [rbp+57h+var_68]
                mov     rcx, [rbx+330h]
                xor     edx, edx
                mov     qword ptr [rsp+0D0h+var_A8], rdi
                mov     [rsp+0D0h+var_B0], rax
                call    ZwWriteFile
                cmp     [rbp+57h+var_80], 0
                mov     r14d, eax
                jnz     short loc_1406DB1A1
                test    eax, eax
                js      short loc_1406DB1A1
                mov     ecx, [rbx+0Ch]
                test    cl, 20h
                jnz     loc_140821603

loc_1406DB1A1:                          ; CODE XREF: sub_1406DAF7C+13E↑j
                                        ; sub_1406DAF7C+213↑j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     eax, r14d

loc_1406DB1AE:                          ; CODE XREF: sub_1406DAF7C+AA↑j
                                        ; sub_1406DAF7C+146637↓j
                mov     rcx, [rbp+57h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406DB1DC:                          ; CODE XREF: sub_1406DAF7C+53↑j
                                        ; sub_1406DAF7C+63↑j ...
                mov     r12b, 1
                jmp     loc_1406DB002
; ---------------------------------------------------------------------------

loc_1406DB1E4:                          ; CODE XREF: sub_1406DAF7C+CE↑j
                mov     esi, [rbx+4]
                jmp     loc_1406DB050
; ---------------------------------------------------------------------------

loc_1406DB1EC:                          ; CODE XREF: sub_1406DAF7C+1BC↑j
                mov     edx, [rbp+57h+var_70]
                mov     ecx, r15d
                mov     [rsp+0D0h+var_90], r14
                cmp     r15d, esi
                cmovnb  ecx, esi
                dec     edx
                sub     ecx, eax
                xor     r9d, r9d
                add     edx, ecx
                xor     r8d, r8d
                and     edx, [rbp+57h+var_6C]
                lea     rcx, [rdi+rax]
                lea     rax, [rbp+57h+var_78]
                mov     [rsp+0D0h+var_98], rax
                lea     rax, [rbp+57h+var_68]
                mov     dword ptr [rsp+0D0h+var_A0], edx
                xor     edx, edx
                mov     qword ptr [rsp+0D0h+var_A8], rcx
                mov     rcx, [rbx+330h]
                mov     [rsp+0D0h+var_B0], rax
                call    ZwReadFile
                mov     r14d, eax
                test    eax, eax
                js      loc_1406DB1A1
                xor     r14d, r14d

loc_1406DB247:                          ; CODE XREF: sub_1406DAF7C+1B3↑j
                test    r12b, r12b
                jz      loc_1406DB13E
                cmp     r15d, esi
                jnb     loc_1406DB13E
                cmp     r15d, 178h
                jb      loc_1406DB13E
                mov     [rdi+30h], r15d
                cmp     [rbx+508h], r14
                jnz     loc_1408215C3

loc_1406DB277:                          ; CODE XREF: sub_1406DAF7C+146656↓j
                cmp     [r13+0], r13
                jz      loc_1408215D7

loc_1406DB281:                          ; CODE XREF: sub_1406DAF7C+146668↓j
                lea     r9, [rdi+58h]
                mov     dword ptr [rsp+0D0h+var_B0], 3
                mov     r8d, esi
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1406DC738

loc_1406DB29B:                          ; CODE XREF: sub_1406DAF7C+146662↓j
                lea     rax, [rbx+400h]
                cmp     [rax], rax
                jz      loc_1406DB13E
                jmp     loc_1408215E9
; } // starts at 1406DAF7C
sub_1406DAF7C   endp

; ---------------------------------------------------------------------------
byte_1406DB2B0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400770D0↑o
                                        ; .pdata:0000000140103C80↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406DB2B8   proc near               ; CODE XREF: sub_1406D96E0+657↑p
                                        ; sub_1406DA480+231↑p ...

var_A0          = dword ptr -0A0h
var_98          = byte ptr -98h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140821672 SIZE 0000009A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-37h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_28], rax
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_90], 0
                xor     eax, eax
                mov     r14b, dl
                and     [rbp+57h+var_88], rax
                mov     rdi, rcx
                xorps   xmm1, xmm1
                mov     [rbp+57h+var_30], rax
                xor     edx, edx
                lea     rcx, [rbp+57h+var_80]
                movups  [rbp+57h+var_50], xmm0
                xor     r12b, r12b
                xor     r15b, r15b
                movups  [rbp+57h+var_40], xmm0
                movups  [rbp+57h+var_60], xmm0
                movups  [rbp+57h+var_80], xmm1
                call    RtlInitUnicodeString
                mov     eax, [rdi+340h]
                test    al, 4
                jz      loc_1406DB58D
                lock and dword ptr [rdi+344h], 0FFFFFFFCh
                cmp     qword ptr [rdi+0B0h], 0
                jz      loc_140821672

loc_1406DB343:                          ; CODE XREF: sub_1406DB2B8+1463C8↓j
                or      rbx, 0FFFFFFFFFFFFFFFFh
                cmp     qword ptr [rdi+0D0h], 0
                jz      loc_1406DB527
                movups  xmm0, xmmword ptr [rdi+0C8h]

loc_1406DB35C:                          ; CODE XREF: sub_1406DB2B8+280↓j
                test    byte ptr [rdi+0Ch], 4
                mov     ecx, 1
                movzx   eax, [rbp+57h+var_90]
                mov     esi, [rdi+340h]
                cmovnz  eax, ecx
                shr     esi, 1
                and     sil, cl
                mov     [rbp+57h+var_90], al
                movdqu  [rbp+57h+var_70], xmm0
                cmp     r14b, cl
                jnz     short loc_1406DB3AF
                cmp     qword ptr [rdi+2E0h], 0
                jz      short loc_1406DB3AF
                lea     rcx, [rdi+2D0h]
                xor     edx, edx
                call    SeImpersonateClientEx
                mov     ecx, 1
                mov     r14d, eax
                mov     r15b, cl
                test    eax, eax
                js      loc_1406DB4E6

loc_1406DB3AF:                          ; CODE XREF: sub_1406DB2B8+CA↑j
                                        ; sub_1406DB2B8+D4↑j
                mov     r9d, [rdi+0Ch]
                lea     r8, [rbp+57h+var_90]
                shr     r9d, 1Ah
                lea     rdx, [rbp+57h+var_70]
                not     r9b
                mov     [rsp+0C0h+var_98], sil
                and     r9b, cl
                mov     byte ptr [rsp+0C0h+var_A0], r12b
                lea     rcx, [rbp+57h+var_88]
                call    sub_1406DB8FC
                mov     r14d, eax
                cmp     r15b, 1
                jnz     short loc_1406DB3E6
                call    PsRevertToSelf

loc_1406DB3E6:                          ; CODE XREF: sub_1406DB2B8+127↑j
                mov     rsi, [rbp+57h+var_88]
                test    r14d, r14d
                js      loc_1406DB4DD
                mov     r9d, 28h ; '('
                mov     dword ptr [rbp+57h+var_30], 2000h
                lea     r8, [rbp+57h+var_50]
                mov     [rsp+0C0h+var_A0], 4
                lea     rdx, [rbp+57h+var_60]
                mov     rcx, rsi
                call    ZwSetInformationFile
                cmp     qword ptr [rdi+330h], 0
                jz      loc_1406DB53D
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406DAF7C
                mov     r15, [rdi+330h]

loc_1406DB437:                          ; CODE XREF: sub_1406DB2B8+28B↓j
                cmp     qword ptr [rdi+0D0h], 0
                mov     [rdi+330h], rsi
                jz      short loc_1406DB4A0
                lea     rsi, [rdi+2C0h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                movups  xmm0, xmmword ptr [rdi+0A8h]
                lea     r14, [rdi+0C8h]
                mov     rax, rbx
                movups  xmm1, xmmword ptr [r14]
                movdqu  [rbp+57h+var_80], xmm0
                movdqu  xmmword ptr [rdi+0A8h], xmm1
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_1406DB59E

loc_1406DB48A:                          ; CODE XREF: sub_1406DB2B8+2EE↓j
                mov     rcx, rsi
                call    sub_140243660
                xor     edx, edx
                mov     rcx, r14
                call    RtlInitUnicodeString
                mov     rsi, [rbp+57h+var_88]

loc_1406DB4A0:                          ; CODE XREF: sub_1406DB2B8+18E↑j
                mov     dl, [rbp+57h+var_90]
                mov     rcx, rdi
                call    sub_1406DB5B4
                mov     r14d, eax
                test    eax, eax
                js      loc_140821685
                test    r12b, r12b
                jnz     short loc_1406DB4CA
                xor     r8d, r8d
                mov     rcx, rdi
                lea     edx, [r8+1]
                call    sub_1406AF6DC

loc_1406DB4CA:                          ; CODE XREF: sub_1406DB2B8+201↑j
                xor     esi, esi
                mov     [rbp+57h+var_88], rsi
                test    r15, r15
                jz      short loc_1406DB4E6
                mov     rcx, r15
                call    ZwClose

loc_1406DB4DD:                          ; CODE XREF: sub_1406DB2B8+135↑j
                                        ; sub_1406DB2B8+1463D4↓j
                test    rsi, rsi
                jnz     loc_140821691

loc_1406DB4E6:                          ; CODE XREF: sub_1406DB2B8+F1↑j
                                        ; sub_1406DB2B8+21B↑j ...
                lea     rcx, [rdi+0C8h]
                call    RtlFreeUnicodeString
                lea     rcx, [rbp+57h+var_80]
                call    RtlFreeUnicodeString
                mov     eax, r14d

loc_1406DB4FE:                          ; CODE XREF: sub_1406DB2B8+2D7↓j
                mov     rcx, [rbp+57h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DB527:                          ; CODE XREF: sub_1406DB2B8+97↑j
                mov     eax, [rdi+340h]
                test    al, 2
                jnz     short loc_1406DB548

loc_1406DB531:                          ; CODE XREF: sub_1406DB2B8+2D3↓j
                movups  xmm0, xmmword ptr [rdi+0A8h]
                jmp     loc_1406DB35C
; ---------------------------------------------------------------------------

loc_1406DB53D:                          ; CODE XREF: sub_1406DB2B8+168↑j
                mov     r12b, 1
                xor     r15d, r15d
                jmp     loc_1406DB437
; ---------------------------------------------------------------------------

loc_1406DB548:                          ; CODE XREF: sub_1406DB2B8+277↑j
                lea     rsi, [rdi+2C0h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     r8d, [rdi+138h]
                lea     r9, [rdi+98h]
                lea     rdx, [rdi+0A8h]
                xor     ecx, ecx
                call    sub_1406DD7E0
                mov     rax, rbx
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406DB594

loc_1406DB583:                          ; CODE XREF: sub_1406DB2B8+2E4↓j
                mov     rcx, rsi
                call    sub_140243660
                jmp     short loc_1406DB531
; ---------------------------------------------------------------------------

loc_1406DB58D:                          ; CODE XREF: sub_1406DB2B8+6F↑j
                                        ; sub_1406DB2B8+1463C2↓j
                xor     eax, eax
                jmp     loc_1406DB4FE
; ---------------------------------------------------------------------------

loc_1406DB594:                          ; CODE XREF: sub_1406DB2B8+2C9↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     short loc_1406DB583
; ---------------------------------------------------------------------------

loc_1406DB59E:                          ; CODE XREF: sub_1406DB2B8+1CC↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_1406DB48A
; } // starts at 1406DB2B8
sub_1406DB2B8   endp

; ---------------------------------------------------------------------------
byte_1406DB5AB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140077108↑o
                                        ; .pdata:0000000140103C8C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406DB5B4   proc near               ; CODE XREF: sub_1406DB2B8+1EE↑p
                                        ; DATA XREF: .rdata:0000000140077144↑o ...

var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014082170C SIZE 0000013A BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_28], rax
                xor     eax, eax
                mov     dword ptr [rsp+0D0h+var_B0], 3
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_30], rax
                mov     bl, dl
                mov     [rbp+57h+var_48], rax
                mov     rdi, rcx
                lea     r8, [rbp+57h+var_58]
                mov     rcx, [rcx+330h]
                lea     r9d, [rax+18h]
                xorps   xmm1, xmm1
                lea     rdx, [rbp+57h+var_78]
                movups  [rbp+57h+var_40], xmm0
                movups  [rbp+57h+var_58], xmm1
                movups  [rbp+57h+var_78], xmm0
                call    ZwQueryVolumeInformationFile
                xor     r15d, r15d
                test    eax, eax
                js      loc_1406DB714
                mov     r12d, dword ptr [rbp+57h+var_48+4]
                lea     r13d, [r12-1]
                test    bl, bl
                jnz     loc_1406DB742
                mov     r12d, [rdi+4]
                test    r12d, r13d
                jnz     loc_14082170C

loc_1406DB64F:                          ; CODE XREF: sub_1406DB5B4+19D↓j
                mov     r14d, r12d
                mov     ecx, 1
                mov     r8d, 50777445h
                lea     rdx, [r14+0FFFh]
                and     rdx, 0FFFFFFFFFFFFF000h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140821716
                test    bl, bl
                jnz     loc_1406DB756
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_140311A1C
                mov     edx, 4
                mov     rcx, rsi
                call    sub_1402154D4
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1406DBBF4
                mov     rcx, [rdi+330h]
                lea     rax, [rbp+57h+var_78]
                mov     [rsp+0D0h+var_90], r15
                xor     r9d, r9d
                mov     [rsp+0D0h+var_98], r15
                xor     r8d, r8d
                mov     dword ptr [rsp+0D0h+var_A0], r12d
                xor     edx, edx
                mov     qword ptr [rsp+0D0h+var_A8], rsi
                mov     [rsp+0D0h+var_B0], rax
                call    ZwWriteFile
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406DB708
                mov     eax, [rdi+0Ch]
                test    al, 20h
                jnz     loc_1406DB8A0

loc_1406DB6E9:                          ; CODE XREF: sub_1406DB5B4+33D↓j
                test    ebx, ebx
                js      short loc_1406DB708
                mov     dword ptr [rdi+108h], 1
                mov     dword ptr [rdi+0DCh], 1
                mov     [rdi+0E8h], r14

loc_1406DB708:                          ; CODE XREF: sub_1406DB5B4+128↑j
                                        ; sub_1406DB5B4+137↑j ...
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     eax, ebx

loc_1406DB714:                          ; CODE XREF: sub_1406DB5B4+77↑j
                                        ; sub_1406DB5B4+14615D↓j ...
                mov     rcx, [rbp+57h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406DB742:                          ; CODE XREF: sub_1406DB5B4+88↑j
                mov     eax, r13d
                add     r12d, 17Fh
                not     eax
                and     r12d, eax
                jmp     loc_1406DB64F
; ---------------------------------------------------------------------------

loc_1406DB756:                          ; CODE XREF: sub_1406DB5B4+CA↑j
                mov     rcx, [rdi+330h]
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+0D0h+var_90], r15
                xor     r9d, r9d
                mov     [rsp+0D0h+var_98], rax
                xor     r8d, r8d
                mov     dword ptr [rsp+0D0h+var_A0], r12d
                lea     rax, [rbp+57h+var_78]
                mov     qword ptr [rsp+0D0h+var_A8], rsi
                xor     edx, edx
                mov     [rsp+0D0h+var_B0], rax
                mov     [rbp+57h+var_80], r15
                call    ZwReadFile
                mov     ebx, eax
                test    eax, eax
                js      loc_1406DB708
                mov     edx, [rsi+88h]
                test    edx, 4000402h
                jnz     loc_140821720
                cmp     byte ptr [rsi+6Ch], 0Ah
                jnz     loc_140821835
                cmp     [rsi+6Dh], r15b
                jnz     loc_140821835
                mov     rcx, rdi
                call    sub_1406DC138
                neg     al
                sbb     ecx, ecx
                and     ecx, 0FFFFFFFCh
                add     ecx, 8
                cmp     [rsi+94h], ecx
                jnz     loc_140821731
                mov     r15d, [rsi+68h]
                mov     r14d, [rsi+8Ch]
                test    r15d, r13d
                jnz     loc_140821742
                lea     eax, [r15-400h]
                cmp     eax, 0FFFC00h
                ja      loc_140821824
                mov     eax, [rdi+340h]
                test    al, 2
                jnz     loc_14082174C

loc_1406DB811:                          ; CODE XREF: sub_1406DB5B4+14619C↓j
                xor     r13d, r13d
                cmp     [rsi+78h], r13
                jz      loc_140821767

loc_1406DB81E:                          ; CODE XREF: sub_1406DB5B4+146249↓j
                test    r14d, r14d
                jz      loc_140821802
                mov     rcx, rdi
                call    sub_140214FB8
                cmp     [rsi+74h], eax
                jnz     loc_140821813
                mov     [rsp+0D0h+var_90], r13
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+0D0h+var_98], rax
                xor     r9d, r9d
                mov     dword ptr [rsp+0D0h+var_A0], r12d
                lea     rax, [rbp+57h+var_78]
                mov     [rsi+78h], r13
                xor     r8d, r8d
                mov     rcx, [rdi+330h]
                xor     edx, edx
                mov     qword ptr [rsp+0D0h+var_A8], rsi
                mov     [rsp+0D0h+var_B0], rax
                call    ZwWriteFile
                mov     ebx, eax
                test    eax, eax
                js      loc_1406DB708
                mov     [rdi+108h], r14d
                mov     [rdi+0DCh], r14d
                imul    r14d, r15d
                mov     [rdi+4], r15d
                mov     eax, r14d
                mov     [rdi+0E8h], rax
                jmp     loc_1406DB708
; ---------------------------------------------------------------------------

loc_1406DB8A0:                          ; CODE XREF: sub_1406DB5B4+12F↑j
                and     eax, 2000h
                mov     dword ptr [rsp+0D0h+var_B0], 14h
                neg     eax
                lea     r8, [rbp+57h+var_80]
                mov     eax, [rdi+134h]
                lea     rdx, [rbp+57h+var_68]
                sbb     rcx, rcx
                xorps   xmm0, xmm0
                and     rcx, 0FFFFFFFFFFF00400h
                mov     r9d, 8
                add     rcx, 100000h
                imul    rcx, rax
                movups  [rbp+57h+var_68], xmm0
                mov     [rbp+57h+var_80], rcx
                mov     rcx, [rdi+330h]
                call    ZwSetInformationFile
                mov     ebx, eax
                jmp     loc_1406DB6E9
; } // starts at 1406DB5B4
sub_1406DB5B4   endp

; ---------------------------------------------------------------------------
byte_1406DB8F6  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140077144↑o
                                        ; .pdata:0000000140103C98↑o

; =============== S U B R O U T I N E =======================================


sub_1406DB8FC   proc near               ; CODE XREF: sub_1406DABE0+195↑p
                                        ; sub_1406DB2B8+11B↑p ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_28          = byte ptr -28h
arg_8           = dword ptr  10h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 0000000140821846 SIZE 000000B4 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, rdx
                mov     r14, r8
                mov     r12, rcx
                lea     r8, [r11+10h]
                xorps   xmm0, xmm0
                lea     rdx, [r11-48h]
                xor     r13d, r13d
                mov     r15b, r9b
                mov     rcx, [rax+8]
                movups  [rsp+88h+var_40], xmm0
                mov     [r11-48h], r13
                mov     [r11+10h], r13d
                call    sub_1406DBB1C
                mov     rsi, [rsp+88h+var_48]
                mov     edi, eax
                test    eax, eax
                js      short loc_1406DB987
                movzx   eax, byte ptr [r14]
                mov     r8b, r15b
                mov     r9b, [rsp+88h+arg_20]
                xor     edx, edx
                mov     [rsp+88h+var_58], eax
                mov     rcx, rsi
                lea     rax, [rsp+88h+var_40]
                mov     [rsp+88h+var_60], rax
                mov     [rsp+88h+var_68], r12
                call    sub_1406DB9DC
                cmp     [rsp+88h+arg_28], 1
                mov     edi, eax
                jz      short loc_1406DB9BD

loc_1406DB987:                          ; CODE XREF: sub_1406DB8FC+51↑j
                                        ; sub_1406DB8FC+C6↓j ...
                test    rsi, rsi
                jz      short loc_1406DB996
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1406DB996:                          ; CODE XREF: sub_1406DB8FC+8E↑j
                test    edi, edi
                js      short loc_1406DB9A0
                cmp     byte ptr [r14], 1
                jz      short loc_1406DB9C9

loc_1406DB9A0:                          ; CODE XREF: sub_1406DB8FC+9C↑j
                                        ; sub_1406DB8FC+D3↓j ...
                lea     r11, [rsp+88h+var_28]
                mov     eax, edi
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
; ---------------------------------------------------------------------------

loc_1406DB9BD:                          ; CODE XREF: sub_1406DB8FC+89↑j
                cmp     eax, 0C000003Ah
                jnz     short loc_1406DB987
                jmp     loc_140821846
; ---------------------------------------------------------------------------

loc_1406DB9C9:                          ; CODE XREF: sub_1406DB8FC+A2↑j
                cmp     qword ptr [rsp+88h+var_40+8], 2
                jnz     short loc_1406DB9A0
                mov     [r14], r13b
                jmp     short loc_1406DB9A0
sub_1406DB8FC   endp

; ---------------------------------------------------------------------------
byte_1406DB9D6  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140077170↑o
                                        ; .pdata:0000000140103CA4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3Fh

sub_1406DB9DC   proc near               ; CODE XREF: sub_1406DB8FC+7A↑p
                                        ; sub_1406DB8FC+145FAD↓p ...

var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = dword ptr -70h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = xmmword ptr -28h
var_10          = byte ptr -10h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = dword ptr  40h

; FUNCTION CHUNK AT 00000001408218FA SIZE 0000004D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-47h]
                sub     rsp, 0B0h
                mov     rdi, [rbp+3Fh+arg_20]
                xor     r15d, r15d
                mov     [rbp+3Fh+var_44], r15d
                xorps   xmm0, xmm0
                mov     [rbp+3Fh+var_2C], r15d
                mov     bl, r9b
                mov     [rbp+3Fh+var_60], r15
                mov     r14b, r8b
                mov     sil, dl
                movups  [rbp+3Fh+var_58], xmm0
                test    dl, dl
                jnz     short loc_1406DBA2B
                test    rdi, rdi
                jz      loc_1408218FA

loc_1406DBA2B:                          ; CODE XREF: sub_1406DB9DC+44↑j
                mov     rdx, rcx
                lea     rcx, [rbp+3Fh+var_58]
                call    RtlInitUnicodeString
                mov     al, bl
                mov     [rbp+3Fh+var_48], 30h ; '0'
                neg     al
                mov     [rbp+3Fh+var_40], r15
                lea     rax, [rbp+3Fh+var_58]
                xorps   xmm0, xmm0
                sbb     ecx, ecx
                mov     [rbp+3Fh+var_38], rax
                and     ecx, 0FFFFFC00h
                add     ecx, 640h
                mov     [rbp+3Fh+var_30], ecx
                movdqu  [rbp+3Fh+var_28], xmm0
                test    sil, sil
                jnz     loc_140821904
                neg     bl
                sbb     edx, edx
                and     edx, 10000h
                add     edx, 12008Bh
                neg     r14b
                sbb     ecx, ecx
                and     ecx, 8
                add     ecx, 20h ; ' '
                neg     [rbp+3Fh+arg_30]
                sbb     eax, eax
                and     eax, 0FFFFFFFEh
                add     eax, 5

loc_1406DBA96:                          ; CODE XREF: sub_1406DB9DC+145F35↓j
                mov     r9, [rbp+3Fh+arg_28]
                lea     r8, [rbp+3Fh+var_48]
                mov     [rsp+0C0h+var_70], r15d
                mov     qword ptr [rsp+0C0h+var_78], r15
                mov     dword ptr [rsp+0C0h+var_80], ecx
                lea     rcx, [rbp+3Fh+var_60]
                mov     [rsp+0C0h+var_88], eax
                mov     [rsp+0C0h+var_90], 5
                mov     [rsp+0C0h+var_98], 80h
                mov     qword ptr [rsp+0C0h+var_A0], r15
                call    ZwCreateFile
                mov     ebx, eax
                mov     rax, [rbp+3Fh+var_60]
                test    ebx, ebx
                js      short loc_1406DBAE1
                test    sil, sil
                jnz     loc_140821916

loc_1406DBAE1:                          ; CODE XREF: sub_1406DB9DC+FA↑j
                                        ; sub_1406DB9DC+145F3D↓j
                test    rdi, rdi
                jz      short loc_1406DBAE9
                mov     [rdi], rax

loc_1406DBAE9:                          ; CODE XREF: sub_1406DB9DC+108↑j
                                        ; sub_1406DB9DC+145F4E↓j ...
                cmp     sil, 1
                jz      loc_140821938

loc_1406DBAF3:                          ; CODE XREF: sub_1406DB9DC+145F66↓j
                mov     eax, ebx

loc_1406DBAF5:                          ; CODE XREF: sub_1406DB9DC+145F23↓j
                lea     r11, [rsp+0C0h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406DB9DC   endp

byte_1406DBB13  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400771A0↑o
                                        ; .pdata:0000000140103CB0↑o

; =============== S U B R O U T I N E =======================================


sub_1406DBB1C   proc near               ; CODE XREF: sub_1406DB8FC+43↑p
                                        ; DATA XREF: .rdata:00000001400771CC↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140821948 SIZE 00000084 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r15
                sub     rsp, 30h
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     rsi, rdx
                xor     r15d, r15d
                mov     rbx, rcx

loc_1406DBB42:                          ; CODE XREF: sub_1406DBB1C+2E↓j
                inc     rax
                cmp     [rcx+rax*2], r15w
                jnz     short loc_1406DBB42
                add     eax, eax
                jz      loc_140821948
                add     eax, 2
                cmp     eax, 0Ah
                jbe     short loc_1406DBB66
                cmp     word ptr [rcx], 5Ch ; '\'
                jz      loc_140821952

loc_1406DBB66:                          ; CODE XREF: sub_1406DBB1C+3E↑j
                                        ; sub_1406DBB1C+145E3B↓j ...
                cmp     word ptr [rbx], 5Ch ; '\'
                jz      loc_14082197F

loc_1406DBB70:                          ; CODE XREF: sub_1406DBB1C+145E73↓j
                mov     ecx, 18h

loc_1406DBB75:                          ; CODE XREF: sub_1406DBB1C+145E6D↓j
                add     eax, ecx
                mov     [r8], ecx
                mov     edx, eax
                mov     r8d, 50777445h
                mov     ecx, 1
                mov     ebp, eax
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_140821994
                cmp     word ptr [rbx], 5Ch ; '\'
                jz      loc_14082199B

loc_1406DBBA4:                          ; CODE XREF: sub_1406DBB1C+145E87↓j
                lea     r9, aDosdevices ; "\\DosDevices\\"
                mov     rax, rbx

loc_1406DBBAE:                          ; CODE XREF: sub_1406DBB1C+145E94↓j
                lea     r8, aWsWs       ; "%ws%ws"
                mov     [rsp+38h+var_18], rax
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14021C308
                test    eax, eax
                jnz     loc_1408219B5
                mov     [rsi], rdi

loc_1406DBBD0:                          ; CODE XREF: sub_1406DBB1C+145E31↓j
                                        ; sub_1406DBB1C+145EAB↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406DBB1C   endp

byte_1406DBBEC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400771CC↑o
                                        ; .pdata:0000000140103CBC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406DBBF4   proc near               ; CODE XREF: sub_1406DB5B4+EE↑p
                                        ; sub_140949F1C+128↓p
                                        ; DATA XREF: ...

var_50          = dword ptr -50h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_8           = qword ptr -8
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 00000001408219CC SIZE 000000A9 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                xor     eax, eax
                xor     ebx, ebx
                mov     [rbp+var_38], ebx
                mov     rdi, rdx
                mov     [rbp+var_40], rbx
                mov     rsi, rcx
                mov     [rbp+var_18], rax
                mov     [rbp+var_10], eax
                call    sub_1406DC138
                neg     al
                mov     eax, [rsi+4]
                sbb     r14w, r14w
                and     r14w, 0FFF8h
                add     r14w, 11Ch
                add     r14w, [rcx+98h]
                add     r14w, [rcx+0A8h]
                movzx   r13d, r14w
                lea     rcx, [r13+68h]
                cmp     rax, rcx
                jb      loc_1406DC06A
                mov     rax, cs:off_140C00A68
                lea     r9, [rbp+var_38]
                lea     r8, [rbp+var_18]
                lea     edx, [rbx+0Ch]
                lea     ecx, [rbx+19h]
                call    sub_1404079D0
                test    eax, eax
                js      loc_1408219CC

loc_1406DBC8E:                          ; CODE XREF: sub_1406DBBF4+145DE1↓j
                mov     r15, gs:188h
                lea     eax, [r14+20h]
                mov     [rdi+4Eh], bx
                lea     r12, [rsi+148h]
                mov     [rdi+4Ch], ax
                lea     rcx, [rdi+68h]
                mov     dword ptr [rdi+48h], 0C0020002h
                mov     r8, r13
                mov     eax, [r15+480h]
                xor     edx, edx
                mov     [rdi+50h], eax
                mov     eax, [r15+478h]
                mov     [rdi+54h], eax
                mov     eax, [r15+28Ch]
                mov     [rdi+60h], eax
                mov     eax, [r15+2DCh]
                mov     [rdi+64h], eax
                mov     rax, [r12]
                mov     [rdi+58h], rax
                call    memset
                mov     eax, [rsi+4]
                mov     [rdi+68h], eax
                mov     word ptr [rdi+6Ch], 0Ah
                mov     eax, cs:NtBuildNumber
                movzx   ecx, ax
                mov     [rdi+70h], ecx
                mov     rcx, rsi
                call    sub_140214FB8
                mov     edx, 5
                mov     [rdi+74h], eax
                test    dword ptr [rsi+0Ch], 4000000h
                lea     ebx, [rdx-4]
                jnz     loc_1408219DA
                cmp     dword ptr [rsi+4], 100000h
                ja      loc_1408219DA
                cmp     eax, 100h
                ja      loc_1408219DA
                mov     al, dl
                mov     cl, bl

loc_1406DBD43:                          ; CODE XREF: sub_1406DBBF4+145DEA↓j
                mov     [rdi+6Eh], cl
                lea     rcx, [rbp+var_40]
                mov     [rdi+6Fh], al
                mov     [rdi+90h], ebx
                mov     eax, [rsi+0Ch]
                and     eax, 0FF3FFEFFh
                mov     [rdi+88h], eax
                mov     eax, [rsi+134h]
                mov     [rdi+84h], eax
                mov     eax, cs:dword_140CFC418
                mov     [rdi+80h], eax
                mov     eax, cs:dword_140C197B0
                mov     [rdi+9Ch], eax
                call    KeQueryPerformanceCounter
                mov     rax, [rbp+var_40]
                mov     rcx, rsi
                xchg    rax, cs:qword_140C198A0
                call    sub_1406DC138
                test    al, al
                mov     ecx, ebx
                mov     rax, [rbp+var_40]
                jnz     loc_1408219E3
                mov     [rdi+168h], rax
                mov     rax, [rsi+140h]
                mov     [rdi+170h], rax
                mov     rax, cs:qword_140C199B8
                mov     [rdi+160h], rax
                mov     dword ptr [rdi+94h], 8
                mov     eax, [rsi+0D8h]
                cmp     eax, 4
                cmovnz  ecx, eax
                mov     [rdi+178h], ecx
                mov     eax, dword ptr [rbp+var_18+4]
                mov     [rdi+0A0h], rax
                mov     eax, [rbp+var_10]
                mov     [rdi+0A8h], rax
                lea     rax, [rdi+180h]
                movzx   r13d, word ptr [rsi+98h]
                mov     [rbp+var_30], rax
                add     r13, rax
                mov     eax, 68h ; 'h'

loc_1406DBE19:                          ; CODE XREF: sub_1406DBBF4+145E62↓j
                lea     rbx, [rax+rdi]
                mov     edx, 0ACh
                lea     rcx, [rbx+48h]
                call    sub_1406DC150
                movups  xmm0, xmmword ptr [rbx+8Ch]
                movq    rdx, xmm0
                psrldq  xmm0, 8
                mov     [rbx+8Ch], dx
                movq    rcx, xmm0
                mov     [rbx+96h], cx
                mov     rax, rdx
                shr     rax, 10h
                mov     [rbx+8Eh], ax
                mov     rax, rdx
                shr     rax, 20h
                mov     [rbx+92h], ax
                mov     rax, rcx
                shr     rax, 30h
                mov     [rbx+90h], ax
                mov     rax, rcx
                shr     rax, 10h
                mov     [rbx+98h], ax
                shr     rdx, 30h
                mov     [rbx+94h], dx
                shr     rcx, 20h
                mov     [rbx+9Ah], cx
                movups  xmm0, xmmword ptr [rbx+0E0h]
                movq    rdx, xmm0
                mov     rax, rdx
                mov     [rbx+0E0h], dx
                shr     rax, 10h
                mov     [rbx+0E2h], ax
                mov     rax, rdx
                shr     rax, 20h
                mov     [rbx+0E6h], ax
                shr     rdx, 30h
                mov     [rbx+0E8h], dx
                movups  [rbp+var_28], xmm0
                psrldq  xmm0, 8
                movq    rcx, xmm0
                mov     [rbx+0EAh], cx
                mov     rax, rcx
                shr     rax, 30h
                mov     [rbx+0E4h], ax
                mov     rax, rcx
                shr     rcx, 20h
                mov     [rbx+0EEh], cx
                mov     rcx, [rbp+var_30]
                shr     rax, 10h
                mov     [rbx+0ECh], ax
                movzx   r8d, word ptr [rsi+98h]
                mov     rdx, [rsi+0A0h]
                add     r8, 2
                call    memmove
                movzx   r8d, word ptr [rsi+0A8h]
                lea     rcx, [r13+2]
                mov     rdx, [rsi+0B0h]
                add     r8, 2
                call    memmove
                mov     eax, [rdi+8]
                mov     r8d, 50h ; 'P'
                movzx   ecx, r14w
                add     ecx, 27h ; '''
                and     ecx, 0FFFFFFF8h
                add     ecx, eax
                mov     [rdi+8], ecx
                test    dword ptr [rsi+0Ch], 2000000h
                jnz     loc_1406DC0A3

loc_1406DBF70:                          ; CODE XREF: sub_1406DBBF4+4B7↓j
                                        ; sub_1406DBBF4+537↓j
                mov     eax, [rdi+8]
                xor     r9d, r9d
                add     eax, r8d
                cmp     eax, [rdi]
                ja      loc_1406DC012
                mov     edx, [rdi+8]
                add     rdx, rdi
                mov     dword ptr [rdx+4], 500050h
                mov     dword ptr [rdx], 0C0020002h
                mov     eax, [r15+480h]
                mov     [rdx+8], eax
                mov     eax, [r15+478h]
                mov     [rdx+0Ch], eax
                mov     eax, [r15+28Ch]
                mov     [rdx+18h], eax
                mov     eax, [r15+2DCh]
                mov     [rdx+1Ch], eax
                mov     rax, [r12]
                mov     [rdx+10h], rax
                mov     [rdx+20h], r9d
                mov     rax, [rsi+438h]
                mov     ecx, [rax+106Ch]
                mov     [rdx+24h], ecx
                mov     rax, [rsi+438h]
                movups  xmm0, xmmword ptr [rax+1038h]
                movdqu  xmmword ptr [rdx+30h], xmm0
                mov     rax, [rsi+4F0h]
                mov     [rdx+28h], rax
                mov     rax, [rsi+438h]
                movups  xmm0, xmmword ptr [rax+1048h]
                movdqu  xmmword ptr [rdx+40h], xmm0
                mov     eax, [rdi+8]
                add     eax, r8d
                mov     [rdi+8], eax

loc_1406DC012:                          ; CODE XREF: sub_1406DBBF4+387↑j
                mov     eax, [rdi+8]
                mov     ebx, 3
                mov     r8d, [rdi]
                mov     [rdi+30h], eax
                mov     eax, [rdi+8]
                cmp     eax, r8d
                jnb     short loc_1406DC04A
                lea     rax, [rsi+70h]
                cmp     [rax], rax
                jnz     short loc_1406DC08F
                cmp     [rsi+88h], r9d
                jnz     short loc_1406DC08F

loc_1406DC03A:                          ; CODE XREF: sub_1406DBBF4+4AD↓j
                lea     rax, [rsi+400h]
                cmp     [rax], rax
                jnz     loc_140821A5B

loc_1406DC04A:                          ; CODE XREF: sub_1406DBBF4+432↑j
                                        ; sub_1406DBBF4+145E7C↓j
                mov     eax, [rdi+30h]
                mov     r8d, 1
                mov     rdx, rdi
                mov     [rdi+4], eax
                mov     rcx, rsi
                mov     [rdi+2Ch], ebx
                call    sub_140607440
                mov     eax, [rdi+8]
                mov     [rdi+4], eax

loc_1406DC06A:                          ; CODE XREF: sub_1406DBBF4+72↑j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+70h+arg_10]
                add     rsp, 70h
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

loc_1406DC08F:                          ; CODE XREF: sub_1406DBBF4+43B↑j
                                        ; sub_1406DBBF4+444↑j
                mov     r9, r12
                mov     [rsp+70h+var_50], ebx
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1406DC738
                jmp     short loc_1406DC03A
; ---------------------------------------------------------------------------

loc_1406DC0A3:                          ; CODE XREF: sub_1406DBBF4+376↑j
                mov     eax, [rdi+8]
                add     eax, 44h ; 'D'
                cmp     eax, [rdi]
                ja      loc_1406DBF70
                mov     edx, [rdi+8]
                add     rdx, rdi
                mov     dword ptr [rdx+4], 50044h
                mov     dword ptr [rdx], 0C0020002h
                mov     eax, [r15+480h]
                mov     [rdx+8], eax
                mov     eax, [r15+478h]
                mov     [rdx+0Ch], eax
                mov     eax, [r15+28Ch]
                mov     [rdx+18h], eax
                mov     eax, [r15+2DCh]
                mov     [rdx+1Ch], eax
                mov     rax, [r12]
                mov     [rdx+10h], rax
                mov     rax, [rsi+438h]
                movzx   ecx, byte ptr [rsi+342h]
                shl     rcx, 5
                movups  xmm0, xmmword ptr [rcx+rax+10A4h]
                movups  xmmword ptr [rdx+20h], xmm0
                movups  xmm1, xmmword ptr [rcx+rax+10B4h]
                mov     [rdx+40h], r8d
                movups  xmmword ptr [rdx+30h], xmm1
                mov     eax, [rdi+8]
                add     eax, 48h ; 'H'
                mov     [rdi+8], eax
                jmp     loc_1406DBF70
; } // starts at 1406DBBF4
sub_1406DBBF4   endp

; ---------------------------------------------------------------------------
byte_1406DC130  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140077200↑o
                                        ; .pdata:0000000140103CC8↑o

; =============== S U B R O U T I N E =======================================


sub_1406DC138   proc near               ; CODE XREF: sub_1406DAF7C+189↑p
                                        ; sub_1406DB5B4+20E↑p ...

; FUNCTION CHUNK AT 0000000140821A76 SIZE 00000010 BYTES

                mov     eax, [rcx+340h]
                test    al, 10h
                jnz     loc_140821A76

loc_1406DC146:                          ; CODE XREF: sub_1406DC138+145945↓j
                xor     al, al
                retn
sub_1406DC138   endp

; ---------------------------------------------------------------------------
                align 2
algn_1406DC14A:                         ; DATA XREF: .pdata:0000000140103CD4↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1C0h

sub_1406DC150   proc near               ; CODE XREF: sub_1406DBBF4+232↑p
                                        ; RtlQueryDynamicTimeZoneInformation+9↓p ...

var_298         = byte ptr -298h
var_290         = dword ptr -290h
var_288         = qword ptr -288h
var_280         = dword ptr -280h
var_27C         = dword ptr -27Ch
var_278         = qword ptr -278h
var_270         = dword ptr -270h
var_26C         = dword ptr -26Ch
var_268         = qword ptr -268h
var_260         = xmmword ptr -260h
var_250         = byte ptr -250h
var_248         = dword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = dword ptr -230h
var_210         = dword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = dword ptr -1F8h
var_1D8         = dword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1A0         = dword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = dword ptr -188h
var_168         = dword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = dword ptr -150h
var_130         = dword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = dword ptr -118h
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = dword ptr -0E0h
var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r14
                lea     rbp, [rsp-1B0h]
                sub     rsp, 2B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1C0h+var_20], rax
                xor     r14d, r14d
                mov     esi, edx
                mov     rbx, rcx
                mov     [rsp+2C0h+var_288], r14
                xorps   xmm0, xmm0
                mov     [rsp+2C0h+var_27C], r14d
                lea     rdx, [rsp+2C0h+var_288]
                mov     [rsp+2C0h+var_26C], r14d
                xor     ecx, ecx
                mov     [rsp+2C0h+var_290], r14d
                movups  [rsp+2C0h+var_260], xmm0
                call    sub_1406DC3E0
                test    eax, eax
                js      loc_1406DC330
                mov     r8d, esi
                xor     edx, edx
                mov     rcx, rbx
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+2C0h+var_250]
                mov     r8d, 230h
                call    memset
                mov     [rsp+2C0h+var_280], 400000h
                mov     r10d, 120h
                mov     [rsp+2C0h+var_248], r10d
                lea     rax, aBias      ; "Bias"
                mov     [rbp+1C0h+var_240], rax
                lea     rax, [rbx+4]
                mov     [rsp+2C0h+var_278], rax
                lea     rax, aStandardname ; "StandardName"
                mov     [rbp+1C0h+var_208], rax
                lea     rax, [rsp+2C0h+var_280]
                mov     [rbp+1C0h+var_200], rax
                mov     r11d, 4000000h
                mov     [rbp+1C0h+var_238], rbx
                lea     rax, aStandardbias ; "StandardBias"
                mov     [rbp+1C0h+var_1D0], rax
                lea     rax, [rbx+54h]
                mov     [rbp+1C0h+var_1C8], rax
                lea     rax, aStandardstart ; "StandardStart"
                mov     [rbp+1C0h+var_198], rax
                lea     rax, [rbx+44h]
                mov     [rbp+1C0h+var_190], rax
                lea     edx, [r14-10h]
                mov     [rax], edx
                lea     rax, [rbx+58h]
                mov     [rsp+2C0h+var_268], rax
                lea     rax, aDaylightname ; "DaylightName"
                mov     [rbp+1C0h+var_160], rax
                lea     rax, [rsp+2C0h+var_270]
                mov     [rbp+1C0h+var_158], rax
                lea     rax, aDaylightbias ; "DaylightBias"
                mov     [rbp+1C0h+var_128], rax
                lea     rax, [rbx+0A8h]
                mov     [rbp+1C0h+var_120], rax
                lea     rax, aDaylightstart ; "DaylightStart"
                mov     [rbp+1C0h+var_F0], rax
                lea     rax, [rbx+98h]
                mov     [rsp+2C0h+var_270], 400000h
                mov     r8d, 1000000h
                mov     [rbp+1C0h+var_E8], rax
                mov     ecx, 3000000h
                mov     [rax], edx
                mov     [rbp+1C0h+var_230], r11d
                mov     [rbp+1C0h+var_210], r10d
                mov     [rbp+1C0h+var_1F8], r8d
                mov     [rbp+1C0h+var_1D8], r10d
                mov     [rbp+1C0h+var_1C0], r11d
                mov     [rbp+1C0h+var_1A0], r10d
                mov     [rbp+1C0h+var_188], ecx
                mov     [rbp+1C0h+var_168], r10d
                mov     [rbp+1C0h+var_150], r8d
                mov     [rbp+1C0h+var_130], r10d
                mov     [rbp+1C0h+var_118], r11d
                mov     [rbp+1C0h+var_F8], r10d
                mov     [rbp+1C0h+var_E0], ecx
                cmp     esi, 1B0h
                jnb     short loc_1406DC358

loc_1406DC2F6:                          ; CODE XREF: sub_1406DC150+270↓j
                mov     rdx, [rsp+2C0h+var_288]
                lea     r8, [rsp+2C0h+var_250]
                xor     r9d, r9d
                mov     [rsp+2C0h+var_298], 1
                mov     ecx, 40000000h
                call    sub_14062B088
                mov     edi, eax
                test    eax, eax
                js      short loc_1406DC324
                cmp     esi, 1B0h
                jnb     loc_1406DC3C5

loc_1406DC324:                          ; CODE XREF: sub_1406DC150+1C6↑j
                                        ; sub_1406DC150+283↓j
                mov     rcx, [rsp+2C0h+var_288]
                call    ZwClose
                mov     eax, edi

loc_1406DC330:                          ; CODE XREF: sub_1406DC150+60↑j
                mov     rcx, [rbp+1C0h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2C0h+var_10]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406DC358:                          ; CODE XREF: sub_1406DC150+1A4↑j
                lea     rax, [rbx+0ACh]
                mov     dword ptr [rsp+2C0h+var_260], r8d
                mov     qword ptr [rsp+2C0h+var_260+8], rax
                lea     rax, sub_1407D08B0
                mov     [rbp+1C0h+var_C8], rax
                lea     rax, aTimezonekeynam ; "TimeZoneKeyName"
                mov     [rbp+1C0h+var_B8], rax
                lea     rax, [rsp+2C0h+var_260]
                mov     [rbp+1C0h+var_B0], rax
                lea     rax, aDynamicdayligh ; "DynamicDaylightTimeDisabled"
                mov     [rbp+1C0h+var_80], rax
                lea     rax, [rsp+2C0h+var_290]
                mov     [rbp+1C0h+var_78], rax
                mov     [rbp+1C0h+var_A8], r14d
                mov     [rbp+1C0h+var_88], r10d
                mov     [rbp+1C0h+var_70], r11d
                jmp     loc_1406DC2F6
; ---------------------------------------------------------------------------

loc_1406DC3C5:                          ; CODE XREF: sub_1406DC150+1CE↑j
                cmp     [rsp+2C0h+var_290], r14d
                setnz   cl
                mov     [rbx+1ACh], cl
                jmp     loc_1406DC324
; } // starts at 1406DC150
sub_1406DC150   endp

; ---------------------------------------------------------------------------
algn_1406DC3D8:                         ; DATA XREF: .pdata:0000000140103CE0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406DC3E0   proc near               ; CODE XREF: sub_1406DC150+59↑p
                                        ; sub_1407A9EA4+22↓p ...

var_258         = qword ptr -258h
var_250         = dword ptr -250h
var_248         = qword ptr -248h
var_238         = byte ptr -238h
var_228         = byte ptr -228h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140821A88 SIZE 0000002C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 270h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+278h+var_18], rax
                cmp     cs:dword_140C4C42C, 2
                mov     rdi, rdx
                mov     bl, cl
                jnz     short loc_1406DC446

loc_1406DC40D:                          ; CODE XREF: sub_1406DC3E0+B4↓j
                                        ; sub_1406DC3E0+1456C9↓j
                mov     r9, rdi
                lea     rdx, aTimezoneinform_0 ; "TimeZoneInformation"
                mov     r8b, bl
                mov     ecx, 2
                call    sub_14062CC80

loc_1406DC424:                          ; CODE XREF: sub_1406DC3E0+A8↓j
                                        ; sub_1406DC3E0+1456CF↓j
                mov     rcx, [rsp+278h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+278h+arg_0]
                add     rsp, 270h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406DC446:                          ; CODE XREF: sub_1406DC3E0+2B↑j
                lea     rax, [rsp+278h+var_238]
                xor     r9d, r9d
                mov     [rsp+278h+var_248], rax
                lea     rdx, aTargetntpath_1 ; "TargetNtPath"
                lea     rax, [rsp+278h+var_228]
                mov     [rsp+278h+var_250], 208h
                xor     r8d, r8d
                mov     [rsp+278h+var_258], rax
                lea     rcx, aTimezoneinform_1 ; "TimeZoneInformationSettings"
                call    RtlGetPersistedStateLocation
                test    eax, eax
                jns     loc_140821A88
                cmp     eax, 0C0000034h
                jnz     short loc_1406DC424
                mov     cs:dword_140C4C42C, 2
                jmp     loc_1406DC40D
; } // starts at 1406DC3E0
sub_1406DC3E0   endp

; ---------------------------------------------------------------------------
algn_1406DC499:                         ; DATA XREF: .rdata:0000000140077250↑o
                                        ; .pdata:0000000140103CEC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406DC4A0   proc near               ; CODE XREF: sub_1406079BC+319↑p
                                        ; DATA XREF: .pdata:0000000140103CF8↑o

var_58          = byte ptr -58h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = word ptr -24h

                push    rbx
                sub     rsp, 70h
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rsp+78h+var_58]
                lea     r8d, [rdx+48h]
                call    memset
                lea     rdx, [rsp+78h+var_58]
                mov     rcx, rbx
                call    sub_140311A1C
                mov     eax, 0FEFFh
                lea     rcx, [rsp+78h+var_58]
                and     [rsp+78h+var_24], ax
                mov     edx, 6
                call    sub_1402154D4
                cmp     dword ptr [rbx+168h], 0
                mov     eax, 1
                mov     [rsp+78h+var_24], ax
                mov     [rsp+78h+var_2C], 3
                mov     [rsp+78h+var_28], 48h ; 'H'
                jbe     short loc_1406DC51A
                lea     rdx, [rsp+78h+var_58]
                mov     rcx, rbx
                call    sub_1405FD824

loc_1406DC50F:                          ; CODE XREF: sub_1406DC4A0+7F↓j
                test    eax, eax
                js      short loc_1406DC521

loc_1406DC513:                          ; CODE XREF: sub_1406DC4A0+89↓j
                                        ; sub_1406DC4A0+93↓j ...
                add     rsp, 70h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406DC51A:                          ; CODE XREF: sub_1406DC4A0+60↑j
                mov     eax, 0C0000001h
                jmp     short loc_1406DC50F
; ---------------------------------------------------------------------------

loc_1406DC521:                          ; CODE XREF: sub_1406DC4A0+71↑j
                mov     ecx, 10000000h
                test    [rbx+0Ch], ecx
                jnz     short loc_1406DC513
                mov     eax, [rbx+340h]
                test    ecx, eax
                jnz     short loc_1406DC513
                lea     rdx, [rsp+78h+var_58]
                mov     rcx, rbx
                call    sub_1406DDA18
                jmp     short loc_1406DC513
sub_1406DC4A0   endp

; ---------------------------------------------------------------------------
algn_1406DC544:                         ; DATA XREF: .pdata:0000000140103CF8↑o
                align 10h
; Exported entry 1935. PsRevertToSelf

; =============== S U B R O U T I N E =======================================



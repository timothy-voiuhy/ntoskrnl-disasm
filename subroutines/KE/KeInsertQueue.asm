KeInsertQueue   proc near               ; CODE XREF: sub_1404F17C4+9E↓p
                                        ; sub_14050D6F0+F↓p ...

var_28          = byte ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046BCA4 SIZE 0000002F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, rdx
                lea     rbp, [rcx+8]
                mov     rbx, rcx
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14030B0D1

loc_14030AFFD:                          ; CODE XREF: KeInsertQueue+113↓j
                                        ; KeInsertQueue+11D↓j ...
                mov     rsi, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     r14, [rsi+8]
                jnz     loc_14046BCA4

loc_14030B01A:                          ; CODE XREF: KeInsertQueue+160CFB↓j
                mov     rcx, rbx
                call    sub_1402AF4F0
                mov     eax, [rbx+4]
                mov     [rsp+48h+arg_0], eax
                cmp     [rbp+0], rbp
                jz      short loc_14030B059
                mov     eax, [rbx+28h]
                cmp     eax, [rbx+2Ch]
                jnb     short loc_14030B059
                mov     rax, [r14+0E8h]
                cmp     rax, rbx
                jz      loc_14046BCC0

loc_14030B047:                          ; CODE XREF: KeInsertQueue+160D0E↓j
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402AF540
                test    al, al
                jnz     short loc_14030B096

loc_14030B059:                          ; CODE XREF: KeInsertQueue+6D↑j
                                        ; KeInsertQueue+75↑j ...
                mov     edx, [rbx+4]
                lea     eax, [rdx+1]
                mov     [rbx+4], eax
                lea     rax, [rbx+18h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_14030B113
                mov     [rdi], rax
                mov     [rdi+8], rcx
                mov     [rcx], rdi
                mov     [rax+8], rdi
                test    edx, edx
                jnz     short loc_14030B096
                cmp     [rbp+0], rbp
                jz      short loc_14030B096
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402C2EC0

loc_14030B096:                          ; CODE XREF: KeInsertQueue+97↑j
                                        ; KeInsertQueue+C3↑j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15b
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     eax, [rsp+48h+arg_0]
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030B0D1:                          ; CODE XREF: KeInsertQueue+37↑j
                test    al, 1
                jz      loc_14030AFFD
                cmp     r15b, 0Fh
                ja      loc_14030AFFD
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r15b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_14030AFFD
; ---------------------------------------------------------------------------

loc_14030B113:                          ; CODE XREF: KeInsertQueue+AD↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeInsertQueue   endp

; ---------------------------------------------------------------------------
algn_14030B11A:                         ; DATA XREF: .rdata:0000000140072E90↑o
                                        ; .pdata:00000001400D431C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14030B120   proc near               ; CODE XREF: sub_14060DA00+5FA↓p
                                        ; sub_1406B4340+B8↓p ...
                mov     rax, cs:qword_140C4E4C8
                movzx   edx, cx
                mov     rax, [rax+rdx*8]
                mov     rax, [rax+1B08h]
                retn
sub_14030B120   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14030B137:                         ; DATA XREF: .pdata:00000001400D4328↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14030B140   proc near               ; CODE XREF: sub_140240E30+9EF↑p
                                        ; sub_1402CD400+129↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_1402CF720
                mov     r9d, [rbx+8]
                imul    r9, cs:qword_140CFB268
                inc     dword ptr [rdi+74h]
                mov     rax, [rdi+78h]
                shr     r9, 7
                add     [rdi+18h], r9
                mov     r8, [rdi+18h]
                test    rax, rax
                jz      short loc_14030B188
                lock inc dword ptr [rax]
                mov     r8, [rdi+18h]

loc_14030B188:                          ; CODE XREF: sub_14030B140+3F↑j
                mov     rax, [rdi]
                cmp     rax, r8
                ja      short loc_14030B1B7

loc_14030B190:                          ; CODE XREF: sub_14030B140+9C↓j
                                        ; sub_14030B140+A2↓j
                test    byte ptr [rdi+70h], 1
                jnz     short loc_14030B1A7

loc_14030B196:                          ; CODE XREF: sub_14030B140+75↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030B1A7:                          ; CODE XREF: sub_14030B140+54↑j
                mov     r8b, 1
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14030B828
                jmp     short loc_14030B196
; ---------------------------------------------------------------------------

loc_14030B1B7:                          ; CODE XREF: sub_14030B140+4E↑j
                sub     rax, r8
                xor     edx, edx
                dec     rax
                add     rax, r9
                div     r9
                add     [rdi+74h], eax
                mov     ecx, eax
                imul    rcx, r9
                add     rcx, r8
                mov     [rdi+18h], rcx
                mov     rcx, [rdi+78h]
                test    rcx, rcx
                jz      short loc_14030B190
                lock xadd [rcx], eax
                jmp     short loc_14030B190
sub_14030B140   endp

; ---------------------------------------------------------------------------
byte_14030B1E4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4334↑o

; =============== S U B R O U T I N E =======================================


sub_14030B1EC   proc near               ; CODE XREF: sub_1402897D0+C0↑p
                                        ; sub_1402CD400+2CC↑p ...

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046BCD4 SIZE 00000062 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, [rdx+68h]
                xor     r13d, r13d
                mov     r12d, r8d
                mov     rbp, rdx
                mov     rsi, rcx
                test    r14, r14
                jnz     short loc_14030B23D

loc_14030B21D:                          ; CODE XREF: sub_14030B1EC+5A↓j
                                        ; sub_14030B1EC+83↓j ...
                xor     eax, eax

loc_14030B21F:                          ; CODE XREF: sub_14030B1EC+95↓j
                                        ; sub_14030B1EC+F7↓j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
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

loc_14030B23D:                          ; CODE XREF: sub_14030B1EC+2F↑j
                mov     eax, [rcx+0D8h]
                add     r14, rax
                jz      short loc_14030B21D
                mov     rax, gs:20h
                cmp     rsi, rax
                jnz     loc_14046BCD4

loc_14030B25A:                          ; CODE XREF: sub_14030B1EC+160AF5↓j
                mov     r9b, 1

loc_14030B25D:                          ; CODE XREF: sub_14030B1EC+160AEF↓j
                mov     rdx, r14
                mov     [rsp+58h+var_38], r13
                mov     rcx, rbp
                call    sub_1402D0A30
                test    eax, eax
                jz      short loc_14030B21D
                mov     rdx, rsi
                mov     ecx, 1
                call    sub_140242060
                test    rax, rax
                jnz     short loc_14030B21F
                mov     rax, [r14+1A0h]
                lea     rbx, [rsi+7C70h]
                mov     r15d, [rax+74h]
                mov     rax, [rbx+8]
                test    al, 1
                jnz     short loc_14030B2F3
                mov     rbx, rax

loc_14030B2A0:                          ; CODE XREF: sub_14030B1EC+118↓j
                test    rbx, rbx
                jz      loc_14030B21D
                lea     rdi, [rbx-58h]
                cmp     [rdi+74h], r15d
                jb      loc_14030B360
                jnz     loc_14030B21D
                movsx   eax, byte ptr [rbp+0C3h]
                cmp     r12d, eax
                cmovl   r12d, eax

loc_14030B2CB:                          ; CODE XREF: sub_14030B1EC+169↓j
                mov     r8d, r12d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14030B468
                cmp     rdi, r14
                jnz     short loc_14030B306
                mov     cl, 1

loc_14030B2E0:                          ; CODE XREF: sub_14030B1EC+160B45↓j
                test    rax, rax
                jnz     loc_14030B21F
                test    cl, cl
                jnz     loc_14030B21D
                jmp     short loc_14030B32D
; ---------------------------------------------------------------------------

loc_14030B2F3:                          ; CODE XREF: sub_14030B1EC+AF↑j
                cmp     rax, 1
                jz      loc_14030B21D
                or      rbx, 1
                xor     rbx, rax
                jmp     short loc_14030B2A0
; ---------------------------------------------------------------------------

loc_14030B306:                          ; CODE XREF: sub_14030B1EC+F0↑j
                mov     [rsp+58h+arg_8], r13b
                test    rax, rax
                jnz     loc_14030B21F
                lea     rcx, [rdi+188h]
                test    byte ptr [rcx+8], 1
                mov     rax, [rcx]
                jnz     short loc_14030B392

loc_14030B324:                          ; CODE XREF: sub_14030B1EC+1AE↓j
                test    rax, rax
                jnz     loc_14046BD15

loc_14030B32D:                          ; CODE XREF: sub_14030B1EC+105↑j
                                        ; sub_14030B1EC+1A9↓j
                mov     rax, [rbx+8]
                mov     rcx, rbx
                test    rax, rax
                jz      short loc_14030B37E

loc_14030B339:                          ; CODE XREF: sub_14030B1EC+156↓j
                mov     rbx, rax
                mov     rax, [rax]
                test    rax, rax
                jnz     short loc_14030B339

loc_14030B344:                          ; CODE XREF: sub_14030B1EC+19A↓j
                                        ; sub_14030B1EC+19F↓j
                test    rbx, rbx
                jz      loc_14030B21D
                lea     rdi, [rbx-58h]
                cmp     [rdi+74h], r15d
                jz      loc_14030B2CB
                jmp     loc_14030B21D
; ---------------------------------------------------------------------------

loc_14030B360:                          ; CODE XREF: sub_14030B1EC+C5↑j
                                        ; sub_14030B1EC+160B24↓j
                cmp     [rdi+72h], r13w
                jz      loc_14046BCE6
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14030B468
                jmp     loc_14030B21F
; ---------------------------------------------------------------------------

loc_14030B37E:                          ; CODE XREF: sub_14030B1EC+14B↑j
                                        ; sub_14030B1EC+1A4↓j
                mov     rbx, [rbx+10h]
                and     rbx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_14030B344
                cmp     [rbx], rcx
                jz      short loc_14030B344
                mov     rcx, rbx
                jmp     short loc_14030B37E
; ---------------------------------------------------------------------------

loc_14030B392:                          ; CODE XREF: sub_14030B1EC+136↑j
                test    rax, rax
                jz      short loc_14030B32D
                xor     rax, rcx
                jmp     short loc_14030B324
sub_14030B1EC   endp

; ---------------------------------------------------------------------------
byte_14030B39C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140073044↑o
                                        ; .pdata:00000001400D4340↑o

; =============== S U B R O U T I N E =======================================


sub_14030B3A4   proc near               ; CODE XREF: sub_140241AD0+1DC↑p
                                        ; sub_14030B3A4+1609CB↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014046BD36 SIZE 00000090 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                and     [rsp+38h+arg_10], 0
                mov     rbx, r8
                mov     rax, [r8+8]
                mov     r14, rdx
                mov     rbp, rcx
                test    al, 1
                jnz     short loc_14030B3EA
                mov     rbx, rax

loc_14030B3CF:                          ; CODE XREF: sub_14030B3A4+53↓j
                                        ; sub_14030B3A4+1609EE↓j ...
                test    rbx, rbx
                jnz     short loc_14030B3F9

loc_14030B3D4:                          ; CODE XREF: sub_14030B3A4+4A↓j
                xor     eax, eax

loc_14030B3D6:                          ; CODE XREF: sub_14030B3A4+B9↓j
                                        ; sub_14030B3A4+1609D3↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14030B3EA:                          ; CODE XREF: sub_14030B3A4+26↑j
                cmp     rax, 1
                jz      short loc_14030B3D4
                or      rbx, 1
                xor     rbx, rax
                jmp     short loc_14030B3CF
; ---------------------------------------------------------------------------

loc_14030B3F9:                          ; CODE XREF: sub_14030B3A4+2E↑j
                movzx   r8d, word ptr [rbx+1Ah]

loc_14030B3FE:                          ; CODE XREF: sub_14030B3A4+1609A2↓j
                test    r8d, r8d
                jz      loc_14046BD4B
                bsr     r11d, r8d
                lea     rsi, [rbx+30h]
                mov     eax, r11d
                shl     rax, 4
                add     rsi, rax
                mov     [rsp+38h+arg_10], r11d
                mov     r9, [rsi]

loc_14030B421:                          ; CODE XREF: sub_14030B3A4+160998↓j
                lea     rdi, [r9-0D8h]
                mov     rcx, rbp
                lea     rdx, [rdi+240h]
                call    sub_1402D0BA4
                test    eax, eax
                jz      loc_14046BD36
                mov     r9d, r11d
                lea     rdx, [rbx-58h]
                mov     r8, rdi
                mov     rcx, r14
                call    sub_14030B4B8
                mov     ecx, [rbp+24h]
                mov     rax, rdi
                mov     [rdi+218h], ecx
                jmp     loc_14030B3D6
sub_14030B3A4   endp

; ---------------------------------------------------------------------------
algn_14030B462:                         ; DATA XREF: .rdata:000000014007306C↑o
                                        ; .pdata:00000001400D434C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14030B468   proc near               ; CODE XREF: sub_140240E30+AED↑p
                                        ; sub_1402CE788+238↑p ...
                push    rbx
                sub     rsp, 20h
                movzx   eax, word ptr [rdx+72h]
                mov     r10, rcx
                mov     ecx, r8d
                xor     ebx, ebx
                shr     eax, cl
                test    eax, eax
                jz      short loc_14030B4A7
                bsr     r9d, eax
                mov     rcx, r10
                add     r9d, r8d
                mov     eax, r9d
                add     rax, rax
                mov     rbx, [rdx+rax*8+88h]
                sub     rbx, 0D8h
                mov     r8, rbx
                call    sub_14030B4B8

loc_14030B4A7:                          ; CODE XREF: sub_14030B468+16↑j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14030B468   endp

algn_14030B4B1:                         ; DATA XREF: .pdata:00000001400D4358↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14030B4B8   proc near               ; CODE XREF: sub_1402B8790+4A↑p
                                        ; sub_1402B938C+15B↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046BDC6 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                lea     r10, [r8+0D8h]
                mov     rbx, r8
                mov     r8, [r10]
                mov     r11, rcx
                mov     rax, [r10+8]
                cmp     [r8+8], r10
                jnz     FatalListEntryError_20
                cmp     [rax], r10
                jnz     FatalListEntryError_20
                xor     edi, edi
                mov     [rax], r8
                mov     [r8+8], rax
                cmp     rax, r8
                jnz     short loc_14030B53D
                movzx   eax, word ptr [rdx+72h]
                mov     cl, [rdx+70h]
                btc     eax, r9d
                mov     [rdx+72h], ax
                test    cl, 2
                jnz     short loc_14030B53D
                mov     r8b, 1
                test    r8b, cl
                jz      short loc_14030B53D
                test    ax, ax
                jnz     short loc_14030B555
                lea     rcx, [rdx+188h]
                mov     rax, [rcx]
                test    [rcx+8], r8b
                jz      short loc_14030B530
                test    rax, rax
                jz      short loc_14030B535
                xor     rax, rcx

loc_14030B530:                          ; CODE XREF: sub_14030B4B8+6E↑j
                test    rax, rax
                jnz     short loc_14030B555

loc_14030B535:                          ; CODE XREF: sub_14030B4B8+73↑j
                mov     rcx, r11
                call    sub_14030B568

loc_14030B53D:                          ; CODE XREF: sub_14030B4B8+3D↑j
                                        ; sub_14030B4B8+51↑j ...
                btr     dword ptr [rbx+74h], 0Dh
                mov     [rbx+3B0h], rdi
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030B555:                          ; CODE XREF: sub_14030B4B8+5E↑j
                                        ; sub_14030B4B8+7B↑j
                mov     rcx, r11
                call    sub_14030B828
                jmp     short loc_14030B53D
sub_14030B4B8   endp

; ---------------------------------------------------------------------------
byte_14030B55F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007308C↑o
                                        ; .pdata:00000001400D4364↑o

; =============== S U B R O U T I N E =======================================


sub_14030B568   proc near               ; CODE XREF: sub_14030B4B8+80↑p
                                        ; sub_14030B828+10E↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046BDCE SIZE 0000003A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     dil, r8b
                lea     rsi, [rcx+7C70h]
                xor     ebp, ebp

loc_14030B588:                          ; CODE XREF: sub_14030B568+160895↓j
                lea     rbx, [rdx+198h]
                mov     rax, [rbx]
                test    rax, rax
                lea     rcx, [rax+188h]
                cmovz   rcx, rsi
                test    dil, dil
                jz      short loc_14030B5BA
                mov     rax, 0FFFFF78000000008h
                mov     rax, [rax]
                sub     rax, [rdx+40h]
                add     [rdx+38h], rax

loc_14030B5BA:                          ; CODE XREF: sub_14030B568+3B↑j
                and     byte ptr [rdx+70h], 0FEh
                add     rdx, 58h ; 'X'
                call    RtlRbRemoveNode
                mov     rdx, [rbx]
                test    rdx, rdx
                jnz     loc_14046BDCE

loc_14030B5D3:                          ; CODE XREF: sub_14030B568+16086A↓j
                                        ; sub_14030B568+16088B↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14030B568   endp

algn_14030B5E9:                         ; DATA XREF: .rdata:00000001400730B4↑o
                                        ; .pdata:00000001400D4370↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14030B5F0   proc near               ; CODE XREF: sub_14023E510+DE4↑p
                                        ; sub_140242060+271↑p ...

; FUNCTION CHUNK AT 000000014046BE08 SIZE 0000001E BYTES

                push    rbx
                sub     rsp, 20h
                cmp     dword ptr [rdx+74h], 0
                mov     r10, rdx
                movsx   r11d, byte ptr [r8+0C3h]
                mov     rbx, rcx
                jz      loc_14046BE08

loc_14030B60E:                          ; CODE XREF: sub_14030B5F0+160822↓j
                                        ; sub_14030B5F0+160831↓j
                mov     edx, r11d
                lea     rcx, [r8+0D8h]
                shl     rdx, 4
                add     rdx, 88h
                add     rdx, r10
                test    r9d, r9d
                jz      short loc_14030B672
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     short loc_14030B68B
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rax+8], rcx
                mov     [rdx], rcx

loc_14030B642:                          ; CODE XREF: sub_14030B5F0+99↓j
                bts     dword ptr [r8+74h], 0Dh
                mov     rdx, rbx
                mov     [r8+3B0h], r10
                mov     rcx, r10
                movzx   eax, word ptr [r10+72h]
                mov     r8b, 1
                bts     eax, r11d
                mov     [r10+72h], ax
                call    sub_14030B698
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14030B672:                          ; CODE XREF: sub_14030B5F0+39↑j
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     short loc_14030B68B
                mov     [rcx], rdx
                mov     [rcx+8], rax
                mov     [rax], rcx
                mov     [rdx+8], rcx
                jmp     short loc_14030B642
; ---------------------------------------------------------------------------

loc_14030B68B:                          ; CODE XREF: sub_14030B5F0+42↑j
                                        ; sub_14030B5F0+89↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14030B5F0   endp

; ---------------------------------------------------------------------------
algn_14030B692:                         ; DATA XREF: .rdata:00000001400730D0↑o
                                        ; .pdata:00000001400D437C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14030B698   proc near               ; CODE XREF: sub_1402CF370+252↑p
                                        ; sub_14030B5F0+76↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     sil, r8b
                mov     rdi, rdx
                mov     rbx, rcx

loc_14030B6B0:                          ; CODE XREF: sub_14030B698+3B↓j
                mov     al, [rbx+70h]
                test    al, 2
                jnz     short loc_14030B6D5
                mov     rdx, rbx
                mov     rcx, rdi
                test    al, 1
                jnz     short loc_14030B6E6
                mov     r8b, sil
                call    sub_14030B6F8

loc_14030B6C9:                          ; CODE XREF: sub_14030B698+56↓j
                mov     rbx, [rbx+198h]
                test    rbx, rbx
                jnz     short loc_14030B6B0

loc_14030B6D5:                          ; CODE XREF: sub_14030B698+1D↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14030B6E6:                          ; CODE XREF: sub_14030B698+27↑j
                xor     r8d, r8d
                call    sub_14030B828
                jmp     short loc_14030B6C9
sub_14030B698   endp

; ---------------------------------------------------------------------------
byte_14030B6F0  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4388↑o

; =============== S U B R O U T I N E =======================================


sub_14030B6F8   proc near               ; CODE XREF: sub_14030B698+2C↑p
                                        ; sub_14030B828+11C↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r9, [rdx+198h]
                lea     rax, [rcx+7C70h]
                or      byte ptr [rdx+70h], 1
                xor     esi, esi
                test    r9, r9
                mov     rbx, rdx
                mov     dil, r8b
                lea     rcx, [r9+188h]
                cmovz   rcx, rax
                test    byte ptr [rcx+8], 1
                mov     rdx, [rcx]
                jnz     loc_14030B809

loc_14030B73C:                          ; CODE XREF: sub_14030B6F8+114↓j
                                        ; sub_14030B6F8+11D↓j
                movzx   r9d, byte ptr [rcx+8]
                mov     r8b, sil
                and     r9d, 1
                test    rdx, rdx
                jz      short loc_14030B7B4
                mov     r11d, [rbx+74h]

loc_14030B751:                          ; CODE XREF: sub_14030B6F8+A2↓j
                mov     eax, r11d
                sub     eax, [rdx+1Ch]
                jnz     short loc_14030B775
                movzx   eax, word ptr [rbx+72h]
                test    ax, ax
                jnz     short loc_14030B7E1
                test    r11d, r11d
                jz      loc_14030B7FB
                mov     eax, 1
                jmp     short loc_14030B775
; ---------------------------------------------------------------------------

loc_14030B772:                          ; CODE XREF: sub_14030B6F8+F8↓j
                                        ; sub_14030B6F8+FE↓j
                sub     eax, r10d

loc_14030B775:                          ; CODE XREF: sub_14030B6F8+5F↑j
                                        ; sub_14030B6F8+78↑j
                test    eax, eax
                js      short loc_14030B79C

loc_14030B779:                          ; CODE XREF: sub_14030B6F8+10C↓j
                mov     rax, [rdx+8]
                test    r9d, r9d
                jz      short loc_14030B78E
                test    rax, rax
                jz      loc_14030B81A
                xor     rax, rdx

loc_14030B78E:                          ; CODE XREF: sub_14030B6F8+88↑j
                test    rax, rax
                jz      loc_14030B81A

loc_14030B797:                          ; CODE XREF: sub_14030B6F8+B7↓j
                mov     rdx, rax
                jmp     short loc_14030B751
; ---------------------------------------------------------------------------

loc_14030B79C:                          ; CODE XREF: sub_14030B6F8+7F↑j
                                        ; sub_14030B6F8+10A↓j
                mov     rax, [rdx]
                test    r9d, r9d
                jz      short loc_14030B7AC
                test    rax, rax
                jz      short loc_14030B7B1
                xor     rax, rdx

loc_14030B7AC:                          ; CODE XREF: sub_14030B6F8+AA↑j
                test    rax, rax
                jnz     short loc_14030B797

loc_14030B7B1:                          ; CODE XREF: sub_14030B6F8+AF↑j
                mov     r8b, sil

loc_14030B7B4:                          ; CODE XREF: sub_14030B6F8+53↑j
                                        ; sub_14030B6F8+125↓j
                lea     r9, [rbx+58h]
                call    RtlRbInsertNodeEx
                test    dil, dil
                jz      short loc_14030B7D0
                mov     rax, ds:0FFFFF78000000008h
                mov     [rbx+40h], rax

loc_14030B7D0:                          ; CODE XREF: sub_14030B6F8+C8↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030B7E1:                          ; CODE XREF: sub_14030B6F8+68↑j
                movzx   r8d, word ptr [rdx+1Ah]
                bsr     r10d, eax
                mov     eax, esi
                test    r8w, r8w
                jz      short loc_14030B772
                bsr     eax, r8d
                jmp     loc_14030B772
; ---------------------------------------------------------------------------

loc_14030B7FB:                          ; CODE XREF: sub_14030B6F8+6D↑j
                mov     rax, [rdx-58h]
                cmp     [rbx], rax
                jbe     short loc_14030B79C
                jmp     loc_14030B779
; ---------------------------------------------------------------------------

loc_14030B809:                          ; CODE XREF: sub_14030B6F8+3E↑j
                test    rdx, rdx
                jz      loc_14030B73C
                xor     rdx, rcx
                jmp     loc_14030B73C
; ---------------------------------------------------------------------------

loc_14030B81A:                          ; CODE XREF: sub_14030B6F8+8D↑j
                                        ; sub_14030B6F8+99↑j
                mov     r8b, 1
                jmp     short loc_14030B7B4
sub_14030B6F8   endp

; ---------------------------------------------------------------------------
byte_14030B81F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D4394↑o

; =============== S U B R O U T I N E =======================================


sub_14030B828   proc near               ; CODE XREF: sub_14030B140+70↑p
                                        ; sub_14030B4B8+A0↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046BE26 SIZE 00000040 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     r10d, r10d
                lea     r9, [rdx+58h]
                mov     rbx, rdx
                mov     rdi, rcx
                test    r8b, r8b
                jnz     short loc_14030B889
                mov     rcx, [r9]
                test    rcx, rcx
                jnz     short loc_14030B865
                mov     rcx, [r9+10h]

loc_14030B850:                          ; CODE XREF: sub_14030B828+3B↓j
                and     rcx, 0FFFFFFFFFFFFFFFCh
                jz      short loc_14030B878
                cmp     [rcx+8], r9
                jz      short loc_14030B878
                mov     r9, rcx
                mov     rcx, [rcx+10h]
                jmp     short loc_14030B850
; ---------------------------------------------------------------------------

loc_14030B865:                          ; CODE XREF: sub_14030B828+22↑j
                cmp     [rcx+8], r10
                jz      short loc_14030B878

loc_14030B86B:                          ; CODE XREF: sub_14030B828+4E↓j
                mov     rax, [rcx+8]
                mov     rcx, rax
                cmp     [rax+8], r10
                jnz     short loc_14030B86B

loc_14030B878:                          ; CODE XREF: sub_14030B828+2C↑j
                                        ; sub_14030B828+32↑j ...
                test    rcx, rcx
                jnz     short loc_14030B8F8

loc_14030B87D:                          ; CODE XREF: sub_14030B828+9B↓j
                                        ; sub_14030B828+CC↓j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030B889:                          ; CODE XREF: sub_14030B828+1A↑j
                mov     r8, [r9+8]
                test    r8, r8
                jnz     short loc_14030B8AA
                mov     r8, [r9+10h]

loc_14030B896:                          ; CODE XREF: sub_14030B828+80↓j
                and     r8, 0FFFFFFFFFFFFFFFCh
                jz      short loc_14030B8C0
                cmp     [r8], r9
                jz      short loc_14030B8C0
                mov     r9, r8
                mov     r8, [r8+10h]
                jmp     short loc_14030B896
; ---------------------------------------------------------------------------

loc_14030B8AA:                          ; CODE XREF: sub_14030B828+68↑j
                mov     rdx, [r8]
                test    rdx, rdx
                jz      short loc_14030B8C0

loc_14030B8B2:                          ; CODE XREF: sub_14030B828+96↓j
                mov     rax, [rdx]
                mov     r8, rdx
                mov     rdx, rax
                test    rax, rax
                jnz     short loc_14030B8B2

loc_14030B8C0:                          ; CODE XREF: sub_14030B828+72↑j
                                        ; sub_14030B828+77↑j ...
                test    r8, r8
                jz      short loc_14030B87D
                mov     ecx, [rbx+74h]
                mov     eax, ecx
                sub     eax, [r8+1Ch]
                jnz     short loc_14030B8F2
                movzx   eax, word ptr [rbx+72h]
                test    ax, ax
                jz      loc_14046BE26
                movzx   ecx, word ptr [r8+1Ah]
                bsr     edx, eax
                mov     eax, r10d
                test    cx, cx
                jz      short loc_14030B8F0
                bsr     eax, ecx

loc_14030B8F0:                          ; CODE XREF: sub_14030B828+C3↑j
                sub     eax, edx

loc_14030B8F2:                          ; CODE XREF: sub_14030B828+A6↑j
                                        ; sub_14030B828+160619↓j
                test    eax, eax
                jle     short loc_14030B87D
                jmp     short loc_14030B92D
; ---------------------------------------------------------------------------

loc_14030B8F8:                          ; CODE XREF: sub_14030B828+53↑j
                mov     edx, [rdx+74h]
                mov     eax, edx
                sub     eax, [rcx+1Ch]
                jnz     short loc_14030B925
                movzx   eax, word ptr [rbx+72h]
                test    ax, ax
                jz      loc_14046BE46
                movzx   edx, word ptr [rcx+1Ah]
                bsr     r8d, eax
                mov     eax, r10d
                test    dx, dx
                jz      short loc_14030B922
                bsr     eax, edx

loc_14030B922:                          ; CODE XREF: sub_14030B828+F5↑j
                sub     eax, r8d

loc_14030B925:                          ; CODE XREF: sub_14030B828+D8↑j
                                        ; sub_14030B828+160639↓j
                test    eax, eax
                jns     loc_14030B87D

loc_14030B92D:                          ; CODE XREF: sub_14030B828+CE↑j
                                        ; sub_14030B828+16060F↓j ...
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14030B568
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14030B6F8
                jmp     loc_14030B87D
sub_14030B828   endp

; ---------------------------------------------------------------------------
byte_14030B94E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140073104↑o
                                        ; .pdata:00000001400D43A0↑o

; =============== S U B R O U T I N E =======================================


sub_14030B954   proc near               ; CODE XREF: sub_1406B6208+4DE↓p
                                        ; DATA XREF: .rdata:000000014007317C↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046BE66 SIZE 00000030 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, [rdx+0C8h]
                lea     rdi, [rcx+0D8h]
                mov     rbx, rcx
                test    al, 20h
                jnz     loc_14046BE72
                mov     rcx, [rdx+0D8h]
                mov     eax, 1
                mov     [rdi], rcx
                lock xadd [rcx+18h], rax
                inc     rax
                cmp     rax, 1
                jle     loc_14046BE66

loc_14030B998:                          ; CODE XREF: sub_14030B954+160519↓j
                xor     eax, eax

loc_14030B99A:                          ; CODE XREF: sub_14030B954+16052C↓j
                                        ; sub_14030B954+16053D↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14030B954   endp

byte_14030B9A6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007317C↑o
                                        ; .pdata:00000001400D43AC↑o

; =============== S U B R O U T I N E =======================================


sub_14030B9AC   proc near               ; CODE XREF: sub_1406B4D8C+DC↓p
                                        ; sub_140683BE0+18E5D3↓p ...

var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046BE96 SIZE 0000018C BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     eax, eax
                xor     r15d, r15d
                cmp     cs:byte_140CFC43E, r15b
                xorps   xmm0, xmm0
                mov     rdi, r8
                mov     [rsp+78h+var_48], rax
                mov     rbx, rdx
                mov     r14, rcx
                movups  [rsp+78h+var_58], xmm0
                jz      loc_14030BD14

loc_14030B9ED:                          ; CODE XREF: sub_14030B9AC+36D↓j
                xor     ecx, ecx
                mov     [r14], rbx
                mov     [r14+20h], r15
                mov     [r14+0Ch], r15
                mov     [r14+14h], r15d
                call    KeQueryPerformanceCounter
                cmp     cs:dword_140CFC46C, r15d
                lea     rsi, [r14+38h]
                mov     [r14+18h], rax
                mov     ebp, r15d
                lea     rax, [r14+50h]
                mov     [rsi+8], rsi
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rsi], rsi
                mov     [r14+60h], r15
                mov     [r14+28h], r15
                mov     [r14+30h], r15
                jz      loc_14030BAC2
                lea     r15, [r14+88h]
                xor     r13d, r13d

loc_14030BA43:                          ; CODE XREF: sub_14030B9AC+111↓j
                lea     r12, [r15-8]
                xor     edx, edx
                mov     rcx, r12
                mov     r8d, 88h
                call    memset
                lea     rax, [r15+80h]
                mov     ecx, 10h

loc_14030BA63:                          ; CODE XREF: sub_14030B9AC+C6↓j
                mov     [rax+8], rax
                mov     [rax], rax
                add     rax, 10h
                sub     rcx, 1
                jnz     short loc_14030BA63
                mov     rax, cs:qword_140CFB268
                mov     [r15], rax
                mov     [r15+8], rax
                mov     [r15+180h], r13
                mov     [r15+188h], r13
                test    rdi, rdi
                jnz     loc_14046BE96
                mov     [r15+190h], r13
                mov     al, r13b
                mov     [r15+198h], r12

loc_14030BAAA:                          ; CODE XREF: sub_14030B9AC+160517↓j
                mov     [r15+69h], al
                inc     ebp
                add     r15, 1A8h
                cmp     ebp, cs:dword_140CFC46C
                jb      short loc_14030BA43
                xor     r15d, r15d

loc_14030BAC2:                          ; CODE XREF: sub_14030B9AC+87↑j
                lea     rdx, [rsp+78h+var_58]
                lea     rcx, unk_140D23200
                call    KeAcquireInStackQueuedSpinLock
                test    rdi, rdi
                jnz     loc_14046BEC8
                mov     rax, cs:qword_140C31B08
                lea     rcx, qword_140C31B00
                cmp     [rax], rcx
                jnz     loc_14046C01B
                mov     [rsi], rcx
                mov     [rsi+8], rax
                mov     [rax], rsi
                mov     cs:qword_140C31B08, rsi

loc_14030BB04:                          ; CODE XREF: sub_14030B9AC+16053F↓j
                mov     r13d, cs:dword_140CFC404
                mov     r12d, r15d
                mov     [rsp+78h+arg_10], r15
                test    r13d, r13d
                jz      loc_14030BBFA

loc_14030BB1F:                          ; CODE XREF: sub_14030B9AC+248↓j
                mov     rbp, gs:20h
                lea     r15, qword_140CFDCC0
                mov     eax, r12d
                imul    rsi, rax, 1A8h
                mov     r15, [r15+rax*8]
                add     rsi, r14
                and     [rsp+78h+arg_0], 0

loc_14030BB48:                          ; CODE XREF: sub_14030B9AC+363↓j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14046BEF0

loc_14030BB58:                          ; CODE XREF: sub_14030B9AC+160548↓j
                                        ; sub_14030B9AC+160557↓j ...
                lock bts qword ptr [r15+30h], 0
                jb      loc_14030BCE9
                lea     rax, [r15+8208h]
                mov     rdx, [rax+8]
                lea     rcx, [rsi+0C8h]
                cmp     [rdx], rax
                jnz     loc_14046C01B
                test    byte ptr [rsp+78h+arg_8+4], 4
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx
                jnz     loc_14046BF3E

loc_14030BB9C:                          ; CODE XREF: sub_14030B9AC+1605A3↓j
                lock and qword ptr [r15+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046BF54

loc_14030BBBB:                          ; CODE XREF: sub_14030B9AC+1605AC↓j
                                        ; sub_14030B9AC+1605BB↓j ...
                cmp     qword ptr [r15+8440h], 0
                jz      short loc_14030BBEE
                mov     rax, [r15+8448h]
                mov     cl, [rax+251h]
                cmp     [r15+0D1h], cl
                jz      loc_14030BC77
                mov     rdx, [rsp+78h+arg_10]

loc_14030BBE7:                          ; CODE XREF: sub_14030B9AC+2E1↓j
                mov     [rsi+0F8h], rdx

loc_14030BBEE:                          ; CODE XREF: sub_14030B9AC+217↑j
                inc     r12d
                cmp     r12d, r13d
                jb      loc_14030BB1F

loc_14030BBFA:                          ; CODE XREF: sub_14030B9AC+16D↑j
                mov     eax, [r14+4]
                test    al, 1
                jz      loc_14030BC92
                test    rdi, rdi
                jnz     loc_14046BF94
                mov     ecx, cs:dword_140C31B30
                test    ecx, ecx
                jz      loc_14030BCCE
                movzx   eax, bx
                cmp     eax, ecx
                jb      loc_14030BCCE

loc_14030BC28:                          ; CODE XREF: sub_14030B9AC+1605F4↓j
                shl     eax, 7
                xor     edx, edx
                div     ecx
                mov     [r14+8], eax

loc_14030BC33:                          ; CODE XREF: sub_14030B9AC+338↓j
                xor     edx, edx
                mov     rcx, r14
                call    sub_14030C528

loc_14030BC3D:                          ; CODE XREF: sub_14030B9AC+314↓j
                lea     rcx, [rsp+78h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+78h+var_48]
                test    eax, eax
                jnz     loc_14046BFB4

loc_14030BC5A:                          ; CODE XREF: sub_14030B9AC+16060A↓j
                                        ; sub_14030B9AC+160616↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+78h+arg_18]
                add     rsp, 40h
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

loc_14030BC77:                          ; CODE XREF: sub_14030B9AC+22D↑j
                or      byte ptr [rsi+0F0h], 20h
                lea     rdx, [rsi+100h]
                mov     [rsp+78h+arg_10], rdx
                jmp     loc_14030BBE7
; ---------------------------------------------------------------------------

loc_14030BC92:                          ; CODE XREF: sub_14030B9AC+254↑j
                test    rdi, rdi
                jnz     loc_14046BF78
                mov     ecx, cs:dword_140C31B34
                test    ecx, ecx
                jnz     short loc_14030BCC5

loc_14030BCA5:                          ; CODE XREF: sub_14030B9AC+320↓j
                movzx   eax, bx
                mov     cs:dword_140C31B34, eax

loc_14030BCAE:                          ; CODE XREF: sub_14030B9AC+31E↓j
                add     cs:dword_140C31AF0, eax

loc_14030BCB4:                          ; CODE XREF: sub_14030B9AC+1605E3↓j
                mov     r8, rdi
                xor     edx, edx
                xor     ecx, ecx
                call    sub_14030C198
                jmp     loc_14030BC3D
; ---------------------------------------------------------------------------

loc_14030BCC5:                          ; CODE XREF: sub_14030B9AC+2F7↑j
                movzx   eax, bx
                cmp     eax, ecx
                jnb     short loc_14030BCAE
                jmp     short loc_14030BCA5
; ---------------------------------------------------------------------------

loc_14030BCCE:                          ; CODE XREF: sub_14030B9AC+26B↑j
                                        ; sub_14030B9AC+276↑j
                movzx   eax, bx
                xor     r8d, r8d
                mov     cs:dword_140C31B30, eax

loc_14030BCDA:                          ; CODE XREF: sub_14030B9AC+160603↓j
                xor     edx, edx
                lea     ecx, [rdx+1]
                call    sub_14030C198
                jmp     loc_14030BC33
; ---------------------------------------------------------------------------

loc_14030BCE9:                          ; CODE XREF: sub_14030B9AC+1B3↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_14046BF17

loc_14030BCF9:                          ; CODE XREF: sub_14030B9AC+361↓j
                                        ; sub_14030B9AC+16056F↓j ...
                lea     rcx, [rsp+78h+arg_0]
                call    sub_1402C8C70
                mov     rax, [r15+30h]
                test    rax, rax
                jnz     short loc_14030BCF9
                jmp     loc_14030BB48
; ---------------------------------------------------------------------------

loc_14030BD14:                          ; CODE XREF: sub_14030B9AC+3B↑j
                call    sub_1403CBDEC
                jmp     loc_14030B9ED
sub_14030B9AC   endp

; ---------------------------------------------------------------------------
byte_14030BD1E  db 12h dup(0CCh)        ; DATA XREF: .rdata:000000014007320C↑o
                                        ; .pdata:00000001400D43B8↑o

; =============== S U B R O U T I N E =======================================


sub_14030BD30   proc near               ; DATA XREF: .rdata:0000000140073280↑o
                                        ; .pdata:00000001400D43C4↑o ...

; FUNCTION CHUNK AT 000000014046C022 SIZE 00000013 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObReferenceObjectSafeWithTag
                test    al, al
                jz      short loc_14030BD5F
                mov     edx, 20000h
                mov     rcx, rbx
                call    sub_14030BD6C
                test    al, al
                jz      loc_14046C022

loc_14030BD5F:                          ; CODE XREF: sub_14030BD30+18↑j
                                        ; sub_14030BD30+160300↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14030BD30   endp

byte_14030BD66  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140073280↑o
                                        ; .pdata:00000001400D43C4↑o

; =============== S U B R O U T I N E =======================================


sub_14030BD6C   proc near               ; CODE XREF: sub_14030BD30+22↑p
                                        ; sub_1406B5578+7D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                prefetchw byte ptr [rcx+528h]
                mov     eax, [rcx+528h]

loc_14030BD7D:                          ; CODE XREF: sub_14030BD6C+20↓j
                mov     r8d, eax
                or      r8d, edx
                lock cmpxchg [rcx+528h], r8d
                jnz     short loc_14030BD7D
                test    eax, 22000h
                jnz     short loc_14030BDD9
                prefetchw byte ptr cs:qword_140C1DEC8
                mov     rax, cs:qword_140C1DEC8

loc_14030BDA3:                          ; CODE XREF: sub_14030BD6C+4D↓j
                mov     rdx, rax
                mov     [rcx+3C8h], rax
                lock cmpxchg cs:qword_140C1DEC8, rcx
                cmp     rax, rdx
                jnz     short loc_14030BDA3
                test    rdx, rdx
                jnz     short loc_14030BDD1
                mov     edx, 3
                lea     rcx, qword_140C1DF20
                call    ExQueueWorkItem

loc_14030BDD1:                          ; CODE XREF: sub_14030BD6C+52↑j
                mov     al, 1

loc_14030BDD3:                          ; CODE XREF: sub_14030BD6C+6F↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030BDD9:                          ; CODE XREF: sub_14030BD6C+27↑j
                xor     al, al
                jmp     short loc_14030BDD3
sub_14030BD6C   endp

; ---------------------------------------------------------------------------
byte_14030BDDD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D43D0↑o

; =============== S U B R O U T I N E =======================================


sub_14030BDE4   proc near               ; CODE XREF: sub_1406B5844+C↓p
                                        ; sub_140785214+CC17B↓p
                                        ; DATA XREF: ...
                imul    eax, cs:dword_140CFC46C, 1A8h
                sub     eax, 0FFFFFF80h
                retn
sub_14030BDE4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14030BDF3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D43DC↑o

; =============== S U B R O U T I N E =======================================


sub_14030BDFC   proc near               ; CODE XREF: sub_1406B5700+27↓p
                                        ; sub_140683BE0:loc_140812183↓p ...

var_48          = xmmword ptr -48h
var_38          = byte ptr -38h
var_28          = byte ptr -28h
arg_0           = dword ptr  8

; FUNCTION CHUNK AT 000000014046C036 SIZE 0000012C BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     rdx, [r11-48h]
                mov     rbx, rcx
                xor     eax, eax
                movups  [rsp+68h+var_48], xmm0
                lea     rcx, unk_140D23200
                mov     [r11-38h], rax
                call    KeAcquireInStackQueuedSpinLock
                lea     rax, [rbx+38h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14046C15B
                cmp     [rcx], rax
                jnz     loc_14046C15B
                mov     [rcx], rdx
                xor     r12d, r12d
                mov     [rdx+8], rcx
                xor     ebp, ebp
                mov     r13d, cs:dword_140CFC404
                mov     rdi, [rbx+60h]
                test    r13d, r13d
                jz      loc_14030BF13

loc_14030BE77:                          ; CODE XREF: sub_14030BDFC+111↓j
                mov     rsi, gs:20h
                lea     r14, qword_140CFDCC0
                mov     r14, [r14+rbp*8]
                mov     eax, ebp
                imul    r15, rax, 1A8h
                and     [rsp+68h+arg_0], 0

loc_14030BE99:                          ; CODE XREF: sub_14030BDFC+1CF↓j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046C036

loc_14030BEA9:                          ; CODE XREF: sub_14030BDFC+16023E↓j
                                        ; sub_14030BDFC+16024D↓j ...
                lock bts qword ptr [r14+30h], 0
                jb      loc_14030BFA8
                lea     rax, [rbx+0C8h]
                add     rax, r15
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14046C15B
                cmp     [rcx], rax
                jnz     loc_14046C15B
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                lock and qword ptr [r14+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046C084

loc_14030BF00:                          ; CODE XREF: sub_14030BDFC+16028C↓j
                                        ; sub_14030BDFC+16029B↓j ...
                add     r12, [r15+rbx+0B8h]
                inc     ebp
                cmp     ebp, r13d
                jb      loc_14030BE77

loc_14030BF13:                          ; CODE XREF: sub_14030BDFC+75↑j
                mov     eax, [rbx+4]
                test    al, 1
                jz      loc_14046C0A8

loc_14030BF1E:                          ; CODE XREF: sub_14030BDFC+1602B7↓j
                                        ; sub_14030BDFC+1602C2↓j
                test    rdi, rdi
                jnz     loc_14046C0C3
                lea     rax, qword_140C31B00
                cmp     cs:qword_140C31B00, rax
                jz      loc_14046C0E1
                xor     r8d, r8d

loc_14030BF3E:                          ; CODE XREF: sub_14030BDFC+1602E0↓j
                mov     ecx, [rbx+4]
                xor     edx, edx
                and     ecx, 1
                call    sub_14030C408
                test    al, al
                jnz     short loc_14030BF99
                mov     eax, [rbx+4]
                test    al, 1
                jz      short loc_14030BF99

loc_14030BF56:                          ; CODE XREF: sub_14030BDFC+1AA↓j
                                        ; sub_14030BDFC+1602D8↓j ...
                lea     rcx, [rsp+68h+var_48]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+68h+var_38]
                test    eax, eax
                jnz     loc_14046C0F4

loc_14030BF73:                          ; CODE XREF: sub_14030BDFC+1602FA↓j
                                        ; sub_14030BDFC+160306↓j ...
                mov     cr8, rbx
                lea     r11, [rsp+68h+var_28]
                mov     rax, r12
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

loc_14030BF99:                          ; CODE XREF: sub_14030BDFC+151↑j
                                        ; sub_14030BDFC+158↑j
                mov     ecx, [rbx+4]
                xor     edx, edx
                and     ecx, 1
                call    sub_14030C198
                jmp     short loc_14030BF56
; ---------------------------------------------------------------------------

loc_14030BFA8:                          ; CODE XREF: sub_14030BDFC+B4↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046C05D

loc_14030BFB8:                          ; CODE XREF: sub_14030BDFC+1CD↓j
                                        ; sub_14030BDFC+160265↓j ...
                lea     rcx, [rsp+68h+arg_0]
                call    sub_1402C8C70
                mov     rax, [r14+30h]
                test    rax, rax
                jnz     short loc_14030BFB8
                jmp     loc_14030BE99
sub_14030BDFC   endp

; ---------------------------------------------------------------------------
byte_14030BFD0  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007337C↑o
                                        ; .pdata:00000001400D43E8↑o

; =============== S U B R O U T I N E =======================================


sub_14030BFD8   proc near               ; CODE XREF: sub_1405812C8+1C2↓p
                                        ; sub_1405F3CF0+1586↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046C162 SIZE 00000067 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     ebp, ecx
                mov     rsi, rdx
                lea     rcx, unk_140D23200
                xor     eax, eax
                lea     rdx, [r11-28h]
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                mov     rdi, r8
                call    KeAcquireInStackQueuedSpinLock
                test    ebp, ebp
                jz      short loc_14030C055
                mov     rbx, rsi
                sub     rdi, rsi

loc_14030C01C:                          ; CODE XREF: sub_14030BFD8+7B↓j
                mov     rcx, [rbx]
                mov     eax, [rcx+4]
                test    al, 1
                jz      short loc_14030C041
                and     eax, 0FFFFFFFEh
                xor     edx, edx
                mov     [rcx+4], eax
                mov     r8, [rbx]
                lea     ecx, [rdx+1]
                mov     r8, [r8+60h]
                call    sub_14030C408
                test    al, al
                jnz     short loc_14030C0AC

loc_14030C041:                          ; CODE XREF: sub_14030BFD8+4C↑j
                                        ; sub_14030BFD8+E5↓j
                mov     rcx, [rbx]
                mov     rax, [rdi+rbx]
                add     rbx, 8
                mov     [rcx], rax
                sub     rbp, 1
                jnz     short loc_14030C01C

loc_14030C055:                          ; CODE XREF: sub_14030BFD8+3C↑j
                mov     r8, [rsi]
                mov     dl, 1
                xor     ecx, ecx
                mov     r8, [r8+60h]
                call    sub_14030C408
                mov     r8, [rsi]
                mov     dl, 1
                xor     ecx, ecx
                mov     r8, [r8+60h]
                call    sub_14030C198
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14046C162

loc_14030C092:                          ; CODE XREF: sub_14030BFD8+16018C↓j
                                        ; sub_14030BFD8+160198↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14030C0AC:                          ; CODE XREF: sub_14030BFD8+67↑j
                mov     r8, [rbx]
                xor     edx, edx
                mov     r8, [r8+60h]
                lea     ecx, [rdx+1]
                call    sub_14030C198
                jmp     short loc_14030C041
sub_14030BFD8   endp

; ---------------------------------------------------------------------------
byte_14030C0BF  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400733A4↑o
                                        ; .pdata:00000001400D43F4↑o

; =============== S U B R O U T I N E =======================================


sub_14030C0C8   proc near               ; CODE XREF: sub_1405F3CF0+1528↓p
                                        ; sub_1405F3CF0:loc_1407F69B0↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046C1CA SIZE 00000067 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rdx
                lea     rcx, unk_140D23200
                xorps   xmm0, xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     eax, eax
                mov     rdi, r8
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, [rbx]
                mov     eax, [rcx+4]
                test    al, 1
                jnz     short loc_14030C12B
                or      eax, 1
                mov     dl, 1
                mov     [rcx+4], eax
                xor     ecx, ecx
                mov     r8, [rbx]
                mov     r8, [r8+60h]
                call    sub_14030C408
                mov     r8, [rbx]
                xor     edx, edx
                xor     ecx, ecx
                mov     r8, [r8+60h]
                call    sub_14030C198
                mov     rcx, [rbx]

loc_14030C12B:                          ; CODE XREF: sub_14030C0C8+38↑j
                mov     rax, [rdi]
                mov     dl, 1
                mov     [rcx], rax
                mov     rcx, [rbx]
                call    sub_14030C528
                mov     r8, [rbx]
                mov     dl, 1
                mov     ecx, 1
                mov     r8, [r8+60h]
                call    sub_14030C408
                test    al, al
                jz      short loc_14030C163
                mov     r8, [rbx]
                xor     edx, edx
                mov     r8, [r8+60h]
                lea     ecx, [rdx+1]
                call    sub_14030C198

loc_14030C163:                          ; CODE XREF: sub_14030C0C8+88↑j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14046C1CA

loc_14030C180:                          ; CODE XREF: sub_14030C0C8+160104↓j
                                        ; sub_14030C0C8+160110↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14030C0C8   endp

byte_14030C190  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400733C4↑o
                                        ; .pdata:00000001400D4400↑o

; =============== S U B R O U T I N E =======================================


sub_14030C198   proc near               ; CODE XREF: sub_14030B9AC+30F↑p
                                        ; sub_14030B9AC+333↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046C232 SIZE 00000020 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     r14b, dl
                mov     ebp, ecx
                test    ecx, ecx
                jnz     short loc_14030C236
                test    r8, r8
                jnz     loc_14046C232
                cmp     cs:dword_140C31AF0, r8d
                jz      short loc_14030C210
                mov     edi, cs:dword_140C31B34

loc_14030C1D2:                          ; CODE XREF: sub_14030C198+A9↓j
                                        ; sub_14030C198+AF↓j ...
                test    r8, r8
                jnz     loc_14046C246
                mov     rbx, cs:qword_140C31B00
                lea     rsi, qword_140C31B00

loc_14030C1E9:                          ; CODE XREF: sub_14030C198+76↓j
                                        ; sub_14030C198+1600B5↓j
                lea     rcx, [rbx-38h]
                mov     eax, [rcx+4]
                and     eax, 1
                cmp     eax, ebp
                jnz     short loc_14030C208
                movzx   eax, word ptr [rcx]
                xor     edx, edx
                shl     eax, 7
                div     edi
                mov     [rcx+8], eax
                test    ebp, ebp
                jz      short loc_14030C22C

loc_14030C208:                          ; CODE XREF: sub_14030C198+5D↑j
                                        ; sub_14030C198+9C↓j
                mov     rbx, [rbx]
                cmp     rbx, rsi
                jnz     short loc_14030C1E9

loc_14030C210:                          ; CODE XREF: sub_14030C198+32↑j
                                        ; sub_14030C198+16009F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14030C22C:                          ; CODE XREF: sub_14030C198+6E↑j
                mov     dl, r14b
                call    sub_14030C250
                jmp     short loc_14030C208
; ---------------------------------------------------------------------------

loc_14030C236:                          ; CODE XREF: sub_14030C198+20↑j
                test    r8, r8
                jnz     short loc_14030C243
                mov     edi, cs:dword_140C31B30
                jmp     short loc_14030C1D2
; ---------------------------------------------------------------------------

loc_14030C243:                          ; CODE XREF: sub_14030C198+A1↑j
                mov     edi, [r8+0Ch]
                jmp     short loc_14030C1D2
sub_14030C198   endp

; ---------------------------------------------------------------------------
algn_14030C249:                         ; DATA XREF: .rdata:00000001400733F0↑o
                                        ; .pdata:00000001400D440C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14030C250   proc near               ; CODE XREF: sub_14030C198+97↑p
                                        ; sub_140523C10+26↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046C252 SIZE 0000019E BYTES

                mov     [rsp+arg_8], dl
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 38h
                cmp     qword ptr [rcx+60h], 0
                mov     bl, dl
                movzx   ebp, word ptr [rcx]
                mov     rsi, rcx
                movzx   r15d, word ptr [rcx+2]
                mov     r12d, 1
                jnz     loc_14046C252
                mov     r14, cs:qword_140CFB1E8
                xor     edx, edx
                mov     ecx, cs:dword_140C31AF0
                mov     eax, ebp
                imul    rax, r14
                div     rcx
                cmp     bp, r15w
                mov     r13, rax
                cmovz   r14, rax

loc_14030C2A5:                          ; CODE XREF: sub_14030C250+1600EE↓j
                cmp     r14, cs:qword_140CFB1E8
                mov     r8d, cs:dword_140CFC404
                setz    dl
                mov     [rsp+78h+var_58], r8d
                xor     r15d, r15d
                mov     [rsp+78h+arg_0], dl
                cmp     cs:dword_140CFC46C, r15d
                jz      loc_14030C3A3
                mov     r12b, dl
                shl     r12b, 4

loc_14030C2D9:                          ; CODE XREF: sub_14030C250+14D↓j
                mov     ecx, r15d
                lea     rbp, [rsi+80h]
                imul    rax, rcx, 1A8h
                lea     rdi, qword_140CFDCC0
                mov     rdi, [rdi+r15*8]
                add     rbp, rax
                test    rdi, rdi
                jz      short loc_14030C339
                mov     rbx, gs:20h
                and     [rsp+78h+arg_18], 0

loc_14030C30E:                          ; CODE XREF: sub_14030C250+1A3↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046C343

loc_14030C31E:                          ; CODE XREF: sub_14030C250+1600F7↓j
                                        ; sub_14030C250+160106↓j ...
                lock bts qword ptr [rdi+30h], 0
                jb      loc_14030C3CD
                cmp     [rsp+78h+arg_0], 0
                jz      loc_14046C391

loc_14030C339:                          ; CODE XREF: sub_14030C250+AB↑j
                                        ; sub_14030C250+160145↓j ...
                mov     al, [rbp+70h]
                mov     bl, [rsp+78h+arg_8]
                and     al, 0EFh
                or      al, r12b
                mov     [rbp+8], r13
                mov     [rbp+10h], r14
                mov     [rbp+70h], al
                test    rdi, rdi
                jz      short loc_14030C393
                test    bl, bl
                jz      short loc_14030C374
                and     qword ptr [rbp+20h], 0
                mov     qword ptr [rbp+30h], 0
                mov     eax, [rsi+4]
                test    al, 2
                jnz     loc_14046C3B0

loc_14030C374:                          ; CODE XREF: sub_14030C250+10A↑j
                                        ; sub_14030C250+160177↓j
                lock and qword ptr [rdi+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046C3CC

loc_14030C393:                          ; CODE XREF: sub_14030C250+106↑j
                                        ; sub_14030C250+160180↓j ...
                inc     r15d
                cmp     r15d, cs:dword_140CFC46C
                jb      loc_14030C2D9

loc_14030C3A3:                          ; CODE XREF: sub_14030C250+7C↑j
                test    bl, bl
                jz      short loc_14030C3B2
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                mov     [rsi+18h], rax

loc_14030C3B2:                          ; CODE XREF: sub_14030C250+155↑j
                lea     rcx, [rsi+50h]
                cmp     [rcx], rcx
                jnz     short loc_14030C3F8

loc_14030C3BB:                          ; CODE XREF: sub_14030C250+1AF↓j
                add     rsp, 38h
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

loc_14030C3CD:                          ; CODE XREF: sub_14030C250+D5↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046C36A

loc_14030C3DD:                          ; CODE XREF: sub_14030C250+1A1↓j
                                        ; sub_14030C250+16011E↓j ...
                lea     rcx, [rsp+78h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rdi+30h]
                test    rax, rax
                jnz     short loc_14030C3DD
                jmp     loc_14030C30E
; ---------------------------------------------------------------------------

loc_14030C3F8:                          ; CODE XREF: sub_14030C250+169↑j
                mov     dl, bl
                call    sub_140523C10
                jmp     short loc_14030C3BB
sub_14030C250   endp

; ---------------------------------------------------------------------------
algn_14030C401:                         ; DATA XREF: .rdata:000000014007341C↑o
                                        ; .pdata:00000001400D4418↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14030C408   proc near               ; CODE XREF: sub_14030BDFC+14A↑p
                                        ; sub_14030BFD8+60↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046C3F0 SIZE 0000002E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     dil, dl
                mov     esi, ecx
                test    ecx, ecx
                jz      loc_14030C4D0
                test    r8, r8
                jnz     loc_14046C3F0
                mov     r9d, cs:dword_140C31B30

loc_14030C434:                          ; CODE XREF: sub_14030C408+15FFEC↓j
                mov     ecx, 2710h

loc_14030C439:                          ; CODE XREF: sub_14030C408+D9↓j
                lea     rbx, [r8+50h]
                test    r8, r8
                jnz     short loc_14030C449
                lea     rbx, qword_140C31B00

loc_14030C449:                          ; CODE XREF: sub_14030C408+38↑j
                mov     rdx, [rbx]
                xor     r10d, r10d
                xor     r11d, r11d

loc_14030C452:                          ; CODE XREF: sub_14030C408+70↓j
                mov     eax, [rdx-34h]
                and     eax, 1
                cmp     eax, esi
                jnz     short loc_14030C472
                test    dil, dil
                jz      short loc_14030C4A0

loc_14030C461:                          ; CODE XREF: sub_14030C408+9F↓j
                movzx   eax, word ptr [rdx-38h]
                inc     r11d
                add     r10d, eax
                cmp     eax, ecx
                cmovnb  eax, ecx
                mov     ecx, eax

loc_14030C472:                          ; CODE XREF: sub_14030C408+52↑j
                mov     rdx, [rdx]
                cmp     rdx, rbx
                jnz     short loc_14030C452
                test    esi, esi
                jnz     short loc_14030C4AD
                test    r11d, r11d
                jz      short loc_14030C4E6
                test    r8, r8
                jnz     loc_14046C3F9
                mov     cs:dword_140C31B34, ecx
                test    dil, dil
                jz      short loc_14030C4BD
                mov     cs:dword_140C31AF0, r10d
                jmp     short loc_14030C4BD
; ---------------------------------------------------------------------------

loc_14030C4A0:                          ; CODE XREF: sub_14030C408+57↑j
                movzx   eax, word ptr [rdx-38h]
                cmp     eax, r9d
                jnz     short loc_14030C461
                xor     al, al
                jmp     short loc_14030C4BF
; ---------------------------------------------------------------------------

loc_14030C4AD:                          ; CODE XREF: sub_14030C408+74↑j
                test    r11d, r11d
                jz      short loc_14030C4FF
                test    r8, r8
                jnz     short loc_14030C513
                mov     cs:dword_140C31B30, ecx

loc_14030C4BD:                          ; CODE XREF: sub_14030C408+8D↑j
                                        ; sub_14030C408+96↑j ...
                mov     al, 1

loc_14030C4BF:                          ; CODE XREF: sub_14030C408+A3↑j
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14030C4D0:                          ; CODE XREF: sub_14030C408+16↑j
                test    r8, r8
                jnz     short loc_14030C50D
                mov     r9d, cs:dword_140C31B34

loc_14030C4DC:                          ; CODE XREF: sub_14030C408+109↓j
                mov     ecx, 9
                jmp     loc_14030C439
; ---------------------------------------------------------------------------

loc_14030C4E6:                          ; CODE XREF: sub_14030C408+79↑j
                test    r8, r8
                jnz     loc_14046C40F
                and     cs:dword_140C31B34, r8d
                and     cs:dword_140C31AF0, r8d
                jmp     short loc_14030C4BD
; ---------------------------------------------------------------------------

loc_14030C4FF:                          ; CODE XREF: sub_14030C408+A8↑j
                test    r8, r8
                jnz     short loc_14030C519
                and     cs:dword_140C31B30, r8d
                jmp     short loc_14030C4BD
; ---------------------------------------------------------------------------

loc_14030C50D:                          ; CODE XREF: sub_14030C408+CB↑j
                mov     r9d, [r8+10h]
                jmp     short loc_14030C4DC
; ---------------------------------------------------------------------------

loc_14030C513:                          ; CODE XREF: sub_14030C408+AD↑j
                mov     [r8+0Ch], ecx
                jmp     short loc_14030C4BD
; ---------------------------------------------------------------------------

loc_14030C519:                          ; CODE XREF: sub_14030C408+FA↑j
                and     dword ptr [r8+0Ch], 0
                jmp     short loc_14030C4BD
sub_14030C408   endp

; ---------------------------------------------------------------------------
byte_14030C520  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140073440↑o
                                        ; .pdata:00000001400D4424↑o

; =============== S U B R O U T I N E =======================================


sub_14030C528   proc near               ; CODE XREF: sub_14030B9AC+28C↑p
                                        ; sub_14030C0C8+6E↑p ...

var_58          = dword ptr -58h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046C41E SIZE 00000170 BYTES

                mov     [rsp+arg_8], dl
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 38h
                cmp     qword ptr [rcx+60h], 0
                mov     bl, dl
                mov     rsi, rcx
                mov     ebp, 1
                jnz     loc_14046C41E
                movzx   ecx, word ptr [rcx]
                mov     r9, 346DC5D63886594Bh
                imul    rcx, cs:qword_140CFB1E8
                mov     rax, r9
                mul     rcx
                movzx   ecx, word ptr [rsi+2]
                mov     rax, r9
                imul    rcx, cs:qword_140CFB1E8
                mov     r13, rdx
                mul     rcx
                shr     r13, 0Bh
                mov     r14, rdx
                shr     r14, 0Bh

loc_14030C58C:                          ; CODE XREF: sub_14030C528+15FFEF↓j
                cmp     r14, cs:qword_140CFB1E8
                mov     r8d, cs:dword_140CFC404
                setz    dl
                mov     [rsp+78h+var_58], r8d
                xor     r15d, r15d
                mov     [rsp+78h+arg_0], dl
                cmp     cs:dword_140CFC46C, r15d
                jz      loc_14030C69C
                mov     r12b, dl
                shl     r12b, 4

loc_14030C5C0:                          ; CODE XREF: sub_14030C528+16E↓j
                mov     ecx, r15d
                lea     rbp, [rsi+80h]
                imul    rax, rcx, 1A8h
                lea     rdi, qword_140CFDCC0
                mov     rdi, [rdi+r15*8]
                add     rbp, rax
                test    rdi, rdi
                jz      short loc_14030C620
                mov     rbx, gs:20h
                and     [rsp+78h+arg_18], 0

loc_14030C5F5:                          ; CODE XREF: sub_14030C528+1E3↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046C51C

loc_14030C605:                          ; CODE XREF: sub_14030C528+15FFF8↓j
                                        ; sub_14030C528+160007↓j ...
                lock bts qword ptr [rdi+30h], 0
                jb      loc_14030C6E5
                cmp     [rsp+78h+arg_0], 0
                jz      loc_14030C6C6

loc_14030C620:                          ; CODE XREF: sub_14030C528+BA↑j
                                        ; sub_14030C528+1A2↓j ...
                mov     al, [rbp+70h]
                mov     bl, [rsp+78h+arg_8]
                and     al, 0EFh
                or      al, r12b
                mov     [rbp+8], r13
                mov     [rbp+10h], r14
                mov     [rbp+70h], al
                test    rdi, rdi
                jz      short loc_14030C68C
                test    bl, bl
                jz      short loc_14030C66D
                and     qword ptr [rbp+20h], 0
                mov     qword ptr [rbp+30h], 0
                mov     eax, [rsi+4]
                test    al, 2
                jz      short loc_14030C66D
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_14030CA74
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14030C9E8

loc_14030C66D:                          ; CODE XREF: sub_14030C528+119↑j
                                        ; sub_14030C528+12D↑j
                lock and qword ptr [rdi+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046C56A

loc_14030C68C:                          ; CODE XREF: sub_14030C528+115↑j
                                        ; sub_14030C528+160046↓j ...
                inc     r15d
                cmp     r15d, cs:dword_140CFC46C
                jb      loc_14030C5C0

loc_14030C69C:                          ; CODE XREF: sub_14030C528+8B↑j
                test    bl, bl
                jz      short loc_14030C6AB
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                mov     [rsi+18h], rax

loc_14030C6AB:                          ; CODE XREF: sub_14030C528+176↑j
                lea     rcx, [rsi+50h]
                cmp     [rcx], rcx
                jnz     short loc_14030C710

loc_14030C6B4:                          ; CODE XREF: sub_14030C528+1EF↓j
                add     rsp, 38h
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
                align 2

loc_14030C6C6:                          ; CODE XREF: sub_14030C528+F2↑j
                cmp     byte ptr [rdi+21h], 0
                jz      loc_14030C620
                mov     eax, [rsp+78h+var_58]
                imul    rax, r14
                mov     [rsi+28h], rax
                mov     [rsi+30h], rax
                jmp     loc_14030C620
; ---------------------------------------------------------------------------

loc_14030C6E5:                          ; CODE XREF: sub_14030C528+E4↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046C543

loc_14030C6F5:                          ; CODE XREF: sub_14030C528+1E1↓j
                                        ; sub_14030C528+16001F↓j ...
                lea     rcx, [rsp+78h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rdi+30h]
                test    rax, rax
                jnz     short loc_14030C6F5
                jmp     loc_14030C5F5
; ---------------------------------------------------------------------------

loc_14030C710:                          ; CODE XREF: sub_14030C528+18A↑j
                mov     dl, bl
                call    sub_140523C10
                jmp     short loc_14030C6B4
sub_14030C528   endp

; ---------------------------------------------------------------------------
algn_14030C719:                         ; DATA XREF: .rdata:000000014007346C↑o
                                        ; .pdata:00000001400D4430↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14030C720   proc near               ; CODE XREF: sub_1405F3CF0+14A5↓p
                                        ; DATA XREF: .rdata:0000000140073498↑o ...

arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046C58E SIZE 00000292 BYTES

                mov     rax, rsp
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 28h
                xor     edi, edi
                movzx   r13d, dl
                mov     [rax+18h], rdi
                mov     r15, rcx
                mov     r12, cr8
                mov     [rsp+68h+arg_18], r12
                lea     ebx, [rdi+2]
                mov     cr8, rbx
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14046C58E

loc_14030C765:                          ; CODE XREF: sub_14030C720+15FE70↓j
                                        ; sub_14030C720+15FE7A↓j ...
                mov     rsi, gs:20h
                mov     r14d, edi
                cmp     cs:dword_140CFC46C, edi
                jz      loc_14030C849
                mov     r12d, 1

loc_14030C783:                          ; CODE XREF: sub_14030C720+114↓j
                mov     eax, r14d
                lea     rbp, qword_140CFDCC0
                lea     rbx, [r15+80h]
                mov     rbp, [rbp+rax*8+0]
                imul    rax, 1A8h
                add     rbx, rax
                test    rbp, rbp
                jz      short loc_14030C7D5
                mov     rdi, gs:20h
                and     [rsp+68h+arg_8], 0

loc_14030C7B6:                          ; CODE XREF: sub_14030C720+1E9↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046C5CF

loc_14030C7C6:                          ; CODE XREF: sub_14030C720+15FEB3↓j
                                        ; sub_14030C720+15FEC2↓j ...
                lock bts qword ptr [rbp+30h], 0
                jb      loc_14030C8E6
                xor     edi, edi

loc_14030C7D5:                          ; CODE XREF: sub_14030C720+86↑j
                movzx   ecx, byte ptr [rbx+70h]
                mov     r8d, [rbx+74h]
                test    r13b, r13b
                jz      loc_14030C8BE
                or      cl, 0Ch
                lea     eax, [r8+1]
                mov     [rbx+74h], eax
                mov     [rbx+70h], cl
                test    r12b, cl
                jnz     loc_14046C61D

loc_14030C7FC:                          ; CODE XREF: sub_14030C720+1BB↓j
                                        ; sub_14030C720+204↓j ...
                test    rbp, rbp
                jz      short loc_14030C82A
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_14030C9E8
                lock and [rbp+30h], rdi
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14046C6A6

loc_14030C82A:                          ; CODE XREF: sub_14030C720+DF↑j
                                        ; sub_14030C720+1F1↓j ...
                add     r14d, r12d
                cmp     r14d, cs:dword_140CFC46C
                jb      loc_14030C783
                mov     r12, [rsp+68h+arg_18]
                or      rbp, 0FFFFFFFFFFFFFFFFh
                lea     ebx, [rbp+3]

loc_14030C849:                          ; CODE XREF: sub_14030C720+57↑j
                mov     eax, r13d
                lea     rdx, [rsp+68h+arg_10]
                shl     eax, 2
                mov     rcx, rsi
                xor     eax, [r15+4]
                and     eax, 4
                xor     [r15+4], eax
                call    sub_14028DAE0
                cmp     r12b, bl
                jnb     loc_14046C7F8
                mov     rdi, [rsi+8]
                xor     r14d, r14d
                mov     r13b, 0Dh
                cmp     [rsi+10h], r14
                jnz     loc_14030C929
                mov     eax, [rdi+74h]
                lea     r15d, [r14+1]
                test    al, 40h

loc_14030C890:                          ; CODE XREF: sub_14030C720+2A4↓j
                jnz     loc_14046C74D

loc_14030C896:                          ; CODE XREF: sub_14030C720+16007E↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046C7A3

loc_14030C8A4:                          ; CODE XREF: sub_14030C720+160086↓j
                                        ; sub_14030C720+160095↓j ...
                movzx   eax, r12b
                mov     cr8, rax

loc_14030C8AC:                          ; CODE XREF: sub_14030C720+1600DC↓j
                                        ; sub_14030C720+1600EA↓j ...
                add     rsp, 28h
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
                align 2

loc_14030C8BE:                          ; CODE XREF: sub_14030C720+C0↑j
                mov     eax, ecx
                and     cl, 0F7h
                shr     eax, 3
                and     eax, r12d
                mov     [rbx+70h], cl
                sub     r8d, eax
                mov     [rbx+74h], r8d
                test    r8d, r8d
                jz      short loc_14030C90E
                test    r12b, cl
                jz      loc_14030C7FC
                jmp     loc_14046C622
; ---------------------------------------------------------------------------

loc_14030C8E6:                          ; CODE XREF: sub_14030C720+AD↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046C5F6

loc_14030C8F6:                          ; CODE XREF: sub_14030C720+1E7↓j
                                        ; sub_14030C720+15FEDA↓j ...
                lea     rcx, [rsp+68h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rbp+30h]
                test    rax, rax
                jnz     short loc_14030C8F6
                jmp     loc_14030C7B6
; ---------------------------------------------------------------------------

loc_14030C90E:                          ; CODE XREF: sub_14030C720+1B6↑j
                test    rbp, rbp
                jz      loc_14030C82A
                test    r12b, cl
                jnz     loc_14046C636

loc_14030C920:                          ; CODE XREF: sub_14030C720+15FF6C↓j
                                        ; sub_14030C720+15FF81↓j
                and     byte ptr [rbx+70h], 0FBh
                jmp     loc_14030C7FC
; ---------------------------------------------------------------------------

loc_14030C929:                          ; CODE XREF: sub_14030C720+161↑j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402423B0
                mov     rbx, gs:20h
                mov     r15d, 1
                mov     [rsp+68h+arg_0], r14d

loc_14030C947:                          ; CODE XREF: sub_14030C720+2BC↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14046C6CA

loc_14030C957:                          ; CODE XREF: sub_14030C720+15FFAE↓j
                                        ; sub_14030C720+15FFBD↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      loc_14046C6F1
                mov     rbx, [rsi+10h]
                mov     [rsi+10h], r14
                cli
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402CC660
                sti
                mov     [rsi+8], rbx
                mov     al, [rbx+184h]
                cmp     al, r15b
                jz      loc_14046C728

loc_14030C98F:                          ; CODE XREF: sub_14030C720+160028↓j
                mov     byte ptr [rbx+184h], 2
                mov     rdx, rdi
                mov     rcx, rsi
                mov     byte ptr [rdi+283h], 20h ; ' '
                mov     [rdi+186h], r12b
                call    sub_1402CE090
                mov     r8b, r12b
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404058F0
                test    al, al
                mov     ebx, 2
                jmp     loc_14030C890
; ---------------------------------------------------------------------------

loc_14030C9C9:                          ; CODE XREF: sub_14030C720+2BA↓j
                                        ; sub_14030C720+15FFDB↓j ...
                lea     rcx, [rsp+68h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_14030C9C9
                jmp     loc_14030C947
sub_14030C720   endp

; ---------------------------------------------------------------------------
algn_14030C9E1:                         ; DATA XREF: .rdata:0000000140073498↑o
                                        ; .pdata:00000001400D443C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14030C9E8   proc near               ; CODE XREF: sub_14030C528+140↑p
                                        ; sub_14030C720+E7↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046C820 SIZE 00000020 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx+10h]
                mov     rdi, rcx
                test    rbx, rbx
                jnz     short loc_14030CA02
                mov     rbx, [rcx+8]

loc_14030CA02:                          ; CODE XREF: sub_14030C9E8+14↑j
                mov     r8, [rbx+68h]
                test    r8, r8
                jz      short loc_14030CA19
                mov     eax, [rcx+0D8h]
                add     r8, rax

loc_14030CA14:                          ; CODE XREF: sub_14030C9E8+82↓j
                test    r8, r8
                jnz     short loc_14030CA2A

loc_14030CA19:                          ; CODE XREF: sub_14030C9E8+21↑j
                cmp     r8, rdx
                jz      short loc_14030CA2F

loc_14030CA1E:                          ; CODE XREF: sub_14030C9E8+74↓j
                                        ; sub_14030C9E8+15FE53↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14030CA2A:                          ; CODE XREF: sub_14030C9E8+2F↑j
                cmp     r8, rdx
                jnz     short loc_14030CA63

loc_14030CA2F:                          ; CODE XREF: sub_14030C9E8+34↑j
                test    byte ptr [rbx+2], 4
                jz      short loc_14030CA46
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402D0980
                mov     cl, 1
                test    al, al
                jnz     short loc_14030CA4C

loc_14030CA46:                          ; CODE XREF: sub_14030C9E8+4B↑j
                mov     cl, [rbx+0C3h]

loc_14030CA4C:                          ; CODE XREF: sub_14030C9E8+5C↑j
                mov     rax, [rdi+38h]
                mov     [rax], cl
                mov     rax, [rdi+84B8h]
                test    rax, rax
                jz      short loc_14030CA1E
                jmp     loc_14046C820
; ---------------------------------------------------------------------------

loc_14030CA63:                          ; CODE XREF: sub_14030C9E8+45↑j
                mov     r8, [r8+198h]
                jmp     short loc_14030CA14
sub_14030C9E8   endp

; ---------------------------------------------------------------------------
byte_14030CA6C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400734B8↑o
                                        ; .pdata:00000001400D4448↑o

; =============== S U B R O U T I N E =======================================


sub_14030CA74   proc near               ; CODE XREF: sub_14030C528+135↑p
                                        ; sub_14030C250+160166↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046C840 SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                and     byte ptr [rcx+70h], 0F1h
                xor     esi, esi
                test    byte ptr [rcx+70h], 20h
                mov     rdi, rdx
                mov     rbx, rcx
                mov     [rcx], rsi
                mov     [rcx+18h], rsi
                mov     [rcx+28h], rsi
                mov     [rcx+38h], rsi
                mov     [rcx+74h], esi
                jnz     short loc_14030CAC9
                mov     rax, [rcx+78h]
                test    rax, rax
                jz      short loc_14030CAB2
                mov     [rax], esi

loc_14030CAB2:                          ; CODE XREF: sub_14030CA74+3A↑j
                                        ; sub_14030CA74+5B↓j
                cmp     [rcx+72h], si
                jnz     short loc_14030CAD1

loc_14030CAB8:                          ; CODE XREF: sub_14030CA74+95↓j
                                        ; sub_14030CA74+B2↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030CAC9:                          ; CODE XREF: sub_14030CA74+31↑j
                mov     [rcx+80h], esi
                jmp     short loc_14030CAB2
; ---------------------------------------------------------------------------

loc_14030CAD1:                          ; CODE XREF: sub_14030CA74+42↑j
                cmp     [rcx+74h], esi
                jnz     short loc_14030CAE6

loc_14030CAD6:                          ; CODE XREF: sub_14030CA74+15FDD2↓j
                mov     rax, [rcx+198h]
                test    rax, rax
                jnz     loc_14046C840

loc_14030CAE6:                          ; CODE XREF: sub_14030CA74+60↑j
                                        ; sub_14030CA74+15FDD8↓j
                mov     eax, [rcx+74h]
                mov     r8, rsi
                test    eax, eax
                cmovz   r8, rdi
                neg     eax
                sbb     rdx, rdx
                xor     r9d, r9d
                and     rdx, rcx
                mov     rcx, rbx
                call    sub_14037E21C
                test    byte ptr [rbx+70h], 1
                jz      short loc_14030CAB8
                lea     rcx, [rbx+188h]
                test    byte ptr [rcx+8], 1
                mov     rax, [rcx]
                jz      short loc_14030CB23
                test    rax, rax
                jz      short loc_14030CB28
                xor     rax, rcx

loc_14030CB23:                          ; CODE XREF: sub_14030CA74+A5↑j
                test    rax, rax
                jnz     short loc_14030CAB8

loc_14030CB28:                          ; CODE XREF: sub_14030CA74+AA↑j
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14030B568
                jmp     short loc_14030CAB8
sub_14030CA74   endp

; ---------------------------------------------------------------------------
algn_14030CB38:                         ; DATA XREF: .rdata:00000001400734DC↑o
                                        ; .pdata:00000001400D4454↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14030CB40   proc near               ; DATA XREF: .rdata:0000000140073510↑o
                                        ; .pdata:00000001400D4460↑o ...

var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 000000014046C852 SIZE 00000101 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_8], rax
                xorps   xmm0, xmm0
                xor     eax, eax
                xorps   xmm1, xmm1
                mov     [rbp+57h+var_38], rax
                mov     rbx, rcx
                mov     [rbp+57h+var_60], rax
                movups  [rbp+57h+var_58], xmm1
                xor     esi, esi
                add     rcx, 500h
                movups  [rbp+57h+var_48], xmm1
                mov     [rbp+57h+var_10], rax
                movups  [rbp+57h+var_70], xmm0
                mov     rdi, gs:188h
                movups  [rbp+57h+var_30], xmm0
                mov     [rbp+57h+var_80], rsi
                movups  [rbp+57h+var_20], xmm0
                call    sub_14068BB08
                mov     rcx, rbx
                call    sub_1406B59A8
                cmp     [rbx+3F0h], rsi
                jnz     loc_14030CDFB
                cmp     [rbx+520h], rsi
                jnz     loc_14030CDFB

loc_14030CBD1:                          ; CODE XREF: sub_14030CB40+30F↓j
                mov     rcx, rbx
                call    sub_1406B5944
                cmp     [rbx+548h], rsi
                jnz     loc_14046C885

loc_14030CBE6:                          ; CODE XREF: sub_14030CB40+15FD8A↓j
                mov     eax, [rbx+1E0h]
                mov     [rbp+57h+var_78], eax
                cmp     eax, 0FFFFFFFDh
                ja      short loc_14030CC30
                mov     rdx, rdi
                mov     qword ptr [rbp+57h+var_70], rbx
                mov     rcx, rbx
                mov     dword ptr [rbp+57h+var_70+8], 2
                mov     [rbp+57h+var_60], rsi
                call    sub_140605524
                mov     r8d, 1
                lea     r9, [rbp+57h+var_78]
                lea     rdx, [rbp+57h+var_70]
                lea     ecx, [r8+5]
                call    sub_1406630E0
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1406054E0

loc_14030CC30:                          ; CODE XREF: sub_14030CB40+B2↑j
                mov     rcx, [rbx+1C8h]
                mov     [rbx+100h], esi
                test    rcx, rcx
                jnz     loc_14046C8CF

loc_14030CC46:                          ; CODE XREF: sub_14030CB40+15FDA0↓j
                mov     rcx, [rbx+1B0h]
                test    rcx, rcx
                jnz     loc_14046C8E5

loc_14030CC56:                          ; CODE XREF: sub_14030CB40+15FDD3↓j
                mov     rcx, rdi
                call    sub_1406B591C
                lea     rax, [rbx+18h]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     loc_14046C94C
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_14046C94C
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     rcx, rdi
                call    sub_1406B58DC
                mov     rcx, [rbx+3D8h]
                test    rcx, rcx
                jnz     loc_14030CE54

loc_14030CC9B:                          ; CODE XREF: sub_14030CB40+339↓j
                mov     rcx, [rbx+3E8h]
                test    rcx, rcx
                jz      short loc_14030CCAC
                call    IoFreeMiniCompletionPacket

loc_14030CCAC:                          ; CODE XREF: sub_14030CB40+165↑j
                test    dword ptr [rbx+528h], 800h
                jnz     loc_14030CD98

loc_14030CCBC:                          ; CODE XREF: sub_14030CB40+264↓j
                lea     rdx, [rbp+57h+var_30]
                mov     rcx, rbx
                call    sub_1406B5864
                xor     r9d, r9d
                lea     rcx, [rbp+57h+var_30]
                mov     r8, rdi
                xor     edx, edx
                call    sub_140683880
                lea     rax, [rbx+410h]
                mov     rdx, [rax]
                cmp     rdx, rax
                jnz     loc_14030CDA9

loc_14030CCEC:                          ; CODE XREF: sub_14030CB40+2A1↓j
                mov     r8, rdi
                lea     rcx, [rbp+57h+var_30]
                xor     edx, edx
                call    sub_140683804
                lea     rcx, [rbx+38h]
                call    ExDeleteResourceLite
                cmp     [rbx+450h], rsi
                ja      loc_14030CDE6

loc_14030CD10:                          ; CODE XREF: sub_14030CB40+2B0↓j
                                        ; sub_14030CB40+15FDE9↓j
                test    dword ptr [rbx+528h], 40000000h
                jnz     loc_14046C92E

loc_14030CD20:                          ; CODE XREF: sub_14030CB40+15FDF7↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     eax, [rbx+4D4h]
                test    eax, eax
                jz      short loc_14030CD5D
                mov     rcx, cs:qword_140D2D150
                mov     edx, eax
                call    sub_140663A60
                mov     edx, [rbx+4D4h]
                mov     r8, rax
                mov     rcx, cs:qword_140D2D150
                call    sub_140606B28

loc_14030CD5D:                          ; CODE XREF: sub_14030CB40+1F8↑j
                call    KeLeaveCriticalRegion
                mov     rcx, [rbx+618h]
                test    rcx, rcx
                jnz     loc_14046C93C

loc_14030CD72:                          ; CODE XREF: sub_14030CB40+15FE07↓j
                mov     rcx, [rbp+57h+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14030CD98:                          ; CODE XREF: sub_14030CB40+176↑j
                lea     rcx, [rbx+370h]
                call    ZwDeleteWnfStateName
                jmp     loc_14030CCBC
; ---------------------------------------------------------------------------

loc_14030CDA9:                          ; CODE XREF: sub_14030CB40+1A6↑j
                cmp     [rdx+8], rax
                jnz     loc_14046C94C
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_14046C94C
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rcx, [rbx+430h]
                call    ObDereferenceObjectDeferDelete
                mov     [rbx+430h], rsi
                jmp     loc_14030CCEC
; ---------------------------------------------------------------------------

loc_14030CDE6:                          ; CODE XREF: sub_14030CB40+1CA↑j
                mov     rcx, [rbx+458h]
                test    rcx, rcx
                jz      loc_14030CD10
                jmp     loc_14046C918
; ---------------------------------------------------------------------------

loc_14030CDFB:                          ; CODE XREF: sub_14030CB40+7E↑j
                                        ; sub_14030CB40+8B↑j
                lea     r8, [rbp+57h+var_80]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1406B5260
                lea     rdx, [rbp+57h+var_80]
                mov     rcx, rbx
                call    sub_140685064
                cmp     [rbx+3F0h], rsi
                jz      short loc_14030CE27
                mov     rcx, rbx
                call    sub_1406B5700

loc_14030CE27:                          ; CODE XREF: sub_14030CB40+2DD↑j
                mov     rax, [rbx+520h]
                test    rax, rax
                jnz     loc_14046C852

loc_14030CE37:                          ; CODE XREF: sub_14030CB40+15FD40↓j
                lea     rdx, [rbp+57h+var_80]
                mov     rcx, rbx
                call    sub_140605D3C
                mov     rcx, [rbp+57h+var_80]
                mov     rdx, rdi
                call    sub_1406054E0
                jmp     loc_14030CBD1
; ---------------------------------------------------------------------------

loc_14030CE54:                          ; CODE XREF: sub_14030CB40+155↑j
                mov     edx, 624A7350h
                call    ExFreePoolWithTag
                mov     rcx, [rbx+3E0h]
                xor     r8d, r8d
                mov     edx, 88h
                mov     [rbx+3D8h], rsi
                call    sub_1406257A4
                jmp     loc_14030CC9B
; } // starts at 14030CB40
sub_14030CB40   endp

; ---------------------------------------------------------------------------
byte_14030CE7E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140073510↑o
                                        ; .pdata:00000001400D4460↑o

; =============== S U B R O U T I N E =======================================


sub_14030CE84   proc near               ; CODE XREF: sub_1406B5944+38↓p
                                        ; DATA XREF: .rdata:0000000140073578↑o ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046C954 SIZE 00000064 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                lea     r14, [rcx+5B0h]
                mov     r15, rdx
                lea     rdi, [rcx+5B8h]
                mov     rcx, r14
                call    ExAcquireSpinLockExclusive
                test    byte ptr [rdi+8], 1
                mov     rcx, [rdi]
                movzx   ebp, al
                jz      short loc_14030CEC9
                test    rcx, rcx
                jz      short loc_14030CEC9
                xor     rcx, rdi

loc_14030CEC9:                          ; CODE XREF: sub_14030CE84+3B↑j
                                        ; sub_14030CE84+40↑j
                movzx   eax, byte ptr [rdi+8]
                mov     esi, eax
                and     esi, 1
                test    rcx, rcx
                jz      short loc_14030CF2A

loc_14030CED7:                          ; CODE XREF: sub_14030CE84+69↓j
                                        ; sub_14030CE84+A1↓j ...
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_14030CEEF
                mov     rdx, rcx
                test    esi, esi
                jz      short loc_14030CF04
                xor     rcx, rax

loc_14030CEE9:                          ; CODE XREF: sub_14030CE84+83↓j
                and     qword ptr [rdx], 0
                jmp     short loc_14030CED7
; ---------------------------------------------------------------------------

loc_14030CEEF:                          ; CODE XREF: sub_14030CE84+59↑j
                mov     rax, [rcx+8]
                test    rax, rax
                jz      short loc_14030CF09
                mov     rdx, rcx
                test    esi, esi
                jnz     short loc_14030CF75
                mov     rcx, rax
                jmp     short loc_14030CF78
; ---------------------------------------------------------------------------

loc_14030CF04:                          ; CODE XREF: sub_14030CE84+60↑j
                mov     rcx, rax
                jmp     short loc_14030CEE9
; ---------------------------------------------------------------------------

loc_14030CF09:                          ; CODE XREF: sub_14030CE84+72↑j
                mov     rbx, [rcx+10h]
                and     rbx, 0FFFFFFFFFFFFFFFCh
                test    esi, esi
                jnz     short loc_14030CF82

loc_14030CF15:                          ; CODE XREF: sub_14030CE84+101↓j
                                        ; sub_14030CE84+106↓j
                mov     rdx, r15
                call    sub_140582380
                test    rbx, rbx
                jz      short loc_14030CF27
                mov     rcx, rbx
                jmp     short loc_14030CED7
; ---------------------------------------------------------------------------

loc_14030CF27:                          ; CODE XREF: sub_14030CE84+9C↑j
                mov     al, [rdi+8]

loc_14030CF2A:                          ; CODE XREF: sub_14030CE84+51↑j
                movzx   eax, al
                mov     qword ptr [rdi], 0
                mov     qword ptr [rdi+8], 0
                and     eax, 1
                jnz     short loc_14030CF8C

loc_14030CF41:                          ; CODE XREF: sub_14030CE84+10C↓j
                mov     rcx, r14
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046C954

loc_14030CF57:                          ; CODE XREF: sub_14030CE84+15FAD2↓j
                                        ; sub_14030CE84+15FADE↓j ...
                mov     cr8, rbp
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030CF75:                          ; CODE XREF: sub_14030CE84+79↑j
                xor     rcx, rax

loc_14030CF78:                          ; CODE XREF: sub_14030CE84+7E↑j
                and     qword ptr [rdx+8], 0
                jmp     loc_14030CED7
; ---------------------------------------------------------------------------

loc_14030CF82:                          ; CODE XREF: sub_14030CE84+8F↑j
                test    rbx, rbx
                jz      short loc_14030CF15
                xor     rbx, rcx
                jmp     short loc_14030CF15
; ---------------------------------------------------------------------------

loc_14030CF8C:                          ; CODE XREF: sub_14030CE84+BB↑j
                mov     byte ptr [rdi+8], 1
                jmp     short loc_14030CF41
sub_14030CE84   endp

; ---------------------------------------------------------------------------
algn_14030CF92:                         ; DATA XREF: .rdata:0000000140073578↑o
                                        ; .pdata:00000001400D446C↑o
                align 20h
; Exported entry 586. FsRtlUninitializeLargeMcb

; =============== S U B R O U T I N E =======================================



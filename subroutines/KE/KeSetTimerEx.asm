KeSetTimerEx    proc near               ; DATA XREF: .rdata:0000000140067DD4↑o
                                        ; .pdata:00000001400D11FC↑o

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140453548 SIZE 00000059 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, cs:qword_140CFC808
                mov     rdi, rcx
                mov     rsi, cs:qword_140CFCA10
                mov     r14, r9
                xor     rsi, r9
                mov     [rsp+58h+arg_10], 0
                bswap   rsi
                xor     rsi, rcx
                mov     r12d, r8d
                mov     ecx, eax
                mov     rbx, rdx
                ror     rsi, cl
                xor     rsi, rax
                mov     r13, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140453548

loc_1402BE52A:                          ; CODE XREF: KeSetTimerEx+19508A↓j
                                        ; KeSetTimerEx+195094↓j ...
                mov     rbp, gs:20h
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140242A30
                test    cs:dword_140CFC450, 2000h
                movzx   r15d, al
                mov     edx, 1
                jz      loc_1402BE621
                cmp     byte ptr [rbp+20h], 0
                jnz     short loc_1402BE579
                mov     rcx, gs:188h
                mov     rcx, [rcx+0B8h]
                call    sub_1402BE704
                test    al, al
                jnz     loc_1402BE621

loc_1402BE579:                          ; CODE XREF: KeSetTimerEx+9A↑j
                movzx   eax, dx
                xor     r11d, r11d

loc_1402BE57F:                          ; CODE XREF: KeSetTimerEx+167↓j
                mov     [rdi+3Ah], ax
                lea     r9, [rsp+58h+arg_10]
                xor     r8d, r8d
                mov     [rdi+30h], rsi
                mov     rdx, rbx
                mov     [rdi+3Ch], r12d
                mov     rcx, rdi
                call    sub_1402BE640
                test    eax, eax
                jz      short loc_1402BE611
                mov     r9d, [rsp+58h+arg_10]
                mov     r8, r14
                mov     rdx, rdi
                mov     [rdi+4], r11d
                mov     rcx, rbp
                mov     [rsp+58h+var_38], r11
                call    sub_140242760
                test    al, al
                jz      short loc_1402BE611
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                jnz     loc_14045358D
                lock and dword ptr [rdi], 0FFFFFF7Fh

loc_1402BE5D9:                          ; CODE XREF: KeSetTimerEx+15F↓j
                                        ; KeSetTimerEx+1950DC↓j
                xor     r9d, r9d
                mov     byte ptr [rsp+58h+var_38], r13b
                xor     edx, edx
                mov     rcx, rbp
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     rbx, [rsp+58h+arg_0]
                movzx   eax, r15b
                mov     rbp, [rsp+58h+arg_8]
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

loc_1402BE611:                          ; CODE XREF: KeSetTimerEx+E0↑j
                                        ; KeSetTimerEx+100↑j
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_1402C1EA0
                jmp     short loc_1402BE5D9
; ---------------------------------------------------------------------------

loc_1402BE621:                          ; CODE XREF: KeSetTimerEx+90↑j
                                        ; KeSetTimerEx+B3↑j
                xor     r11d, r11d
                mov     eax, r11d
                jmp     loc_1402BE57F
KeSetTimerEx    endp

; ---------------------------------------------------------------------------
algn_1402BE62C:                         ; DATA XREF: .rdata:0000000140067DD4↑o
                                        ; .pdata:00000001400D11FC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402BE640   proc near               ; CODE XREF: sub_1402BE300+FA↑p
                                        ; KeSetTimerEx+D9↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                sub     rsp, 28h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+28h+var_18], rax
                mov     r10, r9
                mov     eax, [rcx]
                movups  [rsp+28h+var_28], xmm0
                mov     dword ptr [rsp+28h+var_28], eax
                mov     rax, rdx
                shr     rax, 20h
                mov     byte ptr [rsp+28h+var_28+1], r8b
                test    eax, eax
                jns     short loc_1402BE6BB

loc_1402BE66A:                          ; CODE XREF: sub_1402BE640+B9↓j
                xor     r9d, r9d
                test    r8b, 0FCh
                jnz     short loc_1402BE6AD

loc_1402BE673:                          ; CODE XREF: sub_1402BE640+79↓j
                mov     rax, 0FFFFF78000000008h
                mov     rax, [rax]
                sub     rax, rdx
                mov     [rcx+18h], rax
                add     rax, r9
                shr     rax, 12h
                or      byte ptr [rsp+28h+var_28+3], 40h
                movzx   edx, al
                mov     byte ptr [rsp+28h+var_28+2], dl
                mov     eax, dword ptr [rsp+28h+var_28]
                mov     [rcx], eax
                mov     eax, 1
                mov     [r10], edx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BE6AD:                          ; CODE XREF: sub_1402BE640+31↑j
                movzx   r9d, r8b
                and     r9d, 0FFFFFFFCh
                shl     r9d, 10h
                jmp     short loc_1402BE673
; ---------------------------------------------------------------------------

loc_1402BE6BB:                          ; CODE XREF: sub_1402BE640+28↑j
                or      r8b, 1
                mov     rax, 0FFFFF78000000014h
                mov     byte ptr [rsp+28h+var_28+1], r8b
                mov     rax, [rax]
                sub     rax, rdx
                mov     rdx, rax
                shr     rax, 20h
                test    eax, eax
                js      short loc_1402BE6F3
                mov     eax, dword ptr [rsp+28h+var_28]
                xor     r9d, r9d
                mov     [rcx], eax
                xor     eax, eax
                mov     [rcx+18h], r9
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BE6F3:                          ; CODE XREF: sub_1402BE640+9D↑j
                movzx   r8d, byte ptr [rsp+28h+var_28+1]
                jmp     loc_1402BE66A
sub_1402BE640   endp

; ---------------------------------------------------------------------------
byte_1402BE6FE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D1208↑o

; =============== S U B R O U T I N E =======================================


sub_1402BE704   proc near               ; CODE XREF: sub_1402AEF60+4E0↑p
                                        ; KeSetTimer2+2D8↑p ...
                test    dword ptr [rcx+464h], 1000h
                jnz     short loc_1402BE714

loc_1402BE710:                          ; CODE XREF: sub_1402BE704+1A↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402BE714:                          ; CODE XREF: sub_1402BE704+A↑j
                test    dword ptr [rcx+87Ch], 4000000h
                jnz     short loc_1402BE710
                mov     al, 1
                retn
sub_1402BE704   endp

; ---------------------------------------------------------------------------
                align 4
algn_1402BE724:                         ; DATA XREF: .pdata:00000001400D1214↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402BE730   proc near               ; DATA XREF: .rdata:0000000140067E10↑o
                                        ; .pdata:00000001400D1220↑o ...

var_68          = qword ptr -68h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404535A2 SIZE 00000431 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                or      r15, 0FFFFFFFFFFFFFFFFh
                lea     r14, [rcx+108h]
                xor     edx, edx
                mov     rbp, rcx
                lea     esi, [r15+2]
                cmp     [r14], rdx
                jnz     loc_1404535A2

loc_1402BE75E:                          ; CODE XREF: sub_1402BE730+1951F0↓j
                                        ; sub_1402BE730+1951FF↓j
                lea     rdi, [rbp+40h]
                mov     rcx, rdi
                call    KeAcquireSpinLockRaiseToDpc
                lea     rcx, [rbp+118h]
                movzx   ebx, al
                cmp     qword ptr [rcx], 0
                jnz     short loc_1402BE7AE
                mov     rcx, rdi
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140453973

loc_1402BE790:                          ; CODE XREF: sub_1402BE730+195246↓j
                                        ; sub_1402BE730+195252↓j ...
                mov     cr8, rbx

loc_1402BE794:                          ; CODE XREF: sub_1402BE730+90↓j
                mov     rcx, rbp
                call    KeCancelTimer
                add     rsp, 48h
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

loc_1402BE7AE:                          ; CODE XREF: sub_1402BE730+48↑j
                lea     rdx, [rbp+120h]
                mov     r9b, bl
                mov     r8, rdi
                call    sub_140300BF0
                jmp     short loc_1402BE794
sub_1402BE730   endp

; ---------------------------------------------------------------------------
algn_1402BE7C2:                         ; DATA XREF: .rdata:0000000140067E10↑o
                                        ; .pdata:00000001400D1220↑o
                align 10h
; Exported entry 1120. KeCancelTimer

; =============== S U B R O U T I N E =======================================



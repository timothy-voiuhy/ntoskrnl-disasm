LpcRequestPort  proc near               ; CODE XREF: sub_14068BF38+25C↑p
                                        ; sub_14068BF38+6E9↑p ...

var_48          = qword ptr -48h
var_18          = dword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 60h
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                lea     r8d, [rdx+40h]
                call    memset
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     r9d, r9d
                mov     [rsp+68h+var_48], rbx
                xor     r8d, r8d
                mov     [rsp+68h+var_18], 10002h
                mov     rdx, rdi
                lea     rcx, [rsp+68h+var_48]
                call    sub_1406142C0
                mov     ebx, eax
                call    KeLeaveCriticalRegion
                mov     eax, ebx
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LpcRequestPort  endp

byte_1406F86D5  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104FE8↑o

; =============== S U B R O U T I N E =======================================


sub_1406F86DC   proc near               ; CODE XREF: sub_140615070+A65↑p
                                        ; sub_1406177A0+671↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                lea     rsi, [rcx-30h]
                mov     ebx, edx
                movzx   eax, byte ptr [rsi+11h]
                lea     rdi, qword_1400062A0
                mov     rbp, rcx
                mov     rdi, [rdi+rax*8]
                mov     rax, [rdi+18h]
                call    sub_1404079D0
                test    ebx, ebx
                jz      short loc_1406F8730
                lea     rbx, [rbp-10h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406F8799

loc_1406F8728:                          ; CODE XREF: sub_1406F86DC+C5↓j
                mov     rcx, rbx
                call    sub_140243660

loc_1406F8730:                          ; CODE XREF: sub_1406F86DC+37↑j
                mov     rax, [rdi+28h]
                mov     rcx, rbp
                call    sub_1404079D0
                test    eax, eax
                js      short loc_1406F875F
                test    byte ptr [rsi+10h], 2
                jz      short loc_1406F8775
                mov     ecx, [rdi+8]
                lea     rdx, unk_140CEBD00
                shl     rcx, 7
                add     rcx, rdx
                mov     rdx, rsi
                call    sub_140234500

loc_1406F875F:                          ; CODE XREF: sub_1406F86DC+62↑j
                                        ; sub_1406F86DC+BB↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F8775:                          ; CODE XREF: sub_1406F86DC+68↑j
                cmp     qword ptr [rdi+30h], 0
                mov     rcx, rsi
                jbe     short loc_1406F87A3
                mov     eax, [rdi+8]
                lea     rdx, unk_140CEBD00
                shl     rax, 7
                mov     rax, [rax+rdx+38h]
                call    sub_1404079D0
                jmp     short loc_1406F875F
; ---------------------------------------------------------------------------

loc_1406F8799:                          ; CODE XREF: sub_1406F86DC+4A↑j
                mov     rcx, rbx
                call    ExfTryToWakePushLock
                jmp     short loc_1406F8728
; ---------------------------------------------------------------------------

loc_1406F87A3:                          ; CODE XREF: sub_1406F86DC+A1↑j
                mov     edx, [rdi+4]
                call    ExFreePoolWithTag
                jmp     short loc_1406F875F
sub_1406F86DC   endp

; ---------------------------------------------------------------------------
byte_1406F87AD  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140104FF4↑o

; =============== S U B R O U T I N E =======================================


sub_1406F87B4   proc near               ; CODE XREF: sub_140632C1C+1D↑p
                                        ; sub_140638CB0+CD↑p ...
                sub     rsp, 28h
                mov     rax, 7FFFFFFEFFFFh
                cmp     rcx, rax
                jbe     short loc_1406F87D8
                call    sub_140243AF0
                test    eax, eax
                jnz     short loc_1406F87D8
                mov     al, 1

loc_1406F87D2:                          ; CODE XREF: sub_1406F87B4+26↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406F87D8:                          ; CODE XREF: sub_1406F87B4+11↑j
                                        ; sub_1406F87B4+1A↑j
                xor     al, al
                jmp     short loc_1406F87D2
sub_1406F87B4   endp

; ---------------------------------------------------------------------------
byte_1406F87DC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140105000↑o

; =============== S U B R O U T I N E =======================================


sub_1406F87E4   proc near               ; CODE XREF: sub_140656F00+273↑p
                                        ; DATA XREF: .pdata:000000014010500C↑o
                mov     r11, [rcx]
                mov     rax, r9
                shr     rdx, 10h
                cmp     r8, r11
                jnb     short loc_1406F8851
                mov     r10, r11
                mov     r9, rdx
                sub     r10, r8
                cmp     rax, rdx
                jbe     short loc_1406F8817
                cmp     rax, r11
                jnb     short loc_1406F8817
                lea     r9, [rax-1]
                lea     rax, [rdx-1]
                add     r9, rdx
                not     rax
                and     r9, rax

loc_1406F8817:                          ; CODE XREF: sub_1406F87E4+1B↑j
                                        ; sub_1406F87E4+20↑j
                cmp     r9, r10
                ja      short loc_1406F8851
                mov     r11, [rcx+8]

loc_1406F8820:                          ; CODE XREF: sub_1406F87E4+6B↓j
                mov     rax, r9
                shr     rax, 5
                lea     rcx, [r11+rax*4]
                xor     eax, eax
                test    r8, r8
                jz      short loc_1406F8837

loc_1406F8832:                          ; CODE XREF: sub_1406F87E4+80↓j
                cmp     dword ptr [rcx], 0
                jz      short loc_1406F8857

loc_1406F8837:                          ; CODE XREF: sub_1406F87E4+4C↑j
                                        ; sub_1406F87E4+7E↓j
                cmp     rax, r8
                jz      short loc_1406F8866
                add     r9, rax
                lea     rax, [rdx-1]
                not     rax
                and     r9, rax
                add     r9, rdx
                cmp     r9, r10
                jbe     short loc_1406F8820

loc_1406F8851:                          ; CODE XREF: sub_1406F87E4+D↑j
                                        ; sub_1406F87E4+36↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F8857:                          ; CODE XREF: sub_1406F87E4+51↑j
                add     rcx, 4
                add     rax, 20h ; ' '
                cmp     rax, r8
                jnb     short loc_1406F8837
                jmp     short loc_1406F8832
; ---------------------------------------------------------------------------

loc_1406F8866:                          ; CODE XREF: sub_1406F87E4+56↑j
                mov     rax, r9
                retn
sub_1406F87E4   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1406F886B:                         ; DATA XREF: .pdata:000000014010500C↑o
                align 20h
; Exported entry 530. FsRtlOplockBreakH

; =============== S U B R O U T I N E =======================================



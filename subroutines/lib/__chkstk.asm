__chkstk        proc near               ; CODE XREF: sub_14025A7A0+56↑p
                                        ; sub_14025A7A0+F0↑p ...

var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = byte ptr  8

                sub     rsp, 10h
                mov     [rsp+10h+var_10], r10
                mov     [rsp+10h+var_8], r11
                xor     r11, r11
                lea     r10, [rsp+10h+arg_0]
                sub     r10, rax
                cmovb   r10, r11
                and     r10w, 0F000h
                lea     r11, [rsp+10h+arg_0]
                and     r11w, 0F000h
                jmp     short loc_1404078F9
; ---------------------------------------------------------------------------

loc_1404078EF:                          ; CODE XREF: __chkstk+3C↓j
                lea     r11, [r11-1000h]
                test    [r11], r11b

loc_1404078F9:                          ; CODE XREF: __chkstk+2D↑j
                cmp     r10, r11
                jb      short loc_1404078EF
                mov     r10, [rsp+10h+var_10]
                mov     r11, [rsp+10h+var_8]
                add     rsp, 10h
                retn
__chkstk        endp

; ---------------------------------------------------------------------------
algn_14040790C:                         ; DATA XREF: .pdata:00000001400E37E4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407920   proc near               ; CODE XREF: sub_140345260+57↑p
                                        ; sub_140407980:loc_1404079C5↓j ...

var_8           = qword ptr -8

                sub     rsp, 28h
                mov     [rsp+28h+var_8], rcx
                mov     ecx, 139h
                xor     edx, edx
                xor     r8, r8
                xor     r9, r9
                call    KeBugCheckEx
                nop
                retn
sub_140407920   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_14040793D  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E37F0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140407950   proc near               ; DATA XREF: .rdata:00000001400B0F3C↑o
                                        ; .rdata:00000001400B0F48↑o ...

var_8           = qword ptr -8

                sub     rsp, 28h
                mov     [rsp+28h+var_8], r8
                mov     ecx, 139h
                xor     edx, edx
                xor     r8, r8
                xor     r9, r9
                call    KeBugCheckEx
                nop
                retn
sub_140407950   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040796D:                         ; DATA XREF: .pdata:00000001400E37FC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407980   proc near               ; CODE XREF: bsearch+5A↑p
                                        ; bsearch_s+5E↑p ...
; __unwind { // sub_140407950
                mov     rdx, cs:qword_140E01868
                test    rcx, rcx
                jge     short loc_1404079C5
                test    rdx, rdx
                jz      short locret_1404079AE
                mov     r10, rcx
                shr     r10, 9
                mov     rdx, [rdx+r10*8]
                mov     r10, rcx
                shr     r10, 3
                test    cl, 0Fh
                jnz     short loc_1404079AF
                bt      rdx, r10
                jnb     short loc_1404079C5

locret_1404079AE:                       ; CODE XREF: sub_140407980+F↑j
                retn
; ---------------------------------------------------------------------------

loc_1404079AF:                          ; CODE XREF: sub_140407980+26↑j
                btr     r10, 0
                bt      rdx, r10
                jnb     short loc_1404079C5
                or      r10, 1
                bt      rdx, r10
                jnb     short loc_1404079C5
                retn
; ---------------------------------------------------------------------------

loc_1404079C5:                          ; CODE XREF: sub_140407980+A↑j
                                        ; sub_140407980+2C↑j ...
                jmp     sub_140407920
; } // starts at 140407980
sub_140407980   endp

; ---------------------------------------------------------------------------
algn_1404079CA:                         ; DATA XREF: .pdata:00000001400E3808↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404079D0   proc near               ; CODE XREF: sub_140200738+F1↑p
                                        ; sub_140200884+21↑p ...
; __unwind { // sub_140407950
                mov     r11, cs:qword_140E01868
                test    rax, rax
                jge     loc_140407A5A
                test    r11, r11
                jz      short loc_140407A01
                mov     r10, rax
                shr     r10, 9
                mov     r11, [r11+r10*8]
                mov     r10, rax
                shr     r10, 3
                test    al, 0Fh
                jnz     short loc_140407A43
                bt      r11, r10
                jnb     short loc_140407A5A

loc_140407A01:                          ; CODE XREF: sub_1404079D0+13↑j
                                        ; sub_1404079D0+88↓j
                mov     r11, cs:qword_140CFCC48
                mov     r10, rax
                test    r11, r11
                jz      short loc_140407A3E
                shr     r10, 10h
                bt      [r11], r10
                jnb     short loc_140407A25
                call    loc_140407A20
; ---------------------------------------------------------------------------
                align 20h

loc_140407A20:                          ; CODE XREF: sub_1404079D0+4A↑j
                mov     [rsp+0], rax
                retn
; ---------------------------------------------------------------------------

loc_140407A25:                          ; CODE XREF: sub_1404079D0+48↑j
                or      byte ptr gs:853h, 1
                test    byte ptr gs:853h, 2
                jnz     short loc_140407A3E
                jmp     sub_140A193A0
; ---------------------------------------------------------------------------

loc_140407A3E:                          ; CODE XREF: sub_1404079D0+3E↑j
                                        ; sub_1404079D0+67↑j
                lfence
                jmp     rax
; ---------------------------------------------------------------------------

loc_140407A43:                          ; CODE XREF: sub_1404079D0+29↑j
                btr     r10, 0
                bt      r11, r10
                jnb     short loc_140407A5A
                or      r10, 1
                bt      r11, r10
                jnb     short loc_140407A5A
                jmp     short loc_140407A01
; ---------------------------------------------------------------------------

loc_140407A5A:                          ; CODE XREF: sub_1404079D0+A↑j
                                        ; sub_1404079D0+2F↑j ...
                mov     rcx, rax
                jmp     sub_140407920
; } // starts at 1404079D0
sub_1404079D0   endp

; ---------------------------------------------------------------------------
algn_140407A62:                         ; DATA XREF: .pdata:00000001400E3814↑o
                align 10h
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_8. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_140407A71:                         ; DATA XREF: .pdata:00000001400E3820↑o
                align 20h
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_9. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_140407A81:                         ; DATA XREF: .pdata:00000001400E382C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407AA0   proc near               ; DATA XREF: .pdata:00000001400E3838↑o
                                        ; PAGE:000000014098B8A8↓o
                sub     rsp, 28h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp-48h], eax
                mov     [rbp-40h], eax
                mov     [rbp-38h], eax
                mov     [rbp-30h], eax
                mov     [rbp-28h], eax
                mov     [rbp-20h], eax
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm0
                movaps  xmmword ptr [rbp+10h], xmm0
                movaps  xmmword ptr [rbp+20h], xmm0
                movaps  xmmword ptr [rbp+30h], xmm0
                movaps  xmmword ptr [rbp+40h], xmm0
                call    sub_14090E8C0
                mov     [rbp-50h], rax
                mov     rbx, [rbp+0C0h]
                mov     rdi, [rbp+0C8h]
                mov     rsi, [rbp+0D0h]
                cli
                test    byte ptr [rbp+0F0h], 1
                jz      loc_140407D7F
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_140407B0B
                stac

loc_140407B0B:                          ; CODE XREF: sub_140407AA0+66↑j
                                        ; sub_140407AA0+96↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_140407B38
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_140407B0B
; ---------------------------------------------------------------------------

loc_140407B38:                          ; CODE XREF: sub_140407AA0+7B↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_140407B4A
                xor     ecx, ecx
                call    sub_1402ADF00

loc_140407B4A:                          ; CODE XREF: sub_140407AA0+A1↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_140407B60
                call    sub_1403FE910

loc_140407B60:                          ; CODE XREF: sub_140407AA0+B9↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_140407B96
                test    byte ptr [rcx+2], 1
                jz      short loc_140407B85
                call    sub_14051C050
                mov     rcx, gs:188h

loc_140407B85:                          ; CODE XREF: sub_140407AA0+D5↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_140407B96
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_140407B96:                          ; CODE XREF: sub_140407AA0+CF↑j
                                        ; sub_140407AA0+E9↑j
                ldmxcsr dword ptr [rbp-54h]
                cmp     word ptr [rbp+80h], 0
                jz      short loc_140407BA9
                call    sub_1403FDC00

loc_140407BA9:                          ; CODE XREF: sub_140407AA0+102↑j
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_140407BFE
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_140407BFE:                          ; CODE XREF: sub_140407AA0+14B↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_140407C19
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_140407C19:                          ; CODE XREF: sub_140407AA0+169↑j
                btr     word ptr gs:278h, 5
                jnb     loc_140407D4F
                call    loc_140407D3D

loc_140407C2F:                          ; CODE XREF: sub_140407AA0+19C↓p
                add     rsp, 8
                call    loc_140407D46

loc_140407C38:                          ; CODE XREF: sub_140407AA0+1A5↓p
                add     rsp, 8
                call    loc_140407C2F

loc_140407C41:                          ; CODE XREF: sub_140407AA0+1AE↓p
                add     rsp, 8
                call    loc_140407C38

loc_140407C4A:                          ; CODE XREF: sub_140407AA0+1B7↓p
                add     rsp, 8
                call    loc_140407C41

loc_140407C53:                          ; CODE XREF: sub_140407AA0+1C0↓p
                add     rsp, 8
                call    loc_140407C4A

loc_140407C5C:                          ; CODE XREF: sub_140407AA0+1C9↓p
                add     rsp, 8
                call    loc_140407C53

loc_140407C65:                          ; CODE XREF: sub_140407AA0+1D2↓p
                add     rsp, 8
                call    loc_140407C5C

loc_140407C6E:                          ; CODE XREF: sub_140407AA0+1DB↓p
                add     rsp, 8
                call    loc_140407C65

loc_140407C77:                          ; CODE XREF: sub_140407AA0+1E4↓p
                add     rsp, 8
                call    loc_140407C6E

loc_140407C80:                          ; CODE XREF: sub_140407AA0+1ED↓p
                add     rsp, 8
                call    loc_140407C77

loc_140407C89:                          ; CODE XREF: sub_140407AA0+1F6↓p
                add     rsp, 8
                call    loc_140407C80

loc_140407C92:                          ; CODE XREF: sub_140407AA0+1FF↓p
                add     rsp, 8
                call    loc_140407C89

loc_140407C9B:                          ; CODE XREF: sub_140407AA0+208↓p
                add     rsp, 8
                call    loc_140407C92

loc_140407CA4:                          ; CODE XREF: sub_140407AA0+211↓p
                add     rsp, 8
                call    loc_140407C9B

loc_140407CAD:                          ; CODE XREF: sub_140407AA0+21A↓p
                add     rsp, 8
                call    loc_140407CA4

loc_140407CB6:                          ; CODE XREF: sub_140407AA0+223↓p
                add     rsp, 8
                call    loc_140407CAD

loc_140407CBF:                          ; CODE XREF: sub_140407AA0+22C↓p
                add     rsp, 8
                call    loc_140407CB6

loc_140407CC8:                          ; CODE XREF: sub_140407AA0+235↓p
                add     rsp, 8
                call    loc_140407CBF

loc_140407CD1:                          ; CODE XREF: sub_140407AA0+23E↓p
                add     rsp, 8
                call    loc_140407CC8

loc_140407CDA:                          ; CODE XREF: sub_140407AA0+247↓p
                add     rsp, 8
                call    loc_140407CD1

loc_140407CE3:                          ; CODE XREF: sub_140407AA0+250↓p
                add     rsp, 8
                call    loc_140407CDA

loc_140407CEC:                          ; CODE XREF: sub_140407AA0+259↓p
                add     rsp, 8
                call    loc_140407CE3

loc_140407CF5:                          ; CODE XREF: sub_140407AA0+262↓p
                add     rsp, 8
                call    loc_140407CEC

loc_140407CFE:                          ; CODE XREF: sub_140407AA0+26B↓p
                add     rsp, 8
                call    loc_140407CF5

loc_140407D07:                          ; CODE XREF: sub_140407AA0+274↓p
                add     rsp, 8
                call    loc_140407CFE

loc_140407D10:                          ; CODE XREF: sub_140407AA0+27D↓p
                add     rsp, 8
                call    loc_140407D07

loc_140407D19:                          ; CODE XREF: sub_140407AA0+286↓p
                add     rsp, 8
                call    loc_140407D10

loc_140407D22:                          ; CODE XREF: sub_140407AA0+28F↓p
                add     rsp, 8
                call    loc_140407D19

loc_140407D2B:                          ; CODE XREF: sub_140407AA0+298↓p
                add     rsp, 8
                call    loc_140407D22

loc_140407D34:                          ; CODE XREF: sub_140407AA0+2A1↓p
                add     rsp, 8
                call    loc_140407D2B

loc_140407D3D:                          ; CODE XREF: sub_140407AA0+18A↑p
                add     rsp, 8
                call    loc_140407D34

loc_140407D46:                          ; CODE XREF: sub_140407AA0+193↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140407D4F:                          ; CODE XREF: sub_140407AA0+184↑j
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_140407D7A
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_140407D7A:                          ; CODE XREF: sub_140407AA0+2D3↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_140407D7F:                          ; CODE XREF: sub_140407AA0+59↑j
                ldmxcsr dword ptr [rbp-54h]
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                iretq
sub_140407AA0   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_140407DCA:                         ; DATA XREF: .pdata:00000001400E3838↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407DE0   proc near               ; DATA XREF: .rdata:00000001400B0F78↑o
                                        ; .pdata:00000001400E3844↑o
                mov     eax, 1
                test    dword ptr [rcx+4], 66h
                jnz     short locret_140407DFF
                mov     rax, [rdx+20h]
                mov     rax, [rax+18h]
                mov     [r9+18h], rax
                mov     eax, 2

locret_140407DFF:                       ; CODE XREF: sub_140407DE0+C↑j
                retn
sub_140407DE0   endp

; ---------------------------------------------------------------------------
byte_140407E00  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E3844↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140407E10   proc near               ; CODE XREF: sub_1402AAF70+292↑p
                                        ; DATA XREF: .rdata:0000000140008F60↑o ...

var_8           = qword ptr -8

; __unwind { // sub_140407DE0
                sub     rsp, 28h
                mov     [rsp+28h+var_8], r9
                mov     rax, [r9+30h]
                call    rax
                nop     dword ptr [rax]
                nop
                add     rsp, 28h
                retn
; } // starts at 140407E10
sub_140407E10   endp

; ---------------------------------------------------------------------------
algn_140407E28:                         ; DATA XREF: .pdata:00000001400E3850↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140407E30   proc near               ; DATA XREF: .rdata:00000001400B0F90↑o
                                        ; .pdata:00000001400E385C↑o
                mov     rax, [rdx+20h]
                mov     r10, [rax]
                mov     [r9], r10
                mov     r10, [rax+8]
                mov     [r9+8], r10
                mov     r10, [rax+10h]
                mov     [r9+10h], r10
                mov     r10, [rax+18h]
                mov     [r9+18h], r10
                mov     r10, [rax+28h]
                mov     [r9+28h], r10
                mov     r10, [rax+30h]
                mov     [r9+30h], r10
                mov     r10, [rax+38h]
                mov     [r9+38h], r10
                mov     r10, [rax+40h]
                mov     [r9+40h], r10
                mov     r10d, [rax+48h]
                mov     [r9+48h], r10d
                mov     eax, 3
                retn
sub_140407E30   endp

; ---------------------------------------------------------------------------
byte_140407E80  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E385C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140407E90   proc near               ; CODE XREF: RtlUnwindEx+2BF↑p
                                        ; DATA XREF: .pdata:00000001400E3868↑o

var_8           = qword ptr -8

; __unwind { // sub_140407E30
                sub     rsp, 28h
                mov     [rsp+28h+var_8], r9
                mov     rax, [r9+30h]
                call    rax
                nop     dword ptr [rax]
                nop
                add     rsp, 28h
                retn
; } // starts at 140407E90
sub_140407E90   endp

; ---------------------------------------------------------------------------
algn_140407EA8:                         ; DATA XREF: .pdata:00000001400E3868↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407EC0   proc near               ; CODE XREF: sub_14033A510:loc_14033A54C↑p
                                        ; DATA XREF: .pdata:00000001400E3874↑o
                mov     rax, rdx
                shr     rdx, 20h
                xsavec  byte ptr [rcx]
                retn
sub_140407EC0   endp

; ---------------------------------------------------------------------------
algn_140407ECB:                         ; DATA XREF: .pdata:00000001400E3874↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407EE0   proc near               ; CODE XREF: sub_14033A4DC+1403CA↓p
                                        ; DATA XREF: .pdata:00000001400E3880↑o
                mov     rax, rdx
                shr     rdx, 20h
                xsaves  byte ptr [rcx]
                retn
sub_140407EE0   endp

; ---------------------------------------------------------------------------
algn_140407EEB:                         ; DATA XREF: .pdata:00000001400E3880↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407F00   proc near               ; CODE XREF: sub_140381AF8+115672↓p
                                        ; DATA XREF: .pdata:00000001400E388C↑o
                mov     rax, rdx
                shr     rdx, 20h
                xrstors byte ptr [rcx]
                retn
sub_140407F00   endp

; ---------------------------------------------------------------------------
algn_140407F0B:                         ; DATA XREF: .pdata:00000001400E388C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_140407F20   proc near               ; CODE XREF: sub_1402A9F34+CD↑p
                                        ; sub_14058F708+B5↓p
                                        ; DATA XREF: ...
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140407F20   endp

; ---------------------------------------------------------------------------
                db 90h
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_40. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_140407F24:                         ; DATA XREF: .pdata:00000001400E3898↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140407F40   proc near               ; CODE XREF: sub_14030D060+22↑p
                                        ; sub_140328B08+14B986↓p ...

arg_20          = qword ptr  28h

                push    r12
                push    rbp
                push    rbx
                push    rdi
                push    rsi
                mov     rdi, rcx
                mov     r10, rcx
                mov     rsi, r8
                mov     r8, rdx
                sub     r9, 11h
                sub     rdx, 8
                mov     r11, rdx
                mov     rbp, rdi
                mov     ebx, 0Dh

loc_140407F65:                          ; CODE XREF: sub_140407F40+AC↓j
                                        ; sub_140407F40+16D↓j ...
                cmp     rsi, r9
                jnb     loc_14040852F
                cmp     rdi, r11
                jnb     loc_14040852F
                mov     al, [rsi]
                test    al, 1
                jnz     short loc_140407FF1
                mov     dl, [rsi+1]
                mov     [rdi], dl
                test    al, 2
                jnz     loc_1404080CC
                mov     dl, [rsi+2]
                mov     [rdi+1], dl
                test    al, 4
                jnz     loc_140408199
                mov     dl, [rsi+3]
                mov     [rdi+2], dl
                test    al, 8
                jnz     loc_140408258
                mov     dl, [rsi+4]
                mov     [rdi+3], dl
                test    al, 10h
                jnz     loc_140408309
                mov     dl, [rsi+5]
                mov     [rdi+4], dl
                test    al, 20h
                jnz     loc_1404083A8
                mov     dl, [rsi+6]
                mov     [rdi+5], dl
                test    al, 40h
                jnz     loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_140407FF1:                          ; CODE XREF: sub_140407F40+3B↑j
                                        ; sub_140407F40+187↓j
                cmp     rdi, rbp
                ja      loc_1404080B2
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+1]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_140408540
                rep movsb
                mov     rsi, r12
                sub     rdi, 1
                test    al, 2
                jnz     loc_1404080CC
                mov     dl, [rsi+2]
                mov     [rdi+1], dl
                test    al, 4
                jnz     loc_140408199
                mov     dl, [rsi+3]
                mov     [rdi+2], dl
                test    al, 8
                jnz     loc_140408258
                mov     dl, [rsi+4]
                mov     [rdi+3], dl
                test    al, 10h
                jnz     loc_140408309
                mov     dl, [rsi+5]
                mov     [rdi+4], dl
                test    al, 20h
                jnz     loc_1404083A8
                mov     dl, [rsi+6]
                mov     [rdi+5], dl
                test    al, 40h
                jnz     loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_1404080B2:                          ; CODE XREF: sub_140407F40+B4↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     loc_140407FF1
; ---------------------------------------------------------------------------

loc_1404080CC:                          ; CODE XREF: sub_140407F40+44↑j
                                        ; sub_140407F40+105↑j
                add     rdi, 1

loc_1404080D0:                          ; CODE XREF: sub_140407F40+254↓j
                cmp     rdi, rbp
                ja      loc_14040817F
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+2]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_1404085EA
                rep movsb
                mov     rsi, r12
                sub     rdi, 2
                test    al, 4
                jnz     short loc_140408199
                mov     dl, [rsi+3]
                mov     [rdi+2], dl
                test    al, 8
                jnz     loc_140408258
                mov     dl, [rsi+4]
                mov     [rdi+3], dl
                test    al, 10h
                jnz     loc_140408309
                mov     dl, [rsi+5]
                mov     [rdi+4], dl
                test    al, 20h
                jnz     loc_1404083A8
                mov     dl, [rsi+6]
                mov     [rdi+5], dl
                test    al, 40h
                jnz     loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_14040817F:                          ; CODE XREF: sub_140407F40+193↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     loc_1404080D0
; ---------------------------------------------------------------------------

loc_140408199:                          ; CODE XREF: sub_140407F40+52↑j
                                        ; sub_140407F40+113↑j ...
                add     rdi, 2

loc_14040819D:                          ; CODE XREF: sub_140407F40+313↓j
                cmp     rdi, rbp
                ja      loc_14040823E
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+3]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_140408694
                rep movsb
                mov     rsi, r12
                sub     rdi, 3
                test    al, 8
                jnz     short loc_140408258
                mov     dl, [rsi+4]
                mov     [rdi+3], dl
                test    al, 10h
                jnz     loc_140408309
                mov     dl, [rsi+5]
                mov     [rdi+4], dl
                test    al, 20h
                jnz     loc_1404083A8
                mov     dl, [rsi+6]
                mov     [rdi+5], dl
                test    al, 40h
                jnz     loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_14040823E:                          ; CODE XREF: sub_140407F40+260↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     loc_14040819D
; ---------------------------------------------------------------------------

loc_140408258:                          ; CODE XREF: sub_140407F40+60↑j
                                        ; sub_140407F40+121↑j ...
                add     rdi, 3

loc_14040825C:                          ; CODE XREF: sub_140407F40+3C4↓j
                cmp     rdi, rbp
                ja      loc_1404082EF
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+4]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_14040873E
                rep movsb
                mov     rsi, r12
                sub     rdi, 4
                test    al, 10h
                jnz     short loc_140408309
                mov     dl, [rsi+5]
                mov     [rdi+4], dl
                test    al, 20h
                jnz     loc_1404083A8
                mov     dl, [rsi+6]
                mov     [rdi+5], dl
                test    al, 40h
                jnz     loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_1404082EF:                          ; CODE XREF: sub_140407F40+31F↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     loc_14040825C
; ---------------------------------------------------------------------------

loc_140408309:                          ; CODE XREF: sub_140407F40+6E↑j
                                        ; sub_140407F40+12F↑j ...
                add     rdi, 4

loc_14040830D:                          ; CODE XREF: sub_140407F40+463↓j
                cmp     rdi, rbp
                ja      short loc_14040838E
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+5]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_1404087E8
                rep movsb
                mov     rsi, r12
                sub     rdi, 5
                test    al, 20h
                jnz     short loc_1404083A8
                mov     dl, [rsi+6]
                mov     [rdi+5], dl
                test    al, 40h
                jnz     loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_14040838E:                          ; CODE XREF: sub_140407F40+3D0↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     loc_14040830D
; ---------------------------------------------------------------------------

loc_1404083A8:                          ; CODE XREF: sub_140407F40+7C↑j
                                        ; sub_140407F40+13D↑j ...
                add     rdi, 5

loc_1404083AC:                          ; CODE XREF: sub_140407F40+4F4↓j
                cmp     rdi, rbp
                ja      short loc_14040841F
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+6]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_140408892
                rep movsb
                mov     rsi, r12
                sub     rdi, 6
                test    al, 40h
                jnz     short loc_140408439
                mov     dl, [rsi+7]
                mov     [rdi+6], dl
                test    al, 80h
                jnz     loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_14040841F:                          ; CODE XREF: sub_140407F40+46F↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     loc_1404083AC
; ---------------------------------------------------------------------------

loc_140408439:                          ; CODE XREF: sub_140407F40+8A↑j
                                        ; sub_140407F40+14B↑j ...
                add     rdi, 6

loc_14040843D:                          ; CODE XREF: sub_140407F40+577↓j
                cmp     rdi, rbp
                ja      short loc_1404084A2
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+7]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_14040893C
                rep movsb
                mov     rsi, r12
                sub     rdi, 7
                test    al, 80h
                jnz     short loc_1404084B9
                mov     dl, [rsi+8]
                mov     [rdi+7], dl
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_1404084A2:                          ; CODE XREF: sub_140407F40+500↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_14040843D
; ---------------------------------------------------------------------------

loc_1404084B9:                          ; CODE XREF: sub_140407F40+98↑j
                                        ; sub_140407F40+159↑j ...
                add     rdi, 7

loc_1404084BD:                          ; CODE XREF: sub_140407F40+5ED↓j
                cmp     rdi, rbp
                ja      short loc_140408518
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+8]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r11
                jnb     loc_1404089E6
                rep movsb
                mov     rsi, r12
                sub     rdi, 8
                add     rsi, 9
                add     rdi, 8
                jmp     loc_140407F65
; ---------------------------------------------------------------------------

loc_140408518:                          ; CODE XREF: sub_140407F40+580↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_1404084BD
; ---------------------------------------------------------------------------

loc_14040852F:                          ; CODE XREF: sub_140407F40+28↑j
                                        ; sub_140407F40+31↑j
                add     r9, 11h

loc_140408533:                          ; CODE XREF: sub_140407F40+B44↓j
                cmp     rsi, r9
                jz      loc_140408A90
                mov     al, [rsi]
                jmp     short loc_14040854A
; ---------------------------------------------------------------------------

loc_140408540:                          ; CODE XREF: sub_140407F40+F4↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_14040854A:                          ; CODE XREF: sub_140407F40+5FE↑j
                lea     rcx, [rsi+1]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 1
                jnz     short loc_14040857A
                mov     dl, [rsi+1]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_1404085F4
; ---------------------------------------------------------------------------

loc_14040857A:                          ; CODE XREF: sub_140407F40+62E↑j
                lea     rcx, [rsi+3]
                cmp     rcx, r9
                ja      loc_140408A89

loc_140408587:                          ; CODE XREF: sub_140407F40+6A8↓j
                cmp     rdi, rbp
                ja      short loc_1404085D3
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+1]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_1404085F4
; ---------------------------------------------------------------------------

loc_1404085D3:                          ; CODE XREF: sub_140407F40+64A↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_140408587
; ---------------------------------------------------------------------------

loc_1404085EA:                          ; CODE XREF: sub_140407F40+1D3↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_1404085F4:                          ; CODE XREF: sub_140407F40+638↑j
                                        ; sub_140407F40+691↑j
                lea     rcx, [rsi+2]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 2
                jnz     short loc_140408624
                mov     dl, [rsi+2]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_14040869E
; ---------------------------------------------------------------------------

loc_140408624:                          ; CODE XREF: sub_140407F40+6D8↑j
                lea     rcx, [rsi+4]
                cmp     rcx, r9
                ja      loc_140408A89

loc_140408631:                          ; CODE XREF: sub_140407F40+752↓j
                cmp     rdi, rbp
                ja      short loc_14040867D
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+2]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_14040869E
; ---------------------------------------------------------------------------

loc_14040867D:                          ; CODE XREF: sub_140407F40+6F4↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_140408631
; ---------------------------------------------------------------------------

loc_140408694:                          ; CODE XREF: sub_140407F40+2A0↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_14040869E:                          ; CODE XREF: sub_140407F40+6E2↑j
                                        ; sub_140407F40+73B↑j
                lea     rcx, [rsi+3]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 4
                jnz     short loc_1404086CE
                mov     dl, [rsi+3]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_140408748
; ---------------------------------------------------------------------------

loc_1404086CE:                          ; CODE XREF: sub_140407F40+782↑j
                lea     rcx, [rsi+5]
                cmp     rcx, r9
                ja      loc_140408A89

loc_1404086DB:                          ; CODE XREF: sub_140407F40+7FC↓j
                cmp     rdi, rbp
                ja      short loc_140408727
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+3]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_140408748
; ---------------------------------------------------------------------------

loc_140408727:                          ; CODE XREF: sub_140407F40+79E↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_1404086DB
; ---------------------------------------------------------------------------

loc_14040873E:                          ; CODE XREF: sub_140407F40+35F↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_140408748:                          ; CODE XREF: sub_140407F40+78C↑j
                                        ; sub_140407F40+7E5↑j
                lea     rcx, [rsi+4]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 8
                jnz     short loc_140408778
                mov     dl, [rsi+4]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_1404087F2
; ---------------------------------------------------------------------------

loc_140408778:                          ; CODE XREF: sub_140407F40+82C↑j
                lea     rcx, [rsi+6]
                cmp     rcx, r9
                ja      loc_140408A89

loc_140408785:                          ; CODE XREF: sub_140407F40+8A6↓j
                cmp     rdi, rbp
                ja      short loc_1404087D1
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+4]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_1404087F2
; ---------------------------------------------------------------------------

loc_1404087D1:                          ; CODE XREF: sub_140407F40+848↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_140408785
; ---------------------------------------------------------------------------

loc_1404087E8:                          ; CODE XREF: sub_140407F40+40C↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_1404087F2:                          ; CODE XREF: sub_140407F40+836↑j
                                        ; sub_140407F40+88F↑j
                lea     rcx, [rsi+5]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 10h
                jnz     short loc_140408822
                mov     dl, [rsi+5]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_14040889C
; ---------------------------------------------------------------------------

loc_140408822:                          ; CODE XREF: sub_140407F40+8D6↑j
                lea     rcx, [rsi+7]
                cmp     rcx, r9
                ja      loc_140408A89

loc_14040882F:                          ; CODE XREF: sub_140407F40+950↓j
                cmp     rdi, rbp
                ja      short loc_14040887B
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+5]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_14040889C
; ---------------------------------------------------------------------------

loc_14040887B:                          ; CODE XREF: sub_140407F40+8F2↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_14040882F
; ---------------------------------------------------------------------------

loc_140408892:                          ; CODE XREF: sub_140407F40+4AB↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_14040889C:                          ; CODE XREF: sub_140407F40+8E0↑j
                                        ; sub_140407F40+939↑j
                lea     rcx, [rsi+6]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 20h
                jnz     short loc_1404088CC
                mov     dl, [rsi+6]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_140408946
; ---------------------------------------------------------------------------

loc_1404088CC:                          ; CODE XREF: sub_140407F40+980↑j
                lea     rcx, [rsi+8]
                cmp     rcx, r9
                ja      loc_140408A89

loc_1404088D9:                          ; CODE XREF: sub_140407F40+9FA↓j
                cmp     rdi, rbp
                ja      short loc_140408925
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+6]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_140408946
; ---------------------------------------------------------------------------

loc_140408925:                          ; CODE XREF: sub_140407F40+99C↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_1404088D9
; ---------------------------------------------------------------------------

loc_14040893C:                          ; CODE XREF: sub_140407F40+53C↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_140408946:                          ; CODE XREF: sub_140407F40+98A↑j
                                        ; sub_140407F40+9E3↑j
                lea     rcx, [rsi+7]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      loc_140408A89
                test    al, 40h
                jnz     short loc_140408976
                mov     dl, [rsi+7]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_1404089F0
; ---------------------------------------------------------------------------

loc_140408976:                          ; CODE XREF: sub_140407F40+A2A↑j
                lea     rcx, [rsi+9]
                cmp     rcx, r9
                ja      loc_140408A89

loc_140408983:                          ; CODE XREF: sub_140407F40+AA4↓j
                cmp     rdi, rbp
                ja      short loc_1404089CF
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+7]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_1404089F0
; ---------------------------------------------------------------------------

loc_1404089CF:                          ; CODE XREF: sub_140407F40+A46↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_140408983
; ---------------------------------------------------------------------------

loc_1404089E6:                          ; CODE XREF: sub_140407F40+5BC↑j
                add     r9, 11h
                mov     rsi, r12
                dec     rsi

loc_1404089F0:                          ; CODE XREF: sub_140407F40+A34↑j
                                        ; sub_140407F40+A8D↑j
                lea     rcx, [rsi+8]
                cmp     rcx, r9
                jz      loc_140408A90
                ja      loc_140408A89
                cmp     rdi, r8
                jz      loc_140408A90
                ja      short loc_140408A89
                test    al, 80h
                jnz     short loc_140408A1C
                mov     dl, [rsi+8]
                mov     [rdi], dl
                inc     rdi
                jmp     short loc_140408A80
; ---------------------------------------------------------------------------

loc_140408A1C:                          ; CODE XREF: sub_140407F40+AD0↑j
                lea     rcx, [rsi+0Ah]
                cmp     rcx, r9
                ja      short loc_140408A89

loc_140408A25:                          ; CODE XREF: sub_140407F40+B3E↓j
                cmp     rdi, rbp
                ja      short loc_140408A69
                lea     rdx, [rsi+1]
                mov     r12, rdx
                xor     ecx, ecx
                mov     cx, [rsi+8]
                mov     esi, ecx
                lea     rdx, dword_14000E944
                and     ecx, [rdx+rbx*4]
                xchg    ebx, ecx
                shr     esi, cl
                xchg    ebx, ecx
                neg     rsi
                lea     rsi, [rsi+rdi-1]
                cmp     rsi, r10
                jb      short loc_140408A89
                add     ecx, 3
                lea     rdx, [rdi+rcx]
                cmp     rdx, r8
                ja      short loc_140408A89
                rep movsb
                mov     rsi, r12
                jmp     short loc_140408A80
; ---------------------------------------------------------------------------

loc_140408A69:                          ; CODE XREF: sub_140407F40+AE8↑j
                dec     ebx
                mov     rdx, r10
                lea     rcx, qword_14000E900
                mov     ecx, [rcx+rbx*4]
                add     rdx, rcx
                mov     rbp, rdx
                jmp     short loc_140408A25
; ---------------------------------------------------------------------------

loc_140408A80:                          ; CODE XREF: sub_140407F40+ADA↑j
                                        ; sub_140407F40+B27↑j
                add     rsi, 9
                jmp     loc_140408533
; ---------------------------------------------------------------------------

loc_140408A89:                          ; CODE XREF: sub_140407F40+E4↑j
                                        ; sub_140407F40+1C3↑j ...
                mov     eax, 0C0000242h
                jmp     short loc_140408A9F
; ---------------------------------------------------------------------------

loc_140408A90:                          ; CODE XREF: sub_140407F40+5F6↑j
                                        ; sub_140407F40+611↑j ...
                mov     rax, rdi
                sub     rax, r10
                mov     rdi, [rsp+28h+arg_20]
                mov     [rdi], eax
                xor     eax, eax

loc_140408A9F:                          ; CODE XREF: sub_140407F40+B4E↑j
                pop     rsi
                pop     rdi
                pop     rbx
                pop     rbp
                pop     r12
                retn
sub_140407F40   endp

; ---------------------------------------------------------------------------
algn_140408AA6:                         ; DATA XREF: .pdata:00000001400E38A4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140408AC0   proc near               ; CODE XREF: sub_140594964+2C↓p
                                        ; sub_1405949C0+19↓p
                                        ; DATA XREF: ...
                xor     eax, eax
                vmfunc
                retn
sub_140408AC0   endp

; ---------------------------------------------------------------------------
algn_140408AC6:                         ; DATA XREF: .pdata:00000001400E38B0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140408AD0   proc near               ; CODE XREF: sub_140594B14+11↓p
                                        ; DATA XREF: .pdata:00000001400E38BC↑o
                vmcall
                retn
sub_140408AD0   endp

; ---------------------------------------------------------------------------
algn_140408AD4:                         ; DATA XREF: .pdata:00000001400E38BC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140408AE0   proc near               ; CODE XREF: sub_140594B14:loc_140594B2C↓p
                                        ; DATA XREF: .pdata:00000001400E38C8↑o
                vmmcall
                retn
sub_140408AE0   endp

; ---------------------------------------------------------------------------
algn_140408AE4:                         ; DATA XREF: .pdata:00000001400E38C8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140408B00   proc near               ; CODE XREF: sub_140957A3C+12D↓p
                                        ; sub_140957A3C+167↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rcx
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                pushfq
                sub     rsp, 30h
                mov     [rsp+38h+var_10], rax
                mov     ecx, 2
                mov     rax, cr8
                mov     cr8, rcx
                xchg    rax, [rsp+38h+var_10]
                mov     rcx, gs:20h
                mov     rcx, [rcx+85C0h]
                call    RtlCaptureContext
                mov     rcx, gs:20h
                add     rcx, 100h
                call    sub_1403FDA80
                mov     rcx, gs:20h
                lea     r10, [rcx+100h]
                mov     rax, [rsp+38h+var_10]
                mov     [r10+0A0h], rax
                mov     r10, [rcx+85C0h]
                mov     rax, [rsp+38h+arg_0]
                mov     [r10+80h], rax
                mov     rax, [rsp+38h+var_8]
                mov     [r10+44h], rax
                lea     rax, [rsp+38h]
                mov     [r10+98h], rax
                lea     rax, sub_140408B00
                mov     [r10+0F8h], rax
                mov     rcx, [rsp+38h+var_10]
                mov     cr8, rcx
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                mov     r9, [rsp+38h+arg_18]
                mov     r8, [rsp+38h+arg_10]
                mov     rdx, [rsp+38h+arg_8]
                mov     rcx, [rsp+38h+arg_0]
                call    sub_1409B51C0
                add     rsp, 38h
                retn
sub_140408B00   endp

; ---------------------------------------------------------------------------
byte_140408BDD  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E38D4↑o
                align 10h
; Exported entry 2965. _setjmp
; [0000008D BYTES: COLLAPSED FUNCTION _setjmp. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_140408C7D  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E38E0↑o
                align 10h
; [00000005 BYTES: COLLAPSED FUNCTION j__setjmp. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_140408C95  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E38EC↑o
                align 10h
; Exported entry 2966. _setjmpex
; [0000008D BYTES: COLLAPSED FUNCTION _setjmpex. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_140408D3D  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E38F8↑o
                align 10h
; [00000010 BYTES: COLLAPSED FUNCTION _get_fpsr. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_140408D60  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E3904↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140408D70   proc near               ; CODE XREF: HvlInvokeFastExtendedHypercall+62↑p
                                        ; sub_140408DD0+12↓p
                                        ; DATA XREF: ...
                sub     rsp, 8
                add     r8, 0Fh
                shr     r8, 4
                cmp     r8, 1
                jle     short loc_140408DB1
                dec     r8
                shl     r8, 2
                lea     r9, loc_140408DB1
                sub     r9, r8
                jmp     r9
; ---------------------------------------------------------------------------
                db 3 dup(0CCh)
; ---------------------------------------------------------------------------
                movups  xmm5, xmmword ptr [rdx+60h]
                movups  xmm4, xmmword ptr [rdx+50h]
                movups  xmm3, xmmword ptr [rdx+40h]
                movups  xmm2, xmmword ptr [rdx+30h]
                movups  xmm1, xmmword ptr [rdx+20h]
                movups  xmm0, xmmword ptr [rdx+10h]

loc_140408DB1:                          ; CODE XREF: sub_140408D70+10↑j
                                        ; DATA XREF: sub_140408D70+19↑o
                mov     r8, [rdx+8]
                mov     rdx, [rdx]
                mov     rax, cs:off_140E01858
                call    rax ; sub_140365DB0
                nop     dword ptr [rax]
                add     rsp, 8
                retn
sub_140408D70   endp

; ---------------------------------------------------------------------------
algn_140408DC9:                         ; DATA XREF: .pdata:00000001400E3910↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140408DD0   proc near               ; CODE XREF: HvlInvokeFastExtendedHypercall+10D323↓p
                                        ; DATA XREF: .pdata:00000001400E391C↑o

arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                sub     rsp, 28h
                mov     [rsp+28h+arg_10], r8
                mov     [rsp+28h+arg_18], r9
                shl     r8, 4
                call    sub_140408D70
                test    ax, ax
                jnz     loc_140408EDC
                mov     r9, [rsp+28h+arg_18]
                mov     r10, [rsp+28h+arg_10]
                mov     r11, [rsp+28h+arg_20]
                and     r11, 0FFFFh
                test    r10, r10
                jnz     short loc_140408E23
                mov     [r9], rdx
                mov     [r9+8], r8
                add     r9, 10h
                dec     r11
                test    r11, r11
                jnz     short loc_140408E23
                jmp     loc_140408EDC
; ---------------------------------------------------------------------------

loc_140408E23:                          ; CODE XREF: sub_140408DD0+39↑j
                                        ; sub_140408DD0+4C↑j
                dec     r10
                mov     rcx, rax
                mov     r8, 6
                sub     r8, r10
                mov     r10, r8
                mov     rax, r10
                add     r10, 1
                mul     r10
                shr     rax, 1
                mov     r8, 1Bh
                sub     r8, rax
                sub     r8, r11
                shl     r8, 2
                mov     rax, rcx
                mov     rdx, r9
                sub     rdx, 10h
                lea     r9, loc_140408E70
                add     r9, r8
                jmp     r9
; ---------------------------------------------------------------------------
                align 10h

loc_140408E70:                          ; DATA XREF: sub_140408DD0+8E↑o
                movups  xmmword ptr [rdx+60h], xmm5
                movups  xmmword ptr [rdx+50h], xmm4
                movups  xmmword ptr [rdx+40h], xmm3
                movups  xmmword ptr [rdx+30h], xmm2
                movups  xmmword ptr [rdx+20h], xmm1
                movups  xmmword ptr [rdx+10h], xmm0
                jmp     short loc_140408EDC
; ---------------------------------------------------------------------------
                align 4
                movups  xmmword ptr [rdx+50h], xmm5
                movups  xmmword ptr [rdx+40h], xmm4
                movups  xmmword ptr [rdx+30h], xmm3
                movups  xmmword ptr [rdx+20h], xmm2
                movups  xmmword ptr [rdx+10h], xmm1
                jmp     short loc_140408EDC
; ---------------------------------------------------------------------------
                align 4
                movups  xmmword ptr [rdx+40h], xmm5
                movups  xmmword ptr [rdx+30h], xmm4
                movups  xmmword ptr [rdx+20h], xmm3
                movups  xmmword ptr [rdx+10h], xmm2
                jmp     short loc_140408EDC
; ---------------------------------------------------------------------------
                align 8
                movups  xmmword ptr [rdx+30h], xmm5
                movups  xmmword ptr [rdx+20h], xmm4
                movups  xmmword ptr [rdx+10h], xmm3
                jmp     short loc_140408EDC
; ---------------------------------------------------------------------------
                align 8
                movups  xmmword ptr [rdx+20h], xmm5
                movups  xmmword ptr [rdx+10h], xmm4
                jmp     short loc_140408EDC
; ---------------------------------------------------------------------------
                align 4
                movups  xmmword ptr [rdx+10h], xmm5
                jmp     short loc_140408EDC
; ---------------------------------------------------------------------------
                align 4

loc_140408EDC:                          ; CODE XREF: sub_140408DD0+1A↑j
                                        ; sub_140408DD0+4E↑j ...
                add     rsp, 28h
                retn
sub_140408DD0   endp

; ---------------------------------------------------------------------------
algn_140408EE1:                         ; DATA XREF: .pdata:00000001400E391C↑o
                align 20h
qword_140408F00 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B13EC↑o
                                        ; .pdata:00000001400E3928↑o
                dq 9880294970h, 0CA817FE283h, 0FFD3058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_140408F4B:                         ; DATA XREF: .pdata:00000001400E3928↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140408F60   proc near               ; CODE XREF: sub_140408F80+1D↓p
                                        ; sub_140409020+8↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_140408F6D
                call    sub_140409260

loc_140408F6D:                          ; CODE XREF: sub_140408F60+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_140408F60   endp

; ---------------------------------------------------------------------------
algn_140408F74:                         ; DATA XREF: .pdata:00000001400E3934↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140408F80   proc near               ; CODE XREF: sub_14035D190+12C40E↓p
                                        ; DATA XREF: .pdata:00000001400E3940↑o
; __unwind { // qword_140408F00
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_140408F60
                nop
                add     rsp, 28h
                retn
; } // starts at 140408F80
sub_140408F80   endp

; ---------------------------------------------------------------------------
algn_140408FA8:                         ; DATA XREF: .pdata:00000001400E3940↑o
                align 20h
qword_140408FC0 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B140C↑o
                                        ; .pdata:00000001400E394C↑o
                dq 9880294970h, 0CA817FE283h, 0FFD2058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040900B:                         ; DATA XREF: .pdata:00000001400E394C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409020   proc near               ; CODE XREF: sub_140409040+1D↓p
                                        ; sub_140409320+8↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_14040902D
                call    sub_140408F60

loc_14040902D:                          ; CODE XREF: sub_140409020+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_140409020   endp

; ---------------------------------------------------------------------------
algn_140409034:                         ; DATA XREF: .pdata:00000001400E3958↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409040   proc near               ; CODE XREF: sub_14032A2D0+92↑p
                                        ; DATA XREF: .pdata:00000001400E3964↑o
; __unwind { // qword_140408FC0
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_140409020
                nop
                add     rsp, 28h
                retn
; } // starts at 140409040
sub_140409040   endp

; ---------------------------------------------------------------------------
algn_140409068:                         ; DATA XREF: .pdata:00000001400E3964↑o
                align 20h
qword_140409080 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B142C↑o
                                        ; .pdata:00000001400E3970↑o
                dq 9880294970h, 0CA817FE283h, 0FFCF058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_1404090CB:                         ; DATA XREF: .pdata:00000001400E3970↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404090E0   proc near               ; CODE XREF: sub_140409100+1D↓p
                                        ; sub_140409620+8↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_1404090ED
                call    sub_1404091A0

loc_1404090ED:                          ; CODE XREF: sub_1404090E0+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_1404090E0   endp

; ---------------------------------------------------------------------------
algn_1404090F4:                         ; DATA XREF: .pdata:00000001400E397C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409100   proc near               ; CODE XREF: sub_140501240+C7↓p
                                        ; DATA XREF: .pdata:00000001400E3988↑o
; __unwind { // qword_140409080
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_1404090E0
                nop
                add     rsp, 28h
                retn
; } // starts at 140409100
sub_140409100   endp

; ---------------------------------------------------------------------------
algn_140409128:                         ; DATA XREF: .pdata:00000001400E3988↑o
                align 20h
qword_140409140 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B144C↑o
                                        ; .pdata:00000001400E3994↑o
                dq 9880294970h, 0CA817FE283h, 0FFD0058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040918B:                         ; DATA XREF: .pdata:00000001400E3994↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404091A0   proc near               ; CODE XREF: sub_1404090E0+8↑p
                                        ; sub_1404091C0+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_1404091AD
                call    sub_140409320

loc_1404091AD:                          ; CODE XREF: sub_1404091A0+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_1404091A0   endp

; ---------------------------------------------------------------------------
algn_1404091B4:                         ; DATA XREF: .pdata:00000001400E39A0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404091C0   proc near               ; CODE XREF: sub_14032A3A0+235↑p
                                        ; DATA XREF: .pdata:00000001400E39AC↑o
; __unwind { // qword_140409140
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_1404091A0
                nop
                add     rsp, 28h
                retn
; } // starts at 1404091C0
sub_1404091C0   endp

; ---------------------------------------------------------------------------
algn_1404091E8:                         ; DATA XREF: .pdata:00000001400E39AC↑o
                align 20h
qword_140409200 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B1874↑o
                                        ; .pdata:00000001400E39B8↑o
                dq 9880294970h, 0CA817FE283h, 0FFD4058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040924B:                         ; DATA XREF: .pdata:00000001400E39B8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409260   proc near               ; CODE XREF: sub_140408F60+8↑p
                                        ; sub_140409280+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_14040926D
                call    sub_1404093E0

loc_14040926D:                          ; CODE XREF: sub_140409260+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_140409260   endp

; ---------------------------------------------------------------------------
algn_140409274:                         ; DATA XREF: .pdata:00000001400E39C4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409280   proc near               ; CODE XREF: sub_14032A930+C0↑p
                                        ; DATA XREF: .pdata:00000001400E39D0↑o
; __unwind { // qword_140409200
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_140409260
                nop
                add     rsp, 28h
                retn
; } // starts at 140409280
sub_140409280   endp

; ---------------------------------------------------------------------------
algn_1404092A8:                         ; DATA XREF: .pdata:00000001400E39D0↑o
                align 20h
qword_1404092C0 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B1894↑o
                                        ; .pdata:00000001400E39DC↑o
                dq 9880294970h, 0CA817FE283h, 0FFD1058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040930B:                         ; DATA XREF: .pdata:00000001400E39DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409320   proc near               ; CODE XREF: sub_1404091A0+8↑p
                                        ; sub_140409340+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_14040932D
                call    sub_140409020

loc_14040932D:                          ; CODE XREF: sub_140409320+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_140409320   endp

; ---------------------------------------------------------------------------
algn_140409334:                         ; DATA XREF: .pdata:00000001400E39E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409340   proc near               ; CODE XREF: sub_1402010F0+9A↑p
                                        ; DATA XREF: .pdata:00000001400E39F4↑o
; __unwind { // qword_1404092C0
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_140409320
                nop
                add     rsp, 28h
                retn
; } // starts at 140409340
sub_140409340   endp

; ---------------------------------------------------------------------------
algn_140409368:                         ; DATA XREF: .pdata:00000001400E39F4↑o
                align 20h
qword_140409380 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B18B4↑o
                                        ; .pdata:00000001400E3A00↑o
                dq 9880294970h, 0CA817FE283h, 0FFD5058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_1404093CB:                         ; DATA XREF: .pdata:00000001400E3A00↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404093E0   proc near               ; CODE XREF: sub_140409260+8↑p
                                        ; sub_140409400+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_1404093ED
                call    sub_1404094A0

loc_1404093ED:                          ; CODE XREF: sub_1404093E0+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_1404093E0   endp

; ---------------------------------------------------------------------------
algn_1404093F4:                         ; DATA XREF: .pdata:00000001400E3A0C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409400   proc near               ; CODE XREF: sub_14032A810+9A↑p
                                        ; DATA XREF: .pdata:00000001400E3A18↑o
; __unwind { // qword_140409380
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_1404093E0
                nop
                add     rsp, 28h
                retn
; } // starts at 140409400
sub_140409400   endp

; ---------------------------------------------------------------------------
algn_140409428:                         ; DATA XREF: .pdata:00000001400E3A18↑o
                align 20h
qword_140409440 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B18D4↑o
                                        ; .pdata:00000001400E3A24↑o
                dq 9880294970h, 0CA817FE283h, 0FFD6058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040948B:                         ; DATA XREF: .pdata:00000001400E3A24↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404094A0   proc near               ; CODE XREF: sub_1404093E0+8↑p
                                        ; sub_1404094C0+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_1404094AD
                call    sub_140409560

loc_1404094AD:                          ; CODE XREF: sub_1404094A0+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_1404094A0   endp

; ---------------------------------------------------------------------------
algn_1404094B4:                         ; DATA XREF: .pdata:00000001400E3A30↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404094C0   proc near               ; CODE XREF: sub_140394BD0+9A↑p
                                        ; DATA XREF: .pdata:00000001400E3A3C↑o
; __unwind { // qword_140409440
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_1404094A0
                nop
                add     rsp, 28h
                retn
; } // starts at 1404094C0
sub_1404094C0   endp

; ---------------------------------------------------------------------------
algn_1404094E8:                         ; DATA XREF: .pdata:00000001400E3A3C↑o
                align 20h
qword_140409500 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B18F4↑o
                                        ; .pdata:00000001400E3A48↑o
                dq 9880294970h, 0CA817FE283h, 0FFD7058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040954B:                         ; DATA XREF: .pdata:00000001400E3A48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409560   proc near               ; CODE XREF: sub_1404094A0+8↑p
                                        ; sub_140409580+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_14040956D
                call    sub_140409620

loc_14040956D:                          ; CODE XREF: sub_140409560+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_140409560   endp

; ---------------------------------------------------------------------------
algn_140409574:                         ; DATA XREF: .pdata:00000001400E3A54↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409580   proc near               ; CODE XREF: sub_14032A6F0+96↑p
                                        ; DATA XREF: .pdata:00000001400E3A60↑o
; __unwind { // qword_140409500
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_140409560
                nop
                add     rsp, 28h
                retn
; } // starts at 140409580
sub_140409580   endp

; ---------------------------------------------------------------------------
algn_1404095A8:                         ; DATA XREF: .pdata:00000001400E3A60↑o
                align 20h
qword_1404095C0 dq 75000000660441F7h, 4828418948310F3Ch, 0E08305E8C1285131h
                                        ; DATA XREF: .rdata:00000001400B1914↑o
                                        ; .pdata:00000001400E3A6C↑o
                dq 9880294970h, 0CA817FE283h, 0FFCE058D481189C0h, 894910418948FFFFh
                dq 0A08349000000F880h, 1B80000000088h
                db 2 dup(0), 0C3h
algn_14040960B:                         ; DATA XREF: .pdata:00000001400E3A6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409620   proc near               ; CODE XREF: sub_140409560+8↑p
                                        ; sub_140409640+1D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                dec     ecx
                jz      short loc_14040962D
                call    sub_1404090E0

loc_14040962D:                          ; CODE XREF: sub_140409620+6↑j
                mov     eax, [rdx]
                add     rsp, 28h
                retn
sub_140409620   endp

; ---------------------------------------------------------------------------
algn_140409634:                         ; DATA XREF: .pdata:00000001400E3A78↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409640   proc near               ; CODE XREF: sub_140306830+163B58↓p
                                        ; sub_1405BF940+7C↓p
                                        ; DATA XREF: ...
; __unwind { // qword_1404095C0
                sub     rsp, 28h
                mov     rdx, rcx
                and     ecx, 3
                inc     ecx
                ror     rax, cl
                xor     r8, rax
                xor     r9, rax
                xor     r10, rax
                xor     r11, rax
                xor     eax, eax
                call    sub_140409620
                nop
                add     rsp, 28h
                retn
; } // starts at 140409640
sub_140409640   endp

; ---------------------------------------------------------------------------
algn_140409668:                         ; DATA XREF: .pdata:00000001400E3A84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409680   proc near               ; CODE XREF: sub_1403DB5D0+37A↑p
                                        ; sub_1405CC010+368↓p
                                        ; DATA XREF: ...

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     rsi, [rsp+arg_28]
                mov     rdi, [rsp+arg_20]
                mov     r10, [rsp+arg_30]
                xor     eax, eax

loc_140409691:                          ; CODE XREF: sub_140409680+1B↓j
                mov     [r10], rax
                sub     r10, 8
                cmp     r10, rsp
                jnb     short loc_140409691
                mov     [rsp+arg_20], rdi
                mov     ebx, eax
                mov     edi, eax
                mov     ebp, eax
                mov     r10, rax
                mov     r11, rax
                mov     r12, rax
                mov     r13, rax
                mov     r14, rax
                mov     r15, rax
                lfence
                jmp     rsi
sub_140409680   endp

; ---------------------------------------------------------------------------
byte_1404096BF  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E3A90↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404096D0   proc near               ; CODE XREF: sub_1405BFE50+1C↓p
                                        ; sub_1405BFE80+FC↓p
                                        ; DATA XREF: ...
                xor     eax, eax
                mov     ebx, eax
                mov     edi, eax
                mov     ebp, eax
                mov     r10, rax
                mov     r11, rax
                mov     r12, rax
                mov     r13, rax
                mov     r14, rax
                mov     r15, rax
                mov     [rsp+0], rax
                jmp     KeBugCheckEx
sub_1404096D0   endp

; ---------------------------------------------------------------------------
algn_1404096F3:                         ; DATA XREF: .pdata:00000001400E3A9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409700   proc near               ; DATA XREF: .rdata:00000001400C8360↑o
                                        ; .pdata:00000001400E3AA8↑o ...
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_140409700   endp

; ---------------------------------------------------------------------------
algn_14040970A:                         ; DATA XREF: .pdata:00000001400E3AA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409710   proc near               ; DATA XREF: .rdata:00000001400C8368↑o
                                        ; .pdata:00000001400E3AB4↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_140409710   endp

; ---------------------------------------------------------------------------
algn_14040971A:                         ; DATA XREF: .pdata:00000001400E3AB4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409720   proc near               ; DATA XREF: .rdata:00000001400C8370↑o
                                        ; .pdata:00000001400E3AC0↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_140409720   endp

; ---------------------------------------------------------------------------
algn_14040972A:                         ; DATA XREF: .pdata:00000001400E3AC0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409730   proc near               ; DATA XREF: .rdata:00000001400C8378↑o
                                        ; .pdata:00000001400E3ACC↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_140409730   endp

; ---------------------------------------------------------------------------
algn_14040973A:                         ; DATA XREF: .pdata:00000001400E3ACC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409740   proc near               ; DATA XREF: .rdata:00000001400C8380↑o
                                        ; .pdata:00000001400E3AD8↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_140409740   endp

; ---------------------------------------------------------------------------
algn_14040974A:                         ; DATA XREF: .pdata:00000001400E3AD8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409750   proc near               ; DATA XREF: .rdata:00000001400C8388↑o
                                        ; .pdata:00000001400E3AE4↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_140409750   endp

; ---------------------------------------------------------------------------
algn_14040975A:                         ; DATA XREF: .pdata:00000001400E3AE4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409760   proc near               ; DATA XREF: .rdata:00000001400C8390↑o
                                        ; .pdata:00000001400E3AF0↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_140409760   endp

; ---------------------------------------------------------------------------
algn_14040976A:                         ; DATA XREF: .pdata:00000001400E3AF0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409770   proc near               ; DATA XREF: .rdata:00000001400C8398↑o
                                        ; .pdata:00000001400E3AFC↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_140409770   endp

; ---------------------------------------------------------------------------
algn_14040977A:                         ; DATA XREF: .pdata:00000001400E3AFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409780   proc near               ; DATA XREF: .rdata:00000001400C83A0↑o
                                        ; .pdata:00000001400E3B08↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_140409780   endp

; ---------------------------------------------------------------------------
algn_14040978A:                         ; DATA XREF: .pdata:00000001400E3B08↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409790   proc near               ; DATA XREF: .rdata:00000001400C83A8↑o
                                        ; .pdata:00000001400E3B14↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_140409790   endp

; ---------------------------------------------------------------------------
algn_14040979A:                         ; DATA XREF: .pdata:00000001400E3B14↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404097A0   proc near               ; DATA XREF: .rdata:00000001400C83B0↑o
                                        ; .pdata:00000001400E3B20↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_1404097A0   endp

; ---------------------------------------------------------------------------
algn_1404097AA:                         ; DATA XREF: .pdata:00000001400E3B20↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404097B0   proc near               ; DATA XREF: .rdata:00000001400C83B8↑o
                                        ; .pdata:00000001400E3B2C↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_1404097B0   endp

; ---------------------------------------------------------------------------
algn_1404097BA:                         ; DATA XREF: .pdata:00000001400E3B2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404097C0   proc near               ; DATA XREF: .rdata:00000001400C83C0↑o
                                        ; .pdata:00000001400E3B38↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_1404097C0   endp

; ---------------------------------------------------------------------------
algn_1404097CA:                         ; DATA XREF: .pdata:00000001400E3B38↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404097D0   proc near               ; DATA XREF: .rdata:00000001400C83C8↑o
                                        ; .pdata:00000001400E3B44↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_1404097D0   endp

; ---------------------------------------------------------------------------
algn_1404097DA:                         ; DATA XREF: .pdata:00000001400E3B44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404097E0   proc near               ; DATA XREF: .rdata:00000001400C83D0↑o
                                        ; .pdata:00000001400E3B50↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1405BF940
sub_1404097E0   endp

; ---------------------------------------------------------------------------
algn_1404097EA:                         ; DATA XREF: .pdata:00000001400E3B50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404097F0   proc near               ; DATA XREF: .rdata:00000001400C83D8↑o
                                        ; .pdata:00000001400E3B5C↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1405BF940
sub_1404097F0   endp

; ---------------------------------------------------------------------------
algn_1404097FA:                         ; DATA XREF: .pdata:00000001400E3B5C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409800   proc near               ; DATA XREF: .rdata:00000001400C83E0↑o
                                        ; .pdata:00000001400E3B68↑o ...
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_140409800   endp

; ---------------------------------------------------------------------------
algn_14040980A:                         ; DATA XREF: .pdata:00000001400E3B68↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409810   proc near               ; DATA XREF: .rdata:00000001400C83E8↑o
                                        ; .pdata:00000001400E3B74↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_140409810   endp

; ---------------------------------------------------------------------------
algn_14040981A:                         ; DATA XREF: .pdata:00000001400E3B74↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409820   proc near               ; DATA XREF: .rdata:00000001400C83F0↑o
                                        ; .pdata:00000001400E3B80↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_140409820   endp

; ---------------------------------------------------------------------------
algn_14040982A:                         ; DATA XREF: .pdata:00000001400E3B80↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409830   proc near               ; DATA XREF: .rdata:00000001400C83F8↑o
                                        ; .pdata:00000001400E3B8C↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_140409830   endp

; ---------------------------------------------------------------------------
algn_14040983A:                         ; DATA XREF: .pdata:00000001400E3B8C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409840   proc near               ; DATA XREF: .rdata:00000001400C8400↑o
                                        ; .pdata:00000001400E3B98↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_140409840   endp

; ---------------------------------------------------------------------------
algn_14040984A:                         ; DATA XREF: .pdata:00000001400E3B98↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409850   proc near               ; DATA XREF: .rdata:00000001400C8408↑o
                                        ; .pdata:00000001400E3BA4↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_140409850   endp

; ---------------------------------------------------------------------------
algn_14040985A:                         ; DATA XREF: .pdata:00000001400E3BA4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409860   proc near               ; DATA XREF: .rdata:00000001400C8410↑o
                                        ; .pdata:00000001400E3BB0↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_140409860   endp

; ---------------------------------------------------------------------------
algn_14040986A:                         ; DATA XREF: .pdata:00000001400E3BB0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409870   proc near               ; DATA XREF: .rdata:00000001400C8418↑o
                                        ; .pdata:00000001400E3BBC↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_140409870   endp

; ---------------------------------------------------------------------------
algn_14040987A:                         ; DATA XREF: .pdata:00000001400E3BBC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140409880   proc near               ; DATA XREF: .rdata:00000001400C8420↑o
                                        ; .pdata:00000001400E3BC8↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_140409880   endp

; ---------------------------------------------------------------------------
algn_14040988A:                         ; DATA XREF: .pdata:00000001400E3BC8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140409890   proc near               ; DATA XREF: .rdata:00000001400C8428↑o
                                        ; .pdata:00000001400E3BD4↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_140409890   endp

; ---------------------------------------------------------------------------
algn_14040989A:                         ; DATA XREF: .pdata:00000001400E3BD4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404098A0   proc near               ; DATA XREF: .rdata:00000001400C8430↑o
                                        ; .pdata:00000001400E3BE0↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_1404098A0   endp

; ---------------------------------------------------------------------------
algn_1404098AA:                         ; DATA XREF: .pdata:00000001400E3BE0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404098B0   proc near               ; DATA XREF: .rdata:00000001400C8438↑o
                                        ; .pdata:00000001400E3BEC↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_1404098B0   endp

; ---------------------------------------------------------------------------
algn_1404098BA:                         ; DATA XREF: .pdata:00000001400E3BEC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404098C0   proc near               ; DATA XREF: .rdata:00000001400C8440↑o
                                        ; .pdata:00000001400E3BF8↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_1404098C0   endp

; ---------------------------------------------------------------------------
algn_1404098CA:                         ; DATA XREF: .pdata:00000001400E3BF8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404098D0   proc near               ; DATA XREF: .rdata:00000001400C8448↑o
                                        ; .pdata:00000001400E3C04↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_1404098D0   endp

; ---------------------------------------------------------------------------
algn_1404098DA:                         ; DATA XREF: .pdata:00000001400E3C04↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404098E0   proc near               ; DATA XREF: .rdata:00000001400C8450↑o
                                        ; .pdata:00000001400E3C10↑o
                xor     eax, eax
                nop
                nop
                nop
                jmp     sub_1403DB980
sub_1404098E0   endp

; ---------------------------------------------------------------------------
algn_1404098EA:                         ; DATA XREF: .pdata:00000001400E3C10↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404098F0   proc near               ; DATA XREF: .rdata:00000001400C8458↑o
                                        ; .pdata:00000001400E3C1C↑o
                xor     eax, eax
                mov     dr7, rax
                jmp     sub_1403DB980
sub_1404098F0   endp

; ---------------------------------------------------------------------------
algn_1404098FA:                         ; DATA XREF: .pdata:00000001400E3C1C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_140409900   proc near               ; CODE XREF: sub_140A16100+69↓j
                                        ; sub_140A16100+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040996A
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_140409953
                lfence
                jmp     loc_140409BA9
; ---------------------------------------------------------------------------

loc_140409953:                          ; CODE XREF: sub_140409900+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_140409BA9
; ---------------------------------------------------------------------------

loc_14040996A:                          ; CODE XREF: sub_140409900+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_140409976
                swapgs

loc_140409976:                          ; CODE XREF: sub_140409900+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_1404099E6
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1404099E6:                          ; CODE XREF: sub_140409900+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_140409A0E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_140409A0E:                          ; CODE XREF: sub_140409900+F5↑j
                test    edx, 2
                jz      loc_140409B3F
                call    loc_140409B2D

loc_140409A1F:                          ; CODE XREF: sub_140409900+12C↓p
                add     rsp, 8
                call    loc_140409B36

loc_140409A28:                          ; CODE XREF: sub_140409900+135↓p
                add     rsp, 8
                call    loc_140409A1F

loc_140409A31:                          ; CODE XREF: sub_140409900+13E↓p
                add     rsp, 8
                call    loc_140409A28

loc_140409A3A:                          ; CODE XREF: sub_140409900+147↓p
                add     rsp, 8
                call    loc_140409A31

loc_140409A43:                          ; CODE XREF: sub_140409900+150↓p
                add     rsp, 8
                call    loc_140409A3A

loc_140409A4C:                          ; CODE XREF: sub_140409900+159↓p
                add     rsp, 8
                call    loc_140409A43

loc_140409A55:                          ; CODE XREF: sub_140409900+162↓p
                add     rsp, 8
                call    loc_140409A4C

loc_140409A5E:                          ; CODE XREF: sub_140409900+16B↓p
                add     rsp, 8
                call    loc_140409A55

loc_140409A67:                          ; CODE XREF: sub_140409900+174↓p
                add     rsp, 8
                call    loc_140409A5E

loc_140409A70:                          ; CODE XREF: sub_140409900+17D↓p
                add     rsp, 8
                call    loc_140409A67

loc_140409A79:                          ; CODE XREF: sub_140409900+186↓p
                add     rsp, 8
                call    loc_140409A70

loc_140409A82:                          ; CODE XREF: sub_140409900+18F↓p
                add     rsp, 8
                call    loc_140409A79

loc_140409A8B:                          ; CODE XREF: sub_140409900+198↓p
                add     rsp, 8
                call    loc_140409A82

loc_140409A94:                          ; CODE XREF: sub_140409900+1A1↓p
                add     rsp, 8
                call    loc_140409A8B

loc_140409A9D:                          ; CODE XREF: sub_140409900+1AA↓p
                add     rsp, 8
                call    loc_140409A94

loc_140409AA6:                          ; CODE XREF: sub_140409900+1B3↓p
                add     rsp, 8
                call    loc_140409A9D

loc_140409AAF:                          ; CODE XREF: sub_140409900+1BC↓p
                add     rsp, 8
                call    loc_140409AA6

loc_140409AB8:                          ; CODE XREF: sub_140409900+1C5↓p
                add     rsp, 8
                call    loc_140409AAF

loc_140409AC1:                          ; CODE XREF: sub_140409900+1CE↓p
                add     rsp, 8
                call    loc_140409AB8

loc_140409ACA:                          ; CODE XREF: sub_140409900+1D7↓p
                add     rsp, 8
                call    loc_140409AC1

loc_140409AD3:                          ; CODE XREF: sub_140409900+1E0↓p
                add     rsp, 8
                call    loc_140409ACA

loc_140409ADC:                          ; CODE XREF: sub_140409900+1E9↓p
                add     rsp, 8
                call    loc_140409AD3

loc_140409AE5:                          ; CODE XREF: sub_140409900+1F2↓p
                add     rsp, 8
                call    loc_140409ADC

loc_140409AEE:                          ; CODE XREF: sub_140409900+1FB↓p
                add     rsp, 8
                call    loc_140409AE5

loc_140409AF7:                          ; CODE XREF: sub_140409900+204↓p
                add     rsp, 8
                call    loc_140409AEE

loc_140409B00:                          ; CODE XREF: sub_140409900+20D↓p
                add     rsp, 8
                call    loc_140409AF7

loc_140409B09:                          ; CODE XREF: sub_140409900+216↓p
                add     rsp, 8
                call    loc_140409B00

loc_140409B12:                          ; CODE XREF: sub_140409900+21F↓p
                add     rsp, 8
                call    loc_140409B09

loc_140409B1B:                          ; CODE XREF: sub_140409900+228↓p
                add     rsp, 8
                call    loc_140409B12

loc_140409B24:                          ; CODE XREF: sub_140409900+231↓p
                add     rsp, 8
                call    loc_140409B1B

loc_140409B2D:                          ; CODE XREF: sub_140409900+11A↑p
                add     rsp, 8
                call    loc_140409B24

loc_140409B36:                          ; CODE XREF: sub_140409900+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140409B3F:                          ; CODE XREF: sub_140409900+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_140409B94
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_140409B94
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_140409B94:                          ; CODE XREF: sub_140409900+250↑j
                                        ; sub_140409900+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_140409BA9
                call    sub_1403FDC80

loc_140409BA9:                          ; CODE XREF: sub_140409900+4E↑j
                                        ; sub_140409900+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_140409BE4
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_140409BE4
                stac

loc_140409BE4:                          ; CODE XREF: sub_140409900+2D6↑j
                                        ; sub_140409900+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_140409BF1
                sti

loc_140409BF1:                          ; CODE XREF: sub_140409900+2EE↑j
                mov     ecx, 10000003h
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop
                retn
sub_140409900   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_140409C06:                         ; DATA XREF: .pdata:00000001400E3C28↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: fuzzy-sp

sub_140409C40   proc near               ; CODE XREF: sub_140A16180+7F↓j
                                        ; DATA XREF: .pdata:00000001400E3C34↑o ...

arg_0           = byte ptr  8
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

                push    rcx
                push    rax
                push    rdx
                test    [rsp+18h+arg_0], 1
                jnz     short loc_140409C67
                lea     rax, unk_140E01900
                mov     ecx, 8

loc_140409C57:                          ; CODE XREF: sub_140409C40+23↓j
                mov     rdx, [rax+rcx*8-8]
                cmp     [rsp+18h], rdx
                jz      short loc_140409CC2
                loop    loc_140409C57
                test    ecx, ecx

loc_140409C67:                          ; CODE XREF: sub_140409C40+9↑j
                lea     rcx, [rsp+18h+arg_20]
                jz      short loc_140409C99
                test    cs:byte_140E01840, 1
                jnz     short loc_140409C8B
                swapgs
                lfence
                mov     rsp, gs:1A8h
                swapgs
                jmp     short loc_140409CA5
; ---------------------------------------------------------------------------

loc_140409C8B:                          ; CODE XREF: sub_140409C40+35↑j
                lfence
                mov     rsp, gs:9008h
                jmp     short loc_140409CA5
; ---------------------------------------------------------------------------

loc_140409C99:                          ; CODE XREF: sub_140409C40+2C↑j
                lfence
                mov     rsp, [rsp+18h+arg_10]
                and     rsp, 0FFFFFFFFFFFFFFF0h

loc_140409CA5:                          ; CODE XREF: sub_140409C40+49↑j
                                        ; sub_140409C40+57↑j
                push    qword ptr [rcx-8]
                push    qword ptr [rcx-10h]
                push    qword ptr [rcx-18h]
                push    qword ptr [rcx-20h]
                push    qword ptr [rcx-28h]
                mov     rdx, [rcx-40h]
                mov     rax, [rcx-38h]
                mov     rcx, [rcx-30h]
                jmp     short sub_140409D00
; ---------------------------------------------------------------------------

loc_140409CC2:                          ; CODE XREF: sub_140409C40+21↑j
                test    cs:dword_140C31428, 2
                jz      short loc_140409CDA
                mov     ecx, 1D9h
                rdmsr
                or      eax, 1
                wrmsr

loc_140409CDA:                          ; CODE XREF: sub_140409C40+8C↑j
                pop     rdx
                pop     rax
                pop     rcx
                test    cs:byte_140E01840, 1
                jnz     sub_140A17C40
                iretq
; ---------------------------------------------------------------------------
                retn
sub_140409C40   endp

; ---------------------------------------------------------------------------
algn_140409CED:                         ; DATA XREF: .pdata:00000001400E3C34↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_140409D00   proc near               ; CODE XREF: sub_140409C40+80↑j
                                        ; DATA XREF: .pdata:00000001400E3C40↑o

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_140409D6A
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_140409D53
                lfence
                jmp     loc_140409FA9
; ---------------------------------------------------------------------------

loc_140409D53:                          ; CODE XREF: sub_140409D00+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_140409FA9
; ---------------------------------------------------------------------------

loc_140409D6A:                          ; CODE XREF: sub_140409D00+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_140409D76
                swapgs

loc_140409D76:                          ; CODE XREF: sub_140409D00+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_140409DE6
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_140409DE6:                          ; CODE XREF: sub_140409D00+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_140409E0E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_140409E0E:                          ; CODE XREF: sub_140409D00+F5↑j
                test    edx, 2
                jz      loc_140409F3F
                call    loc_140409F2D

loc_140409E1F:                          ; CODE XREF: sub_140409D00+12C↓p
                add     rsp, 8
                call    loc_140409F36

loc_140409E28:                          ; CODE XREF: sub_140409D00+135↓p
                add     rsp, 8
                call    loc_140409E1F

loc_140409E31:                          ; CODE XREF: sub_140409D00+13E↓p
                add     rsp, 8
                call    loc_140409E28

loc_140409E3A:                          ; CODE XREF: sub_140409D00+147↓p
                add     rsp, 8
                call    loc_140409E31

loc_140409E43:                          ; CODE XREF: sub_140409D00+150↓p
                add     rsp, 8
                call    loc_140409E3A

loc_140409E4C:                          ; CODE XREF: sub_140409D00+159↓p
                add     rsp, 8
                call    loc_140409E43

loc_140409E55:                          ; CODE XREF: sub_140409D00+162↓p
                add     rsp, 8
                call    loc_140409E4C

loc_140409E5E:                          ; CODE XREF: sub_140409D00+16B↓p
                add     rsp, 8
                call    loc_140409E55

loc_140409E67:                          ; CODE XREF: sub_140409D00+174↓p
                add     rsp, 8
                call    loc_140409E5E

loc_140409E70:                          ; CODE XREF: sub_140409D00+17D↓p
                add     rsp, 8
                call    loc_140409E67

loc_140409E79:                          ; CODE XREF: sub_140409D00+186↓p
                add     rsp, 8
                call    loc_140409E70

loc_140409E82:                          ; CODE XREF: sub_140409D00+18F↓p
                add     rsp, 8
                call    loc_140409E79

loc_140409E8B:                          ; CODE XREF: sub_140409D00+198↓p
                add     rsp, 8
                call    loc_140409E82

loc_140409E94:                          ; CODE XREF: sub_140409D00+1A1↓p
                add     rsp, 8
                call    loc_140409E8B

loc_140409E9D:                          ; CODE XREF: sub_140409D00+1AA↓p
                add     rsp, 8
                call    loc_140409E94

loc_140409EA6:                          ; CODE XREF: sub_140409D00+1B3↓p
                add     rsp, 8
                call    loc_140409E9D

loc_140409EAF:                          ; CODE XREF: sub_140409D00+1BC↓p
                add     rsp, 8
                call    loc_140409EA6

loc_140409EB8:                          ; CODE XREF: sub_140409D00+1C5↓p
                add     rsp, 8
                call    loc_140409EAF

loc_140409EC1:                          ; CODE XREF: sub_140409D00+1CE↓p
                add     rsp, 8
                call    loc_140409EB8

loc_140409ECA:                          ; CODE XREF: sub_140409D00+1D7↓p
                add     rsp, 8
                call    loc_140409EC1

loc_140409ED3:                          ; CODE XREF: sub_140409D00+1E0↓p
                add     rsp, 8
                call    loc_140409ECA

loc_140409EDC:                          ; CODE XREF: sub_140409D00+1E9↓p
                add     rsp, 8
                call    loc_140409ED3

loc_140409EE5:                          ; CODE XREF: sub_140409D00+1F2↓p
                add     rsp, 8
                call    loc_140409EDC

loc_140409EEE:                          ; CODE XREF: sub_140409D00+1FB↓p
                add     rsp, 8
                call    loc_140409EE5

loc_140409EF7:                          ; CODE XREF: sub_140409D00+204↓p
                add     rsp, 8
                call    loc_140409EEE

loc_140409F00:                          ; CODE XREF: sub_140409D00+20D↓p
                add     rsp, 8
                call    loc_140409EF7

loc_140409F09:                          ; CODE XREF: sub_140409D00+216↓p
                add     rsp, 8
                call    loc_140409F00

loc_140409F12:                          ; CODE XREF: sub_140409D00+21F↓p
                add     rsp, 8
                call    loc_140409F09

loc_140409F1B:                          ; CODE XREF: sub_140409D00+228↓p
                add     rsp, 8
                call    loc_140409F12

loc_140409F24:                          ; CODE XREF: sub_140409D00+231↓p
                add     rsp, 8
                call    loc_140409F1B

loc_140409F2D:                          ; CODE XREF: sub_140409D00+11A↑p
                add     rsp, 8
                call    loc_140409F24

loc_140409F36:                          ; CODE XREF: sub_140409D00+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140409F3F:                          ; CODE XREF: sub_140409D00+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_140409F94
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_140409F94
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_140409F94:                          ; CODE XREF: sub_140409D00+250↑j
                                        ; sub_140409D00+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_140409FA9
                call    sub_1403FDC80

loc_140409FA9:                          ; CODE XREF: sub_140409D00+4E↑j
                                        ; sub_140409D00+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_140409FE4
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_140409FE4
                stac

loc_140409FE4:                          ; CODE XREF: sub_140409D00+2D6↑j
                                        ; sub_140409D00+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_140409FF1
                sti

loc_140409FF1:                          ; CODE XREF: sub_140409D00+2EE↑j
                test    cs:dword_140C31428, 2
                jz      short loc_14040A010
                mov     ecx, 1D9h
                rdmsr
                or      eax, 1
                wrmsr
                xor     edx, edx
                jmp     loc_14040A0DF
; ---------------------------------------------------------------------------

loc_14040A010:                          ; CODE XREF: sub_140409D00+2FB↑j
                xor     edx, edx
                test    [rbp+0E8h+arg_8], 100h
                jz      loc_14040A0DF
                test    byte ptr gs:8722h, 2
                jz      loc_14040A0DF
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040A091
                mov     rax, dr7
                test    ax, 200h
                jz      loc_14040A0DF
                test    ax, 100h
                jz      loc_14040A0DF
                mov     r8d, cs:dword_140CFC91C
                or      r8d, r8d
                jz      short loc_14040A065
                mov     ecx, r8d
                rdmsr
                mov     r8d, eax

loc_14040A065:                          ; CODE XREF: sub_140409D00+35B↑j
                mov     ecx, cs:dword_140CFC61C
                add     ecx, r8d
                rdmsr
                mov     r9d, eax
                shl     rdx, 20h
                mov     ecx, cs:dword_140CFC658
                or      r9, rdx
                add     ecx, r8d
                rdmsr
                mov     r10d, eax
                shl     rdx, 20h
                or      r10, rdx
                jmp     short loc_14040A0DA
; ---------------------------------------------------------------------------

loc_14040A091:                          ; CODE XREF: sub_140409D00+338↑j
                test    [rbp+0E8h+var_68], 200h
                jz      short loc_14040A0DF
                test    [rbp+0E8h+var_68], 100h
                jz      short loc_14040A0DF
                and     [rbp+0E8h+var_40], 0
                and     [rbp+0E8h+var_48], 0
                mov     rcx, cs:MmUserProbeAddress
                mov     r9, [rbp+0E8h+var_50]
                cmp     r9, rcx
                cmovnb  r9, rcx
                mov     r10, [rbp+0E8h+var_58]
                cmp     r10, rcx
                cmovnb  r10, rcx

loc_14040A0DA:                          ; CODE XREF: sub_140409D00+38F↑j
                mov     edx, 2

loc_14040A0DF:                          ; CODE XREF: sub_140409D00+30B↑j
                                        ; sub_140409D00+31C↑j ...
                mov     ecx, 80000004h
                and     [rbp+0E8h+arg_8], 0FFFFFEFFh
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop
                retn
sub_140409D00   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040A0FC:                         ; DATA XREF: .pdata:00000001400E3C40↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040A100   proc near               ; CODE XREF: sub_140A16240+70↓j
                                        ; DATA XREF: .rdata:0000000140009268↑o ...

var_168         = byte ptr -168h
var_140         = byte ptr -140h
var_13F         = byte ptr -13Fh
var_13E         = byte ptr -13Eh
var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_68          = word ptr -68h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = byte ptr  8

                sub     rsp, 8
                push    rbp
                push    rsi
                sub     rsp, 150h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 0
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     loc_14040A1D9
                mov     ecx, 0C0000101h
                rdmsr
                mov     [rbp+0E8h+var_100], eax
                mov     [rbp+0E8h+var_FC], edx
                mov     eax, 50h ; 'P'
                lsl     eax, eax
                jz      short loc_14040A18E
                mov     rax, 0FFFFF78000000000h
                test    byte ptr [rax+294h], 0FFh
                jnz     short loc_14040A17D
                sgdt    fword ptr [rbp+0E8h+var_F8]
                mov     rdx, qword ptr [rbp+0E8h+var_F8+2]
                mov     rdx, [rdx-1F40h]
                jmp     short loc_14040A1BE
; ---------------------------------------------------------------------------

loc_14040A17D:                          ; CODE XREF: sub_14040A100+6A↑j
                rdtscp
                movzx   eax, cl
                shr     ecx, 8
                shl     ecx, 6
                mov     r8d, ecx
                jmp     short loc_14040A19F
; ---------------------------------------------------------------------------

loc_14040A18E:                          ; CODE XREF: sub_14040A100+57↑j
                mov     r8d, eax
                and     r8d, 3FFh
                shl     r8d, 6
                shr     eax, 0Eh

loc_14040A19F:                          ; CODE XREF: sub_14040A100+8C↑j
                lea     rcx, qword_140CFDCC0
                lea     rdx, dword_140D024D0
                or      eax, r8d
                mov     eax, [rdx+rax*4]
                mov     rdx, [rcx+rax*8]
                sub     rdx, 180h

loc_14040A1BE:                          ; CODE XREF: sub_14040A100+7B↑j
                mov     eax, edx
                shr     rdx, 20h
                mov     ecx, 0C0000101h
                wrmsr
                mov     rax, cr2
                mov     [rbp+0E8h+var_98], rax
                call    sub_140402180
                jmp     short loc_14040A20B
; ---------------------------------------------------------------------------

loc_14040A1D9:                          ; CODE XREF: sub_14040A100+3C↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040A1E5
                swapgs

loc_14040A1E5:                          ; CODE XREF: sub_14040A100+E0↑j
                lfence
                mov     r10, gs:188h
                call    sub_140402180
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040A20B
                call    sub_1403FDC80

loc_14040A20B:                          ; CODE XREF: sub_14040A100+D7↑j
                                        ; sub_14040A100+104↑j
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                cmp     byte ptr gs:801Ah, 0
                jz      short loc_14040A241
                call    sub_140519B80

loc_14040A241:                          ; CODE XREF: sub_14040A100+13A↑j
                lea     rax, loc_140406D57
                cmp     rax, [rbp+0E8h]
                jnb     short loc_14040A26A
                lea     rax, loc_140406D70
                cmp     rax, [rbp+0E8h]
                jb      short loc_14040A26A
                lea     rcx, [rbp+0E8h+var_168]
                call    sub_1402CB270

loc_14040A26A:                          ; CODE XREF: sub_14040A100+14F↑j
                                        ; sub_14040A100+15F↑j
                xor     esi, esi
                inc     dword ptr gs:8000h
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040A280
                clac

loc_14040A280:                          ; CODE XREF: sub_14040A100+17B↑j
                mov     ecx, 0Fh
                cmp     cs:dword_140CFC660, 0
                jz      short loc_14040A295
                call    sub_140512DA0
                jmp     short loc_14040A29D
; ---------------------------------------------------------------------------

loc_14040A295:                          ; CODE XREF: sub_14040A100+18C↑j
                mov     rax, cr8
                mov     cr8, rcx

loc_14040A29D:                          ; CODE XREF: sub_14040A100+193↑j
                mov     [rbp+0E8h+var_13F], al
                lea     rcx, [rbp+0E8h+var_168]
                mov     dl, 1
                call    sub_1405268B0
                bts     word ptr gs:7D66h, 0
                jb      loc_14040A498
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040A2E9
                lea     rax, sub_14040A100
                cmp     rax, [rbp+0E8h]
                ja      short loc_14040A2E9
                lea     rax, loc_14040A498
                cmp     rax, [rbp+0E8h]
                ja      loc_14040A498

loc_14040A2E9:                          ; CODE XREF: sub_14040A100+1C3↑j
                                        ; sub_14040A100+1D3↑j
                lea     rax, sub_140A16240
                cmp     rax, [rbp+0E8h]
                ja      short loc_14040A30D
                lea     rax, locret_140A162B5
                cmp     rax, [rbp+0E8h]
                ja      loc_14040A498

loc_14040A30D:                          ; CODE XREF: sub_14040A100+1F7↑j
                call    sub_14040A4C0
                and     byte ptr gs:7D66h, 0
                movzx   ecx, [rbp+0E8h+var_13F]
                cmp     cs:dword_140CFC660, 0
                jz      short loc_14040A32F
                call    sub_140512DA0
                jmp     short loc_14040A333
; ---------------------------------------------------------------------------

loc_14040A32F:                          ; CODE XREF: sub_14040A100+226↑j
                mov     cr8, rcx

loc_14040A333:                          ; CODE XREF: sub_14040A100+22D↑j
                mov     rsi, [rbp+0E8h+var_18]
                test    [rbp+0E8h+arg_0], 1
                jz      loc_14040A407
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040A353
                stac

loc_14040A353:                          ; CODE XREF: sub_14040A100+24E↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040A378
                test    byte ptr [rcx+2], 1
                jz      short loc_14040A378
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040A378:                          ; CODE XREF: sub_14040A100+262↑j
                                        ; sub_14040A100+268↑j
                ldmxcsr [rbp+0E8h+var_13C]
                cmp     [rbp+0E8h+var_68], 0
                jz      short loc_14040A38B
                call    sub_1403FDC00

loc_14040A38B:                          ; CODE XREF: sub_14040A100+284↑j
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                movzx   eax, [rbp+0E8h+var_140]
                mov     gs:853h, al
                cmp     byte ptr gs:27Bh, 0
                jz      short loc_14040A3D7
                movzx   eax, [rbp+0E8h+var_13E]
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040A3D7:                          ; CODE XREF: sub_14040A100+2C8↑j
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040A402
                jmp     sub_140A17C40
; ---------------------------------------------------------------------------

loc_14040A402:                          ; CODE XREF: sub_14040A100+2FB↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040A407:                          ; CODE XREF: sub_14040A100+241↑j
                ldmxcsr [rbp+0E8h+var_13C]
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                movzx   eax, [rbp+0E8h+var_140]
                mov     gs:853h, al
                cmp     byte ptr gs:27Bh, 0
                jz      short loc_14040A447
                movzx   eax, [rbp+0E8h+var_13E]
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040A447:                          ; CODE XREF: sub_14040A100+338↑j
                mov     eax, [rbp+0E8h+var_100]
                mov     edx, [rbp+0E8h+var_FC]
                mov     ecx, 0C0000101h
                wrmsr
                mov     rax, [rbp+0E8h+var_98]
                mov     cr2, rax
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short locret_14040A496
                jmp     sub_140A17C40
; ---------------------------------------------------------------------------

locret_14040A496:                       ; CODE XREF: sub_14040A100+38F↑j
                iretq
; ---------------------------------------------------------------------------

loc_14040A498:                          ; CODE XREF: sub_14040A100+1B6↑j
                                        ; sub_14040A100+1E3↑j ...
                xor     r10, r10
                xor     r9, r9
                xor     r8, r8
                xor     edx, edx
                mov     ecx, 111h
                call    sub_1404116C0
                nop
                retn
sub_14040A100   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040A4AF:                         ; DATA XREF: .pdata:00000001400E3C4C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14040A4C0   proc near               ; CODE XREF: sub_14040A100:loc_14040A30D↑p
                                        ; DATA XREF: .rdata:0000000140009270↑o ...

var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_38          = byte ptr -38h

                sub     rsp, 138h
                lea     rax, [rsp+138h+var_38]
                movaps  [rsp+138h+var_108], xmm6
                movaps  [rsp+138h+var_F8], xmm7
                movaps  [rsp+138h+var_E8], xmm8
                movaps  [rsp+138h+var_D8], xmm9
                movaps  [rsp+138h+var_C8], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                cmp     dword ptr gs:2F08h, 5
                jz      short loc_14040A536
                lea     rcx, [rbp-80h]
                mov     rdx, rsp
                call    sub_140525600

loc_14040A536:                          ; CODE XREF: sub_14040A4C0+68↑j
                lea     rcx, [rbp-80h]
                mov     rdx, rsp
                call    sub_140512BD0
                lea     rcx, [rsp+138h+var_38]
                movaps  xmm6, [rsp+138h+var_108]
                movaps  xmm7, [rsp+138h+var_F8]
                movaps  xmm8, [rsp+138h+var_E8]
                movaps  xmm9, [rsp+138h+var_D8]
                movaps  xmm10, [rsp+138h+var_C8]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                add     rsp, 138h
                retn
sub_14040A4C0   endp

; ---------------------------------------------------------------------------
algn_14040A5A2:                         ; DATA XREF: .pdata:00000001400E3C58↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040A5C0   proc near               ; CODE XREF: sub_140A162C0+69↓j
                                        ; sub_140A162C0+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040A62A
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040A613
                lfence
                jmp     loc_14040A869
; ---------------------------------------------------------------------------

loc_14040A613:                          ; CODE XREF: sub_14040A5C0+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040A869
; ---------------------------------------------------------------------------

loc_14040A62A:                          ; CODE XREF: sub_14040A5C0+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040A636
                swapgs

loc_14040A636:                          ; CODE XREF: sub_14040A5C0+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040A6A6
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040A6A6:                          ; CODE XREF: sub_14040A5C0+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040A6CE
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040A6CE:                          ; CODE XREF: sub_14040A5C0+F5↑j
                test    edx, 2
                jz      loc_14040A7FF
                call    loc_14040A7ED

loc_14040A6DF:                          ; CODE XREF: sub_14040A5C0+12C↓p
                add     rsp, 8
                call    loc_14040A7F6

loc_14040A6E8:                          ; CODE XREF: sub_14040A5C0+135↓p
                add     rsp, 8
                call    loc_14040A6DF

loc_14040A6F1:                          ; CODE XREF: sub_14040A5C0+13E↓p
                add     rsp, 8
                call    loc_14040A6E8

loc_14040A6FA:                          ; CODE XREF: sub_14040A5C0+147↓p
                add     rsp, 8
                call    loc_14040A6F1

loc_14040A703:                          ; CODE XREF: sub_14040A5C0+150↓p
                add     rsp, 8
                call    loc_14040A6FA

loc_14040A70C:                          ; CODE XREF: sub_14040A5C0+159↓p
                add     rsp, 8
                call    loc_14040A703

loc_14040A715:                          ; CODE XREF: sub_14040A5C0+162↓p
                add     rsp, 8
                call    loc_14040A70C

loc_14040A71E:                          ; CODE XREF: sub_14040A5C0+16B↓p
                add     rsp, 8
                call    loc_14040A715

loc_14040A727:                          ; CODE XREF: sub_14040A5C0+174↓p
                add     rsp, 8
                call    loc_14040A71E

loc_14040A730:                          ; CODE XREF: sub_14040A5C0+17D↓p
                add     rsp, 8
                call    loc_14040A727

loc_14040A739:                          ; CODE XREF: sub_14040A5C0+186↓p
                add     rsp, 8
                call    loc_14040A730

loc_14040A742:                          ; CODE XREF: sub_14040A5C0+18F↓p
                add     rsp, 8
                call    loc_14040A739

loc_14040A74B:                          ; CODE XREF: sub_14040A5C0+198↓p
                add     rsp, 8
                call    loc_14040A742

loc_14040A754:                          ; CODE XREF: sub_14040A5C0+1A1↓p
                add     rsp, 8
                call    loc_14040A74B

loc_14040A75D:                          ; CODE XREF: sub_14040A5C0+1AA↓p
                add     rsp, 8
                call    loc_14040A754

loc_14040A766:                          ; CODE XREF: sub_14040A5C0+1B3↓p
                add     rsp, 8
                call    loc_14040A75D

loc_14040A76F:                          ; CODE XREF: sub_14040A5C0+1BC↓p
                add     rsp, 8
                call    loc_14040A766

loc_14040A778:                          ; CODE XREF: sub_14040A5C0+1C5↓p
                add     rsp, 8
                call    loc_14040A76F

loc_14040A781:                          ; CODE XREF: sub_14040A5C0+1CE↓p
                add     rsp, 8
                call    loc_14040A778

loc_14040A78A:                          ; CODE XREF: sub_14040A5C0+1D7↓p
                add     rsp, 8
                call    loc_14040A781

loc_14040A793:                          ; CODE XREF: sub_14040A5C0+1E0↓p
                add     rsp, 8
                call    loc_14040A78A

loc_14040A79C:                          ; CODE XREF: sub_14040A5C0+1E9↓p
                add     rsp, 8
                call    loc_14040A793

loc_14040A7A5:                          ; CODE XREF: sub_14040A5C0+1F2↓p
                add     rsp, 8
                call    loc_14040A79C

loc_14040A7AE:                          ; CODE XREF: sub_14040A5C0+1FB↓p
                add     rsp, 8
                call    loc_14040A7A5

loc_14040A7B7:                          ; CODE XREF: sub_14040A5C0+204↓p
                add     rsp, 8
                call    loc_14040A7AE

loc_14040A7C0:                          ; CODE XREF: sub_14040A5C0+20D↓p
                add     rsp, 8
                call    loc_14040A7B7

loc_14040A7C9:                          ; CODE XREF: sub_14040A5C0+216↓p
                add     rsp, 8
                call    loc_14040A7C0

loc_14040A7D2:                          ; CODE XREF: sub_14040A5C0+21F↓p
                add     rsp, 8
                call    loc_14040A7C9

loc_14040A7DB:                          ; CODE XREF: sub_14040A5C0+228↓p
                add     rsp, 8
                call    loc_14040A7D2

loc_14040A7E4:                          ; CODE XREF: sub_14040A5C0+231↓p
                add     rsp, 8
                call    loc_14040A7DB

loc_14040A7ED:                          ; CODE XREF: sub_14040A5C0+11A↑p
                add     rsp, 8
                call    loc_14040A7E4

loc_14040A7F6:                          ; CODE XREF: sub_14040A5C0+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040A7FF:                          ; CODE XREF: sub_14040A5C0+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040A854
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040A854
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040A854:                          ; CODE XREF: sub_14040A5C0+250↑j
                                        ; sub_14040A5C0+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040A869
                call    sub_1403FDC80

loc_14040A869:                          ; CODE XREF: sub_14040A5C0+4E↑j
                                        ; sub_14040A5C0+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040A8A4
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040A8A4
                stac

loc_14040A8A4:                          ; CODE XREF: sub_14040A5C0+2D6↑j
                                        ; sub_14040A5C0+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040A8B1
                sti

loc_14040A8B1:                          ; CODE XREF: sub_14040A5C0+2EE↑j
                mov     ecx, 80000003h
                mov     edx, 1
                mov     r8, [rbp+0E8h]
                dec     r8
                mov     r9d, 0
                call    sub_140411740
                nop
                retn
sub_14040A5C0   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040A8D2:                         ; DATA XREF: .pdata:00000001400E3C64↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040A900   proc near               ; CODE XREF: sub_140A16340+69↓j
                                        ; sub_140A16340+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040A96A
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040A953
                lfence
                jmp     loc_14040ABA9
; ---------------------------------------------------------------------------

loc_14040A953:                          ; CODE XREF: sub_14040A900+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040ABA9
; ---------------------------------------------------------------------------

loc_14040A96A:                          ; CODE XREF: sub_14040A900+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040A976
                swapgs

loc_14040A976:                          ; CODE XREF: sub_14040A900+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040A9E6
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040A9E6:                          ; CODE XREF: sub_14040A900+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040AA0E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040AA0E:                          ; CODE XREF: sub_14040A900+F5↑j
                test    edx, 2
                jz      loc_14040AB3F
                call    loc_14040AB2D

loc_14040AA1F:                          ; CODE XREF: sub_14040A900+12C↓p
                add     rsp, 8
                call    loc_14040AB36

loc_14040AA28:                          ; CODE XREF: sub_14040A900+135↓p
                add     rsp, 8
                call    loc_14040AA1F

loc_14040AA31:                          ; CODE XREF: sub_14040A900+13E↓p
                add     rsp, 8
                call    loc_14040AA28

loc_14040AA3A:                          ; CODE XREF: sub_14040A900+147↓p
                add     rsp, 8
                call    loc_14040AA31

loc_14040AA43:                          ; CODE XREF: sub_14040A900+150↓p
                add     rsp, 8
                call    loc_14040AA3A

loc_14040AA4C:                          ; CODE XREF: sub_14040A900+159↓p
                add     rsp, 8
                call    loc_14040AA43

loc_14040AA55:                          ; CODE XREF: sub_14040A900+162↓p
                add     rsp, 8
                call    loc_14040AA4C

loc_14040AA5E:                          ; CODE XREF: sub_14040A900+16B↓p
                add     rsp, 8
                call    loc_14040AA55

loc_14040AA67:                          ; CODE XREF: sub_14040A900+174↓p
                add     rsp, 8
                call    loc_14040AA5E

loc_14040AA70:                          ; CODE XREF: sub_14040A900+17D↓p
                add     rsp, 8
                call    loc_14040AA67

loc_14040AA79:                          ; CODE XREF: sub_14040A900+186↓p
                add     rsp, 8
                call    loc_14040AA70

loc_14040AA82:                          ; CODE XREF: sub_14040A900+18F↓p
                add     rsp, 8
                call    loc_14040AA79

loc_14040AA8B:                          ; CODE XREF: sub_14040A900+198↓p
                add     rsp, 8
                call    loc_14040AA82

loc_14040AA94:                          ; CODE XREF: sub_14040A900+1A1↓p
                add     rsp, 8
                call    loc_14040AA8B

loc_14040AA9D:                          ; CODE XREF: sub_14040A900+1AA↓p
                add     rsp, 8
                call    loc_14040AA94

loc_14040AAA6:                          ; CODE XREF: sub_14040A900+1B3↓p
                add     rsp, 8
                call    loc_14040AA9D

loc_14040AAAF:                          ; CODE XREF: sub_14040A900+1BC↓p
                add     rsp, 8
                call    loc_14040AAA6

loc_14040AAB8:                          ; CODE XREF: sub_14040A900+1C5↓p
                add     rsp, 8
                call    loc_14040AAAF

loc_14040AAC1:                          ; CODE XREF: sub_14040A900+1CE↓p
                add     rsp, 8
                call    loc_14040AAB8

loc_14040AACA:                          ; CODE XREF: sub_14040A900+1D7↓p
                add     rsp, 8
                call    loc_14040AAC1

loc_14040AAD3:                          ; CODE XREF: sub_14040A900+1E0↓p
                add     rsp, 8
                call    loc_14040AACA

loc_14040AADC:                          ; CODE XREF: sub_14040A900+1E9↓p
                add     rsp, 8
                call    loc_14040AAD3

loc_14040AAE5:                          ; CODE XREF: sub_14040A900+1F2↓p
                add     rsp, 8
                call    loc_14040AADC

loc_14040AAEE:                          ; CODE XREF: sub_14040A900+1FB↓p
                add     rsp, 8
                call    loc_14040AAE5

loc_14040AAF7:                          ; CODE XREF: sub_14040A900+204↓p
                add     rsp, 8
                call    loc_14040AAEE

loc_14040AB00:                          ; CODE XREF: sub_14040A900+20D↓p
                add     rsp, 8
                call    loc_14040AAF7

loc_14040AB09:                          ; CODE XREF: sub_14040A900+216↓p
                add     rsp, 8
                call    loc_14040AB00

loc_14040AB12:                          ; CODE XREF: sub_14040A900+21F↓p
                add     rsp, 8
                call    loc_14040AB09

loc_14040AB1B:                          ; CODE XREF: sub_14040A900+228↓p
                add     rsp, 8
                call    loc_14040AB12

loc_14040AB24:                          ; CODE XREF: sub_14040A900+231↓p
                add     rsp, 8
                call    loc_14040AB1B

loc_14040AB2D:                          ; CODE XREF: sub_14040A900+11A↑p
                add     rsp, 8
                call    loc_14040AB24

loc_14040AB36:                          ; CODE XREF: sub_14040A900+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040AB3F:                          ; CODE XREF: sub_14040A900+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040AB94
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040AB94
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040AB94:                          ; CODE XREF: sub_14040A900+250↑j
                                        ; sub_14040A900+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040ABA9
                call    sub_1403FDC80

loc_14040ABA9:                          ; CODE XREF: sub_14040A900+4E↑j
                                        ; sub_14040A900+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040ABE4
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040ABE4
                stac

loc_14040ABE4:                          ; CODE XREF: sub_14040A900+2D6↑j
                                        ; sub_14040A900+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040ABF1
                sti

loc_14040ABF1:                          ; CODE XREF: sub_14040A900+2EE↑j
                mov     ecx, 0C0000095h
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                dec     r8
                call    sub_140411740
                nop
                retn
sub_14040A900   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040AC09:                         ; DATA XREF: .pdata:00000001400E3C70↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040AC40   proc near               ; CODE XREF: sub_140A163C0+69↓j
                                        ; sub_140A163C0+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
var_10          = qword ptr -10h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040ACAA
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040AC93
                lfence
                jmp     loc_14040AEE9
; ---------------------------------------------------------------------------

loc_14040AC93:                          ; CODE XREF: sub_14040AC40+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040AEE9
; ---------------------------------------------------------------------------

loc_14040ACAA:                          ; CODE XREF: sub_14040AC40+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040ACB6
                swapgs

loc_14040ACB6:                          ; CODE XREF: sub_14040AC40+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040AD26
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040AD26:                          ; CODE XREF: sub_14040AC40+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040AD4E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040AD4E:                          ; CODE XREF: sub_14040AC40+F5↑j
                test    edx, 2
                jz      loc_14040AE7F
                call    loc_14040AE6D

loc_14040AD5F:                          ; CODE XREF: sub_14040AC40+12C↓p
                add     rsp, 8
                call    loc_14040AE76

loc_14040AD68:                          ; CODE XREF: sub_14040AC40+135↓p
                add     rsp, 8
                call    loc_14040AD5F

loc_14040AD71:                          ; CODE XREF: sub_14040AC40+13E↓p
                add     rsp, 8
                call    loc_14040AD68

loc_14040AD7A:                          ; CODE XREF: sub_14040AC40+147↓p
                add     rsp, 8
                call    loc_14040AD71

loc_14040AD83:                          ; CODE XREF: sub_14040AC40+150↓p
                add     rsp, 8
                call    loc_14040AD7A

loc_14040AD8C:                          ; CODE XREF: sub_14040AC40+159↓p
                add     rsp, 8
                call    loc_14040AD83

loc_14040AD95:                          ; CODE XREF: sub_14040AC40+162↓p
                add     rsp, 8
                call    loc_14040AD8C

loc_14040AD9E:                          ; CODE XREF: sub_14040AC40+16B↓p
                add     rsp, 8
                call    loc_14040AD95

loc_14040ADA7:                          ; CODE XREF: sub_14040AC40+174↓p
                add     rsp, 8
                call    loc_14040AD9E

loc_14040ADB0:                          ; CODE XREF: sub_14040AC40+17D↓p
                add     rsp, 8
                call    loc_14040ADA7

loc_14040ADB9:                          ; CODE XREF: sub_14040AC40+186↓p
                add     rsp, 8
                call    loc_14040ADB0

loc_14040ADC2:                          ; CODE XREF: sub_14040AC40+18F↓p
                add     rsp, 8
                call    loc_14040ADB9

loc_14040ADCB:                          ; CODE XREF: sub_14040AC40+198↓p
                add     rsp, 8
                call    loc_14040ADC2

loc_14040ADD4:                          ; CODE XREF: sub_14040AC40+1A1↓p
                add     rsp, 8
                call    loc_14040ADCB

loc_14040ADDD:                          ; CODE XREF: sub_14040AC40+1AA↓p
                add     rsp, 8
                call    loc_14040ADD4

loc_14040ADE6:                          ; CODE XREF: sub_14040AC40+1B3↓p
                add     rsp, 8
                call    loc_14040ADDD

loc_14040ADEF:                          ; CODE XREF: sub_14040AC40+1BC↓p
                add     rsp, 8
                call    loc_14040ADE6

loc_14040ADF8:                          ; CODE XREF: sub_14040AC40+1C5↓p
                add     rsp, 8
                call    loc_14040ADEF

loc_14040AE01:                          ; CODE XREF: sub_14040AC40+1CE↓p
                add     rsp, 8
                call    loc_14040ADF8

loc_14040AE0A:                          ; CODE XREF: sub_14040AC40+1D7↓p
                add     rsp, 8
                call    loc_14040AE01

loc_14040AE13:                          ; CODE XREF: sub_14040AC40+1E0↓p
                add     rsp, 8
                call    loc_14040AE0A

loc_14040AE1C:                          ; CODE XREF: sub_14040AC40+1E9↓p
                add     rsp, 8
                call    loc_14040AE13

loc_14040AE25:                          ; CODE XREF: sub_14040AC40+1F2↓p
                add     rsp, 8
                call    loc_14040AE1C

loc_14040AE2E:                          ; CODE XREF: sub_14040AC40+1FB↓p
                add     rsp, 8
                call    loc_14040AE25

loc_14040AE37:                          ; CODE XREF: sub_14040AC40+204↓p
                add     rsp, 8
                call    loc_14040AE2E

loc_14040AE40:                          ; CODE XREF: sub_14040AC40+20D↓p
                add     rsp, 8
                call    loc_14040AE37

loc_14040AE49:                          ; CODE XREF: sub_14040AC40+216↓p
                add     rsp, 8
                call    loc_14040AE40

loc_14040AE52:                          ; CODE XREF: sub_14040AC40+21F↓p
                add     rsp, 8
                call    loc_14040AE49

loc_14040AE5B:                          ; CODE XREF: sub_14040AC40+228↓p
                add     rsp, 8
                call    loc_14040AE52

loc_14040AE64:                          ; CODE XREF: sub_14040AC40+231↓p
                add     rsp, 8
                call    loc_14040AE5B

loc_14040AE6D:                          ; CODE XREF: sub_14040AC40+11A↑p
                add     rsp, 8
                call    loc_14040AE64

loc_14040AE76:                          ; CODE XREF: sub_14040AC40+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040AE7F:                          ; CODE XREF: sub_14040AC40+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040AED4
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040AED4
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040AED4:                          ; CODE XREF: sub_14040AC40+250↑j
                                        ; sub_14040AC40+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040AEE9
                call    sub_1403FDC80

loc_14040AEE9:                          ; CODE XREF: sub_14040AC40+4E↑j
                                        ; sub_14040AC40+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040AF24
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040AF24
                stac

loc_14040AF24:                          ; CODE XREF: sub_14040AC40+2D6↑j
                                        ; sub_14040AC40+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040AF31
                sti

loc_14040AF31:                          ; CODE XREF: sub_14040AC40+2EE↑j
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040AF91
                mov     r9, gs:188h
                bt      dword ptr [r9+74h], 8
                jnb     short loc_14040AF50
                call    sub_140412440

loc_14040AF50:                          ; CODE XREF: sub_14040AC40+309↑j
                call    sub_140514CD0
                cmp     eax, 0
                jz      short loc_14040AF91
                cmp     eax, 1
                jz      short loc_14040AFA5
                cmp     eax, 2
                jz      short loc_14040AF73
                mov     edx, 5
                mov     ecx, 7Fh
                call    sub_1404116C0

loc_14040AF73:                          ; CODE XREF: sub_14040AC40+322↑j
                mov     r9, 1Ch
                mov     ecx, 0C0000409h
                mov     edx, 1
                mov     r8, [rbp+0E8h]
                call    sub_140411BC0
                nop

loc_14040AF91:                          ; CODE XREF: sub_14040AC40+2F8↑j
                                        ; sub_14040AC40+318↑j
                mov     ecx, 0C000008Ch
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop

loc_14040AFA5:                          ; CODE XREF: sub_14040AC40+31D↑j
                cli
                test    [rbp+0E8h+arg_0], 1
                jz      loc_14040B233
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040AFBF
                stac

loc_14040AFBF:                          ; CODE XREF: sub_14040AC40+37A↑j
                                        ; sub_14040AC40+3AA↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14040AFEC
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_14040AFBF
; ---------------------------------------------------------------------------

loc_14040AFEC:                          ; CODE XREF: sub_14040AC40+38F↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14040AFFE
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14040AFFE:                          ; CODE XREF: sub_14040AC40+3B5↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_14040B014
                call    sub_1403FE910

loc_14040B014:                          ; CODE XREF: sub_14040AC40+3CD↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040B04A
                test    byte ptr [rcx+2], 1
                jz      short loc_14040B039
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040B039:                          ; CODE XREF: sub_14040AC40+3E9↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_14040B04A
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_14040B04A:                          ; CODE XREF: sub_14040AC40+3E3↑j
                                        ; sub_14040AC40+3FD↑j
                ldmxcsr [rbp+0E8h+var_13C]
                cmp     [rbp+0E8h+var_68], 0
                jz      short loc_14040B05D
                call    sub_1403FDC00

loc_14040B05D:                          ; CODE XREF: sub_14040AC40+416↑j
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14040B0B2
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040B0B2:                          ; CODE XREF: sub_14040AC40+45F↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14040B0CD
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14040B0CD:                          ; CODE XREF: sub_14040AC40+47D↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14040B203
                call    loc_14040B1F1

loc_14040B0E3:                          ; CODE XREF: sub_14040AC40+4B0↓p
                add     rsp, 8
                call    loc_14040B1FA

loc_14040B0EC:                          ; CODE XREF: sub_14040AC40+4B9↓p
                add     rsp, 8
                call    loc_14040B0E3

loc_14040B0F5:                          ; CODE XREF: sub_14040AC40+4C2↓p
                add     rsp, 8
                call    loc_14040B0EC

loc_14040B0FE:                          ; CODE XREF: sub_14040AC40+4CB↓p
                add     rsp, 8
                call    loc_14040B0F5

loc_14040B107:                          ; CODE XREF: sub_14040AC40+4D4↓p
                add     rsp, 8
                call    loc_14040B0FE

loc_14040B110:                          ; CODE XREF: sub_14040AC40+4DD↓p
                add     rsp, 8
                call    loc_14040B107

loc_14040B119:                          ; CODE XREF: sub_14040AC40+4E6↓p
                add     rsp, 8
                call    loc_14040B110

loc_14040B122:                          ; CODE XREF: sub_14040AC40+4EF↓p
                add     rsp, 8
                call    loc_14040B119

loc_14040B12B:                          ; CODE XREF: sub_14040AC40+4F8↓p
                add     rsp, 8
                call    loc_14040B122

loc_14040B134:                          ; CODE XREF: sub_14040AC40+501↓p
                add     rsp, 8
                call    loc_14040B12B

loc_14040B13D:                          ; CODE XREF: sub_14040AC40+50A↓p
                add     rsp, 8
                call    loc_14040B134

loc_14040B146:                          ; CODE XREF: sub_14040AC40+513↓p
                add     rsp, 8
                call    loc_14040B13D

loc_14040B14F:                          ; CODE XREF: sub_14040AC40+51C↓p
                add     rsp, 8
                call    loc_14040B146

loc_14040B158:                          ; CODE XREF: sub_14040AC40+525↓p
                add     rsp, 8
                call    loc_14040B14F

loc_14040B161:                          ; CODE XREF: sub_14040AC40+52E↓p
                add     rsp, 8
                call    loc_14040B158

loc_14040B16A:                          ; CODE XREF: sub_14040AC40+537↓p
                add     rsp, 8
                call    loc_14040B161

loc_14040B173:                          ; CODE XREF: sub_14040AC40+540↓p
                add     rsp, 8
                call    loc_14040B16A

loc_14040B17C:                          ; CODE XREF: sub_14040AC40+549↓p
                add     rsp, 8
                call    loc_14040B173

loc_14040B185:                          ; CODE XREF: sub_14040AC40+552↓p
                add     rsp, 8
                call    loc_14040B17C

loc_14040B18E:                          ; CODE XREF: sub_14040AC40+55B↓p
                add     rsp, 8
                call    loc_14040B185

loc_14040B197:                          ; CODE XREF: sub_14040AC40+564↓p
                add     rsp, 8
                call    loc_14040B18E

loc_14040B1A0:                          ; CODE XREF: sub_14040AC40+56D↓p
                add     rsp, 8
                call    loc_14040B197

loc_14040B1A9:                          ; CODE XREF: sub_14040AC40+576↓p
                add     rsp, 8
                call    loc_14040B1A0

loc_14040B1B2:                          ; CODE XREF: sub_14040AC40+57F↓p
                add     rsp, 8
                call    loc_14040B1A9

loc_14040B1BB:                          ; CODE XREF: sub_14040AC40+588↓p
                add     rsp, 8
                call    loc_14040B1B2

loc_14040B1C4:                          ; CODE XREF: sub_14040AC40+591↓p
                add     rsp, 8
                call    loc_14040B1BB

loc_14040B1CD:                          ; CODE XREF: sub_14040AC40+59A↓p
                add     rsp, 8
                call    loc_14040B1C4

loc_14040B1D6:                          ; CODE XREF: sub_14040AC40+5A3↓p
                add     rsp, 8
                call    loc_14040B1CD

loc_14040B1DF:                          ; CODE XREF: sub_14040AC40+5AC↓p
                add     rsp, 8
                call    loc_14040B1D6

loc_14040B1E8:                          ; CODE XREF: sub_14040AC40+5B5↓p
                add     rsp, 8
                call    loc_14040B1DF

loc_14040B1F1:                          ; CODE XREF: sub_14040AC40+49E↑p
                add     rsp, 8
                call    loc_14040B1E8

loc_14040B1FA:                          ; CODE XREF: sub_14040AC40+4A7↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040B203:                          ; CODE XREF: sub_14040AC40+498↑j
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040B22E
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14040B22E:                          ; CODE XREF: sub_14040AC40+5E7↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040B233:                          ; CODE XREF: sub_14040AC40+36D↑j
                ldmxcsr [rbp+0E8h+var_13C]
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                iretq
sub_14040AC40   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040B27E:                         ; DATA XREF: .pdata:00000001400E3C7C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040B280   proc near               ; CODE XREF: sub_140A16440+69↓j
                                        ; sub_140A16440+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
var_10          = qword ptr -10h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040B2EA
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040B2D3
                lfence
                jmp     loc_14040B529
; ---------------------------------------------------------------------------

loc_14040B2D3:                          ; CODE XREF: sub_14040B280+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040B529
; ---------------------------------------------------------------------------

loc_14040B2EA:                          ; CODE XREF: sub_14040B280+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040B2F6
                swapgs

loc_14040B2F6:                          ; CODE XREF: sub_14040B280+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040B366
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040B366:                          ; CODE XREF: sub_14040B280+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040B38E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040B38E:                          ; CODE XREF: sub_14040B280+F5↑j
                test    edx, 2
                jz      loc_14040B4BF
                call    loc_14040B4AD

loc_14040B39F:                          ; CODE XREF: sub_14040B280+12C↓p
                add     rsp, 8
                call    loc_14040B4B6

loc_14040B3A8:                          ; CODE XREF: sub_14040B280+135↓p
                add     rsp, 8
                call    loc_14040B39F

loc_14040B3B1:                          ; CODE XREF: sub_14040B280+13E↓p
                add     rsp, 8
                call    loc_14040B3A8

loc_14040B3BA:                          ; CODE XREF: sub_14040B280+147↓p
                add     rsp, 8
                call    loc_14040B3B1

loc_14040B3C3:                          ; CODE XREF: sub_14040B280+150↓p
                add     rsp, 8
                call    loc_14040B3BA

loc_14040B3CC:                          ; CODE XREF: sub_14040B280+159↓p
                add     rsp, 8
                call    loc_14040B3C3

loc_14040B3D5:                          ; CODE XREF: sub_14040B280+162↓p
                add     rsp, 8
                call    loc_14040B3CC

loc_14040B3DE:                          ; CODE XREF: sub_14040B280+16B↓p
                add     rsp, 8
                call    loc_14040B3D5

loc_14040B3E7:                          ; CODE XREF: sub_14040B280+174↓p
                add     rsp, 8
                call    loc_14040B3DE

loc_14040B3F0:                          ; CODE XREF: sub_14040B280+17D↓p
                add     rsp, 8
                call    loc_14040B3E7

loc_14040B3F9:                          ; CODE XREF: sub_14040B280+186↓p
                add     rsp, 8
                call    loc_14040B3F0

loc_14040B402:                          ; CODE XREF: sub_14040B280+18F↓p
                add     rsp, 8
                call    loc_14040B3F9

loc_14040B40B:                          ; CODE XREF: sub_14040B280+198↓p
                add     rsp, 8
                call    loc_14040B402

loc_14040B414:                          ; CODE XREF: sub_14040B280+1A1↓p
                add     rsp, 8
                call    loc_14040B40B

loc_14040B41D:                          ; CODE XREF: sub_14040B280+1AA↓p
                add     rsp, 8
                call    loc_14040B414

loc_14040B426:                          ; CODE XREF: sub_14040B280+1B3↓p
                add     rsp, 8
                call    loc_14040B41D

loc_14040B42F:                          ; CODE XREF: sub_14040B280+1BC↓p
                add     rsp, 8
                call    loc_14040B426

loc_14040B438:                          ; CODE XREF: sub_14040B280+1C5↓p
                add     rsp, 8
                call    loc_14040B42F

loc_14040B441:                          ; CODE XREF: sub_14040B280+1CE↓p
                add     rsp, 8
                call    loc_14040B438

loc_14040B44A:                          ; CODE XREF: sub_14040B280+1D7↓p
                add     rsp, 8
                call    loc_14040B441

loc_14040B453:                          ; CODE XREF: sub_14040B280+1E0↓p
                add     rsp, 8
                call    loc_14040B44A

loc_14040B45C:                          ; CODE XREF: sub_14040B280+1E9↓p
                add     rsp, 8
                call    loc_14040B453

loc_14040B465:                          ; CODE XREF: sub_14040B280+1F2↓p
                add     rsp, 8
                call    loc_14040B45C

loc_14040B46E:                          ; CODE XREF: sub_14040B280+1FB↓p
                add     rsp, 8
                call    loc_14040B465

loc_14040B477:                          ; CODE XREF: sub_14040B280+204↓p
                add     rsp, 8
                call    loc_14040B46E

loc_14040B480:                          ; CODE XREF: sub_14040B280+20D↓p
                add     rsp, 8
                call    loc_14040B477

loc_14040B489:                          ; CODE XREF: sub_14040B280+216↓p
                add     rsp, 8
                call    loc_14040B480

loc_14040B492:                          ; CODE XREF: sub_14040B280+21F↓p
                add     rsp, 8
                call    loc_14040B489

loc_14040B49B:                          ; CODE XREF: sub_14040B280+228↓p
                add     rsp, 8
                call    loc_14040B492

loc_14040B4A4:                          ; CODE XREF: sub_14040B280+231↓p
                add     rsp, 8
                call    loc_14040B49B

loc_14040B4AD:                          ; CODE XREF: sub_14040B280+11A↑p
                add     rsp, 8
                call    loc_14040B4A4

loc_14040B4B6:                          ; CODE XREF: sub_14040B280+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040B4BF:                          ; CODE XREF: sub_14040B280+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040B514
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040B514
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040B514:                          ; CODE XREF: sub_14040B280+250↑j
                                        ; sub_14040B280+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040B529
                call    sub_1403FDC80

loc_14040B529:                          ; CODE XREF: sub_14040B280+4E↑j
                                        ; sub_14040B280+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040B564
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040B564
                stac

loc_14040B564:                          ; CODE XREF: sub_14040B280+2D6↑j
                                        ; sub_14040B280+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040B571
                sti

loc_14040B571:                          ; CODE XREF: sub_14040B280+2EE↑j
                mov     r9, gs:188h
                bt      dword ptr [r9+74h], 8
                jnb     short loc_14040B590
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040B590
                call    sub_140412440

loc_14040B590:                          ; CODE XREF: sub_14040B280+300↑j
                                        ; sub_14040B280+309↑j
                mov     ecx, 10000002h
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop
                cli
                test    [rbp+0E8h+arg_0], 1
                jz      loc_14040B832
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040B5BE
                stac

loc_14040B5BE:                          ; CODE XREF: sub_14040B280+339↑j
                                        ; sub_14040B280+369↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14040B5EB
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_14040B5BE
; ---------------------------------------------------------------------------

loc_14040B5EB:                          ; CODE XREF: sub_14040B280+34E↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14040B5FD
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14040B5FD:                          ; CODE XREF: sub_14040B280+374↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_14040B613
                call    sub_1403FE910

loc_14040B613:                          ; CODE XREF: sub_14040B280+38C↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040B649
                test    byte ptr [rcx+2], 1
                jz      short loc_14040B638
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040B638:                          ; CODE XREF: sub_14040B280+3A8↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_14040B649
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_14040B649:                          ; CODE XREF: sub_14040B280+3A2↑j
                                        ; sub_14040B280+3BC↑j
                ldmxcsr [rbp+0E8h+var_13C]
                cmp     [rbp+0E8h+var_68], 0
                jz      short loc_14040B65C
                call    sub_1403FDC00

loc_14040B65C:                          ; CODE XREF: sub_14040B280+3D5↑j
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14040B6B1
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040B6B1:                          ; CODE XREF: sub_14040B280+41E↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14040B6CC
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14040B6CC:                          ; CODE XREF: sub_14040B280+43C↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14040B802
                call    loc_14040B7F0

loc_14040B6E2:                          ; CODE XREF: sub_14040B280+46F↓p
                add     rsp, 8
                call    loc_14040B7F9

loc_14040B6EB:                          ; CODE XREF: sub_14040B280+478↓p
                add     rsp, 8
                call    loc_14040B6E2

loc_14040B6F4:                          ; CODE XREF: sub_14040B280+481↓p
                add     rsp, 8
                call    loc_14040B6EB

loc_14040B6FD:                          ; CODE XREF: sub_14040B280+48A↓p
                add     rsp, 8
                call    loc_14040B6F4

loc_14040B706:                          ; CODE XREF: sub_14040B280+493↓p
                add     rsp, 8
                call    loc_14040B6FD

loc_14040B70F:                          ; CODE XREF: sub_14040B280+49C↓p
                add     rsp, 8
                call    loc_14040B706

loc_14040B718:                          ; CODE XREF: sub_14040B280+4A5↓p
                add     rsp, 8
                call    loc_14040B70F

loc_14040B721:                          ; CODE XREF: sub_14040B280+4AE↓p
                add     rsp, 8
                call    loc_14040B718

loc_14040B72A:                          ; CODE XREF: sub_14040B280+4B7↓p
                add     rsp, 8
                call    loc_14040B721

loc_14040B733:                          ; CODE XREF: sub_14040B280+4C0↓p
                add     rsp, 8
                call    loc_14040B72A

loc_14040B73C:                          ; CODE XREF: sub_14040B280+4C9↓p
                add     rsp, 8
                call    loc_14040B733

loc_14040B745:                          ; CODE XREF: sub_14040B280+4D2↓p
                add     rsp, 8
                call    loc_14040B73C

loc_14040B74E:                          ; CODE XREF: sub_14040B280+4DB↓p
                add     rsp, 8
                call    loc_14040B745

loc_14040B757:                          ; CODE XREF: sub_14040B280+4E4↓p
                add     rsp, 8
                call    loc_14040B74E

loc_14040B760:                          ; CODE XREF: sub_14040B280+4ED↓p
                add     rsp, 8
                call    loc_14040B757

loc_14040B769:                          ; CODE XREF: sub_14040B280+4F6↓p
                add     rsp, 8
                call    loc_14040B760

loc_14040B772:                          ; CODE XREF: sub_14040B280+4FF↓p
                add     rsp, 8
                call    loc_14040B769

loc_14040B77B:                          ; CODE XREF: sub_14040B280+508↓p
                add     rsp, 8
                call    loc_14040B772

loc_14040B784:                          ; CODE XREF: sub_14040B280+511↓p
                add     rsp, 8
                call    loc_14040B77B

loc_14040B78D:                          ; CODE XREF: sub_14040B280+51A↓p
                add     rsp, 8
                call    loc_14040B784

loc_14040B796:                          ; CODE XREF: sub_14040B280+523↓p
                add     rsp, 8
                call    loc_14040B78D

loc_14040B79F:                          ; CODE XREF: sub_14040B280+52C↓p
                add     rsp, 8
                call    loc_14040B796

loc_14040B7A8:                          ; CODE XREF: sub_14040B280+535↓p
                add     rsp, 8
                call    loc_14040B79F

loc_14040B7B1:                          ; CODE XREF: sub_14040B280+53E↓p
                add     rsp, 8
                call    loc_14040B7A8

loc_14040B7BA:                          ; CODE XREF: sub_14040B280+547↓p
                add     rsp, 8
                call    loc_14040B7B1

loc_14040B7C3:                          ; CODE XREF: sub_14040B280+550↓p
                add     rsp, 8
                call    loc_14040B7BA

loc_14040B7CC:                          ; CODE XREF: sub_14040B280+559↓p
                add     rsp, 8
                call    loc_14040B7C3

loc_14040B7D5:                          ; CODE XREF: sub_14040B280+562↓p
                add     rsp, 8
                call    loc_14040B7CC

loc_14040B7DE:                          ; CODE XREF: sub_14040B280+56B↓p
                add     rsp, 8
                call    loc_14040B7D5

loc_14040B7E7:                          ; CODE XREF: sub_14040B280+574↓p
                add     rsp, 8
                call    loc_14040B7DE

loc_14040B7F0:                          ; CODE XREF: sub_14040B280+45D↑p
                add     rsp, 8
                call    loc_14040B7E7

loc_14040B7F9:                          ; CODE XREF: sub_14040B280+466↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040B802:                          ; CODE XREF: sub_14040B280+457↑j
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040B82D
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14040B82D:                          ; CODE XREF: sub_14040B280+5A6↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040B832:                          ; CODE XREF: sub_14040B280+32C↑j
                ldmxcsr [rbp+0E8h+var_13C]
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                iretq
sub_14040B280   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040B87D:                         ; DATA XREF: .pdata:00000001400E3C88↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040B880   proc near               ; CODE XREF: sub_140A164C0+69↓j
                                        ; sub_140A164C0+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040B8EA
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040B8D3
                lfence
                jmp     loc_14040BAE0
; ---------------------------------------------------------------------------

loc_14040B8D3:                          ; CODE XREF: sub_14040B880+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040BAE0
; ---------------------------------------------------------------------------

loc_14040B8EA:                          ; CODE XREF: sub_14040B880+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040B8F6
                swapgs

loc_14040B8F6:                          ; CODE XREF: sub_14040B880+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040B966
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040B966:                          ; CODE XREF: sub_14040B880+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040B98E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040B98E:                          ; CODE XREF: sub_14040B880+F5↑j
                test    edx, 2
                jz      loc_14040BABF
                call    loc_14040BAAD

loc_14040B99F:                          ; CODE XREF: sub_14040B880+12C↓p
                add     rsp, 8
                call    loc_14040BAB6

loc_14040B9A8:                          ; CODE XREF: sub_14040B880+135↓p
                add     rsp, 8
                call    loc_14040B99F

loc_14040B9B1:                          ; CODE XREF: sub_14040B880+13E↓p
                add     rsp, 8
                call    loc_14040B9A8

loc_14040B9BA:                          ; CODE XREF: sub_14040B880+147↓p
                add     rsp, 8
                call    loc_14040B9B1

loc_14040B9C3:                          ; CODE XREF: sub_14040B880+150↓p
                add     rsp, 8
                call    loc_14040B9BA

loc_14040B9CC:                          ; CODE XREF: sub_14040B880+159↓p
                add     rsp, 8
                call    loc_14040B9C3

loc_14040B9D5:                          ; CODE XREF: sub_14040B880+162↓p
                add     rsp, 8
                call    loc_14040B9CC

loc_14040B9DE:                          ; CODE XREF: sub_14040B880+16B↓p
                add     rsp, 8
                call    loc_14040B9D5

loc_14040B9E7:                          ; CODE XREF: sub_14040B880+174↓p
                add     rsp, 8
                call    loc_14040B9DE

loc_14040B9F0:                          ; CODE XREF: sub_14040B880+17D↓p
                add     rsp, 8
                call    loc_14040B9E7

loc_14040B9F9:                          ; CODE XREF: sub_14040B880+186↓p
                add     rsp, 8
                call    loc_14040B9F0

loc_14040BA02:                          ; CODE XREF: sub_14040B880+18F↓p
                add     rsp, 8
                call    loc_14040B9F9

loc_14040BA0B:                          ; CODE XREF: sub_14040B880+198↓p
                add     rsp, 8
                call    loc_14040BA02

loc_14040BA14:                          ; CODE XREF: sub_14040B880+1A1↓p
                add     rsp, 8
                call    loc_14040BA0B

loc_14040BA1D:                          ; CODE XREF: sub_14040B880+1AA↓p
                add     rsp, 8
                call    loc_14040BA14

loc_14040BA26:                          ; CODE XREF: sub_14040B880+1B3↓p
                add     rsp, 8
                call    loc_14040BA1D

loc_14040BA2F:                          ; CODE XREF: sub_14040B880+1BC↓p
                add     rsp, 8
                call    loc_14040BA26

loc_14040BA38:                          ; CODE XREF: sub_14040B880+1C5↓p
                add     rsp, 8
                call    loc_14040BA2F

loc_14040BA41:                          ; CODE XREF: sub_14040B880+1CE↓p
                add     rsp, 8
                call    loc_14040BA38

loc_14040BA4A:                          ; CODE XREF: sub_14040B880+1D7↓p
                add     rsp, 8
                call    loc_14040BA41

loc_14040BA53:                          ; CODE XREF: sub_14040B880+1E0↓p
                add     rsp, 8
                call    loc_14040BA4A

loc_14040BA5C:                          ; CODE XREF: sub_14040B880+1E9↓p
                add     rsp, 8
                call    loc_14040BA53

loc_14040BA65:                          ; CODE XREF: sub_14040B880+1F2↓p
                add     rsp, 8
                call    loc_14040BA5C

loc_14040BA6E:                          ; CODE XREF: sub_14040B880+1FB↓p
                add     rsp, 8
                call    loc_14040BA65

loc_14040BA77:                          ; CODE XREF: sub_14040B880+204↓p
                add     rsp, 8
                call    loc_14040BA6E

loc_14040BA80:                          ; CODE XREF: sub_14040B880+20D↓p
                add     rsp, 8
                call    loc_14040BA77

loc_14040BA89:                          ; CODE XREF: sub_14040B880+216↓p
                add     rsp, 8
                call    loc_14040BA80

loc_14040BA92:                          ; CODE XREF: sub_14040B880+21F↓p
                add     rsp, 8
                call    loc_14040BA89

loc_14040BA9B:                          ; CODE XREF: sub_14040B880+228↓p
                add     rsp, 8
                call    loc_14040BA92

loc_14040BAA4:                          ; CODE XREF: sub_14040B880+231↓p
                add     rsp, 8
                call    loc_14040BA9B

loc_14040BAAD:                          ; CODE XREF: sub_14040B880+11A↑p
                add     rsp, 8
                call    loc_14040BAA4

loc_14040BAB6:                          ; CODE XREF: sub_14040B880+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040BABF:                          ; CODE XREF: sub_14040B880+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040BAE0
                call    sub_1403FDC80

loc_14040BAE0:                          ; CODE XREF: sub_14040B880+4E↑j
                                        ; sub_14040B880+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040BB1B
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040BB1B
                stac

loc_14040BB1B:                          ; CODE XREF: sub_14040B880+28D↑j
                                        ; sub_14040B880+296↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040BB28
                sti

loc_14040BB28:                          ; CODE XREF: sub_14040B880+2A5↑j
                mov     r10, [rbp+0E8h]
                mov     r9, cr4
                mov     r8, cr0
                mov     edx, 7
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040B880   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040BB48:                         ; DATA XREF: .pdata:00000001400E3C94↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040BB80   proc near               ; CODE XREF: sub_140A16540+71↓j
                                        ; DATA XREF: .rdata:0000000140009208↑o ...

var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_18          = qword ptr  28h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040BBE6
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040BBCF
                lfence
                jmp     loc_14040BDDC
; ---------------------------------------------------------------------------

loc_14040BBCF:                          ; CODE XREF: sub_14040BB80+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040BDDC
; ---------------------------------------------------------------------------

loc_14040BBE6:                          ; CODE XREF: sub_14040BB80+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040BBF2
                swapgs

loc_14040BBF2:                          ; CODE XREF: sub_14040BB80+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040BC62
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040BC62:                          ; CODE XREF: sub_14040BB80+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040BC8A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040BC8A:                          ; CODE XREF: sub_14040BB80+F1↑j
                test    edx, 2
                jz      loc_14040BDBB
                call    loc_14040BDA9

loc_14040BC9B:                          ; CODE XREF: sub_14040BB80+128↓p
                add     rsp, 8
                call    loc_14040BDB2

loc_14040BCA4:                          ; CODE XREF: sub_14040BB80+131↓p
                add     rsp, 8
                call    loc_14040BC9B

loc_14040BCAD:                          ; CODE XREF: sub_14040BB80+13A↓p
                add     rsp, 8
                call    loc_14040BCA4

loc_14040BCB6:                          ; CODE XREF: sub_14040BB80+143↓p
                add     rsp, 8
                call    loc_14040BCAD

loc_14040BCBF:                          ; CODE XREF: sub_14040BB80+14C↓p
                add     rsp, 8
                call    loc_14040BCB6

loc_14040BCC8:                          ; CODE XREF: sub_14040BB80+155↓p
                add     rsp, 8
                call    loc_14040BCBF

loc_14040BCD1:                          ; CODE XREF: sub_14040BB80+15E↓p
                add     rsp, 8
                call    loc_14040BCC8

loc_14040BCDA:                          ; CODE XREF: sub_14040BB80+167↓p
                add     rsp, 8
                call    loc_14040BCD1

loc_14040BCE3:                          ; CODE XREF: sub_14040BB80+170↓p
                add     rsp, 8
                call    loc_14040BCDA

loc_14040BCEC:                          ; CODE XREF: sub_14040BB80+179↓p
                add     rsp, 8
                call    loc_14040BCE3

loc_14040BCF5:                          ; CODE XREF: sub_14040BB80+182↓p
                add     rsp, 8
                call    loc_14040BCEC

loc_14040BCFE:                          ; CODE XREF: sub_14040BB80+18B↓p
                add     rsp, 8
                call    loc_14040BCF5

loc_14040BD07:                          ; CODE XREF: sub_14040BB80+194↓p
                add     rsp, 8
                call    loc_14040BCFE

loc_14040BD10:                          ; CODE XREF: sub_14040BB80+19D↓p
                add     rsp, 8
                call    loc_14040BD07

loc_14040BD19:                          ; CODE XREF: sub_14040BB80+1A6↓p
                add     rsp, 8
                call    loc_14040BD10

loc_14040BD22:                          ; CODE XREF: sub_14040BB80+1AF↓p
                add     rsp, 8
                call    loc_14040BD19

loc_14040BD2B:                          ; CODE XREF: sub_14040BB80+1B8↓p
                add     rsp, 8
                call    loc_14040BD22

loc_14040BD34:                          ; CODE XREF: sub_14040BB80+1C1↓p
                add     rsp, 8
                call    loc_14040BD2B

loc_14040BD3D:                          ; CODE XREF: sub_14040BB80+1CA↓p
                add     rsp, 8
                call    loc_14040BD34

loc_14040BD46:                          ; CODE XREF: sub_14040BB80+1D3↓p
                add     rsp, 8
                call    loc_14040BD3D

loc_14040BD4F:                          ; CODE XREF: sub_14040BB80+1DC↓p
                add     rsp, 8
                call    loc_14040BD46

loc_14040BD58:                          ; CODE XREF: sub_14040BB80+1E5↓p
                add     rsp, 8
                call    loc_14040BD4F

loc_14040BD61:                          ; CODE XREF: sub_14040BB80+1EE↓p
                add     rsp, 8
                call    loc_14040BD58

loc_14040BD6A:                          ; CODE XREF: sub_14040BB80+1F7↓p
                add     rsp, 8
                call    loc_14040BD61

loc_14040BD73:                          ; CODE XREF: sub_14040BB80+200↓p
                add     rsp, 8
                call    loc_14040BD6A

loc_14040BD7C:                          ; CODE XREF: sub_14040BB80+209↓p
                add     rsp, 8
                call    loc_14040BD73

loc_14040BD85:                          ; CODE XREF: sub_14040BB80+212↓p
                add     rsp, 8
                call    loc_14040BD7C

loc_14040BD8E:                          ; CODE XREF: sub_14040BB80+21B↓p
                add     rsp, 8
                call    loc_14040BD85

loc_14040BD97:                          ; CODE XREF: sub_14040BB80+224↓p
                add     rsp, 8
                call    loc_14040BD8E

loc_14040BDA0:                          ; CODE XREF: sub_14040BB80+22D↓p
                add     rsp, 8
                call    loc_14040BD97

loc_14040BDA9:                          ; CODE XREF: sub_14040BB80+116↑p
                add     rsp, 8
                call    loc_14040BDA0

loc_14040BDB2:                          ; CODE XREF: sub_14040BB80+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040BDBB:                          ; CODE XREF: sub_14040BB80+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040BDDC
                call    sub_1403FDC80

loc_14040BDDC:                          ; CODE XREF: sub_14040BB80+4A↑j
                                        ; sub_14040BB80+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040BE17
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040BE17
                stac

loc_14040BE17:                          ; CODE XREF: sub_14040BB80+289↑j
                                        ; sub_14040BB80+292↑j
                mov     eax, [rbp+0E0h]
                mov     r10, [rbp+0D8h+arg_0]
                mov     r9, [rbp+0D8h+arg_18]
                mov     r8, rsp
                mov     edx, 8
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040BB80   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040BE3F:                         ; DATA XREF: .pdata:00000001400E3CA0↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040BE40   proc near               ; CODE XREF: sub_140A165C0+69↓j
                                        ; sub_140A165C0+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040BEAA
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040BE93
                lfence
                jmp     loc_14040C0A0
; ---------------------------------------------------------------------------

loc_14040BE93:                          ; CODE XREF: sub_14040BE40+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040C0A0
; ---------------------------------------------------------------------------

loc_14040BEAA:                          ; CODE XREF: sub_14040BE40+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040BEB6
                swapgs

loc_14040BEB6:                          ; CODE XREF: sub_14040BE40+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040BF26
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040BF26:                          ; CODE XREF: sub_14040BE40+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040BF4E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040BF4E:                          ; CODE XREF: sub_14040BE40+F5↑j
                test    edx, 2
                jz      loc_14040C07F
                call    loc_14040C06D

loc_14040BF5F:                          ; CODE XREF: sub_14040BE40+12C↓p
                add     rsp, 8
                call    loc_14040C076

loc_14040BF68:                          ; CODE XREF: sub_14040BE40+135↓p
                add     rsp, 8
                call    loc_14040BF5F

loc_14040BF71:                          ; CODE XREF: sub_14040BE40+13E↓p
                add     rsp, 8
                call    loc_14040BF68

loc_14040BF7A:                          ; CODE XREF: sub_14040BE40+147↓p
                add     rsp, 8
                call    loc_14040BF71

loc_14040BF83:                          ; CODE XREF: sub_14040BE40+150↓p
                add     rsp, 8
                call    loc_14040BF7A

loc_14040BF8C:                          ; CODE XREF: sub_14040BE40+159↓p
                add     rsp, 8
                call    loc_14040BF83

loc_14040BF95:                          ; CODE XREF: sub_14040BE40+162↓p
                add     rsp, 8
                call    loc_14040BF8C

loc_14040BF9E:                          ; CODE XREF: sub_14040BE40+16B↓p
                add     rsp, 8
                call    loc_14040BF95

loc_14040BFA7:                          ; CODE XREF: sub_14040BE40+174↓p
                add     rsp, 8
                call    loc_14040BF9E

loc_14040BFB0:                          ; CODE XREF: sub_14040BE40+17D↓p
                add     rsp, 8
                call    loc_14040BFA7

loc_14040BFB9:                          ; CODE XREF: sub_14040BE40+186↓p
                add     rsp, 8
                call    loc_14040BFB0

loc_14040BFC2:                          ; CODE XREF: sub_14040BE40+18F↓p
                add     rsp, 8
                call    loc_14040BFB9

loc_14040BFCB:                          ; CODE XREF: sub_14040BE40+198↓p
                add     rsp, 8
                call    loc_14040BFC2

loc_14040BFD4:                          ; CODE XREF: sub_14040BE40+1A1↓p
                add     rsp, 8
                call    loc_14040BFCB

loc_14040BFDD:                          ; CODE XREF: sub_14040BE40+1AA↓p
                add     rsp, 8
                call    loc_14040BFD4

loc_14040BFE6:                          ; CODE XREF: sub_14040BE40+1B3↓p
                add     rsp, 8
                call    loc_14040BFDD

loc_14040BFEF:                          ; CODE XREF: sub_14040BE40+1BC↓p
                add     rsp, 8
                call    loc_14040BFE6

loc_14040BFF8:                          ; CODE XREF: sub_14040BE40+1C5↓p
                add     rsp, 8
                call    loc_14040BFEF

loc_14040C001:                          ; CODE XREF: sub_14040BE40+1CE↓p
                add     rsp, 8
                call    loc_14040BFF8

loc_14040C00A:                          ; CODE XREF: sub_14040BE40+1D7↓p
                add     rsp, 8
                call    loc_14040C001

loc_14040C013:                          ; CODE XREF: sub_14040BE40+1E0↓p
                add     rsp, 8
                call    loc_14040C00A

loc_14040C01C:                          ; CODE XREF: sub_14040BE40+1E9↓p
                add     rsp, 8
                call    loc_14040C013

loc_14040C025:                          ; CODE XREF: sub_14040BE40+1F2↓p
                add     rsp, 8
                call    loc_14040C01C

loc_14040C02E:                          ; CODE XREF: sub_14040BE40+1FB↓p
                add     rsp, 8
                call    loc_14040C025

loc_14040C037:                          ; CODE XREF: sub_14040BE40+204↓p
                add     rsp, 8
                call    loc_14040C02E

loc_14040C040:                          ; CODE XREF: sub_14040BE40+20D↓p
                add     rsp, 8
                call    loc_14040C037

loc_14040C049:                          ; CODE XREF: sub_14040BE40+216↓p
                add     rsp, 8
                call    loc_14040C040

loc_14040C052:                          ; CODE XREF: sub_14040BE40+21F↓p
                add     rsp, 8
                call    loc_14040C049

loc_14040C05B:                          ; CODE XREF: sub_14040BE40+228↓p
                add     rsp, 8
                call    loc_14040C052

loc_14040C064:                          ; CODE XREF: sub_14040BE40+231↓p
                add     rsp, 8
                call    loc_14040C05B

loc_14040C06D:                          ; CODE XREF: sub_14040BE40+11A↑p
                add     rsp, 8
                call    loc_14040C064

loc_14040C076:                          ; CODE XREF: sub_14040BE40+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040C07F:                          ; CODE XREF: sub_14040BE40+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040C0A0
                call    sub_1403FDC80

loc_14040C0A0:                          ; CODE XREF: sub_14040BE40+4E↑j
                                        ; sub_14040BE40+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040C0DB
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040C0DB
                stac

loc_14040C0DB:                          ; CODE XREF: sub_14040BE40+28D↑j
                                        ; sub_14040BE40+296↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040C0E8
                sti

loc_14040C0E8:                          ; CODE XREF: sub_14040BE40+2A5↑j
                mov     r10, [rbp+0E8h]
                mov     r9, cr4
                mov     r8, cr0
                mov     edx, 9
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040BE40   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040C108:                         ; DATA XREF: .pdata:00000001400E3CAC↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040C140   proc near               ; CODE XREF: sub_140A16640+6C↓j
                                        ; sub_140A16640+74↓j
                                        ; DATA XREF: ...

var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040C1A6
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040C18F
                lfence
                jmp     loc_14040C39C
; ---------------------------------------------------------------------------

loc_14040C18F:                          ; CODE XREF: sub_14040C140+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040C39C
; ---------------------------------------------------------------------------

loc_14040C1A6:                          ; CODE XREF: sub_14040C140+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040C1B2
                swapgs

loc_14040C1B2:                          ; CODE XREF: sub_14040C140+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040C222
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040C222:                          ; CODE XREF: sub_14040C140+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040C24A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040C24A:                          ; CODE XREF: sub_14040C140+F1↑j
                test    edx, 2
                jz      loc_14040C37B
                call    loc_14040C369

loc_14040C25B:                          ; CODE XREF: sub_14040C140+128↓p
                add     rsp, 8
                call    loc_14040C372

loc_14040C264:                          ; CODE XREF: sub_14040C140+131↓p
                add     rsp, 8
                call    loc_14040C25B

loc_14040C26D:                          ; CODE XREF: sub_14040C140+13A↓p
                add     rsp, 8
                call    loc_14040C264

loc_14040C276:                          ; CODE XREF: sub_14040C140+143↓p
                add     rsp, 8
                call    loc_14040C26D

loc_14040C27F:                          ; CODE XREF: sub_14040C140+14C↓p
                add     rsp, 8
                call    loc_14040C276

loc_14040C288:                          ; CODE XREF: sub_14040C140+155↓p
                add     rsp, 8
                call    loc_14040C27F

loc_14040C291:                          ; CODE XREF: sub_14040C140+15E↓p
                add     rsp, 8
                call    loc_14040C288

loc_14040C29A:                          ; CODE XREF: sub_14040C140+167↓p
                add     rsp, 8
                call    loc_14040C291

loc_14040C2A3:                          ; CODE XREF: sub_14040C140+170↓p
                add     rsp, 8
                call    loc_14040C29A

loc_14040C2AC:                          ; CODE XREF: sub_14040C140+179↓p
                add     rsp, 8
                call    loc_14040C2A3

loc_14040C2B5:                          ; CODE XREF: sub_14040C140+182↓p
                add     rsp, 8
                call    loc_14040C2AC

loc_14040C2BE:                          ; CODE XREF: sub_14040C140+18B↓p
                add     rsp, 8
                call    loc_14040C2B5

loc_14040C2C7:                          ; CODE XREF: sub_14040C140+194↓p
                add     rsp, 8
                call    loc_14040C2BE

loc_14040C2D0:                          ; CODE XREF: sub_14040C140+19D↓p
                add     rsp, 8
                call    loc_14040C2C7

loc_14040C2D9:                          ; CODE XREF: sub_14040C140+1A6↓p
                add     rsp, 8
                call    loc_14040C2D0

loc_14040C2E2:                          ; CODE XREF: sub_14040C140+1AF↓p
                add     rsp, 8
                call    loc_14040C2D9

loc_14040C2EB:                          ; CODE XREF: sub_14040C140+1B8↓p
                add     rsp, 8
                call    loc_14040C2E2

loc_14040C2F4:                          ; CODE XREF: sub_14040C140+1C1↓p
                add     rsp, 8
                call    loc_14040C2EB

loc_14040C2FD:                          ; CODE XREF: sub_14040C140+1CA↓p
                add     rsp, 8
                call    loc_14040C2F4

loc_14040C306:                          ; CODE XREF: sub_14040C140+1D3↓p
                add     rsp, 8
                call    loc_14040C2FD

loc_14040C30F:                          ; CODE XREF: sub_14040C140+1DC↓p
                add     rsp, 8
                call    loc_14040C306

loc_14040C318:                          ; CODE XREF: sub_14040C140+1E5↓p
                add     rsp, 8
                call    loc_14040C30F

loc_14040C321:                          ; CODE XREF: sub_14040C140+1EE↓p
                add     rsp, 8
                call    loc_14040C318

loc_14040C32A:                          ; CODE XREF: sub_14040C140+1F7↓p
                add     rsp, 8
                call    loc_14040C321

loc_14040C333:                          ; CODE XREF: sub_14040C140+200↓p
                add     rsp, 8
                call    loc_14040C32A

loc_14040C33C:                          ; CODE XREF: sub_14040C140+209↓p
                add     rsp, 8
                call    loc_14040C333

loc_14040C345:                          ; CODE XREF: sub_14040C140+212↓p
                add     rsp, 8
                call    loc_14040C33C

loc_14040C34E:                          ; CODE XREF: sub_14040C140+21B↓p
                add     rsp, 8
                call    loc_14040C345

loc_14040C357:                          ; CODE XREF: sub_14040C140+224↓p
                add     rsp, 8
                call    loc_14040C34E

loc_14040C360:                          ; CODE XREF: sub_14040C140+22D↓p
                add     rsp, 8
                call    loc_14040C357

loc_14040C369:                          ; CODE XREF: sub_14040C140+116↑p
                add     rsp, 8
                call    loc_14040C360

loc_14040C372:                          ; CODE XREF: sub_14040C140+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040C37B:                          ; CODE XREF: sub_14040C140+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040C39C
                call    sub_1403FDC80

loc_14040C39C:                          ; CODE XREF: sub_14040C140+4A↑j
                                        ; sub_14040C140+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040C3D7
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040C3D7
                stac

loc_14040C3D7:                          ; CODE XREF: sub_14040C140+289↑j
                                        ; sub_14040C140+292↑j
                mov     eax, [rbp+0E0h]
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040C3EA
                sti

loc_14040C3EA:                          ; CODE XREF: sub_14040C140+2A7↑j
                mov     r10, [rbp+0D8h+arg_0]
                mov     r9d, [rbp+0E0h]
                mov     r8, cr0
                mov     edx, 0Ah
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040C140   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040C40D:                         ; DATA XREF: .pdata:00000001400E3CB8↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040C440   proc near               ; CODE XREF: sub_140A166C0+6C↓j
                                        ; sub_140A166C0+74↓j
                                        ; DATA XREF: ...

var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040C4A6
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040C48F
                lfence
                jmp     loc_14040C6E5
; ---------------------------------------------------------------------------

loc_14040C48F:                          ; CODE XREF: sub_14040C440+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040C6E5
; ---------------------------------------------------------------------------

loc_14040C4A6:                          ; CODE XREF: sub_14040C440+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040C4B2
                swapgs

loc_14040C4B2:                          ; CODE XREF: sub_14040C440+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040C522
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040C522:                          ; CODE XREF: sub_14040C440+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040C54A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040C54A:                          ; CODE XREF: sub_14040C440+F1↑j
                test    edx, 2
                jz      loc_14040C67B
                call    loc_14040C669

loc_14040C55B:                          ; CODE XREF: sub_14040C440+128↓p
                add     rsp, 8
                call    loc_14040C672

loc_14040C564:                          ; CODE XREF: sub_14040C440+131↓p
                add     rsp, 8
                call    loc_14040C55B

loc_14040C56D:                          ; CODE XREF: sub_14040C440+13A↓p
                add     rsp, 8
                call    loc_14040C564

loc_14040C576:                          ; CODE XREF: sub_14040C440+143↓p
                add     rsp, 8
                call    loc_14040C56D

loc_14040C57F:                          ; CODE XREF: sub_14040C440+14C↓p
                add     rsp, 8
                call    loc_14040C576

loc_14040C588:                          ; CODE XREF: sub_14040C440+155↓p
                add     rsp, 8
                call    loc_14040C57F

loc_14040C591:                          ; CODE XREF: sub_14040C440+15E↓p
                add     rsp, 8
                call    loc_14040C588

loc_14040C59A:                          ; CODE XREF: sub_14040C440+167↓p
                add     rsp, 8
                call    loc_14040C591

loc_14040C5A3:                          ; CODE XREF: sub_14040C440+170↓p
                add     rsp, 8
                call    loc_14040C59A

loc_14040C5AC:                          ; CODE XREF: sub_14040C440+179↓p
                add     rsp, 8
                call    loc_14040C5A3

loc_14040C5B5:                          ; CODE XREF: sub_14040C440+182↓p
                add     rsp, 8
                call    loc_14040C5AC

loc_14040C5BE:                          ; CODE XREF: sub_14040C440+18B↓p
                add     rsp, 8
                call    loc_14040C5B5

loc_14040C5C7:                          ; CODE XREF: sub_14040C440+194↓p
                add     rsp, 8
                call    loc_14040C5BE

loc_14040C5D0:                          ; CODE XREF: sub_14040C440+19D↓p
                add     rsp, 8
                call    loc_14040C5C7

loc_14040C5D9:                          ; CODE XREF: sub_14040C440+1A6↓p
                add     rsp, 8
                call    loc_14040C5D0

loc_14040C5E2:                          ; CODE XREF: sub_14040C440+1AF↓p
                add     rsp, 8
                call    loc_14040C5D9

loc_14040C5EB:                          ; CODE XREF: sub_14040C440+1B8↓p
                add     rsp, 8
                call    loc_14040C5E2

loc_14040C5F4:                          ; CODE XREF: sub_14040C440+1C1↓p
                add     rsp, 8
                call    loc_14040C5EB

loc_14040C5FD:                          ; CODE XREF: sub_14040C440+1CA↓p
                add     rsp, 8
                call    loc_14040C5F4

loc_14040C606:                          ; CODE XREF: sub_14040C440+1D3↓p
                add     rsp, 8
                call    loc_14040C5FD

loc_14040C60F:                          ; CODE XREF: sub_14040C440+1DC↓p
                add     rsp, 8
                call    loc_14040C606

loc_14040C618:                          ; CODE XREF: sub_14040C440+1E5↓p
                add     rsp, 8
                call    loc_14040C60F

loc_14040C621:                          ; CODE XREF: sub_14040C440+1EE↓p
                add     rsp, 8
                call    loc_14040C618

loc_14040C62A:                          ; CODE XREF: sub_14040C440+1F7↓p
                add     rsp, 8
                call    loc_14040C621

loc_14040C633:                          ; CODE XREF: sub_14040C440+200↓p
                add     rsp, 8
                call    loc_14040C62A

loc_14040C63C:                          ; CODE XREF: sub_14040C440+209↓p
                add     rsp, 8
                call    loc_14040C633

loc_14040C645:                          ; CODE XREF: sub_14040C440+212↓p
                add     rsp, 8
                call    loc_14040C63C

loc_14040C64E:                          ; CODE XREF: sub_14040C440+21B↓p
                add     rsp, 8
                call    loc_14040C645

loc_14040C657:                          ; CODE XREF: sub_14040C440+224↓p
                add     rsp, 8
                call    loc_14040C64E

loc_14040C660:                          ; CODE XREF: sub_14040C440+22D↓p
                add     rsp, 8
                call    loc_14040C657

loc_14040C669:                          ; CODE XREF: sub_14040C440+116↑p
                add     rsp, 8
                call    loc_14040C660

loc_14040C672:                          ; CODE XREF: sub_14040C440+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040C67B:                          ; CODE XREF: sub_14040C440+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040C6D0
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040C6D0
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040C6D0:                          ; CODE XREF: sub_14040C440+24C↑j
                                        ; sub_14040C440+272↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040C6E5
                call    sub_1403FDC80

loc_14040C6E5:                          ; CODE XREF: sub_14040C440+4A↑j
                                        ; sub_14040C440+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040C720
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040C720
                stac

loc_14040C720:                          ; CODE XREF: sub_14040C440+2D2↑j
                                        ; sub_14040C440+2DB↑j
                mov     eax, [rbp+0E0h]
                test    ax, 4
                jz      short loc_14040C740
                xor     ecx, ecx
                mov     rdx, gs:89F0h
                xchg    rcx, gs:89E8h

loc_14040C740:                          ; CODE XREF: sub_14040C440+2EA↑j
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040C74D
                sti

loc_14040C74D:                          ; CODE XREF: sub_14040C440+30A↑j
                test    ax, 4
                jz      short loc_14040C770
                mov     r9, rcx
                mov     r10, rdx
                mov     ecx, 10000006h
                mov     edx, 2
                mov     r8, [rbp+0D8h+arg_0]
                call    sub_140411740
                nop

loc_14040C770:                          ; CODE XREF: sub_14040C440+311↑j
                mov     r8, [rbp+0D8h+arg_0]
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040C7A4
                mov     ecx, 10000007h
                mov     edx, 2
                mov     r9d, [rbp+0E0h]
                or      r9d, 3
                and     r9d, 0FFFFh
                xor     r10, r10
                call    sub_140411740

loc_14040C7A4:                          ; CODE XREF: sub_14040C440+33E↑j
                mov     r10, r8
                mov     r9d, [rbp+0E0h]
                mov     r8, cr0
                mov     edx, 0Bh
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040C440   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040C7C3:                         ; DATA XREF: .pdata:00000001400E3CC4↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040C800   proc near               ; CODE XREF: sub_140A16740+6C↓j
                                        ; sub_140A16740+74↓j
                                        ; DATA XREF: ...

var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040C866
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040C84F
                lfence
                jmp     loc_14040CAA5
; ---------------------------------------------------------------------------

loc_14040C84F:                          ; CODE XREF: sub_14040C800+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040CAA5
; ---------------------------------------------------------------------------

loc_14040C866:                          ; CODE XREF: sub_14040C800+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040C872
                swapgs

loc_14040C872:                          ; CODE XREF: sub_14040C800+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040C8E2
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040C8E2:                          ; CODE XREF: sub_14040C800+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040C90A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040C90A:                          ; CODE XREF: sub_14040C800+F1↑j
                test    edx, 2
                jz      loc_14040CA3B
                call    loc_14040CA29

loc_14040C91B:                          ; CODE XREF: sub_14040C800+128↓p
                add     rsp, 8
                call    loc_14040CA32

loc_14040C924:                          ; CODE XREF: sub_14040C800+131↓p
                add     rsp, 8
                call    loc_14040C91B

loc_14040C92D:                          ; CODE XREF: sub_14040C800+13A↓p
                add     rsp, 8
                call    loc_14040C924

loc_14040C936:                          ; CODE XREF: sub_14040C800+143↓p
                add     rsp, 8
                call    loc_14040C92D

loc_14040C93F:                          ; CODE XREF: sub_14040C800+14C↓p
                add     rsp, 8
                call    loc_14040C936

loc_14040C948:                          ; CODE XREF: sub_14040C800+155↓p
                add     rsp, 8
                call    loc_14040C93F

loc_14040C951:                          ; CODE XREF: sub_14040C800+15E↓p
                add     rsp, 8
                call    loc_14040C948

loc_14040C95A:                          ; CODE XREF: sub_14040C800+167↓p
                add     rsp, 8
                call    loc_14040C951

loc_14040C963:                          ; CODE XREF: sub_14040C800+170↓p
                add     rsp, 8
                call    loc_14040C95A

loc_14040C96C:                          ; CODE XREF: sub_14040C800+179↓p
                add     rsp, 8
                call    loc_14040C963

loc_14040C975:                          ; CODE XREF: sub_14040C800+182↓p
                add     rsp, 8
                call    loc_14040C96C

loc_14040C97E:                          ; CODE XREF: sub_14040C800+18B↓p
                add     rsp, 8
                call    loc_14040C975

loc_14040C987:                          ; CODE XREF: sub_14040C800+194↓p
                add     rsp, 8
                call    loc_14040C97E

loc_14040C990:                          ; CODE XREF: sub_14040C800+19D↓p
                add     rsp, 8
                call    loc_14040C987

loc_14040C999:                          ; CODE XREF: sub_14040C800+1A6↓p
                add     rsp, 8
                call    loc_14040C990

loc_14040C9A2:                          ; CODE XREF: sub_14040C800+1AF↓p
                add     rsp, 8
                call    loc_14040C999

loc_14040C9AB:                          ; CODE XREF: sub_14040C800+1B8↓p
                add     rsp, 8
                call    loc_14040C9A2

loc_14040C9B4:                          ; CODE XREF: sub_14040C800+1C1↓p
                add     rsp, 8
                call    loc_14040C9AB

loc_14040C9BD:                          ; CODE XREF: sub_14040C800+1CA↓p
                add     rsp, 8
                call    loc_14040C9B4

loc_14040C9C6:                          ; CODE XREF: sub_14040C800+1D3↓p
                add     rsp, 8
                call    loc_14040C9BD

loc_14040C9CF:                          ; CODE XREF: sub_14040C800+1DC↓p
                add     rsp, 8
                call    loc_14040C9C6

loc_14040C9D8:                          ; CODE XREF: sub_14040C800+1E5↓p
                add     rsp, 8
                call    loc_14040C9CF

loc_14040C9E1:                          ; CODE XREF: sub_14040C800+1EE↓p
                add     rsp, 8
                call    loc_14040C9D8

loc_14040C9EA:                          ; CODE XREF: sub_14040C800+1F7↓p
                add     rsp, 8
                call    loc_14040C9E1

loc_14040C9F3:                          ; CODE XREF: sub_14040C800+200↓p
                add     rsp, 8
                call    loc_14040C9EA

loc_14040C9FC:                          ; CODE XREF: sub_14040C800+209↓p
                add     rsp, 8
                call    loc_14040C9F3

loc_14040CA05:                          ; CODE XREF: sub_14040C800+212↓p
                add     rsp, 8
                call    loc_14040C9FC

loc_14040CA0E:                          ; CODE XREF: sub_14040C800+21B↓p
                add     rsp, 8
                call    loc_14040CA05

loc_14040CA17:                          ; CODE XREF: sub_14040C800+224↓p
                add     rsp, 8
                call    loc_14040CA0E

loc_14040CA20:                          ; CODE XREF: sub_14040C800+22D↓p
                add     rsp, 8
                call    loc_14040CA17

loc_14040CA29:                          ; CODE XREF: sub_14040C800+116↑p
                add     rsp, 8
                call    loc_14040CA20

loc_14040CA32:                          ; CODE XREF: sub_14040C800+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040CA3B:                          ; CODE XREF: sub_14040C800+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040CA90
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040CA90
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040CA90:                          ; CODE XREF: sub_14040C800+24C↑j
                                        ; sub_14040C800+272↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040CAA5
                call    sub_1403FDC80

loc_14040CAA5:                          ; CODE XREF: sub_14040C800+4A↑j
                                        ; sub_14040C800+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040CAE0
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040CAE0
                stac

loc_14040CAE0:                          ; CODE XREF: sub_14040C800+2D2↑j
                                        ; sub_14040C800+2DB↑j
                mov     eax, [rbp+0E0h]
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040CAF3
                sti

loc_14040CAF3:                          ; CODE XREF: sub_14040C800+2F0↑j
                mov     ecx, 0C0000005h
                mov     edx, 2
                mov     r8, [rbp+0D8h+arg_0]
                mov     r9d, [rbp+0E0h]
                or      r9d, 3
                and     r9d, 0FFFFh
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040CB23
                or      r9, 0FFFFFFFFFFFFFFFFh

loc_14040CB23:                          ; CODE XREF: sub_14040C800+31D↑j
                xor     r10, r10
                call    sub_140411740
                nop
                retn
sub_14040C800   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040CB2D:                         ; DATA XREF: .pdata:00000001400E3CD0↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040CB40   proc near               ; CODE XREF: sub_140A167C0+6C↓j
                                        ; sub_140A167C0+74↓j
                                        ; DATA XREF: ...

var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040CBA6
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040CB8F
                lfence
                jmp     loc_14040CDE5
; ---------------------------------------------------------------------------

loc_14040CB8F:                          ; CODE XREF: sub_14040CB40+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040CDE5
; ---------------------------------------------------------------------------

loc_14040CBA6:                          ; CODE XREF: sub_14040CB40+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040CBB2
                swapgs

loc_14040CBB2:                          ; CODE XREF: sub_14040CB40+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040CC22
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040CC22:                          ; CODE XREF: sub_14040CB40+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040CC4A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040CC4A:                          ; CODE XREF: sub_14040CB40+F1↑j
                test    edx, 2
                jz      loc_14040CD7B
                call    loc_14040CD69

loc_14040CC5B:                          ; CODE XREF: sub_14040CB40+128↓p
                add     rsp, 8
                call    loc_14040CD72

loc_14040CC64:                          ; CODE XREF: sub_14040CB40+131↓p
                add     rsp, 8
                call    loc_14040CC5B

loc_14040CC6D:                          ; CODE XREF: sub_14040CB40+13A↓p
                add     rsp, 8
                call    loc_14040CC64

loc_14040CC76:                          ; CODE XREF: sub_14040CB40+143↓p
                add     rsp, 8
                call    loc_14040CC6D

loc_14040CC7F:                          ; CODE XREF: sub_14040CB40+14C↓p
                add     rsp, 8
                call    loc_14040CC76

loc_14040CC88:                          ; CODE XREF: sub_14040CB40+155↓p
                add     rsp, 8
                call    loc_14040CC7F

loc_14040CC91:                          ; CODE XREF: sub_14040CB40+15E↓p
                add     rsp, 8
                call    loc_14040CC88

loc_14040CC9A:                          ; CODE XREF: sub_14040CB40+167↓p
                add     rsp, 8
                call    loc_14040CC91

loc_14040CCA3:                          ; CODE XREF: sub_14040CB40+170↓p
                add     rsp, 8
                call    loc_14040CC9A

loc_14040CCAC:                          ; CODE XREF: sub_14040CB40+179↓p
                add     rsp, 8
                call    loc_14040CCA3

loc_14040CCB5:                          ; CODE XREF: sub_14040CB40+182↓p
                add     rsp, 8
                call    loc_14040CCAC

loc_14040CCBE:                          ; CODE XREF: sub_14040CB40+18B↓p
                add     rsp, 8
                call    loc_14040CCB5

loc_14040CCC7:                          ; CODE XREF: sub_14040CB40+194↓p
                add     rsp, 8
                call    loc_14040CCBE

loc_14040CCD0:                          ; CODE XREF: sub_14040CB40+19D↓p
                add     rsp, 8
                call    loc_14040CCC7

loc_14040CCD9:                          ; CODE XREF: sub_14040CB40+1A6↓p
                add     rsp, 8
                call    loc_14040CCD0

loc_14040CCE2:                          ; CODE XREF: sub_14040CB40+1AF↓p
                add     rsp, 8
                call    loc_14040CCD9

loc_14040CCEB:                          ; CODE XREF: sub_14040CB40+1B8↓p
                add     rsp, 8
                call    loc_14040CCE2

loc_14040CCF4:                          ; CODE XREF: sub_14040CB40+1C1↓p
                add     rsp, 8
                call    loc_14040CCEB

loc_14040CCFD:                          ; CODE XREF: sub_14040CB40+1CA↓p
                add     rsp, 8
                call    loc_14040CCF4

loc_14040CD06:                          ; CODE XREF: sub_14040CB40+1D3↓p
                add     rsp, 8
                call    loc_14040CCFD

loc_14040CD0F:                          ; CODE XREF: sub_14040CB40+1DC↓p
                add     rsp, 8
                call    loc_14040CD06

loc_14040CD18:                          ; CODE XREF: sub_14040CB40+1E5↓p
                add     rsp, 8
                call    loc_14040CD0F

loc_14040CD21:                          ; CODE XREF: sub_14040CB40+1EE↓p
                add     rsp, 8
                call    loc_14040CD18

loc_14040CD2A:                          ; CODE XREF: sub_14040CB40+1F7↓p
                add     rsp, 8
                call    loc_14040CD21

loc_14040CD33:                          ; CODE XREF: sub_14040CB40+200↓p
                add     rsp, 8
                call    loc_14040CD2A

loc_14040CD3C:                          ; CODE XREF: sub_14040CB40+209↓p
                add     rsp, 8
                call    loc_14040CD33

loc_14040CD45:                          ; CODE XREF: sub_14040CB40+212↓p
                add     rsp, 8
                call    loc_14040CD3C

loc_14040CD4E:                          ; CODE XREF: sub_14040CB40+21B↓p
                add     rsp, 8
                call    loc_14040CD45

loc_14040CD57:                          ; CODE XREF: sub_14040CB40+224↓p
                add     rsp, 8
                call    loc_14040CD4E

loc_14040CD60:                          ; CODE XREF: sub_14040CB40+22D↓p
                add     rsp, 8
                call    loc_14040CD57

loc_14040CD69:                          ; CODE XREF: sub_14040CB40+116↑p
                add     rsp, 8
                call    loc_14040CD60

loc_14040CD72:                          ; CODE XREF: sub_14040CB40+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040CD7B:                          ; CODE XREF: sub_14040CB40+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040CDD0
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040CDD0
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040CDD0:                          ; CODE XREF: sub_14040CB40+24C↑j
                                        ; sub_14040CB40+272↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040CDE5
                call    sub_1403FDC80

loc_14040CDE5:                          ; CODE XREF: sub_14040CB40+4A↑j
                                        ; sub_14040CB40+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040CE20
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040CE20
                stac

loc_14040CE20:                          ; CODE XREF: sub_14040CB40+2D2↑j
                                        ; sub_14040CB40+2DB↑j
                mov     eax, [rbp+0E0h]
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040CE33
                sti

loc_14040CE33:                          ; CODE XREF: sub_14040CB40+2F0↑j
                mov     ecx, 10000001h
                mov     edx, 2
                mov     r9d, [rbp+0E0h]
                and     r9d, 0FFFFh
                xor     r10, r10
                mov     r8, [rbp+0D8h+arg_0]
                call    sub_140411740
                nop
                retn
sub_14040CB40   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040CE5C:                         ; DATA XREF: .pdata:00000001400E3CDC↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040CE80   proc near               ; CODE XREF: sub_140A16840+6C↓j
                                        ; sub_140A16840+74↓j
                                        ; DATA XREF: ...

var_158         = byte ptr -158h
var_138         = dword ptr -138h
var_12E         = byte ptr -12Eh
var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_58          = word ptr -58h
var_s0          = qword ptr  0
arg_0           = qword ptr  10h
arg_8           = word ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    byte ptr [rbp+0D8h+arg_8], 1
                jnz     short loc_14040CEE6
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040CECF
                lfence
                jmp     loc_14040D135
; ---------------------------------------------------------------------------

loc_14040CECF:                          ; CODE XREF: sub_14040CE80+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040D135
; ---------------------------------------------------------------------------

loc_14040CEE6:                          ; CODE XREF: sub_14040CE80+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040CEF2
                swapgs

loc_14040CEF2:                          ; CODE XREF: sub_14040CE80+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040CF62
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040CF62:                          ; CODE XREF: sub_14040CE80+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040CF8A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040CF8A:                          ; CODE XREF: sub_14040CE80+F1↑j
                test    edx, 2
                jz      loc_14040D0BB
                call    loc_14040D0A9

loc_14040CF9B:                          ; CODE XREF: sub_14040CE80+128↓p
                add     rsp, 8
                call    loc_14040D0B2

loc_14040CFA4:                          ; CODE XREF: sub_14040CE80+131↓p
                add     rsp, 8
                call    loc_14040CF9B

loc_14040CFAD:                          ; CODE XREF: sub_14040CE80+13A↓p
                add     rsp, 8
                call    loc_14040CFA4

loc_14040CFB6:                          ; CODE XREF: sub_14040CE80+143↓p
                add     rsp, 8
                call    loc_14040CFAD

loc_14040CFBF:                          ; CODE XREF: sub_14040CE80+14C↓p
                add     rsp, 8
                call    loc_14040CFB6

loc_14040CFC8:                          ; CODE XREF: sub_14040CE80+155↓p
                add     rsp, 8
                call    loc_14040CFBF

loc_14040CFD1:                          ; CODE XREF: sub_14040CE80+15E↓p
                add     rsp, 8
                call    loc_14040CFC8

loc_14040CFDA:                          ; CODE XREF: sub_14040CE80+167↓p
                add     rsp, 8
                call    loc_14040CFD1

loc_14040CFE3:                          ; CODE XREF: sub_14040CE80+170↓p
                add     rsp, 8
                call    loc_14040CFDA

loc_14040CFEC:                          ; CODE XREF: sub_14040CE80+179↓p
                add     rsp, 8
                call    loc_14040CFE3

loc_14040CFF5:                          ; CODE XREF: sub_14040CE80+182↓p
                add     rsp, 8
                call    loc_14040CFEC

loc_14040CFFE:                          ; CODE XREF: sub_14040CE80+18B↓p
                add     rsp, 8
                call    loc_14040CFF5

loc_14040D007:                          ; CODE XREF: sub_14040CE80+194↓p
                add     rsp, 8
                call    loc_14040CFFE

loc_14040D010:                          ; CODE XREF: sub_14040CE80+19D↓p
                add     rsp, 8
                call    loc_14040D007

loc_14040D019:                          ; CODE XREF: sub_14040CE80+1A6↓p
                add     rsp, 8
                call    loc_14040D010

loc_14040D022:                          ; CODE XREF: sub_14040CE80+1AF↓p
                add     rsp, 8
                call    loc_14040D019

loc_14040D02B:                          ; CODE XREF: sub_14040CE80+1B8↓p
                add     rsp, 8
                call    loc_14040D022

loc_14040D034:                          ; CODE XREF: sub_14040CE80+1C1↓p
                add     rsp, 8
                call    loc_14040D02B

loc_14040D03D:                          ; CODE XREF: sub_14040CE80+1CA↓p
                add     rsp, 8
                call    loc_14040D034

loc_14040D046:                          ; CODE XREF: sub_14040CE80+1D3↓p
                add     rsp, 8
                call    loc_14040D03D

loc_14040D04F:                          ; CODE XREF: sub_14040CE80+1DC↓p
                add     rsp, 8
                call    loc_14040D046

loc_14040D058:                          ; CODE XREF: sub_14040CE80+1E5↓p
                add     rsp, 8
                call    loc_14040D04F

loc_14040D061:                          ; CODE XREF: sub_14040CE80+1EE↓p
                add     rsp, 8
                call    loc_14040D058

loc_14040D06A:                          ; CODE XREF: sub_14040CE80+1F7↓p
                add     rsp, 8
                call    loc_14040D061

loc_14040D073:                          ; CODE XREF: sub_14040CE80+200↓p
                add     rsp, 8
                call    loc_14040D06A

loc_14040D07C:                          ; CODE XREF: sub_14040CE80+209↓p
                add     rsp, 8
                call    loc_14040D073

loc_14040D085:                          ; CODE XREF: sub_14040CE80+212↓p
                add     rsp, 8
                call    loc_14040D07C

loc_14040D08E:                          ; CODE XREF: sub_14040CE80+21B↓p
                add     rsp, 8
                call    loc_14040D085

loc_14040D097:                          ; CODE XREF: sub_14040CE80+224↓p
                add     rsp, 8
                call    loc_14040D08E

loc_14040D0A0:                          ; CODE XREF: sub_14040CE80+22D↓p
                add     rsp, 8
                call    loc_14040D097

loc_14040D0A9:                          ; CODE XREF: sub_14040CE80+116↑p
                add     rsp, 8
                call    loc_14040D0A0

loc_14040D0B2:                          ; CODE XREF: sub_14040CE80+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040D0BB:                          ; CODE XREF: sub_14040CE80+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                cmp     [rbp+0D8h+arg_8], 33h ; '3'
                jnz     short loc_14040D120
                mov     ecx, 0C0000102h
                rdmsr
                mov     dword ptr [rbp+0D8h+var_F0], eax
                mov     dword ptr [rbp+0D8h+var_F0+4], edx
                test    byte ptr [r10+3], 80h
                jz      short loc_14040D120
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040D120
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040D120:                          ; CODE XREF: sub_14040CE80+24F↑j
                                        ; sub_14040CE80+263↑j ...
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040D135
                call    sub_1403FDC80

loc_14040D135:                          ; CODE XREF: sub_14040CE80+4A↑j
                                        ; sub_14040CE80+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040D170
                test    byte ptr [rbp+0D8h+arg_8], 1
                jz      short loc_14040D170
                stac

loc_14040D170:                          ; CODE XREF: sub_14040CE80+2E2↑j
                                        ; sub_14040CE80+2EB↑j
                mov     eax, [rbp+0E0h]
                mov     rcx, cr2
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040D186
                sti

loc_14040D186:                          ; CODE XREF: sub_14040CE80+303↑j
                mov     r9, gs:188h
                bt      dword ptr [r9+74h], 8
                jnb     short loc_14040D1A5
                test    byte ptr [rbp+0D8h+arg_8], 1
                jz      short loc_14040D1A5
                call    sub_140412440

loc_14040D1A5:                          ; CODE XREF: sub_14040CE80+315↑j
                                        ; sub_14040CE80+31E↑j
                mov     [rbp+0D8h+var_88], rcx
                bt      [rbp+0D8h+arg_10], 9
                jnb     loc_14040D2E3
                lea     r9, [rbp+0D8h+var_158]
                mov     r8b, byte ptr [rbp+0D8h+arg_8]
                and     r8b, 1
                mov     rdx, rcx
                mov     ecx, eax
                shr     eax, 1
                and     eax, 9
                mov     [rbp+0D8h+var_12E], al
                call    sub_140224260
                test    eax, eax
                jl      short loc_14040D212
                cmp     cs:byte_140C4C428, 0
                jz      short loc_14040D1F7
                mov     r8, [rbp+0D8h+var_88]
                mov     rdx, [rbp+0D8h+arg_0]
                mov     ecx, eax
                call    sub_140581810

loc_14040D1F7:                          ; CODE XREF: sub_14040CE80+363↑j
                cmp     cs:byte_140C40664, 0
                jz      loc_14040D2E9
                mov     rcx, [rbp+0D8h+var_88]
                call    sub_140512040
                jmp     loc_14040D2E9
; ---------------------------------------------------------------------------

loc_14040D212:                          ; CODE XREF: sub_14040CE80+35A↑j
                test    byte ptr [rbp+0D8h+arg_8], 1
                jz      short loc_14040D26D
                cmp     [rbp+0D8h+arg_8], 33h ; '3'
                jnz     short loc_14040D263
                mov     r9, gs:188h
                test    byte ptr [r9+3], 4
                jz      short loc_14040D23E
                mov     r8, [r9+5F0h]
                jmp     short loc_14040D247
; ---------------------------------------------------------------------------

loc_14040D23E:                          ; CODE XREF: sub_14040CE80+3B3↑j
                mov     r8, gs:30h

loc_14040D247:                          ; CODE XREF: sub_14040CE80+3BC↑j
                cmp     r8, [rbp+0D8h+var_F0]
                jz      short loc_14040D26D
                mov     ecx, 0C0000102h
                mov     eax, r8d
                shr     r8, 20h
                mov     edx, r8d
                wrmsr
                jmp     loc_14040D2E9
; ---------------------------------------------------------------------------

loc_14040D263:                          ; CODE XREF: sub_14040CE80+3A3↑j
                mov     rcx, [rbp+0D8h+var_88]
                shr     rcx, 20h
                jnz     short loc_14040D2E9

loc_14040D26D:                          ; CODE XREF: sub_14040CE80+399↑j
                                        ; sub_14040CE80+3CB↑j
                mov     ecx, eax
                mov     edx, 2
                cmp     ecx, 0D0000006h
                jz      short loc_14040D2BD
                cmp     ecx, 0C0000005h
                jz      short loc_14040D2A3
                cmp     ecx, 80000001h
                jz      short loc_14040D2A8
                cmp     ecx, 0C00000FDh
                jz      short loc_14040D2A8
                mov     ecx, 0C0000006h
                mov     edx, 3
                mov     r11d, eax
                jmp     short loc_14040D2A8
; ---------------------------------------------------------------------------

loc_14040D2A3:                          ; CODE XREF: sub_14040CE80+402↑j
                mov     ecx, 10000004h

loc_14040D2A8:                          ; CODE XREF: sub_14040CE80+40A↑j
                                        ; sub_14040CE80+412↑j ...
                mov     r10, [rbp+0D8h+var_88]
                movzx   r9, [rbp+0D8h+var_12E]
                mov     r8, [rbp+0D8h+arg_0]
                call    sub_140411740

loc_14040D2BD:                          ; CODE XREF: sub_14040CE80+3FA↑j
                mov     rax, cr8

loc_14040D2C1:                          ; CODE XREF: sub_14040CE80+467↓j
                mov     r10, [rbp+0D8h+arg_0]
                movzx   r9, [rbp+0D8h+var_12E]
                and     eax, 0FFh
                mov     r8, rax
                mov     rdx, [rbp+0D8h+var_88]
                mov     ecx, 0Ah
                call    sub_1404116C0

loc_14040D2E3:                          ; CODE XREF: sub_14040CE80+331↑j
                xor     eax, eax
                mov     al, 0FFh
                jmp     short loc_14040D2C1
; ---------------------------------------------------------------------------

loc_14040D2E9:                          ; CODE XREF: sub_14040CE80+37E↑j
                                        ; sub_14040CE80+38D↑j ...
                mov     rax, cr8
                or      eax, eax
                mov     [rbp+0D8h+var_138], eax
                jnz     short loc_14040D2FD
                mov     ecx, 1
                mov     cr8, rcx

loc_14040D2FD:                          ; CODE XREF: sub_14040CE80+472↑j
                lea     rcx, [rbp+0D8h+var_158]
                call    sub_1402CB270
                mov     ecx, [rbp+0D8h+var_138]
                or      ecx, ecx
                jnz     short loc_14040D311
                mov     cr8, rcx

loc_14040D311:                          ; CODE XREF: sub_14040CE80+48B↑j
                cli
                test    byte ptr [rbp+0D8h+arg_8], 1
                jz      loc_14040D59F
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040D32B
                stac

loc_14040D32B:                          ; CODE XREF: sub_14040CE80+4A6↑j
                                        ; sub_14040CE80+4D6↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14040D358
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_14040D32B
; ---------------------------------------------------------------------------

loc_14040D358:                          ; CODE XREF: sub_14040CE80+4BB↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14040D36A
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14040D36A:                          ; CODE XREF: sub_14040CE80+4E1↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_14040D380
                call    sub_1403FE910

loc_14040D380:                          ; CODE XREF: sub_14040CE80+4F9↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040D3B6
                test    byte ptr [rcx+2], 1
                jz      short loc_14040D3A5
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040D3A5:                          ; CODE XREF: sub_14040CE80+515↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_14040D3B6
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_14040D3B6:                          ; CODE XREF: sub_14040CE80+50F↑j
                                        ; sub_14040CE80+529↑j
                ldmxcsr [rbp+0D8h+var_12C]
                cmp     [rbp+0D8h+var_58], 0
                jz      short loc_14040D3C9
                call    sub_1403FDC00

loc_14040D3C9:                          ; CODE XREF: sub_14040CE80+542↑j
                movaps  xmm0, [rbp+0D8h+var_E8]
                movaps  xmm1, [rbp+0D8h+var_D8]
                movaps  xmm2, [rbp+0D8h+var_C8]
                movaps  xmm3, [rbp+0D8h+var_B8]
                movaps  xmm4, [rbp+0D8h+var_A8]
                movaps  xmm5, [rbp+0D8h+var_98]
                mov     r11, [rbp+0D8h+var_F8]
                mov     r10, [rbp+0D8h+var_100]
                mov     r9, [rbp+0D8h+var_108]
                mov     r8, [rbp+0D8h+var_110]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14040D41E
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040D41E:                          ; CODE XREF: sub_14040CE80+58B↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14040D439
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14040D439:                          ; CODE XREF: sub_14040CE80+5A9↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14040D56F
                call    loc_14040D55D

loc_14040D44F:                          ; CODE XREF: sub_14040CE80+5DC↓p
                add     rsp, 8
                call    loc_14040D566

loc_14040D458:                          ; CODE XREF: sub_14040CE80+5E5↓p
                add     rsp, 8
                call    loc_14040D44F

loc_14040D461:                          ; CODE XREF: sub_14040CE80+5EE↓p
                add     rsp, 8
                call    loc_14040D458

loc_14040D46A:                          ; CODE XREF: sub_14040CE80+5F7↓p
                add     rsp, 8
                call    loc_14040D461

loc_14040D473:                          ; CODE XREF: sub_14040CE80+600↓p
                add     rsp, 8
                call    loc_14040D46A

loc_14040D47C:                          ; CODE XREF: sub_14040CE80+609↓p
                add     rsp, 8
                call    loc_14040D473

loc_14040D485:                          ; CODE XREF: sub_14040CE80+612↓p
                add     rsp, 8
                call    loc_14040D47C

loc_14040D48E:                          ; CODE XREF: sub_14040CE80+61B↓p
                add     rsp, 8
                call    loc_14040D485

loc_14040D497:                          ; CODE XREF: sub_14040CE80+624↓p
                add     rsp, 8
                call    loc_14040D48E

loc_14040D4A0:                          ; CODE XREF: sub_14040CE80+62D↓p
                add     rsp, 8
                call    loc_14040D497

loc_14040D4A9:                          ; CODE XREF: sub_14040CE80+636↓p
                add     rsp, 8
                call    loc_14040D4A0

loc_14040D4B2:                          ; CODE XREF: sub_14040CE80+63F↓p
                add     rsp, 8
                call    loc_14040D4A9

loc_14040D4BB:                          ; CODE XREF: sub_14040CE80+648↓p
                add     rsp, 8
                call    loc_14040D4B2

loc_14040D4C4:                          ; CODE XREF: sub_14040CE80+651↓p
                add     rsp, 8
                call    loc_14040D4BB

loc_14040D4CD:                          ; CODE XREF: sub_14040CE80+65A↓p
                add     rsp, 8
                call    loc_14040D4C4

loc_14040D4D6:                          ; CODE XREF: sub_14040CE80+663↓p
                add     rsp, 8
                call    loc_14040D4CD

loc_14040D4DF:                          ; CODE XREF: sub_14040CE80+66C↓p
                add     rsp, 8
                call    loc_14040D4D6

loc_14040D4E8:                          ; CODE XREF: sub_14040CE80+675↓p
                add     rsp, 8
                call    loc_14040D4DF

loc_14040D4F1:                          ; CODE XREF: sub_14040CE80+67E↓p
                add     rsp, 8
                call    loc_14040D4E8

loc_14040D4FA:                          ; CODE XREF: sub_14040CE80+687↓p
                add     rsp, 8
                call    loc_14040D4F1

loc_14040D503:                          ; CODE XREF: sub_14040CE80+690↓p
                add     rsp, 8
                call    loc_14040D4FA

loc_14040D50C:                          ; CODE XREF: sub_14040CE80+699↓p
                add     rsp, 8
                call    loc_14040D503

loc_14040D515:                          ; CODE XREF: sub_14040CE80+6A2↓p
                add     rsp, 8
                call    loc_14040D50C

loc_14040D51E:                          ; CODE XREF: sub_14040CE80+6AB↓p
                add     rsp, 8
                call    loc_14040D515

loc_14040D527:                          ; CODE XREF: sub_14040CE80+6B4↓p
                add     rsp, 8
                call    loc_14040D51E

loc_14040D530:                          ; CODE XREF: sub_14040CE80+6BD↓p
                add     rsp, 8
                call    loc_14040D527

loc_14040D539:                          ; CODE XREF: sub_14040CE80+6C6↓p
                add     rsp, 8
                call    loc_14040D530

loc_14040D542:                          ; CODE XREF: sub_14040CE80+6CF↓p
                add     rsp, 8
                call    loc_14040D539

loc_14040D54B:                          ; CODE XREF: sub_14040CE80+6D8↓p
                add     rsp, 8
                call    loc_14040D542

loc_14040D554:                          ; CODE XREF: sub_14040CE80+6E1↓p
                add     rsp, 8
                call    loc_14040D54B

loc_14040D55D:                          ; CODE XREF: sub_14040CE80+5CA↑p
                add     rsp, 8
                call    loc_14040D554

loc_14040D566:                          ; CODE XREF: sub_14040CE80+5D3↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040D56F:                          ; CODE XREF: sub_14040CE80+5C4↑j
                mov     rdx, [rbp+0D8h+var_118]
                mov     rcx, [rbp+0D8h+var_120]
                mov     rax, [rbp+0D8h+var_128]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h+var_s0]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040D59A
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14040D59A:                          ; CODE XREF: sub_14040CE80+713↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040D59F:                          ; CODE XREF: sub_14040CE80+499↑j
                ldmxcsr [rbp+0D8h+var_12C]
                movaps  xmm0, [rbp+0D8h+var_E8]
                movaps  xmm1, [rbp+0D8h+var_D8]
                movaps  xmm2, [rbp+0D8h+var_C8]
                movaps  xmm3, [rbp+0D8h+var_B8]
                movaps  xmm4, [rbp+0D8h+var_A8]
                movaps  xmm5, [rbp+0D8h+var_98]
                mov     r11, [rbp+0D8h+var_F8]
                mov     r10, [rbp+0D8h+var_100]
                mov     r9, [rbp+0D8h+var_108]
                mov     r8, [rbp+0D8h+var_110]
                mov     rdx, [rbp+0D8h+var_118]
                mov     rcx, [rbp+0D8h+var_120]
                mov     rax, [rbp+0D8h+var_128]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h+var_s0]
                add     rsp, 0E8h
                iretq
sub_14040CE80   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040D5EA:                         ; DATA XREF: .pdata:00000001400E3CE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040D600   proc near               ; CODE XREF: sub_140A168C0+69↓j
                                        ; sub_140A168C0+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
var_8           = word ptr -8
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040D66A
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040D653
                lfence
                jmp     loc_14040D8A9
; ---------------------------------------------------------------------------

loc_14040D653:                          ; CODE XREF: sub_14040D600+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040D8A9
; ---------------------------------------------------------------------------

loc_14040D66A:                          ; CODE XREF: sub_14040D600+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040D676
                swapgs

loc_14040D676:                          ; CODE XREF: sub_14040D600+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040D6E6
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040D6E6:                          ; CODE XREF: sub_14040D600+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040D70E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040D70E:                          ; CODE XREF: sub_14040D600+F5↑j
                test    edx, 2
                jz      loc_14040D83F
                call    loc_14040D82D

loc_14040D71F:                          ; CODE XREF: sub_14040D600+12C↓p
                add     rsp, 8
                call    loc_14040D836

loc_14040D728:                          ; CODE XREF: sub_14040D600+135↓p
                add     rsp, 8
                call    loc_14040D71F

loc_14040D731:                          ; CODE XREF: sub_14040D600+13E↓p
                add     rsp, 8
                call    loc_14040D728

loc_14040D73A:                          ; CODE XREF: sub_14040D600+147↓p
                add     rsp, 8
                call    loc_14040D731

loc_14040D743:                          ; CODE XREF: sub_14040D600+150↓p
                add     rsp, 8
                call    loc_14040D73A

loc_14040D74C:                          ; CODE XREF: sub_14040D600+159↓p
                add     rsp, 8
                call    loc_14040D743

loc_14040D755:                          ; CODE XREF: sub_14040D600+162↓p
                add     rsp, 8
                call    loc_14040D74C

loc_14040D75E:                          ; CODE XREF: sub_14040D600+16B↓p
                add     rsp, 8
                call    loc_14040D755

loc_14040D767:                          ; CODE XREF: sub_14040D600+174↓p
                add     rsp, 8
                call    loc_14040D75E

loc_14040D770:                          ; CODE XREF: sub_14040D600+17D↓p
                add     rsp, 8
                call    loc_14040D767

loc_14040D779:                          ; CODE XREF: sub_14040D600+186↓p
                add     rsp, 8
                call    loc_14040D770

loc_14040D782:                          ; CODE XREF: sub_14040D600+18F↓p
                add     rsp, 8
                call    loc_14040D779

loc_14040D78B:                          ; CODE XREF: sub_14040D600+198↓p
                add     rsp, 8
                call    loc_14040D782

loc_14040D794:                          ; CODE XREF: sub_14040D600+1A1↓p
                add     rsp, 8
                call    loc_14040D78B

loc_14040D79D:                          ; CODE XREF: sub_14040D600+1AA↓p
                add     rsp, 8
                call    loc_14040D794

loc_14040D7A6:                          ; CODE XREF: sub_14040D600+1B3↓p
                add     rsp, 8
                call    loc_14040D79D

loc_14040D7AF:                          ; CODE XREF: sub_14040D600+1BC↓p
                add     rsp, 8
                call    loc_14040D7A6

loc_14040D7B8:                          ; CODE XREF: sub_14040D600+1C5↓p
                add     rsp, 8
                call    loc_14040D7AF

loc_14040D7C1:                          ; CODE XREF: sub_14040D600+1CE↓p
                add     rsp, 8
                call    loc_14040D7B8

loc_14040D7CA:                          ; CODE XREF: sub_14040D600+1D7↓p
                add     rsp, 8
                call    loc_14040D7C1

loc_14040D7D3:                          ; CODE XREF: sub_14040D600+1E0↓p
                add     rsp, 8
                call    loc_14040D7CA

loc_14040D7DC:                          ; CODE XREF: sub_14040D600+1E9↓p
                add     rsp, 8
                call    loc_14040D7D3

loc_14040D7E5:                          ; CODE XREF: sub_14040D600+1F2↓p
                add     rsp, 8
                call    loc_14040D7DC

loc_14040D7EE:                          ; CODE XREF: sub_14040D600+1FB↓p
                add     rsp, 8
                call    loc_14040D7E5

loc_14040D7F7:                          ; CODE XREF: sub_14040D600+204↓p
                add     rsp, 8
                call    loc_14040D7EE

loc_14040D800:                          ; CODE XREF: sub_14040D600+20D↓p
                add     rsp, 8
                call    loc_14040D7F7

loc_14040D809:                          ; CODE XREF: sub_14040D600+216↓p
                add     rsp, 8
                call    loc_14040D800

loc_14040D812:                          ; CODE XREF: sub_14040D600+21F↓p
                add     rsp, 8
                call    loc_14040D809

loc_14040D81B:                          ; CODE XREF: sub_14040D600+228↓p
                add     rsp, 8
                call    loc_14040D812

loc_14040D824:                          ; CODE XREF: sub_14040D600+231↓p
                add     rsp, 8
                call    loc_14040D81B

loc_14040D82D:                          ; CODE XREF: sub_14040D600+11A↑p
                add     rsp, 8
                call    loc_14040D824

loc_14040D836:                          ; CODE XREF: sub_14040D600+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040D83F:                          ; CODE XREF: sub_14040D600+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040D894
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040D894
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040D894:                          ; CODE XREF: sub_14040D600+250↑j
                                        ; sub_14040D600+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040D8A9
                call    sub_1403FDC80

loc_14040D8A9:                          ; CODE XREF: sub_14040D600+4E↑j
                                        ; sub_14040D600+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040D8E4
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040D8E4
                stac

loc_14040D8E4:                          ; CODE XREF: sub_14040D600+2D6↑j
                                        ; sub_14040D600+2DF↑j
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040D8F1
                sti

loc_14040D8F1:                          ; CODE XREF: sub_14040D600+2EE↑j
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040D968
                fnstcw  [rbp+0E8h+var_8]
                fnstsw  ax
                mov     cx, [rbp+0E8h+var_8]
                and     cx, 3Fh
                not     cx
                and     ax, cx
                mov     ecx, 0C0000090h
                xor     r9, r9
                mov     edx, 1
                mov     r8, [rbp+0E8h]
                test    al, 1
                jz      short loc_14040D936
                test    al, 40h
                jz      short loc_14040D963
                mov     ecx, 0C0000092h
                jmp     short loc_14040D963
; ---------------------------------------------------------------------------

loc_14040D936:                          ; CODE XREF: sub_14040D600+329↑j
                mov     ecx, 0C000008Eh
                test    al, 4
                jnz     short loc_14040D963
                mov     ecx, 0C0000090h
                test    al, 2
                jnz     short loc_14040D963
                mov     ecx, 0C0000091h
                test    al, 8
                jnz     short loc_14040D963
                mov     ecx, 0C0000093h
                test    al, 10h
                jnz     short loc_14040D963
                mov     ecx, 0C000008Fh
                test    al, 20h
                jz      short loc_14040D968

loc_14040D963:                          ; CODE XREF: sub_14040D600+32D↑j
                                        ; sub_14040D600+334↑j ...
                call    sub_140411740

loc_14040D968:                          ; CODE XREF: sub_14040D600+2F8↑j
                                        ; sub_14040D600+361↑j
                mov     edx, 10h
                mov     r10, [rbp+0E8h]
                mov     r9, cr4
                mov     r8, cr0
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040D600   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040D988:                         ; DATA XREF: .pdata:00000001400E3CF4↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040D9C0   proc near               ; CODE XREF: sub_140A16940+6C↓j
                                        ; sub_140A16940+74↓j
                                        ; DATA XREF: ...

var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040DA26
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040DA0F
                lfence
                jmp     loc_14040DC65
; ---------------------------------------------------------------------------

loc_14040DA0F:                          ; CODE XREF: sub_14040D9C0+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040DC65
; ---------------------------------------------------------------------------

loc_14040DA26:                          ; CODE XREF: sub_14040D9C0+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040DA32
                swapgs

loc_14040DA32:                          ; CODE XREF: sub_14040D9C0+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040DAA2
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040DAA2:                          ; CODE XREF: sub_14040D9C0+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040DACA
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040DACA:                          ; CODE XREF: sub_14040D9C0+F1↑j
                test    edx, 2
                jz      loc_14040DBFB
                call    loc_14040DBE9

loc_14040DADB:                          ; CODE XREF: sub_14040D9C0+128↓p
                add     rsp, 8
                call    loc_14040DBF2

loc_14040DAE4:                          ; CODE XREF: sub_14040D9C0+131↓p
                add     rsp, 8
                call    loc_14040DADB

loc_14040DAED:                          ; CODE XREF: sub_14040D9C0+13A↓p
                add     rsp, 8
                call    loc_14040DAE4

loc_14040DAF6:                          ; CODE XREF: sub_14040D9C0+143↓p
                add     rsp, 8
                call    loc_14040DAED

loc_14040DAFF:                          ; CODE XREF: sub_14040D9C0+14C↓p
                add     rsp, 8
                call    loc_14040DAF6

loc_14040DB08:                          ; CODE XREF: sub_14040D9C0+155↓p
                add     rsp, 8
                call    loc_14040DAFF

loc_14040DB11:                          ; CODE XREF: sub_14040D9C0+15E↓p
                add     rsp, 8
                call    loc_14040DB08

loc_14040DB1A:                          ; CODE XREF: sub_14040D9C0+167↓p
                add     rsp, 8
                call    loc_14040DB11

loc_14040DB23:                          ; CODE XREF: sub_14040D9C0+170↓p
                add     rsp, 8
                call    loc_14040DB1A

loc_14040DB2C:                          ; CODE XREF: sub_14040D9C0+179↓p
                add     rsp, 8
                call    loc_14040DB23

loc_14040DB35:                          ; CODE XREF: sub_14040D9C0+182↓p
                add     rsp, 8
                call    loc_14040DB2C

loc_14040DB3E:                          ; CODE XREF: sub_14040D9C0+18B↓p
                add     rsp, 8
                call    loc_14040DB35

loc_14040DB47:                          ; CODE XREF: sub_14040D9C0+194↓p
                add     rsp, 8
                call    loc_14040DB3E

loc_14040DB50:                          ; CODE XREF: sub_14040D9C0+19D↓p
                add     rsp, 8
                call    loc_14040DB47

loc_14040DB59:                          ; CODE XREF: sub_14040D9C0+1A6↓p
                add     rsp, 8
                call    loc_14040DB50

loc_14040DB62:                          ; CODE XREF: sub_14040D9C0+1AF↓p
                add     rsp, 8
                call    loc_14040DB59

loc_14040DB6B:                          ; CODE XREF: sub_14040D9C0+1B8↓p
                add     rsp, 8
                call    loc_14040DB62

loc_14040DB74:                          ; CODE XREF: sub_14040D9C0+1C1↓p
                add     rsp, 8
                call    loc_14040DB6B

loc_14040DB7D:                          ; CODE XREF: sub_14040D9C0+1CA↓p
                add     rsp, 8
                call    loc_14040DB74

loc_14040DB86:                          ; CODE XREF: sub_14040D9C0+1D3↓p
                add     rsp, 8
                call    loc_14040DB7D

loc_14040DB8F:                          ; CODE XREF: sub_14040D9C0+1DC↓p
                add     rsp, 8
                call    loc_14040DB86

loc_14040DB98:                          ; CODE XREF: sub_14040D9C0+1E5↓p
                add     rsp, 8
                call    loc_14040DB8F

loc_14040DBA1:                          ; CODE XREF: sub_14040D9C0+1EE↓p
                add     rsp, 8
                call    loc_14040DB98

loc_14040DBAA:                          ; CODE XREF: sub_14040D9C0+1F7↓p
                add     rsp, 8
                call    loc_14040DBA1

loc_14040DBB3:                          ; CODE XREF: sub_14040D9C0+200↓p
                add     rsp, 8
                call    loc_14040DBAA

loc_14040DBBC:                          ; CODE XREF: sub_14040D9C0+209↓p
                add     rsp, 8
                call    loc_14040DBB3

loc_14040DBC5:                          ; CODE XREF: sub_14040D9C0+212↓p
                add     rsp, 8
                call    loc_14040DBBC

loc_14040DBCE:                          ; CODE XREF: sub_14040D9C0+21B↓p
                add     rsp, 8
                call    loc_14040DBC5

loc_14040DBD7:                          ; CODE XREF: sub_14040D9C0+224↓p
                add     rsp, 8
                call    loc_14040DBCE

loc_14040DBE0:                          ; CODE XREF: sub_14040D9C0+22D↓p
                add     rsp, 8
                call    loc_14040DBD7

loc_14040DBE9:                          ; CODE XREF: sub_14040D9C0+116↑p
                add     rsp, 8
                call    loc_14040DBE0

loc_14040DBF2:                          ; CODE XREF: sub_14040D9C0+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040DBFB:                          ; CODE XREF: sub_14040D9C0+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040DC50
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040DC50
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040DC50:                          ; CODE XREF: sub_14040D9C0+24C↑j
                                        ; sub_14040D9C0+272↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040DC65
                call    sub_1403FDC80

loc_14040DC65:                          ; CODE XREF: sub_14040D9C0+4A↑j
                                        ; sub_14040D9C0+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040DCA0
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040DCA0
                stac

loc_14040DCA0:                          ; CODE XREF: sub_14040D9C0+2D2↑j
                                        ; sub_14040D9C0+2DB↑j
                mov     eax, [rbp+0E0h]
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040DCB3
                sti

loc_14040DCB3:                          ; CODE XREF: sub_14040D9C0+2F0↑j
                mov     ecx, 80000002h
                xor     edx, edx
                mov     r8, [rbp+0D8h+arg_0]
                call    sub_140411740
                nop
                retn
sub_14040D9C0   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040DCC8:                         ; DATA XREF: .pdata:00000001400E3D00↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040DD00   proc near               ; CODE XREF: sub_140A169C0+70↓j
                                        ; DATA XREF: .pdata:00000001400E3D0C↑o ...

var_178         = xmmword ptr -178h
var_168         = byte ptr -168h
var_140         = byte ptr -140h
var_13F         = byte ptr -13Fh
var_13E         = byte ptr -13Eh
var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_68          = word ptr -68h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = word ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = word ptr  20h

                sub     rsp, 8
                push    rbp
                push    rsi
                sub     rsp, 150h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 0
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    byte ptr [rbp+0E8h+arg_0], 1
                jnz     loc_14040DDD9
                mov     ecx, 0C0000101h
                rdmsr
                mov     [rbp+0E8h+var_100], eax
                mov     [rbp+0E8h+var_FC], edx
                mov     eax, 50h ; 'P'
                lsl     eax, eax
                jz      short loc_14040DD8E
                mov     rax, 0FFFFF78000000000h
                test    byte ptr [rax+294h], 0FFh
                jnz     short loc_14040DD7D
                sgdt    fword ptr [rbp+0E8h+var_F8]
                mov     rdx, qword ptr [rbp+0E8h+var_F8+2]
                mov     rdx, [rdx-1F40h]
                jmp     short loc_14040DDBE
; ---------------------------------------------------------------------------

loc_14040DD7D:                          ; CODE XREF: sub_14040DD00+6A↑j
                rdtscp
                movzx   eax, cl
                shr     ecx, 8
                shl     ecx, 6
                mov     r8d, ecx
                jmp     short loc_14040DD9F
; ---------------------------------------------------------------------------

loc_14040DD8E:                          ; CODE XREF: sub_14040DD00+57↑j
                mov     r8d, eax
                and     r8d, 3FFh
                shl     r8d, 6
                shr     eax, 0Eh

loc_14040DD9F:                          ; CODE XREF: sub_14040DD00+8C↑j
                lea     rcx, qword_140CFDCC0
                lea     rdx, dword_140D024D0
                or      eax, r8d
                mov     eax, [rdx+rax*4]
                mov     rdx, [rcx+rax*8]
                sub     rdx, 180h

loc_14040DDBE:                          ; CODE XREF: sub_14040DD00+7B↑j
                mov     eax, edx
                shr     rdx, 20h
                mov     ecx, 0C0000101h
                wrmsr
                mov     rax, cr2
                mov     [rbp+0E8h+var_98], rax
                call    sub_140402180
                jmp     short loc_14040DE0B
; ---------------------------------------------------------------------------

loc_14040DDD9:                          ; CODE XREF: sub_14040DD00+3C↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040DDE5
                swapgs

loc_14040DDE5:                          ; CODE XREF: sub_14040DD00+E0↑j
                lfence
                mov     r10, gs:188h
                call    sub_140402180
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040DE0B
                call    sub_1403FDC80

loc_14040DE0B:                          ; CODE XREF: sub_14040DD00+D7↑j
                                        ; sub_14040DD00+104↑j
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                cmp     byte ptr gs:801Ah, 0
                jz      short loc_14040DE41
                call    sub_140519B80

loc_14040DE41:                          ; CODE XREF: sub_14040DD00+13A↑j
                lea     rax, loc_140406D57
                cmp     rax, [rbp+0E8h]
                jnb     short loc_14040DE6A
                lea     rax, loc_140406D70
                cmp     rax, [rbp+0E8h]
                jb      short loc_14040DE6A
                lea     rcx, [rbp+0E8h+var_168]
                call    sub_1402CB270

loc_14040DE6A:                          ; CODE XREF: sub_14040DD00+14F↑j
                                        ; sub_14040DD00+15F↑j
                xor     esi, esi
                inc     dword ptr gs:8000h
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040DE80
                clac

loc_14040DE80:                          ; CODE XREF: sub_14040DD00+17B↑j
                mov     ecx, 0Fh
                cmp     cs:dword_140CFC660, 0
                jz      short loc_14040DE95
                call    sub_140512DA0
                jmp     short loc_14040DE9D
; ---------------------------------------------------------------------------

loc_14040DE95:                          ; CODE XREF: sub_14040DD00+18C↑j
                mov     rax, cr8
                mov     cr8, rcx

loc_14040DE9D:                          ; CODE XREF: sub_14040DD00+193↑j
                mov     [rbp+0E8h+var_13F], al
                sti
                lea     rcx, [rbp+0E8h+var_168]
                xor     edx, edx
                call    sub_1405268B0
                inc     byte ptr gs:7D67h
                test    byte ptr [rbp+0E8h+arg_0], 1
                jnz     loc_14040DF67
                mov     rax, [rbp+0E8h+arg_10]
                mov     rcx, gs:8
                mov     rcx, [rcx+34h]
                cmp     rax, rcx
                ja      short loc_14040DEFD
                mov     rdx, 6000h
                mov     r8, 1D0h
                test    cs:byte_140E01840, 1
                cmovnz  edx, r8d
                sub     rcx, rdx
                cmp     rax, rcx
                jbe     short loc_14040DEFD
                jmp     short loc_14040DF28
; ---------------------------------------------------------------------------

loc_14040DEFD:                          ; CODE XREF: sub_14040DD00+1D8↑j
                                        ; sub_14040DD00+1F9↑j
                test    cs:byte_140E01840, 1
                jz      short loc_14040DF38
                mov     rcx, gs:8
                mov     rcx, [rcx+34h]
                mov     rcx, [rcx+8]
                cmp     rax, rcx
                ja      short loc_14040DF38
                sub     rcx, 5FE0h
                cmp     rax, rcx
                jbe     short loc_14040DF38

loc_14040DF28:                          ; CODE XREF: sub_14040DD00+1FB↑j
                or      [rbp+0E8h+arg_18], 4
                lock inc cs:qword_140C2AE00

loc_14040DF38:                          ; CODE XREF: sub_14040DD00+204↑j
                                        ; sub_14040DD00+21A↑j ...
                mov     rax, [rbp+0E8h]
                cmp     byte ptr [rax], 0F4h
                jnz     short loc_14040DF67
                dec     rax
                cmp     word ptr [rax], 0F4FBh
                jnz     short loc_14040DF67
                and     [rbp+0E8h+arg_8], 0FFFFFDFFh
                mov     [rbp+0E8h], rax
                lock inc cs:qword_140C2AE50

loc_14040DF67:                          ; CODE XREF: sub_14040DD00+1BB↑j
                                        ; sub_14040DD00+242↑j ...
                sub     rsp, 10h
                mov     r8, rsp
                lea     rcx, [rbp+0E8h+var_168]
                call    sub_14040E240
                test    dword ptr [rsp+178h+var_178], 1
                jz      short loc_14040DFA1
                mov     rcx, gs:188h
                mov     rcx, [rcx+28h]
                sub     rcx, 1A0h
                movdqa  xmm0, [rsp+178h+var_178]
                movdqa  xmmword ptr [rcx], xmm0
                mov     [rbp+0E8h+var_13D], 1

loc_14040DFA1:                          ; CODE XREF: sub_14040DD00+27E↑j
                add     rsp, 10h
                dec     byte ptr gs:7D67h
                cli
                movzx   ecx, [rbp+0E8h+var_13F]
                cmp     cs:dword_140CFC660, 0
                jz      short loc_14040DFC2
                call    sub_140512DA0
                jmp     short loc_14040DFC6
; ---------------------------------------------------------------------------

loc_14040DFC2:                          ; CODE XREF: sub_14040DD00+2B9↑j
                mov     cr8, rcx

loc_14040DFC6:                          ; CODE XREF: sub_14040DD00+2C0↑j
                mov     rsi, [rbp+0E8h+var_18]
                cli
                test    byte ptr [rbp+0E8h+arg_0], 1
                jz      loc_14040E194
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040DFE7
                stac

loc_14040DFE7:                          ; CODE XREF: sub_14040DD00+2E2↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040E00C
                test    byte ptr [rcx+2], 1
                jz      short loc_14040E00C
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040E00C:                          ; CODE XREF: sub_14040DD00+2F6↑j
                                        ; sub_14040DD00+2FC↑j
                ldmxcsr [rbp+0E8h+var_13C]
                cmp     [rbp+0E8h+var_68], 0
                jz      short loc_14040E01F
                call    sub_1403FDC00

loc_14040E01F:                          ; CODE XREF: sub_14040DD00+318↑j
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                cmp     [rbp+0E8h+var_13D], 0
                jz      loc_14040E13A
                mov     rdx, gs:188h
                mov     rcx, [rdx+28h]
                sub     rcx, 28h ; '('
                mov     rax, [rbp+0E8h]
                mov     [rcx], rax
                movzx   rax, [rbp+0E8h+arg_0]
                mov     [rcx+8], rax
                mov     eax, [rbp+0E8h+arg_8]
                mov     [rcx+10h], rax
                mov     rax, [rbp+0E8h+arg_10]
                mov     [rcx+18h], rax
                movzx   rax, [rbp+0E8h+arg_18]
                mov     [rcx+20h], rax
                mov     [rbp+0E8h+arg_18], 18h
                mov     [rbp+0E8h+arg_0], 10h
                and     [rbp+0E8h+arg_8], 0FFFFFDFFh
                lea     rax, sub_14040E340
                test    cs:byte_140E01840, 1
                jz      short loc_14040E12A
                mov     rax, gs:38h
                mov     rdx, gs:9000h
                btr     rdx, 3Fh ; '?'
                mov     [rax+45E8h], rdx
                mov     rdx, gs:18h
                mov     [rax+45E0h], rdx
                lea     rax, [rax+41D8h]
                mov     rdx, [rcx]
                mov     [rax], rdx
                mov     rdx, [rcx+8]
                mov     [rax+8], rdx
                mov     rdx, [rcx+10h]
                mov     [rax+10h], rdx
                mov     rdx, [rcx+18h]
                mov     [rax+18h], rdx
                mov     rdx, [rcx+20h]
                mov     [rax+20h], rcx
                mov     rcx, rax
                lea     rax, sub_140A16A40

loc_14040E12A:                          ; CODE XREF: sub_14040DD00+3C3↑j
                mov     [rbp+0E8h], rax
                mov     [rbp+0E8h+arg_10], rcx
                jmp     short loc_14040E15E
; ---------------------------------------------------------------------------

loc_14040E13A:                          ; CODE XREF: sub_14040DD00+34B↑j
                movzx   eax, [rbp+0E8h+var_140]
                mov     gs:853h, al
                cmp     byte ptr gs:27Bh, 0
                jz      short loc_14040E15E
                movzx   eax, [rbp+0E8h+var_13E]
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040E15E:                          ; CODE XREF: sub_14040DD00+438↑j
                                        ; sub_14040DD00+44F↑j
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040E189
                jmp     sub_140A17CC0
; ---------------------------------------------------------------------------

loc_14040E189:                          ; CODE XREF: sub_14040DD00+482↑j
                swapgs
                lfence
                jmp     sub_1403FE890
; ---------------------------------------------------------------------------

loc_14040E194:                          ; CODE XREF: sub_14040DD00+2D5↑j
                ldmxcsr [rbp+0E8h+var_13C]
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                movzx   eax, [rbp+0E8h+var_140]
                mov     gs:853h, al
                cmp     byte ptr gs:27Bh, 0
                jz      short loc_14040E1D4
                movzx   eax, [rbp+0E8h+var_13E]
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040E1D4:                          ; CODE XREF: sub_14040DD00+4C5↑j
                mov     eax, [rbp+0E8h+var_100]
                mov     edx, [rbp+0E8h+var_FC]
                mov     ecx, 0C0000101h
                wrmsr
                mov     rax, [rbp+0E8h+var_98]
                mov     cr2, rax
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040E223
                jmp     sub_140A17CC0
; ---------------------------------------------------------------------------

loc_14040E223:                          ; CODE XREF: sub_14040DD00+51C↑j
                jmp     sub_1403FE890
; ---------------------------------------------------------------------------
                retn
sub_14040DD00   endp

; ---------------------------------------------------------------------------
algn_14040E229:                         ; DATA XREF: .pdata:00000001400E3D0C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14040E240   proc near               ; CODE XREF: sub_14040DD00+272↑p
                                        ; DATA XREF: .pdata:00000001400E3D18↑o

var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_38          = byte ptr -38h

                sub     rsp, 138h
                lea     rax, [rsp+138h+var_38]
                movaps  [rsp+138h+var_108], xmm6
                movaps  [rsp+138h+var_F8], xmm7
                movaps  [rsp+138h+var_E8], xmm8
                movaps  [rsp+138h+var_D8], xmm9
                movaps  [rsp+138h+var_C8], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                mov     rdx, rsp
                mov     dword ptr [r8], 0
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_14040E2B5
                xor     r8, r8

loc_14040E2B5:                          ; CODE XREF: sub_14040E240+70↑j
                call    sub_140512880
                lea     rcx, [rsp+138h+var_38]
                movaps  xmm6, [rsp+138h+var_108]
                movaps  xmm7, [rsp+138h+var_F8]
                movaps  xmm8, [rsp+138h+var_E8]
                movaps  xmm9, [rsp+138h+var_D8]
                movaps  xmm10, [rsp+138h+var_C8]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                add     rsp, 138h
                retn
sub_14040E240   endp

; ---------------------------------------------------------------------------
algn_14040E31A:                         ; DATA XREF: .pdata:00000001400E3D18↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040E340   proc near               ; CODE XREF: sub_140A16A40+69↓j
                                        ; sub_140A16A40+71↓j
                                        ; DATA XREF: ...

var_178         = byte ptr -178h
var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
var_10          = qword ptr -10h
arg_0           = byte ptr  8

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040E3AA
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040E393
                lfence
                jmp     loc_14040E5E9
; ---------------------------------------------------------------------------

loc_14040E393:                          ; CODE XREF: sub_14040E340+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040E5E9
; ---------------------------------------------------------------------------

loc_14040E3AA:                          ; CODE XREF: sub_14040E340+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040E3B6
                swapgs

loc_14040E3B6:                          ; CODE XREF: sub_14040E340+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040E426
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040E426:                          ; CODE XREF: sub_14040E340+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040E44E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040E44E:                          ; CODE XREF: sub_14040E340+F5↑j
                test    edx, 2
                jz      loc_14040E57F
                call    loc_14040E56D

loc_14040E45F:                          ; CODE XREF: sub_14040E340+12C↓p
                add     rsp, 8
                call    loc_14040E576

loc_14040E468:                          ; CODE XREF: sub_14040E340+135↓p
                add     rsp, 8
                call    loc_14040E45F

loc_14040E471:                          ; CODE XREF: sub_14040E340+13E↓p
                add     rsp, 8
                call    loc_14040E468

loc_14040E47A:                          ; CODE XREF: sub_14040E340+147↓p
                add     rsp, 8
                call    loc_14040E471

loc_14040E483:                          ; CODE XREF: sub_14040E340+150↓p
                add     rsp, 8
                call    loc_14040E47A

loc_14040E48C:                          ; CODE XREF: sub_14040E340+159↓p
                add     rsp, 8
                call    loc_14040E483

loc_14040E495:                          ; CODE XREF: sub_14040E340+162↓p
                add     rsp, 8
                call    loc_14040E48C

loc_14040E49E:                          ; CODE XREF: sub_14040E340+16B↓p
                add     rsp, 8
                call    loc_14040E495

loc_14040E4A7:                          ; CODE XREF: sub_14040E340+174↓p
                add     rsp, 8
                call    loc_14040E49E

loc_14040E4B0:                          ; CODE XREF: sub_14040E340+17D↓p
                add     rsp, 8
                call    loc_14040E4A7

loc_14040E4B9:                          ; CODE XREF: sub_14040E340+186↓p
                add     rsp, 8
                call    loc_14040E4B0

loc_14040E4C2:                          ; CODE XREF: sub_14040E340+18F↓p
                add     rsp, 8
                call    loc_14040E4B9

loc_14040E4CB:                          ; CODE XREF: sub_14040E340+198↓p
                add     rsp, 8
                call    loc_14040E4C2

loc_14040E4D4:                          ; CODE XREF: sub_14040E340+1A1↓p
                add     rsp, 8
                call    loc_14040E4CB

loc_14040E4DD:                          ; CODE XREF: sub_14040E340+1AA↓p
                add     rsp, 8
                call    loc_14040E4D4

loc_14040E4E6:                          ; CODE XREF: sub_14040E340+1B3↓p
                add     rsp, 8
                call    loc_14040E4DD

loc_14040E4EF:                          ; CODE XREF: sub_14040E340+1BC↓p
                add     rsp, 8
                call    loc_14040E4E6

loc_14040E4F8:                          ; CODE XREF: sub_14040E340+1C5↓p
                add     rsp, 8
                call    loc_14040E4EF

loc_14040E501:                          ; CODE XREF: sub_14040E340+1CE↓p
                add     rsp, 8
                call    loc_14040E4F8

loc_14040E50A:                          ; CODE XREF: sub_14040E340+1D7↓p
                add     rsp, 8
                call    loc_14040E501

loc_14040E513:                          ; CODE XREF: sub_14040E340+1E0↓p
                add     rsp, 8
                call    loc_14040E50A

loc_14040E51C:                          ; CODE XREF: sub_14040E340+1E9↓p
                add     rsp, 8
                call    loc_14040E513

loc_14040E525:                          ; CODE XREF: sub_14040E340+1F2↓p
                add     rsp, 8
                call    loc_14040E51C

loc_14040E52E:                          ; CODE XREF: sub_14040E340+1FB↓p
                add     rsp, 8
                call    loc_14040E525

loc_14040E537:                          ; CODE XREF: sub_14040E340+204↓p
                add     rsp, 8
                call    loc_14040E52E

loc_14040E540:                          ; CODE XREF: sub_14040E340+20D↓p
                add     rsp, 8
                call    loc_14040E537

loc_14040E549:                          ; CODE XREF: sub_14040E340+216↓p
                add     rsp, 8
                call    loc_14040E540

loc_14040E552:                          ; CODE XREF: sub_14040E340+21F↓p
                add     rsp, 8
                call    loc_14040E549

loc_14040E55B:                          ; CODE XREF: sub_14040E340+228↓p
                add     rsp, 8
                call    loc_14040E552

loc_14040E564:                          ; CODE XREF: sub_14040E340+231↓p
                add     rsp, 8
                call    loc_14040E55B

loc_14040E56D:                          ; CODE XREF: sub_14040E340+11A↑p
                add     rsp, 8
                call    loc_14040E564

loc_14040E576:                          ; CODE XREF: sub_14040E340+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040E57F:                          ; CODE XREF: sub_14040E340+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040E5D4
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040E5D4
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040E5D4:                          ; CODE XREF: sub_14040E340+250↑j
                                        ; sub_14040E340+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040E5E9
                call    sub_1403FDC80

loc_14040E5E9:                          ; CODE XREF: sub_14040E340+4E↑j
                                        ; sub_14040E340+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040E624
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040E624
                stac

loc_14040E624:                          ; CODE XREF: sub_14040E340+2D6↑j
                                        ; sub_14040E340+2DF↑j
                sub     rsp, 30h
                sti
                mov     r9, gs:188h
                bt      dword ptr [r9+74h], 8
                jnb     short loc_14040E648
                call    sub_140412440
                mov     r9, gs:188h

loc_14040E648:                          ; CODE XREF: sub_14040E340+2F8↑j
                lea     rcx, [rsp+198h+var_178]
                call    sub_140526870
                cli
                test    [rbp+0E8h+arg_0], 1
                jz      loc_14040E8E0
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040E66C
                stac

loc_14040E66C:                          ; CODE XREF: sub_14040E340+327↑j
                                        ; sub_14040E340+357↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14040E699
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_14040E66C
; ---------------------------------------------------------------------------

loc_14040E699:                          ; CODE XREF: sub_14040E340+33C↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14040E6AB
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14040E6AB:                          ; CODE XREF: sub_14040E340+362↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_14040E6C1
                call    sub_1403FE910

loc_14040E6C1:                          ; CODE XREF: sub_14040E340+37A↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040E6F7
                test    byte ptr [rcx+2], 1
                jz      short loc_14040E6E6
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040E6E6:                          ; CODE XREF: sub_14040E340+396↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_14040E6F7
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_14040E6F7:                          ; CODE XREF: sub_14040E340+390↑j
                                        ; sub_14040E340+3AA↑j
                ldmxcsr [rbp+0E8h+var_13C]
                cmp     [rbp+0E8h+var_68], 0
                jz      short loc_14040E70A
                call    sub_1403FDC00

loc_14040E70A:                          ; CODE XREF: sub_14040E340+3C3↑j
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14040E75F
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040E75F:                          ; CODE XREF: sub_14040E340+40C↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14040E77A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14040E77A:                          ; CODE XREF: sub_14040E340+42A↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14040E8B0
                call    loc_14040E89E

loc_14040E790:                          ; CODE XREF: sub_14040E340+45D↓p
                add     rsp, 8
                call    loc_14040E8A7

loc_14040E799:                          ; CODE XREF: sub_14040E340+466↓p
                add     rsp, 8
                call    loc_14040E790

loc_14040E7A2:                          ; CODE XREF: sub_14040E340+46F↓p
                add     rsp, 8
                call    loc_14040E799

loc_14040E7AB:                          ; CODE XREF: sub_14040E340+478↓p
                add     rsp, 8
                call    loc_14040E7A2

loc_14040E7B4:                          ; CODE XREF: sub_14040E340+481↓p
                add     rsp, 8
                call    loc_14040E7AB

loc_14040E7BD:                          ; CODE XREF: sub_14040E340+48A↓p
                add     rsp, 8
                call    loc_14040E7B4

loc_14040E7C6:                          ; CODE XREF: sub_14040E340+493↓p
                add     rsp, 8
                call    loc_14040E7BD

loc_14040E7CF:                          ; CODE XREF: sub_14040E340+49C↓p
                add     rsp, 8
                call    loc_14040E7C6

loc_14040E7D8:                          ; CODE XREF: sub_14040E340+4A5↓p
                add     rsp, 8
                call    loc_14040E7CF

loc_14040E7E1:                          ; CODE XREF: sub_14040E340+4AE↓p
                add     rsp, 8
                call    loc_14040E7D8

loc_14040E7EA:                          ; CODE XREF: sub_14040E340+4B7↓p
                add     rsp, 8
                call    loc_14040E7E1

loc_14040E7F3:                          ; CODE XREF: sub_14040E340+4C0↓p
                add     rsp, 8
                call    loc_14040E7EA

loc_14040E7FC:                          ; CODE XREF: sub_14040E340+4C9↓p
                add     rsp, 8
                call    loc_14040E7F3

loc_14040E805:                          ; CODE XREF: sub_14040E340+4D2↓p
                add     rsp, 8
                call    loc_14040E7FC

loc_14040E80E:                          ; CODE XREF: sub_14040E340+4DB↓p
                add     rsp, 8
                call    loc_14040E805

loc_14040E817:                          ; CODE XREF: sub_14040E340+4E4↓p
                add     rsp, 8
                call    loc_14040E80E

loc_14040E820:                          ; CODE XREF: sub_14040E340+4ED↓p
                add     rsp, 8
                call    loc_14040E817

loc_14040E829:                          ; CODE XREF: sub_14040E340+4F6↓p
                add     rsp, 8
                call    loc_14040E820

loc_14040E832:                          ; CODE XREF: sub_14040E340+4FF↓p
                add     rsp, 8
                call    loc_14040E829

loc_14040E83B:                          ; CODE XREF: sub_14040E340+508↓p
                add     rsp, 8
                call    loc_14040E832

loc_14040E844:                          ; CODE XREF: sub_14040E340+511↓p
                add     rsp, 8
                call    loc_14040E83B

loc_14040E84D:                          ; CODE XREF: sub_14040E340+51A↓p
                add     rsp, 8
                call    loc_14040E844

loc_14040E856:                          ; CODE XREF: sub_14040E340+523↓p
                add     rsp, 8
                call    loc_14040E84D

loc_14040E85F:                          ; CODE XREF: sub_14040E340+52C↓p
                add     rsp, 8
                call    loc_14040E856

loc_14040E868:                          ; CODE XREF: sub_14040E340+535↓p
                add     rsp, 8
                call    loc_14040E85F

loc_14040E871:                          ; CODE XREF: sub_14040E340+53E↓p
                add     rsp, 8
                call    loc_14040E868

loc_14040E87A:                          ; CODE XREF: sub_14040E340+547↓p
                add     rsp, 8
                call    loc_14040E871

loc_14040E883:                          ; CODE XREF: sub_14040E340+550↓p
                add     rsp, 8
                call    loc_14040E87A

loc_14040E88C:                          ; CODE XREF: sub_14040E340+559↓p
                add     rsp, 8
                call    loc_14040E883

loc_14040E895:                          ; CODE XREF: sub_14040E340+562↓p
                add     rsp, 8
                call    loc_14040E88C

loc_14040E89E:                          ; CODE XREF: sub_14040E340+44B↑p
                add     rsp, 8
                call    loc_14040E895

loc_14040E8A7:                          ; CODE XREF: sub_14040E340+454↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040E8B0:                          ; CODE XREF: sub_14040E340+445↑j
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040E8DB
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14040E8DB:                          ; CODE XREF: sub_14040E340+594↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040E8E0:                          ; CODE XREF: sub_14040E340+31A↑j
                ldmxcsr [rbp+0E8h+var_13C]
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                iretq
sub_14040E340   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040E92B:                         ; DATA XREF: .pdata:00000001400E3D24↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040E940   proc near               ; CODE XREF: sub_140A16AC0+69↓j
                                        ; sub_140A16AC0+71↓j
                                        ; DATA XREF: ...

var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
arg_0           = word ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    byte ptr [rbp+0E8h+arg_0], 1
                jnz     short loc_14040E9AA
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040E993
                lfence
                jmp     loc_14040EBE9
; ---------------------------------------------------------------------------

loc_14040E993:                          ; CODE XREF: sub_14040E940+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040EBE9
; ---------------------------------------------------------------------------

loc_14040E9AA:                          ; CODE XREF: sub_14040E940+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040E9B6
                swapgs

loc_14040E9B6:                          ; CODE XREF: sub_14040E940+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040EA26
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040EA26:                          ; CODE XREF: sub_14040E940+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040EA4E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040EA4E:                          ; CODE XREF: sub_14040E940+F5↑j
                test    edx, 2
                jz      loc_14040EB7F
                call    loc_14040EB6D

loc_14040EA5F:                          ; CODE XREF: sub_14040E940+12C↓p
                add     rsp, 8
                call    loc_14040EB76

loc_14040EA68:                          ; CODE XREF: sub_14040E940+135↓p
                add     rsp, 8
                call    loc_14040EA5F

loc_14040EA71:                          ; CODE XREF: sub_14040E940+13E↓p
                add     rsp, 8
                call    loc_14040EA68

loc_14040EA7A:                          ; CODE XREF: sub_14040E940+147↓p
                add     rsp, 8
                call    loc_14040EA71

loc_14040EA83:                          ; CODE XREF: sub_14040E940+150↓p
                add     rsp, 8
                call    loc_14040EA7A

loc_14040EA8C:                          ; CODE XREF: sub_14040E940+159↓p
                add     rsp, 8
                call    loc_14040EA83

loc_14040EA95:                          ; CODE XREF: sub_14040E940+162↓p
                add     rsp, 8
                call    loc_14040EA8C

loc_14040EA9E:                          ; CODE XREF: sub_14040E940+16B↓p
                add     rsp, 8
                call    loc_14040EA95

loc_14040EAA7:                          ; CODE XREF: sub_14040E940+174↓p
                add     rsp, 8
                call    loc_14040EA9E

loc_14040EAB0:                          ; CODE XREF: sub_14040E940+17D↓p
                add     rsp, 8
                call    loc_14040EAA7

loc_14040EAB9:                          ; CODE XREF: sub_14040E940+186↓p
                add     rsp, 8
                call    loc_14040EAB0

loc_14040EAC2:                          ; CODE XREF: sub_14040E940+18F↓p
                add     rsp, 8
                call    loc_14040EAB9

loc_14040EACB:                          ; CODE XREF: sub_14040E940+198↓p
                add     rsp, 8
                call    loc_14040EAC2

loc_14040EAD4:                          ; CODE XREF: sub_14040E940+1A1↓p
                add     rsp, 8
                call    loc_14040EACB

loc_14040EADD:                          ; CODE XREF: sub_14040E940+1AA↓p
                add     rsp, 8
                call    loc_14040EAD4

loc_14040EAE6:                          ; CODE XREF: sub_14040E940+1B3↓p
                add     rsp, 8
                call    loc_14040EADD

loc_14040EAEF:                          ; CODE XREF: sub_14040E940+1BC↓p
                add     rsp, 8
                call    loc_14040EAE6

loc_14040EAF8:                          ; CODE XREF: sub_14040E940+1C5↓p
                add     rsp, 8
                call    loc_14040EAEF

loc_14040EB01:                          ; CODE XREF: sub_14040E940+1CE↓p
                add     rsp, 8
                call    loc_14040EAF8

loc_14040EB0A:                          ; CODE XREF: sub_14040E940+1D7↓p
                add     rsp, 8
                call    loc_14040EB01

loc_14040EB13:                          ; CODE XREF: sub_14040E940+1E0↓p
                add     rsp, 8
                call    loc_14040EB0A

loc_14040EB1C:                          ; CODE XREF: sub_14040E940+1E9↓p
                add     rsp, 8
                call    loc_14040EB13

loc_14040EB25:                          ; CODE XREF: sub_14040E940+1F2↓p
                add     rsp, 8
                call    loc_14040EB1C

loc_14040EB2E:                          ; CODE XREF: sub_14040E940+1FB↓p
                add     rsp, 8
                call    loc_14040EB25

loc_14040EB37:                          ; CODE XREF: sub_14040E940+204↓p
                add     rsp, 8
                call    loc_14040EB2E

loc_14040EB40:                          ; CODE XREF: sub_14040E940+20D↓p
                add     rsp, 8
                call    loc_14040EB37

loc_14040EB49:                          ; CODE XREF: sub_14040E940+216↓p
                add     rsp, 8
                call    loc_14040EB40

loc_14040EB52:                          ; CODE XREF: sub_14040E940+21F↓p
                add     rsp, 8
                call    loc_14040EB49

loc_14040EB5B:                          ; CODE XREF: sub_14040E940+228↓p
                add     rsp, 8
                call    loc_14040EB52

loc_14040EB64:                          ; CODE XREF: sub_14040E940+231↓p
                add     rsp, 8
                call    loc_14040EB5B

loc_14040EB6D:                          ; CODE XREF: sub_14040E940+11A↑p
                add     rsp, 8
                call    loc_14040EB64

loc_14040EB76:                          ; CODE XREF: sub_14040E940+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040EB7F:                          ; CODE XREF: sub_14040E940+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040EBD4
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040EBD4
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040EBD4:                          ; CODE XREF: sub_14040E940+250↑j
                                        ; sub_14040E940+276↑j
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040EBE9
                call    sub_1403FDC80

loc_14040EBE9:                          ; CODE XREF: sub_14040E940+4E↑j
                                        ; sub_14040E940+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040EC24
                test    byte ptr [rbp+0E8h+arg_0], 1
                jz      short loc_14040EC24
                stac

loc_14040EC24:                          ; CODE XREF: sub_14040E940+2D6↑j
                                        ; sub_14040E940+2DF↑j
                mov     ax, word ptr [rbp+0E8h+var_13C]
                test    [rbp+0E8h+arg_8], 200h
                jz      short loc_14040EC35
                sti

loc_14040EC35:                          ; CODE XREF: sub_14040E940+2F2↑j
                mov     cx, ax
                shr     cx, 7
                and     cx, 3Fh
                not     cx
                movzx   r10d, ax
                and     ax, cx
                mov     edx, 2
                mov     r8, [rbp+0E8h]
                xor     r9, r9
                cmp     [rbp+0E8h+arg_0], 23h ; '#'
                jz      short loc_14040EC9E
                mov     ecx, 0C0000090h
                test    al, 1
                jnz     short loc_14040EC99
                mov     ecx, 0C000008Eh
                test    al, 4
                jnz     short loc_14040EC99
                mov     ecx, 0C0000090h
                test    al, 2
                jnz     short loc_14040EC99
                mov     ecx, 0C0000091h
                test    al, 8
                jnz     short loc_14040EC99
                mov     ecx, 0C0000093h
                test    al, 10h
                jnz     short loc_14040EC99
                mov     ecx, 0C000008Fh
                test    al, 20h
                jz      short loc_14040ECC0

loc_14040EC99:                          ; CODE XREF: sub_14040E940+32A↑j
                                        ; sub_14040E940+333↑j ...
                call    sub_140411740

loc_14040EC9E:                          ; CODE XREF: sub_14040E940+321↑j
                mov     ecx, 0C00002B5h
                test    al, 1
                jnz     short loc_14040EC99
                test    al, 4
                jnz     short loc_14040EC99
                test    al, 2
                jnz     short loc_14040EC99
                mov     ecx, 0C00002B4h
                test    al, 8
                jnz     short loc_14040EC99
                test    al, 10h
                jnz     short loc_14040EC99
                test    al, 20h
                jnz     short loc_14040EC99

loc_14040ECC0:                          ; CODE XREF: sub_14040E940+357↑j
                mov     r10, [rbp+0E8h]
                mov     r9, cr4
                mov     r8, cr0
                mov     edx, 9
                mov     ecx, 7Fh
                call    sub_1404116C0
                nop
                retn
sub_14040E940   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040ECE0:                         ; DATA XREF: .pdata:00000001400E3D30↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_14040ED00   proc near               ; CODE XREF: sub_140A16B40+69↓j
                                        ; sub_140A16B40+71↓j
                                        ; DATA XREF: ...

var_148         = dword ptr -148h
var_13D         = byte ptr -13Dh
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_68          = word ptr -68h
var_10          = qword ptr -10h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_13D], 1
                mov     [rbp+0E8h+var_138], rax
                mov     [rbp+0E8h+var_130], rcx
                mov     [rbp+0E8h+var_128], rdx
                mov     [rbp+0E8h+var_120], r8
                mov     [rbp+0E8h+var_118], r9
                mov     [rbp+0E8h+var_110], r10
                mov     [rbp+0E8h+var_108], r11
                test    [rbp+0E8h+arg_0], 1
                jnz     short loc_14040ED6A
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040ED53
                lfence
                jmp     loc_14040EF60
; ---------------------------------------------------------------------------

loc_14040ED53:                          ; CODE XREF: sub_14040ED00+49↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040EF60
; ---------------------------------------------------------------------------

loc_14040ED6A:                          ; CODE XREF: sub_14040ED00+3B↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040ED76
                swapgs

loc_14040ED76:                          ; CODE XREF: sub_14040ED00+71↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040EDE6
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040EDE6:                          ; CODE XREF: sub_14040ED00+D3↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040EE0E
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040EE0E:                          ; CODE XREF: sub_14040ED00+F5↑j
                test    edx, 2
                jz      loc_14040EF3F
                call    loc_14040EF2D

loc_14040EE1F:                          ; CODE XREF: sub_14040ED00+12C↓p
                add     rsp, 8
                call    loc_14040EF36

loc_14040EE28:                          ; CODE XREF: sub_14040ED00+135↓p
                add     rsp, 8
                call    loc_14040EE1F

loc_14040EE31:                          ; CODE XREF: sub_14040ED00+13E↓p
                add     rsp, 8
                call    loc_14040EE28

loc_14040EE3A:                          ; CODE XREF: sub_14040ED00+147↓p
                add     rsp, 8
                call    loc_14040EE31

loc_14040EE43:                          ; CODE XREF: sub_14040ED00+150↓p
                add     rsp, 8
                call    loc_14040EE3A

loc_14040EE4C:                          ; CODE XREF: sub_14040ED00+159↓p
                add     rsp, 8
                call    loc_14040EE43

loc_14040EE55:                          ; CODE XREF: sub_14040ED00+162↓p
                add     rsp, 8
                call    loc_14040EE4C

loc_14040EE5E:                          ; CODE XREF: sub_14040ED00+16B↓p
                add     rsp, 8
                call    loc_14040EE55

loc_14040EE67:                          ; CODE XREF: sub_14040ED00+174↓p
                add     rsp, 8
                call    loc_14040EE5E

loc_14040EE70:                          ; CODE XREF: sub_14040ED00+17D↓p
                add     rsp, 8
                call    loc_14040EE67

loc_14040EE79:                          ; CODE XREF: sub_14040ED00+186↓p
                add     rsp, 8
                call    loc_14040EE70

loc_14040EE82:                          ; CODE XREF: sub_14040ED00+18F↓p
                add     rsp, 8
                call    loc_14040EE79

loc_14040EE8B:                          ; CODE XREF: sub_14040ED00+198↓p
                add     rsp, 8
                call    loc_14040EE82

loc_14040EE94:                          ; CODE XREF: sub_14040ED00+1A1↓p
                add     rsp, 8
                call    loc_14040EE8B

loc_14040EE9D:                          ; CODE XREF: sub_14040ED00+1AA↓p
                add     rsp, 8
                call    loc_14040EE94

loc_14040EEA6:                          ; CODE XREF: sub_14040ED00+1B3↓p
                add     rsp, 8
                call    loc_14040EE9D

loc_14040EEAF:                          ; CODE XREF: sub_14040ED00+1BC↓p
                add     rsp, 8
                call    loc_14040EEA6

loc_14040EEB8:                          ; CODE XREF: sub_14040ED00+1C5↓p
                add     rsp, 8
                call    loc_14040EEAF

loc_14040EEC1:                          ; CODE XREF: sub_14040ED00+1CE↓p
                add     rsp, 8
                call    loc_14040EEB8

loc_14040EECA:                          ; CODE XREF: sub_14040ED00+1D7↓p
                add     rsp, 8
                call    loc_14040EEC1

loc_14040EED3:                          ; CODE XREF: sub_14040ED00+1E0↓p
                add     rsp, 8
                call    loc_14040EECA

loc_14040EEDC:                          ; CODE XREF: sub_14040ED00+1E9↓p
                add     rsp, 8
                call    loc_14040EED3

loc_14040EEE5:                          ; CODE XREF: sub_14040ED00+1F2↓p
                add     rsp, 8
                call    loc_14040EEDC

loc_14040EEEE:                          ; CODE XREF: sub_14040ED00+1FB↓p
                add     rsp, 8
                call    loc_14040EEE5

loc_14040EEF7:                          ; CODE XREF: sub_14040ED00+204↓p
                add     rsp, 8
                call    loc_14040EEEE

loc_14040EF00:                          ; CODE XREF: sub_14040ED00+20D↓p
                add     rsp, 8
                call    loc_14040EEF7

loc_14040EF09:                          ; CODE XREF: sub_14040ED00+216↓p
                add     rsp, 8
                call    loc_14040EF00

loc_14040EF12:                          ; CODE XREF: sub_14040ED00+21F↓p
                add     rsp, 8
                call    loc_14040EF09

loc_14040EF1B:                          ; CODE XREF: sub_14040ED00+228↓p
                add     rsp, 8
                call    loc_14040EF12

loc_14040EF24:                          ; CODE XREF: sub_14040ED00+231↓p
                add     rsp, 8
                call    loc_14040EF1B

loc_14040EF2D:                          ; CODE XREF: sub_14040ED00+11A↑p
                add     rsp, 8
                call    loc_14040EF24

loc_14040EF36:                          ; CODE XREF: sub_14040ED00+123↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040EF3F:                          ; CODE XREF: sub_14040ED00+114↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 3
                mov     [rbp+0E8h+var_68], 0
                jz      short loc_14040EF60
                call    sub_1403FDC80

loc_14040EF60:                          ; CODE XREF: sub_14040ED00+4E↑j
                                        ; sub_14040ED00+65↑j ...
                cld
                stmxcsr [rbp+0E8h+var_13C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0E8h+var_F8], xmm0
                movaps  [rbp+0E8h+var_E8], xmm1
                movaps  [rbp+0E8h+var_D8], xmm2
                movaps  [rbp+0E8h+var_C8], xmm3
                movaps  [rbp+0E8h+var_B8], xmm4
                movaps  [rbp+0E8h+var_A8], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040EF9B
                test    [rbp+0E8h+arg_0], 1
                jz      short loc_14040EF9B
                stac

loc_14040EF9B:                          ; CODE XREF: sub_14040ED00+28D↑j
                                        ; sub_14040ED00+296↑j
                mov     r9, gs:8508h
                test    r9, r9
                jz      loc_14040F2DD
                cmp     dword ptr [r9+44h], 1
                jnz     loc_14040F2DD
                test    [rbp+0E8h+arg_8], 200h
                jz      loc_14040F2DD
                mov     rax, cr8
                mov     [rbp+0E8h+var_148], eax
                cmp     al, 2
                jge     loc_14040F2DD
                mov     ecx, 2
                call    KfRaiseIrql
                sti
                mov     r9, gs:8508h
                mov     rcx, [r9+48h]
                mov     dword ptr [r9+44h], 0
                call    sub_140524420
                cli
                mov     ecx, [rbp+0E8h+var_148]
                call    KeLowerIrql
                test    [rbp+0E8h+arg_0], 1
                jz      loc_14040F292
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040F01E
                stac

loc_14040F01E:                          ; CODE XREF: sub_14040ED00+319↑j
                                        ; sub_14040ED00+349↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14040F04B
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_14040F01E
; ---------------------------------------------------------------------------

loc_14040F04B:                          ; CODE XREF: sub_14040ED00+32E↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14040F05D
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14040F05D:                          ; CODE XREF: sub_14040ED00+354↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_14040F073
                call    sub_1403FE910

loc_14040F073:                          ; CODE XREF: sub_14040ED00+36C↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040F0A9
                test    byte ptr [rcx+2], 1
                jz      short loc_14040F098
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040F098:                          ; CODE XREF: sub_14040ED00+388↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_14040F0A9
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_14040F0A9:                          ; CODE XREF: sub_14040ED00+382↑j
                                        ; sub_14040ED00+39C↑j
                ldmxcsr [rbp+0E8h+var_13C]
                cmp     [rbp+0E8h+var_68], 0
                jz      short loc_14040F0BC
                call    sub_1403FDC00

loc_14040F0BC:                          ; CODE XREF: sub_14040ED00+3B5↑j
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14040F111
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040F111:                          ; CODE XREF: sub_14040ED00+3FE↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14040F12C
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14040F12C:                          ; CODE XREF: sub_14040ED00+41C↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14040F262
                call    loc_14040F250

loc_14040F142:                          ; CODE XREF: sub_14040ED00+44F↓p
                add     rsp, 8
                call    loc_14040F259

loc_14040F14B:                          ; CODE XREF: sub_14040ED00+458↓p
                add     rsp, 8
                call    loc_14040F142

loc_14040F154:                          ; CODE XREF: sub_14040ED00+461↓p
                add     rsp, 8
                call    loc_14040F14B

loc_14040F15D:                          ; CODE XREF: sub_14040ED00+46A↓p
                add     rsp, 8
                call    loc_14040F154

loc_14040F166:                          ; CODE XREF: sub_14040ED00+473↓p
                add     rsp, 8
                call    loc_14040F15D

loc_14040F16F:                          ; CODE XREF: sub_14040ED00+47C↓p
                add     rsp, 8
                call    loc_14040F166

loc_14040F178:                          ; CODE XREF: sub_14040ED00+485↓p
                add     rsp, 8
                call    loc_14040F16F

loc_14040F181:                          ; CODE XREF: sub_14040ED00+48E↓p
                add     rsp, 8
                call    loc_14040F178

loc_14040F18A:                          ; CODE XREF: sub_14040ED00+497↓p
                add     rsp, 8
                call    loc_14040F181

loc_14040F193:                          ; CODE XREF: sub_14040ED00+4A0↓p
                add     rsp, 8
                call    loc_14040F18A

loc_14040F19C:                          ; CODE XREF: sub_14040ED00+4A9↓p
                add     rsp, 8
                call    loc_14040F193

loc_14040F1A5:                          ; CODE XREF: sub_14040ED00+4B2↓p
                add     rsp, 8
                call    loc_14040F19C

loc_14040F1AE:                          ; CODE XREF: sub_14040ED00+4BB↓p
                add     rsp, 8
                call    loc_14040F1A5

loc_14040F1B7:                          ; CODE XREF: sub_14040ED00+4C4↓p
                add     rsp, 8
                call    loc_14040F1AE

loc_14040F1C0:                          ; CODE XREF: sub_14040ED00+4CD↓p
                add     rsp, 8
                call    loc_14040F1B7

loc_14040F1C9:                          ; CODE XREF: sub_14040ED00+4D6↓p
                add     rsp, 8
                call    loc_14040F1C0

loc_14040F1D2:                          ; CODE XREF: sub_14040ED00+4DF↓p
                add     rsp, 8
                call    loc_14040F1C9

loc_14040F1DB:                          ; CODE XREF: sub_14040ED00+4E8↓p
                add     rsp, 8
                call    loc_14040F1D2

loc_14040F1E4:                          ; CODE XREF: sub_14040ED00+4F1↓p
                add     rsp, 8
                call    loc_14040F1DB

loc_14040F1ED:                          ; CODE XREF: sub_14040ED00+4FA↓p
                add     rsp, 8
                call    loc_14040F1E4

loc_14040F1F6:                          ; CODE XREF: sub_14040ED00+503↓p
                add     rsp, 8
                call    loc_14040F1ED

loc_14040F1FF:                          ; CODE XREF: sub_14040ED00+50C↓p
                add     rsp, 8
                call    loc_14040F1F6

loc_14040F208:                          ; CODE XREF: sub_14040ED00+515↓p
                add     rsp, 8
                call    loc_14040F1FF

loc_14040F211:                          ; CODE XREF: sub_14040ED00+51E↓p
                add     rsp, 8
                call    loc_14040F208

loc_14040F21A:                          ; CODE XREF: sub_14040ED00+527↓p
                add     rsp, 8
                call    loc_14040F211

loc_14040F223:                          ; CODE XREF: sub_14040ED00+530↓p
                add     rsp, 8
                call    loc_14040F21A

loc_14040F22C:                          ; CODE XREF: sub_14040ED00+539↓p
                add     rsp, 8
                call    loc_14040F223

loc_14040F235:                          ; CODE XREF: sub_14040ED00+542↓p
                add     rsp, 8
                call    loc_14040F22C

loc_14040F23E:                          ; CODE XREF: sub_14040ED00+54B↓p
                add     rsp, 8
                call    loc_14040F235

loc_14040F247:                          ; CODE XREF: sub_14040ED00+554↓p
                add     rsp, 8
                call    loc_14040F23E

loc_14040F250:                          ; CODE XREF: sub_14040ED00+43D↑p
                add     rsp, 8
                call    loc_14040F247

loc_14040F259:                          ; CODE XREF: sub_14040ED00+446↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040F262:                          ; CODE XREF: sub_14040ED00+437↑j
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040F28D
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14040F28D:                          ; CODE XREF: sub_14040ED00+586↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040F292:                          ; CODE XREF: sub_14040ED00+30C↑j
                ldmxcsr [rbp+0E8h+var_13C]
                movaps  xmm0, [rbp+0E8h+var_F8]
                movaps  xmm1, [rbp+0E8h+var_E8]
                movaps  xmm2, [rbp+0E8h+var_D8]
                movaps  xmm3, [rbp+0E8h+var_C8]
                movaps  xmm4, [rbp+0E8h+var_B8]
                movaps  xmm5, [rbp+0E8h+var_A8]
                mov     r11, [rbp+0E8h+var_108]
                mov     r10, [rbp+0E8h+var_110]
                mov     r9, [rbp+0E8h+var_118]
                mov     r8, [rbp+0E8h+var_120]
                mov     rdx, [rbp+0E8h+var_128]
                mov     rcx, [rbp+0E8h+var_130]
                mov     rax, [rbp+0E8h+var_138]
                mov     rsp, rbp
                mov     rbp, [rbp+0E8h+var_10]
                add     rsp, 0E8h
                iretq
; ---------------------------------------------------------------------------

loc_14040F2DD:                          ; CODE XREF: sub_14040ED00+2A7↑j
                                        ; sub_14040ED00+2B2↑j ...
                mov     r10, [rbp+0E8h]
                mov     r9, gs:8508h
                movzx   r8, byte ptr [rbp+0E8h+var_148]
                mov     ecx, 7Fh
                mov     edx, 20h ; ' '
                call    sub_1404116C0
                nop
                retn
sub_14040ED00   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040F303:                         ; DATA XREF: .pdata:00000001400E3D3C↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0D8h

sub_14040F340   proc near               ; CODE XREF: sub_140A16BC0+6C↓j
                                        ; sub_140A16BC0+74↓j
                                        ; DATA XREF: ...

var_158         = byte ptr -158h
var_12D         = byte ptr -12Dh
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_58          = word ptr -58h
var_s0          = qword ptr  0
arg_0           = qword ptr  10h
arg_8           = byte ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0D8h+var_12D], 1
                mov     [rbp+0D8h+var_128], rax
                mov     [rbp+0D8h+var_120], rcx
                mov     [rbp+0D8h+var_118], rdx
                mov     [rbp+0D8h+var_110], r8
                mov     [rbp+0D8h+var_108], r9
                mov     [rbp+0D8h+var_100], r10
                mov     [rbp+0D8h+var_F8], r11
                test    [rbp+0D8h+arg_8], 1
                jnz     short loc_14040F3A6
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040F38F
                lfence
                jmp     loc_14040F59C
; ---------------------------------------------------------------------------

loc_14040F38F:                          ; CODE XREF: sub_14040F340+45↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040F59C
; ---------------------------------------------------------------------------

loc_14040F3A6:                          ; CODE XREF: sub_14040F340+37↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040F3B2
                swapgs

loc_14040F3B2:                          ; CODE XREF: sub_14040F340+6D↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040F422
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040F422:                          ; CODE XREF: sub_14040F340+CF↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040F44A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040F44A:                          ; CODE XREF: sub_14040F340+F1↑j
                test    edx, 2
                jz      loc_14040F57B
                call    loc_14040F569

loc_14040F45B:                          ; CODE XREF: sub_14040F340+128↓p
                add     rsp, 8
                call    loc_14040F572

loc_14040F464:                          ; CODE XREF: sub_14040F340+131↓p
                add     rsp, 8
                call    loc_14040F45B

loc_14040F46D:                          ; CODE XREF: sub_14040F340+13A↓p
                add     rsp, 8
                call    loc_14040F464

loc_14040F476:                          ; CODE XREF: sub_14040F340+143↓p
                add     rsp, 8
                call    loc_14040F46D

loc_14040F47F:                          ; CODE XREF: sub_14040F340+14C↓p
                add     rsp, 8
                call    loc_14040F476

loc_14040F488:                          ; CODE XREF: sub_14040F340+155↓p
                add     rsp, 8
                call    loc_14040F47F

loc_14040F491:                          ; CODE XREF: sub_14040F340+15E↓p
                add     rsp, 8
                call    loc_14040F488

loc_14040F49A:                          ; CODE XREF: sub_14040F340+167↓p
                add     rsp, 8
                call    loc_14040F491

loc_14040F4A3:                          ; CODE XREF: sub_14040F340+170↓p
                add     rsp, 8
                call    loc_14040F49A

loc_14040F4AC:                          ; CODE XREF: sub_14040F340+179↓p
                add     rsp, 8
                call    loc_14040F4A3

loc_14040F4B5:                          ; CODE XREF: sub_14040F340+182↓p
                add     rsp, 8
                call    loc_14040F4AC

loc_14040F4BE:                          ; CODE XREF: sub_14040F340+18B↓p
                add     rsp, 8
                call    loc_14040F4B5

loc_14040F4C7:                          ; CODE XREF: sub_14040F340+194↓p
                add     rsp, 8
                call    loc_14040F4BE

loc_14040F4D0:                          ; CODE XREF: sub_14040F340+19D↓p
                add     rsp, 8
                call    loc_14040F4C7

loc_14040F4D9:                          ; CODE XREF: sub_14040F340+1A6↓p
                add     rsp, 8
                call    loc_14040F4D0

loc_14040F4E2:                          ; CODE XREF: sub_14040F340+1AF↓p
                add     rsp, 8
                call    loc_14040F4D9

loc_14040F4EB:                          ; CODE XREF: sub_14040F340+1B8↓p
                add     rsp, 8
                call    loc_14040F4E2

loc_14040F4F4:                          ; CODE XREF: sub_14040F340+1C1↓p
                add     rsp, 8
                call    loc_14040F4EB

loc_14040F4FD:                          ; CODE XREF: sub_14040F340+1CA↓p
                add     rsp, 8
                call    loc_14040F4F4

loc_14040F506:                          ; CODE XREF: sub_14040F340+1D3↓p
                add     rsp, 8
                call    loc_14040F4FD

loc_14040F50F:                          ; CODE XREF: sub_14040F340+1DC↓p
                add     rsp, 8
                call    loc_14040F506

loc_14040F518:                          ; CODE XREF: sub_14040F340+1E5↓p
                add     rsp, 8
                call    loc_14040F50F

loc_14040F521:                          ; CODE XREF: sub_14040F340+1EE↓p
                add     rsp, 8
                call    loc_14040F518

loc_14040F52A:                          ; CODE XREF: sub_14040F340+1F7↓p
                add     rsp, 8
                call    loc_14040F521

loc_14040F533:                          ; CODE XREF: sub_14040F340+200↓p
                add     rsp, 8
                call    loc_14040F52A

loc_14040F53C:                          ; CODE XREF: sub_14040F340+209↓p
                add     rsp, 8
                call    loc_14040F533

loc_14040F545:                          ; CODE XREF: sub_14040F340+212↓p
                add     rsp, 8
                call    loc_14040F53C

loc_14040F54E:                          ; CODE XREF: sub_14040F340+21B↓p
                add     rsp, 8
                call    loc_14040F545

loc_14040F557:                          ; CODE XREF: sub_14040F340+224↓p
                add     rsp, 8
                call    loc_14040F54E

loc_14040F560:                          ; CODE XREF: sub_14040F340+22D↓p
                add     rsp, 8
                call    loc_14040F557

loc_14040F569:                          ; CODE XREF: sub_14040F340+116↑p
                add     rsp, 8
                call    loc_14040F560

loc_14040F572:                          ; CODE XREF: sub_14040F340+11F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040F57B:                          ; CODE XREF: sub_14040F340+110↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 3
                mov     [rbp+0D8h+var_58], 0
                jz      short loc_14040F59C
                call    sub_1403FDC80

loc_14040F59C:                          ; CODE XREF: sub_14040F340+4A↑j
                                        ; sub_14040F340+61↑j ...
                cld
                stmxcsr [rbp+0D8h+var_12C]
                ldmxcsr dword ptr gs:180h
                movaps  [rbp+0D8h+var_E8], xmm0
                movaps  [rbp+0D8h+var_D8], xmm1
                movaps  [rbp+0D8h+var_C8], xmm2
                movaps  [rbp+0D8h+var_B8], xmm3
                movaps  [rbp+0D8h+var_A8], xmm4
                movaps  [rbp+0D8h+var_98], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040F5D7
                test    [rbp+0D8h+arg_8], 1
                jz      short loc_14040F5D7
                stac

loc_14040F5D7:                          ; CODE XREF: sub_14040F340+289↑j
                                        ; sub_14040F340+292↑j
                mov     eax, [rbp+0E0h]
                test    [rbp+0D8h+arg_10], 200h
                jz      short loc_14040F5EA
                sti

loc_14040F5EA:                          ; CODE XREF: sub_14040F340+2A7↑j
                test    byte ptr gs:8725h, 40h
                jz      short loc_14040F63D
                mov     r9, gs:188h
                test    byte ptr [r9+3], 80h
                jnz     short loc_14040F61F
                lea     rcx, [rbp+0D8h+var_158]
                call    sub_1405128C0
                cmp     eax, 1
                jz      short loc_14040F660
                cmp     eax, 2
                jz      short loc_14040F61F
                cmp     eax, 3
                jz      short loc_14040F64C
                jmp     short loc_14040F63D
; ---------------------------------------------------------------------------

loc_14040F61F:                          ; CODE XREF: sub_14040F340+2C3↑j
                                        ; sub_14040F340+2D6↑j
                mov     r9, 39h ; '9'
                mov     ecx, 0C0000409h
                mov     edx, 1
                mov     r8, [rbp+0D8h+arg_0]
                call    sub_140411BC0
                nop

loc_14040F63D:                          ; CODE XREF: sub_14040F340+2B3↑j
                                        ; sub_14040F340+2DD↑j
                mov     edx, 15h
                mov     ecx, 7Fh
                call    sub_1404116C0

loc_14040F64C:                          ; CODE XREF: sub_14040F340+2DB↑j
                mov     ecx, 80000033h
                xor     edx, edx
                mov     r8, [rbp+0D8h+arg_0]
                call    sub_140411740
                nop

loc_14040F660:                          ; CODE XREF: sub_14040F340+2D1↑j
                cli
                test    [rbp+0D8h+arg_8], 1
                jz      loc_14040F8EE
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040F67A
                stac

loc_14040F67A:                          ; CODE XREF: sub_14040F340+335↑j
                                        ; sub_14040F340+365↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14040F6A7
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_14040F67A
; ---------------------------------------------------------------------------

loc_14040F6A7:                          ; CODE XREF: sub_14040F340+34A↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14040F6B9
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14040F6B9:                          ; CODE XREF: sub_14040F340+370↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_14040F6CF
                call    sub_1403FE910

loc_14040F6CF:                          ; CODE XREF: sub_14040F340+388↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_14040F705
                test    byte ptr [rcx+2], 1
                jz      short loc_14040F6F4
                call    sub_14051C050
                mov     rcx, gs:188h

loc_14040F6F4:                          ; CODE XREF: sub_14040F340+3A4↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_14040F705
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_14040F705:                          ; CODE XREF: sub_14040F340+39E↑j
                                        ; sub_14040F340+3B8↑j
                ldmxcsr [rbp+0D8h+var_12C]
                cmp     [rbp+0D8h+var_58], 0
                jz      short loc_14040F718
                call    sub_1403FDC00

loc_14040F718:                          ; CODE XREF: sub_14040F340+3D1↑j
                movaps  xmm0, [rbp+0D8h+var_E8]
                movaps  xmm1, [rbp+0D8h+var_D8]
                movaps  xmm2, [rbp+0D8h+var_C8]
                movaps  xmm3, [rbp+0D8h+var_B8]
                movaps  xmm4, [rbp+0D8h+var_A8]
                movaps  xmm5, [rbp+0D8h+var_98]
                mov     r11, [rbp+0D8h+var_F8]
                mov     r10, [rbp+0D8h+var_100]
                mov     r9, [rbp+0D8h+var_108]
                mov     r8, [rbp+0D8h+var_110]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14040F76D
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040F76D:                          ; CODE XREF: sub_14040F340+41A↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14040F788
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14040F788:                          ; CODE XREF: sub_14040F340+438↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14040F8BE
                call    loc_14040F8AC

loc_14040F79E:                          ; CODE XREF: sub_14040F340+46B↓p
                add     rsp, 8
                call    loc_14040F8B5

loc_14040F7A7:                          ; CODE XREF: sub_14040F340+474↓p
                add     rsp, 8
                call    loc_14040F79E

loc_14040F7B0:                          ; CODE XREF: sub_14040F340+47D↓p
                add     rsp, 8
                call    loc_14040F7A7

loc_14040F7B9:                          ; CODE XREF: sub_14040F340+486↓p
                add     rsp, 8
                call    loc_14040F7B0

loc_14040F7C2:                          ; CODE XREF: sub_14040F340+48F↓p
                add     rsp, 8
                call    loc_14040F7B9

loc_14040F7CB:                          ; CODE XREF: sub_14040F340+498↓p
                add     rsp, 8
                call    loc_14040F7C2

loc_14040F7D4:                          ; CODE XREF: sub_14040F340+4A1↓p
                add     rsp, 8
                call    loc_14040F7CB

loc_14040F7DD:                          ; CODE XREF: sub_14040F340+4AA↓p
                add     rsp, 8
                call    loc_14040F7D4

loc_14040F7E6:                          ; CODE XREF: sub_14040F340+4B3↓p
                add     rsp, 8
                call    loc_14040F7DD

loc_14040F7EF:                          ; CODE XREF: sub_14040F340+4BC↓p
                add     rsp, 8
                call    loc_14040F7E6

loc_14040F7F8:                          ; CODE XREF: sub_14040F340+4C5↓p
                add     rsp, 8
                call    loc_14040F7EF

loc_14040F801:                          ; CODE XREF: sub_14040F340+4CE↓p
                add     rsp, 8
                call    loc_14040F7F8

loc_14040F80A:                          ; CODE XREF: sub_14040F340+4D7↓p
                add     rsp, 8
                call    loc_14040F801

loc_14040F813:                          ; CODE XREF: sub_14040F340+4E0↓p
                add     rsp, 8
                call    loc_14040F80A

loc_14040F81C:                          ; CODE XREF: sub_14040F340+4E9↓p
                add     rsp, 8
                call    loc_14040F813

loc_14040F825:                          ; CODE XREF: sub_14040F340+4F2↓p
                add     rsp, 8
                call    loc_14040F81C

loc_14040F82E:                          ; CODE XREF: sub_14040F340+4FB↓p
                add     rsp, 8
                call    loc_14040F825

loc_14040F837:                          ; CODE XREF: sub_14040F340+504↓p
                add     rsp, 8
                call    loc_14040F82E

loc_14040F840:                          ; CODE XREF: sub_14040F340+50D↓p
                add     rsp, 8
                call    loc_14040F837

loc_14040F849:                          ; CODE XREF: sub_14040F340+516↓p
                add     rsp, 8
                call    loc_14040F840

loc_14040F852:                          ; CODE XREF: sub_14040F340+51F↓p
                add     rsp, 8
                call    loc_14040F849

loc_14040F85B:                          ; CODE XREF: sub_14040F340+528↓p
                add     rsp, 8
                call    loc_14040F852

loc_14040F864:                          ; CODE XREF: sub_14040F340+531↓p
                add     rsp, 8
                call    loc_14040F85B

loc_14040F86D:                          ; CODE XREF: sub_14040F340+53A↓p
                add     rsp, 8
                call    loc_14040F864

loc_14040F876:                          ; CODE XREF: sub_14040F340+543↓p
                add     rsp, 8
                call    loc_14040F86D

loc_14040F87F:                          ; CODE XREF: sub_14040F340+54C↓p
                add     rsp, 8
                call    loc_14040F876

loc_14040F888:                          ; CODE XREF: sub_14040F340+555↓p
                add     rsp, 8
                call    loc_14040F87F

loc_14040F891:                          ; CODE XREF: sub_14040F340+55E↓p
                add     rsp, 8
                call    loc_14040F888

loc_14040F89A:                          ; CODE XREF: sub_14040F340+567↓p
                add     rsp, 8
                call    loc_14040F891

loc_14040F8A3:                          ; CODE XREF: sub_14040F340+570↓p
                add     rsp, 8
                call    loc_14040F89A

loc_14040F8AC:                          ; CODE XREF: sub_14040F340+459↑p
                add     rsp, 8
                call    loc_14040F8A3

loc_14040F8B5:                          ; CODE XREF: sub_14040F340+462↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040F8BE:                          ; CODE XREF: sub_14040F340+453↑j
                mov     rdx, [rbp+0D8h+var_118]
                mov     rcx, [rbp+0D8h+var_120]
                mov     rax, [rbp+0D8h+var_128]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h+var_s0]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14040F8E9
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14040F8E9:                          ; CODE XREF: sub_14040F340+5A2↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_14040F8EE:                          ; CODE XREF: sub_14040F340+328↑j
                ldmxcsr [rbp+0D8h+var_12C]
                movaps  xmm0, [rbp+0D8h+var_E8]
                movaps  xmm1, [rbp+0D8h+var_D8]
                movaps  xmm2, [rbp+0D8h+var_C8]
                movaps  xmm3, [rbp+0D8h+var_B8]
                movaps  xmm4, [rbp+0D8h+var_A8]
                movaps  xmm5, [rbp+0D8h+var_98]
                mov     r11, [rbp+0D8h+var_F8]
                mov     r10, [rbp+0D8h+var_100]
                mov     r9, [rbp+0D8h+var_108]
                mov     r8, [rbp+0D8h+var_110]
                mov     rdx, [rbp+0D8h+var_118]
                mov     rcx, [rbp+0D8h+var_120]
                mov     rax, [rbp+0D8h+var_128]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h+var_s0]
                add     rsp, 0E8h
                iretq
; ---------------------------------------------------------------------------
                retn
sub_14040F340   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040F93A:                         ; DATA XREF: .pdata:00000001400E3D48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14040F940   proc near               ; CODE XREF: sub_140A16D40+69↓j
                                        ; sub_140A16D40+71↓j
                                        ; DATA XREF: ...

var_E8          = byte ptr -0E8h
arg_0           = word ptr  8

                sub     qword ptr [rsp+0], 2
                cmp     [rsp+arg_0], 23h ; '#'
                jnz     short loc_14040F952
                and     dword ptr [rsp+4], 0

loc_14040F952:                          ; CODE XREF: sub_14040F940+B↑j
                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+168h+var_E8]
                mov     byte ptr [rbp-55h], 1
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     [rbp-38h], r8
                mov     [rbp-30h], r9
                mov     [rbp-28h], r10
                mov     [rbp-20h], r11
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_14040F9BC
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040F9A5
                lfence
                jmp     loc_14040FBFB
; ---------------------------------------------------------------------------

loc_14040F9A5:                          ; CODE XREF: sub_14040F940+5B↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040FBFB
; ---------------------------------------------------------------------------

loc_14040F9BC:                          ; CODE XREF: sub_14040F940+4D↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040F9C8
                swapgs

loc_14040F9C8:                          ; CODE XREF: sub_14040F940+83↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040FA38
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040FA38:                          ; CODE XREF: sub_14040F940+E5↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040FA60
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040FA60:                          ; CODE XREF: sub_14040F940+107↑j
                test    edx, 2
                jz      loc_14040FB91
                call    loc_14040FB7F

loc_14040FA71:                          ; CODE XREF: sub_14040F940+13E↓p
                add     rsp, 8
                call    loc_14040FB88

loc_14040FA7A:                          ; CODE XREF: sub_14040F940+147↓p
                add     rsp, 8
                call    loc_14040FA71

loc_14040FA83:                          ; CODE XREF: sub_14040F940+150↓p
                add     rsp, 8
                call    loc_14040FA7A

loc_14040FA8C:                          ; CODE XREF: sub_14040F940+159↓p
                add     rsp, 8
                call    loc_14040FA83

loc_14040FA95:                          ; CODE XREF: sub_14040F940+162↓p
                add     rsp, 8
                call    loc_14040FA8C

loc_14040FA9E:                          ; CODE XREF: sub_14040F940+16B↓p
                add     rsp, 8
                call    loc_14040FA95

loc_14040FAA7:                          ; CODE XREF: sub_14040F940+174↓p
                add     rsp, 8
                call    loc_14040FA9E

loc_14040FAB0:                          ; CODE XREF: sub_14040F940+17D↓p
                add     rsp, 8
                call    loc_14040FAA7

loc_14040FAB9:                          ; CODE XREF: sub_14040F940+186↓p
                add     rsp, 8
                call    loc_14040FAB0

loc_14040FAC2:                          ; CODE XREF: sub_14040F940+18F↓p
                add     rsp, 8
                call    loc_14040FAB9

loc_14040FACB:                          ; CODE XREF: sub_14040F940+198↓p
                add     rsp, 8
                call    loc_14040FAC2

loc_14040FAD4:                          ; CODE XREF: sub_14040F940+1A1↓p
                add     rsp, 8
                call    loc_14040FACB

loc_14040FADD:                          ; CODE XREF: sub_14040F940+1AA↓p
                add     rsp, 8
                call    loc_14040FAD4

loc_14040FAE6:                          ; CODE XREF: sub_14040F940+1B3↓p
                add     rsp, 8
                call    loc_14040FADD

loc_14040FAEF:                          ; CODE XREF: sub_14040F940+1BC↓p
                add     rsp, 8
                call    loc_14040FAE6

loc_14040FAF8:                          ; CODE XREF: sub_14040F940+1C5↓p
                add     rsp, 8
                call    loc_14040FAEF

loc_14040FB01:                          ; CODE XREF: sub_14040F940+1CE↓p
                add     rsp, 8
                call    loc_14040FAF8

loc_14040FB0A:                          ; CODE XREF: sub_14040F940+1D7↓p
                add     rsp, 8
                call    loc_14040FB01

loc_14040FB13:                          ; CODE XREF: sub_14040F940+1E0↓p
                add     rsp, 8
                call    loc_14040FB0A

loc_14040FB1C:                          ; CODE XREF: sub_14040F940+1E9↓p
                add     rsp, 8
                call    loc_14040FB13

loc_14040FB25:                          ; CODE XREF: sub_14040F940+1F2↓p
                add     rsp, 8
                call    loc_14040FB1C

loc_14040FB2E:                          ; CODE XREF: sub_14040F940+1FB↓p
                add     rsp, 8
                call    loc_14040FB25

loc_14040FB37:                          ; CODE XREF: sub_14040F940+204↓p
                add     rsp, 8
                call    loc_14040FB2E

loc_14040FB40:                          ; CODE XREF: sub_14040F940+20D↓p
                add     rsp, 8
                call    loc_14040FB37

loc_14040FB49:                          ; CODE XREF: sub_14040F940+216↓p
                add     rsp, 8
                call    loc_14040FB40

loc_14040FB52:                          ; CODE XREF: sub_14040F940+21F↓p
                add     rsp, 8
                call    loc_14040FB49

loc_14040FB5B:                          ; CODE XREF: sub_14040F940+228↓p
                add     rsp, 8
                call    loc_14040FB52

loc_14040FB64:                          ; CODE XREF: sub_14040F940+231↓p
                add     rsp, 8
                call    loc_14040FB5B

loc_14040FB6D:                          ; CODE XREF: sub_14040F940+23A↓p
                add     rsp, 8
                call    loc_14040FB64

loc_14040FB76:                          ; CODE XREF: sub_14040F940+243↓p
                add     rsp, 8
                call    loc_14040FB6D

loc_14040FB7F:                          ; CODE XREF: sub_14040F940+12C↑p
                add     rsp, 8
                call    loc_14040FB76

loc_14040FB88:                          ; CODE XREF: sub_14040F940+135↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040FB91:                          ; CODE XREF: sub_14040F940+126↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040FBE6
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040FBE6
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040FBE6:                          ; CODE XREF: sub_14040F940+262↑j
                                        ; sub_14040F940+288↑j
                test    byte ptr [r10+3], 3
                mov     word ptr [rbp+80h], 0
                jz      short loc_14040FBFB
                call    sub_1403FDC80

loc_14040FBFB:                          ; CODE XREF: sub_14040F940+60↑j
                                        ; sub_14040F940+77↑j ...
                cld
                stmxcsr dword ptr [rbp-54h]
                ldmxcsr dword ptr gs:180h
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm1
                movaps  xmmword ptr [rbp+10h], xmm2
                movaps  xmmword ptr [rbp+20h], xmm3
                movaps  xmmword ptr [rbp+30h], xmm4
                movaps  xmmword ptr [rbp+40h], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040FC36
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_14040FC36
                stac

loc_14040FC36:                          ; CODE XREF: sub_14040F940+2E8↑j
                                        ; sub_14040F940+2F1↑j
                test    dword ptr [rbp+0F8h], 200h
                jz      short loc_14040FC43
                sti

loc_14040FC43:                          ; CODE XREF: sub_14040F940+300↑j
                mov     r9, [rbp-48h]
                mov     ecx, 0C0000409h
                mov     edx, 1
                mov     r8, [rbp+0E8h]
                call    sub_140411BC0
                nop
                retn
sub_14040F940   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040FC5F:                         ; DATA XREF: .pdata:00000001400E3D54↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_14040FC80   proc near               ; CODE XREF: sub_140A16DC0+69↓j
                                        ; sub_140A16DC0+71↓j
                                        ; DATA XREF: ...

var_E8          = byte ptr -0E8h
arg_0           = word ptr  8

                sub     qword ptr [rsp+0], 2
                cmp     [rsp+arg_0], 23h ; '#'
                jnz     short loc_14040FC92
                and     dword ptr [rsp+4], 0

loc_14040FC92:                          ; CODE XREF: sub_14040FC80+B↑j
                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+168h+var_E8]
                mov     byte ptr [rbp-55h], 1
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     [rbp-38h], r8
                mov     [rbp-30h], r9
                mov     [rbp-28h], r10
                mov     [rbp-20h], r11
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_14040FCFC
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_14040FCE5
                lfence
                jmp     loc_14040FF3B
; ---------------------------------------------------------------------------

loc_14040FCE5:                          ; CODE XREF: sub_14040FC80+5B↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14040FF3B
; ---------------------------------------------------------------------------

loc_14040FCFC:                          ; CODE XREF: sub_14040FC80+4D↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_14040FD08
                swapgs

loc_14040FD08:                          ; CODE XREF: sub_14040FC80+83↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_14040FD78
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14040FD78:                          ; CODE XREF: sub_14040FC80+E5↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_14040FDA0
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_14040FDA0:                          ; CODE XREF: sub_14040FC80+107↑j
                test    edx, 2
                jz      loc_14040FED1
                call    loc_14040FEBF

loc_14040FDB1:                          ; CODE XREF: sub_14040FC80+13E↓p
                add     rsp, 8
                call    loc_14040FEC8

loc_14040FDBA:                          ; CODE XREF: sub_14040FC80+147↓p
                add     rsp, 8
                call    loc_14040FDB1

loc_14040FDC3:                          ; CODE XREF: sub_14040FC80+150↓p
                add     rsp, 8
                call    loc_14040FDBA

loc_14040FDCC:                          ; CODE XREF: sub_14040FC80+159↓p
                add     rsp, 8
                call    loc_14040FDC3

loc_14040FDD5:                          ; CODE XREF: sub_14040FC80+162↓p
                add     rsp, 8
                call    loc_14040FDCC

loc_14040FDDE:                          ; CODE XREF: sub_14040FC80+16B↓p
                add     rsp, 8
                call    loc_14040FDD5

loc_14040FDE7:                          ; CODE XREF: sub_14040FC80+174↓p
                add     rsp, 8
                call    loc_14040FDDE

loc_14040FDF0:                          ; CODE XREF: sub_14040FC80+17D↓p
                add     rsp, 8
                call    loc_14040FDE7

loc_14040FDF9:                          ; CODE XREF: sub_14040FC80+186↓p
                add     rsp, 8
                call    loc_14040FDF0

loc_14040FE02:                          ; CODE XREF: sub_14040FC80+18F↓p
                add     rsp, 8
                call    loc_14040FDF9

loc_14040FE0B:                          ; CODE XREF: sub_14040FC80+198↓p
                add     rsp, 8
                call    loc_14040FE02

loc_14040FE14:                          ; CODE XREF: sub_14040FC80+1A1↓p
                add     rsp, 8
                call    loc_14040FE0B

loc_14040FE1D:                          ; CODE XREF: sub_14040FC80+1AA↓p
                add     rsp, 8
                call    loc_14040FE14

loc_14040FE26:                          ; CODE XREF: sub_14040FC80+1B3↓p
                add     rsp, 8
                call    loc_14040FE1D

loc_14040FE2F:                          ; CODE XREF: sub_14040FC80+1BC↓p
                add     rsp, 8
                call    loc_14040FE26

loc_14040FE38:                          ; CODE XREF: sub_14040FC80+1C5↓p
                add     rsp, 8
                call    loc_14040FE2F

loc_14040FE41:                          ; CODE XREF: sub_14040FC80+1CE↓p
                add     rsp, 8
                call    loc_14040FE38

loc_14040FE4A:                          ; CODE XREF: sub_14040FC80+1D7↓p
                add     rsp, 8
                call    loc_14040FE41

loc_14040FE53:                          ; CODE XREF: sub_14040FC80+1E0↓p
                add     rsp, 8
                call    loc_14040FE4A

loc_14040FE5C:                          ; CODE XREF: sub_14040FC80+1E9↓p
                add     rsp, 8
                call    loc_14040FE53

loc_14040FE65:                          ; CODE XREF: sub_14040FC80+1F2↓p
                add     rsp, 8
                call    loc_14040FE5C

loc_14040FE6E:                          ; CODE XREF: sub_14040FC80+1FB↓p
                add     rsp, 8
                call    loc_14040FE65

loc_14040FE77:                          ; CODE XREF: sub_14040FC80+204↓p
                add     rsp, 8
                call    loc_14040FE6E

loc_14040FE80:                          ; CODE XREF: sub_14040FC80+20D↓p
                add     rsp, 8
                call    loc_14040FE77

loc_14040FE89:                          ; CODE XREF: sub_14040FC80+216↓p
                add     rsp, 8
                call    loc_14040FE80

loc_14040FE92:                          ; CODE XREF: sub_14040FC80+21F↓p
                add     rsp, 8
                call    loc_14040FE89

loc_14040FE9B:                          ; CODE XREF: sub_14040FC80+228↓p
                add     rsp, 8
                call    loc_14040FE92

loc_14040FEA4:                          ; CODE XREF: sub_14040FC80+231↓p
                add     rsp, 8
                call    loc_14040FE9B

loc_14040FEAD:                          ; CODE XREF: sub_14040FC80+23A↓p
                add     rsp, 8
                call    loc_14040FEA4

loc_14040FEB6:                          ; CODE XREF: sub_14040FC80+243↓p
                add     rsp, 8
                call    loc_14040FEAD

loc_14040FEBF:                          ; CODE XREF: sub_14040FC80+12C↑p
                add     rsp, 8
                call    loc_14040FEB6

loc_14040FEC8:                          ; CODE XREF: sub_14040FC80+135↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14040FED1:                          ; CODE XREF: sub_14040FC80+126↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_14040FF26
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_14040FF26
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_14040FF26:                          ; CODE XREF: sub_14040FC80+262↑j
                                        ; sub_14040FC80+288↑j
                test    byte ptr [r10+3], 3
                mov     word ptr [rbp+80h], 0
                jz      short loc_14040FF3B
                call    sub_1403FDC80

loc_14040FF3B:                          ; CODE XREF: sub_14040FC80+60↑j
                                        ; sub_14040FC80+77↑j ...
                cld
                stmxcsr dword ptr [rbp-54h]
                ldmxcsr dword ptr gs:180h
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm1
                movaps  xmmword ptr [rbp+10h], xmm2
                movaps  xmmword ptr [rbp+20h], xmm3
                movaps  xmmword ptr [rbp+30h], xmm4
                movaps  xmmword ptr [rbp+40h], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14040FF76
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_14040FF76
                stac

loc_14040FF76:                          ; CODE XREF: sub_14040FC80+2E8↑j
                                        ; sub_14040FC80+2F1↑j
                test    dword ptr [rbp+0F8h], 200h
                jz      short loc_14040FF83
                sti

loc_14040FF83:                          ; CODE XREF: sub_14040FC80+300↑j
                mov     ecx, 0C0000420h
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop
                retn
sub_14040FC80   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14040FF98:                         ; DATA XREF: .pdata:00000001400E3D60↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_14040FFC0   proc near               ; CODE XREF: sub_140A16E40+69↓j
                                        ; sub_140A16E40+71↓j
                                        ; DATA XREF: ...

var_E8          = byte ptr -0E8h
arg_0           = word ptr  8

                inc     qword ptr [rsp+0]
                cmp     [rsp+arg_0], 23h ; '#'
                jnz     short loc_14040FFD1
                and     dword ptr [rsp+4], 0

loc_14040FFD1:                          ; CODE XREF: sub_14040FFC0+A↑j
                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+168h+var_E8]
                mov     byte ptr [rbp-55h], 1
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     [rbp-38h], r8
                mov     [rbp-30h], r9
                mov     [rbp-28h], r10
                mov     [rbp-20h], r11
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_14041003B
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_140410024
                lfence
                jmp     loc_14041027A
; ---------------------------------------------------------------------------

loc_140410024:                          ; CODE XREF: sub_14040FFC0+5A↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_14041027A
; ---------------------------------------------------------------------------

loc_14041003B:                          ; CODE XREF: sub_14040FFC0+4C↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_140410047
                swapgs

loc_140410047:                          ; CODE XREF: sub_14040FFC0+82↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_1404100B7
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1404100B7:                          ; CODE XREF: sub_14040FFC0+E4↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_1404100DF
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_1404100DF:                          ; CODE XREF: sub_14040FFC0+106↑j
                test    edx, 2
                jz      loc_140410210
                call    loc_1404101FE

loc_1404100F0:                          ; CODE XREF: sub_14040FFC0+13D↓p
                add     rsp, 8
                call    loc_140410207

loc_1404100F9:                          ; CODE XREF: sub_14040FFC0+146↓p
                add     rsp, 8
                call    loc_1404100F0

loc_140410102:                          ; CODE XREF: sub_14040FFC0+14F↓p
                add     rsp, 8
                call    loc_1404100F9

loc_14041010B:                          ; CODE XREF: sub_14040FFC0+158↓p
                add     rsp, 8
                call    loc_140410102

loc_140410114:                          ; CODE XREF: sub_14040FFC0+161↓p
                add     rsp, 8
                call    loc_14041010B

loc_14041011D:                          ; CODE XREF: sub_14040FFC0+16A↓p
                add     rsp, 8
                call    loc_140410114

loc_140410126:                          ; CODE XREF: sub_14040FFC0+173↓p
                add     rsp, 8
                call    loc_14041011D

loc_14041012F:                          ; CODE XREF: sub_14040FFC0+17C↓p
                add     rsp, 8
                call    loc_140410126

loc_140410138:                          ; CODE XREF: sub_14040FFC0+185↓p
                add     rsp, 8
                call    loc_14041012F

loc_140410141:                          ; CODE XREF: sub_14040FFC0+18E↓p
                add     rsp, 8
                call    loc_140410138

loc_14041014A:                          ; CODE XREF: sub_14040FFC0+197↓p
                add     rsp, 8
                call    loc_140410141

loc_140410153:                          ; CODE XREF: sub_14040FFC0+1A0↓p
                add     rsp, 8
                call    loc_14041014A

loc_14041015C:                          ; CODE XREF: sub_14040FFC0+1A9↓p
                add     rsp, 8
                call    loc_140410153

loc_140410165:                          ; CODE XREF: sub_14040FFC0+1B2↓p
                add     rsp, 8
                call    loc_14041015C

loc_14041016E:                          ; CODE XREF: sub_14040FFC0+1BB↓p
                add     rsp, 8
                call    loc_140410165

loc_140410177:                          ; CODE XREF: sub_14040FFC0+1C4↓p
                add     rsp, 8
                call    loc_14041016E

loc_140410180:                          ; CODE XREF: sub_14040FFC0+1CD↓p
                add     rsp, 8
                call    loc_140410177

loc_140410189:                          ; CODE XREF: sub_14040FFC0+1D6↓p
                add     rsp, 8
                call    loc_140410180

loc_140410192:                          ; CODE XREF: sub_14040FFC0+1DF↓p
                add     rsp, 8
                call    loc_140410189

loc_14041019B:                          ; CODE XREF: sub_14040FFC0+1E8↓p
                add     rsp, 8
                call    loc_140410192

loc_1404101A4:                          ; CODE XREF: sub_14040FFC0+1F1↓p
                add     rsp, 8
                call    loc_14041019B

loc_1404101AD:                          ; CODE XREF: sub_14040FFC0+1FA↓p
                add     rsp, 8
                call    loc_1404101A4

loc_1404101B6:                          ; CODE XREF: sub_14040FFC0+203↓p
                add     rsp, 8
                call    loc_1404101AD

loc_1404101BF:                          ; CODE XREF: sub_14040FFC0+20C↓p
                add     rsp, 8
                call    loc_1404101B6

loc_1404101C8:                          ; CODE XREF: sub_14040FFC0+215↓p
                add     rsp, 8
                call    loc_1404101BF

loc_1404101D1:                          ; CODE XREF: sub_14040FFC0+21E↓p
                add     rsp, 8
                call    loc_1404101C8

loc_1404101DA:                          ; CODE XREF: sub_14040FFC0+227↓p
                add     rsp, 8
                call    loc_1404101D1

loc_1404101E3:                          ; CODE XREF: sub_14040FFC0+230↓p
                add     rsp, 8
                call    loc_1404101DA

loc_1404101EC:                          ; CODE XREF: sub_14040FFC0+239↓p
                add     rsp, 8
                call    loc_1404101E3

loc_1404101F5:                          ; CODE XREF: sub_14040FFC0+242↓p
                add     rsp, 8
                call    loc_1404101EC

loc_1404101FE:                          ; CODE XREF: sub_14040FFC0+12B↑p
                add     rsp, 8
                call    loc_1404101F5

loc_140410207:                          ; CODE XREF: sub_14040FFC0+134↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140410210:                          ; CODE XREF: sub_14040FFC0+125↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_140410265
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_140410265
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_140410265:                          ; CODE XREF: sub_14040FFC0+261↑j
                                        ; sub_14040FFC0+287↑j
                test    byte ptr [r10+3], 3
                mov     word ptr [rbp+80h], 0
                jz      short loc_14041027A
                call    sub_1403FDC80

loc_14041027A:                          ; CODE XREF: sub_14040FFC0+5F↑j
                                        ; sub_14040FFC0+76↑j ...
                cld
                stmxcsr dword ptr [rbp-54h]
                ldmxcsr dword ptr gs:180h
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm1
                movaps  xmmword ptr [rbp+10h], xmm2
                movaps  xmmword ptr [rbp+20h], xmm3
                movaps  xmmword ptr [rbp+30h], xmm4
                movaps  xmmword ptr [rbp+40h], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_1404102B5
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_1404102B5
                stac

loc_1404102B5:                          ; CODE XREF: sub_14040FFC0+2E7↑j
                                        ; sub_14040FFC0+2F0↑j
                test    dword ptr [rbp+0F8h], 200h
                jz      short loc_1404102C2
                sti

loc_1404102C2:                          ; CODE XREF: sub_14040FFC0+2FF↑j
                mov     ecx, 80000003h
                mov     edx, 1
                mov     r9, [rbp-50h]
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop
                retn
sub_14040FFC0   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_1404102DE:                         ; DATA XREF: .pdata:00000001400E3D6C↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140410300   proc near               ; CODE XREF: sub_140A16EC0+69↓j
                                        ; sub_140A16EC0+71↓j
                                        ; DATA XREF: ...

var_E8          = byte ptr -0E8h
arg_0           = word ptr  8

                cmp     [rsp+arg_0], 23h ; '#'
                jz      loc_140410567
                test    cs:byte_140E01840, 1
                jnz     short loc_140410318
                swapgs

loc_140410318:                          ; CODE XREF: sub_140410300+13↑j
                lfence
                mov     rcx, r10
                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+168h+var_E8]
                mov     [rbp+0C0h], rbx
                mov     [rbp+0C8h], rdi
                mov     [rbp+0D0h], rsi
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14041035C
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_14041035C
                stac

loc_14041035C:                          ; CODE XREF: sub_140410300+4E↑j
                                        ; sub_140410300+57↑j
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_1404103CC
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1404103CC:                          ; CODE XREF: sub_140410300+B9↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_1404103F4
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_1404103F4:                          ; CODE XREF: sub_140410300+DB↑j
                test    edx, 2
                jz      loc_140410525
                call    loc_140410513

loc_140410405:                          ; CODE XREF: sub_140410300+112↓p
                add     rsp, 8
                call    loc_14041051C

loc_14041040E:                          ; CODE XREF: sub_140410300+11B↓p
                add     rsp, 8
                call    loc_140410405

loc_140410417:                          ; CODE XREF: sub_140410300+124↓p
                add     rsp, 8
                call    loc_14041040E

loc_140410420:                          ; CODE XREF: sub_140410300+12D↓p
                add     rsp, 8
                call    loc_140410417

loc_140410429:                          ; CODE XREF: sub_140410300+136↓p
                add     rsp, 8
                call    loc_140410420

loc_140410432:                          ; CODE XREF: sub_140410300+13F↓p
                add     rsp, 8
                call    loc_140410429

loc_14041043B:                          ; CODE XREF: sub_140410300+148↓p
                add     rsp, 8
                call    loc_140410432

loc_140410444:                          ; CODE XREF: sub_140410300+151↓p
                add     rsp, 8
                call    loc_14041043B

loc_14041044D:                          ; CODE XREF: sub_140410300+15A↓p
                add     rsp, 8
                call    loc_140410444

loc_140410456:                          ; CODE XREF: sub_140410300+163↓p
                add     rsp, 8
                call    loc_14041044D

loc_14041045F:                          ; CODE XREF: sub_140410300+16C↓p
                add     rsp, 8
                call    loc_140410456

loc_140410468:                          ; CODE XREF: sub_140410300+175↓p
                add     rsp, 8
                call    loc_14041045F

loc_140410471:                          ; CODE XREF: sub_140410300+17E↓p
                add     rsp, 8
                call    loc_140410468

loc_14041047A:                          ; CODE XREF: sub_140410300+187↓p
                add     rsp, 8
                call    loc_140410471

loc_140410483:                          ; CODE XREF: sub_140410300+190↓p
                add     rsp, 8
                call    loc_14041047A

loc_14041048C:                          ; CODE XREF: sub_140410300+199↓p
                add     rsp, 8
                call    loc_140410483

loc_140410495:                          ; CODE XREF: sub_140410300+1A2↓p
                add     rsp, 8
                call    loc_14041048C

loc_14041049E:                          ; CODE XREF: sub_140410300+1AB↓p
                add     rsp, 8
                call    loc_140410495

loc_1404104A7:                          ; CODE XREF: sub_140410300+1B4↓p
                add     rsp, 8
                call    loc_14041049E

loc_1404104B0:                          ; CODE XREF: sub_140410300+1BD↓p
                add     rsp, 8
                call    loc_1404104A7

loc_1404104B9:                          ; CODE XREF: sub_140410300+1C6↓p
                add     rsp, 8
                call    loc_1404104B0

loc_1404104C2:                          ; CODE XREF: sub_140410300+1CF↓p
                add     rsp, 8
                call    loc_1404104B9

loc_1404104CB:                          ; CODE XREF: sub_140410300+1D8↓p
                add     rsp, 8
                call    loc_1404104C2

loc_1404104D4:                          ; CODE XREF: sub_140410300+1E1↓p
                add     rsp, 8
                call    loc_1404104CB

loc_1404104DD:                          ; CODE XREF: sub_140410300+1EA↓p
                add     rsp, 8
                call    loc_1404104D4

loc_1404104E6:                          ; CODE XREF: sub_140410300+1F3↓p
                add     rsp, 8
                call    loc_1404104DD

loc_1404104EF:                          ; CODE XREF: sub_140410300+1FC↓p
                add     rsp, 8
                call    loc_1404104E6

loc_1404104F8:                          ; CODE XREF: sub_140410300+205↓p
                add     rsp, 8
                call    loc_1404104EF

loc_140410501:                          ; CODE XREF: sub_140410300+20E↓p
                add     rsp, 8
                call    loc_1404104F8

loc_14041050A:                          ; CODE XREF: sub_140410300+217↓p
                add     rsp, 8
                call    loc_140410501

loc_140410513:                          ; CODE XREF: sub_140410300+100↑p
                add     rsp, 8
                call    loc_14041050A

loc_14041051C:                          ; CODE XREF: sub_140410300+109↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140410525:                          ; CODE XREF: sub_140410300+FA↑j
                lfence
                mov     byte ptr gs:853h, 0
                jmp     loc_140410C3A
; ---------------------------------------------------------------------------
                retn
sub_140410300   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_140410537:                         ; DATA XREF: .pdata:00000001400E3D78↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140410540   proc near               ; DATA XREF: .pdata:00000001400E3D84↑o
                                        ; sub_14099D840+30E↓o

var_110         = byte ptr -110h

                swapgs
                mov     gs:10h, rsp
                mov     rsp, gs:1A8h
                push    2Bh ; '+'
                push    qword ptr gs:10h
                push    r11
                push    23h ; '#'
                push    rcx
                swapgs

loc_140410567:                          ; CODE XREF: sub_140410300+6↑j
                lfence
                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+190h+var_110]
                mov     byte ptr [rbp-55h], 1
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     [rbp-38h], r8
                mov     [rbp-30h], r9
                mov     [rbp-28h], r10
                mov     [rbp-20h], r11
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_1404105D4
                lfence
                test    byte ptr gs:278h, 1
                jnz     short loc_1404105BD
                lfence
                jmp     loc_140410813
; ---------------------------------------------------------------------------

loc_1404105BD:                          ; CODE XREF: sub_140410540+73↑j
                movzx   eax, byte ptr gs:27Ah
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr
                jmp     loc_140410813
; ---------------------------------------------------------------------------

loc_1404105D4:                          ; CODE XREF: sub_140410540+65↑j
                test    cs:byte_140E01840, 1
                jnz     short loc_1404105E0
                swapgs

loc_1404105E0:                          ; CODE XREF: sub_140410540+9B↑j
                lfence
                mov     r10, gs:188h
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_140410650
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_140410650:                          ; CODE XREF: sub_140410540+FD↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_140410678
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_140410678:                          ; CODE XREF: sub_140410540+11F↑j
                test    edx, 2
                jz      loc_1404107A9
                call    loc_140410797

loc_140410689:                          ; CODE XREF: sub_140410540+156↓p
                add     rsp, 8
                call    loc_1404107A0

loc_140410692:                          ; CODE XREF: sub_140410540+15F↓p
                add     rsp, 8
                call    loc_140410689

loc_14041069B:                          ; CODE XREF: sub_140410540+168↓p
                add     rsp, 8
                call    loc_140410692

loc_1404106A4:                          ; CODE XREF: sub_140410540+171↓p
                add     rsp, 8
                call    loc_14041069B

loc_1404106AD:                          ; CODE XREF: sub_140410540+17A↓p
                add     rsp, 8
                call    loc_1404106A4

loc_1404106B6:                          ; CODE XREF: sub_140410540+183↓p
                add     rsp, 8
                call    loc_1404106AD

loc_1404106BF:                          ; CODE XREF: sub_140410540+18C↓p
                add     rsp, 8
                call    loc_1404106B6

loc_1404106C8:                          ; CODE XREF: sub_140410540+195↓p
                add     rsp, 8
                call    loc_1404106BF

loc_1404106D1:                          ; CODE XREF: sub_140410540+19E↓p
                add     rsp, 8
                call    loc_1404106C8

loc_1404106DA:                          ; CODE XREF: sub_140410540+1A7↓p
                add     rsp, 8
                call    loc_1404106D1

loc_1404106E3:                          ; CODE XREF: sub_140410540+1B0↓p
                add     rsp, 8
                call    loc_1404106DA

loc_1404106EC:                          ; CODE XREF: sub_140410540+1B9↓p
                add     rsp, 8
                call    loc_1404106E3

loc_1404106F5:                          ; CODE XREF: sub_140410540+1C2↓p
                add     rsp, 8
                call    loc_1404106EC

loc_1404106FE:                          ; CODE XREF: sub_140410540+1CB↓p
                add     rsp, 8
                call    loc_1404106F5

loc_140410707:                          ; CODE XREF: sub_140410540+1D4↓p
                add     rsp, 8
                call    loc_1404106FE

loc_140410710:                          ; CODE XREF: sub_140410540+1DD↓p
                add     rsp, 8
                call    loc_140410707

loc_140410719:                          ; CODE XREF: sub_140410540+1E6↓p
                add     rsp, 8
                call    loc_140410710

loc_140410722:                          ; CODE XREF: sub_140410540+1EF↓p
                add     rsp, 8
                call    loc_140410719

loc_14041072B:                          ; CODE XREF: sub_140410540+1F8↓p
                add     rsp, 8
                call    loc_140410722

loc_140410734:                          ; CODE XREF: sub_140410540+201↓p
                add     rsp, 8
                call    loc_14041072B

loc_14041073D:                          ; CODE XREF: sub_140410540+20A↓p
                add     rsp, 8
                call    loc_140410734

loc_140410746:                          ; CODE XREF: sub_140410540+213↓p
                add     rsp, 8
                call    loc_14041073D

loc_14041074F:                          ; CODE XREF: sub_140410540+21C↓p
                add     rsp, 8
                call    loc_140410746

loc_140410758:                          ; CODE XREF: sub_140410540+225↓p
                add     rsp, 8
                call    loc_14041074F

loc_140410761:                          ; CODE XREF: sub_140410540+22E↓p
                add     rsp, 8
                call    loc_140410758

loc_14041076A:                          ; CODE XREF: sub_140410540+237↓p
                add     rsp, 8
                call    loc_140410761

loc_140410773:                          ; CODE XREF: sub_140410540+240↓p
                add     rsp, 8
                call    loc_14041076A

loc_14041077C:                          ; CODE XREF: sub_140410540+249↓p
                add     rsp, 8
                call    loc_140410773

loc_140410785:                          ; CODE XREF: sub_140410540+252↓p
                add     rsp, 8
                call    loc_14041077C

loc_14041078E:                          ; CODE XREF: sub_140410540+25B↓p
                add     rsp, 8
                call    loc_140410785

loc_140410797:                          ; CODE XREF: sub_140410540+144↑p
                add     rsp, 8
                call    loc_14041078E

loc_1404107A0:                          ; CODE XREF: sub_140410540+14D↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_1404107A9:                          ; CODE XREF: sub_140410540+13E↑j
                lfence
                mov     byte ptr gs:853h, 0
                test    byte ptr [r10+3], 80h
                jz      short loc_1404107FE
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [r10+0F0h], rax
                jz      short loc_1404107FE
                mov     rdx, [r10+1F0h]
                bts     dword ptr [r10+74h], 8
                dec     word ptr [r10+1E6h]
                mov     [rdx+80h], rax

loc_1404107FE:                          ; CODE XREF: sub_140410540+27A↑j
                                        ; sub_140410540+2A0↑j
                test    byte ptr [r10+3], 3
                mov     word ptr [rbp+80h], 0
                jz      short loc_140410813
                call    sub_1403FDC80

loc_140410813:                          ; CODE XREF: sub_140410540+78↑j
                                        ; sub_140410540+8F↑j ...
                cld
                stmxcsr dword ptr [rbp-54h]
                ldmxcsr dword ptr gs:180h
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm1
                movaps  xmmword ptr [rbp+10h], xmm2
                movaps  xmmword ptr [rbp+20h], xmm3
                movaps  xmmword ptr [rbp+30h], xmm4
                movaps  xmmword ptr [rbp+40h], xmm5
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_14041084E
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_14041084E
                stac

loc_14041084E:                          ; CODE XREF: sub_140410540+300↑j
                                        ; sub_140410540+309↑j
                sub     qword ptr [rbp+0E8h], 2
                and     dword ptr [rbp+0ECh], 0
                sti
                mov     ecx, 0C000001Dh
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                nop
                retn
sub_140410540   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_140410873:                         ; DATA XREF: .pdata:00000001400E3D84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140410880   proc near               ; DATA XREF: .rdata:00000001400B07A4↑o
                                        ; .pdata:00000001400E3D90↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                test    dword ptr [rcx+4], 66h
                jnz     short loc_140410906
                lea     rax, loc_140410DC7
                cmp     rax, [rcx+10h]
                jz      short loc_1404108B4
                lea     rax, loc_140410E60
                cmp     rax, [rcx+10h]
                ja      short loc_1404108D4
                lea     rax, loc_140410ED0
                cmp     rax, [rcx+10h]
                jbe     short loc_1404108D4

loc_1404108B4:                          ; CODE XREF: sub_140410880+18↑j
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], r8
                mov     r9d, [rcx]
                mov     r8, rcx
                mov     rcx, rdx
                lea     rdx, loc_140410F00
                call    RtlUnwindEx

loc_1404108D4:                          ; CODE XREF: sub_140410880+25↑j
                                        ; sub_140410880+32↑j
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      short loc_1404108FC
                xor     r10, r10
                mov     r9, r8
                mov     r8, [rcx+10h]
                mov     edx, [rcx]
                mov     ecx, 3Bh ; ';'
                call    sub_1404116C0

loc_1404108FC:                          ; CODE XREF: sub_140410880+64↑j
                                        ; sub_140410880+8D↓j ...
                mov     eax, 1
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------

loc_140410906:                          ; CODE XREF: sub_140410880+B↑j
                test    dword ptr [rcx+4], 20h
                jnz     short loc_1404108FC
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      short loc_14041092B
                mov     ecx, 3Ah ; ':'
                call    sub_1404116C0

loc_14041092B:                          ; CODE XREF: sub_140410880+9F↑j
                mov     rcx, [rax+90h]
                mov     rdx, [rcx+138h]
                mov     [rax+90h], rdx
                mov     dl, [rcx+28h]
                mov     [rax+232h], dl
                jmp     short loc_1404108FC
sub_140410880   endp

; ---------------------------------------------------------------------------
algn_14041094B:                         ; DATA XREF: .pdata:00000001400E3D90↑o
                align 40h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E8h

sub_140410980   proc near               ; CODE XREF: sub_1403F9BE0+19↑j
                                        ; sub_1403F9C00+19↑j ...

var_140         = byte ptr -140h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h

                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+80h]
                mov     [rbp+0E8h+var_28], rbx
                mov     [rbp+0E8h+var_20], rdi
                mov     [rbp+0E8h+var_18], rsi
                sti
                mov     rbx, gs:188h
                prefetchw byte ptr [rbx+90h]
                movzx   edi, byte ptr [rbx+232h]
                mov     [rbp+0E8h+var_140], dil
                mov     byte ptr [rbx+232h], 0
                mov     r10, [rbx+90h]
                mov     [rbp+0E8h+var_30], r10
                lea     r11, loc_140410D60
                jmp     r11
; ---------------------------------------------------------------------------
                db 3 dup(0CCh)
; ---------------------------------------------------------------------------
                retn
sub_140410980   endp

; ---------------------------------------------------------------------------
algn_1404109E8:                         ; DATA XREF: .pdata:00000001400E3D9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140410A00   proc near               ; DATA XREF: .pdata:00000001400E3DA8↑o
                                        ; sub_1403EB664+21↑o ...

var_110         = byte ptr -110h
var_E8          = byte ptr -0E8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
arg_68          = qword ptr  70h

; __unwind { // sub_140410880
                swapgs
                mov     gs:10h, rsp
                mov     rsp, gs:1A8h
                push    2Bh ; '+'
                push    qword ptr gs:10h
                push    r11
                push    33h ; '3'
                push    rcx
                mov     rcx, r10
                sub     rsp, 8
                push    rbp
                sub     rsp, 158h
                lea     rbp, [rsp+190h+var_110]
                mov     [rbp+0C0h], rbx
                mov     [rbp+0C8h], rdi
                mov     [rbp+0D0h], rsi
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_140410A65
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_140410A65
                stac

loc_140410A65:                          ; CODE XREF: sub_140410A00+57↑j
                                        ; sub_140410A00+60↑j
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     rcx, gs:188h
                mov     rcx, [rcx+220h]
                mov     rcx, [rcx+9E0h]
                mov     gs:270h, rcx
                mov     cl, gs:850h
                mov     gs:851h, cl
                mov     cl, gs:278h
                mov     gs:852h, cl
                movzx   eax, byte ptr gs:27Bh
                cmp     gs:27Ah, al
                jz      short loc_140410AD5
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_140410AD5:                          ; CODE XREF: sub_140410A00+C2↑j
                movzx   edx, byte ptr gs:278h
                test    edx, 8
                jz      short loc_140410AFD
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr
                movzx   edx, byte ptr gs:278h

loc_140410AFD:                          ; CODE XREF: sub_140410A00+E4↑j
                test    edx, 2
                jz      loc_140410C2E
                call    loc_140410C1C

loc_140410B0E:                          ; CODE XREF: sub_140410A00+11B↓p
                add     rsp, 8
                call    loc_140410C25

loc_140410B17:                          ; CODE XREF: sub_140410A00+124↓p
                add     rsp, 8
                call    loc_140410B0E

loc_140410B20:                          ; CODE XREF: sub_140410A00+12D↓p
                add     rsp, 8
                call    loc_140410B17

loc_140410B29:                          ; CODE XREF: sub_140410A00+136↓p
                add     rsp, 8
                call    loc_140410B20

loc_140410B32:                          ; CODE XREF: sub_140410A00+13F↓p
                add     rsp, 8
                call    loc_140410B29

loc_140410B3B:                          ; CODE XREF: sub_140410A00+148↓p
                add     rsp, 8
                call    loc_140410B32

loc_140410B44:                          ; CODE XREF: sub_140410A00+151↓p
                add     rsp, 8
                call    loc_140410B3B

loc_140410B4D:                          ; CODE XREF: sub_140410A00+15A↓p
                add     rsp, 8
                call    loc_140410B44

loc_140410B56:                          ; CODE XREF: sub_140410A00+163↓p
                add     rsp, 8
                call    loc_140410B4D

loc_140410B5F:                          ; CODE XREF: sub_140410A00+16C↓p
                add     rsp, 8
                call    loc_140410B56

loc_140410B68:                          ; CODE XREF: sub_140410A00+175↓p
                add     rsp, 8
                call    loc_140410B5F

loc_140410B71:                          ; CODE XREF: sub_140410A00+17E↓p
                add     rsp, 8
                call    loc_140410B68

loc_140410B7A:                          ; CODE XREF: sub_140410A00+187↓p
                add     rsp, 8
                call    loc_140410B71

loc_140410B83:                          ; CODE XREF: sub_140410A00+190↓p
                add     rsp, 8
                call    loc_140410B7A

loc_140410B8C:                          ; CODE XREF: sub_140410A00+199↓p
                add     rsp, 8
                call    loc_140410B83

loc_140410B95:                          ; CODE XREF: sub_140410A00+1A2↓p
                add     rsp, 8
                call    loc_140410B8C

loc_140410B9E:                          ; CODE XREF: sub_140410A00+1AB↓p
                add     rsp, 8
                call    loc_140410B95

loc_140410BA7:                          ; CODE XREF: sub_140410A00+1B4↓p
                add     rsp, 8
                call    loc_140410B9E

loc_140410BB0:                          ; CODE XREF: sub_140410A00+1BD↓p
                add     rsp, 8
                call    loc_140410BA7

loc_140410BB9:                          ; CODE XREF: sub_140410A00+1C6↓p
                add     rsp, 8
                call    loc_140410BB0

loc_140410BC2:                          ; CODE XREF: sub_140410A00+1CF↓p
                add     rsp, 8
                call    loc_140410BB9

loc_140410BCB:                          ; CODE XREF: sub_140410A00+1D8↓p
                add     rsp, 8
                call    loc_140410BC2

loc_140410BD4:                          ; CODE XREF: sub_140410A00+1E1↓p
                add     rsp, 8
                call    loc_140410BCB

loc_140410BDD:                          ; CODE XREF: sub_140410A00+1EA↓p
                add     rsp, 8
                call    loc_140410BD4

loc_140410BE6:                          ; CODE XREF: sub_140410A00+1F3↓p
                add     rsp, 8
                call    loc_140410BDD

loc_140410BEF:                          ; CODE XREF: sub_140410A00+1FC↓p
                add     rsp, 8
                call    loc_140410BE6

loc_140410BF8:                          ; CODE XREF: sub_140410A00+205↓p
                add     rsp, 8
                call    loc_140410BEF

loc_140410C01:                          ; CODE XREF: sub_140410A00+20E↓p
                add     rsp, 8
                call    loc_140410BF8

loc_140410C0A:                          ; CODE XREF: sub_140410A00+217↓p
                add     rsp, 8
                call    loc_140410C01

loc_140410C13:                          ; CODE XREF: sub_140410A00+220↓p
                add     rsp, 8
                call    loc_140410C0A

loc_140410C1C:                          ; CODE XREF: sub_140410A00+109↑p
                add     rsp, 8
                call    loc_140410C13

loc_140410C25:                          ; CODE XREF: sub_140410A00+112↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140410C2E:                          ; CODE XREF: sub_140410A00+103↑j
                lfence
                mov     byte ptr gs:853h, 0

loc_140410C3A:                          ; CODE XREF: sub_140410300+231↑j
                                        ; sub_140A18180+252↓j
                mov     byte ptr [rbp-55h], 2
                mov     rbx, gs:188h
                prefetchw byte ptr [rbx+90h]
                stmxcsr dword ptr [rbp-54h]
                ldmxcsr dword ptr gs:180h
                cmp     byte ptr [rbx+3], 0
                mov     word ptr [rbp+80h], 0
                jz      loc_140410D3E
                test    byte ptr [rbx+3], 3
                mov     [rbp-38h], r8
                mov     [rbp-30h], r9
                jz      short loc_140410C81
                call    sub_1403FDC80

loc_140410C81:                          ; CODE XREF: sub_140410A00+27A↑j
                test    byte ptr [rbx+3], 24h
                jz      short loc_140410CDD
                mov     [rbp-20h], r10
                mov     [rbp-28h], r10
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm1
                movaps  xmmword ptr [rbp+10h], xmm2
                movaps  xmmword ptr [rbp+20h], xmm3
                movaps  xmmword ptr [rbp+30h], xmm4
                movaps  xmmword ptr [rbp+40h], xmm5
                sti
                mov     rcx, rsp
                call    sub_140582DF0
                cmp     al, 1
                jz      short loc_140410CDD
                mov     rax, [rbp-50h]
                jl      short loc_140410CCE
                mov     ecx, 0C000001Ch
                xor     edx, edx
                mov     r8, [rbp+0E8h]
                call    sub_140411740
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140410CCE:                          ; CODE XREF: sub_140410A00+2B8↑j
                test    byte ptr [rbx+3], 4
                jz      loc_140410F00
                jmp     loc_1404112AB
; ---------------------------------------------------------------------------

loc_140410CDD:                          ; CODE XREF: sub_140410A00+285↑j
                                        ; sub_140410A00+2B2↑j
                test    byte ptr [rbx+3], 80h
                jz      short loc_140410D2B
                mov     ecx, 0C0000102h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                cmp     rax, cs:MmUserProbeAddress
                cmovnb  rax, cs:MmUserProbeAddress
                cmp     [rbx+0F0h], rax
                jz      short loc_140410D2B
                mov     rdx, [rbx+1F0h]
                bts     dword ptr [rbx+74h], 8
                dec     word ptr [rbx+1E6h]
                mov     [rdx+80h], rax
                sti
                call    sub_140412640
                jmp     short loc_140410D36
; ---------------------------------------------------------------------------

loc_140410D2B:                          ; CODE XREF: sub_140410A00+2E1↑j
                                        ; sub_140410A00+307↑j
                test    byte ptr [rbx+3], 40h
                jz      short loc_140410D36
                bts     dword ptr [rbx+74h], 10h

loc_140410D36:                          ; CODE XREF: sub_140410A00+329↑j
                                        ; sub_140410A00+32F↑j
                mov     r8, [rbp-38h]
                mov     r9, [rbp-30h]

loc_140410D3E:                          ; CODE XREF: sub_140410A00+268↑j
                mov     rax, [rbp-50h]
                mov     rcx, [rbp-48h]
                mov     rdx, [rbp-40h]
                sti
                mov     [rbx+88h], rcx
                mov     [rbx+80h], eax
                nop     dword ptr [rax+rax+00000000h]

loc_140410D60:                          ; DATA XREF: sub_140410980+5A↑o
                                        ; .data:0000000140C00340↓o
                mov     [rbx+90h], rsp
                mov     edi, eax
                shr     edi, 7
                and     edi, 20h
                and     eax, 0FFFh

loc_140410D74:                          ; CODE XREF: sub_140410A00+B7A↓j
                lea     r10, xmmword_140E018C0
                lea     r11, xmmword_140CFCA40
                test    dword ptr [rbx+78h], 80h
                jz      short loc_140410D9E
                test    dword ptr [rbx+78h], 200000h
                jz      short loc_140410D9B
                lea     r11, xmmword_140CFCC00

loc_140410D9B:                          ; CODE XREF: sub_140410A00+392↑j
                mov     r10, r11

loc_140410D9E:                          ; CODE XREF: sub_140410A00+389↑j
                cmp     eax, [r10+rdi+10h]
                jnb     loc_140411541
                mov     r10, [r10+rdi]
                movsxd  r11, dword ptr [r10+rax*4]
                mov     rax, r11
                sar     r11, 4
                add     r10, r11
                cmp     edi, 20h ; ' '
                jnz     short loc_140410E10
                mov     r11, [rbx+0F0h]

loc_140410DC7:                          ; DATA XREF: sub_140410880+D↑o
                cmp     dword ptr [r11+1740h], 0
                jz      short loc_140410E10
                mov     [rbp-50h], rax
                mov     [rbp-48h], rcx
                mov     [rbp-40h], rdx
                mov     rbx, r8
                mov     rdi, r9
                mov     rsi, r10
                mov     ecx, 7
                xor     edx, edx
                xor     r8, r8
                xor     r9, r9
                call    sub_1406630E0
                mov     rax, [rbp-50h]
                mov     rcx, [rbp-48h]
                mov     rdx, [rbp-40h]
                mov     r8, rbx
                mov     r9, rdi
                mov     r10, rsi
                nop     dword ptr [rax]

loc_140410E10:                          ; CODE XREF: sub_140410A00+3BE↑j
                                        ; sub_140410A00+3CF↑j
                and     eax, 0Fh
                jz      loc_140410ED0
                shl     eax, 3
                lea     rsp, [rsp-70h]
                lea     rdi, [rsp+100h+var_E8]
                mov     rsi, [rbp+100h]
                lea     rsi, [rsi+20h]
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_140410E50
                cmp     rsi, cs:MmUserProbeAddress
                cmovnb  rsi, cs:MmUserProbeAddress
                nop     dword ptr [rax+00000000h]

loc_140410E50:                          ; CODE XREF: sub_140410A00+438↑j
                lea     r11, loc_140410ED0
                sub     r11, rax
                jmp     r11
; ---------------------------------------------------------------------------
                align 20h

loc_140410E60:                          ; DATA XREF: sub_140410880+1A↑o
                mov     rax, [rsi+70h]
                mov     [rdi+70h], rax
                mov     rax, [rsi+68h]
                mov     [rdi+68h], rax
                mov     rax, [rsi+60h]
                mov     [rdi+60h], rax
                mov     rax, [rsi+58h]
                mov     [rdi+58h], rax
                mov     rax, [rsi+50h]
                mov     [rdi+50h], rax
                mov     rax, [rsi+48h]
                mov     [rdi+48h], rax
                mov     rax, [rsi+40h]
                mov     [rdi+40h], rax
                mov     rax, [rsi+38h]
                mov     [rdi+38h], rax
                mov     rax, [rsi+30h]
                mov     [rdi+30h], rax
                mov     rax, [rsi+28h]
                mov     [rdi+28h], rax
                mov     rax, [rsi+20h]
                mov     [rdi+20h], rax
                mov     rax, [rsi+18h]
                mov     [rdi+18h], rax
                mov     rax, [rsi+10h]
                mov     [rdi+10h], rax
                mov     rax, [rsi+8]
                mov     [rdi+8], rax

loc_140410ED0:                          ; CODE XREF: sub_140410A00+413↑j
                                        ; DATA XREF: sub_140410880+27↑o ...
                test    cs:dword_140CFC600, 1
                jnz     loc_1404115DF
                test    dword ptr cs:xmmword_140CFC480+8, 40h
                jnz     loc_140411653
                mov     rax, r10
                call    rax
                nop     dword ptr [rax]

loc_140410EF8:                          ; CODE XREF: sub_140410A00+C4E↓j
                                        ; sub_140410A00+CA5↓j
                inc     dword ptr gs:2EB8h

loc_140410F00:                          ; CODE XREF: sub_140410A00+2D2↑j
                                        ; sub_140410A00+B9B↓j ...
                mov     rbx, [rbp+0C0h]
                mov     rdi, [rbp+0C8h]
                mov     rsi, [rbp+0D0h]
                mov     r11, gs:188h
                test    byte ptr [rbp+0F0h], 1
                jz      loc_14041127E
                mov     rcx, cr8
                or      cl, [r11+24Ah]
                or      ecx, [r11+1E4h]
                jnz     loc_1404115AB
                cli

loc_140410F44:                          ; CODE XREF: sub_140410A00+5AD↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_140410FAF
                mov     [rbp-50h], rax
                xor     eax, eax
                mov     [rbp-48h], rax
                mov     [rbp-40h], rax
                mov     [rbp-38h], rax
                mov     [rbp-30h], rax
                mov     [rbp-28h], rax
                mov     [rbp-20h], rax
                pxor    xmm0, xmm0
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm0
                movaps  xmmword ptr [rbp+10h], xmm0
                movaps  xmmword ptr [rbp+20h], xmm0
                movaps  xmmword ptr [rbp+30h], xmm0
                movaps  xmmword ptr [rbp+40h], xmm0
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                mov     rax, [rbp-50h]
                jmp     short loc_140410F44
; ---------------------------------------------------------------------------

loc_140410FAF:                          ; CODE XREF: sub_140410A00+554↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_140410FC9
                mov     [rbp-50h], rax
                xor     ecx, ecx
                call    sub_1402ADF00
                mov     rax, [rbp-50h]

loc_140410FC9:                          ; CODE XREF: sub_140410A00+5B8↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_140411019
                mov     [rbp-50h], rax
                xor     eax, eax
                mov     [rbp-48h], rax
                mov     [rbp-40h], rax
                mov     [rbp-38h], rax
                mov     [rbp-30h], rax
                mov     [rbp-28h], rax
                mov     [rbp-20h], rax
                pxor    xmm0, xmm0
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm0
                movaps  xmmword ptr [rbp+10h], xmm0
                movaps  xmmword ptr [rbp+20h], xmm0
                movaps  xmmword ptr [rbp+30h], xmm0
                movaps  xmmword ptr [rbp+40h], xmm0
                call    sub_1403FE910

loc_140411019:                          ; CODE XREF: sub_140410A00+5D8↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_140411057
                mov     [rbp-50h], rax
                test    byte ptr [rcx+2], 1
                jz      short loc_140411042
                call    sub_14051C050
                mov     rcx, gs:188h

loc_140411042:                          ; CODE XREF: sub_140410A00+632↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_140411053
                lea     rsp, [rbp-80h]
                xor     ecx, ecx
                call    sub_1404128C0

loc_140411053:                          ; CODE XREF: sub_140410A00+646↑j
                mov     rax, [rbp-50h]

loc_140411057:                          ; CODE XREF: sub_140410A00+628↑j
                ldmxcsr dword ptr [rbp-54h]
                xor     r10, r10
                cmp     word ptr [rbp+80h], 0
                jz      short loc_1404110A9
                mov     [rbp-50h], rax
                call    sub_1403FDC00
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                mov     rax, [rax+3D8h]
                or      rax, rax
                jz      short loc_1404110A5
                cmp     word ptr [rbp+0F0h], 33h ; '3'
                jnz     short loc_1404110A5
                mov     r10, [rbp+0E8h]
                mov     [rbp+0E8h], rax

loc_1404110A5:                          ; CODE XREF: sub_140410A00+68B↑j
                                        ; sub_140410A00+695↑j
                mov     rax, [rbp-50h]

loc_1404110A9:                          ; CODE XREF: sub_140410A00+666↑j
                mov     [rbp-50h], rax
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_1404110DA
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1404110DA:                          ; CODE XREF: sub_140410A00+6C7↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_1404110F5
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_1404110F5:                          ; CODE XREF: sub_140410A00+6E5↑j
                btr     word ptr gs:278h, 5
                jnb     loc_14041122B
                call    loc_140411219

loc_14041110B:                          ; CODE XREF: sub_140410A00+718↓p
                add     rsp, 8
                call    loc_140411222

loc_140411114:                          ; CODE XREF: sub_140410A00+721↓p
                add     rsp, 8
                call    loc_14041110B

loc_14041111D:                          ; CODE XREF: sub_140410A00+72A↓p
                add     rsp, 8
                call    loc_140411114

loc_140411126:                          ; CODE XREF: sub_140410A00+733↓p
                add     rsp, 8
                call    loc_14041111D

loc_14041112F:                          ; CODE XREF: sub_140410A00+73C↓p
                add     rsp, 8
                call    loc_140411126

loc_140411138:                          ; CODE XREF: sub_140410A00+745↓p
                add     rsp, 8
                call    loc_14041112F

loc_140411141:                          ; CODE XREF: sub_140410A00+74E↓p
                add     rsp, 8
                call    loc_140411138

loc_14041114A:                          ; CODE XREF: sub_140410A00+757↓p
                add     rsp, 8
                call    loc_140411141

loc_140411153:                          ; CODE XREF: sub_140410A00+760↓p
                add     rsp, 8
                call    loc_14041114A

loc_14041115C:                          ; CODE XREF: sub_140410A00+769↓p
                add     rsp, 8
                call    loc_140411153

loc_140411165:                          ; CODE XREF: sub_140410A00+772↓p
                add     rsp, 8
                call    loc_14041115C

loc_14041116E:                          ; CODE XREF: sub_140410A00+77B↓p
                add     rsp, 8
                call    loc_140411165

loc_140411177:                          ; CODE XREF: sub_140410A00+784↓p
                add     rsp, 8
                call    loc_14041116E

loc_140411180:                          ; CODE XREF: sub_140410A00+78D↓p
                add     rsp, 8
                call    loc_140411177

loc_140411189:                          ; CODE XREF: sub_140410A00+796↓p
                add     rsp, 8
                call    loc_140411180

loc_140411192:                          ; CODE XREF: sub_140410A00+79F↓p
                add     rsp, 8
                call    loc_140411189

loc_14041119B:                          ; CODE XREF: sub_140410A00+7A8↓p
                add     rsp, 8
                call    loc_140411192

loc_1404111A4:                          ; CODE XREF: sub_140410A00+7B1↓p
                add     rsp, 8
                call    loc_14041119B

loc_1404111AD:                          ; CODE XREF: sub_140410A00+7BA↓p
                add     rsp, 8
                call    loc_1404111A4

loc_1404111B6:                          ; CODE XREF: sub_140410A00+7C3↓p
                add     rsp, 8
                call    loc_1404111AD

loc_1404111BF:                          ; CODE XREF: sub_140410A00+7CC↓p
                add     rsp, 8
                call    loc_1404111B6

loc_1404111C8:                          ; CODE XREF: sub_140410A00+7D5↓p
                add     rsp, 8
                call    loc_1404111BF

loc_1404111D1:                          ; CODE XREF: sub_140410A00+7DE↓p
                add     rsp, 8
                call    loc_1404111C8

loc_1404111DA:                          ; CODE XREF: sub_140410A00+7E7↓p
                add     rsp, 8
                call    loc_1404111D1

loc_1404111E3:                          ; CODE XREF: sub_140410A00+7F0↓p
                add     rsp, 8
                call    loc_1404111DA

loc_1404111EC:                          ; CODE XREF: sub_140410A00+7F9↓p
                add     rsp, 8
                call    loc_1404111E3

loc_1404111F5:                          ; CODE XREF: sub_140410A00+802↓p
                add     rsp, 8
                call    loc_1404111EC

loc_1404111FE:                          ; CODE XREF: sub_140410A00+80B↓p
                add     rsp, 8
                call    loc_1404111F5

loc_140411207:                          ; CODE XREF: sub_140410A00+814↓p
                add     rsp, 8
                call    loc_1404111FE

loc_140411210:                          ; CODE XREF: sub_140410A00+81D↓p
                add     rsp, 8
                call    loc_140411207

loc_140411219:                          ; CODE XREF: sub_140410A00+706↑p
                add     rsp, 8
                call    loc_140411210

loc_140411222:                          ; CODE XREF: sub_140410A00+70F↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_14041122B:                          ; CODE XREF: sub_140410A00+700↑j
                mov     rax, [rbp-50h]
                mov     r8, [rbp+100h]
                mov     r9, [rbp+0D8h]
                xor     edx, edx
                pxor    xmm0, xmm0
                pxor    xmm1, xmm1
                pxor    xmm2, xmm2
                pxor    xmm3, xmm3
                pxor    xmm4, xmm4
                pxor    xmm5, xmm5
                mov     rcx, [rbp+0E8h]
                mov     r11, [rbp+0F8h]
                test    cs:byte_140E01840, 1
                jnz     sub_140A17DC0
                mov     rbp, r9
                mov     rsp, r8
                swapgs
                sysret
; ---------------------------------------------------------------------------

loc_14041127E:                          ; CODE XREF: sub_140410A00+525↑j
                mov     rdx, [rbp+0B8h]
                mov     [r11+90h], rdx
                mov     dl, [rbp-58h]
                mov     [r11+232h], dl
                cli
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                mov     rsp, [rsp+90h+arg_68]
                sti
                retn
; ---------------------------------------------------------------------------

loc_1404112AB:                          ; CODE XREF: sub_140410A00+2D8↑j
                mov     r11, gs:188h
                mov     rcx, cr8
                or      cl, [r11+24Ah]
                or      ecx, [r11+1E4h]
                jnz     loc_1404115AB
                cli
                mov     [rbp-50h], rax

loc_1404112D1:                          ; CODE XREF: sub_140410A00+8FC↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_1404112FE
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                mov     ecx, 0
                mov     cr8, rcx
                cli
                jmp     short loc_1404112D1
; ---------------------------------------------------------------------------

loc_1404112FE:                          ; CODE XREF: sub_140410A00+8E1↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_140411310
                xor     ecx, ecx
                call    sub_1402ADF00

loc_140411310:                          ; CODE XREF: sub_140410A00+907↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_140411326
                call    sub_1403FE910

loc_140411326:                          ; CODE XREF: sub_140410A00+91F↑j
                mov     rcx, gs:188h
                test    byte ptr [rcx+2], 1
                jz      short loc_140411343
                call    sub_14051C050
                mov     rcx, gs:188h

loc_140411343:                          ; CODE XREF: sub_140410A00+933↑j
                cmp     word ptr [rbp+80h], 0
                jz      short loc_140411352
                call    sub_1403FDC00

loc_140411352:                          ; CODE XREF: sub_140410A00+94B↑j
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_14041137F
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_14041137F:                          ; CODE XREF: sub_140410A00+96C↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_14041139A
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_14041139A:                          ; CODE XREF: sub_140410A00+98A↑j
                btr     word ptr gs:278h, 5
                jnb     loc_1404114D0
                call    loc_1404114BE

loc_1404113B0:                          ; CODE XREF: sub_140410A00+9BD↓p
                add     rsp, 8
                call    loc_1404114C7

loc_1404113B9:                          ; CODE XREF: sub_140410A00+9C6↓p
                add     rsp, 8
                call    loc_1404113B0

loc_1404113C2:                          ; CODE XREF: sub_140410A00+9CF↓p
                add     rsp, 8
                call    loc_1404113B9

loc_1404113CB:                          ; CODE XREF: sub_140410A00+9D8↓p
                add     rsp, 8
                call    loc_1404113C2

loc_1404113D4:                          ; CODE XREF: sub_140410A00+9E1↓p
                add     rsp, 8
                call    loc_1404113CB

loc_1404113DD:                          ; CODE XREF: sub_140410A00+9EA↓p
                add     rsp, 8
                call    loc_1404113D4

loc_1404113E6:                          ; CODE XREF: sub_140410A00+9F3↓p
                add     rsp, 8
                call    loc_1404113DD

loc_1404113EF:                          ; CODE XREF: sub_140410A00+9FC↓p
                add     rsp, 8
                call    loc_1404113E6

loc_1404113F8:                          ; CODE XREF: sub_140410A00+A05↓p
                add     rsp, 8
                call    loc_1404113EF

loc_140411401:                          ; CODE XREF: sub_140410A00+A0E↓p
                add     rsp, 8
                call    loc_1404113F8

loc_14041140A:                          ; CODE XREF: sub_140410A00+A17↓p
                add     rsp, 8
                call    loc_140411401

loc_140411413:                          ; CODE XREF: sub_140410A00+A20↓p
                add     rsp, 8
                call    loc_14041140A

loc_14041141C:                          ; CODE XREF: sub_140410A00+A29↓p
                add     rsp, 8
                call    loc_140411413

loc_140411425:                          ; CODE XREF: sub_140410A00+A32↓p
                add     rsp, 8
                call    loc_14041141C

loc_14041142E:                          ; CODE XREF: sub_140410A00+A3B↓p
                add     rsp, 8
                call    loc_140411425

loc_140411437:                          ; CODE XREF: sub_140410A00+A44↓p
                add     rsp, 8
                call    loc_14041142E

loc_140411440:                          ; CODE XREF: sub_140410A00+A4D↓p
                add     rsp, 8
                call    loc_140411437

loc_140411449:                          ; CODE XREF: sub_140410A00+A56↓p
                add     rsp, 8
                call    loc_140411440

loc_140411452:                          ; CODE XREF: sub_140410A00+A5F↓p
                add     rsp, 8
                call    loc_140411449

loc_14041145B:                          ; CODE XREF: sub_140410A00+A68↓p
                add     rsp, 8
                call    loc_140411452

loc_140411464:                          ; CODE XREF: sub_140410A00+A71↓p
                add     rsp, 8
                call    loc_14041145B

loc_14041146D:                          ; CODE XREF: sub_140410A00+A7A↓p
                add     rsp, 8
                call    loc_140411464

loc_140411476:                          ; CODE XREF: sub_140410A00+A83↓p
                add     rsp, 8
                call    loc_14041146D

loc_14041147F:                          ; CODE XREF: sub_140410A00+A8C↓p
                add     rsp, 8
                call    loc_140411476

loc_140411488:                          ; CODE XREF: sub_140410A00+A95↓p
                add     rsp, 8
                call    loc_14041147F

loc_140411491:                          ; CODE XREF: sub_140410A00+A9E↓p
                add     rsp, 8
                call    loc_140411488

loc_14041149A:                          ; CODE XREF: sub_140410A00+AA7↓p
                add     rsp, 8
                call    loc_140411491

loc_1404114A3:                          ; CODE XREF: sub_140410A00+AB0↓p
                add     rsp, 8
                call    loc_14041149A

loc_1404114AC:                          ; CODE XREF: sub_140410A00+AB9↓p
                add     rsp, 8
                call    loc_1404114A3

loc_1404114B5:                          ; CODE XREF: sub_140410A00+AC2↓p
                add     rsp, 8
                call    loc_1404114AC

loc_1404114BE:                          ; CODE XREF: sub_140410A00+9AB↑p
                add     rsp, 8
                call    loc_1404114B5

loc_1404114C7:                          ; CODE XREF: sub_140410A00+9B4↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_1404114D0:                          ; CODE XREF: sub_140410A00+9A5↑j
                ldmxcsr dword ptr [rbp-54h]
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsi, [rbp+0D0h]
                mov     rdi, [rbp+0C8h]
                mov     rbx, [rbp+0C0h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_14041153C
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_14041153C:                          ; CODE XREF: sub_140410A00+B35↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_140411541:                          ; CODE XREF: sub_140410A00+3A3↑j
                cmp     edi, 20h ; ' '
                jnz     short loc_1404115A1
                mov     [rbp-80h], eax
                mov     [rbp-78h], rcx
                mov     [rbp-70h], rdx
                mov     [rbp-68h], r8
                mov     [rbp-60h], r9
                call    sub_140402160
                or      eax, eax
                mov     eax, [rbp-80h]
                mov     rcx, [rbp-78h]
                mov     rdx, [rbp-70h]
                mov     r8, [rbp-68h]
                mov     r9, [rbp-60h]
                mov     [rbx+90h], rsp
                jz      loc_140410D74
                lea     rdi, xmmword_140CFCA60
                mov     esi, [rdi+10h]
                mov     rdi, [rdi]
                cmp     eax, esi
                jnb     short loc_1404115A1
                lea     rdi, [rdi+rsi*4]
                movsx   eax, byte ptr [rdi+rax]
                or      eax, eax
                jle     loc_140410F00

loc_1404115A1:                          ; CODE XREF: sub_140410A00+B44↑j
                                        ; sub_140410A00+B8F↑j
                mov     eax, 0C000001Ch
                jmp     loc_140410F00
; ---------------------------------------------------------------------------

loc_1404115AB:                          ; CODE XREF: sub_140410A00+53D↑j
                                        ; sub_140410A00+8C6↑j
                mov     ecx, 4Ah ; 'J'
                xor     r9d, r9d
                mov     r8, cr8
                or      r8d, r8d
                jnz     short loc_1404115D0
                mov     ecx, 1
                movzx   r8d, byte ptr [r11+24Ah]
                mov     r9d, [r11+1E4h]

loc_1404115D0:                          ; CODE XREF: sub_140410A00+BBA↑j
                mov     rdx, [rbp+0E8h]
                mov     r10, rbp
                call    sub_1404116C0

loc_1404115DF:                          ; CODE XREF: sub_140410A00+4DA↑j
                sub     rsp, 50h
                mov     [rsp+0E0h+var_C0], rcx
                mov     [rsp+0E0h+var_B8], rdx
                mov     [rsp+0E0h+var_B0], r8
                mov     [rsp+0E0h+var_A8], r9
                mov     [rsp+0E0h+var_A0], r10
                mov     rcx, r10
                mov     rdx, rsp
                add     rdx, 20h ; ' '
                mov     r8, 4
                mov     r9, rsp
                add     r9, 70h ; 'p'
                call    sub_1408BE7D0
                mov     [rbp-50h], rax
                mov     rcx, [rsp+0E0h+var_C0]
                mov     rdx, [rsp+0E0h+var_B8]
                mov     r8, [rsp+0E0h+var_B0]
                mov     r9, [rsp+0E0h+var_A8]
                mov     r10, [rsp+0E0h+var_A0]
                add     rsp, 50h
                mov     rax, r10
                call    rax
                nop     dword ptr [rax]
                mov     rcx, [rbp-50h]
                mov     rdx, rax
                call    sub_1408BE8F0
                jmp     loc_140410EF8
; ---------------------------------------------------------------------------

loc_140411653:                          ; CODE XREF: sub_140410A00+4EA↑j
                sub     rsp, 50h
                mov     [rsp+0E0h+var_C0], rcx
                mov     [rsp+0E0h+var_B8], rdx
                mov     [rsp+0E0h+var_B0], r8
                mov     [rsp+0E0h+var_A8], r9
                mov     [rsp+0E0h+var_A0], r10
                mov     rcx, r10
                call    sub_1405AA5A0
                mov     rcx, [rsp+0E0h+var_C0]
                mov     rdx, [rsp+0E0h+var_B8]
                mov     r8, [rsp+0E0h+var_B0]
                mov     r9, [rsp+0E0h+var_A8]
                mov     r10, [rsp+0E0h+var_A0]
                add     rsp, 50h
                mov     rax, r10
                call    rax
                nop     dword ptr [rax]
                mov     rcx, rax
                call    sub_1405AA640
                jmp     loc_140410EF8
; ---------------------------------------------------------------------------
                retn
; } // starts at 140410A00
sub_140410A00   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_1404116AB:                         ; DATA XREF: .pdata:00000001400E3DA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404116C0   proc near               ; CODE XREF: sub_1404011F0+3B4↑p
                                        ; sub_14040A100+3A8↑p ...

var_118         = qword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_38          = byte ptr -38h

                sub     rsp, 138h
                lea     rax, [rsp+138h+var_38]
                movaps  [rsp+138h+var_108], xmm6
                movaps  [rsp+138h+var_F8], xmm7
                movaps  [rsp+138h+var_E8], xmm8
                movaps  [rsp+138h+var_D8], xmm9
                movaps  [rsp+138h+var_C8], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                mov     [rsp+138h+var_118], r10
                call    KeBugCheckEx
                nop
                retn
sub_1404116C0   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14041172B:                         ; DATA XREF: .pdata:00000001400E3DB4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140411740   proc near               ; CODE XREF: sub_140409900+2FF↑p
                                        ; sub_140409D00+3F5↑p ...

var_1B8         = byte ptr -1B8h
var_1A8         = xmmword ptr -1A8h
var_198         = xmmword ptr -198h
var_188         = xmmword ptr -188h
var_178         = xmmword ptr -178h
var_168         = xmmword ptr -168h
var_D8          = byte ptr -0D8h
var_A0          = byte ptr -0A0h

                sub     rsp, 1D8h
                lea     rax, [rsp+1D8h+var_D8]
                movaps  [rsp+1D8h+var_1A8], xmm6
                movaps  [rsp+1D8h+var_198], xmm7
                movaps  [rsp+1D8h+var_188], xmm8
                movaps  [rsp+1D8h+var_178], xmm9
                movaps  [rsp+1D8h+var_168], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                mov     rax, gs:188h
                bt      dword ptr [rax+74h], 8
                jnb     short loc_1404117BD
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_1404117BD
                call    sub_140412800

loc_1404117BD:                          ; CODE XREF: sub_140411740+6D↑j
                                        ; sub_140411740+76↑j
                lea     rax, [rsp+1D8h+var_A0]
                mov     [rax], ecx
                xor     ecx, ecx
                mov     [rax+4], ecx
                mov     [rax+8], rcx
                mov     [rax+10h], r8
                mov     [rax+18h], edx
                mov     [rax+20h], r9
                mov     [rax+28h], r10
                mov     [rax+30h], r11
                mov     r9b, [rbp+0F0h]
                and     r9b, 1
                mov     [rsp+1D8h+var_1B8], 1
                lea     r8, [rbp-80h]
                mov     rdx, rsp
                mov     rcx, rax
                jnz     short loc_140411867
                mov     r10, cr8
                mov     r11, 2
                test    dword ptr [rbp+0F8h], 200h
                cmovz   r10, r11
                cmp     r10, r11
                jb      short loc_140411867
                cmp     byte ptr gs:80A6h, 0
                jnz     short loc_140411867
                mov     r10, gs:80A8h
                add     r10, 50h ; 'P'
                cmp     rsp, r10
                ja      short loc_140411846
                sub     r10, 6000h
                cmp     rsp, r10
                jnb     short loc_140411867

loc_140411846:                          ; CODE XREF: sub_140411740+F8↑j
                mov     r10, gs:8758h
                cmp     rsp, r10
                ja      short loc_140411860
                sub     r10, 6000h
                cmp     rsp, r10
                jnb     short loc_140411867

loc_140411860:                          ; CODE XREF: sub_140411740+112↑j
                call    sub_1403FE7F0
                jmp     short loc_14041186C
; ---------------------------------------------------------------------------

loc_140411867:                          ; CODE XREF: sub_140411740+BD↑j
                                        ; sub_140411740+DB↑j ...
                call    sub_140339370

loc_14041186C:                          ; CODE XREF: sub_140411740+125↑j
                lea     rcx, [rsp+1D8h+var_D8]
                movaps  xmm6, [rsp+1D8h+var_1A8]
                movaps  xmm7, [rsp+1D8h+var_198]
                movaps  xmm8, [rsp+1D8h+var_188]
                movaps  xmm9, [rsp+1D8h+var_178]
                movaps  xmm10, [rsp+1D8h+var_168]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                cli
                test    byte ptr [rbp+0F0h], 1
                jz      loc_140411B52
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_1404118DE
                stac

loc_1404118DE:                          ; CODE XREF: sub_140411740+199↑j
                                        ; sub_140411740+1C9↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_14041190B
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_1404118DE
; ---------------------------------------------------------------------------

loc_14041190B:                          ; CODE XREF: sub_140411740+1AE↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_14041191D
                xor     ecx, ecx
                call    sub_1402ADF00

loc_14041191D:                          ; CODE XREF: sub_140411740+1D4↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_140411933
                call    sub_1403FE910

loc_140411933:                          ; CODE XREF: sub_140411740+1EC↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_140411969
                test    byte ptr [rcx+2], 1
                jz      short loc_140411958
                call    sub_14051C050
                mov     rcx, gs:188h

loc_140411958:                          ; CODE XREF: sub_140411740+208↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_140411969
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_140411969:                          ; CODE XREF: sub_140411740+202↑j
                                        ; sub_140411740+21C↑j
                ldmxcsr dword ptr [rbp-54h]
                cmp     word ptr [rbp+80h], 0
                jz      short loc_14041197C
                call    sub_1403FDC00

loc_14041197C:                          ; CODE XREF: sub_140411740+235↑j
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_1404119D1
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1404119D1:                          ; CODE XREF: sub_140411740+27E↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_1404119EC
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_1404119EC:                          ; CODE XREF: sub_140411740+29C↑j
                btr     word ptr gs:278h, 5
                jnb     loc_140411B22
                call    loc_140411B10

loc_140411A02:                          ; CODE XREF: sub_140411740+2CF↓p
                add     rsp, 8
                call    loc_140411B19

loc_140411A0B:                          ; CODE XREF: sub_140411740+2D8↓p
                add     rsp, 8
                call    loc_140411A02

loc_140411A14:                          ; CODE XREF: sub_140411740+2E1↓p
                add     rsp, 8
                call    loc_140411A0B

loc_140411A1D:                          ; CODE XREF: sub_140411740+2EA↓p
                add     rsp, 8
                call    loc_140411A14

loc_140411A26:                          ; CODE XREF: sub_140411740+2F3↓p
                add     rsp, 8
                call    loc_140411A1D

loc_140411A2F:                          ; CODE XREF: sub_140411740+2FC↓p
                add     rsp, 8
                call    loc_140411A26

loc_140411A38:                          ; CODE XREF: sub_140411740+305↓p
                add     rsp, 8
                call    loc_140411A2F

loc_140411A41:                          ; CODE XREF: sub_140411740+30E↓p
                add     rsp, 8
                call    loc_140411A38

loc_140411A4A:                          ; CODE XREF: sub_140411740+317↓p
                add     rsp, 8
                call    loc_140411A41

loc_140411A53:                          ; CODE XREF: sub_140411740+320↓p
                add     rsp, 8
                call    loc_140411A4A

loc_140411A5C:                          ; CODE XREF: sub_140411740+329↓p
                add     rsp, 8
                call    loc_140411A53

loc_140411A65:                          ; CODE XREF: sub_140411740+332↓p
                add     rsp, 8
                call    loc_140411A5C

loc_140411A6E:                          ; CODE XREF: sub_140411740+33B↓p
                add     rsp, 8
                call    loc_140411A65

loc_140411A77:                          ; CODE XREF: sub_140411740+344↓p
                add     rsp, 8
                call    loc_140411A6E

loc_140411A80:                          ; CODE XREF: sub_140411740+34D↓p
                add     rsp, 8
                call    loc_140411A77

loc_140411A89:                          ; CODE XREF: sub_140411740+356↓p
                add     rsp, 8
                call    loc_140411A80

loc_140411A92:                          ; CODE XREF: sub_140411740+35F↓p
                add     rsp, 8
                call    loc_140411A89

loc_140411A9B:                          ; CODE XREF: sub_140411740+368↓p
                add     rsp, 8
                call    loc_140411A92

loc_140411AA4:                          ; CODE XREF: sub_140411740+371↓p
                add     rsp, 8
                call    loc_140411A9B

loc_140411AAD:                          ; CODE XREF: sub_140411740+37A↓p
                add     rsp, 8
                call    loc_140411AA4

loc_140411AB6:                          ; CODE XREF: sub_140411740+383↓p
                add     rsp, 8
                call    loc_140411AAD

loc_140411ABF:                          ; CODE XREF: sub_140411740+38C↓p
                add     rsp, 8
                call    loc_140411AB6

loc_140411AC8:                          ; CODE XREF: sub_140411740+395↓p
                add     rsp, 8
                call    loc_140411ABF

loc_140411AD1:                          ; CODE XREF: sub_140411740+39E↓p
                add     rsp, 8
                call    loc_140411AC8

loc_140411ADA:                          ; CODE XREF: sub_140411740+3A7↓p
                add     rsp, 8
                call    loc_140411AD1

loc_140411AE3:                          ; CODE XREF: sub_140411740+3B0↓p
                add     rsp, 8
                call    loc_140411ADA

loc_140411AEC:                          ; CODE XREF: sub_140411740+3B9↓p
                add     rsp, 8
                call    loc_140411AE3

loc_140411AF5:                          ; CODE XREF: sub_140411740+3C2↓p
                add     rsp, 8
                call    loc_140411AEC

loc_140411AFE:                          ; CODE XREF: sub_140411740+3CB↓p
                add     rsp, 8
                call    loc_140411AF5

loc_140411B07:                          ; CODE XREF: sub_140411740+3D4↓p
                add     rsp, 8
                call    loc_140411AFE

loc_140411B10:                          ; CODE XREF: sub_140411740+2BD↑p
                add     rsp, 8
                call    loc_140411B07

loc_140411B19:                          ; CODE XREF: sub_140411740+2C6↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140411B22:                          ; CODE XREF: sub_140411740+2B7↑j
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_140411B4D
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_140411B4D:                          ; CODE XREF: sub_140411740+406↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_140411B52:                          ; CODE XREF: sub_140411740+18C↑j
                ldmxcsr dword ptr [rbp-54h]
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                iretq
sub_140411740   endp

; ---------------------------------------------------------------------------
algn_140411B9D:                         ; DATA XREF: .pdata:00000001400E3DC0↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140411BC0   proc near               ; CODE XREF: sub_14040AC40+34B↑p
                                        ; sub_14040F340+2F7↑p ...

var_1B8         = byte ptr -1B8h
var_1A8         = xmmword ptr -1A8h
var_198         = xmmword ptr -198h
var_188         = xmmword ptr -188h
var_178         = xmmword ptr -178h
var_168         = xmmword ptr -168h
var_D8          = byte ptr -0D8h
var_A0          = byte ptr -0A0h

                sub     rsp, 1D8h
                lea     rax, [rsp+1D8h+var_D8]
                movaps  [rsp+1D8h+var_1A8], xmm6
                movaps  [rsp+1D8h+var_198], xmm7
                movaps  [rsp+1D8h+var_188], xmm8
                movaps  [rsp+1D8h+var_178], xmm9
                movaps  [rsp+1D8h+var_168], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                mov     rax, gs:188h
                bt      dword ptr [rax+74h], 8
                jnb     short loc_140411C3D
                test    byte ptr [rbp+0F0h], 1
                jz      short loc_140411C3D
                call    sub_140412800

loc_140411C3D:                          ; CODE XREF: sub_140411BC0+6D↑j
                                        ; sub_140411BC0+76↑j
                lea     rax, [rsp+1D8h+var_A0]
                mov     [rax], ecx
                xor     ecx, ecx
                mov     dword ptr [rax+4], 1
                mov     [rax+8], rcx
                mov     [rax+10h], r8
                mov     [rax+18h], edx
                mov     [rax+20h], r9
                mov     [rax+28h], r10
                mov     [rax+30h], r11
                mov     r9b, [rbp+0F0h]
                and     r9b, 1
                cmp     r9b, 0
                jnz     short loc_140411C90
                mov     rdx, [rax+20h]
                xor     r10, r10
                mov     r9, rax
                lea     r8, [rbp-80h]
                mov     ecx, 139h
                call    sub_1404116C0

loc_140411C90:                          ; CODE XREF: sub_140411BC0+B6↑j
                mov     [rsp+1D8h+var_1B8], 0
                lea     r8, [rbp-80h]
                mov     rdx, rsp
                mov     rcx, rax
                call    sub_140339370
                lea     rcx, [rsp+1D8h+var_D8]
                movaps  xmm6, [rsp+1D8h+var_1A8]
                movaps  xmm7, [rsp+1D8h+var_198]
                movaps  xmm8, [rsp+1D8h+var_188]
                movaps  xmm9, [rsp+1D8h+var_178]
                movaps  xmm10, [rsp+1D8h+var_168]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                cli
                test    byte ptr [rbp+0F0h], 1
                jz      loc_140411F8A
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_140411D16
                stac

loc_140411D16:                          ; CODE XREF: sub_140411BC0+151↑j
                                        ; sub_140411BC0+181↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_140411D43
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_140411D16
; ---------------------------------------------------------------------------

loc_140411D43:                          ; CODE XREF: sub_140411BC0+166↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_140411D55
                xor     ecx, ecx
                call    sub_1402ADF00

loc_140411D55:                          ; CODE XREF: sub_140411BC0+18C↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_140411D6B
                call    sub_1403FE910

loc_140411D6B:                          ; CODE XREF: sub_140411BC0+1A4↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_140411DA1
                test    byte ptr [rcx+2], 1
                jz      short loc_140411D90
                call    sub_14051C050
                mov     rcx, gs:188h

loc_140411D90:                          ; CODE XREF: sub_140411BC0+1C0↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_140411DA1
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_140411DA1:                          ; CODE XREF: sub_140411BC0+1BA↑j
                                        ; sub_140411BC0+1D4↑j
                ldmxcsr dword ptr [rbp-54h]
                cmp     word ptr [rbp+80h], 0
                jz      short loc_140411DB4
                call    sub_1403FDC00

loc_140411DB4:                          ; CODE XREF: sub_140411BC0+1ED↑j
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_140411E09
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_140411E09:                          ; CODE XREF: sub_140411BC0+236↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_140411E24
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_140411E24:                          ; CODE XREF: sub_140411BC0+254↑j
                btr     word ptr gs:278h, 5
                jnb     loc_140411F5A
                call    loc_140411F48

loc_140411E3A:                          ; CODE XREF: sub_140411BC0+287↓p
                add     rsp, 8
                call    loc_140411F51

loc_140411E43:                          ; CODE XREF: sub_140411BC0+290↓p
                add     rsp, 8
                call    loc_140411E3A

loc_140411E4C:                          ; CODE XREF: sub_140411BC0+299↓p
                add     rsp, 8
                call    loc_140411E43

loc_140411E55:                          ; CODE XREF: sub_140411BC0+2A2↓p
                add     rsp, 8
                call    loc_140411E4C

loc_140411E5E:                          ; CODE XREF: sub_140411BC0+2AB↓p
                add     rsp, 8
                call    loc_140411E55

loc_140411E67:                          ; CODE XREF: sub_140411BC0+2B4↓p
                add     rsp, 8
                call    loc_140411E5E

loc_140411E70:                          ; CODE XREF: sub_140411BC0+2BD↓p
                add     rsp, 8
                call    loc_140411E67

loc_140411E79:                          ; CODE XREF: sub_140411BC0+2C6↓p
                add     rsp, 8
                call    loc_140411E70

loc_140411E82:                          ; CODE XREF: sub_140411BC0+2CF↓p
                add     rsp, 8
                call    loc_140411E79

loc_140411E8B:                          ; CODE XREF: sub_140411BC0+2D8↓p
                add     rsp, 8
                call    loc_140411E82

loc_140411E94:                          ; CODE XREF: sub_140411BC0+2E1↓p
                add     rsp, 8
                call    loc_140411E8B

loc_140411E9D:                          ; CODE XREF: sub_140411BC0+2EA↓p
                add     rsp, 8
                call    loc_140411E94

loc_140411EA6:                          ; CODE XREF: sub_140411BC0+2F3↓p
                add     rsp, 8
                call    loc_140411E9D

loc_140411EAF:                          ; CODE XREF: sub_140411BC0+2FC↓p
                add     rsp, 8
                call    loc_140411EA6

loc_140411EB8:                          ; CODE XREF: sub_140411BC0+305↓p
                add     rsp, 8
                call    loc_140411EAF

loc_140411EC1:                          ; CODE XREF: sub_140411BC0+30E↓p
                add     rsp, 8
                call    loc_140411EB8

loc_140411ECA:                          ; CODE XREF: sub_140411BC0+317↓p
                add     rsp, 8
                call    loc_140411EC1

loc_140411ED3:                          ; CODE XREF: sub_140411BC0+320↓p
                add     rsp, 8
                call    loc_140411ECA

loc_140411EDC:                          ; CODE XREF: sub_140411BC0+329↓p
                add     rsp, 8
                call    loc_140411ED3

loc_140411EE5:                          ; CODE XREF: sub_140411BC0+332↓p
                add     rsp, 8
                call    loc_140411EDC

loc_140411EEE:                          ; CODE XREF: sub_140411BC0+33B↓p
                add     rsp, 8
                call    loc_140411EE5

loc_140411EF7:                          ; CODE XREF: sub_140411BC0+344↓p
                add     rsp, 8
                call    loc_140411EEE

loc_140411F00:                          ; CODE XREF: sub_140411BC0+34D↓p
                add     rsp, 8
                call    loc_140411EF7

loc_140411F09:                          ; CODE XREF: sub_140411BC0+356↓p
                add     rsp, 8
                call    loc_140411F00

loc_140411F12:                          ; CODE XREF: sub_140411BC0+35F↓p
                add     rsp, 8
                call    loc_140411F09

loc_140411F1B:                          ; CODE XREF: sub_140411BC0+368↓p
                add     rsp, 8
                call    loc_140411F12

loc_140411F24:                          ; CODE XREF: sub_140411BC0+371↓p
                add     rsp, 8
                call    loc_140411F1B

loc_140411F2D:                          ; CODE XREF: sub_140411BC0+37A↓p
                add     rsp, 8
                call    loc_140411F24

loc_140411F36:                          ; CODE XREF: sub_140411BC0+383↓p
                add     rsp, 8
                call    loc_140411F2D

loc_140411F3F:                          ; CODE XREF: sub_140411BC0+38C↓p
                add     rsp, 8
                call    loc_140411F36

loc_140411F48:                          ; CODE XREF: sub_140411BC0+275↑p
                add     rsp, 8
                call    loc_140411F3F

loc_140411F51:                          ; CODE XREF: sub_140411BC0+27E↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140411F5A:                          ; CODE XREF: sub_140411BC0+26F↑j
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_140411F85
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_140411F85:                          ; CODE XREF: sub_140411BC0+3BE↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_140411F8A:                          ; CODE XREF: sub_140411BC0+144↑j
                ldmxcsr dword ptr [rbp-54h]
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                iretq
sub_140411BC0   endp

; ---------------------------------------------------------------------------
algn_140411FD5:                         ; DATA XREF: .pdata:00000001400E3DCC↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140412000   proc near               ; CODE XREF: sub_140412440+10B↓j
                                        ; sub_140412640+EB↓j ...
                sub     rsp, 28h
                mov     rbx, gs:188h
                mov     rcx, [rbx+90h]
                lea     rbp, [rcx+80h]
                mov     rax, cr8
                or      al, [rbx+24Ah]
                or      eax, [rbx+1E4h]
                jz      short loc_140412061
                mov     ecx, 4Ah ; 'J'
                xor     r9d, r9d
                mov     r8, cr8
                or      r8d, r8d
                jnz     short loc_140412052
                mov     ecx, 1
                movzx   r8d, byte ptr [rbx+24Ah]
                mov     r9d, [rbx+1E4h]

loc_140412052:                          ; CODE XREF: sub_140412000+3C↑j
                mov     rdx, [rbp+0E8h]
                mov     r10, rbp
                call    sub_1404116C0

loc_140412061:                          ; CODE XREF: sub_140412000+2B↑j
                cli

loc_140412062:                          ; CODE XREF: sub_140412000+CB↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_1404120CD
                mov     [rbp-50h], rax
                xor     eax, eax
                mov     [rbp-48h], rax
                mov     [rbp-40h], rax
                mov     [rbp-38h], rax
                mov     [rbp-30h], rax
                mov     [rbp-28h], rax
                mov     [rbp-20h], rax
                pxor    xmm0, xmm0
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm0
                movaps  xmmword ptr [rbp+10h], xmm0
                movaps  xmmword ptr [rbp+20h], xmm0
                movaps  xmmword ptr [rbp+30h], xmm0
                movaps  xmmword ptr [rbp+40h], xmm0
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                mov     rax, [rbp-50h]
                jmp     short loc_140412062
; ---------------------------------------------------------------------------

loc_1404120CD:                          ; CODE XREF: sub_140412000+72↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_1404120E7
                mov     [rbp-50h], rax
                xor     ecx, ecx
                call    sub_1402ADF00
                mov     rax, [rbp-50h]

loc_1404120E7:                          ; CODE XREF: sub_140412000+D6↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_140412137
                mov     [rbp-50h], rax
                xor     eax, eax
                mov     [rbp-48h], rax
                mov     [rbp-40h], rax
                mov     [rbp-38h], rax
                mov     [rbp-30h], rax
                mov     [rbp-28h], rax
                mov     [rbp-20h], rax
                pxor    xmm0, xmm0
                movaps  xmmword ptr [rbp-10h], xmm0
                movaps  xmmword ptr [rbp+0], xmm0
                movaps  xmmword ptr [rbp+10h], xmm0
                movaps  xmmword ptr [rbp+20h], xmm0
                movaps  xmmword ptr [rbp+30h], xmm0
                movaps  xmmword ptr [rbp+40h], xmm0
                call    sub_1403FE910

loc_140412137:                          ; CODE XREF: sub_140412000+F6↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_140412175
                mov     [rbp-50h], rax
                test    byte ptr [rcx+2], 1
                jz      short loc_140412160
                call    sub_14051C050
                mov     rcx, gs:188h

loc_140412160:                          ; CODE XREF: sub_140412000+150↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_140412171
                lea     rsp, [rbp-80h]
                xor     ecx, ecx
                call    sub_1404128C0

loc_140412171:                          ; CODE XREF: sub_140412000+164↑j
                mov     rax, [rbp-50h]

loc_140412175:                          ; CODE XREF: sub_140412000+146↑j
                ldmxcsr dword ptr [rbp-54h]
                xor     r10, r10
                cmp     word ptr [rbp+80h], 0
                jz      short loc_1404121C7
                mov     [rbp-50h], rax
                call    sub_1403FDC00
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                mov     rax, [rax+3D8h]
                or      rax, rax
                jz      short loc_1404121C3
                cmp     word ptr [rbp+0F0h], 33h ; '3'
                jnz     short loc_1404121C3
                mov     r10, [rbp+0E8h]
                mov     [rbp+0E8h], rax

loc_1404121C3:                          ; CODE XREF: sub_140412000+1A9↑j
                                        ; sub_140412000+1B3↑j
                mov     rax, [rbp-50h]

loc_1404121C7:                          ; CODE XREF: sub_140412000+184↑j
                mov     [rbp-50h], rax
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_1404121F8
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1404121F8:                          ; CODE XREF: sub_140412000+1E5↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_140412213
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_140412213:                          ; CODE XREF: sub_140412000+203↑j
                btr     word ptr gs:278h, 5
                jnb     loc_140412349
                call    loc_140412337

loc_140412229:                          ; CODE XREF: sub_140412000+236↓p
                add     rsp, 8
                call    loc_140412340

loc_140412232:                          ; CODE XREF: sub_140412000+23F↓p
                add     rsp, 8
                call    loc_140412229

loc_14041223B:                          ; CODE XREF: sub_140412000+248↓p
                add     rsp, 8
                call    loc_140412232

loc_140412244:                          ; CODE XREF: sub_140412000+251↓p
                add     rsp, 8
                call    loc_14041223B

loc_14041224D:                          ; CODE XREF: sub_140412000+25A↓p
                add     rsp, 8
                call    loc_140412244

loc_140412256:                          ; CODE XREF: sub_140412000+263↓p
                add     rsp, 8
                call    loc_14041224D

loc_14041225F:                          ; CODE XREF: sub_140412000+26C↓p
                add     rsp, 8
                call    loc_140412256

loc_140412268:                          ; CODE XREF: sub_140412000+275↓p
                add     rsp, 8
                call    loc_14041225F

loc_140412271:                          ; CODE XREF: sub_140412000+27E↓p
                add     rsp, 8
                call    loc_140412268

loc_14041227A:                          ; CODE XREF: sub_140412000+287↓p
                add     rsp, 8
                call    loc_140412271

loc_140412283:                          ; CODE XREF: sub_140412000+290↓p
                add     rsp, 8
                call    loc_14041227A

loc_14041228C:                          ; CODE XREF: sub_140412000+299↓p
                add     rsp, 8
                call    loc_140412283

loc_140412295:                          ; CODE XREF: sub_140412000+2A2↓p
                add     rsp, 8
                call    loc_14041228C

loc_14041229E:                          ; CODE XREF: sub_140412000+2AB↓p
                add     rsp, 8
                call    loc_140412295

loc_1404122A7:                          ; CODE XREF: sub_140412000+2B4↓p
                add     rsp, 8
                call    loc_14041229E

loc_1404122B0:                          ; CODE XREF: sub_140412000+2BD↓p
                add     rsp, 8
                call    loc_1404122A7

loc_1404122B9:                          ; CODE XREF: sub_140412000+2C6↓p
                add     rsp, 8
                call    loc_1404122B0

loc_1404122C2:                          ; CODE XREF: sub_140412000+2CF↓p
                add     rsp, 8
                call    loc_1404122B9

loc_1404122CB:                          ; CODE XREF: sub_140412000+2D8↓p
                add     rsp, 8
                call    loc_1404122C2

loc_1404122D4:                          ; CODE XREF: sub_140412000+2E1↓p
                add     rsp, 8
                call    loc_1404122CB

loc_1404122DD:                          ; CODE XREF: sub_140412000+2EA↓p
                add     rsp, 8
                call    loc_1404122D4

loc_1404122E6:                          ; CODE XREF: sub_140412000+2F3↓p
                add     rsp, 8
                call    loc_1404122DD

loc_1404122EF:                          ; CODE XREF: sub_140412000+2FC↓p
                add     rsp, 8
                call    loc_1404122E6

loc_1404122F8:                          ; CODE XREF: sub_140412000+305↓p
                add     rsp, 8
                call    loc_1404122EF

loc_140412301:                          ; CODE XREF: sub_140412000+30E↓p
                add     rsp, 8
                call    loc_1404122F8

loc_14041230A:                          ; CODE XREF: sub_140412000+317↓p
                add     rsp, 8
                call    loc_140412301

loc_140412313:                          ; CODE XREF: sub_140412000+320↓p
                add     rsp, 8
                call    loc_14041230A

loc_14041231C:                          ; CODE XREF: sub_140412000+329↓p
                add     rsp, 8
                call    loc_140412313

loc_140412325:                          ; CODE XREF: sub_140412000+332↓p
                add     rsp, 8
                call    loc_14041231C

loc_14041232E:                          ; CODE XREF: sub_140412000+33B↓p
                add     rsp, 8
                call    loc_140412325

loc_140412337:                          ; CODE XREF: sub_140412000+224↑p
                add     rsp, 8
                call    loc_14041232E

loc_140412340:                          ; CODE XREF: sub_140412000+22D↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_140412349:                          ; CODE XREF: sub_140412000+21E↑j
                mov     rax, [rbp-50h]
                mov     r8, [rbp+100h]
                mov     r9, [rbp+0D8h]
                xor     edx, edx
                pxor    xmm0, xmm0
                pxor    xmm1, xmm1
                pxor    xmm2, xmm2
                pxor    xmm3, xmm3
                pxor    xmm4, xmm4
                pxor    xmm5, xmm5
                mov     rcx, [rbp+0E8h]
                mov     r11, [rbp+0F8h]
                test    cs:byte_140E01840, 1
                jnz     sub_140A17DC0
                mov     rbp, r9
                mov     rsp, r8
                swapgs
                sysret
; ---------------------------------------------------------------------------
                retn
sub_140412000   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14041239D:                         ; DATA XREF: .pdata:00000001400E3DD8↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_1404123C0   proc near               ; CODE XREF: sub_140526110+51D↓p
                                        ; DATA XREF: .pdata:00000001400E3DE4↑o
                cli
                mov     rdx, gs:188h
                mov     rdi, [rdx+28h]
                lea     rbp, [rdi-110h]
                sub     rdi, 8
                mov     rsi, [rcx+20h]
                sub     rsi, 8
                mov     rdx, rcx
                mov     rcx, [rcx+30h]
                shr     rcx, 3
                std
                rep movsq
                cld
                lea     rsp, [rdi+8]
                mov     rcx, rdx
                mov     rdx, [rcx+38h]
                jmp     rdx
sub_1404123C0   endp

; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
algn_140412402:                         ; DATA XREF: .pdata:00000001400E3DE4↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140412440   proc near               ; CODE XREF: sub_14040AC40+30B↑p
                                        ; sub_14040B280+30B↑p ...

var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_138         = byte ptr -138h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8

                mov     [rbp-80h], rcx
                mov     [rbp-78h], rax
                sub     rsp, 1A8h
                movaps  [rsp+1A8h+var_108], xmm6
                movaps  [rsp+1A8h+var_F8], xmm7
                movaps  [rsp+1A8h+var_E8], xmm8
                movaps  [rsp+1A8h+var_D8], xmm9
                movaps  [rsp+1A8h+var_C8], xmm10
                movaps  [rsp+1A8h+var_B8], xmm11
                movaps  [rsp+1A8h+var_A8], xmm12
                movaps  [rsp+1A8h+var_98], xmm13
                movaps  [rsp+1A8h+var_88], xmm14
                movaps  [rsp+1A8h+var_78], xmm15
                mov     [rsp+1A8h+var_20], r12
                mov     [rsp+1A8h+var_18], r13
                mov     [rsp+1A8h+var_10], r14
                mov     [rsp+1A8h+var_8], r15
                mov     [rsp+1A8h+var_30], rdi
                mov     [rsp+1A8h+var_28], rsi
                mov     [rsp+1A8h+var_38], rbx
                lea     rax, [rbp+110h]
                mov     [rsp+1A8h+var_188], rax
                sub     rax, rsp
                mov     [rsp+1A8h+var_180], rax
                sub     rax, 1A8h
                mov     [rsp+1A8h+var_178], rax
                lea     rax, sub_140412580
                mov     [rsp+1A8h+var_170], rax
                lea     rdx, [rsp+1A8h+var_138]
                mov     [rsp+1A8h+var_150], rdx
                lea     rdx, [rbp-80h]
                mov     [rsp+1A8h+var_158], rdx
                bts     [rsp+1A8h+var_160], 0
                mov     rcx, rsp
                call    sub_1408BF000
                mov     r12, [rsp+1A8h+var_20]
                mov     r13, [rsp+1A8h+var_18]
                mov     r14, [rsp+1A8h+var_10]
                add     rsp, 1A8h
                jmp     sub_140412000
sub_140412440   endp

; ---------------------------------------------------------------------------
algn_140412550:                         ; DATA XREF: .pdata:00000001400E3DF0↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140412580   proc near               ; DATA XREF: .pdata:00000001400E3DFC↑o
                                        ; sub_140412440+BE↑o
                sub     rsp, 28h
                mov     rax, [rcx+58h]
                movdqa  xmm6, xmmword ptr [rax+30h]
                movdqa  xmm7, xmmword ptr [rax+40h]
                movdqa  xmm8, xmmword ptr [rax+50h]
                movdqa  xmm9, xmmword ptr [rax+60h]
                movdqa  xmm10, xmmword ptr [rax+70h]
                movdqa  xmm11, xmmword ptr [rax+80h]
                movdqa  xmm12, xmmword ptr [rax+90h]
                movdqa  xmm13, xmmword ptr [rax+0A0h]
                movdqa  xmm14, xmmword ptr [rax+0B0h]
                movdqa  xmm15, xmmword ptr [rax+0C0h]
                mov     r12, [rax+118h]
                mov     r13, [rax+120h]
                mov     r14, [rax+128h]
                mov     r15, [rax+130h]
                mov     rdi, [rax+108h]
                mov     rsi, [rax+110h]
                mov     rbx, [rax+100h]
                sti
                ldmxcsr dword ptr gs:180h
                call    sub_140526710
                mov     rcx, [rbp-80h]
                mov     rax, [rbp-78h]
                add     rsp, 28h
                retn
sub_140412580   endp

; ---------------------------------------------------------------------------
algn_14041261E:                         ; DATA XREF: .pdata:00000001400E3DFC↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140412640   proc near               ; CODE XREF: sub_140410A00+324↑p
                                        ; DATA XREF: .pdata:00000001400E3E08↑o

var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_138         = byte ptr -138h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8

                sub     rsp, 1A8h
                movaps  [rsp+1A8h+var_108], xmm6
                movaps  [rsp+1A8h+var_F8], xmm7
                movaps  [rsp+1A8h+var_E8], xmm8
                movaps  [rsp+1A8h+var_D8], xmm9
                movaps  [rsp+1A8h+var_C8], xmm10
                movaps  [rsp+1A8h+var_B8], xmm11
                movaps  [rsp+1A8h+var_A8], xmm12
                movaps  [rsp+1A8h+var_98], xmm13
                movaps  [rsp+1A8h+var_88], xmm14
                movaps  [rsp+1A8h+var_78], xmm15
                mov     [rsp+1A8h+var_20], r12
                mov     [rsp+1A8h+var_18], r13
                mov     [rsp+1A8h+var_10], r14
                mov     [rsp+1A8h+var_8], r15
                lea     rax, [rbp+110h]
                mov     [rsp+1A8h+var_188], rax
                sub     rax, rsp
                mov     [rsp+1A8h+var_180], rax
                sub     rax, 1A8h
                mov     [rsp+1A8h+var_178], rax
                lea     rax, sub_140412740
                mov     [rsp+1A8h+var_170], rax
                lea     rdx, [rsp+1A8h+var_138]
                mov     [rsp+1A8h+var_150], rdx
                lea     rdx, [rbp-80h]
                mov     [rsp+1A8h+var_158], rdx
                btr     [rsp+1A8h+var_160], 0
                mov     rcx, rsp
                call    sub_1408BF000
                mov     r12, [rsp+1A8h+var_20]
                mov     r13, [rsp+1A8h+var_18]
                mov     r14, [rsp+1A8h+var_10]
                add     rsp, 1A8h
                jmp     sub_140412000
sub_140412640   endp

; ---------------------------------------------------------------------------
algn_140412730:                         ; DATA XREF: .pdata:00000001400E3E08↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140412740   proc near               ; DATA XREF: .pdata:00000001400E3E14↑o
                                        ; sub_140412640+9E↑o
                sub     rsp, 28h
                mov     rax, [rcx+58h]
                movdqa  xmm6, xmmword ptr [rax+30h]
                movdqa  xmm7, xmmword ptr [rax+40h]
                movdqa  xmm8, xmmword ptr [rax+50h]
                movdqa  xmm9, xmmword ptr [rax+60h]
                movdqa  xmm10, xmmword ptr [rax+70h]
                movdqa  xmm11, xmmword ptr [rax+80h]
                movdqa  xmm12, xmmword ptr [rax+90h]
                movdqa  xmm13, xmmword ptr [rax+0A0h]
                movdqa  xmm14, xmmword ptr [rax+0B0h]
                movdqa  xmm15, xmmword ptr [rax+0C0h]
                mov     r12, [rax+118h]
                mov     r13, [rax+120h]
                mov     r14, [rax+128h]
                mov     r15, [rax+130h]
                sti
                mov     rbx, gs:188h
                ldmxcsr dword ptr gs:180h
                call    sub_140526710
                add     rsp, 28h
                retn
sub_140412740   endp

; ---------------------------------------------------------------------------
algn_1404127CA:                         ; DATA XREF: .pdata:00000001400E3E14↑o
                align 40h

; =============== S U B R O U T I N E =======================================


sub_140412800   proc near               ; CODE XREF: sub_140411740+78↑p
                                        ; sub_140411BC0+78↑p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = byte ptr  8
arg_118         = qword ptr  120h
arg_120         = qword ptr  128h
arg_128         = qword ptr  130h

                sub     rsp, 68h
                mov     [rbp-80h], r8
                mov     [rbp-78h], r9
                mov     [rbp-70h], r10
                mov     [rbp-68h], r11
                lea     r8, [rsp+68h+arg_0]
                mov     [r8], rcx
                mov     [r8+8], rdx
                lea     rax, [rbp+110h]
                mov     [rsp+68h+var_48], rax
                sub     rax, rsp
                mov     [rsp+68h+var_40], rax
                mov     [rsp+68h+var_38], rax
                lea     rax, byte_140412883
                mov     [rsp+68h+var_30], rax
                mov     [rsp+68h+var_10], r8
                lea     rdx, [rbp-80h]
                mov     [rsp+68h+var_18], rdx
                bts     [rsp+68h+var_20], 0
                mov     rcx, rsp
                call    sub_1408BF000
                mov     r12, [rsp+68h+arg_118]
                mov     r13, [rsp+68h+arg_120]
                mov     r14, [rsp+68h+arg_128]
                add     rsp, 68h
                jmp     sub_140412000
; ---------------------------------------------------------------------------
byte_140412883  db 0FBh, 0E8h, 87h, 3Eh, 11h
                                        ; DATA XREF: sub_140412800+39↑o
                dq 1802514AE0F6500h, 497024448D4C0000h, 8B4C08508B49088Bh
                dq 8B4C884D8B4C8045h, 8348985D8B4C9055h
                db 0C4h, 68h, 0C3h
sub_140412800   endp

algn_1404128B3:                         ; DATA XREF: .pdata:00000001400E3E20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404128C0   proc near               ; CODE XREF: sub_1403FDE70+1AF↑p
                                        ; sub_1403FE270+1A4↑p ...

var_160         = byte ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_138         = byte ptr -138h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8

                sub     rsp, 1A8h
                movaps  [rsp+1A8h+var_108], xmm6
                movaps  [rsp+1A8h+var_F8], xmm7
                movaps  [rsp+1A8h+var_E8], xmm8
                movaps  [rsp+1A8h+var_D8], xmm9
                movaps  [rsp+1A8h+var_C8], xmm10
                movaps  [rsp+1A8h+var_B8], xmm11
                movaps  [rsp+1A8h+var_A8], xmm12
                movaps  [rsp+1A8h+var_98], xmm13
                movaps  [rsp+1A8h+var_88], xmm14
                movaps  [rsp+1A8h+var_78], xmm15
                mov     [rsp+1A8h+var_20], r12
                mov     [rsp+1A8h+var_18], r13
                mov     [rsp+1A8h+var_10], r14
                mov     [rsp+1A8h+var_8], r15
                mov     [rsp+1A8h+var_30], rdi
                mov     [rsp+1A8h+var_28], rsi
                mov     [rsp+1A8h+var_38], rbx
                sti
                mov     [rsp+1A8h+var_160], cl
                lea     rdx, [rsp+1A8h+var_138]
                mov     [rsp+1A8h+var_150], rdx
                lea     rdx, [rbp-80h]
                mov     [rsp+1A8h+var_158], rdx
                mov     rcx, rsp
                call    sub_140526110
                lea     rax, [rsp+1A8h+var_138]
                movdqa  xmm6, xmmword ptr [rax+30h]
                movdqa  xmm7, xmmword ptr [rax+40h]
                movdqa  xmm8, xmmword ptr [rax+50h]
                movdqa  xmm9, xmmword ptr [rax+60h]
                movdqa  xmm10, xmmword ptr [rax+70h]
                movdqa  xmm11, xmmword ptr [rax+80h]
                movdqa  xmm12, xmmword ptr [rax+90h]
                movdqa  xmm13, xmmword ptr [rax+0A0h]
                movdqa  xmm14, xmmword ptr [rax+0B0h]
                movdqa  xmm15, xmmword ptr [rax+0C0h]
                mov     r12, [rax+118h]
                mov     r13, [rax+120h]
                mov     r14, [rax+128h]
                mov     r15, [rax+130h]
                mov     rdi, [rax+108h]
                mov     rsi, [rax+110h]
                mov     rbx, [rax+100h]
                add     rsp, 1A8h
                retn
sub_1404128C0   endp

; ---------------------------------------------------------------------------
byte_1404129FE  db 42h dup(0CCh)        ; DATA XREF: .pdata:00000001400E3E2C↑o
; Exported entry 2039. RtlCopyMemory
; Exported entry 2297. RtlMoveMemory
; Exported entry 3025. memcpy
; Exported entry 3027. memmove

; =============== S U B R O U T I N E =======================================



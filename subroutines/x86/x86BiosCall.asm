x86BiosCall     proc near               ; CODE XREF: sub_1404B6F50+32↓p
                                        ; DATA XREF: .rdata:000000014009ACC8↑o ...

; FUNCTION CHUNK AT 000000014049F6C4 SIZE 00000014 BYTES

                sub     rsp, 38h
                xor     r8b, r8b
                cmp     cs:byte_140C50644, r8b
                jz      short loc_1403963B4
                mov     eax, 1
                lock xadd cs:dword_140C4BE38, eax
                inc     eax
                cmp     eax, 1
                jnz     loc_14049F6C4

loc_140396398:                          ; CODE XREF: x86BiosCall+10935B↓j
                call    sub_1403963C0
                cmp     eax, 1
                setz    r8b

loc_1403963A4:                          ; CODE XREF: x86BiosCall+109363↓j
                lock dec cs:dword_140C4BE38
                mov     al, r8b

loc_1403963AE:                          ; CODE XREF: x86BiosCall+48↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403963B4:                          ; CODE XREF: x86BiosCall+E↑j
                int     2Ch             ; Windows NT - assertion failure
                xor     al, al
                jmp     short loc_1403963AE
x86BiosCall     endp

; ---------------------------------------------------------------------------
algn_1403963BA:                         ; DATA XREF: .rdata:000000014009ACC8↑o
                                        ; .pdata:00000001400DC980↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403963C0   proc near               ; CODE XREF: x86BiosCall:loc_140396398↑p
                                        ; DATA XREF: .rdata:000000014009ACE4↑o ...

; FUNCTION CHUNK AT 000000014049F6D8 SIZE 00000014 BYTES

                push    rbx
                sub     rsp, 20h
                cmp     cs:byte_140C4C331, 0
                mov     rax, cs:qword_140C4BE48
                mov     r8, cs:qword_140C4BE40
                jz      short loc_14039640E
                test    r8, r8
                jz      short loc_1403963E9
                mov     cs:qword_140C4A618, r8

loc_1403963E9:                          ; CODE XREF: sub_1403963C0+20↑j
                test    rax, rax
                jz      short loc_1403963F5
                mov     cs:qword_140C4A5F8, rax

loc_1403963F5:                          ; CODE XREF: sub_1403963C0+2C↑j
                call    sub_14039641C
                mov     ebx, eax
                cmp     eax, 1
                jnz     loc_14049F6D8

loc_140396405:                          ; CODE XREF: sub_1403963C0+109327↓j
                mov     eax, ebx

loc_140396407:                          ; CODE XREF: sub_1403963C0+53↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039640E:                          ; CODE XREF: sub_1403963C0+1B↑j
                mov     eax, 4
                jmp     short loc_140396407
sub_1403963C0   endp

; ---------------------------------------------------------------------------
byte_140396415  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014009ACE4↑o
                                        ; .pdata:00000001400DC98C↑o

; =============== S U B R O U T I N E =======================================


sub_14039641C   proc near               ; CODE XREF: sub_1403963C0:loc_1403963F5↑p
                                        ; DATA XREF: .pdata:00000001400DC998↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     esi, esi
                movzx   edi, cl
                cmp     cs:byte_140E01842, sil
                mov     rbx, rdx
                jz      short loc_1403964AB
                movzx   eax, word ptr cs:dword_140CED4C0+2
                movzx   ecx, word ptr cs:dword_140CED4C0
                movzx   edx, ax
                mov     cs:dword_140C505B0, esi
                mov     cs:word_140CED35C, cx
                mov     cs:dword_140CED348, eax
                call    sub_140397B30
                mov     ecx, 0FFFFh
                xor     edx, edx
                mov     [rax-6], cx
                mov     dword ptr [rax-4], 0FFFFh
                lea     eax, [rcx-5]
                add     word ptr cs:dword_140CED348, ax
                xor     ecx, ecx
                call    sub_140397B30
                mov     r9, rbx
                movzx   edx, word ptr [rax+rdi*4+2]
                movzx   r8d, word ptr [rax+rdi*4]
                call    sub_1403971E8

loc_14039649A:                          ; CODE XREF: sub_14039641C+94↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403964AB:                          ; CODE XREF: sub_14039641C+1E↑j
                mov     eax, 4
                jmp     short loc_14039649A
sub_14039641C   endp

; ---------------------------------------------------------------------------
algn_1403964B2:                         ; DATA XREF: .pdata:00000001400DC998↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403964C0   proc near               ; DATA XREF: .rdata:0000000140008000↑o
                                        ; .pdata:00000001400DC9A4↑o
                push    rbx
                sub     rsp, 20h
                mov     al, [rcx+8Ah]
                mov     rbx, rcx
                neg     al
                sbb     edx, edx
                and     edx, 2
                inc     edx
                mov     [rcx+78h], edx
                call    sub_140396E9C
                mov     rcx, rbx
                mov     [rbx+14h], eax
                call    sub_140396E9C
                mov     rcx, rbx
                mov     [rbx+3Ah], ax
                call    sub_140396E9C
                mov     [rbx+10h], eax
                mov     eax, 0FFFFh
                cmp     [rbx+14h], eax
                jnz     short loc_140396514
                cmp     [rbx+3Ah], ax
                jnz     short loc_140396514
                mov     cs:dword_140C505B0, 1

loc_140396514:                          ; CODE XREF: sub_1403964C0+42↑j
                                        ; sub_1403964C0+48↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403964C0   endp

byte_14039651B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400DC9A4↑o

; =============== S U B R O U T I N E =======================================


sub_140396530   proc near               ; DATA XREF: .rdata:0000000140007F58↑o
                                        ; .pdata:00000001400DC9B0↑o
                sub     rsp, 28h
                xor     edx, edx
                mov     dword ptr [rcx+6Ch], 1
                call    sub_140396B88
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396530   endp

algn_140396548:                         ; DATA XREF: .pdata:00000001400DC9B0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396550   proc near               ; DATA XREF: .rdata:0000000140007E98↑o
                                        ; .pdata:00000001400DC9BC↑o
                sub     rsp, 28h
                mov     edx, [rcx+6Ch]
                or      edx, [rcx+68h]
                call    sub_140396978
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396550   endp

algn_140396565:                         ; DATA XREF: .pdata:00000001400DC9BC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396570   proc near               ; DATA XREF: .rdata:0000000140008070↑o
                                        ; .pdata:00000001400DC9C8↑o
                sub     rsp, 28h
                mov     eax, [rcx+78h]
                mov     rdx, [rcx+60h]
                test    eax, eax
                jz      short loc_140396597
                cmp     eax, 3
                jnz     short loc_14039659E
                mov     eax, [rcx+68h]
                mov     [rdx], eax

loc_140396589:                          ; CODE XREF: sub_140396570+2C↓j
                                        ; sub_140396570+35↓j
                mov     edx, [rcx+6Ch]
                call    sub_140396DA0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396597:                          ; CODE XREF: sub_140396570+D↑j
                mov     al, [rcx+68h]
                mov     [rdx], al
                jmp     short loc_140396589
; ---------------------------------------------------------------------------

loc_14039659E:                          ; CODE XREF: sub_140396570+12↑j
                movzx   eax, word ptr [rcx+68h]
                mov     [rdx], ax
                jmp     short loc_140396589
sub_140396570   endp

; ---------------------------------------------------------------------------
algn_1403965A7:                         ; DATA XREF: .pdata:00000001400DC9C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403965B0   proc near               ; DATA XREF: .rdata:00000001400080E8↑o
                                        ; .rdata:000000014009AD00↑o ...

; FUNCTION CHUNK AT 000000014049F6EC SIZE 00000012 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, [rcx+78h]
                mov     edx, [rbx+6Ch]
                add     edx, ecx
                cmp     edx, 0FFFFh
                ja      loc_14049F6EC
                movzx   edx, word ptr [rbx+6Ch]
                lea     rax, [rbx+18h]
                mov     [rbx+58h], rax
                call    sub_140399690
                mov     edx, eax
                mov     rcx, rbx
                call    sub_140396DA0
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403965B0   endp

algn_1403965EF:                         ; DATA XREF: .rdata:000000014009AD00↑o
                                        ; .pdata:00000001400DC9D4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396600   proc near               ; DATA XREF: .rdata:00000001400080F0↑o
                                        ; .rdata:000000014009AD1C↑o ...

; FUNCTION CHUNK AT 000000014049F6FE SIZE 00000012 BYTES

                sub     rsp, 28h
                mov     eax, [rcx+6Ch]
                add     eax, [rcx+78h]
                cmp     eax, 0FFFFh
                ja      loc_14049F6FE
                movzx   r9d, word ptr [rcx+6Ch]
                lea     rdx, [rcx+18h]
                call    sub_140396EE8
                mov     r8d, [rcx+6Ch]
                movzx   edx, r9w
                mov     ecx, [rcx+78h]
                call    sub_140399580
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396600   endp

algn_140396639:                         ; DATA XREF: .rdata:000000014009AD1C↑o
                                        ; .pdata:00000001400DC9E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396640   proc near               ; DATA XREF: .rdata:0000000140007F50↑o
                                        ; .pdata:00000001400DC9EC↑o
                sub     rsp, 28h
                xor     edx, edx
                mov     dword ptr [rcx+6Ch], 1
                call    sub_140396A00
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396640   endp

algn_140396658:                         ; DATA XREF: .pdata:00000001400DC9EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396660   proc near               ; DATA XREF: .rdata:0000000140007E18↑o
                                        ; .pdata:00000001400DC9F8↑o
                sub     rsp, 28h
                movzx   edx, word ptr [rcx+20h]
                mov     r8d, 1
                mov     [rcx+78h], r8d
                mov     [rcx+6Ch], edx
                call    sub_1403973A8
                mov     eax, r8d
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396660   endp

algn_140396683:                         ; DATA XREF: .pdata:00000001400DC9F8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396690   proc near               ; DATA XREF: .rdata:0000000140007EB0↑o
                                        ; .rdata:0000000140007F10↑o ...
                sub     rsp, 28h
                mov     edx, [rcx+6Ch]
                and     edx, [rcx+68h]
                call    sub_140396978
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396690   endp

algn_1403966A5:                         ; DATA XREF: .pdata:00000001400DCA04↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403966B0   proc near               ; DATA XREF: .rdata:0000000140007D38↑o
                                        ; .pdata:00000001400DCA10↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rbx, rcx
                call    sub_1403973A8
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, rbx
                call    sub_140396FF4
                mov     rdi, rax
                mov     eax, [rsp+28h+arg_0]
                add     [rbx+7Ch], eax
                cmp     dword ptr [rbx+7Ch], 16h
                jnz     short loc_140396711
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140396FA0
                mov     rdx, rdi
                mov     rcx, rbx
                mov     r8d, eax
                call    sub_140396F78
                mov     [rbx+6Ch], r8d

loc_140396700:                          ; CODE XREF: sub_1403966B0+80↓j
                                        ; sub_1403966B0+8D↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     eax, 1
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396711:                          ; CODE XREF: sub_1403966B0+32↑j
                test    al, 4
                jz      short loc_140396732
                lea     rdx, [rbx+18h]
                test    al, 2
                jnz     short loc_14039673F
                mov     rcx, rbx
                call    sub_140396F78

loc_140396725:                          ; CODE XREF: sub_1403966B0+93↓j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140396EE8
                jmp     short loc_140396700
; ---------------------------------------------------------------------------

loc_140396732:                          ; CODE XREF: sub_1403966B0+63↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140396F78
                jmp     short loc_140396700
; ---------------------------------------------------------------------------

loc_14039673F:                          ; CODE XREF: sub_1403966B0+6B↑j
                mov     [rbx+58h], rdx
                jmp     short loc_140396725
sub_1403966B0   endp

; ---------------------------------------------------------------------------
algn_140396745:                         ; DATA XREF: .pdata:00000001400DCA10↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396750   proc near               ; DATA XREF: .rdata:0000000140007D80↑o
                                        ; .pdata:00000001400DCA1C↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1403973A8
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140396FA0
                lea     rdx, [rbx+18h]
                mov     rcx, rbx
                mov     r8d, eax
                call    sub_140396F78
                mov     eax, 1
                mov     [rbx+6Ch], r8d
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396750   endp

algn_140396787:                         ; DATA XREF: .pdata:00000001400DCA1C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396790   proc near               ; DATA XREF: .rdata:0000000140007F60↑o
                                        ; .rdata:0000000140007F68↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049F710 SIZE 00000021 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     al, [rcx+8Ah]
                mov     rbx, rcx
                mov     edi, [rcx+68h]
                neg     al
                sbb     edx, edx
                and     edx, 2
                inc     edx
                mov     [rcx+78h], edx
                cmp     dword ptr [rcx+70h], 9Ah
                jz      loc_14049F710
                cmp     dword ptr [rcx+7Ch], 20h ; ' '
                jnz     loc_14049F710
                mov     edx, [rcx+14h]
                call    sub_140396D48

loc_1403967D1:                          ; CODE XREF: sub_140396790+108F9C↓j
                mov     [rbx+14h], edi
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396790   endp

byte_1403967E0  db 10h dup(0CCh)        ; DATA XREF: .rdata:000000014009AD4C↑o
                                        ; .pdata:00000001400DCA28↑o

; =============== S U B R O U T I N E =======================================


sub_1403967F0   proc near               ; DATA XREF: .rdata:0000000140008010↑o
                                        ; .rdata:000000014009AD6C↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049F732 SIZE 0000002A BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+70h]
                mov     rbx, rcx
                test    al, 1
                jz      short loc_14039684B
                xor     edi, edi

loc_140396806:                          ; CODE XREF: sub_1403967F0+63↓j
                mov     al, [rbx+8Ah]
                neg     al
                sbb     ecx, ecx
                and     ecx, 2
                inc     ecx
                mov     [rbx+78h], ecx
                mov     rcx, rbx
                call    sub_140396E9C
                mov     [rbx+14h], eax
                mov     eax, [rbx+70h]
                test    al, 8
                jnz     loc_14049F732

loc_14039682E:                          ; CODE XREF: sub_1403967F0+108F4E↓j
                add     [rbx+28h], edi
                mov     eax, 0FFFFh
                cmp     [rbx+14h], eax
                jz      loc_14049F743

loc_14039683F:                          ; CODE XREF: sub_1403967F0+108F57↓j
                                        ; sub_1403967F0+108F67↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039684B:                          ; CODE XREF: sub_1403967F0+12↑j
                call    sub_140397420
                movzx   edi, ax
                jmp     short loc_140396806
sub_1403967F0   endp

; ---------------------------------------------------------------------------
algn_140396855:                         ; DATA XREF: .rdata:000000014009AD6C↑o
                                        ; .pdata:00000001400DCA34↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396860   proc near               ; DATA XREF: .rdata:0000000140007DA0↑o
                                        ; .pdata:00000001400DCA40↑o
                push    rbx
                sub     rsp, 20h
                mov     eax, [rcx+70h]
                mov     rbx, rcx
                mov     edx, eax
                and     edx, 7
                test    al, 8
                jz      short loc_1403968AC
                mov     al, [rcx+8Ah]
                neg     al
                sbb     ecx, ecx
                and     ecx, 2
                inc     ecx
                mov     [rbx+78h], ecx

loc_140396887:                          ; CODE XREF: sub_140396860+50↓j
                mov     rcx, rbx
                call    sub_140397378
                mov     rcx, rbx
                mov     [rbx+58h], rax
                xor     edx, edx
                call    sub_140396FA0
                mov     [rbx+6Ch], eax
                mov     eax, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403968AC:                          ; CODE XREF: sub_140396860+13↑j
                and     dword ptr [rcx+78h], 0
                jmp     short loc_140396887
sub_140396860   endp

; ---------------------------------------------------------------------------
algn_1403968B2:                         ; DATA XREF: .pdata:00000001400DCA40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403968C0   proc near               ; DATA XREF: .rdata:0000000140007D90↑o
                                        ; .pdata:00000001400DCA4C↑o

arg_8           = dword ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                mov     rbx, rcx
                call    sub_1403973A8
                lea     rdx, [rsp+28h+arg_8]
                mov     rcx, rbx
                call    sub_140396FF4
                mov     r9, rax
                test    rax, rax
                jz      short loc_140396924
                mov     eax, [rbx+70h]
                mov     rcx, rbx
                mov     edx, [rsp+28h+arg_8]
                test    al, 2
                jz      short loc_140396916
                call    sub_140397378
                mov     [rbx+58h], rax

loc_1403968FF:                          ; CODE XREF: sub_1403968C0+62↓j
                mov     rdx, r9
                mov     rcx, rbx
                call    sub_140396EE8
                mov     eax, 1

loc_14039690F:                          ; CODE XREF: sub_1403968C0:loc_140396924↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140396916:                          ; CODE XREF: sub_1403968C0+34↑j
                mov     [rbx+58h], r9
                call    sub_140397378
                mov     r9, rax
                jmp     short loc_1403968FF
; ---------------------------------------------------------------------------

loc_140396924:                          ; CODE XREF: sub_1403968C0+26↑j
                jmp     short loc_14039690F
sub_1403968C0   endp

; ---------------------------------------------------------------------------
algn_140396926:                         ; DATA XREF: .pdata:00000001400DCA4C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396930   proc near               ; DATA XREF: .rdata:0000000140007F80↑o
                                        ; .pdata:00000001400DCA58↑o
                sub     rsp, 28h
                mov     edx, [rcx+6Ch]
                call    sub_140396D48
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396930   endp

algn_140396942:                         ; DATA XREF: .pdata:00000001400DCA58↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396950   proc near               ; DATA XREF: .rdata:0000000140007FB8↑o
                                        ; .pdata:00000001400DCA64↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140396E9C
                mov     edx, eax
                mov     rcx, rbx
                call    sub_140396DA0
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396950   endp

byte_14039696F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCA64↑o

; =============== S U B R O U T I N E =======================================


sub_140396978   proc near               ; CODE XREF: sub_140396550+A↑p
                                        ; sub_140396690+A↑p ...
                sub     rsp, 28h
                cmp     dword ptr [rcx+7Ch], 16h
                mov     r9, rcx
                mov     r10d, edx
                jz      short loc_140396990
                mov     edx, r10d
                call    sub_140396DA0

loc_140396990:                          ; CODE XREF: sub_140396978+E↑j
                mov     r8, r10
                lea     rcx, qword_14002DF78
                and     r8d, 0Fh
                mov     rax, r10
                shr     rax, 4
                and     eax, 0Fh
                movzx   edx, byte ptr [rax+rcx]
                movzx   eax, byte ptr [r8+rcx]
                mov     ecx, [r9+78h]
                add     edx, eax
                not     edx
                mov     eax, r10d
                and     edx, 1
                lea     ecx, ds:7[rcx*8]
                shr     eax, cl
                and     eax, 1
                shl     eax, 5
                or      edx, eax
                mov     eax, [r9+10h]
                shl     edx, 2
                neg     r10d
                sbb     ecx, ecx
                and     eax, 0FFFFFFAAh
                not     ecx
                and     ecx, 40h
                or      ecx, eax
                and     ecx, 0FFFFF77Fh
                or      edx, ecx
                mov     [r9+10h], edx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396978   endp

algn_1403969F8:                         ; DATA XREF: .pdata:00000001400DCA70↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396A00   proc near               ; CODE XREF: sub_140396640+D↑p
                                        ; sub_1403C3830+6↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+78h]
                xor     r9d, r9d
                mov     [rsp+28h+arg_8], r9d
                mov     edi, edx
                mov     rbx, rcx
                mov     r11d, r9d
                test    eax, eax
                jz      loc_140396B24
                cmp     eax, 3
                jz      loc_140396B49
                add     dx, [rcx+6Ch]
                lea     esi, [r9+0Fh]
                movzx   ecx, word ptr [rcx+68h]
                lea     eax, [rcx+rdx]
                cmp     ax, cx
                mov     word ptr [rsp+28h+arg_8], ax
                setb    r11b
                cmp     dx, di

loc_140396A56:                          ; CODE XREF: sub_140396A00+144↓j
                mov     edx, [rsp+28h+arg_8]

loc_140396A5A:                          ; CODE XREF: sub_140396A00+161↓j
                setb    r9b
                mov     rcx, rbx
                or      r11d, r9d
                call    sub_140396DA0
                cmp     dword ptr [rbx+7Ch], 1Eh
                mov     r8d, [rbx+10h]
                jz      short loc_140396A7A
                and     r8d, 0FFFFFFFEh
                or      r8d, r11d

loc_140396A7A:                          ; CODE XREF: sub_140396A00+71↑j
                mov     r10d, [rbx+6Ch]
                lea     rbp, qword_14002DF78
                and     r8d, 0FFFFFFEBh
                mov     ecx, edx
                and     ecx, 0Fh
                mov     eax, edx
                shr     rax, 4
                and     eax, 0Fh
                movzx   r9d, byte ptr [rax+rbp]
                movzx   eax, byte ptr [rcx+rbp]
                mov     ecx, r10d
                mov     rbp, [rsp+28h+arg_10]
                add     r9d, eax
                movzx   eax, byte ptr [rbx+68h]
                not     r9d
                and     r9d, 1
                and     ecx, 0Fh
                shl     r9d, 2
                and     eax, 0Fh
                add     eax, edi
                add     ecx, eax
                mov     eax, edx
                and     ecx, 10h
                or      r9d, ecx
                mov     ecx, esi
                mov     rsi, [rsp+28h+arg_18]
                or      r9d, r8d
                neg     eax
                sbb     r8d, r8d
                xor     r10d, [rbx+68h]
                xor     r10d, edx
                and     r9d, 0FFFFFFBFh
                shr     r10d, cl
                not     r8d
                xor     r10d, r11d
                shr     edx, cl
                and     r10d, 1
                and     r8d, 40h
                shl     r10d, 4
                and     edx, 1
                or      r10d, edx
                or      r9d, r8d
                shl     r10d, 7
                and     r9d, 0FFFFF77Fh
                or      r10d, r9d
                mov     [rbx+10h], r10d
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140396B24:                          ; CODE XREF: sub_140396A00+29↑j
                mov     r8b, dil
                mov     esi, 7
                add     r8b, [rcx+6Ch]
                mov     cl, [rcx+68h]
                lea     eax, [rcx+r8]
                cmp     al, cl
                mov     byte ptr [rsp+28h+arg_8], al
                setb    r11b
                cmp     r8b, dil
                jmp     loc_140396A56
; ---------------------------------------------------------------------------

loc_140396B49:                          ; CODE XREF: sub_140396A00+32↑j
                mov     eax, [rbx+68h]
                mov     esi, 1Fh
                mov     ecx, [rcx+6Ch]
                add     ecx, edi
                cmp     ecx, edi
                setb    r11b
                lea     edx, [rcx+rax]
                cmp     edx, eax
                jmp     loc_140396A5A
sub_140396A00   endp

; ---------------------------------------------------------------------------
algn_140396B66:                         ; DATA XREF: .pdata:00000001400DCA7C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396B70   proc near               ; DATA XREF: .rdata:0000000140007EB8↑o
                                        ; .rdata:0000000140007EC8↑o ...
                sub     rsp, 28h
                xor     edx, edx
                call    sub_140396B88
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396B70   endp

algn_140396B81:                         ; DATA XREF: .pdata:00000001400DCA88↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140396B88   proc near               ; CODE XREF: sub_140396530+D↑p
                                        ; sub_140396B70+6↑p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+78h]
                xor     r8d, r8d
                mov     [rsp+28h+arg_8], r8d
                mov     ebx, edx
                mov     r9, rcx
                mov     r11d, r8d
                test    eax, eax
                jnz     loc_140396CAD
                mov     al, [rcx+68h]
                mov     esi, 7
                mov     cl, [rcx+6Ch]
                mov     dl, al
                sub     dl, bl
                cmp     dl, cl
                setb    r11b
                cmp     al, bl
                setb    r8b
                or      r11d, r8d
                sub     dl, cl
                mov     byte ptr [rsp+28h+arg_8], dl

loc_140396BDB:                          ; CODE XREF: sub_140396B88+156↓j
                mov     edx, [rsp+28h+arg_8]

loc_140396BDF:                          ; CODE XREF: sub_140396B88+195↓j
                mov     eax, [r9+7Ch]
                mov     edi, eax
                cmp     eax, 0Dh
                jnz     loc_140396CE3

loc_140396BEE:                          ; CODE XREF: sub_140396B88+15E↓j
                                        ; sub_140396B88+170↓j
                mov     r8d, [r9+10h]
                cmp     edi, 1Fh
                jz      short loc_140396BFE
                and     r8d, 0FFFFFFFEh
                or      r8d, r11d

loc_140396BFE:                          ; CODE XREF: sub_140396B88+6D↑j
                mov     ecx, edx
                lea     rbp, qword_14002DF78
                and     ecx, 0Fh
                mov     eax, edx
                shr     rax, 4
                and     r8d, 0FFFFFFEBh
                and     eax, 0Fh
                movzx   r10d, byte ptr [rax+rbp]
                movzx   eax, byte ptr [rcx+rbp]
                movzx   ecx, byte ptr [r9+68h]
                add     r10d, eax
                movzx   eax, byte ptr [r9+6Ch]
                and     ecx, 0Fh
                not     r10d
                and     eax, 0Fh
                and     r10d, 1
                sub     ecx, eax
                shl     r10d, 2
                sub     ecx, ebx
                and     ecx, 10h
                or      r10d, ecx
                or      r10d, r8d
                cmp     edi, 57h ; 'W'
                jz      short loc_140396C62
                mov     eax, edx
                neg     eax
                sbb     ecx, ecx
                and     r10d, 0FFFFFFBFh
                not     ecx
                and     ecx, 40h
                or      r10d, ecx

loc_140396C62:                          ; CODE XREF: sub_140396B88+C6↑j
                mov     r8d, [r9+6Ch]
                mov     ecx, esi
                xor     r8d, [r9+68h]
                and     r10d, 0FFFFF77Fh
                mov     rbx, [rsp+28h+arg_0]
                xor     r8d, edx
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                shr     r8d, cl
                xor     r8d, r11d
                shr     edx, cl
                and     r8d, 1
                and     edx, 1
                shl     r8d, 4
                or      r8d, edx
                shl     r8d, 7
                or      r8d, r10d
                mov     [r9+10h], r8d
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396CAD:                          ; CODE XREF: sub_140396B88+29↑j
                cmp     eax, 3
                jz      short loc_140396CFD
                movzx   eax, word ptr [rcx+68h]
                mov     esi, 0Fh
                movzx   ecx, word ptr [rcx+6Ch]
                movzx   edx, ax
                sub     dx, bx
                cmp     dx, cx
                setb    r11b
                cmp     ax, bx
                setb    r8b
                or      r11d, r8d
                sub     dx, cx
                mov     word ptr [rsp+28h+arg_8], dx
                jmp     loc_140396BDB
; ---------------------------------------------------------------------------

loc_140396CE3:                          ; CODE XREF: sub_140396B88+60↑j
                cmp     eax, 57h ; 'W'
                jz      loc_140396BEE
                mov     rcx, r9
                call    sub_140396DA0
                mov     edi, [r9+7Ch]
                jmp     loc_140396BEE
; ---------------------------------------------------------------------------

loc_140396CFD:                          ; CODE XREF: sub_140396B88+128↑j
                mov     eax, [rcx+68h]
                mov     esi, 1Fh
                mov     ecx, [rcx+6Ch]
                mov     edx, eax
                sub     edx, ebx
                cmp     edx, ecx
                setb    r11b
                cmp     eax, ebx
                setb    r8b
                or      r11d, r8d
                sub     edx, ecx
                jmp     loc_140396BDF
sub_140396B88   endp

; ---------------------------------------------------------------------------
algn_140396D22:                         ; DATA XREF: .pdata:00000001400DCA94↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396D30   proc near               ; DATA XREF: .rdata:0000000140008068↑o
                                        ; .rdata:00000001400080D0↑o ...
                sub     rsp, 28h
                mov     edx, [rcx+6Ch]
                call    sub_140396DA0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396D30   endp

algn_140396D42:                         ; DATA XREF: .pdata:00000001400DCAA0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140396D48   proc near               ; CODE XREF: sub_140396790+3C↑p
                                        ; sub_140396930+7↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049F75C SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r8d, [rcx+78h]
                mov     edi, edx
                mov     edx, [rcx+28h]
                mov     rbx, rcx
                movzx   eax, word ptr [rcx+48h]
                sub     edx, r8d
                dec     edx
                sub     eax, r8d
                cmp     edx, eax
                ja      loc_14049F75C
                mov     [rcx+28h], edx
                movzx   ecx, word ptr [rcx+3Ch]
                call    sub_140397B30
                mov     edx, edi
                mov     [rbx+58h], rax
                mov     rcx, rbx
                call    sub_140396DA0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396D48   endp

algn_140396D98:                         ; DATA XREF: .rdata:000000014009ADBC↑o
                                        ; .pdata:00000001400DCAAC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396DA0   proc near               ; CODE XREF: sub_140396570+1C↑p
                                        ; sub_1403965B0+33↑p ...
                mov     r8d, [rcx+78h]
                mov     rax, [rcx+58h]
                test    r8d, r8d
                jz      short loc_140396DB8
                cmp     r8d, 1
                jnz     short loc_140396DBC
                mov     [rax], dx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140396DB8:                          ; CODE XREF: sub_140396DA0+B↑j
                mov     [rax], dl
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140396DBC:                          ; CODE XREF: sub_140396DA0+11↑j
                mov     [rax], edx
                retn
sub_140396DA0   endp

; ---------------------------------------------------------------------------
                align 20h
byte_140396DC0  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400DCAB8↑o

; =============== S U B R O U T I N E =======================================


sub_140396DD0   proc near               ; DATA XREF: .rdata:0000000140007D60↑o
                                        ; .pdata:00000001400DCAC4↑o
                sub     rsp, 28h
                mov     r8d, [rcx+70h]
                mov     al, [rcx+8Ah]
                and     r8d, 7
                neg     al
                sbb     edx, edx
                and     edx, 2
                inc     edx
                mov     [rcx+78h], edx
                mov     edx, r8d
                add     rdx, 6
                cmp     dword ptr [rcx+7Ch], 24h ; '$'
                lea     rdx, [rcx+rdx*4]
                jz      short loc_140396E0F
                call    sub_140396F78

loc_140396E04:                          ; CODE XREF: sub_140396DD0+44↓j
                mov     eax, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396E0F:                          ; CODE XREF: sub_140396DD0+2D↑j
                call    sub_140396EE8
                jmp     short loc_140396E04
sub_140396DD0   endp

; ---------------------------------------------------------------------------
algn_140396E16:                         ; DATA XREF: .pdata:00000001400DCAC4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396E20   proc near               ; DATA XREF: .rdata:0000000140007D10↑o
                                        ; .pdata:00000001400DCAD0↑o

arg_8           = dword ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                mov     rbx, rcx
                call    sub_1403973A8
                lea     rdx, [rsp+28h+arg_8]
                mov     rcx, rbx
                call    sub_140396FF4
                mov     r9, rax
                test    rax, rax
                jz      short loc_140396E93
                mov     eax, [rbx+70h]
                mov     rcx, rbx
                test    al, 2
                jnz     short loc_140396E7D
                mov     rdx, r9
                call    sub_140396F78
                mov     edx, [rsp+28h+arg_8]
                call    sub_140397378
                mov     r9, rax

loc_140396E66:                          ; CODE XREF: sub_140396E20+71↓j
                mov     rdx, r9
                mov     rcx, rbx
                call    sub_140396EE8
                mov     eax, 1

loc_140396E76:                          ; CODE XREF: sub_140396E20:loc_140396E93↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396E7D:                          ; CODE XREF: sub_140396E20+30↑j
                mov     edx, [rsp+28h+arg_8]
                call    sub_140397378
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140396F78
                jmp     short loc_140396E66
; ---------------------------------------------------------------------------

loc_140396E93:                          ; CODE XREF: sub_140396E20+26↑j
                jmp     short loc_140396E76
sub_140396E20   endp

; ---------------------------------------------------------------------------
byte_140396E95  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCAD0↑o

; =============== S U B R O U T I N E =======================================


sub_140396E9C   proc near               ; CODE XREF: sub_1403964C0+1B↑p
                                        ; sub_1403964C0+26↑p ...

; FUNCTION CHUNK AT 000000014049F76E SIZE 00000012 BYTES

                push    rbx
                sub     rsp, 20h
                mov     edx, [rcx+28h]
                mov     rbx, rcx
                mov     ecx, [rcx+78h]
                movzx   eax, word ptr [rbx+48h]
                sub     eax, ecx
                cmp     edx, eax
                ja      loc_14049F76E
                lea     eax, [rdx+1]
                add     eax, ecx
                movzx   ecx, word ptr [rbx+3Ch]
                mov     [rbx+28h], eax
                call    sub_140397B30
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140396EE8
                mov     eax, [rbx+6Ch]
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396E9C   endp

byte_140396EDF  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009ADD8↑o
                                        ; .pdata:00000001400DCADC↑o

; =============== S U B R O U T I N E =======================================


sub_140396EE8   proc near               ; CODE XREF: sub_140396600+1E↑p
                                        ; sub_1403966B0+7B↑p ...
                mov     eax, [rcx+78h]
                mov     [rcx+60h], rdx
                test    eax, eax
                jz      short loc_140396F00
                cmp     eax, 1
                jnz     short loc_140396F05
                movzx   eax, word ptr [rdx]

loc_140396EFB:                          ; CODE XREF: sub_140396EE8+1B↓j
                                        ; sub_140396EE8+1F↓j
                mov     [rcx+6Ch], eax
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140396F00:                          ; CODE XREF: sub_140396EE8+9↑j
                movzx   eax, byte ptr [rdx]
                jmp     short loc_140396EFB
; ---------------------------------------------------------------------------

loc_140396F05:                          ; CODE XREF: sub_140396EE8+E↑j
                mov     eax, [rdx]
                jmp     short loc_140396EFB
sub_140396EE8   endp

; ---------------------------------------------------------------------------
algn_140396F09:                         ; DATA XREF: .pdata:00000001400DCAE8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140396F10   proc near               ; DATA XREF: .rdata:0000000140007D18↑o
                                        ; .pdata:00000001400DCAF4↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rdi, rcx
                call    sub_1403973A8
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, rdi
                call    sub_140396FF4
                mov     edx, [rdi+70h]
                mov     rcx, rdi
                and     edx, 2
                mov     rbx, rax
                call    sub_140396FA0
                mov     rdx, rbx
                mov     rcx, rdi
                mov     r8d, eax
                call    sub_140396F78
                mov     eax, [rsp+28h+arg_0]
                add     [rdi+7Ch], eax
                mov     eax, 1
                mov     rbx, [rsp+28h+arg_8]
                mov     [rdi+6Ch], r8d
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140396F10   endp

byte_140396F6F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCAF4↑o

; =============== S U B R O U T I N E =======================================


sub_140396F78   proc near               ; CODE XREF: sub_1403966B0+47↑p
                                        ; sub_1403966B0+70↑p ...
                mov     eax, [rcx+78h]
                mov     [rcx+58h], rdx
                test    eax, eax
                jnz     short loc_140396F8B
                movzx   eax, byte ptr [rdx]

loc_140396F86:                          ; CODE XREF: sub_140396F78+1B↓j
                                        ; sub_140396F78+1F↓j
                mov     [rcx+68h], eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396F8B:                          ; CODE XREF: sub_140396F78+9↑j
                cmp     eax, 1
                jnz     short loc_140396F95
                movzx   eax, word ptr [rdx]
                jmp     short loc_140396F86
; ---------------------------------------------------------------------------

loc_140396F95:                          ; CODE XREF: sub_140396F78+16↑j
                mov     eax, [rdx]
                jmp     short loc_140396F86
sub_140396F78   endp

; ---------------------------------------------------------------------------
algn_140396F99:                         ; DATA XREF: .pdata:00000001400DCB00↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140396FA0   proc near               ; CODE XREF: sub_1403966B0+39↑p
                                        ; sub_140396750+13↑p ...
                sub     rsp, 28h
                mov     eax, [rcx+78h]
                test    eax, eax
                jnz     short loc_140396FB9
                call    sub_140397348
                movzx   eax, al

loc_140396FB3:                          ; CODE XREF: sub_140396FA0+2D↓j
                                        ; sub_140396FA0+37↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140396FB9:                          ; CODE XREF: sub_140396FA0+9↑j
                cmp     eax, 1
                jnz     short loc_140396FD9
                test    edx, edx
                jz      short loc_140396FCF
                call    sub_140397348
                movsx   ecx, al
                movzx   eax, cx
                jmp     short loc_140396FB3
; ---------------------------------------------------------------------------

loc_140396FCF:                          ; CODE XREF: sub_140396FA0+20↑j
                call    sub_140397420
                movzx   eax, ax
                jmp     short loc_140396FB3
; ---------------------------------------------------------------------------

loc_140396FD9:                          ; CODE XREF: sub_140396FA0+1C↑j
                test    edx, edx
                jnz     short loc_140396FE4
                call    sub_1403C50E4
                jmp     short loc_140396FB3
; ---------------------------------------------------------------------------

loc_140396FE4:                          ; CODE XREF: sub_140396FA0+3B↑j
                call    sub_140397348
                movsx   eax, al
                jmp     short loc_140396FB3
sub_140396FA0   endp

; ---------------------------------------------------------------------------
byte_140396FEE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCB0C↑o

; =============== S U B R O U T I N E =======================================


sub_140396FF4   proc near               ; CODE XREF: sub_1403966B0+1F↑p
                                        ; sub_1403968C0+1B↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049F780 SIZE 00000333 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rbx, rdx
                mov     esi, ebp
                mov     rdi, rcx
                call    sub_140397348
                movzx   eax, al
                mov     edx, eax
                mov     [rdi+8Eh], bpl
                mov     r8d, eax
                shr     edx, 6
                and     r8d, 7
                shr     eax, 3
                and     eax, 7
                mov     ecx, edx
                shl     ecx, 3
                or      ecx, r8d
                mov     [rbx], eax
                cmp     [rdi+89h], bpl
                jnz     loc_14049F780
                cmp     ecx, 0Ch
                jbe     short loc_1403970A6
                cmp     ecx, 13h
                jbe     loc_140397147
                cmp     ecx, 14h
                jz      loc_14049FA7B
                cmp     ecx, 15h
                jz      loc_14049FA6A
                cmp     ecx, 16h
                jz      loc_14049FA59
                cmp     ecx, 17h
                jz      loc_14049FA48

loc_14039707C:                          ; CODE XREF: sub_140396FF4+108948↓j
                jbe     short loc_1403970EB
                mov     edx, r8d
                mov     byte ptr [rdi+8Eh], 1
                mov     rcx, rdi
                call    sub_140397378

loc_140397090:                          ; CODE XREF: sub_140396FF4+137↓j
                                        ; sub_140396FF4+108AA8↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403970A6:                          ; CODE XREF: sub_140396FF4+59↑j
                jz      loc_140397130
                cmp     ecx, 6
                jz      loc_140397163
                ja      loc_1403971B2
                test    ecx, ecx
                jz      loc_14049F981
                sub     ecx, 1
                jz      loc_14049F97B
                sub     ecx, 1
                jz      loc_14049F956
                sub     ecx, 1
                jz      loc_14049F950
                sub     ecx, 1
                jnz     loc_1403971A0
                movzx   esi, word ptr [rdi+30h]

loc_1403970EB:                          ; CODE XREF: sub_140396FF4:loc_14039707C↑j
                                        ; sub_140396FF4+151↓j ...
                cmp     [rdi+8Fh], bpl
                jnz     loc_14049FA8C
                mov     r8d, [rdi+74h]
                movzx   edx, word ptr [rdi+r8*2+44h]
                cmp     esi, edx
                ja      loc_14049FAA1
                mov     ecx, [rdi+78h]
                add     ecx, esi
                cmp     ecx, edx
                ja      loc_14049FAA1
                mov     [rdi+80h], esi
                movzx   edx, si
                movzx   ecx, word ptr [rdi+r8*2+38h]
                call    sub_140397B30
                jmp     loc_140397090
; ---------------------------------------------------------------------------

loc_140397130:                          ; CODE XREF: sub_140396FF4:loc_1403970A6↑j
                mov     rcx, rdi
                call    sub_140397348
                movsx   ecx, al
                movzx   eax, word ptr [rdi+30h]

loc_14039713F:                          ; CODE XREF: sub_140396FF4+16D↓j
                                        ; sub_140396FF4+1E8↓j
                add     ax, cx

loc_140397142:                          ; CODE XREF: sub_140396FF4+177↓j
                                        ; sub_140396FF4+108A60↓j ...
                movzx   esi, ax
                jmp     short loc_1403970EB
; ---------------------------------------------------------------------------

loc_140397147:                          ; CODE XREF: sub_140396FF4+5E↑j
                jz      loc_14049FA37
                sub     ecx, 0Dh
                jnz     short loc_14039716D
                mov     rcx, rdi
                call    sub_140397348
                movsx   ecx, al
                movzx   eax, word ptr [rdi+34h]
                jmp     short loc_14039713F
; ---------------------------------------------------------------------------

loc_140397163:                          ; CODE XREF: sub_140396FF4+BB↑j
                mov     rcx, rdi
                call    sub_140397420
                jmp     short loc_140397142
; ---------------------------------------------------------------------------

loc_14039716D:                          ; CODE XREF: sub_140396FF4+15C↑j
                sub     ecx, 1
                jnz     short loc_1403971C4
                mov     rcx, rdi
                call    sub_140397348
                movsx   ecx, al
                movzx   eax, word ptr [rdi+2Ch]
                add     ax, cx

loc_140397184:                          ; CODE XREF: sub_140396FF4+108A71↓j
                movzx   esi, ax

loc_140397187:                          ; CODE XREF: sub_140396FF4+10892F↓j
                                        ; sub_140396FF4+108982↓j
                cmp     [rdi+8Ch], bpl
                jnz     loc_1403970EB
                mov     dword ptr [rdi+74h], 2
                jmp     loc_1403970EB
; ---------------------------------------------------------------------------

loc_1403971A0:                          ; CODE XREF: sub_140396FF4+ED↑j
                cmp     ecx, 1
                jnz     loc_1403970EB
                movzx   esi, word ptr [rdi+34h]
                jmp     loc_1403970EB
; ---------------------------------------------------------------------------

loc_1403971B2:                          ; CODE XREF: sub_140396FF4+C1↑j
                sub     ecx, 7
                jnz     loc_14049F9A6
                movzx   esi, word ptr [rdi+24h]
                jmp     loc_1403970EB
; ---------------------------------------------------------------------------

loc_1403971C4:                          ; CODE XREF: sub_140396FF4+17C↑j
                sub     ecx, 1
                jnz     loc_14049FA0A
                mov     rcx, rdi
                call    sub_140397348
                movsx   ecx, al
                movzx   eax, word ptr [rdi+24h]
                jmp     loc_14039713F
sub_140396FF4   endp

; ---------------------------------------------------------------------------
algn_1403971E1:                         ; DATA XREF: .rdata:000000014009AE00↑o
                                        ; .pdata:00000001400DCB18↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403971E8   proc near               ; CODE XREF: sub_14039641C+79↑p
                                        ; DATA XREF: .pdata:00000001400DCB24↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9
                push    rdi
                sub     rsp, 30h
                lea     rax, unk_140CED320
                mov     [rsp+38h+var_18], rax
                lea     rcx, unk_140CED3C0
                mov     eax, [r9]
                mov     cs:dword_140CED338, eax
                mov     eax, [r9+4]
                mov     cs:dword_140CED33C, eax
                mov     eax, [r9+8]
                mov     cs:dword_140CED340, eax
                mov     eax, [r9+0Ch]
                mov     cs:dword_140CED344, eax
                mov     eax, [r9+10h]
                mov     cs:dword_140CED34C, eax
                mov     eax, [r9+14h]
                mov     cs:dword_140CED350, eax
                mov     eax, [r9+18h]
                mov     cs:dword_140CED354, eax
                movzx   eax, word ptr [r9+1Ch]
                mov     cs:word_140CED35E, ax
                movzx   eax, word ptr [r9+1Eh]
                mov     cs:word_140CED358, ax
                movzx   eax, r8w
                mov     cs:word_140CED35A, dx
                mov     rdx, rsp
                mov     cs:dword_140CED334, eax
                call    _setjmp

loc_140397280:                          ; DATA XREF: .rdata:__guard_longjmp_table↑o
                mov     rbx, [rsp+38h+var_18]
                mov     edx, eax
                mov     cs:dword_140C505B0, eax
                test    eax, eax
                jnz     short loc_140397305
                lea     rdi, cs:140000000h

loc_140397298:                          ; CODE XREF: sub_1403971E8+11B↓j
                mov     dword ptr [rbx+74h], 3
                lea     rax, qword_14000CB00
                and     qword ptr [rbx+88h], 0
                mov     [rbx], rax

loc_1403972B1:                          ; CODE XREF: sub_1403971E8+FE↓j
                mov     rcx, rbx
                call    sub_140397348
                movzx   ecx, al
                mov     [rbx+70h], ecx
                mov     rax, [rbx]
                movzx   ecx, word ptr [rax+rcx*2]
                movzx   eax, cl
                mov     [rbx+50h], cx
                mov     rcx, rbx
                mov     [rbx+7Ch], eax
                movzx   eax, byte ptr [rbx+51h]
                mov     rax, ds:rva off_140007CB0[rdi+rax*8]
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1403972B1
                mov     eax, [rbx+7Ch]
                mov     rcx, rbx
                mov     rax, ds:rva off_140007E60[rdi+rax*8]
                call    sub_1404079D0
                mov     edx, cs:dword_140C505B0
                test    edx, edx
                jz      short loc_140397298

loc_140397305:                          ; CODE XREF: sub_1403971E8+A7↑j
                mov     eax, [rbx+18h]
                mov     rcx, [rsp+38h+arg_18]
                mov     [rcx], eax
                mov     eax, [rbx+1Ch]
                mov     [rcx+4], eax
                mov     eax, [rbx+20h]
                mov     [rcx+8], eax
                mov     eax, [rbx+24h]
                mov     [rcx+0Ch], eax
                mov     eax, [rbx+2Ch]
                mov     [rcx+10h], eax
                mov     eax, [rbx+30h]
                mov     [rcx+14h], eax
                mov     eax, [rbx+34h]
                mov     rbx, [rsp+38h+arg_0]
                mov     [rcx+18h], eax
                mov     eax, edx
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403971E8   endp

algn_140397341:                         ; DATA XREF: .pdata:00000001400DCB24↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140397348   proc near               ; CODE XREF: sub_140396FA0+B↑p
                                        ; sub_140396FA0+22↑p ...

; FUNCTION CHUNK AT 000000014049FAB4 SIZE 00000012 BYTES

                sub     rsp, 28h
                movzx   eax, word ptr [rcx+46h]
                mov     edx, [rcx+14h]
                cmp     edx, eax
                ja      loc_14049FAB4
                inc     word ptr [rcx+14h]
                movzx   ecx, word ptr [rcx+3Ah]
                call    sub_140397B30
                mov     al, [rax]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140397348   endp

byte_140397370  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009AE1C↑o
                                        ; .pdata:00000001400DCB30↑o

; =============== S U B R O U T I N E =======================================


sub_140397378   proc near               ; CODE XREF: sub_140396860+2A↑p
                                        ; sub_1403968C0+36↑p ...
                mov     r8, rcx
                cmp     edx, 4
                jb      short loc_140397386
                cmp     dword ptr [rcx+78h], 0
                jz      short loc_140397392

loc_140397386:                          ; CODE XREF: sub_140397378+6↑j
                mov     eax, edx
                add     rax, 6
                lea     rax, [rcx+rax*4]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140397392:                          ; CODE XREF: sub_140397378+C↑j
                lea     ecx, [rdx-4]
                lea     rax, [r8+19h]
                lea     rax, [rax+rcx*4]
                retn
sub_140397378   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14039739F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCB3C↑o

; =============== S U B R O U T I N E =======================================


sub_1403973A8   proc near               ; CODE XREF: sub_140396660+15↑p
                                        ; sub_1403966B0+12↑p ...
                mov     eax, [rcx+70h]
                mov     rdx, rcx
                test    al, 1
                jnz     short loc_1403973B8
                and     dword ptr [rcx+78h], 0
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403973B8:                          ; CODE XREF: sub_1403973A8+8↑j
                mov     al, [rcx+8Ah]
                neg     al
                sbb     ecx, ecx
                and     ecx, 2
                inc     ecx
                mov     [rdx+78h], ecx
                retn
sub_1403973A8   endp

; ---------------------------------------------------------------------------
                align 4
algn_1403973CC:                         ; DATA XREF: .pdata:00000001400DCB48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403973E0   proc near               ; DATA XREF: .rdata:0000000140007D68↑o
                                        ; .rdata:000000014009AE38↑o ...

; FUNCTION CHUNK AT 000000014049FAC6 SIZE 0000000F BYTES

                push    rbx
                sub     rsp, 20h
                cmp     byte ptr [rcx+8Ah], 0
                mov     rbx, rcx
                jnz     loc_14049FAC6
                call    sub_140397420
                add     ax, [rbx+14h]
                movzx   ecx, ax

loc_140397402:                          ; CODE XREF: sub_1403973E0+1086F0↓j
                mov     [rbx+68h], ecx
                mov     eax, [rbx+70h]
                and     eax, 0Fh
                mov     [rbx+6Ch], eax
                mov     eax, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403973E0   endp

algn_14039741A:                         ; DATA XREF: .rdata:000000014009AE38↑o
                                        ; .pdata:00000001400DCB54↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140397420   proc near               ; CODE XREF: sub_1403967F0:loc_14039684B↑p
                                        ; sub_140396FA0:loc_140396FCF↑p ...

; FUNCTION CHUNK AT 000000014049FAD6 SIZE 00000012 BYTES

                sub     rsp, 28h
                mov     r8d, [rcx+14h]
                movzx   edx, word ptr [rcx+46h]
                lea     eax, [r8+1]
                cmp     eax, edx
                ja      loc_14049FAD6
                add     word ptr [rcx+14h], 2
                movzx   edx, r8w
                movzx   ecx, word ptr [rcx+3Ah]
                call    sub_140397B30
                movzx   eax, word ptr [rax]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140397420   endp

algn_140397453:                         ; DATA XREF: .rdata:000000014009AE54↑o
                                        ; .pdata:00000001400DCB60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140397460   proc near               ; CODE XREF: sub_14075A758+18A↓p
                                        ; DATA XREF: .rdata:0000000140008F08↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                xor     r10d, r10d
                mov     r11d, edx
                mov     rsi, rcx
                test    edx, edx
                jz      short loc_1403974E0
                lea     eax, [rdx-1]
                sub     r8, r9
                lea     rax, [rax+rax*2]
                lea     rdx, [rcx+rax*4]
                mov     ecx, [rdx]
                cmp     r8, rcx
                jnb     short loc_1403974CE
                add     r11d, 0FFFFFFFEh
                mov     ebx, r10d
                js      short loc_1403974CE

loc_14039749A:                          ; CODE XREF: sub_140397460+6C↓j
                lea     r9d, [rbx+r11]
                sar     r9d, 1
                movsxd  rax, r9d
                lea     rcx, [rax+rax*2]
                lea     rdx, [rsi+rcx*4]
                mov     edi, [rdx]
                cmp     r8, rdi
                jb      short loc_1403974C3
                mov     eax, [rdx+0Ch]
                mov     ecx, edi
                cmp     r8, rax
                jb      short loc_1403974CE
                lea     ebx, [r9+1]
                jmp     short loc_1403974C7
; ---------------------------------------------------------------------------

loc_1403974C3:                          ; CODE XREF: sub_140397460+51↑j
                lea     r11d, [r9-1]

loc_1403974C7:                          ; CODE XREF: sub_140397460+61↑j
                mov     ecx, edi
                cmp     r11d, ebx
                jge     short loc_14039749A

loc_1403974CE:                          ; CODE XREF: sub_140397460+2F↑j
                                        ; sub_140397460+38↑j ...
                mov     eax, ecx
                cmp     r8, rax
                jb      short loc_1403974E0
                mov     eax, [rdx+4]
                cmp     r8, rax
                jnb     short loc_1403974E0
                mov     r10, rdx

loc_1403974E0:                          ; CODE XREF: sub_140397460+1A↑j
                                        ; sub_140397460+73↑j ...
                mov     rbx, [rsp+arg_0]
                mov     rax, r10
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140397460   endp

byte_1403974F4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCB6C↑o

; =============== S U B R O U T I N E =======================================


sub_1403974FC   proc near               ; CODE XREF: sub_14031FD30+121↑p
                                        ; sub_1403B7418+4C↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014049FAE8 SIZE 00000039 BYTES

                sub     rsp, 28h
                xor     edx, edx
                cmp     cs:byte_140E01840, dl
                jz      loc_14049FAE8
                test    ecx, ecx
                jz      short loc_140397553
                sub     ecx, 1
                jnz     short loc_14039754E

loc_140397517:                          ; CODE XREF: sub_1403974FC+55↓j
                                        ; sub_1403974FC+1085EE↓j ...
                cmp     cs:byte_140CFC409, dl
                jz      loc_14049FAFE
                mov     rax, cr3
                mov     cr3, rax
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rcx+390h], dl
                jz      short loc_140397547

loc_140397541:                          ; CODE XREF: sub_1403974FC+50↓j
                                        ; sub_1403974FC+5D↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140397547:                          ; CODE XREF: sub_1403974FC+43↑j
                call    sub_1403FECC0
                jmp     short loc_140397541
; ---------------------------------------------------------------------------

loc_14039754E:                          ; CODE XREF: sub_1403974FC+19↑j
                cmp     ecx, 1
                jnz     short loc_140397517

loc_140397553:                          ; CODE XREF: sub_1403974FC+14↑j
                                        ; sub_1403974FC+1085F7↓j ...
                mov     rax, cr3
                mov     cr3, rax
                jmp     short loc_140397541
sub_1403974FC   endp

; ---------------------------------------------------------------------------
byte_14039755B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009AE70↑o
                                        ; .pdata:00000001400DCB78↑o

; =============== S U B R O U T I N E =======================================


sub_140397564   proc near               ; CODE XREF: sub_140758D98+C6↓p
                                        ; DATA XREF: .pdata:00000001400DCB84↑o

var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     r9, rcx
                xor     r14d, r14d
                mov     r13, r8
                lea     ecx, [r14+1]
                call    sub_1402A46FC
                mov     rsi, [r9+30h]
                mov     r12, rax
                shr     rsi, 9
                mov     rax, 7FFFFFFFF8h
                and     rsi, rax
                mov     rbp, 0FFFFF68000000000h
                mov     rcx, rbp
                add     rsi, rcx
                mov     ecx, [r9+40h]
                shr     rcx, 0Ch
                lea     rbx, [rsi+rcx*8]
                mov     rcx, r12
                mov     [rsp+88h+var_50], rbx
                call    sub_140231340
                mov     [rsp+88h+arg_0], al
                mov     dil, al
                cmp     rsi, rbx
                jnb     loc_14039780B
                xor     r15d, r15d

loc_1403975E7:                          ; CODE XREF: sub_140397564+291↓j
                test    r14, r14
                jz      short loc_140397600
                test    rsi, 0FFFh
                jnz     short loc_140397628
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140312B40

loc_140397600:                          ; CODE XREF: sub_140397564+86↑j
                mov     r14, rsi
                mov     rax, 7FFFFFFFF8h
                shr     r14, 9
                and     r14, rax
                mov     rax, rbp
                add     r14, rax
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140225CC0

loc_140397628:                          ; CODE XREF: sub_140397564+8F↑j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     [rsp+88h+var_58], rax
                mov     rbx, rax
                test    rax, rax
                jz      loc_1403977E8
                test    bl, 1
                jnz     short loc_1403976AC
                bt      rax, 0Ah
                jb      loc_1403977E8
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140312B40
                mov     dl, dil
                mov     rcx, r12
                xor     r14d, r14d
                call    sub_140226960
                mov     rdi, rsi
                shl     rdi, 19h
                mov     rax, rbp
                shl     rax, 19h
                xor     r9d, r9d
                sub     rdi, rax
                xor     r8d, r8d
                sar     rdi, 10h
                xor     ecx, ecx
                mov     rdx, rdi
                call    sub_140224260
                test    eax, eax
                js      loc_140397828
                mov     rcx, r12
                call    sub_140231340
                mov     dil, [rsp+88h+arg_0]
                jmp     loc_1403977F0
; ---------------------------------------------------------------------------

loc_1403976AC:                          ; CODE XREF: sub_140397564+E0↑j
                lea     rcx, [rsp+88h+var_58]
                call    sub_1402805F0
                mov     rbx, rax
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                and     rbx, rax
                lea     rbp, [rbx+rbx*2]
                shl     rbp, 4
                mov     rax, 0FFFFFA8000000000h
                add     rbp, rax
                mov     rcx, rbp
                call    sub_1403F41D8
                test    eax, eax
                jnz     loc_1403977DE
                and     [rsp+88h+arg_18], eax
                jmp     short loc_14039770E
; ---------------------------------------------------------------------------

loc_1403976F8:                          ; CODE XREF: sub_140397564+1A8↓j
                                        ; sub_140397564+1B1↓j
                lea     rcx, [rsp+88h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rbp+18h]
                test    rax, rax
                js      short loc_1403976F8

loc_14039770E:                          ; CODE XREF: sub_140397564+192↑j
                lock bts qword ptr [rbp+18h], 3Fh ; '?'
                jb      short loc_1403976F8
                mov     rcx, rbp
                call    sub_140397B00
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbp+18h], rax
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140312B40
                mov     dl, dil
                mov     rcx, r12
                xor     r14d, r14d
                call    sub_140226960
                mov     rcx, [rsp+88h+arg_8]
                mov     r8, r15
                sar     r8, 3
                mov     r9, rbx
                mov     rdx, r13
                call    sub_14039784C
                mov     rcx, rbp
                mov     edi, eax
                call    sub_1402DAA00
                xor     ebx, ebx
                xor     r13d, r13d
                cmp     edi, 1
                jz      short loc_140397799
                mov     rcx, rbp
                call    sub_1402A6940
                mov     rcx, [rbp+28h]
                mov     rbx, rax
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     r13, [rax+rcx*8]

loc_140397799:                          ; CODE XREF: sub_140397564+20F↑j
                mov     rcx, rbp
                call    sub_14027B630
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbp+18h], rax
                test    rbx, rbx
                jz      short loc_1403977C6
                mov     r8d, 1
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_14020B2C0

loc_1403977C6:                          ; CODE XREF: sub_140397564+24F↑j
                mov     rcx, r12
                call    sub_140231340
                mov     dil, [rsp+88h+arg_0]
                mov     r13, [rsp+88h+arg_10]

loc_1403977DE:                          ; CODE XREF: sub_140397564+185↑j
                mov     rbp, 0FFFFF68000000000h

loc_1403977E8:                          ; CODE XREF: sub_140397564+D7↑j
                                        ; sub_140397564+E7↑j
                add     rsi, 8
                add     r15, 8

loc_1403977F0:                          ; CODE XREF: sub_140397564+143↑j
                cmp     rsi, [rsp+88h+var_50]
                jb      loc_1403975E7
                test    r14, r14
                jz      short loc_14039780B
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140312B40

loc_14039780B:                          ; CODE XREF: sub_140397564+7A↑j
                                        ; sub_140397564+29A↑j
                mov     dl, dil
                mov     rcx, r12
                call    sub_140226960
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
                align 8

loc_140397828:                          ; CODE XREF: sub_140397564+12D↑j
                cdqe
                mov     r9, rbx
                mov     r8, rdi
                mov     [rsp+88h+var_68], rax
                mov     edx, 1081h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_140397564   endp

byte_140397845  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCB84↑o

; =============== S U B R O U T I N E =======================================


sub_14039784C   proc near               ; CODE XREF: sub_140297FF0+79A↑p
                                        ; sub_140397564+1F8↑p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049FB22 SIZE 00000112 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, [rcx+60h]
                mov     rbp, rdx
                xor     edx, edx
                mov     r13d, r8d
                mov     r14, r9
                mov     r15, [rax+20h]
                mov     rcx, [r15+60h]
                test    rcx, rcx
                jz      loc_140397A01
                mov     rcx, [rcx+r13*8+38h]
                test    rcx, rcx
                jz      loc_140397A01
                cmp     [rcx], dx
                jz      loc_140397A12

loc_14039789F:                          ; CODE XREF: sub_14039784C+1CB↓j
                lea     rbx, [r9+r9*2]
                shl     rbx, 4
                mov     rax, 0FFFFFA8000000000h
                add     rbx, rax
                mov     esi, 1
                mov     rax, 0FFFFF68000000000h
                test    rbp, rbp
                jz      short loc_1403978E7
                mov     rax, rax
                cmp     rbp, rax
                jb      loc_14049FB22
                mov     rax, 0FFFFF6FFFFFFFFFFh
                cmp     rbp, rax
                ja      loc_14049FB22

loc_1403978E7:                          ; CODE XREF: sub_14039784C+7A↑j
                mov     edx, esi
                lea     rcx, qword_140C4EDC0
                mov     r12, rbp
                call    sub_1402583E0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14049FB2D

loc_140397904:                          ; CODE XREF: sub_14039784C+1082F3↓j
                mov     rbp, rdi
                mov     rax, 0FFFFF68000000000h
                shl     rbp, 19h
                mov     rax, rax
                shl     rax, 19h
                mov     rdx, rbx
                sub     rbp, rax
                mov     ecx, 4
                sar     rbp, 10h
                call    sub_1402994FC
                or      eax, 0A0000000h
                mov     rdx, r14
                mov     r8d, eax
                mov     rcx, rdi
                call    sub_140280E60
                mov     rcx, rdi
                mov     rbx, rax
                xor     r14d, r14d
                call    sub_1402433C0
                xor     edx, edx
                test    eax, eax
                jnz     loc_14049FB44

loc_14039795B:                          ; CODE XREF: sub_14039784C+10830A↓j
                                        ; sub_14039784C+10832C↓j ...
                mov     [rdi], rbx
                test    r14d, r14d
                jnz     loc_14049FB99

loc_140397967:                          ; CODE XREF: sub_14039784C+1082DC↓j
                                        ; sub_14039784C+10835A↓j
                mov     rbx, gs:188h
                lea     r14, [r15+18h]
                cmp     [r15+8], rbx
                jz      loc_14049FBAB
                dec     word ptr [rbx+1E6h]
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockSharedEx

loc_14039798F:                          ; CODE XREF: sub_14039784C+108362↓j
                mov     rdx, [r15+60h]
                mov     r8d, r13d
                mov     rcx, rbp
                call    sub_140397A28
                xor     r15d, r15d
                test    rbx, rbx
                jz      short loc_1403979C1
                lea     eax, [r15+11h]
                lock cmpxchg [r14], r15
                jnz     short loc_140397A08

loc_1403979B1:                          ; CODE XREF: sub_14039784C+1C4↓j
                mov     rcx, r14
                call    sub_140243660
                mov     rcx, rbx
                call    sub_140245770

loc_1403979C1:                          ; CODE XREF: sub_14039784C+158↑j
                test    rdi, rdi
                jz      short loc_1403979E1
                cmp     rdi, r12
                jz      loc_14049FBB3
                mov     r8d, esi
                lea     rcx, qword_140C4EDC0
                mov     rdx, rdi
                call    sub_14025EFB0

loc_1403979E1:                          ; CODE XREF: sub_14039784C+178↑j
                                        ; sub_14039784C+1083E3↓j
                xor     eax, eax

loc_1403979E3:                          ; CODE XREF: sub_14039784C+1BA↓j
                                        ; sub_14039784C+1082EB↓j
                mov     rbx, [rsp+48h+arg_8]
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

loc_140397A01:                          ; CODE XREF: sub_14039784C+36↑j
                                        ; sub_14039784C+44↑j ...
                mov     eax, 1
                jmp     short loc_1403979E3
; ---------------------------------------------------------------------------

loc_140397A08:                          ; CODE XREF: sub_14039784C+163↑j
                mov     rcx, r14
                call    ExfReleasePushLockShared
                jmp     short loc_1403979B1
; ---------------------------------------------------------------------------

loc_140397A12:                          ; CODE XREF: sub_14039784C+4D↑j
                cmp     word ptr [rcx+6], 3
                jz      loc_14039789F
                jmp     short loc_140397A01
sub_14039784C   endp

; ---------------------------------------------------------------------------
byte_140397A1F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009AEBC↑o
                                        ; .pdata:00000001400DCB90↑o

; =============== S U B R O U T I N E =======================================


sub_140397A28   proc near               ; CODE XREF: sub_14039784C+14D↑p
                                        ; DATA XREF: .pdata:00000001400DCB9C↑o

var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rbp, qword ptr cs:xmmword_140CFC4D0
                mov     r14, rdx
                shr     rbp, 29h
                mov     r15, rcx
                mov     ebx, r8d
                not     ebp
                and     ebp, 1
                mov     rsi, [rdx+rbx*8+38h]
                test    rsi, rsi
                jz      short loc_140397AAC
                shl     ebx, 0Ch
                cmp     word ptr [rsi+6], 3
                jz      short loc_140397AC6

loc_140397A6D:                          ; CODE XREF: sub_140397A28+CC↓j
                lea     rdi, [rsi+0Ch]
                movzx   esi, word ptr [rsi]
                add     rsi, rdi
                jmp     short loc_140397AA7
; ---------------------------------------------------------------------------

loc_140397A79:                          ; CODE XREF: sub_140397A28+82↓j
                mov     r9, cs:qword_140C4CAE8
                mov     r8, r14
                mov     [rsp+58h+var_20], ebp
                mov     edx, ebx
                and     [rsp+58h+var_28], 0
                mov     rcx, r15
                mov     [rsp+58h+var_30], 1
                mov     [rsp+58h+var_38], rdi
                call    sub_140329ACC
                add     rdi, 4

loc_140397AA7:                          ; CODE XREF: sub_140397A28+4F↑j
                cmp     rdi, rsi
                jb      short loc_140397A79

loc_140397AAC:                          ; CODE XREF: sub_140397A28+39↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140397AC6:                          ; CODE XREF: sub_140397A28+43↑j
                mov     r9, cs:qword_140C4CAE8
                lea     rax, [rsi+8]
                mov     [rsp+58h+var_20], ebp
                mov     r8, r14
                mov     [rsp+58h+var_28], 1
                mov     edx, ebx
                mov     [rsp+58h+var_30], 1
                mov     [rsp+58h+var_38], rax
                call    sub_140329ACC
                jmp     loc_140397A6D
sub_140397A28   endp

; ---------------------------------------------------------------------------
algn_140397AF9:                         ; DATA XREF: .pdata:00000001400DCB9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140397B00   proc near               ; CODE XREF: sub_140397564+1B6↑p
                                        ; sub_14052DBD4+35A↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     r9, rcx
                call    sub_140275EA0
                test    eax, eax
                jz      short loc_140397B15
                or      byte ptr [r9+23h], 20h

loc_140397B15:                          ; CODE XREF: sub_140397B00+E↑j
                inc     word ptr [r9+20h]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140397B00   endp

byte_140397B20  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400DCBA8↑o

; =============== S U B R O U T I N E =======================================


sub_140397B30   proc near               ; CODE XREF: sub_14039641C+44↑p
                                        ; sub_14039641C+67↑p ...

; FUNCTION CHUNK AT 000000014049FC34 SIZE 0000001F BYTES

                movzx   r8d, cx
                shl     r8d, 4
                movzx   eax, dx
                add     r8d, eax
                and     r8d, 0FFFFFh
                cmp     r8d, 8FFFFh
                jbe     short loc_140397B68
                lea     eax, [r8-0A0000h]
                cmp     eax, 1FFFFh
                jbe     short loc_140397B68
                mov     eax, r8d
                add     rax, cs:qword_140C4A618
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140397B68:                          ; CODE XREF: sub_140397B30+1C↑j
                                        ; sub_140397B30+2A↑j
                cmp     r8d, 0A0000h
                jnb     loc_14049FC34
                movzx   eax, r8w
                shr     r8d, 10h
                test    r8d, r8d
                jnz     short loc_140397B95
                cmp     eax, 800h
                ja      short loc_140397BB2
                lea     rcx, unk_140C4A620

loc_140397B90:                          ; CODE XREF: sub_140397B30+108111↓j
                                        ; sub_140397B30+10811E↓j
                add     rax, rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140397B95:                          ; CODE XREF: sub_140397B30+50↑j
                cmp     r8d, 1
                jz      short loc_140397BB2
                cmp     r8d, 3
                ja      short loc_140397BB2
                cmp     eax, cs:dword_140C50858
                jnb     short loc_140397BB2
                add     rax, cs:qword_140C50860
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140397BB2:                          ; CODE XREF: sub_140397B30+57↑j
                                        ; sub_140397B30+69↑j ...
                and     cs:dword_140C4A600, 0
                lea     rax, dword_140C4A600
                retn
sub_140397B30   endp

; ---------------------------------------------------------------------------
                align 2
algn_140397BC2:                         ; DATA XREF: .pdata:00000001400DCBB4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140397BC8   proc near               ; CODE XREF: sub_1403B6BF8+98↓p
                                        ; sub_1403B6BF8+ED↓p ...

var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014049FC54 SIZE 0000001F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                mov     [rax+10h], rdx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     ebx, ebx
                mov     r13, r9
                mov     rbp, r8
                mov     [rax-38h], ebx
                lea     r9, [rax-38h]
                mov     dl, 1
                mov     rdi, rcx
                lea     r8d, [rbx+0Ch]
                call    RtlImageDirectoryEntryToData
                mov     rsi, rax
                test    rax, rax
                jz      loc_140397CBD
                mov     edx, [rsp+58h+var_38]
                lea     rcx, [rax+rdx]
                lea     rax, [rdi+rbp]
                cmp     rcx, rax
                ja      loc_14049FC54
                mov     r14, [rsp+58h+arg_28]
                shr     edx, 3
                mov     ebp, edx
                shl     ebp, 2
                cmp     ebp, [r14]
                ja      short loc_140397CB6
                test    edx, edx
                jz      short loc_140397C93
                mov     rdi, [rsp+58h+arg_20]
                mov     r14, [rsp+58h+arg_8]
                mov     r12d, edx

loc_140397C4F:                          ; CODE XREF: sub_140397BC8+C1↓j
                mov     [rdi], ebx
                mov     rcx, [rsi]
                test    rcx, rcx
                jz      short loc_140397C7D
                mov     r15, rcx
                mov     eax, 80000000h
                sub     r15, r14
                mov     edx, 0FFFFFFFFh
                add     rax, r15
                cmp     rax, rdx
                ja      short loc_140397C7D
                test    r13, r13
                jnz     loc_14049FC5E

loc_140397C7A:                          ; CODE XREF: sub_140397BC8+1080A6↓j
                mov     [rdi], r15d

loc_140397C7D:                          ; CODE XREF: sub_140397BC8+8F↑j
                                        ; sub_140397BC8+A7↑j ...
                add     rsi, 8
                add     rdi, 4
                sub     r12, 1
                jnz     short loc_140397C4F
                mov     r14, [rsp+58h+arg_28]

loc_140397C93:                          ; CODE XREF: sub_140397BC8+75↑j
                                        ; sub_140397BC8+F3↓j
                mov     [r14], ebp

loc_140397C96:                          ; CODE XREF: sub_140397BC8+FF↓j
                                        ; sub_140397BC8+108091↓j
                mov     rbp, [rsp+58h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140397CB6:                          ; CODE XREF: sub_140397BC8+71↑j
                mov     ebx, 0C0000023h
                jmp     short loc_140397C93
; ---------------------------------------------------------------------------

loc_140397CBD:                          ; CODE XREF: sub_140397BC8+43↑j
                mov     rax, [rsp+58h+arg_28]
                mov     [rax], ebx
                jmp     short loc_140397C96
sub_140397BC8   endp

; ---------------------------------------------------------------------------
algn_140397CC9:                         ; DATA XREF: .rdata:000000014009AF4C↑o
                                        ; .pdata:00000001400DCBC0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140397CD0   proc near               ; CODE XREF: sub_140330BF0+C0↑p
                                        ; DATA XREF: .rdata:000000014009AF78↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049FC74 SIZE 0000003A BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], rbp
                mov     [rax+18h], r8d
                mov     [rax+8], rcx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, [rdx+0E0h]
                mov     rbp, rdx
                mov     r14, [rdx+0E8h]
                mov     r13, 7FFFFFFFFFFFFFFFh
                test    rdi, rdi
                jz      short loc_140397D89
                xor     r8d, r8d
                lea     rcx, [rdi+58h]
                lea     edx, [r8+1]
                call    RtlFindClearBitsAndSet
                mov     r15d, eax
                cmp     eax, 0FFFFFFFFh
                jz      short loc_140397D76
                mov     rbx, [rdi+0A8h]
                and     [rsp+48h+arg_10], 0

loc_140397D33:                          ; CODE XREF: sub_140397CD0+107FB7↓j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_14049FC74
                cmp     byte ptr [rdi+45h], 0
                jnz     loc_14049FC8C

loc_140397D4A:                          ; CODE XREF: sub_140397CD0+116↓j
                lock and [rbx+18h], r13
                and     dword ptr [rbp+40h], 0
                mov     rax, rdi
                mov     [rbp+0D8h], r15w

loc_140397D5E:                          ; CODE XREF: sub_140397CD0+E8↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140397D76:                          ; CODE XREF: sub_140397CD0+55↑j
                                        ; sub_140397CD0+107FC1↓j
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_140397DF8
                and     qword ptr [rbp+0E0h], 0

loc_140397D89:                          ; CODE XREF: sub_140397CD0+3D↑j
                add     r14, 38h ; '8'
                mov     rsi, [r14]

loc_140397D90:                          ; CODE XREF: sub_140397CD0+E4↓j
                cmp     rsi, r14
                jz      short loc_140397DB6
                xor     r8d, r8d
                lea     rdi, [rsi-48h]
                lea     rcx, [rdi+58h]
                lea     edx, [r8+1]
                call    RtlFindClearBitsAndSet
                mov     r15d, eax
                cmp     eax, 0FFFFFFFFh
                jnz     short loc_140397DBA

loc_140397DB1:                          ; CODE XREF: sub_140397CD0+120↓j
                mov     rsi, [rsi]
                jmp     short loc_140397D90
; ---------------------------------------------------------------------------

loc_140397DB6:                          ; CODE XREF: sub_140397CD0+C3↑j
                xor     eax, eax
                jmp     short loc_140397D5E
; ---------------------------------------------------------------------------

loc_140397DBA:                          ; CODE XREF: sub_140397CD0+DF↑j
                mov     rbx, [rdi+0A8h]
                and     [rsp+48h+arg_0], 0

loc_140397DC6:                          ; CODE XREF: sub_140397CD0+107FD9↓j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_14049FC96
                cmp     byte ptr [rdi+45h], 0
                jnz     short loc_140397DEB
                inc     dword ptr [rdi+0BCh]
                mov     [rbp+0E0h], rdi
                jmp     loc_140397D4A
; ---------------------------------------------------------------------------

loc_140397DEB:                          ; CODE XREF: sub_140397CD0+107↑j
                lock and [rbx+18h], r13
                jmp     short loc_140397DB1
sub_140397CD0   endp

; ---------------------------------------------------------------------------
algn_140397DF2:                         ; DATA XREF: .rdata:000000014009AF78↑o
                                        ; .pdata:00000001400DCBCC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140397DF8   proc near               ; CODE XREF: sub_140397CD0+AC↑p
                                        ; sub_140330BF0+146ABD↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049FCAE SIZE 000000D7 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                add     dword ptr [rcx+0BCh], 0FFFFFFFFh
                mov     rbp, rdx
                mov     rbx, rcx
                jz      short loc_140397E31

loc_140397E1B:                          ; CODE XREF: sub_140397DF8+7F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140397E31:                          ; CODE XREF: sub_140397DF8+21↑j
                add     rcx, 48h ; 'H'
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_140397E63
                mov     rdx, [rcx+8]
                cmp     [rax+8], rcx
                jnz     short loc_140397E79
                cmp     [rdx], rcx
                jnz     short loc_140397E79
                mov     [rdx], rax
                mov     [rax+8], rdx
                cmp     dword ptr [rbx+0C0h], 200h
                jnz     loc_14049FCAE

loc_140397E63:                          ; CODE XREF: sub_140397DF8+43↑j
                                        ; sub_140397DF8+107F66↓j ...
                cmp     byte ptr [rbx+44h], 0
                jnz     loc_14049FD77

loc_140397E6D:                          ; CODE XREF: sub_140397DF8+107F88↓j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_140397E1B
; ---------------------------------------------------------------------------

loc_140397E79:                          ; CODE XREF: sub_140397DF8+4D↑j
                                        ; sub_140397DF8+52↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140397DF8   endp

; ---------------------------------------------------------------------------
byte_140397E80  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009AFA0↑o
                                        ; .pdata:00000001400DCBD8↑o

; =============== S U B R O U T I N E =======================================


sub_140397E88   proc near               ; CODE XREF: sub_140392734+5C↑p
                                        ; sub_14039EC20+1AC↓p ...

var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                pushfq
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebp, r8d
                mov     rdi, rdx
                mov     rbx, rcx
                mov     r15, 0FFFFF78000000340h
                cli
                mov     esi, [rsp+38h+var_8]
                mov     rcx, r15
                shr     esi, 9
                and     sil, 1
                call    sub_140214C94
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                mov     rcx, rax
                mov     r14, rax
                call    sub_140214C20
                mov     r11, rax
                test    rbx, rbx
                jnz     loc_140397F7A

loc_140397EEA:                          ; CODE XREF: sub_140397E88+108↓j
                mov     rax, r14
                mov     ds:0FFFFF78000000348h, rax
                mov     rax, r11
                shr     rax, 20h
                mov     ds:0FFFFF7800000001Ch, eax
                mov     rax, r11
                mov     ds:0FFFFF78000000014h, rax
                test    rdi, rdi
                jz      short loc_140397F32
                mov     rax, [rdi]
                mov     ds:0FFFFF78000000358h, rax
                mov     al, [rdi+8]
                mov     ds:0FFFFF78000000368h, al

loc_140397F32:                          ; CODE XREF: sub_140397E88+8F↑j
                mov     rax, [r15]
                inc     rax
                mov     [r15], rax
                test    bpl, 1
                jnz     short loc_140397F55
                test    bpl, 4
                jnz     short loc_140397F95
                add     cs:qword_140CFC6D8, rbx
                add     cs:qword_140CFC988, rbx

loc_140397F55:                          ; CODE XREF: sub_140397E88+B7↑j
                                        ; sub_140397E88+11C↓j
                test    sil, sil
                jz      short loc_140397F5B
                sti

loc_140397F5B:                          ; CODE XREF: sub_140397E88+D0↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140397F7A:                          ; CODE XREF: sub_140397E88+5C↑j
                mov     rax, ds:0FFFFF78000000014h
                and     cs:qword_140C505A8, 0
                lea     r11, [rbx+rax]
                jmp     loc_140397EEA
; ---------------------------------------------------------------------------

loc_140397F95:                          ; CODE XREF: sub_140397E88+BD↑j
                and     cs:qword_140CFC988, 0
                mov     cs:qword_140CFC6D8, r11
                jmp     short loc_140397F55
sub_140397E88   endp

; ---------------------------------------------------------------------------
byte_140397FA6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCBE4↑o

; =============== S U B R O U T I N E =======================================


sub_140397FAC   proc near               ; CODE XREF: sub_140392734+39↑p
                                        ; sub_1403B48C4+C0↓p
                                        ; DATA XREF: ...

arg_8           = byte ptr  10h

; FUNCTION CHUNK AT 000000014049FD86 SIZE 00000028 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                mov     [rsp+28h+arg_8], 0
                mov     edx, ecx
                lea     r8, [rsp+28h+arg_8]
                mov     ecx, 989680h
                call    sub_140397FE8
                movsx   ecx, [rsp+28h+arg_8]
                test    cl, cl
                js      loc_14049FD86

loc_140397FD8:                          ; CODE XREF: sub_140397FAC+107DFD↓j
                mov     [rbx], cl
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140397FAC   endp

algn_140397FE1:                         ; DATA XREF: .rdata:000000014009AFDC↑o
                                        ; .pdata:00000001400DCBF0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140397FE8   proc near               ; CODE XREF: sub_140397FAC+1A↑p
                                        ; sub_1403B48C4+88↓p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                mov     eax, ecx
                mov     rbx, r8
                bsr     ecx, eax
                jz      short loc_14039807A
                mov     r10d, 1Fh
                sub     r10b, cl

loc_14039800A:                          ; CODE XREF: sub_140397FE8+95↓j
                add     r10b, 20h ; ' '
                mov     esi, edx
                xor     edx, edx
                mov     cl, r10b
                shl     rax, cl
                mov     r9d, 40h ; '@'
                div     rsi
                mov     r8, rax
                mov     rdi, rdx
                bsr     rax, rax
                jz      short loc_14039807F
                lea     r11d, [r9-1]
                sub     r11b, al

loc_140398034:                          ; CODE XREF: sub_140397FE8+9A↓j
                movzx   ecx, r11b
                xor     edx, edx
                shl     rdi, cl
                mov     rax, rdi
                shl     r8, cl
                div     rsi
                add     r8, rax
                lea     rax, [rdx+rdx]
                cmp     rax, rsi
                jbe     short loc_14039805D
                lea     rcx, [r8+1]
                cmp     rcx, r8
                cmova   r8, rcx

loc_14039805D:                          ; CODE XREF: sub_140397FE8+68↑j
                mov     rsi, [rsp+arg_10]
                sub     r9b, r10b
                mov     rdi, [rsp+arg_18]
                sub     r9b, r11b
                mov     [rbx], r9b
                mov     rax, r8
                mov     rbx, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039807A:                          ; CODE XREF: sub_140397FE8+17↑j
                mov     r10b, 20h ; ' '
                jmp     short loc_14039800A
; ---------------------------------------------------------------------------

loc_14039807F:                          ; CODE XREF: sub_140397FE8+43↑j
                mov     r11b, r9b
                jmp     short loc_140398034
sub_140397FE8   endp

; ---------------------------------------------------------------------------
algn_140398084:                         ; DATA XREF: .pdata:00000001400DCBFC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140398090   proc near               ; DATA XREF: .rdata:0000000140007FD0↑o
                                        ; .pdata:00000001400DCC08↑o

; FUNCTION CHUNK AT 000000014049FDAE SIZE 00000056 BYTES

                mov     eax, [rcx+6Ch]
                mov     r9d, 1
                mov     r8d, eax
                mov     rdx, rcx
                and     r8d, r9d
                shr     eax, 1
                jz      short loc_1403980E1
                sub     eax, r9d
                jz      short loc_1403980C7
                sub     eax, r9d
                jnz     short loc_1403980CC
                mov     ecx, [rcx+10h]
                shr     ecx, 6

loc_1403980B6:                          ; CODE XREF: sub_140398090+3A↓j
                                        ; sub_140398090+4F↓j ...
                and     ecx, r9d

loc_1403980B9:                          ; CODE XREF: sub_140398090+107D4D↓j
                cmp     ecx, r8d
                jz      short locret_1403980C5
                movzx   eax, word ptr [rdx+68h]
                mov     [rdx+14h], eax

locret_1403980C5:                       ; CODE XREF: sub_140398090+2C↑j
                                        ; sub_140398090+107D30↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403980C7:                          ; CODE XREF: sub_140398090+19↑j
                mov     ecx, [rcx+10h]
                jmp     short loc_1403980B6
; ---------------------------------------------------------------------------

loc_1403980CC:                          ; CODE XREF: sub_140398090+1E↑j
                sub     eax, r9d
                jnz     loc_14049FDAE
                mov     eax, [rcx+10h]
                mov     ecx, eax
                shr     ecx, 6
                or      ecx, eax
                jmp     short loc_1403980B6
; ---------------------------------------------------------------------------

loc_1403980E1:                          ; CODE XREF: sub_140398090+14↑j
                mov     ecx, [rcx+10h]
                shr     ecx, 0Bh
                jmp     short loc_1403980B6
sub_140398090   endp

; ---------------------------------------------------------------------------
algn_1403980E9:                         ; DATA XREF: .pdata:00000001400DCC08↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403980F0   proc near               ; DATA XREF: .rdata:0000000140007D70↑o
                                        ; .pdata:00000001400DCC14↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140397348
                movsx   edx, al
                movzx   eax, word ptr [rbx+14h]
                add     ax, dx
                movzx   eax, ax
                mov     [rbx+68h], eax
                mov     eax, [rbx+70h]
                and     eax, 0Fh
                mov     [rbx+6Ch], eax
                mov     eax, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403980F0   endp

byte_140398123  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCC14↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14039812C   proc near               ; CODE XREF: sub_14037AC60+70↑p
                                        ; sub_140998E50+8C↓p
                                        ; DATA XREF: ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049FE04 SIZE 000001A0 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rbp+var_30], xmm0
                mov     [rbp+var_20], rax
                mov     rbx, rcx
                call    sub_14037AED4
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+var_8], rax
                movsx   rax, byte ptr [rbx+42h]
                movups  [rbp+var_18], xmm0
                lea     rcx, [rax+rax*8]
                mov     rdi, [rbx+rcx*8+0C8h]
                cmp     byte ptr [rdi+0C4h], 0
                jz      short loc_140398190
                lea     rcx, [rdi+38h]
                call    KeCancelTimer
                test    al, al
                jz      loc_14049FE04

loc_140398190:                          ; CODE XREF: sub_14039812C+51↑j
                lea     rax, [rbp+var_40]
                mov     [rbp+var_38], rax
                lea     rax, [rbp+var_40]
                mov     [rbp+var_40], rax
                movsx   rax, byte ptr [rbx+42h]
                lea     rcx, [rax+rax*8]
                mov     rsi, [rbx+rcx*8+0C8h]
                mov     rax, [rsi+18h]
                test    rax, rax
                jz      loc_14049FE1D
                mov     rax, [rax+138h]
                mov     rcx, [rax+28h]

loc_1403981C9:                          ; CODE XREF: sub_14039812C+107CF3↓j
                cmp     dword ptr [rsi+0BCh], 1
                lea     rdx, [rbp+var_30]
                mov     edi, 108h
                lea     eax, [rdi+10h]
                cmovnz  edi, eax
                add     rdi, rcx
                lea     rcx, qword_140C23A70
                call    KeAcquireInStackQueuedSpinLock
                and     qword ptr [rdi], 0
                cmp     rbx, cs:qword_140C232C0
                jz      loc_14049FE24

loc_1403981FF:                          ; CODE XREF: sub_14039812C+107DC1↓j
                                        ; sub_14039812C+107DD2↓j
                mov     rax, [rdi+8]
                test    rax, rax
                jnz     short loc_14039827B

loc_140398208:                          ; CODE XREF: sub_14039812C+165↓j
                                        ; sub_14039812C+198↓j ...
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_20]
                test    eax, eax
                jnz     loc_14049FF3E

loc_140398223:                          ; CODE XREF: sub_14039812C+107E14↓j
                                        ; sub_14039812C+107E20↓j ...
                mov     cr8, rbx

loc_140398227:                          ; CODE XREF: sub_14039812C+1E6↓j
                mov     rdi, [rbp+var_40]
                lea     rax, [rbp+var_40]
                cmp     rdi, rax
                jnz     loc_1403982C9
                cmp     byte ptr [rsi+0B8h], 2
                jnz     short loc_14039824A
                cmp     dword ptr [rsi+0BCh], 1
                jz      short loc_140398261

loc_14039824A:                          ; CODE XREF: sub_14039812C+113↑j
                                        ; sub_14039812C+143↓j ...
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140398261:                          ; CODE XREF: sub_14039812C+11C↑j
                or      eax, 0FFFFFFFFh
                lock xadd cs:dword_140C2329C, eax
                cmp     eax, 1
                jnz     short loc_14039824A
                lea     ecx, [rax+1]
                call    sub_1402B3D80
                jmp     short loc_14039824A
; ---------------------------------------------------------------------------

loc_14039827B:                          ; CODE XREF: sub_14039812C+DA↑j
                lea     rcx, [rax+0A8h]
                mov     rdx, [rcx]
                cmp     rdx, rcx
                jnz     loc_14049FF03

loc_14039828E:                          ; CODE XREF: sub_14039812C+107E06↓j
                                        ; sub_14039812C+107E0D↓j
                test    rax, rax
                jz      loc_140398208
                mov     [rdi], rax
                lea     rcx, [rax+78h]
                mov     rax, [rcx]
                lea     rdx, [rbp+var_40]
                mov     [rdi+8], rax
                mov     rax, [rbp+var_38]
                cmp     [rax], rdx
                jnz     short loc_140398317
                mov     [rcx+8], rax
                lea     rdx, [rbp+var_40]
                mov     [rcx], rdx
                mov     [rax], rcx
                mov     [rbp+var_38], rcx
                jmp     loc_140398208
; ---------------------------------------------------------------------------

loc_1403982C9:                          ; CODE XREF: sub_14039812C+106↑j
                mov     rax, [rdi]
                lea     rcx, [rbp+var_40]
                cmp     [rdi+8], rcx
                jnz     short loc_140398317
                cmp     [rax+8], rdi
                jnz     short loc_140398317
                mov     [rbp+var_40], rax
                lea     rcx, [rbp+var_40]
                mov     [rax+8], rcx
                add     rdi, 0FFFFFFFFFFFFFF88h
                mov     rdx, rdi
                mov     rax, [rdi+0B8h]
                mov     rbx, [rax-20h]
                call    sub_140370874
                mov     rcx, rdi
                call    sub_1403984EC
                mov     rdx, rdi
                mov     rcx, rbx
                call    IofCallDriver
                jmp     loc_140398227
; ---------------------------------------------------------------------------

loc_140398317:                          ; CODE XREF: sub_14039812C+184↑j
                                        ; sub_14039812C+1A8↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14039812C   endp

; ---------------------------------------------------------------------------
byte_14039831E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009B018↑o
                                        ; .pdata:00000001400DCC20↑o

; =============== S U B R O U T I N E =======================================


sub_140398324   proc near               ; CODE XREF: sub_1403701B0+16D↑p
                                        ; sub_14099490C+13B↓p
                                        ; DATA XREF: ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049FFA4 SIZE 000000FB BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r15, [rcx+0B8h]
                xor     eax, eax
                xorps   xmm0, xmm0
                xor     r14b, r14b
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                mov     rbx, rcx
                movsx   rax, byte ptr [rcx+42h]
                lea     rdx, [rax+rax*8]
                mov     rsi, [rcx+rdx*8+0C8h]
                mov     rax, [rsi+18h]
                test    rax, rax
                jz      loc_14049FFA4
                mov     rax, [rax+138h]
                mov     rbp, [rax+28h]

loc_140398385:                          ; CODE XREF: sub_140398324+107C82↓j
                cmp     byte ptr [rsi+0B8h], 2
                mov     r12, [rsi+20h]
                jnz     short loc_14039839F
                cmp     dword ptr [rsi+0BCh], 1
                jz      loc_140398479

loc_14039839F:                          ; CODE XREF: sub_140398324+6C↑j
                                        ; sub_140398324+167↓j ...
                mov     eax, [rsi+0BCh]
                mov     edi, 108h
                cmp     eax, 1
                lea     ecx, [rdi+10h]
                cmovnz  edi, ecx
                add     rdi, rbp
                cmp     eax, 1
                jnz     short loc_1403983CE
                cmp     byte ptr [rsi+0B8h], 2
                jnz     short loc_1403983CE
                cmp     [r15-30h], eax
                jz      loc_14039849E

loc_1403983CE:                          ; CODE XREF: sub_140398324+95↑j
                                        ; sub_140398324+9E↑j ...
                and     qword ptr [rbx+78h], 0
                lea     rdx, [rsp+58h+var_38]
                lea     rcx, qword_140C23A70
                call    KeAcquireInStackQueuedSpinLock
                test    r14b, r14b
                jnz     loc_14049FFAB

loc_1403983ED:                          ; CODE XREF: sub_140398324+107CB2↓j
                mov     rax, [rdi+8]
                test    rax, rax
                jnz     loc_14049FFDB
                mov     [rdi+8], rbx
                cmp     [rdi], rax
                jnz     loc_1403984DA
                test    r14b, r14b
                jnz     loc_14049FFF6

loc_140398410:                          ; CODE XREF: sub_140398324+107D07↓j
                and     qword ptr [rdi+8], 0
                mov     [rdi], rbx

loc_140398418:                          ; CODE XREF: sub_140398324+1B8↓j
                lea     rcx, [rsp+58h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+58h+var_28]
                test    eax, eax
                jnz     loc_1404A0037

loc_140398435:                          ; CODE XREF: sub_140398324+107D15↓j
                                        ; sub_140398324+107D21↓j ...
                mov     cr8, rdi
                test    rbx, rbx
                jz      short loc_140398459
                mov     rdx, rbx
                call    sub_140370874
                mov     rcx, rbx
                call    sub_1403984EC
                mov     rdx, rbx
                mov     rcx, r12
                call    IofCallDriver

loc_140398459:                          ; CODE XREF: sub_140398324+118↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140398479:                          ; CODE XREF: sub_140398324+75↑j
                mov     eax, 1
                lock xadd cs:dword_140C2329C, eax
                inc     eax
                cmp     eax, 1
                jnz     loc_14039839F
                lea     ecx, [rax+1]
                call    sub_1402B3CF8
                jmp     loc_14039839F
; ---------------------------------------------------------------------------

loc_14039849E:                          ; CODE XREF: sub_140398324+A4↑j
                mov     esi, 0Ah
                mov     ecx, esi
                call    KeAcquireQueuedSpinLock
                mov     rdx, r12
                test    r12, r12
                jz      short loc_1403984CB

loc_1403984B2:                          ; CODE XREF: sub_140398324+1A5↓j
                test    dword ptr [rdx+30h], 4000h
                jnz     short loc_1403984E1
                mov     rcx, [rdx+138h]
                mov     rdx, [rcx+30h]
                test    rdx, rdx
                jnz     short loc_1403984B2

loc_1403984CB:                          ; CODE XREF: sub_140398324+18C↑j
                                        ; sub_140398324+1C0↓j
                mov     dl, al
                mov     rcx, rsi
                call    KeReleaseQueuedSpinLock
                jmp     loc_1403983CE
; ---------------------------------------------------------------------------

loc_1403984DA:                          ; CODE XREF: sub_140398324+DD↑j
                                        ; sub_140398324+107CCD↓j ...
                xor     ebx, ebx
                jmp     loc_140398418
; ---------------------------------------------------------------------------

loc_1403984E1:                          ; CODE XREF: sub_140398324+195↑j
                mov     r14b, 1
                jmp     short loc_1403984CB
sub_140398324   endp

; ---------------------------------------------------------------------------
byte_1403984E6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009B048↑o
                                        ; .pdata:00000001400DCC2C↑o

; =============== S U B R O U T I N E =======================================


sub_1403984EC   proc near               ; CODE XREF: sub_14039812C+1D6↑p
                                        ; sub_140398324+125↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                movsx   rax, byte ptr [rcx+42h]
                lea     rdx, [rax+rax*8]
                mov     rbx, [rcx+rdx*8+0C8h]
                mov     rcx, rbx
                call    sub_14039858C
                xor     r9d, r9d
                mov     edx, eax
                test    eax, eax
                jz      short loc_14039857E
                mov     byte ptr [rbx+0C4h], 1
                lea     r8, [rbx+78h]
                mov     dword ptr [r8], 113h
                lea     rcx, [rbx+38h]
                mov     [r8+20h], rbx
                lea     rax, sub_140565360
                mov     [r8+18h], rax
                lea     rax, [rcx+8]
                mov     [r8+38h], r9
                mov     [r8+10h], r9
                mov     [rsp+38h+var_18], r8
                xor     r8d, r8d
                mov     [rcx], r9
                imul    rdx, 0FFFFFFFFFF676980h
                mov     byte ptr [rcx], 8
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx+18h], r9
                mov     [rcx+3Ch], r9d
                mov     [rcx+38h], r9w
                call    sub_1402BE300
                mov     cl, 1
                call    sub_140212F34
                mov     [rbx+30h], rax

loc_14039857E:                          ; CODE XREF: sub_1403984EC+26↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403984EC   endp

byte_140398585  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCC38↑o

; =============== S U B R O U T I N E =======================================


sub_14039858C   proc near               ; CODE XREF: PoQueryWatchdogTime+FD↑p
                                        ; PoQueryWatchdogTime+13C↑p ...
                mov     eax, [rcx+0BCh]
                test    eax, eax
                jnz     short loc_14039859F
                cmp     dword ptr [rcx+0C0h], 1
                jz      short loc_1403985B5

loc_14039859F:                          ; CODE XREF: sub_14039858C+8↑j
                cmp     eax, 1
                jz      short loc_1403985AC

loc_1403985A4:                          ; CODE XREF: sub_14039858C+27↓j
                mov     eax, cs:dword_140CFB05C
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403985AC:                          ; CODE XREF: sub_14039858C+16↑j
                cmp     dword ptr [rcx+0C0h], 1
                jnz     short loc_1403985A4

loc_1403985B5:                          ; CODE XREF: sub_14039858C+11↑j
                mov     eax, cs:dword_140CFB11C
                retn
sub_14039858C   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403985BD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400DCC44↑o

; =============== S U B R O U T I N E =======================================


sub_1403985D0   proc near               ; DATA XREF: .rdata:0000000140007E50↑o
                                        ; .pdata:00000001400DCC50↑o

; FUNCTION CHUNK AT 00000001404A00A0 SIZE 0000003E BYTES

                mov     eax, [rcx+7Ch]
                cmp     eax, 5
                ja      short loc_1403985E6
                mov     byte ptr [rcx+8Ch], 1
                mov     [rcx+74h], eax

loc_1403985E2:                          ; CODE XREF: sub_1403985D0+22↓j
                                        ; sub_1403985D0+3B↓j ...
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403985E6:                          ; CODE XREF: sub_1403985D0+6↑j
                cmp     eax, 8
                jnz     short loc_1403985F4
                mov     byte ptr [rcx+8Ah], 1
                jmp     short loc_1403985E2
; ---------------------------------------------------------------------------

loc_1403985F4:                          ; CODE XREF: sub_1403985D0+19↑j
                cmp     eax, 9
                jnz     loc_1404A00A0
                mov     byte ptr [rcx+8Bh], 1
                mov     byte ptr [rcx+8Dh], 1
                jmp     short loc_1403985E2
sub_1403985D0   endp

; ---------------------------------------------------------------------------
byte_14039860D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCC50↑o

; =============== S U B R O U T I N E =======================================


sub_140398614   proc near               ; CODE XREF: IofCallDriver+68↑p
                                        ; sub_140370814+11EBE1↓p
                                        ; DATA XREF: ...

arg_8           = dword ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                lea     rdx, [rsp+28h+arg_8]
                mov     rbx, rcx
                call    sub_140398664
                test    al, al
                jnz     short loc_140398656
                mov     rax, [rbx+0B8h]
                mov     rcx, [rax+28h]
                movzx   eax, byte ptr [rax]
                mov     rdx, [rcx+8]
                mov     rax, [rdx+rax*8+70h]
                mov     rdx, rbx
                call    sub_1404079D0

loc_14039864F:                          ; CODE XREF: sub_140398614+46↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140398656:                          ; CODE XREF: sub_140398614+1A↑j
                mov     eax, [rsp+28h+arg_8]
                jmp     short loc_14039864F
sub_140398614   endp

; ---------------------------------------------------------------------------
byte_14039865C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCC5C↑o

; =============== S U B R O U T I N E =======================================


sub_140398664   proc near               ; CODE XREF: sub_140398614+13↑p
                                        ; DATA XREF: .rdata:000000014009B074↑o ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A00DE SIZE 00000083 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r15, [rcx+0B8h]
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     r14, rdx
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                mov     rbx, rcx
                movsx   rax, byte ptr [rcx+42h]
                mov     rbp, [r15+28h]
                lea     r8, [rax+rax*8]
                mov     rax, [rcx+r8*8+0C8h]
                mov     r8, [rax+28h]
                test    r8, r8
                jz      short loc_14039870D
                mov     dl, [rax+0B8h]
                call    sub_14037D264
                lea     rdi, [rbp+30h]
                mov     eax, [rdi]
                mov     rcx, rdi
                bt      eax, 0Fh
                jb      short loc_140398711
                bt      eax, 0Dh
                jb      loc_14039876E

loc_1403986D9:                          ; CODE XREF: sub_140398664+110↓j
                xor     sil, sil

loc_1403986DC:                          ; CODE XREF: sub_140398664+B9↓j
                mov     dl, [r15+1]
                mov     r8, rbp
                mov     rcx, rbx
                call    sub_14037CB34
                test    sil, sil
                jnz     short loc_14039871F

loc_1403986F0:                          ; CODE XREF: sub_140398664+108↓j
                                        ; sub_140398664+107A91↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+58h+arg_10]
                mov     rbp, [rsp+58h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039870D:                          ; CODE XREF: sub_140398664+4F↑j
                lea     rcx, [rbp+30h]

loc_140398711:                          ; CODE XREF: sub_140398664+69↑j
                                        ; sub_140398664+116↓j
                test    dword ptr [rcx], 8000h
                mov     rdi, rcx
                mov     sil, 1
                jnz     short loc_1403986DC

loc_14039871F:                          ; CODE XREF: sub_140398664+8A↑j
                test    dword ptr [rdi], 8000h
                jnz     loc_1404A00DE
                lea     rdx, [rsp+58h+var_38]
                lea     rcx, qword_140C23A70
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rbx
                call    sub_140398784
                lea     rcx, [rsp+58h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+58h+var_28]
                test    eax, eax
                jnz     loc_1404A00FA

loc_140398761:                          ; CODE XREF: sub_140398664+107A98↓j
                                        ; sub_140398664+107AA4↓j ...
                mov     cr8, rbx
                mov     dword ptr [r14], 103h
                jmp     short loc_1403986F0
; ---------------------------------------------------------------------------

loc_14039876E:                          ; CODE XREF: sub_140398664+6F↑j
                mov     rax, cr8
                cmp     al, 2
                jnz     loc_1403986D9
                jmp     short loc_140398711
sub_140398664   endp

; ---------------------------------------------------------------------------
byte_14039877C  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009B074↑o
                                        ; .pdata:00000001400DCC68↑o

; =============== S U B R O U T I N E =======================================


sub_140398784   proc near               ; CODE XREF: sub_140398664+DB↑p
                                        ; DATA XREF: .rdata:000000014009B090↑o ...

var_18          = dword ptr -18h

; FUNCTION CHUNK AT 00000001404A0162 SIZE 0000002B BYTES

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                mov     edx, 72496F50h
                mov     rcx, [rcx+0B8h]
                or      byte ptr [rcx+3], 1
                mov     rcx, [rcx+28h]
                call    ObfReferenceObjectWithTag
                cmp     rbx, cs:qword_140C232C0
                lea     rax, [rbx+0A8h]
                lea     rcx, qword_140C232D0
                jz      loc_1404A0162
                mov     rdx, cs:qword_140C232D8
                cmp     [rdx], rcx
                jnz     loc_1404A0186
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     cs:qword_140C232D8, rax

loc_1403987E2:                          ; CODE XREF: sub_140398784+1079FD↓j
                and     [rsp+38h+var_18], 0
                lea     rcx, byte_140C232A0
                xor     edx, edx
                lea     r8d, [rdx+1]
                call    sub_1402CBA10
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140398784   endp

byte_140398800  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009B090↑o
                                        ; .pdata:00000001400DCC74↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=10h

sub_140398808   proc near               ; CODE XREF: sub_14037CB34+29↑p
                                        ; DATA XREF: .pdata:00000001400DCC80↑o

var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_90          = byte ptr -90h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = byte ptr  10h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], rdi
                mov     [rax+8], rcx
                push    rbp
                lea     rbp, [rax-18h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+10h+var_10], rax
                xor     edi, edi
                mov     [rsp+110h+var_D0], rdx
                cmp     cs:byte_140C542E6, dil
                mov     rbx, rdx
                jz      loc_140398902
                mov     rcx, cs:qword_140C22BE0
                lea     rdx, qword_14000CD00
                call    EtwEventEnabled
                test    al, al
                jz      loc_140398902
                lea     rdx, [rbp+10h+var_90]
                mov     rcx, rbx
                call    sub_140388C6C
                test    eax, eax
                mov     [rsp+110h+var_C0], 8
                mov     ecx, edi
                mov     [rsp+110h+var_B0], 8
                setns   cl
                lea     rax, qword_140413790
                test    ecx, ecx
                lea     rdx, [rbp+10h+var_90]
                cmovz   rdx, rax
                lea     rax, [rbp+10h+arg_0]
                mov     [rsp+110h+var_C8], rax
                lea     rax, [rsp+110h+var_D0]
                mov     [rsp+110h+var_B8], rax
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     qword ptr [rsp+110h+var_A8], rdx

loc_1403988B5:                          ; CODE XREF: sub_140398808+B4↓j
                inc     rax
                cmp     [rdx+rax*2], di
                jnz     short loc_1403988B5
                mov     rcx, cs:qword_140C22BE0
                lea     eax, ds:2[rax*2]
                mov     [rsp+110h+var_A0], eax
                lea     rdx, qword_14000CD00
                lea     rax, [rsp+110h+var_C8]
                mov     [rsp+110h+var_9C], edi
                mov     [rsp+110h+var_D8], rax
                xor     r9d, r9d
                mov     dword ptr [rsp+110h+var_E0], 3
                xor     r8d, r8d
                mov     qword ptr [rsp+110h+var_E8], rdi
                mov     [rsp+110h+var_F0], rdi
                call    EtwWriteEx

loc_140398902:                          ; CODE XREF: sub_140398808+3A↑j
                                        ; sub_140398808+55↑j
                mov     rcx, [rbp+10h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+110h+var_s0]
                mov     rbx, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140398808
sub_140398808   endp

algn_140398924:                         ; DATA XREF: .pdata:00000001400DCC80↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140398930   proc near               ; DATA XREF: .rdata:0000000140008840↑o
                                        ; .rdata:0000000140008878↑o ...

var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = word ptr -0E0h
var_D8          = word ptr -0D8h
var_D6          = dword ptr -0D6h
var_D2          = word ptr -0D2h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = byte ptr -0C0h
var_20          = qword ptr -20h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 00000001404A018E SIZE 0000002A BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                xor     ebx, ebx
                mov     [rbp+57h+var_D0], 140001h
                xor     edx, edx
                mov     [rbp+57h+var_D6], ebx
                mov     r8d, 98h
                mov     [rbp+57h+var_D2], bx
                lea     rcx, [rbp+57h+var_C0]
                mov     dword ptr [rsp+110h+var_F0], ebx
                lea     r15d, [rbx+1]
                mov     [rbp+57h+var_C8], rbx
                call    memset
                mov     rdi, cs:qword_140CFC4F0
                lea     r12, qword_140CFC4F0

loc_14039899D:                          ; CODE XREF: sub_140398930+81↓j
                cmp     rdi, r12
                jz      short loc_1403989B3
                cmp     [rdi+2FEh], bl
                jnz     loc_140398A6F

loc_1403989AE:                          ; CODE XREF: sub_140398930+190↓j
                mov     rdi, [rdi]
                jmp     short loc_14039899D
; ---------------------------------------------------------------------------

loc_1403989B3:                          ; CODE XREF: sub_140398930+70↑j
                mov     rax, [rbp+57h+var_C8]
                mov     qword ptr [rsp+110h+var_E0], rax
                lea     rax, [rbp+57h+var_D0]
                mov     [rsp+110h+var_E8], rax
                mov     [rsp+110h+var_D8], bx

loc_1403989CA:                          ; CODE XREF: sub_140398930+D5↓j
                                        ; sub_140398930+E4↓j ...
                lea     rdx, [rsp+110h+var_E8]
                lea     rcx, [rsp+110h+var_F0]
                call    KeEnumerateNextProcessor
                test    eax, eax
                jnz     short loc_140398A16
                mov     ecx, dword ptr [rsp+110h+var_F0]
                call    sub_14023DAD0
                mov     rdi, rax
                mov     rsi, [rax+8170h]
                cmp     [rsi+7Ch], bl
                jnz     loc_140398AF8

loc_1403989F9:                          ; CODE XREF: sub_140398930+1DE↓j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140398B1C
                test    al, al
                jz      short loc_1403989CA
                mov     edx, dword ptr [rsp+110h+var_F0]
                lea     rcx, [rbp+57h+var_D0]
                call    KeRemoveProcessorAffinityEx
                jmp     short loc_1403989CA
; ---------------------------------------------------------------------------

loc_140398A16:                          ; CODE XREF: sub_140398930+AB↑j
                lea     rcx, [rbp+57h+var_D0]
                call    KeCountSetBitsAffinityEx
                mov     cs:dword_140C20F10, eax
                test    eax, eax
                jz      loc_140398AC5
                mov     rax, [rbp+57h+var_C8]
                mov     qword ptr [rsp+110h+var_E0], rax
                lea     rax, [rbp+57h+var_D0]
                mov     [rsp+110h+var_E8], rax
                mov     [rsp+110h+var_D8], bx

loc_140398A44:                          ; CODE XREF: sub_140398930+13D↓j
                lea     rdx, [rsp+110h+var_E8]
                lea     rcx, [rsp+110h+var_F0]
                call    KeEnumerateNextProcessor
                test    eax, eax
                jnz     short loc_140398AC8
                mov     ecx, dword ptr [rsp+110h+var_F0]
                call    sub_14023DAD0
                mov     edx, 2
                mov     rcx, rax
                call    sub_1403990AC
                jmp     short loc_140398A44
; ---------------------------------------------------------------------------

loc_140398A6F:                          ; CODE XREF: sub_140398930+78↑j
                lea     rcx, [rdi+18h]
                lea     r8, [rbp+57h+var_D0]
                lea     rdx, [rbp+57h+var_D0]
                call    KeOrAffinityEx
                mov     dword ptr [rsp+110h+var_F0], ebx
                cmp     [rdi+0C8h], ebx
                jbe     short loc_140398ABA
                mov     r14d, ebx

loc_140398A8F:                          ; CODE XREF: sub_140398930+183↓j
                mov     eax, r14d
                imul    rsi, rax, 88h
                add     rsi, [rdi+0D8h]
                cmp     [rsi+10h], ebx
                jnz     loc_1404A018E

loc_140398AA9:                          ; CODE XREF: sub_140398930+107883↓j
                inc     r14d
                cmp     r14d, [rdi+0C8h]
                jb      short loc_140398A8F
                mov     dword ptr [rsp+110h+var_F0], r14d

loc_140398ABA:                          ; CODE XREF: sub_140398930+15A↑j
                mov     [rdi+2FEh], bl
                jmp     loc_1403989AE
; ---------------------------------------------------------------------------

loc_140398AC5:                          ; CODE XREF: sub_140398930+F7↑j
                mov     bl, r15b

loc_140398AC8:                          ; CODE XREF: sub_140398930+125↑j
                mov     al, bl
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+110h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140398AF8:                          ; CODE XREF: sub_140398930+C3↑j
                mov     dl, r15b
                mov     rcx, rdi
                call    sub_140398B1C
                test    al, al
                jz      loc_1403989CA
                mov     [rsi+7Ch], bl
                jmp     loc_1403989F9
; } // starts at 140398930
sub_140398930   endp

; ---------------------------------------------------------------------------
byte_140398B13  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009B120↑o
                                        ; .pdata:00000001400DCC8C↑o

; =============== S U B R O U T I N E =======================================


sub_140398B1C   proc near               ; CODE XREF: sub_1402526C0+82↑p
                                        ; sub_1402526C0+92↑p ...

var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A01B8 SIZE 000000A5 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                mov     [rsp+arg_8], dl
                pushfq
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbp, [rcx+8170h]
                lea     r13, [rcx+8168h]
                mov     rsi, [r13+0]
                mov     rdi, rcx
                xor     r14d, r14d
                mov     [rsp+68h+arg_0], rbp
                mov     bl, dl
                mov     r12d, 1
                mov     rcx, [rsi+10h]
                cmp     r13, rcx
                jnz     loc_140398C51

loc_140398B6C:                          ; CODE XREF: sub_140398B1C+13F↓j
                mov     r15b, r12b

loc_140398B6F:                          ; CODE XREF: sub_140398B1C+145↓j
                cmp     byte ptr [rsi+161h], 0FDh
                jz      short loc_140398B82
                test    dl, dl
                movzx   r15d, r15b
                cmovnz  r15d, r12d

loc_140398B82:                          ; CODE XREF: sub_140398B1C+5A↑j
                mov     rax, gs:20h
                cmp     rdi, rax
                jnz     loc_140398C47

loc_140398B94:                          ; CODE XREF: sub_140398B1C+14D↓j
                                        ; sub_140398B1C+15C↓j
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                mov     rdx, rax
                mov     rcx, rdi
                mov     rax, gs:20h
                cmp     rax, rdi
                jnz     loc_1404A01B8
                call    sub_140343370

loc_140398BB8:                          ; CODE XREF: sub_140398B1C+1076ED↓j
                cmp     byte ptr [rbp+7Dh], 0
                lea     r14, [rbp+80h]
                jnz     loc_1404A020E
                xor     r12b, r12b
                xor     bpl, bpl

loc_140398BCF:                          ; CODE XREF: sub_140398B1C+107706↓j
                mov     r8b, bl
                mov     dl, r15b
                mov     rcx, rdi
                call    sub_140398C84
                mov     bl, al
                test    r12b, r12b
                jnz     loc_1404A0227

loc_140398BE8:                          ; CODE XREF: sub_140398B1C+107716↓j
                                        ; sub_140398B1C+10771D↓j
                test    bl, bl
                jz      short loc_140398C28
                mov     bpl, [rsp+68h+arg_8]
                cmp     r13, [rsi+10h]
                jnz     short loc_140398C07
                mov     rax, [rsi+130h]
                test    rax, rax
                jnz     loc_1404A023E

loc_140398C07:                          ; CODE XREF: sub_140398B1C+D9↑j
                                        ; sub_140398B1C+10773C↓j
                test    bpl, bpl
                jnz     short loc_140398C28
                mov     rcx, rdi
                call    sub_140399014
                lea     rcx, [rdi+8000h]
                call    sub_140398FF4
                mov     rcx, r13
                call    sub_140398F08

loc_140398C28:                          ; CODE XREF: sub_140398B1C+CE↑j
                                        ; sub_140398B1C+EE↑j ...
                lea     r11, [rsp+68h+var_38]
                mov     al, bl
                mov     rbx, [r11+50h]
                mov     rbp, [r11+58h]
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

loc_140398C47:                          ; CODE XREF: sub_140398B1C+72↑j
                cmp     r13, rcx
                jnz     short loc_140398C66

loc_140398C4C:                          ; CODE XREF: sub_140398B1C+15A↓j
                                        ; sub_140398B1C+1076A7↓j ...
                mov     bl, r14b
                jmp     short loc_140398C28
; ---------------------------------------------------------------------------

loc_140398C51:                          ; CODE XREF: sub_140398B1C+4A↑j
                mov     r15b, r14b
                cmp     [rsi+166h], r14b
                jnz     loc_140398B6C
                jmp     loc_140398B6F
; ---------------------------------------------------------------------------

loc_140398C66:                          ; CODE XREF: sub_140398B1C+12E↑j
                test    r15b, r15b
                jz      loc_140398B94
                cmp     [rsi+163h], r14b
                jnz     short loc_140398C4C
                jmp     loc_140398B94
sub_140398B1C   endp

; ---------------------------------------------------------------------------
byte_140398C7D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014009B150↑o
                                        ; .pdata:00000001400DCC98↑o

; =============== S U B R O U T I N E =======================================


sub_140398C84   proc near               ; CODE XREF: sub_140254310+543↑p
                                        ; sub_140398B1C+BC↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A025E SIZE 000000EC BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r10, [rcx+8170h]
                lea     r11, [rcx+8168h]
                mov     r14, [r11]
                mov     r13b, r8b
                mov     r9b, r8b
                mov     r15b, dl
                xor     r8d, r8d
                mov     rbx, rcx
                cmp     cs:byte_140CFC454, r8b
                mov     edi, 1
                mov     sil, r8b
                jnz     loc_1404A025E
                mov     ebp, r8d

loc_140398CD8:                          ; CODE XREF: sub_140398C84+1075E0↓j
                mov     edx, [r14+224h]
                cmp     ebp, [rcx+81F4h]
                jnz     loc_1404A0269
                lea     rcx, [r10+68h]
                cmp     [rcx], edx
                jz      short loc_140398D00
                test    ebp, ebp
                jnz     loc_1404A02B2

loc_140398CFB:                          ; CODE XREF: sub_140398C84+107648↓j
                mov     [rcx], edx
                mov     r9b, dil

loc_140398D00:                          ; CODE XREF: sub_140398C84+6D↑j
                                        ; sub_140398C84+107629↓j
                test    r9b, r9b
                jz      loc_140398D92
                test    r13b, r13b
                jnz     loc_140398DCB

loc_140398D12:                          ; CODE XREF: sub_140398C84+14A↓j
                lea     rdx, [r10+40h]
                movsxd  r12, ebp
                mov     eax, [rdx+8]
                mov     r9b, r13b
                mov     [r10+70h], eax
                mov     r8b, r15b
                mov     eax, [rdx+0Ch]
                mov     [r10+6Ch], eax
                lea     rax, [r12+r12*4]
                movups  xmm0, xmmword ptr [r14+rax*8+228h]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [r14+rax*8+238h]
                movups  xmmword ptr [rdx+10h], xmm1
                movsd   xmm0, qword ptr [r14+rax*8+248h]
                movsd   qword ptr [rdx+20h], xmm0
                mov     rax, [r14+120h]
                mov     rcx, [r10+8]
                call    sub_1404079D0
                xor     eax, eax
                cmp     cs:dword_140CFC4E8, eax
                jnz     loc_1404A02D1

loc_140398D77:                          ; CODE XREF: sub_140398C84+107662↓j
                                        ; sub_140398C84+1076C1↓j
                mov     edx, ebp
                mov     rcx, rbx
                call    sub_140398DDC
                test    r13b, r13b
                movzx   esi, sil
                lea     r11, [rbx+8168h]
                cmovz   esi, edi

loc_140398D92:                          ; CODE XREF: sub_140398C84+7F↑j
                test    sil, sil
                jz      short loc_140398DAA
                mov     r8d, [rbx+81F4h]
                mov     rcx, r11
                movzx   edx, r15b
                call    sub_140398E68

loc_140398DAA:                          ; CODE XREF: sub_140398C84+111↑j
                                        ; sub_140398C84+1075FF↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     al, dil
                mov     rbp, [rsp+58h+arg_8]
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

loc_140398DCB:                          ; CODE XREF: sub_140398C84+88↑j
                mov     [rcx], r8d
                jmp     loc_140398D12
sub_140398C84   endp

; ---------------------------------------------------------------------------
byte_140398DD3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009B180↑o
                                        ; .pdata:00000001400DCCA4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140398DDC   proc near               ; CODE XREF: sub_140398C84+F8↑p
                                        ; DATA XREF: .rdata:000000014009B1AC↑o ...

var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A034A SIZE 00000099 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     edi, edx
                mov     r9, rcx
                call    sub_140398E34
                test    al, al
                jnz     loc_1404A034A

loc_140398E0E:                          ; CODE XREF: sub_140398DDC+1075FB↓j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140398DDC
sub_140398DDC   endp

byte_140398E2B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009B1AC↑o
                                        ; .pdata:00000001400DCCB0↑o

; =============== S U B R O U T I N E =======================================


sub_140398E34   proc near               ; CODE XREF: KeClockInterruptNotify+4FB↑p
                                        ; sub_1402CD820+A6↑p ...
                mov     eax, cs:dword_140CFC58C
                mov     cl, 1
                test    cl, al
                jnz     short loc_140398E5B
                test    cs:dword_140CFC450, 800h
                jz      short loc_140398E55
                cmp     cs:dword_140CFC580, 0
                jnz     short loc_140398E57

loc_140398E55:                          ; CODE XREF: sub_140398E34+16↑j
                xor     cl, cl

loc_140398E57:                          ; CODE XREF: sub_140398E34+1F↑j
                mov     al, cl
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140398E5B:                          ; CODE XREF: sub_140398E34+A↑j
                shr     eax, 1
                and     al, cl
                retn
sub_140398E34   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140398E61:                         ; DATA XREF: .pdata:00000001400DCCBC↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=40h

sub_140398E68   proc near               ; CODE XREF: sub_140398C84+121↑p
                                        ; sub_14056E96C+AC↓p
                                        ; DATA XREF: ...

var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = dword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = dword ptr -0F8h
var_F4          = dword ptr -0F4h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = byte ptr -0D0h
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
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404A03E4 SIZE 00000104 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], r8d
                mov     [rsp-8+arg_8], edx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-20h]
                sub     rsp, 120h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+40h+var_30], rax
                lea     rax, [rsp+140h+var_D0]
                xor     r14d, r14d
                lea     r9, [rsp+140h+var_100]
                mov     [rsp+140h+var_100], r14d
                lea     r8, byte_14000CD20
                mov     [rsp+140h+var_120], rax
                lea     rdx, qword_14000CD10
                mov     rsi, rcx
                call    sub_140398FAC
                cmp     cs:byte_140C54300, r14b
                mov     rdi, rax
                jz      short loc_140398EE4
                mov     rbx, cs:qword_140C20550
                mov     rdx, rax
                mov     rcx, rbx
                call    EtwEventEnabled
                test    al, al
                jnz     loc_1404A03E4

loc_140398EE4:                          ; CODE XREF: sub_140398E68+60↑j
                                        ; sub_140398E68+10767B↓j
                mov     rcx, [rbp+40h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 120h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140398E68
sub_140398E68   endp

byte_140398EFF  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009B1DC↑o
                                        ; .pdata:00000001400DCCC8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140398F08   proc near               ; CODE XREF: sub_140398B1C+107↑p
                                        ; DATA XREF: .rdata:000000014009B210↑o ...

var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = byte ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 00000001404A04E8 SIZE 000000F3 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                and     [rbp+57h+var_8C], 0
                lea     rax, [rbp+57h+var_20]
                lea     r9, [rbp+57h+var_8C]
                mov     [rsp+0D0h+var_B0], rax
                lea     r8, qword_14000CD40
                mov     rbx, rcx
                lea     rdx, qword_14000CD30
                call    sub_140398FAC
                cmp     cs:byte_140C54300, 0
                mov     rsi, rax
                jz      short loc_140398F7E
                mov     rdi, cs:qword_140C20550
                mov     rdx, rax
                mov     rcx, rdi
                call    EtwEventEnabled
                test    al, al
                jnz     loc_1404A04E8

loc_140398F7E:                          ; CODE XREF: sub_140398F08+5A↑j
                                        ; sub_140398F08+1076CE↓j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140398F08
sub_140398F08   endp

byte_140398FA4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009B210↑o
                                        ; .pdata:00000001400DCCD4↑o

; =============== S U B R O U T I N E =======================================


sub_140398FAC   proc near               ; CODE XREF: sub_140392CB0+3E↑p
                                        ; sub_140398E68+51↑p ...

arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404A05DC SIZE 00000014 BYTES

                cmp     byte ptr [rcx+3Ch], 0
                mov     r10, r8
                mov     r8, [rsp+arg_20]
                jz      loc_1404A05DC
                movzx   eax, byte ptr [rcx-8098h]
                mov     r10, rdx
                mov     [r9], ax
                mov     al, [rcx-8097h]
                mov     [r9+2], al
                mov     eax, 3

loc_140398FDB:                          ; CODE XREF: sub_140398FAC+10763F↓j
                mov     [r8], r9
                mov     [r8+8], eax
                mov     rax, r10
                and     dword ptr [r8+0Ch], 0
                retn
sub_140398FAC   endp

; ---------------------------------------------------------------------------
                align 4
byte_140398FEC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCCE0↑o

; =============== S U B R O U T I N E =======================================


sub_140398FF4   proc near               ; CODE XREF: sub_140398B1C+FF↑p
                                        ; sub_1403C49A8+17↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001404A05F0 SIZE 00000091 BYTES

                push    rbx
                sub     rsp, 20h
                cmp     byte ptr [rcx+3Ch], 0
                mov     r9, rcx
                jnz     loc_1404A05F0

loc_140399007:                          ; CODE XREF: sub_140398FF4+107606↓j
                                        ; sub_140398FF4+107616↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140398FF4   endp

byte_14039900E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009B22C↑o
                                        ; .pdata:00000001400DCCEC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140399014   proc near               ; CODE XREF: sub_140398B1C+F3↑p
                                        ; DATA XREF: .rdata:000000014009B25C↑o ...

var_60          = dword ptr -60h
var_50          = dword ptr -50h
var_4C          = qword ptr -4Ch
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404A0682 SIZE 000000A5 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     r8, [rcx+8170h]
                xor     eax, eax
                test    dword ptr cs:xmmword_140CFC490, 8000h
                xorps   xmm0, xmm0
                mov     rdx, [rcx+8168h]
                mov     rbx, rcx
                movups  [rbp+var_38], xmm0
                mov     [rbp+var_28], rax
                mov     esi, [r8+40h]
                mov     edi, [r8+4Ch]
                jnz     loc_1404A0682

loc_140399072:                          ; CODE XREF: sub_140399014+1076DA↓j
                mov     eax, cs:dword_140CED2D0
                test    eax, eax
                jnz     loc_1404A06F3

loc_140399080:                          ; CODE XREF: sub_140399014+10770E↓j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140399014
sub_140399014   endp

byte_1403990A6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009B25C↑o
                                        ; .pdata:00000001400DCCF8↑o

; =============== S U B R O U T I N E =======================================


sub_1403990AC   proc near               ; CODE XREF: sub_140398930+138↑p
                                        ; sub_14033E780+13DB9B↓p ...

var_18          = byte ptr -18h

                sub     rsp, 38h
                mov     r8, rcx
                mov     r9d, 1
                mov     ecx, edx
                shl     r9d, cl
                prefetchw byte ptr [r8+8150h]
                mov     eax, [r8+8150h]

loc_1403990CD:                          ; CODE XREF: sub_1403990AC+2F↓j
                mov     edx, eax
                or      edx, r9d
                lock cmpxchg [r8+8150h], edx
                jnz     short loc_1403990CD
                test    eax, eax
                jnz     short loc_1403990F9
                lea     rcx, [r8+8110h]
                mov     [rsp+38h+var_18], al
                xor     r8d, r8d
                xor     r9d, r9d
                xor     edx, edx
                call    sub_140251CB0

loc_1403990F9:                          ; CODE XREF: sub_1403990AC+33↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403990AC   endp

byte_1403990FF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCD04↑o

; =============== S U B R O U T I N E =======================================


sub_140399108   proc near               ; CODE XREF: sub_1402FDB0C+1F0↑p
                                        ; DATA XREF: .rdata:000000014009B2BC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 00000001404A0728 SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     r10, [rcx+0A8h]
                mov     rdi, rdx
                mov     rbx, rcx
                test    r10, r10
                jz      loc_1403991DD
                mov     eax, [r10+8]
                mov     ebp, 1
                add     [r10+4], ebp
                mov     edx, [r10]
                cmp     eax, edx
                jnb     loc_1404A0728

loc_14039914A:                          ; CODE XREF: sub_140399108+10762E↓j
                mov     r11d, eax
                mov     edx, 0FFFFFFFEh
                shl     r11, 4
                mov     rsi, 100000000h
                add     r11, r10
                mov     ecx, edi
                and     ecx, edx
                mov     eax, edi
                or      eax, ebp
                cmp     rdi, rsi
                cmovb   eax, ecx
                mov     ecx, r8d
                mov     [r11], eax
                and     ecx, edx
                mov     [r11+8], r9w
                mov     eax, r8d
                or      eax, ebp
                cmp     r8, rsi
                cmovb   eax, ecx
                mov     [r11+4], eax
                movzx   eax, word ptr [rbx+1Ch]
                mov     [r11+0Ah], ax
                mov     al, [rsp+28h+arg_20]
                mov     [r11+0Ch], al
                mov     byte ptr [r11+0Dh], 0
                mov     [r11+0Eh], bp
                mov     ebx, [r10+8]
                cmp     ebx, ebp
                jz      short loc_1403991F3
                lea     rdx, [r11-10h]
                mov     rcx, r11
                call    sub_140399208
                test    eax, eax
                jz      short loc_1403991F3
                movzx   eax, word ptr [r11-2]
                mov     ecx, 0FFFFh
                cmp     ax, cx
                jz      short loc_1403991F3
                add     cs:dword_140C2A100, ebp
                add     ax, bp
                mov     [r11-2], ax

loc_1403991DD:                          ; CODE XREF: sub_140399108+24↑j
                                        ; sub_140399108+F8↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403991F3:                          ; CODE XREF: sub_140399108+A6↑j
                                        ; sub_140399108+B6↑j ...
                add     cs:dword_140C2A104, ebp
                lea     eax, [rbx+1]
                mov     [r10+8], eax
                jmp     short loc_1403991DD
sub_140399108   endp

; ---------------------------------------------------------------------------
algn_140399202:                         ; DATA XREF: .rdata:000000014009B2BC↑o
                                        ; .pdata:00000001400DCD10↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140399208   proc near               ; CODE XREF: sub_140399108+AF↑p
                                        ; DATA XREF: .pdata:00000001400DCD1C↑o
                movzx   eax, word ptr [rdx+8]
                cmp     [rcx+8], ax
                jnz     short loc_140399265
                movzx   eax, word ptr [rdx+0Ah]
                cmp     [rcx+0Ah], ax
                jnz     short loc_140399265
                mov     al, [rdx+0Ch]
                mov     r8b, 4
                cmp     [rcx+0Ch], r8b
                jbe     short loc_140399260
                cmp     al, r8b
                jbe     short loc_140399265

loc_14039922D:                          ; CODE XREF: sub_140399208+5B↓j
                mov     r9d, [rcx]
                test    r9b, 1
                jnz     short loc_140399265
                mov     r8d, [rdx]
                test    r8b, 1
                jnz     short loc_140399265
                mov     eax, 0CCCCCCCDh
                cmp     r9d, r8d
                jb      short loc_140399269
                mov     ecx, r9d
                sub     ecx, r8d
                mul     r9d

loc_140399252:                          ; CODE XREF: sub_140399208+6A↓j
                shr     edx, 3
                cmp     ecx, edx
                ja      short loc_140399265
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140399260:                          ; CODE XREF: sub_140399208+1E↑j
                cmp     al, r8b
                jbe     short loc_14039922D

loc_140399265:                          ; CODE XREF: sub_140399208+8↑j
                                        ; sub_140399208+12↑j ...
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140399269:                          ; CODE XREF: sub_140399208+3F↑j
                mov     ecx, r8d
                sub     ecx, r9d
                mul     r8d
                jmp     short loc_140399252
sub_140399208   endp

; ---------------------------------------------------------------------------
byte_140399274  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCD1C↑o

; =============== S U B R O U T I N E =======================================


sub_14039927C   proc near               ; CODE XREF: sub_14037D264+22↑p
                                        ; DATA XREF: .pdata:00000001400DCD28↑o

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_18], rax
                cmp     cs:byte_140C542E6, 0
                jz      short loc_140399321
                mov     rbx, cs:qword_140C22BE0
                lea     rdx, qword_14000CD50
                mov     rcx, rbx
                call    EtwEventEnabled
                test    al, al
                jz      short loc_140399321
                and     [rsp+78h+var_2C], 0
                lea     rax, [rsp+78h+arg_0]
                and     [rsp+78h+var_1C], 0
                lea     rdx, qword_14000CD50
                mov     [rsp+78h+var_38], rax
                mov     ecx, 8
                lea     rax, [rsp+78h+arg_8]
                mov     [rsp+78h+var_30], ecx
                mov     [rsp+78h+var_28], rax
                xor     r9d, r9d
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_20], ecx
                mov     [rsp+78h+var_40], rax
                xor     r8d, r8d
                mov     [rsp+78h+var_48], 2
                mov     rcx, rbx
                and     [rsp+78h+var_50], 0
                and     [rsp+78h+var_58], 0
                call    EtwWriteEx

loc_140399321:                          ; CODE XREF: sub_14039927C+25↑j
                                        ; sub_14039927C+3F↑j
                mov     rcx, [rsp+78h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 70h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14039927C
sub_14039927C   endp

algn_140399335:                         ; DATA XREF: .pdata:00000001400DCD28↑o
                align 20h
; Exported entry 1021. IoTransferActivityId

; =============== S U B R O U T I N E =======================================



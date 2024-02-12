KeSetTimer2     proc near               ; CODE XREF: sub_1402AF7BC+5F↑p
                                        ; ExSetTimer+61↓p ...

arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044E1D2 SIZE 000001F0 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 28h
                mov     [rsp+68h+arg_18], 0
                mov     rbp, r9
                mov     [rsp+68h+arg_0], 0
                mov     r15, r8
                mov     rsi, rdx
                mov     rbx, rcx
                test    r8, r8
                jnz     loc_1402AFAD1

loc_1402AF897:                          ; CODE XREF: KeSetTimer2+27A↓j
                                        ; KeSetTimer2+19E975↓j
                movzx   r12d, byte ptr [rcx+81h]
                mov     rcx, cr8
                mov     [rsp+68h+arg_10], rcx
                mov     eax, 2
                mov     cr8, rax
                lea     r10, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14044E1DA

loc_1402AF8C6:                          ; CODE XREF: KeSetTimer2+19E97C↓j
                                        ; KeSetTimer2+19E985↓j ...
                xor     r13b, r13b
                test    rsi, rsi
                jg      loc_1402AFAE5

loc_1402AF8D2:                          ; CODE XREF: KeSetTimer2+2B1↓j
                mov     rax, 0FFFFF78000000008h
                test    r12b, 4
                jnz     loc_1402AFA91
                mov     rax, [rax]

loc_1402AF8E9:                          ; CODE XREF: KeSetTimer2+245↓j
                mov     rdi, rax
                sub     rdi, rsi
                cmp     rdi, rax
                jb      loc_14044E22D
                cmp     rdi, 0FFFFFFFFFFFFFFFFh
                jz      loc_14044E22D

loc_1402AF902:                          ; CODE XREF: KeSetTimer2+19E9D4↓j
                mov     r14, rdi
                test    rbp, rbp
                jz      short loc_1402AF938
                cmp     byte ptr [rbx+82h], 15h
                jz      short loc_1402AF938
                mov     rax, [rbp+8]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      loc_1402AFA89
                lea     r14, [rax+rdi]
                cmp     r14, rdi
                jb      loc_14044E239
                cmp     r14, 0FFFFFFFFFFFFFFFFh
                jz      loc_14044E239

loc_1402AF938:                          ; CODE XREF: KeSetTimer2+A8↑j
                                        ; KeSetTimer2+B1↑j ...
                xor     bpl, bpl
                mov     rcx, rbx
                mov     [rsp+68h+arg_8], bpl
                mov     esi, 1
                call    sub_1402AFC4C
                test    al, al
                jnz     loc_1402AFA39
                mov     rcx, rbx
                call    sub_1402AFBFC
                test    al, al
                jnz     loc_1402AFA6C
                movzx   eax, byte ptr [rbx+1]
                test    al, 0Fh
                jnz     loc_1402AFB83

loc_1402AF971:                          ; CODE XREF: KeSetTimer2+224↓j
                                        ; KeSetTimer2+32A↓j ...
                test    cs:dword_140CFC450, 2000h
                mov     [rbx+48h], rdi
                mov     [rbx+50h], r14
                movzx   edx, byte ptr [rbx+81h]
                mov     dword ptr [rbx+4], 0
                mov     [rbx+58h], r15
                mov     [rbx+80h], r13b
                jz      loc_1402AFB64
                test    dl, 0Eh
                jz      loc_1402AFB20

loc_1402AF9AB:                          ; CODE XREF: KeSetTimer2+2E8↓j
                                        ; KeSetTimer2+2FF↓j ...
                cmp     esi, 1
                jnz     short loc_1402AF9D2
                lea     rcx, unk_140D23600
                call    KeAcquireSpinLockAtDpcLevel
                lea     r9, [rsp+68h+arg_0]
                movzx   edx, sil
                lea     r8, [rsp+68h+arg_8]
                mov     rcx, rbx
                call    sub_1402AFC80

loc_1402AF9D2:                          ; CODE XREF: KeSetTimer2+14E↑j
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                jnz     loc_14044E253
                mov     edx, [rbx]
                mov     r9d, esi
                mov     ecx, edx
                shl     r9d, 8
                and     ecx, 0FFFFF07Fh
                mov     eax, edx
                or      ecx, r9d
                lock cmpxchg [rbx], ecx
                cmp     edx, eax
                jnz     loc_14044E268

loc_1402AFA04:                          ; CODE XREF: KeSetTimer2+19EA1F↓j
                cmp     esi, 1
                jnz     short loc_1402AFA15
                lea     rcx, unk_140D23600
                call    KeReleaseSpinLockFromDpcLevel

loc_1402AFA15:                          ; CODE XREF: KeSetTimer2+1A7↑j
                                        ; KeSetTimer2+19EA03↓j
                cmp     [rsp+68h+arg_0], 0
                jnz     loc_14044E284

loc_1402AFA20:                          ; CODE XREF: KeSetTimer2+19EA51↓j
                                        ; KeSetTimer2+19EA61↓j ...
                call    sub_1402AFBD8
                test    al, al
                jnz     short loc_1402AFA39
                cmp     [rsp+68h+arg_8], al
                jnz     loc_1402AFB16
                test    r12b, 4
                jnz     short loc_1402AFAAA

loc_1402AFA39:                          ; CODE XREF: KeSetTimer2+EF↑j
                                        ; KeSetTimer2+1C7↑j ...
                mov     eax, cs:dword_140CFC660
                mov     rbx, [rsp+68h+arg_10]
                test    eax, eax
                jnz     loc_14044E35A

loc_1402AFA4F:                          ; CODE XREF: KeSetTimer2+19EAFC↓j
                                        ; KeSetTimer2+19EB08↓j ...
                movzx   ecx, bl
                mov     cr8, rcx
                movzx   eax, bpl
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
                align 4

loc_1402AFA6C:                          ; CODE XREF: KeSetTimer2+FF↑j
                mov     rcx, rbx
                call    sub_1402B6D60
                lea     rcx, unk_140D23600
                call    KeReleaseSpinLockFromDpcLevel
                movzx   ebp, sil
                jmp     loc_1402AF971
; ---------------------------------------------------------------------------

loc_1402AFA89:                          ; CODE XREF: KeSetTimer2+BB↑j
                mov     r14, r10
                jmp     loc_1402AF938
; ---------------------------------------------------------------------------

loc_1402AFA91:                          ; CODE XREF: KeSetTimer2+80↑j
                lea     rcx, [rsp+68h+arg_18]
                call    sub_140250BC0
                mov     r10, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1402AF8E9
; ---------------------------------------------------------------------------

loc_1402AFAAA:                          ; CODE XREF: KeSetTimer2+1D7↑j
                mov     rcx, 0FFFFF78000000008h
                mov     rdx, rdi
                mov     rcx, [rcx]
                call    sub_1403482D8
                test    al, al
                jz      loc_1402AFA39
                call    sub_1403506D4
                jmp     loc_1402AFA39
; ---------------------------------------------------------------------------

loc_1402AFAD1:                          ; CODE XREF: KeSetTimer2+31↑j
                mov     eax, cs:dword_140CFC4C0
                cmp     r8, rax
                jge     loc_1402AF897
                jmp     loc_14044E1D2
; ---------------------------------------------------------------------------

loc_1402AFAE5:                          ; CODE XREF: KeSetTimer2+6C↑j
                mov     r13b, 1
                test    r12b, 4
                jnz     loc_14044E219
                mov     rdx, 0FFFFF78000000014h
                mov     rdx, [rdx]

loc_1402AFAFF:                          ; CODE XREF: KeSetTimer2+19E9C8↓j
                xor     eax, eax
                mov     rcx, rdx
                sub     rcx, rsi
                cmp     rsi, rdx
                cmovg   rax, rcx
                mov     rsi, rax
                jmp     loc_1402AF8D2
; ---------------------------------------------------------------------------

loc_1402AFB16:                          ; CODE XREF: KeSetTimer2+1CD↑j
                call    sub_140308D44
                jmp     loc_1402AFA39
; ---------------------------------------------------------------------------

loc_1402AFB20:                          ; CODE XREF: KeSetTimer2+145↑j
                mov     rax, gs:188h
                movzx   r8d, dl
                and     r8b, 10h
                mov     rcx, [rax+0B8h]
                call    sub_1402BE704
                test    al, al
                jnz     loc_14044E245
                test    r8b, r8b
                jz      loc_1402AF9AB
                and     dl, 0EFh
                mov     rcx, rbx
                mov     [rbx+81h], dl
                call    sub_1403A08E8
                jmp     loc_1402AF9AB
; ---------------------------------------------------------------------------

loc_1402AFB64:                          ; CODE XREF: KeSetTimer2+13C↑j
                test    dl, 10h
                jnz     loc_1402AF9AB

loc_1402AFB6D:                          ; CODE XREF: KeSetTimer2+19E9EE↓j
                or      dl, 10h
                mov     rcx, rbx
                mov     [rbx+81h], dl
                call    sub_1403A08E8
                jmp     loc_1402AF9AB
; ---------------------------------------------------------------------------

loc_1402AFB83:                          ; CODE XREF: KeSetTimer2+10B↑j
                mov     esi, 8
                test    al, 4
                jnz     loc_1402AF971
                mov     bpl, 1
                jmp     loc_1402AF971
KeSetTimer2     endp

; ---------------------------------------------------------------------------
algn_1402AFB98:                         ; DATA XREF: .rdata:0000000140062FF4↑o
                                        ; .pdata:00000001400D035C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402AFBA0   proc near               ; CODE XREF: sub_14066754C+1B17↓p
                                        ; sub_14066754C+1B2D↓p ...

; FUNCTION CHUNK AT 000000014044E3C2 SIZE 0000000D BYTES

                add     rdx, rcx
                cmp     rdx, rcx
                jb      loc_14044E3C2
                mov     [r8], rdx
                xor     eax, eax
                retn
sub_1402AFBA0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402AFBB3:                         ; DATA XREF: .pdata:00000001400D0368↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402AFBC0   proc near               ; CODE XREF: sub_14066754C+1A8D↓p
                                        ; sub_14066754C+1D20↓p ...

; FUNCTION CHUNK AT 000000014044E3D0 SIZE 0000000D BYTES

                add     edx, ecx
                cmp     edx, ecx
                jb      loc_14044E3D0
                mov     [r8], edx
                xor     eax, eax
                retn
sub_1402AFBC0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402AFBD1:                         ; DATA XREF: .pdata:00000001400D0374↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402AFBD8   proc near               ; CODE XREF: KeClockInterruptNotify+E3↑p
                                        ; sub_1402AEC70+DF↑p ...
                cmp     cs:dword_140CFC594, 0
                jnz     short loc_1402AFBEF
                mov     eax, cs:dword_140C31BEC
                cmp     eax, 4
                setz    al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402AFBEF:                          ; CODE XREF: sub_1402AFBD8+7↑j
                xor     al, al
                retn
sub_1402AFBD8   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402AFBF3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0380↑o

; =============== S U B R O U T I N E =======================================


sub_1402AFBFC   proc near               ; CODE XREF: KeSetTimer2+F8↑p
                                        ; KeCancelTimer2+6A↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     bl, bl
                mov     rdi, rcx
                test    byte ptr [rcx+1], 1
                jnz     short loc_1402AFC1F

loc_1402AFC11:                          ; CODE XREF: sub_1402AFBFC+37↓j
                                        ; sub_1402AFBFC+45↓j
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402AFC1F:                          ; CODE XREF: sub_1402AFBFC+13↑j
                lea     rcx, unk_140D23600
                call    KeAcquireSpinLockAtDpcLevel
                test    byte ptr [rdi+1], 1
                jz      short loc_1402AFC35
                mov     bl, 1
                jmp     short loc_1402AFC11
; ---------------------------------------------------------------------------

loc_1402AFC35:                          ; CODE XREF: sub_1402AFBFC+33↑j
                lea     rcx, unk_140D23600
                call    KeReleaseSpinLockFromDpcLevel
                jmp     short loc_1402AFC11
sub_1402AFBFC   endp

; ---------------------------------------------------------------------------
byte_1402AFC43  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D038C↑o

; =============== S U B R O U T I N E =======================================


sub_1402AFC4C   proc near               ; CODE XREF: KeSetTimer2+E8↑p
                                        ; KeCancelTimer2+5E↓p ...

; FUNCTION CHUNK AT 000000014044E3DE SIZE 0000000F BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402AF4F0
                mov     al, [rbx+1]
                test    al, 20h
                jnz     loc_14044E3DE

loc_1402AFC65:                          ; CODE XREF: sub_1402AFC4C+19E79C↓j
                shr     al, 5
                and     al, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402AFC4C   endp

algn_1402AFC71:                         ; DATA XREF: .rdata:000000014006308C↑o
                                        ; .pdata:00000001400D0398↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402AFC80   proc near               ; CODE XREF: sub_1402AEBFC+37↑p
                                        ; KeSetTimer2+16D↑p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044E3EE SIZE 00000032 BYTES

                mov     rax, rsp
                mov     [rax+10h], dl
                push    r13
                push    r15
                sub     rsp, 38h

loc_1402AFC8E:                          ; DATA XREF: .rdata:00000001400630B0↑o
                                        ; .rdata:00000001400630D0↑o ...
                mov     [rax+8], rbx
                mov     r13, r9
                mov     [rax+18h], rbp
                mov     rbx, rcx
                movzx   ecx, byte ptr [rcx+82h]
                movzx   ebp, dl

loc_1402AFCA6:                          ; DATA XREF: .rdata:00000001400630D0↑o
                                        ; .rdata:00000001400630E4↑o ...
                mov     [rax+20h], rsi
                lea     rdx, cs:140000000h
                mov     [rax-18h], rdi
                mov     r15b, 1
                mov     [rax-20h], r12
                mov     r12, r8
                mov     [rax-28h], r14
                xor     r14d, r14d
                mov     byte ptr [r8], 0
                mov     edi, r14d
                mov     [r9], dil
                cmp     cl, 15h
                jz      loc_1402AFEDE
                test    cl, 20h
                jz      short loc_1402AFCEC
                mov     rax, [rbx+50h]
                cmp     [rbx+48h], rax
                jz      loc_1402AFEDE

loc_1402AFCEC:                          ; CODE XREF: sub_1402AFC80+5C↑j
                movzx   eax, cl
                lea     rdi, rva unk_140C31B60[rdx]
                and     al, 0EFh
                lea     rsi, [rbx+18h]
                mov     [rbx+82h], al
                mov     rax, rcx
                and     eax, 7
                lea     rcx, [rax+rax*2]
                mov     rax, [rdi+rcx*8+8]
                mov     rdx, [rdi+rcx*8]
                lea     rdi, [rdi+rcx*8]
                test    r15b, al
                jz      short loc_1402AFD2B
                test    rdx, rdx
                jnz     short loc_1402AFD28
                mov     rdx, r14
                jmp     short loc_1402AFD2B
; ---------------------------------------------------------------------------

loc_1402AFD28:                          ; CODE XREF: sub_1402AFC80+A1↑j
                xor     rdx, rdi

loc_1402AFD2B:                          ; CODE XREF: sub_1402AFC80+9C↑j
                                        ; sub_1402AFC80+A6↑j
                movzx   r9d, al
                xor     r8b, r8b
                and     r9d, 1
                test    rdx, rdx
                jz      short loc_1402AFD7C
                mov     rcx, [rsi+30h]
                nop

loc_1402AFD40:                          ; CODE XREF: sub_1402AFC80+DF↓j
                cmp     rcx, [rdx+30h]
                jb      short loc_1402AFD61
                mov     rax, [rdx+8]
                test    r9d, r9d
                jz      short loc_1402AFD57
                test    rax, rax
                jz      short loc_1402AFD78
                xor     rax, rdx

loc_1402AFD57:                          ; CODE XREF: sub_1402AFC80+CD↑j
                test    rax, rax
                jz      short loc_1402AFD78

loc_1402AFD5C:                          ; CODE XREF: sub_1402AFC80+F4↓j
                mov     rdx, rax
                jmp     short loc_1402AFD40
; ---------------------------------------------------------------------------

loc_1402AFD61:                          ; CODE XREF: sub_1402AFC80+C4↑j
                mov     rax, [rdx]
                test    r9d, r9d
                jz      short loc_1402AFD71
                test    rax, rax
                jz      short loc_1402AFD7C
                xor     rax, rdx

loc_1402AFD71:                          ; CODE XREF: sub_1402AFC80+E7↑j
                test    rax, rax
                jnz     short loc_1402AFD5C
                jmp     short loc_1402AFD7C
; ---------------------------------------------------------------------------

loc_1402AFD78:                          ; CODE XREF: sub_1402AFC80+D2↑j
                                        ; sub_1402AFC80+DA↑j
                movzx   r8d, r15b

loc_1402AFD7C:                          ; CODE XREF: sub_1402AFC80+B9↑j
                                        ; sub_1402AFC80+EC↑j ...
                mov     r9, rsi
                mov     rcx, rdi
                call    RtlRbInsertNodeEx
                mov     rax, [rdi+8]
                test    r15b, al
                jnz     loc_1402AFED0
                mov     rcx, rax

loc_1402AFD97:                          ; CODE XREF: sub_1402AFC80+259↓j
                                        ; sub_1402AFC80+276↓j
                cmp     rcx, rsi
                jz      loc_1402AFF61
                mov     edi, r14d

loc_1402AFDA3:                          ; CODE XREF: sub_1402AFC80+2EE↓j
                lea     rdx, cs:140000000h

loc_1402AFDAA:                          ; CODE XREF: sub_1402AFC80+267↓j
                cmp     qword ptr [rbx+50h], 0FFFFFFFFFFFFFFFFh
                movzx   ecx, byte ptr [rbx+83h]
                jz      loc_1402AFE72
                movzx   eax, cl
                lea     rbp, [rbx+30h]
                and     al, 0EFh
                and     cl, 7
                mov     [rbx+83h], al
                movzx   eax, cl
                lea     rcx, [rax+rax*2]
                lea     rsi, ds:0C31B60h[rcx*8]
                add     rsi, rdx
                mov     rax, [rsi+8]
                mov     rdx, [rsi]
                test    r15b, al
                jz      short loc_1402AFDF8
                test    rdx, rdx
                jz      loc_1402AFF50
                xor     rdx, rsi

loc_1402AFDF8:                          ; CODE XREF: sub_1402AFC80+16A↑j
                                        ; sub_1402AFC80+2D3↓j
                movzx   ecx, al
                xor     r8b, r8b
                and     ecx, 1
                test    rdx, rdx
                jz      short loc_1402AFE4F
                mov     r8, [rbp+20h]
                nop     word ptr [rax+rax+00h]

loc_1402AFE10:                          ; CODE XREF: sub_1402AFC80+1B6↓j
                cmp     r8, [rdx+20h]
                jb      short loc_1402AFE38
                mov     rax, [rdx+8]
                test    ecx, ecx
                jz      short loc_1402AFE2A
                test    rax, rax
                jz      loc_1402AFF58
                xor     rax, rdx

loc_1402AFE2A:                          ; CODE XREF: sub_1402AFC80+19C↑j
                test    rax, rax
                jz      loc_1402AFF58

loc_1402AFE33:                          ; CODE XREF: sub_1402AFC80+1CA↓j
                mov     rdx, rax
                jmp     short loc_1402AFE10
; ---------------------------------------------------------------------------

loc_1402AFE38:                          ; CODE XREF: sub_1402AFC80+194↑j
                mov     rax, [rdx]
                test    ecx, ecx
                jz      short loc_1402AFE47
                test    rax, rax
                jz      short loc_1402AFE4C
                xor     rax, rdx

loc_1402AFE47:                          ; CODE XREF: sub_1402AFC80+1BD↑j
                test    rax, rax
                jnz     short loc_1402AFE33

loc_1402AFE4C:                          ; CODE XREF: sub_1402AFC80+1C2↑j
                xor     r8b, r8b

loc_1402AFE4F:                          ; CODE XREF: sub_1402AFC80+184↑j
                                        ; sub_1402AFC80+2DC↓j
                mov     r9, rbp
                mov     rcx, rsi
                call    RtlRbInsertNodeEx
                mov     rcx, [rsi+8]
                test    r15b, cl
                jz      short loc_1402AFE7D
                cmp     rcx, 1
                jnz     loc_1402AFF41
                mov     rax, r14
                jmp     short loc_1402AFE80
; ---------------------------------------------------------------------------

loc_1402AFE72:                          ; CODE XREF: sub_1402AFC80+136↑j
                or      cl, 10h
                mov     [rbx+83h], cl
                jmp     short loc_1402AFE91
; ---------------------------------------------------------------------------

loc_1402AFE7D:                          ; CODE XREF: sub_1402AFC80+1E1↑j
                mov     rax, rcx

loc_1402AFE80:                          ; CODE XREF: sub_1402AFC80+1F0↑j
                                        ; sub_1402AFC80+2CB↓j
                cmp     rax, rbp
                jz      loc_1402AFF73

loc_1402AFE89:                          ; CODE XREF: sub_1402AFC80+301↓j
                movzx   ebp, [rsp+48h+arg_8]
                or      edi, r14d

loc_1402AFE91:                          ; CODE XREF: sub_1402AFC80+1FB↑j
                mov     r14, [rsp+48h+var_28]
                test    edi, edi
                mov     rdi, [rsp+48h+var_18]
                mov     rsi, [rsp+48h+arg_18]
                jnz     short loc_1402AFEFB

loc_1402AFEA4:                          ; CODE XREF: sub_1402AFC80+2A2↓j
                                        ; sub_1402AFC80+2AB↓j ...
                movzx   eax, byte ptr [rbx+81h]
                mov     r12, [rsp+48h+var_20]
                mov     rbp, [rsp+48h+arg_10]
                mov     rbx, [rsp+48h+arg_0]
                test    al, 4
                jnz     loc_1402AFF86

loc_1402AFEC2:                          ; CODE XREF: sub_1402AFC80+31C↓j
                                        ; sub_1402AFC80+34D↓j
                                        ; DATA XREF: ...
                movzx   eax, r15b
                add     rsp, 38h
                pop     r15
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402AFED0:                          ; CODE XREF: sub_1402AFC80+10E↑j
                                        ; DATA XREF: .pdata:00000001400D03D4↑o ...
                cmp     rax, 1
                jnz     short loc_1402AFEEC
                mov     rcx, r14
                jmp     loc_1402AFD97
; ---------------------------------------------------------------------------

loc_1402AFEDE:                          ; CODE XREF: sub_1402AFC80+53↑j
                                        ; sub_1402AFC80+66↑j
                or      cl, 10h
                mov     [rbx+82h], cl
                jmp     loc_1402AFDAA
; ---------------------------------------------------------------------------

loc_1402AFEEC:                          ; CODE XREF: sub_1402AFC80+254↑j
                mov     rcx, rdi
                or      rcx, 1
                xor     rcx, rax
                jmp     loc_1402AFD97
; ---------------------------------------------------------------------------

loc_1402AFEFB:                          ; CODE XREF: sub_1402AFC80+222↑j
                                        ; DATA XREF: .pdata:00000001400D03E0↑o ...
                mov     rax, [rbx+48h]
                cmp     cs:qword_140C31BD8, rax
                jbe     short loc_1402AFF14
                mov     cs:qword_140C31BD8, rax
                lock or [rsp+48h+var_48], 0

loc_1402AFF14:                          ; CODE XREF: sub_1402AFC80+286↑j
                mov     rax, ds:0FFFFF78000000008h
                cmp     [rbx+48h], rax
                ja      short loc_1402AFEA4
                mov     [r12], r15b
                test    bpl, bpl
                jnz     loc_1402AFEA4
                mov     rcx, rbx
                call    sub_1402B6D60
                xor     r15b, r15b
                jmp     loc_1402AFEA4
; ---------------------------------------------------------------------------

loc_1402AFF41:                          ; CODE XREF: sub_1402AFC80+1E7↑j
                                        ; DATA XREF: .pdata:00000001400D03EC↑o ...
                mov     rax, rsi
                or      rax, 1
                xor     rax, rcx
                jmp     loc_1402AFE80
; ---------------------------------------------------------------------------

loc_1402AFF50:                          ; CODE XREF: sub_1402AFC80+16F↑j
                mov     rdx, r14
                jmp     loc_1402AFDF8
; ---------------------------------------------------------------------------

loc_1402AFF58:                          ; CODE XREF: sub_1402AFC80+1A1↑j
                                        ; sub_1402AFC80+1AD↑j
                movzx   r8d, r15b
                jmp     loc_1402AFE4F
; ---------------------------------------------------------------------------

loc_1402AFF61:                          ; CODE XREF: sub_1402AFC80+11A↑j
                mov     rax, [rbx+48h]
                mov     [rdi+10h], rax
                mov     edi, 1
                jmp     loc_1402AFDA3
; ---------------------------------------------------------------------------

loc_1402AFF73:                          ; CODE XREF: sub_1402AFC80+203↑j
                mov     rax, [rbx+50h]
                mov     r14d, 1
                mov     [rsi+10h], rax
                jmp     loc_1402AFE89
; ---------------------------------------------------------------------------

loc_1402AFF86:                          ; CODE XREF: sub_1402AFC80+23C↑j
                                        ; DATA XREF: .pdata:00000001400D03F8↑o ...
                mov     r9d, 1
                mov     eax, r9d
                lock xadd cs:dword_140C31B40, eax
                inc     eax
                cmp     eax, r9d
                jnz     loc_1402AFEC2
                mov     eax, cs:dword_140C314C0
                lea     rcx, cs:140000000h
                xor     dl, dl
                mov     rax, ds:rva qword_140CFDCC0[rcx+rax*8]
                mov     r8, [rax+84B8h]
                test    r8, r8
                jnz     loc_14044E3EE

loc_1402AFFC9:                          ; CODE XREF: sub_1402AFC80+19E776↓j
                                        ; sub_1402AFC80+19E79B↓j
                mov     [r13+0], dl
                jmp     loc_1402AFEC2
sub_1402AFC80   endp

; ---------------------------------------------------------------------------
algn_1402AFFD2:                         ; DATA XREF: .pdata:00000001400D0404↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402AFFD8   proc near               ; CODE XREF: sub_1402AF7BC+20↑p
                                        ; ExSetTimer+40↓p
                                        ; DATA XREF: ...
                cmp     dword ptr [rcx], 0
                jnz     short loc_1402AFFE8
                cmp     qword ptr [rcx+8], 0FFFFFFFFFFFFFFFFh
                jl      short loc_1402AFFE8
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402AFFE8:                          ; CODE XREF: sub_1402AFFD8+3↑j
                                        ; sub_1402AFFD8+A↑j
                xor     al, al
                retn
sub_1402AFFD8   endp

; ---------------------------------------------------------------------------
                align 4
byte_1402AFFEC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0410↑o

; =============== S U B R O U T I N E =======================================


sub_1402AFFF4   proc near               ; CODE XREF: sub_14066A220+16↓p
                                        ; sub_14066BD10+2E7↓p ...
                sub     rsp, 28h
                mov     rcx, [rdx]
                mov     rdx, r8
                call    ZwUnmapViewOfSection
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402AFFF4   endp

algn_1402B0009:                         ; DATA XREF: .pdata:00000001400D041C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402B0010   proc near               ; CODE XREF: sub_140651450+19C↓p
                                        ; DATA XREF: .pdata:00000001400D0428↑o
                mov     eax, [rcx+0B8h]
                shr     eax, 17h
                and     al, 1
                retn
sub_1402B0010   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402B001D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0428↑o

; =============== S U B R O U T I N E =======================================


sub_1402B0024   proc near               ; CODE XREF: sub_14066A250+142↓p
                                        ; sub_14066A4A0+76↓p ...
                sub     rsp, 28h
                call    sub_14024C400
                test    al, al
                jz      short loc_1402B0050
                mov     rax, gs:188h
                mov     cl, [rax+232h]
                call    sub_140652890
                test    al, al
                setz    al

loc_1402B004A:                          ; CODE XREF: sub_1402B0024+2E↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402B0050:                          ; CODE XREF: sub_1402B0024+B↑j
                xor     al, al
                jmp     short loc_1402B004A
sub_1402B0024   endp

; ---------------------------------------------------------------------------
byte_1402B0054  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0434↑o

; =============== S U B R O U T I N E =======================================


sub_1402B005C   proc near               ; CODE XREF: sub_14066BC08+29↓p
                                        ; DATA XREF: .pdata:00000001400D0440↑o

arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rdx
                sub     rsp, 28h
                lea     rdx, [rsp+28h+arg_8]
                call    sub_1403FB840
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B005C   endp

byte_1402B0075  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0440↑o

; =============== S U B R O U T I N E =======================================


sub_1402B007C   proc near               ; CODE XREF: sub_14066F3A8+15A↓p
                                        ; sub_14087590C+15A↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014044E420 SIZE 00000023 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     esi, esi
                lea     r14, [rcx+58h]
                mov     r12d, [r14]
                mov     ebp, edx
                shr     ebp, 9
                mov     rdi, rcx
                mov     ebx, ebp
                mov     [rax-44h], esi
                shr     ebx, 3
                add     ebx, 3
                mov     [rax-34h], esi
                and     ebx, 0FFFFFFFCh
                cmp     [rcx+6Ch], ebx
                jb      short loc_1402B0117
                mov     rax, [rcx+60h]
                mov     ebx, ebp
                sub     ebx, r12d
                mov     [r14], ebp
                mov     r8d, ebx
                mov     [r14+8], rax
                mov     edx, r12d
                mov     rcx, r14
                call    RtlClearBits
                mov     rax, [rdi+78h]
                lea     rcx, [rdi+70h]
                mov     r8d, ebx
                mov     [rcx], ebp
                mov     edx, r12d
                mov     [rcx+8], rax
                call    RtlClearBits

loc_1402B00F6:                          ; CODE XREF: sub_1402B007C+186↓j
                                        ; sub_1402B007C+19E3A9↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     eax, esi
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

loc_1402B0117:                          ; CODE XREF: sub_1402B007C+41↑j
                mov     rax, [rcx+18h]
                mov     r13d, 39314D43h
                mov     r8d, r13d
                xor     edx, edx
                mov     ecx, ebx
                call    sub_1404079D0
                mov     r15, rax
                test    rax, rax
                jz      loc_14044E420
                mov     rax, [rdi+18h]
                mov     r8d, r13d
                xor     edx, edx
                mov     ecx, ebx
                call    sub_1404079D0
                mov     [rsp+68h+arg_0], rax
                test    rax, rax
                jz      loc_14044E42A
                mov     r13d, ebp
                mov     [rsp+68h+var_30], rax
                sub     r13d, r12d
                mov     [rsp+68h+var_48], ebp
                mov     [rsp+68h+var_40], r15
                mov     [rsp+68h+var_38], ebp
                mov     eax, ebx
                cmp     [rdi+60h], rsi
                jz      loc_1402B0207
                xor     r8d, r8d
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, r14
                call    RtlCopyBitMap
                mov     r8d, r13d
                lea     rcx, [rsp+68h+var_48]
                mov     edx, r12d
                call    RtlClearBits

loc_1402B019B:                          ; CODE XREF: sub_1402B007C+198↓j
                cmp     [rdi+78h], rsi
                jz      short loc_1402B0216
                lea     rcx, [rdi+70h]
                xor     r8d, r8d
                lea     rdx, [rsp+68h+var_38]
                call    RtlCopyBitMap
                mov     r8d, r13d
                lea     rcx, [rsp+68h+var_38]
                mov     edx, r12d
                call    RtlClearBits
                mov     r12, [rsp+68h+arg_0]

loc_1402B01C7:                          ; CODE XREF: sub_1402B007C+1AC↓j
                mov     rcx, [rdi+60h]
                test    rcx, rcx
                jz      short loc_1402B01DC
                mov     rax, [rdi+20h]
                mov     edx, [rdi+6Ch]
                call    sub_1404079D0

loc_1402B01DC:                          ; CODE XREF: sub_1402B007C+152↑j
                mov     rcx, [rdi+78h]
                test    rcx, rcx
                jz      short loc_1402B01F1
                mov     rax, [rdi+20h]
                mov     edx, [rdi+6Ch]
                call    sub_1404079D0

loc_1402B01F1:                          ; CODE XREF: sub_1402B007C+167↑j
                mov     [r14], ebp
                mov     [r14+8], r15
                mov     [rdi+70h], ebp
                mov     [rdi+78h], r12
                mov     [rdi+6Ch], ebx
                jmp     loc_1402B00F6
; ---------------------------------------------------------------------------

loc_1402B0207:                          ; CODE XREF: sub_1402B007C+F9↑j
                mov     r8, rax
                xor     edx, edx
                mov     rcx, r15
                call    memset
                jmp     short loc_1402B019B
; ---------------------------------------------------------------------------

loc_1402B0216:                          ; CODE XREF: sub_1402B007C+123↑j
                mov     r12, [rsp+68h+arg_0]
                xor     edx, edx
                mov     rcx, r12
                mov     r8d, ebx
                call    memset
                jmp     short loc_1402B01C7
sub_1402B007C   endp

; ---------------------------------------------------------------------------
algn_1402B022A:                         ; DATA XREF: .rdata:00000001400634C4↑o
                                        ; .pdata:00000001400D044C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_1402B0230   proc near               ; CODE XREF: sub_14062A170+902↓p
                                        ; sub_14066B110+270↓p
                                        ; DATA XREF: ...

var_D0          = dword ptr -0D0h
var_C8          = byte ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = byte ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = byte ptr  40h
arg_38          = qword ptr  48h
arg_40          = byte ptr  50h
arg_48          = byte ptr  58h
arg_50          = qword ptr  60h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-7]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+37h+var_40], rax
                mov     rax, [rbp+37h+arg_28]
                xorps   xmm0, xmm0
                or      dword ptr [rcx+0A0h], 20h
                xor     r13d, r13d
                and     [rbp+37h+var_88], 0
                mov     r14d, r8d
                mov     r15, [rbp+37h+arg_20]
                mov     rdi, r9
                mov     rsi, [rbp+37h+arg_50]
                mov     r12d, r8d
                mov     [rbp+37h+var_78], rax
                mov     rbx, rcx
                mov     rax, [rbp+37h+arg_38]
                mov     [rbp+37h+var_80], rax
                mov     [rbp+37h+var_90], rdx
                movups  [rbp+37h+var_70], xmm0
                movups  [rbp+37h+var_60], xmm0
                movups  [rbp+37h+var_50], xmm0
                mov     rax, gs:188h
                mov     [rcx+1070h], rax
                and     r14d, 10h
                jz      short loc_1402B02D7
                mov     eax, [rcx+1038h]
                or      eax, 20h
                mov     [rcx+1038h], eax
                test    r12b, 20h
                jz      short loc_1402B02D7
                or      eax, 40h
                mov     [rcx+1038h], eax

loc_1402B02D7:                          ; CODE XREF: sub_1402B0230+87↑j
                                        ; sub_1402B0230+9C↑j
                or      dword ptr [rcx+1038h], 1
                call    sub_14066C230
                call    sub_1405FA004
                mov     cl, 1
                call    sub_1405F9FA0
                test    rdi, rdi
                jz      short loc_1402B036D
                test    r14d, r14d
                jnz     short loc_1402B036D
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140650B10
                test    al, al
                jz      short loc_1402B032A
                mov     edi, 0C000017Ch
                mov     [rsp+0F0h+var_D0], 10h

loc_1402B0314:                          ; CODE XREF: sub_1402B0230+17A↓j
                mov     r9d, edi

loc_1402B0317:                          ; CODE XREF: sub_1402B0230+11F↓j
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [rdx+1Dh]
                call    sub_140357F78
                jmp     loc_1402B0434
; ---------------------------------------------------------------------------

loc_1402B032A:                          ; CODE XREF: sub_1402B0230+D5↑j
                mov     rax, [rdi+8]
                mov     rcx, rbx
                mov     r8b, [rbp+37h+arg_30]
                mov     rdx, [rax+20h]
                call    sub_140364224
                mov     edi, eax
                test    eax, eax
                jns     short loc_1402B0351
                mov     [rsp+0F0h+var_D0], 20h ; ' '

loc_1402B034C:                          ; CODE XREF: sub_1402B0230+13B↓j
                                        ; sub_1402B0230+15A↓j
                mov     r9d, eax
                jmp     short loc_1402B0317
; ---------------------------------------------------------------------------

loc_1402B0351:                          ; CODE XREF: sub_1402B0230+112↑j
                mov     rdx, [rbp+37h+var_90]
                mov     rcx, rbx
                call    sub_140721564
                mov     edi, eax
                test    eax, eax
                jns     short loc_1402B036D
                mov     [rsp+0F0h+var_D0], 30h ; '0'
                jmp     short loc_1402B034C
; ---------------------------------------------------------------------------

loc_1402B036D:                          ; CODE XREF: sub_1402B0230+C2↑j
                                        ; sub_1402B0230+C7↑j ...
                test    r15, r15
                jz      short loc_1402B03AF
                xor     edx, edx
                mov     rcx, r15
                call    sub_140638C00
                mov     edi, eax
                test    eax, eax
                jns     short loc_1402B038C
                mov     [rsp+0F0h+var_D0], 40h ; '@'
                jmp     short loc_1402B034C
; ---------------------------------------------------------------------------

loc_1402B038C:                          ; CODE XREF: sub_1402B0230+150↑j
                mov     r13, [r15+8]
                test    dword ptr [r13+0B8h], 40000h
                jnz     short loc_1402B03AF
                mov     edi, 0C000000Dh
                mov     [rsp+0F0h+var_D0], 50h ; 'P'
                jmp     loc_1402B0314
; ---------------------------------------------------------------------------

loc_1402B03AF:                          ; CODE XREF: sub_1402B0230+140↑j
                                        ; sub_1402B0230+16B↑j
                call    sub_14064A360
                mov     r10, [rbp+37h+var_90]
                lea     rax, [rbp+37h+var_88]
                mov     r15b, [rbp+37h+arg_40]
                test    r14d, r14d
                mov     [rsp+0F0h+var_98], rsi
                mov     r9b, r15b
                mov     [rsp+0F0h+var_A0], 0
                setnz   cl
                mov     rdx, [r10+8]
                mov     r8, rbx
                mov     [rsp+0F0h+var_A8], rax
                mov     rax, [r10+20h]
                mov     [rsp+0F0h+var_B0], r13
                mov     [rsp+0F0h+var_B8], rax
                mov     rax, [rbp+37h+var_78]
                mov     [rsp+0F0h+var_C0], rax
                mov     [rsp+0F0h+var_C8], cl
                mov     rcx, [r10+10h]
                mov     [rsp+0F0h+var_D0], 200h
                call    sub_14066C260
                mov     edi, eax
                test    eax, eax
                jns     short loc_1402B045D
                xor     edx, edx
                mov     [rsp+0F0h+var_D0], 60h ; '`'
                mov     r9d, eax
                mov     rcx, rsi
                lea     r8d, [rdx+1Dh]
                call    sub_140357F78
                mov     cl, 1
                call    sub_1405F9FA0

loc_1402B0434:                          ; CODE XREF: sub_1402B0230+F5↑j
                call    sub_14064A360
                call    sub_1405F9E70
                lea     rcx, [rbp+37h+var_70]
                call    sub_14063A890
                mov     rcx, rbx
                call    sub_140728328
                lea     rcx, [rbp+37h+var_70]
                call    sub_14063A63C
                jmp     loc_1402B05AB
; ---------------------------------------------------------------------------

loc_1402B045D:                          ; CODE XREF: sub_1402B0230+1E2↑j
                mov     rdi, [rbp+37h+var_88]
                bt      r12d, 0Bh
                jnb     short loc_1402B0479
                mov     rcx, rdi
                call    sub_14062FC50
                mov     rsi, [rbp+37h+var_80]
                mov     [rsi], rdi
                jmp     short loc_1402B047D
; ---------------------------------------------------------------------------

loc_1402B0479:                          ; CODE XREF: sub_1402B0230+236↑j
                mov     rsi, [rbp+37h+var_80]

loc_1402B047D:                          ; CODE XREF: sub_1402B0230+247↑j
                mov     cl, 1
                call    sub_1405F9FA0
                test    r14d, r14d
                jz      short loc_1402B049F
                mov     rcx, [rbx+0B70h]
                call    sub_14062FC50
                mov     rax, [rbx+0B70h]
                mov     [rsi], rax

loc_1402B049F:                          ; CODE XREF: sub_1402B0230+257↑j
                call    sub_14066DEF0
                mov     rcx, cs:qword_140D2E918
                lea     rdx, qword_140D2E910
                lea     rax, [rbx+640h]
                cmp     [rcx], rdx
                jz      short loc_1402B04C5
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1402B04C5:                          ; CODE XREF: sub_1402B0230+28C↑j
                mov     [rax], rdx
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     cs:qword_140D2E918, rax
                call    sub_14066DF10
                call    sub_14064A360
                lea     rcx, [rbp+37h+var_70]
                call    sub_14063A890
                mov     rcx, rbx
                call    sub_1402B0AC0
                lea     rcx, [rbp+37h+var_70]
                call    sub_14063A63C
                mov     rcx, rdi
                call    sub_14066E598
                call    sub_1405F9E70
                test    r12d, 110h
                jnz     short loc_1402B0525
                mov     dl, [rbp+37h+arg_48]
                mov     rcx, rbx
                call    sub_1406D6AE8
                or      dword ptr [rbx+1038h], 8

loc_1402B0525:                          ; CODE XREF: sub_1402B0230+2DE↑j
                test    r15b, r15b
                jz      short loc_1402B0549
                lea     rcx, [rbp+37h+var_70]
                call    sub_14063A890
                mov     edx, 4
                mov     rcx, rbx
                call    sub_1405F8E80
                lea     rcx, [rbp+37h+var_70]
                call    sub_14063A63C

loc_1402B0549:                          ; CODE XREF: sub_1402B0230+2F8↑j
                test    r14d, r14d
                jnz     short loc_1402B0556
                mov     rcx, rbx
                call    sub_14066B4B4

loc_1402B0556:                          ; CODE XREF: sub_1402B0230+31C↑j
                mov     rcx, [rbx+1060h]
                test    rcx, rcx
                jz      short loc_1402B0588
                mov     r8, rcx
                lea     rdx, sub_1406E2D40
                mov     rcx, [rcx+38h]
                call    cs:TmEnableCallbacks_0
                nop     dword ptr [rax+rax+00h]
                mov     rcx, [rbx+1060h]
                call    sub_14066AFE8

loc_1402B0588:                          ; CODE XREF: sub_1402B0230+330↑j
                mov     rcx, rbx
                call    sub_14066DF5C
                call    sub_1405FA004
                and     dword ptr [rbx+0A0h], 0FFFFFFDFh
                and     qword ptr [rbx+1070h], 0
                call    sub_1405F9E70
                xor     edi, edi

loc_1402B05AB:                          ; CODE XREF: sub_1402B0230+228↑j
                call    sub_14066DF30
                cmp     cs:byte_140D2E682, 0
                jnz     short loc_1402B05CE
                cmp     cs:byte_140C48630, 0
                jnz     short loc_1402B05CE
                mov     cs:byte_140D2E682, 1
                call    sub_140722F90

loc_1402B05CE:                          ; CODE XREF: sub_1402B0230+387↑j
                                        ; sub_1402B0230+390↑j
                mov     eax, edi
                mov     rcx, [rbp+37h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F0h+arg_10]
                add     rsp, 0C0h
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
; } // starts at 1402B0230
sub_1402B0230   endp

algn_1402B05F8:                         ; DATA XREF: .pdata:00000001400D0458↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B0600   proc near               ; CODE XREF: sub_1405FA578+3F6↓p
                                        ; DoScreenSave+4D2↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014044E444 SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_14066E56C
                mov     eax, [rdi+30h]
                test    al, 7
                jnz     loc_14044E444
                lea     rax, [rdi+10h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_14044E453
                mov     [rbx], rax
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx
                call    sub_14066E540
                xor     eax, eax
                mov     [rbx+38h], rdi

loc_1402B064A:                          ; CODE XREF: sub_1402B0600+19DE4E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B0600   endp

byte_1402B0656  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400637F0↑o
                                        ; .pdata:00000001400D0464↑o

; =============== S U B R O U T I N E =======================================


sub_1402B065C   proc near               ; CODE XREF: sub_14066E680+13↓p
                                        ; DATA XREF: .rdata:0000000140063854↑o ...

var_18          = xmmword ptr -18h

; FUNCTION CHUNK AT 000000014044E45A SIZE 0000001C BYTES

                push    rbx
                sub     rsp, 30h
                cmp     cs:byte_140D2D002, 0
                xorps   xmm0, xmm0
                movups  [rsp+38h+var_18], xmm0
                mov     rbx, rcx
                jnz     short loc_1402B068F
                lea     rdx, [rsp+38h+var_18]
                call    ZwFlushBuffersFile
                test    eax, eax
                js      loc_14044E45A

loc_1402B0688:                          ; CODE XREF: sub_1402B065C+35↓j
                                        ; sub_1402B065C+19DE15↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B068F:                          ; CODE XREF: sub_1402B065C+18↑j
                xor     eax, eax
                jmp     short loc_1402B0688
sub_1402B065C   endp

; ---------------------------------------------------------------------------
algn_1402B0693:                         ; DATA XREF: .rdata:0000000140063854↑o
                                        ; .pdata:00000001400D0470↑o
                align 20h
; Exported entry 1996. RtlAreBitsClear

; =============== S U B R O U T I N E =======================================


